@interface TPBaseCompatibilityDelegate
- (BOOL)isExportSupportedForType:(id)type exporterOptions:(id)options documentRoot:(id)root;
- (BOOL)isIBADocumentType:(id)type;
- (BOOL)isSageDocumentType:(id)type;
- (BOOL)isTextOnlyType:(id)type;
- (Class)exportOptionsControllerClass;
- (Class)exporterClassForType:(id)type options:(id)options;
- (id)EPUBExportCategories;
- (id)backwardsCompatibleTypeForType:(id)type;
- (id)exportableTypes;
- (id)newExportableDocumentTypesForFlag:(unint64_t)flag;
- (id)unsupportedExportMessageStringForType:(id)type;
@end

@implementation TPBaseCompatibilityDelegate

- (id)newExportableDocumentTypesForFlag:(unint64_t)flag
{
  flagCopy = flag;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (flagCopy)
  {
    v37 = objc_msgSend_tsa_sharedPropertiesProvider(TPAppDelegate, v4, v6, v7, v8, v9);
    v38 = MEMORY[0x277D7FFB0];
    v44 = objc_msgSend_nativeDocumentType(v37, v39, v40, v41, v42, v43);
    v50 = objc_msgSend_applicationDisplayName(v37, v45, v46, v47, v48, v49);
    v56 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v38, v51, v52, v53, v54, v55, v44, v50, 0);
    objc_msgSend_addObject_(v5, v57, v58, v59, v60, v61, v56);

    if ((flagCopy & 4) == 0)
    {
LABEL_3:
      if ((flagCopy & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((flagCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  v62 = MEMORY[0x277D7FFB0];
  v63 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v4, v6, v7, v8, v9);
  v64 = sub_275FFFC3C();
  v70 = objc_msgSend_localizedStringForKey_value_table_(v64, v65, v66, v67, v68, v69, @"PDF", &stru_288501738, @"Pages");
  v71 = sub_275FFFC3C();
  v77 = objc_msgSend_localizedStringForKey_value_table_(v71, v72, v73, v74, v75, v76, @"Creating a PDF file\\U2026", &stru_288501738, @"Pages");
  v83 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v62, v78, v79, v80, v81, v82, v63, v70, v77);
  objc_msgSend_addObject_(v5, v84, v85, v86, v87, v88, v83);

  if ((flagCopy & 8) == 0)
  {
LABEL_4:
    if ((flagCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v89 = MEMORY[0x277D7FFB0];
  v90 = sub_275FFFC3C();
  v96 = objc_msgSend_localizedStringForKey_value_table_(v90, v91, v92, v93, v94, v95, @"Word", &stru_288501738, @"Pages");
  v97 = sub_275FFFC3C();
  v103 = objc_msgSend_localizedStringForKey_value_table_(v97, v98, v99, v100, v101, v102, @"Creating a Word file\\U2026", &stru_288501738, @"Pages");
  v109 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v89, v104, v105, v106, v107, v108, @"org.openxmlformats.wordprocessingml.document", v96, v103);
  objc_msgSend_addObject_(v5, v110, v111, v112, v113, v114, v109);

  if ((flagCopy & 0x10) == 0)
  {
LABEL_5:
    if ((flagCopy & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v115 = MEMORY[0x277D7FFB0];
  v116 = sub_275FFFC3C();
  v122 = objc_msgSend_localizedStringForKey_value_table_(v116, v117, v118, v119, v120, v121, @"EPUB", &stru_288501738, @"Pages");
  v123 = sub_275FFFC3C();
  v129 = objc_msgSend_localizedStringForKey_value_table_(v123, v124, v125, v126, v127, v128, @"Creating an EPUB file\\U2026", &stru_288501738, @"Pages");
  v135 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v115, v130, v131, v132, v133, v134, @"org.idpf.epub-container", v122, v129);
  objc_msgSend_addObject_(v5, v136, v137, v138, v139, v140, v135);

  if ((flagCopy & 0x20) == 0)
  {
LABEL_6:
    if ((flagCopy & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v141 = MEMORY[0x277D7FFB0];
  v142 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], v4, v6, v7, v8, v9);
  v143 = sub_275FFFC3C();
  v149 = objc_msgSend_localizedStringForKey_value_table_(v143, v144, v145, v146, v147, v148, @"Plain Text", &stru_288501738, @"Pages");
  v150 = sub_275FFFC3C();
  v156 = objc_msgSend_localizedStringForKey_value_table_(v150, v151, v152, v153, v154, v155, @"Creating a TXT file\\U2026", &stru_288501738, @"Pages");
  v162 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v141, v157, v158, v159, v160, v161, v142, v149, v156);
  objc_msgSend_addObject_(v5, v163, v164, v165, v166, v167, v162);

  if ((flagCopy & 0x40) == 0)
  {
LABEL_7:
    if ((flagCopy & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v168 = MEMORY[0x277D7FFB0];
  v169 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v4, v6, v7, v8, v9);
  v170 = sub_275FFFC3C();
  v176 = objc_msgSend_localizedStringForKey_value_table_(v170, v171, v172, v173, v174, v175, @"RTF", &stru_288501738, @"Pages");
  v177 = sub_275FFFC3C();
  v183 = objc_msgSend_localizedStringForKey_value_table_(v177, v178, v179, v180, v181, v182, @"Creating an RTF file\\U2026", &stru_288501738, @"Pages");
  v189 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v168, v184, v185, v186, v187, v188, v169, v176, v183);
  objc_msgSend_addObject_(v5, v190, v191, v192, v193, v194, v189);

  if ((flagCopy & 0x100) == 0)
  {
LABEL_8:
    if ((flagCopy & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v222 = MEMORY[0x277D7FFB0];
    v223 = sub_275FFFC3C();
    v229 = objc_msgSend_localizedStringForKey_value_table_(v223, v224, v225, v226, v227, v228, @"Pages Template", &stru_288501738, @"Pages");
    v230 = sub_275FFFC3C();
    v236 = objc_msgSend_localizedStringForKey_value_table_(v230, v231, v232, v233, v234, v235, @"Creating a template file…", &stru_288501738, @"Pages");
    v242 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v222, v237, v238, v239, v240, v241, @"com.apple.iwork.pages.sfftemplate", v229, v236);
    objc_msgSend_addObject_(v5, v243, v244, v245, v246, v247, v242);

    if ((flagCopy & 2) == 0)
    {
      return v5;
    }

    goto LABEL_10;
  }

LABEL_18:
  v195 = MEMORY[0x277D7FFB0];
  v196 = objc_msgSend_identifier(*MEMORY[0x277CE1DB0], v4, v6, v7, v8, v9);
  v197 = sub_275FFFC3C();
  v203 = objc_msgSend_localizedStringForKey_value_table_(v197, v198, v199, v200, v201, v202, @"Images", &stru_288501738, @"Pages");
  v204 = sub_275FFFC3C();
  v210 = objc_msgSend_localizedStringForKey_value_table_(v204, v205, v206, v207, v208, v209, @"Creating images\\U2026", &stru_288501738, @"Pages");
  v216 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v195, v211, v212, v213, v214, v215, v196, v203, v210);
  objc_msgSend_addObject_(v5, v217, v218, v219, v220, v221, v216);

  if ((flagCopy & 0x80) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((flagCopy & 2) != 0)
  {
LABEL_10:
    v10 = MEMORY[0x277D7FFB0];
    v11 = sub_275FFFC3C();
    v17 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, v13, v14, v15, v16, @"Pages \\U201909", &stru_288501738, @"Pages");
    v18 = sub_275FFFC3C();
    v24 = objc_msgSend_localizedStringForKey_value_table_(v18, v19, v20, v21, v22, v23, @"Creating a Pages \\U201909 file\\U2026", &stru_288501738, @"Pages");
    v30 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v10, v25, v26, v27, v28, v29, @"com.apple.iwork.pages.sffpages", v17, v24);
    objc_msgSend_addObject_(v5, v31, v32, v33, v34, v35, v30);
  }

  return v5;
}

- (id)EPUBExportCategories
{
  v226[31] = *MEMORY[0x277D85DE8];
  v225 = sub_275FFFC3C();
  v224 = objc_msgSend_localizedStringForKey_value_table_(v225, v2, v3, v4, v5, v6, @"Arts & Entertainment", &stru_288501738, @"Pages");
  v226[0] = v224;
  v223 = sub_275FFFC3C();
  v222 = objc_msgSend_localizedStringForKey_value_table_(v223, v7, v8, v9, v10, v11, @"Biographies & Memoirs", &stru_288501738, @"Pages");
  v226[1] = v222;
  v221 = sub_275FFFC3C();
  v220 = objc_msgSend_localizedStringForKey_value_table_(v221, v12, v13, v14, v15, v16, @"Business & Personal Finance", &stru_288501738, @"Pages");
  v226[2] = v220;
  v219 = sub_275FFFC3C();
  v218 = objc_msgSend_localizedStringForKey_value_table_(v219, v17, v18, v19, v20, v21, @"Children & Teens", &stru_288501738, @"Pages");
  v226[3] = v218;
  v217 = sub_275FFFC3C();
  v216 = objc_msgSend_localizedStringForKey_value_table_(v217, v22, v23, v24, v25, v26, @"Comics & Graphic Novels", &stru_288501738, @"Pages");
  v226[4] = v216;
  v215 = sub_275FFFC3C();
  v214 = objc_msgSend_localizedStringForKey_value_table_(v215, v27, v28, v29, v30, v31, @"Communications & Media", &stru_288501738, @"Pages");
  v226[5] = v214;
  v213 = sub_275FFFC3C();
  v212 = objc_msgSend_localizedStringForKey_value_table_(v213, v32, v33, v34, v35, v36, @"Computers & Technology", &stru_288501738, @"Pages");
  v226[6] = v212;
  v211 = sub_275FFFC3C();
  v210 = objc_msgSend_localizedStringForKey_value_table_(v211, v37, v38, v39, v40, v41, @"Cookbooks, Food & Wine", &stru_288501738, @"Pages");
  v226[7] = v210;
  v209 = sub_275FFFC3C();
  v208 = objc_msgSend_localizedStringForKey_value_table_(v209, v42, v43, v44, v45, v46, @"Family & Relationships", &stru_288501738, @"Pages");
  v226[8] = v208;
  v207 = sub_275FFFC3C();
  v206 = objc_msgSend_localizedStringForKey_value_table_(v207, v47, v48, v49, v50, v51, @"Fiction & Literature", &stru_288501738, @"Pages");
  v226[9] = v206;
  v205 = sub_275FFFC3C();
  v204 = objc_msgSend_localizedStringForKey_value_table_(v205, v52, v53, v54, v55, v56, @"General Nonfiction", &stru_288501738, @"Pages");
  v226[10] = v204;
  v203 = sub_275FFFC3C();
  v202 = objc_msgSend_localizedStringForKey_value_table_(v203, v57, v58, v59, v60, v61, @"Health, Mind & Body", &stru_288501738, @"Pages");
  v226[11] = v202;
  v201 = sub_275FFFC3C();
  v200 = objc_msgSend_localizedStringForKey_value_table_(v201, v62, v63, v64, v65, v66, @"History", &stru_288501738, @"Pages");
  v226[12] = v200;
  v199 = sub_275FFFC3C();
  v198 = objc_msgSend_localizedStringForKey_value_table_(v199, v67, v68, v69, v70, v71, @"Humor", &stru_288501738, @"Pages");
  v226[13] = v198;
  v197 = sub_275FFFC3C();
  v196 = objc_msgSend_localizedStringForKey_value_table_(v197, v72, v73, v74, v75, v76, @"Language Studies", &stru_288501738, @"Pages");
  v226[14] = v196;
  v195 = sub_275FFFC3C();
  v194 = objc_msgSend_localizedStringForKey_value_table_(v195, v77, v78, v79, v80, v81, @"Lifestyle & Home", &stru_288501738, @"Pages");
  v226[15] = v194;
  v193 = sub_275FFFC3C();
  v192 = objc_msgSend_localizedStringForKey_value_table_(v193, v82, v83, v84, v85, v86, @"Mathematics", &stru_288501738, @"Pages");
  v226[16] = v192;
  v191 = sub_275FFFC3C();
  v190 = objc_msgSend_localizedStringForKey_value_table_(v191, v87, v88, v89, v90, v91, @"Mysteries & Thrillers", &stru_288501738, @"Pages");
  v226[17] = v190;
  v189 = sub_275FFFC3C();
  v188 = objc_msgSend_localizedStringForKey_value_table_(v189, v92, v93, v94, v95, v96, @"Philosophy", &stru_288501738, @"Pages");
  v226[18] = v188;
  v187 = sub_275FFFC3C();
  v186 = objc_msgSend_localizedStringForKey_value_table_(v187, v97, v98, v99, v100, v101, @"Politics & Current Events", &stru_288501738, @"Pages");
  v226[19] = v186;
  v185 = sub_275FFFC3C();
  v184 = objc_msgSend_localizedStringForKey_value_table_(v185, v102, v103, v104, v105, v106, @"Professional & Technical", &stru_288501738, @"Pages");
  v226[20] = v184;
  v183 = sub_275FFFC3C();
  v182 = objc_msgSend_localizedStringForKey_value_table_(v183, v107, v108, v109, v110, v111, @"Reference", &stru_288501738, @"Pages");
  v226[21] = v182;
  v181 = sub_275FFFC3C();
  v180 = objc_msgSend_localizedStringForKey_value_table_(v181, v112, v113, v114, v115, v116, @"Religion & Spirituality", &stru_288501738, @"Pages");
  v226[22] = v180;
  v179 = sub_275FFFC3C();
  v178 = objc_msgSend_localizedStringForKey_value_table_(v179, v117, v118, v119, v120, v121, @"Romance", &stru_288501738, @"Pages");
  v226[23] = v178;
  v177 = sub_275FFFC3C();
  v176 = objc_msgSend_localizedStringForKey_value_table_(v177, v122, v123, v124, v125, v126, @"Sci-Fi & Fantasy", &stru_288501738, @"Pages");
  v226[24] = v176;
  v175 = sub_275FFFC3C();
  v174 = objc_msgSend_localizedStringForKey_value_table_(v175, v127, v128, v129, v130, v131, @"Science & Nature", &stru_288501738, @"Pages");
  v226[25] = v174;
  v173 = sub_275FFFC3C();
  v137 = objc_msgSend_localizedStringForKey_value_table_(v173, v132, v133, v134, v135, v136, @"Social Science", &stru_288501738, @"Pages");
  v226[26] = v137;
  v138 = sub_275FFFC3C();
  v144 = objc_msgSend_localizedStringForKey_value_table_(v138, v139, v140, v141, v142, v143, @"Sports & Outdoors", &stru_288501738, @"Pages");
  v226[27] = v144;
  v145 = sub_275FFFC3C();
  v151 = objc_msgSend_localizedStringForKey_value_table_(v145, v146, v147, v148, v149, v150, @"Teaching & Learning", &stru_288501738, @"Pages");
  v226[28] = v151;
  v152 = sub_275FFFC3C();
  v158 = objc_msgSend_localizedStringForKey_value_table_(v152, v153, v154, v155, v156, v157, @"Transportation", &stru_288501738, @"Pages");
  v226[29] = v158;
  v159 = sub_275FFFC3C();
  v165 = objc_msgSend_localizedStringForKey_value_table_(v159, v160, v161, v162, v163, v164, @"Travel & Adventure", &stru_288501738, @"Pages");
  v226[30] = v165;
  v171 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v166, v167, v168, v169, v170, v226, 31);

  return v171;
}

- (Class)exporterClassForType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  if (typeCopy && (objc_msgSend_identifier(*MEMORY[0x277CE1E08], v6, v8, v9, v10, v11), v12 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_tsu_conformsToUTI_(typeCopy, v13, v14, v15, v16, v17, v12), v12, v18))
  {
    v19 = objc_opt_class();
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  return v19;
}

- (Class)exportOptionsControllerClass
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPBaseCompatibilityDelegate exportOptionsControllerClass]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBaseCompatibilityDelegate.m");
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v16, v17, v18, v19, v20, v7, v13, 259, 0, "Abstract method not overridden by %{public}@", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  v26 = MEMORY[0x277CBEAD8];
  v27 = *MEMORY[0x277CBE658];
  v28 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v36 = objc_msgSend_stringWithFormat_(v28, v31, v32, v33, v34, v35, @"Abstract method not overridden by %@: %s", v30, "[TPBaseCompatibilityDelegate exportOptionsControllerClass]");
  v42 = objc_msgSend_exceptionWithName_reason_userInfo_(v26, v37, v38, v39, v40, v41, v27, v36, 0);
  v43 = v42;

  objc_exception_throw(v42);
}

- (id)exportableTypes
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPBaseCompatibilityDelegate exportableTypes]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPBaseCompatibilityDelegate.m");
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v16, v17, v18, v19, v20, v7, v13, 263, 0, "Abstract method not overridden by %{public}@", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  v26 = MEMORY[0x277CBEAD8];
  v27 = *MEMORY[0x277CBE658];
  v28 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v36 = objc_msgSend_stringWithFormat_(v28, v31, v32, v33, v34, v35, @"Abstract method not overridden by %@: %s", v30, "[TPBaseCompatibilityDelegate exportableTypes]");
  v42 = objc_msgSend_exceptionWithName_reason_userInfo_(v26, v37, v38, v39, v40, v41, v27, v36, 0);
  v43 = v42;

  objc_exception_throw(v42);
}

- (BOOL)isSageDocumentType:(id)type
{
  v17[2] = *MEMORY[0x277D85DE8];
  v17[0] = @"com.apple.iwork.pages.pages";
  v17[1] = @"com.apple.iwork.pages.sffpages";
  v3 = MEMORY[0x277CBEA60];
  typeCopy = type;
  v10 = objc_msgSend_arrayWithObjects_count_(v3, v5, v6, v7, v8, v9, v17, 2);
  LOBYTE(v3) = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v11, v12, v13, v14, v15, v10);

  return v3;
}

- (BOOL)isIBADocumentType:(id)type
{
  typeCopy = type;
  v9 = objc_msgSend_tp_sharedPropertiesProvider(TPAppDelegate, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_iBADocumentTypes(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v16, v17, v18, v19, v20, v15);

  return v21;
}

- (BOOL)isTextOnlyType:(id)type
{
  v29[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE1E20];
  typeCopy = type;
  v10 = objc_msgSend_identifier(v3, v5, v6, v7, v8, v9);
  v29[0] = v10;
  v16 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v11, v12, v13, v14, v15);
  v29[1] = v16;
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v18, v19, v20, v21, v29, 2);
  LOBYTE(v3) = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v23, v24, v25, v26, v27, v22);

  return v3;
}

- (BOOL)isExportSupportedForType:(id)type exporterOptions:(id)options documentRoot:(id)root
{
  typeCopy = type;
  rootCopy = root;
  v13 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], v8, v9, v10, v11, v12);
  if (objc_msgSend_isEqualToString_(typeCopy, v14, v15, v16, v17, v18, v13))
  {

    if (!rootCopy)
    {
      hasBody = 1;
      goto LABEL_7;
    }

LABEL_6:
    v37 = objc_msgSend_settings(rootCopy, v24, v25, v26, v27, v28);
    hasBody = objc_msgSend_hasBody(v37, v38, v39, v40, v41, v42);

    goto LABEL_7;
  }

  v30 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v19, v20, v21, v22, v23);
  isEqualToString = objc_msgSend_isEqualToString_(typeCopy, v31, v32, v33, v34, v35, v30);

  hasBody = 1;
  if (rootCopy && isEqualToString)
  {
    goto LABEL_6;
  }

LABEL_7:

  return hasBody;
}

- (id)backwardsCompatibleTypeForType:(id)type
{
  if (objc_msgSend_isEqualToString_(type, a2, v3, v4, v5, v6, @"org.openxmlformats.wordprocessingml.document"))
  {
    v7 = @"com.microsoft.word.doc";
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)unsupportedExportMessageStringForType:(id)type
{
  typeCopy = type;
  v9 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], v4, v5, v6, v7, v8);
  isEqualToString = objc_msgSend_isEqualToString_(typeCopy, v10, v11, v12, v13, v14, v9);

  if (isEqualToString)
  {
    v21 = @"Page layout documents can\\U2019t be exported to TXT.";
LABEL_5:
    v29 = sub_275FFFC3C();
    v35 = objc_msgSend_localizedStringForKey_value_table_(v29, v30, v31, v32, v33, v34, v21, &stru_288501738, @"Pages");

    goto LABEL_7;
  }

  v22 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], v16, v17, v18, v19, v20);
  v28 = objc_msgSend_isEqualToString_(typeCopy, v23, v24, v25, v26, v27, v22);

  if (v28)
  {
    v21 = @"Page layout documents can\\U2019t be exported to RTF.";
    goto LABEL_5;
  }

  v35 = 0;
LABEL_7:

  return v35;
}

@end