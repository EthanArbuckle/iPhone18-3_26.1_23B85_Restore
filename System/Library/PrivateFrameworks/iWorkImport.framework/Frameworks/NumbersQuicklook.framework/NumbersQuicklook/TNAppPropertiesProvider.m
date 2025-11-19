@interface TNAppPropertiesProvider
- (NSArray)excelDocumentTypes;
- (id)appChartPropertyOverrides;
- (id)applicationDisplayName;
- (id)documentTypeDisplayName;
- (id)documentTypeDisplayNameForSharingInvitation;
- (id)importableDocumentTypes;
- (id)templateTypeDisplayName;
@end

@implementation TNAppPropertiesProvider

- (id)applicationDisplayName
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, v2);
  v6 = objc_msgSend_objectForInfoDictionaryKey_(v4, v5, @"CFBundleDisplayName");
  v9 = v6;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = objc_msgSend_applicationName(self, v7, v8);
  }

  v11 = v10;

  return v11;
}

- (id)documentTypeDisplayName
{
  v2 = sub_275F37BC8();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Spreadsheet", &stru_2884F65E0, @"Numbers");

  return v4;
}

- (id)documentTypeDisplayNameForSharingInvitation
{
  v2 = sub_275F37BC8();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"spreadsheet", &stru_2884F65E0, @"Numbers");

  return v4;
}

- (id)templateTypeDisplayName
{
  v2 = sub_275F37BC8();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Template", &stru_2884F65E0, @"Numbers");

  return v4;
}

- (id)importableDocumentTypes
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_excelDocumentTypes(self, a2, v2);
  v9[0] = @"public.comma-separated-values-text";
  v9[1] = @"public.plain-text";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v9, 2);
  v7 = objc_msgSend_arrayByAddingObjectsFromArray_(v3, v6, v5);

  return v7;
}

- (NSArray)excelDocumentTypes
{
  v4[8] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.microsoft.excel.xls";
  v4[1] = @"org.openxmlformats.spreadsheetml.sheet";
  v4[2] = @"com.microsoft.excel.xlt";
  v4[3] = @"org.openxmlformats.spreadsheetml.template";
  v4[4] = @"org.openxmlformats.spreadsheetml.sheet.macroenabled";
  v4[5] = @"com.microsoft.excel.xla";
  v4[6] = @"com.microsoft.excel.openxml.addin";
  v4[7] = @"org.openxmlformats.spreadsheetml.template.macroenabled";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 8);

  return v2;
}

- (id)appChartPropertyOverrides
{
  if (qword_280A3DF58 != -1)
  {
    sub_275F4ABE4();
  }

  v3 = qword_280A3DF50;

  return v3;
}

@end