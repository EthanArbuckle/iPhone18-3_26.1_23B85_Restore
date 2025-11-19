@interface TSATheme
+ (id)localizedNameForPresetKind:(id)a3;
+ (id)localizedNameForStylePickerTitle:(id)a3;
+ (id)localizedTitleForApplyStyleMenuItem:(id)a3;
+ (id)localizedTitleForCreateStyleMenuItem:(id)a3;
+ (id)presetKinds;
+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(unint64_t)a5;
+ (void)registerPresetSourceClasses;
- (NSArray)captionStyles;
- (TSWPParagraphStyle)captionTextPreset;
- (TSWPParagraphStyle)titleTextPreset;
- (void)addCaptionTextStylePresets;
- (void)addCaptionTextStylePresetsForPowerPointImport;
- (void)installSVGImportedShapePresetsInStylesheet;
- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4;
- (void)p_addStyleIfNotExisting:(id)a3 inStylesheet:(id)a4 withIdentifier:(id)a5 presets:(id)a6;
- (void)saveToArchive:(void *)a3 archiver:(id)a4;
@end

@implementation TSATheme

+ (void)registerPresetSourceClasses
{
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___TSATheme;
  objc_msgSendSuper2(&v18, sel_registerPresetSourceClasses);
  objc_msgSend_tsdRegisterPresetSourceClasses(a1, v3, v4, v5);
  v6 = objc_opt_class();
  objc_msgSend_registerPresetSourceClass_(a1, v7, v6, v8);
  objc_msgSend_tstRegisterPresetSourceClasses(a1, v9, v10, v11);
  objc_msgSend_tschRegisterPresetSourceClasses(a1, v12, v13, v14);
  v15 = objc_opt_class();
  objc_msgSend_registerPresetSourceClass_(a1, v16, v15, v17);
}

+ (id)localizedNameForPresetKind:(id)a3
{
  v5 = a3;
  if (qword_280A424E8 != -1)
  {
    sub_27610CB00();
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_280A424E0, v3, v5, v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Unknown";
  }

  return v7;
}

+ (id)localizedNameForStylePickerTitle:(id)a3
{
  v5 = a3;
  if (qword_280A424F8 != -1)
  {
    sub_27610CB14();
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_280A424F0, v3, v5, v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Unknown Styles";
  }

  return v7;
}

+ (id)localizedTitleForApplyStyleMenuItem:(id)a3
{
  v5 = a3;
  if (qword_280A42508 != -1)
  {
    sub_27610CB28();
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_280A42500, v3, v5, v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Apply Style";
  }

  return v7;
}

+ (id)localizedTitleForCreateStyleMenuItem:(id)a3
{
  v5 = a3;
  if (qword_280A42518 != -1)
  {
    sub_27610CB3C();
  }

  v6 = objc_msgSend_objectForKeyedSubscript_(qword_280A42510, v3, v5, v4);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Create Style";
  }

  return v7;
}

+ (id)presetKinds
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___TSATheme;
  v5 = objc_msgSendSuper2(&v9, sel_presetKinds);
  v6 = v5;
  if (!v5)
  {
    v6 = objc_msgSend_set(MEMORY[0x277CBEB98], v2, v3, v4);
  }

  v7 = objc_msgSend_setByAddingObject_(v6, v2, *MEMORY[0x277D80AF8], v4);

  if (!v5)
  {
  }

  return v7;
}

+ (void)bootstrapPresetsOfKind:(id)a3 inTheme:(id)a4 alternate:(unint64_t)a5
{
  v64[2] = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277D80AF8] == a3)
  {
    v9 = a4;
    v10 = a3;
    v8 = objc_msgSend_documentStylesheet(v9, v11, v12, v13);
    v7 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], v14, v15, v16);
    v20 = objc_msgSend_defaultParagraphStyle(v9, v17, v18, v19);
    v24 = objc_msgSend_context(v9, v21, v22, v23);
    v27 = objc_msgSend_copyFlattenedWithContext_(v20, v25, v24, v26);

    v32 = sub_2760ACDF8(v28, v29, v30, v31);
    objc_msgSend_setName_(v27, v33, v32, v34);

    v35 = *MEMORY[0x277D80FC8];
    v37 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v8, v36, *MEMORY[0x277D80FC8], v7, @"Caption Title");
    objc_msgSend_addStyle_withIdentifier_(v8, v38, v27, v37);
    v42 = objc_msgSend_defaultParagraphStyle(v9, v39, v40, v41);
    v46 = objc_msgSend_context(v9, v43, v44, v45);
    v49 = objc_msgSend_copyFlattenedWithContext_(v42, v47, v46, v48);

    v54 = sub_2760ACE64(v50, v51, v52, v53);
    objc_msgSend_setName_(v49, v55, v54, v56);

    v58 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v8, v57, v35, v7, @"Caption Text");
    objc_msgSend_addStyle_withIdentifier_(v8, v59, v49, v58);
    v64[0] = v27;
    v64[1] = v49;
    v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v64, 2);
    objc_msgSend_setPresets_ofKind_(v9, v62, v61, v10);
  }

  else
  {
    v63.receiver = a1;
    v63.super_class = &OBJC_METACLASS___TSATheme;
    v7 = a4;
    v8 = a3;
    objc_msgSendSuper2(&v63, sel_bootstrapPresetsOfKind_inTheme_alternate_, v8, v7, a5);
  }
}

- (NSArray)captionStyles
{
  v8 = objc_msgSend_documentStylesheet(self, a2, v2, v3);
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSATheme captionStyles]", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 176, 0, "invalid nil value for '%{public}s'", "documentStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  v18 = objc_msgSend_context(self, v5, v6, v7);
  v22 = objc_msgSend_documentRoot(v18, v19, v20, v21);
  v26 = objc_msgSend_documentLocale(v22, v23, v24, v25);

  v28 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"Caption", &stru_288512028, @"TSApplication");
  v31 = objc_msgSend_stylesWithName_(v8, v29, v28, v30);

  return v31;
}

- (void)addCaptionTextStylePresets
{
  v119[2] = *MEMORY[0x277D85DE8];
  v111 = *MEMORY[0x277D80AF8];
  v4 = objc_msgSend_presetsOfKind_(self, a2, *MEMORY[0x277D80AF8], v2);
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSATheme addCaptionTextStylePresets]", v10);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 185, 0, "Unexpected caption text presets found during upgrade");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v23 = objc_msgSend_documentStylesheet(self, v8, v9, v10);
  if (!v23)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSATheme addCaptionTextStylePresets]", v22);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 188, 0, "invalid nil value for '%{public}s'", "documentStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
  }

  v33 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], v20, v21, v22);
  v109 = *MEMORY[0x277D80FC8];
  v34 = String();
  objc_opt_class();
  v35 = String();
  v38 = objc_msgSend_styleWithIdentifier_(v23, v36, v35, v37);
  v39 = TSUDynamicCast();

  objc_opt_class();
  v110 = v34;
  v40 = String();
  v43 = objc_msgSend_styleWithIdentifier_(v23, v41, v40, v42);
  v44 = TSUDynamicCast();

  if (v39)
  {
    v48 = v44 == 0;
  }

  else
  {
    v48 = 1;
  }

  if (v48)
  {
    v108 = v4;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v49 = objc_msgSend_captionStyles(self, v45, v46, v47);
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v113, v118, 16);
    v112 = v33;
    if (v51)
    {
      v52 = v51;
      v53 = *v114;
      while (2)
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v114 != v53)
          {
            objc_enumerationMutation(v49);
          }

          objc_opt_class();
          v55 = TSUDynamicCast();
          if (v55)
          {
            v72 = v55;

            v33 = v112;
            goto LABEL_21;
          }
        }

        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v56, &v113, v118, 16);
        v33 = v112;
        if (v52)
        {
          continue;
        }

        break;
      }
    }

    v72 = objc_msgSend_defaultParagraphStyle(v23, v57, v58, v59);
    if (!v72)
    {
      v63 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "[TSATheme addCaptionTextStylePresets]", v62);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v66);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v68, v64, v67, 216, 0, "Document stylesheet lacks a default paragraph style");

      v33 = v112;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71);
      v72 = 0;
    }

LABEL_21:
    v74 = objc_msgSend_context(self, v60, v61, v62);
    v77 = objc_msgSend_copyFlattenedWithContext_(v72, v75, v74, v76);

    v82 = sub_2760ACDF8(v78, v79, v80, v81);
    objc_msgSend_setName_(v77, v83, v82, v84);

    v86 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v23, v85, v109, v33, @"Caption Title");
    objc_msgSend_addStyle_withIdentifier_(v23, v87, v77, v86);
    v91 = objc_msgSend_context(self, v88, v89, v90);
    v94 = objc_msgSend_copyFlattenedWithContext_(v72, v92, v91, v93);

    v99 = sub_2760ACE64(v95, v96, v97, v98);
    objc_msgSend_setName_(v94, v100, v99, v101);

    v103 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v23, v102, v109, v112, @"Caption Text");
    objc_msgSend_addStyle_withIdentifier_(v23, v104, v94, v103);
    v117[0] = v77;
    v117[1] = v94;
    v106 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v105, v117, 2);
    objc_msgSend_setPresets_ofKind_(self, v107, v106, v111);

    v33 = v112;
    v4 = v108;
  }

  else
  {
    v119[0] = v39;
    v119[1] = v44;
    v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v45, v119, 2);
    objc_msgSend_setPresets_ofKind_(self, v73, v72, v111);
  }
}

- (void)addCaptionTextStylePresetsForPowerPointImport
{
  v65[2] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v4 = objc_msgSend_presetOfKind_index_(self, v3, *MEMORY[0x277D80BB8], 0);
  v5 = TSUCheckedDynamicCast();

  v12 = objc_msgSend_documentStylesheet(self, v6, v7, v8);
  if (!v12)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSATheme addCaptionTextStylePresetsForPowerPointImport]", v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 241, 0, "invalid nil value for '%{public}s'", "documentStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  v25 = objc_msgSend_defaultParagraphStyle(v5, v9, v10, v11);
  if (!v25)
  {
    v25 = objc_msgSend_defaultParagraphStyle(v12, v22, v23, v24);
  }

  v26 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], v22, v23, v24);
  v30 = objc_msgSend_context(self, v27, v28, v29);
  v33 = objc_msgSend_copyFlattenedWithContext_(v25, v31, v30, v32);

  v38 = sub_2760ACDF8(v34, v35, v36, v37);
  objc_msgSend_setName_(v33, v39, v38, v40);

  v41 = *MEMORY[0x277D80FC8];
  v43 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v12, v42, *MEMORY[0x277D80FC8], v26, @"Caption Title");
  objc_msgSend_addStyle_withIdentifier_(v12, v44, v33, v43);
  v48 = objc_msgSend_context(self, v45, v46, v47);
  v51 = objc_msgSend_copyFlattenedWithContext_(v25, v49, v48, v50);

  v56 = sub_2760ACE64(v52, v53, v54, v55);
  objc_msgSend_setName_(v51, v57, v56, v58);

  v60 = objc_msgSend_unusedStyleIdentifierWithPackageString_styleDescriptor_contentTag_(v12, v59, v41, v26, @"Caption Text");
  objc_msgSend_addStyle_withIdentifier_(v12, v61, v51, v60);
  v65[0] = v33;
  v65[1] = v51;
  v63 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v62, v65, 2);
  objc_msgSend_setPresets_ofKind_(self, v64, v63, *MEMORY[0x277D80AF8]);
}

- (TSWPParagraphStyle)titleTextPreset
{
  v3 = objc_msgSend_presetsOfKind_(self, a2, *MEMORY[0x277D80AF8], v2);
  if (objc_msgSend_count(v3, v4, v5, v6) != 2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSATheme titleTextPreset]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 276, 0, "Bad caption text style presets in document: %@", v3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (v3)
  {
    objc_opt_class();
    v21 = objc_msgSend_firstObject(v3, v18, v19, v20);
    v22 = TSUCheckedDynamicCast();

    v26 = objc_msgSend_styleIdentifier(v22, v23, v24, v25);
    v27 = String();
    if ((objc_msgSend_isEqualToString_(v27, v28, *MEMORY[0x277D80FC8], v29) & 1) == 0)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSATheme titleTextPreset]", v31);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 287, 0, "Unexpected package %@ from identifier %@", v27, v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
    }

    v41 = String();
    v45 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], v42, v43, v44);
    isEqualToString = objc_msgSend_isEqualToString_(v41, v46, v45, v47);

    if ((isEqualToString & 1) == 0)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSATheme titleTextPreset]", v50);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 291, 0, "Unexpected descriptor %@ from identifier %@", v41, v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (TSWPParagraphStyle)captionTextPreset
{
  v3 = objc_msgSend_presetsOfKind_(self, a2, *MEMORY[0x277D80AF8], v2);
  if (objc_msgSend_count(v3, v4, v5, v6) != 2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSATheme captionTextPreset]", v8);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 301, 0, "Bad caption text style presets in document: %@", v3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  if (v3)
  {
    objc_opt_class();
    v21 = objc_msgSend_lastObject(v3, v18, v19, v20);
    v22 = TSUCheckedDynamicCast();

    v26 = objc_msgSend_styleIdentifier(v22, v23, v24, v25);
    v27 = String();
    if ((objc_msgSend_isEqualToString_(v27, v28, *MEMORY[0x277D80FC8], v29) & 1) == 0)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSATheme captionTextPreset]", v31);
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v35);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 312, 0, "Unexpected package %@ from identifier %@", v27, v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
    }

    v41 = String();
    v45 = objc_msgSend_presetStyleDescriptor(MEMORY[0x277D80EC8], v42, v43, v44);
    isEqualToString = objc_msgSend_isEqualToString_(v41, v46, v45, v47);

    if ((isEqualToString & 1) == 0)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "[TSATheme captionTextPreset]", v50);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 316, 0, "Unexpected descriptor %@ from identifier %@", v41, v26);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)p_addStyleIfNotExisting:(id)a3 inStylesheet:(id)a4 withIdentifier:(id)a5 presets:(id)a6
{
  v32 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v14 = objc_msgSend_styleWithIdentifier_(v9, v12, v10, v13);
  objc_opt_class();
  v15 = TSUClassAndProtocolCast();

  if (v15)
  {
    v17 = v15;
    objc_msgSend_addObject_(v11, v18, v17, v19, &unk_28854A698);
  }

  else
  {
    objc_msgSend_addStyle_withIdentifier_(v9, v16, v32, v10, &unk_28854A698);
    v17 = v32;
    if (!v17)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSATheme p_addStyleIfNotExisting:inStylesheet:withIdentifier:presets:]", v21);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 337, 0, "invalid nil value for '%{public}s'", "presetStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      v17 = 0;
    }

    objc_msgSend_addObject_(v11, v20, v17, v21, v31);
  }
}

- (void)installSVGImportedShapePresetsInStylesheet
{
  v62 = objc_msgSend_documentStylesheet(self, a2, v2, v3);
  v5 = *MEMORY[0x277D80B40];
  v8 = objc_msgSend_presetsOfKind_(self, v6, *MEMORY[0x277D80B40], v7);
  v12 = objc_msgSend_count(v8, v9, v10, v11);

  if (!v12)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_opt_class();
    v15 = objc_msgSend_presetOfKind_index_(self, v14, *MEMORY[0x277D80B88], 0);
    v16 = TSUDynamicCast();

    if (!v16)
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSATheme installSVGImportedShapePresetsInStylesheet]", v19);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATheme.m", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 357, 0, "invalid nil value for '%{public}s'", "shapeStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
    }

    v29 = objc_msgSend_copy(v16, v17, v18, v19);
    objc_msgSend_removeValueForProperty_(v29, v30, 517, v31);
    objc_msgSend_removeValueForProperty_(v29, v32, 518, v33);
    v37 = objc_msgSend_null(MEMORY[0x277CBEB68], v34, v35, v36);
    objc_msgSend_setBoxedValue_forProperty_(v29, v38, v37, 516);

    v42 = objc_msgSend_null(MEMORY[0x277CBEB68], v39, v40, v41);
    objc_msgSend_setBoxedValue_forProperty_(v29, v43, v42, 519);

    v47 = objc_msgSend_null(MEMORY[0x277CBEB68], v44, v45, v46);
    objc_msgSend_setBoxedValue_forProperty_(v29, v48, v47, 520);

    v52 = objc_msgSend_null(MEMORY[0x277CBEB68], v49, v50, v51);
    objc_msgSend_setBoxedValue_forProperty_(v29, v53, v52, 522);

    v57 = objc_msgSend_null(MEMORY[0x277CBEB68], v54, v55, v56);
    objc_msgSend_setBoxedValue_forProperty_(v29, v58, v57, 523);

    v59 = TSDImportedSVGShapeStyleIdentifierString();
    objc_msgSend_p_addStyleIfNotExisting_inStylesheet_withIdentifier_presets_(self, v60, v29, v62, v59, v13);
    objc_msgSend_setPresets_ofKind_(self, v61, v13, v5);
  }
}

- (void)loadFromArchive:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v23.receiver = self;
  v23.super_class = TSATheme;
  [(TSATheme *)&v23 loadFromArchive:a3 unarchiver:v6];
  objc_msgSend_tsdLoadFromArchive_unarchiver_(self, v7, a3, v6);
  objc_msgSend_tswpLoadFromArchive_unarchiver_(self, v8, a3, v6);
  objc_msgSend_tstLoadFromArchive_unarchiver_(self, v9, a3, v6);
  objc_msgSend_tschLoadFromArchive_unarchiver_(self, v10, a3, v6);
  if (google::protobuf::internal::ExtensionSet::Has((a3 + 16)))
  {
    Message = google::protobuf::internal::ExtensionSet::GetMessage();
    if (*(Message + 24) >= 1)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_2760B2328;
      v22[3] = &unk_27A6B01F8;
      v22[4] = self;
      v14 = v6;
      v15 = objc_opt_class();
      objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v14, v16, Message + 16, v15, 0, v22);
    }

    if (*(Message + 48) < 1)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_2760B2358;
      v20[3] = &unk_27A6AF850;
      v20[4] = self;
      objc_msgSend_addFinalizeHandler_(v6, v11, v20, v12);
    }

    else
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_2760B2340;
      v21[3] = &unk_27A6B01F8;
      v21[4] = self;
      v17 = v6;
      v18 = objc_opt_class();
      objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v17, v19, Message + 40, v18, 0, v21);
    }
  }
}

- (void)saveToArchive:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v29.receiver = self;
  v29.super_class = TSATheme;
  [(TSATheme *)&v29 saveToArchive:a3 archiver:v6];
  objc_msgSend_tsdSaveToArchive_archiver_(self, v7, a3, v6);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_2760B25FC;
  v26[3] = &unk_27A6AF6C8;
  v26[4] = self;
  v28 = a3;
  v8 = v6;
  v27 = v8;
  objc_msgSend_pushScopeForField_message_usingBlock_(v8, v9, 110, a3, v26);
  objc_msgSend_tstSaveToArchive_archiver_(self, v10, a3, v8);
  objc_msgSend_tschSaveToArchive_archiver_(self, v11, a3, v8);
  v12 = *MEMORY[0x277D80AF8];
  if (objc_msgSend_hasPresetsOfKind_(self, v13, *MEMORY[0x277D80AF8], v14))
  {
    v17 = objc_msgSend_presetsOfKind_(self, v15, v12, v16);
    TSA::ThemePresetsArchive::default_instance(v17);
    v18 = google::protobuf::internal::ExtensionSet::MutableMessage();
    objc_msgSend_setStrongReferenceArray_message_(v8, v19, v17, v18 + 16);
  }

  v20 = *MEMORY[0x277D80B40];
  if (objc_msgSend_hasPresetsOfKind_(self, v15, *MEMORY[0x277D80B40], v16))
  {
    v23 = objc_msgSend_presetsOfKind_(self, v21, v20, v22);
    TSA::ThemePresetsArchive::default_instance(v23);
    v24 = google::protobuf::internal::ExtensionSet::MutableMessage();
    objc_msgSend_setStrongReferenceArray_message_(v8, v25, v23, v24 + 40);
  }
}

@end