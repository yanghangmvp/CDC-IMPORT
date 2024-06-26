@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ZT_DTIMP_CONF'
@AbapCatalog.extensibility: {
  extensible: true,
  dataSources: ['Conf'],
  elementSuffix: 'ZAG',
  quota: {
    maximumFields: 500,
    maximumBytes: 5000
  }, allowNewCompositions: true
}
define root view entity ZC_ZT_DTIMP_CONF
  provider contract transactional_query
  as projection on ZR_ZT_DTIMP_CONF as Conf
{
  key UUID,
      Object,
      Objectname,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZZR_DTIMP_FUNC', element: 'FunctionModuleName' }}]
      Fmname,
      Mimetype,
      Sheetname,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZZR_DTIMP_STRUC', element: 'StructureName' }}]
      Structname,
      MimeTypeForTemplate,
      Template,
      FileName,
      StartLine,
      StartColumn,
      LocalLastChangedAt

}
