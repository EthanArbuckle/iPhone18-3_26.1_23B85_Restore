@interface KNAppPropertiesProvider
- (NSArray)powerPointDocumentTypes;
- (id)appChartPropertyOverrides;
- (id)applicationDisplayName;
- (id)documentTypeDisplayName;
- (id)documentTypeDisplayNameForSharingInvitation;
- (id)templateTypeDisplayName;
@end

@implementation KNAppPropertiesProvider

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
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Presentation", &stru_2884D8E20, @"Keynote");

  return v4;
}

- (id)documentTypeDisplayNameForSharingInvitation
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"presentation", &stru_2884D8E20, @"Keynote");

  return v4;
}

- (id)templateTypeDisplayName
{
  v2 = sub_275DC204C();
  v4 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, @"Theme", &stru_2884D8E20, @"Keynote");

  return v4;
}

- (NSArray)powerPointDocumentTypes
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.microsoft.powerpoint.ppt";
  v4[1] = @"org.openxmlformats.presentationml.presentation";
  v4[2] = @"org.openxmlformats.presentationml.presentation.macroenabled";
  v4[3] = @"com.microsoft.powerpoint.pps";
  v4[4] = @"org.openxmlformats.presentationml.slideshow";
  v4[5] = @"org.openxmlformats.presentationml.slideshow.macroenabled";
  v4[6] = @"com.microsoft.powerpoint.pot";
  v4[7] = @"org.openxmlformats.presentationml.template";
  v4[8] = @"org.openxmlformats.presentationml.template.macroenabled";
  v2 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, 9);

  return v2;
}

- (id)appChartPropertyOverrides
{
  if (qword_280A3BFD0 != -1)
  {
    sub_275E5A42C();
  }

  v3 = qword_280A3BFC8;

  return v3;
}

@end