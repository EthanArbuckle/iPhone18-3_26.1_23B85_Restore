@interface TPTheme
+ (TPTheme)themeWithContext:(id)a3 alternate:(unint64_t)a4 withStylesheet:(id)a5;
- (BOOL)isBasicTheme;
- (BOOL)isBookPortraitTemplateTheme;
- (NSDictionary)headerAndFooterStyles;
- (TSWPParagraphStyle)bodyStyle;
- (TSWPParagraphStyle)footnoteStyle;
- (TSWPParagraphStyle)headerAndFooterStyle;
- (id)_paragraphStylePresetWithName:(id)a3 orContentTag:(id)a4;
- (id)localizedBodyStyleName;
- (void)loadFromUnarchiver:(id)a3;
- (void)p_saveToArchive:(void *)a3 archiver:(id)a4;
- (void)saveToArchiver:(id)a3;
@end

@implementation TPTheme

+ (TPTheme)themeWithContext:(id)a3 alternate:(unint64_t)a4 withStylesheet:(id)a5
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___TPTheme;
  v5 = objc_msgSendSuper2(&v7, sel_themeWithContext_alternate_withStylesheet_, a3, a4, a5);

  return v5;
}

- (id)_paragraphStylePresetWithName:(id)a3 orContentTag:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v12 = objc_msgSend_presetsOfKind_(self, v8, 0, v9, v10, v11, *MEMORY[0x277D80B70]);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v69, v73, 16);
  if (v19)
  {
    v24 = *v70;
LABEL_3:
    v25 = 0;
    while (1)
    {
      if (*v70 != v24)
      {
        objc_enumerationMutation(v12);
      }

      v26 = *(*(&v69 + 1) + 8 * v25);
      v27 = objc_msgSend_name(v26, v18, v20, v21, v22, v23);
      isEqualToString = objc_msgSend_isEqualToString_(v27, v28, v29, v30, v31, v32, v6);

      if (isEqualToString)
      {
        break;
      }

      if (v19 == ++v25)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, v20, v21, v22, v23, &v69, v73, 16);
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v39 = v26;

    if (v39)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v39 = objc_msgSend_paragraphStyleWithContentTag_(self, v34, v35, v36, v37, v38, v7);
  if (!v39)
  {
    v39 = objc_msgSend_defaultParagraphStyle(self, v40, v41, v42, v43, v44);
    if (!v39)
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v46, v47, v48, v49, "[TPTheme _paragraphStylePresetWithName:orContentTag:]");
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTheme.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v58, v59, v60, v61, v62, v51, v57, 67, 0, "invalid nil value for '%{public}s'", "style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66, v67);
      v39 = 0;
    }
  }

LABEL_14:

  return v39;
}

- (TSWPParagraphStyle)bodyStyle
{
  v7 = objc_msgSend_localizedBodyStyleName(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend__paragraphStylePresetWithName_orContentTag_(self, v8, v9, v10, v11, v12, v7, *MEMORY[0x277D81030]);

  return v13;
}

- (TSWPParagraphStyle)headerAndFooterStyle
{
  v7 = objc_msgSend_context(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_documentLocale(v13, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, v21, v22, v23, v24, @"Header & Footer", &stru_288501738, @"Pages");
  v31 = objc_msgSend__paragraphStylePresetWithName_orContentTag_(self, v26, v27, v28, v29, v30, v25, @"Header & Footer");

  return v31;
}

- (NSDictionary)headerAndFooterStyles
{
  v7 = objc_msgSend_paragraphStylesWithContentTag_(self, a2, v2, v3, v4, v5, @"Header");
  v13 = objc_msgSend_paragraphStylesWithContentTag_(self, v8, v9, v10, v11, v12, @"Footer");
  v19 = objc_msgSend_headerAndFooterStyle(self, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v20, v21, v22, v23, v24);
  if (objc_msgSend_count(v7, v26, v27, v28, v29, v30))
  {
    v36 = objc_msgSend_firstObject(v7, v31, v32, v33, v34, v35);
    objc_msgSend_setObject_forKeyedSubscript_(v25, v37, v38, v39, v40, v41, v36, @"Header");
  }

  if (objc_msgSend_count(v13, v31, v32, v33, v34, v35))
  {
    v47 = objc_msgSend_firstObject(v13, v42, v43, v44, v45, v46);
    objc_msgSend_setObject_forKeyedSubscript_(v25, v48, v49, v50, v51, v52, v47, @"Footer");
  }

  if (v19)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v25, v42, v43, v44, v45, v46, v19, @"Header & Footer");
  }

  v53 = objc_msgSend_copy(v25, v42, v43, v44, v45, v46);

  return v53;
}

- (TSWPParagraphStyle)footnoteStyle
{
  v7 = objc_msgSend_context(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_documentLocale(v13, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_localizedStringForKey_value_table_(v19, v20, v21, v22, v23, v24, @"Footnote Text", &stru_288501738, @"Pages");
  v31 = objc_msgSend__paragraphStylePresetWithName_orContentTag_(self, v26, v27, v28, v29, v30, v25, @"Footnote Text");

  return v31;
}

- (BOOL)isBasicTheme
{
  v6 = objc_msgSend_themeIdentifier(self, a2, v2, v3, v4, v5);
  if (objc_msgSend_isEqualToString_(v6, v7, v8, v9, v10, v11, @"00V_Vertical_Blank_Portrait") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v12, v13, v14, v15, v16, @"20_Blank_Black") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v17, v18, v19, v20, v21, @"21_Blank_Layout") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v22, v23, v24, v25, v26, @"21_Note-taking") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v27, v28, v29, v30, v31, @"Blank"))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v6, v32, v33, v34, v35, v36, @"BlankLandscape");
  }

  return isEqualToString;
}

- (BOOL)isBookPortraitTemplateTheme
{
  v6 = objc_msgSend_themeIdentifier(self, a2, v2, v3, v4, v5);
  if (objc_msgSend_isEqualToString_(v6, v7, v8, v9, v10, v11, @"08B_Basic_Portrait") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v12, v13, v14, v15, v16, @"00B_Blank_Portrait") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v17, v18, v19, v20, v21, @"00C_Textbook_Portrait") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v22, v23, v24, v25, v26, @"11B_Novel_Portrait") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v27, v28, v29, v30, v31, @"11B_Novel_Modern") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v32, v33, v34, v35, v36, @"11B_Novel_Traditional") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v37, v38, v39, v40, v41, @"25_EdgyNovel") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v42, v43, v44, v45, v46, @"25_Instructional") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v47, v48, v49, v50, v51, @"26_PersonalNovel") & 1) != 0 || (objc_msgSend_isEqualToString_(v6, v52, v53, v54, v55, v56, @"26_Professional") & 1) != 0 || (objc_msgSend_hasPrefix_(v6, v57, v58, v59, v60, v61, @"27_ContemporaryNovel"))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v6, v62, v63, v64, v65, v66, @"29_ElegantNovel");
  }

  return isEqualToString;
}

- (id)localizedBodyStyleName
{
  v6 = objc_msgSend_context(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_documentLocale(v12, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, v20, v21, v22, v23, @"Body", &stru_288501738, @"Pages");

  return v24;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v10 = objc_msgSend_messageWithDescriptor_(v4, v5, v6, v7, v8, v9, off_2812F85B8[2]);

  if (*(v10 + 24))
  {
    v11 = *(v10 + 24);
  }

  else
  {
    v11 = MEMORY[0x277D80BD8];
  }

  v12.receiver = self;
  v12.super_class = TPTheme;
  [(TSATheme *)&v12 loadFromArchive:v11 unarchiver:v4];
}

- (void)p_saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276014698;
  v13[3] = &unk_27A6A84B8;
  v15 = self;
  v16 = a3;
  v14 = v6;
  v7 = v6;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, v9, v10, v11, v12, 1, a3, v13);
}

- (void)saveToArchiver:(id)a3
{
  v15 = a3;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithNewFunction_descriptor_(v15, v4, v5, v6, v7, v8, sub_2760147DC, off_2812F85B8[2]);

  objc_msgSend_p_saveToArchive_archiver_(self, v10, v11, v12, v13, v14, v9, v15);
}

@end