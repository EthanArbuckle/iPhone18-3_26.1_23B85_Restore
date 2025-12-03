@interface TSCHStyleBootstrapping
+ (id)p_bootstrappedStylePresetInContext:(id)context stylesheet:(id)stylesheet presetIndex:(unint64_t)index;
+ (id)p_defaultParagraphStyleOfClass:(Class)class stylesheet:(id)stylesheet identifier:(id)identifier;
+ (id)p_defaultStyleOfClass:(Class)class stylesheet:(id)stylesheet identifier:(id)identifier;
+ (id)stylePresetForStylesheet:(id)stylesheet roleIndex:(unint64_t)index;
+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate reservedCount:(unint64_t)count;
+ (void)bootstrapStylesInStylesheet:(id)stylesheet numberOfPresets:(unint64_t)presets;
@end

@implementation TSCHStyleBootstrapping

+ (id)p_defaultStyleOfClass:(Class)class stylesheet:(id)stylesheet identifier:(id)identifier
{
  stylesheetCopy = stylesheet;
  identifierCopy = identifier;
  if (!identifierCopy || (objc_msgSend_styleWithIdentifier_(stylesheetCopy, v8, v10, v11, v12, identifierCopy), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = objc_msgSend_context(stylesheetCopy, v8, v10, v11, v12);
    v13 = objc_msgSend_defaultStyleWithContext_(class, v15, v16, v17, v18, v14);

    if (!v13)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "+[TSCHStyleBootstrapping p_defaultStyleOfClass:stylesheet:identifier:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleBootstrapping.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 47, 0, "invalid nil value for '%{public}s'", "style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    }

    objc_msgSend_addStyle_(stylesheetCopy, v19, v20, v21, v22, v13);
    if (identifierCopy)
    {
      objc_msgSend_setName_(v13, v38, v39, v40, v41, identifierCopy);
      objc_msgSend_setIdentifier_ofStyle_(stylesheetCopy, v42, v43, v44, v45, identifierCopy, v13);
    }
  }

  return v13;
}

+ (id)p_defaultParagraphStyleOfClass:(Class)class stylesheet:(id)stylesheet identifier:(id)identifier
{
  stylesheetCopy = stylesheet;
  identifierCopy = identifier;
  if (!identifierCopy || (objc_msgSend_styleWithIdentifier_(stylesheetCopy, v8, v10, v11, v12, identifierCopy), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = objc_msgSend_context(stylesheetCopy, v8, v10, v11, v12);
    v13 = objc_msgSend_defaultParagraphStyleWithContext_(class, v15, v16, v17, v18, v14);

    if (!v13)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "+[TSCHStyleBootstrapping p_defaultParagraphStyleOfClass:stylesheet:identifier:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleBootstrapping.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 65, 0, "invalid nil value for '%{public}s'", "style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
    }

    objc_msgSend_addStyle_(stylesheetCopy, v19, v20, v21, v22, v13);
    if (identifierCopy)
    {
      objc_msgSend_setName_(v13, v38, v39, v40, v41, identifierCopy);
      objc_msgSend_setIdentifier_ofStyle_(stylesheetCopy, v42, v43, v44, v45, identifierCopy, v13);
    }
  }

  return v13;
}

+ (id)p_bootstrappedStylePresetInContext:(id)context stylesheet:(id)stylesheet presetIndex:(unint64_t)index
{
  v145[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  stylesheetCopy = stylesheet;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v142 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v143 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_msgSend_chartStyleIdentifierForRoleIndex_(TSCHChartInfo, v10, v11, v12, v13, index);
  v15 = objc_opt_class();
  v20 = objc_msgSend_p_defaultStyleOfClass_stylesheet_identifier_(self, v16, v17, v18, v19, v15, stylesheetCopy, v14);
  objc_opt_class();
  v140 = TSUDynamicCast();
  v25 = objc_msgSend_legendStyleIdentifierForRoleIndex_(TSCHChartInfo, v21, v22, v23, v24, index);

  v26 = objc_opt_class();
  v31 = objc_msgSend_p_defaultStyleOfClass_stylesheet_identifier_(self, v27, v28, v29, v30, v26, stylesheetCopy, v25);

  objc_opt_class();
  v139 = TSUDynamicCast();
  v36 = 0;
  v37 = 1;
  do
  {
    v38 = v25;
    v39 = v31;
    v40 = v37;
    v25 = objc_msgSend_identifierForValueStyleWithRoleIndex_ordinal_(TSCHChartAxisStyle, v32, v33, v34, v35, index, v36);

    v41 = objc_opt_class();
    v31 = objc_msgSend_p_defaultStyleOfClass_stylesheet_identifier_(self, v42, v43, v44, v45, v41, stylesheetCopy, v25);

    objc_msgSend_addObject_(v9, v46, v47, v48, v49, v31);
    v37 = 0;
    v36 = 1;
  }

  while ((v40 & 1) != 0);
  v50 = objc_msgSend_identifierForCategoryStyleWithRoleIndex_ordinal_(TSCHChartAxisStyle, v32, v33, v34, v35, index, 0);

  v51 = objc_opt_class();
  v56 = objc_msgSend_p_defaultStyleOfClass_stylesheet_identifier_(self, v52, v53, v54, v55, v51, stylesheetCopy, v50);

  objc_msgSend_addObject_(v142, v57, v58, v59, v60, v56);
  v65 = 0;
  v66 = v143;
  do
  {
    v67 = v50;
    v50 = objc_msgSend_seriesStyleIdentifierForRoleIndex_ordinal_(TSCHChartInfo, v61, v62, v63, v64, index, v65);

    v72 = objc_msgSend_styleWithIdentifier_(stylesheetCopy, v68, v69, v70, v71, v50);

    v56 = v72;
    if (!v72)
    {
      v77 = objc_msgSend_context(stylesheetCopy, v73, v74, v75, v76);
      v56 = objc_msgSend_bootstrappedSeriesStyleWithContext_seriesIndex_presetIndex_(TSCHChartSeriesStyle, v78, v79, v80, v81, v77, v65, index);

      if (!v56)
      {
        v86 = MEMORY[0x277D81150];
        v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, "+[TSCHStyleBootstrapping p_bootstrappedStylePresetInContext:stylesheet:presetIndex:]");
        v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCHStyleBootstrapping.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v93, v94, v95, v96, v87, v92, 141, 0, "invalid nil value for '%{public}s'", "style");

        v66 = v143;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v97, v98, v99, v100);
      }

      objc_msgSend_setName_(v56, v82, v83, v84, v85, v50);
      objc_msgSend_addStyle_withIdentifier_(stylesheetCopy, v101, v102, v103, v104, v56, v50);
    }

    objc_msgSend_addObject_(v66, v73, v74, v75, v76, v56);
    ++v65;
  }

  while (v65 != 6);
  v144 = objc_msgSend_paragraphStyleIdentifierForRoleIndex_ordinal_(TSCHChartInfo, v61, v62, v63, v64, index, 0);

  v105 = objc_opt_class();
  v110 = objc_msgSend_p_defaultParagraphStyleOfClass_stylesheet_identifier_(self, v106, v107, v108, v109, v105, stylesheetCopy, v144);

  v145[0] = v110;
  v115 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v111, v112, v113, v114, v145, 1);
  v120 = objc_msgSend_firstObject(v66, v116, v117, v118, v119);
  v125 = objc_msgSend_firstObject(v9, v121, v122, v123, v124);
  v130 = objc_msgSend_defaultStyleForPresetFromChartStyle_seriesStyle_paragraphStyles_valueAxisStyle_(TSCHReferenceLineStyle, v126, v127, v128, v129, v140, v120, v115, v125);

  objc_opt_class();
  v131 = TSUDynamicCast();
  v132 = [TSCHChartStylePreset alloc];
  v138 = objc_msgSend_initWithContext_chartStyle_legendStyle_valueAxisStyles_categoryAxisStyles_seriesStyles_paragraphStyles_refLineStyle_(v132, v133, v134, v135, v136, contextCopy, v140, v139, v9, v142, v66, v115, v131);

  return v138;
}

+ (id)stylePresetForStylesheet:(id)stylesheet roleIndex:(unint64_t)index
{
  stylesheetCopy = stylesheet;
  v11 = objc_msgSend_context(stylesheetCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_p_bootstrappedStylePresetInContext_stylesheet_presetIndex_(self, v12, v13, v14, v15, v11, stylesheetCopy, index);

  return v16;
}

+ (void)bootstrapStylesInStylesheet:(id)stylesheet numberOfPresets:(unint64_t)presets
{
  stylesheetCopy = stylesheet;
  v11 = objc_msgSend_context(stylesheetCopy, v6, v7, v8, v9);
  if (presets)
  {
    v15 = 0;
    do
    {
      v16 = objc_msgSend_p_bootstrappedStylePresetInContext_stylesheet_presetIndex_(self, v10, v12, v13, v14, v11, stylesheetCopy, v15++);
    }

    while (presets != v15);
  }
}

+ (void)bootstrapPresetsOfKind:(id)kind inTheme:(id)theme alternate:(unint64_t)alternate reservedCount:(unint64_t)count
{
  kindCopy = kind;
  themeCopy = theme;
  if (*MEMORY[0x277D80B08] == kindCopy)
  {
    v14 = objc_msgSend_context(themeCopy, v9, v11, v12, v13);
    v19 = objc_msgSend_documentStylesheet(themeCopy, v15, v16, v17, v18);
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (count != 6)
    {
      v25 = 0;
      v26 = 6 - count;
      do
      {
        v27 = objc_msgSend_p_bootstrappedStylePresetInContext_stylesheet_presetIndex_(self, v20, v22, v23, v24, v14, v19, v25);
        objc_msgSend_addObject_(v21, v28, v29, v30, v31, v27);

        ++v25;
      }

      while (v26 != v25);
    }

    v32 = objc_msgSend_copy(v21, v20, v22, v23, v24);
    objc_msgSend_setPresets_ofKind_(themeCopy, v33, v34, v35, v36, v32, kindCopy);
  }
}

@end