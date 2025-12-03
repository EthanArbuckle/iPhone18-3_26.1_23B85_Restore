@interface TPAppPropertiesProvider
- (NSArray)rtfDocumentTypes;
- (NSArray)textDocumentTypes;
- (NSArray)wordDocumentTypes;
- (id)appChartPropertyOverrides;
- (id)applicationDisplayName;
- (id)applicationTemplateVariantsForLocale:(id)locale;
- (id)documentTypeDisplayName;
- (id)documentTypeDisplayNameForSharingInvitation;
- (id)importableDocumentTypes;
- (id)strokeWidthsForFreehandDrawingToolType:(unint64_t)type;
- (id)templateTypeDisplayName;
@end

@implementation TPAppPropertiesProvider

- (id)applicationDisplayName
{
  v7 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, v2, v3, v4, v5);
  v13 = objc_msgSend_objectForInfoDictionaryKey_(v7, v8, v9, v10, v11, v12, @"CFBundleDisplayName");
  v19 = v13;
  if (v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = objc_msgSend_applicationName(self, v14, v15, v16, v17, v18);
  }

  v21 = v20;

  return v21;
}

- (id)documentTypeDisplayName
{
  v2 = sub_275FFFC3C();
  v8 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v4, v5, v6, v7, @"Document", &stru_288501738, @"Pages");

  return v8;
}

- (id)documentTypeDisplayNameForSharingInvitation
{
  v2 = sub_275FFFC3C();
  v8 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v4, v5, v6, v7, @"document", &stru_288501738, @"Pages");

  return v8;
}

- (id)templateTypeDisplayName
{
  v2 = sub_275FFFC3C();
  v8 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v4, v5, v6, v7, @"Template", &stru_288501738, @"Pages");

  return v8;
}

- (id)importableDocumentTypes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_msgSend_wordDocumentTypes(self, v4, v5, v6, v7, v8);
  objc_msgSend_addObjectsFromArray_(v3, v10, v11, v12, v13, v14, v9);

  v20 = objc_msgSend_textDocumentTypes(self, v15, v16, v17, v18, v19);
  objc_msgSend_addObjectsFromArray_(v3, v21, v22, v23, v24, v25, v20);

  v31 = objc_msgSend_rtfDocumentTypes(self, v26, v27, v28, v29, v30);
  objc_msgSend_addObjectsFromArray_(v3, v32, v33, v34, v35, v36, v31);

  return v3;
}

- (NSArray)wordDocumentTypes
{
  v8[6] = *MEMORY[0x277D85DE8];
  v8[0] = @"com.microsoft.word.doc";
  v8[1] = @"org.openxmlformats.wordprocessingml.document";
  v8[2] = @"com.microsoft.word.dot";
  v8[3] = @"org.openxmlformats.wordprocessingml.template";
  v8[4] = @"org.openxmlformats.wordprocessingml.document.macroenabled";
  v8[5] = @"org.openxmlformats.wordprocessingml.template.macroenabled";
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v2, v3, v4, v5, v8, 6);

  return v6;
}

- (NSArray)textDocumentTypes
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], a2, v2, v3, v4, v5);
  v14[0] = v6;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v7, v8, v9, v10, v11, v14, 1);

  return v12;
}

- (NSArray)rtfDocumentTypes
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], a2, v2, v3, v4, v5);
  v20[0] = v6;
  v12 = objc_msgSend_identifier(*MEMORY[0x277CE1E58], v7, v8, v9, v10, v11);
  v20[1] = v12;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v14, v15, v16, v17, v20, 2);

  return v18;
}

- (id)strokeWidthsForFreehandDrawingToolType:(unint64_t)type
{
  result = MEMORY[0x277CBEBF8];
  if (type > 2)
  {
    if (type != 3)
    {
      if (type == 4)
      {
        return &unk_28850DC88;
      }

      if (type != 5)
      {
        return result;
      }
    }

    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPAppPropertiesProvider strokeWidthsForFreehandDrawingToolType:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPAppPropertiesProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v19, v20, v21, v22, v11, v17, 223, 0, "Unknown tool type %lu when generating stroke widths for freehand drawing.", type);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v23, v24, v25, v26, v27);
    return MEMORY[0x277CBEBF8];
  }

  v9 = &unk_28850DC70;
  if (type != 2)
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  if (type >= 2)
  {
    return v9;
  }

  else
  {
    return &unk_28850DC58;
  }
}

- (id)applicationTemplateVariantsForLocale:(id)locale
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = @"Traditional";
  if (locale && TSUIsLocaleISO())
  {
    v3 = @"ISO";
  }

  v13[0] = v3;
  v4 = MEMORY[0x277CBEA60];
  v5 = v3;
  v11 = objc_msgSend_arrayWithObjects_count_(v4, v6, v7, v8, v9, v10, v13, 1);

  return v11;
}

- (id)appChartPropertyOverrides
{
  if (qword_280A404C8 != -1)
  {
    sub_27603823C();
  }

  v3 = qword_280A404C0;

  return v3;
}

@end