@interface KNBaseCompatibilityDelegate
- (BOOL)isSageDocumentType:(id)type;
- (Class)exportOptionsControllerClass;
- (Class)exporterClassForType:(id)type options:(id)options;
- (Class)pdfExporterClassForOptions:(id)options;
- (id)backwardsCompatibleTypeForType:(id)type;
- (id)exportableTypes;
- (id)newExportableDocumentTypesForFlag:(unint64_t)flag;
@end

@implementation KNBaseCompatibilityDelegate

- (id)newExportableDocumentTypesForFlag:(unint64_t)flag
{
  flagCopy = flag;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (flagCopy)
  {
    v18 = objc_msgSend_tsa_sharedPropertiesProvider(MEMORY[0x277D7FF90], v4, v5);
    v19 = MEMORY[0x277D7FFB0];
    v22 = objc_msgSend_nativeDocumentType(v18, v20, v21);
    v25 = objc_msgSend_applicationDisplayName(v18, v23, v24);
    v27 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v19, v26, v22, v25, 0);
    objc_msgSend_addObject_(v6, v28, v27);

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

  v29 = MEMORY[0x277D7FFB0];
  v30 = objc_msgSend_identifier(*MEMORY[0x277CE1E08], v4, v5);
  v31 = sub_275DC204C();
  v33 = objc_msgSend_localizedStringForKey_value_table_(v31, v32, @"PDF", &stru_2884D8E20, @"Keynote");
  v34 = sub_275DC204C();
  v36 = objc_msgSend_localizedStringForKey_value_table_(v34, v35, @"Creating a PDF file\\U2026", &stru_2884D8E20, @"Keynote");
  v38 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v29, v37, v30, v33, v36);
  objc_msgSend_addObject_(v6, v39, v38);

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
  v40 = MEMORY[0x277D7FFB0];
  v41 = sub_275DC204C();
  v43 = objc_msgSend_localizedStringForKey_value_table_(v41, v42, @"PowerPoint", &stru_2884D8E20, @"Keynote");
  v44 = sub_275DC204C();
  v46 = objc_msgSend_localizedStringForKey_value_table_(v44, v45, @"Creating a PowerPoint file\\U2026", &stru_2884D8E20, @"Keynote");
  v48 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v40, v47, @"org.openxmlformats.presentationml.presentation", v43, v46);
  objc_msgSend_addObject_(v6, v49, v48);

  if ((flagCopy & 0x10) == 0)
  {
LABEL_5:
    if ((flagCopy & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v50 = MEMORY[0x277D7FFB0];
  v51 = objc_msgSend_identifier(*MEMORY[0x277CE1E40], v4, v5);
  v52 = sub_275DC204C();
  v54 = objc_msgSend_localizedStringForKey_value_table_(v52, v53, @"Movie", &stru_2884D8E20, @"Keynote");
  v55 = sub_275DC204C();
  v57 = objc_msgSend_localizedStringForKey_value_table_(v55, v56, @"Creating movie\\U2026", &stru_2884D8E20, @"Keynote");
  v59 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v50, v58, v51, v54, v57);
  objc_msgSend_addObject_(v6, v60, v59);

  if ((flagCopy & 0x100) == 0)
  {
LABEL_6:
    if ((flagCopy & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v61 = MEMORY[0x277D7FFB0];
  v62 = objc_msgSend_identifier(*MEMORY[0x277CE1D88], v4, v5);
  v63 = sub_275DC204C();
  v65 = objc_msgSend_localizedStringForKey_value_table_(v63, v64, @"Animated GIF", &stru_2884D8E20, @"Keynote");
  v66 = sub_275DC204C();
  v68 = objc_msgSend_localizedStringForKey_value_table_(v66, v67, @"Creating animated GIF…", &stru_2884D8E20, @"Keynote");
  v70 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v61, v69, v62, v65, v68);
  objc_msgSend_addObject_(v6, v71, v70);

  if ((flagCopy & 0x40) == 0)
  {
LABEL_7:
    if ((flagCopy & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v72 = MEMORY[0x277D7FFB0];
  v73 = objc_msgSend_identifier(*MEMORY[0x277CE1DB0], v4, v5);
  v74 = sub_275DC204C();
  v76 = objc_msgSend_localizedStringForKey_value_table_(v74, v75, @"Images", &stru_2884D8E20, @"Keynote");
  v77 = sub_275DC204C();
  v79 = objc_msgSend_localizedStringForKey_value_table_(v77, v78, @"Creating images\\U2026", &stru_2884D8E20, @"Keynote");
  v81 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v72, v80, v73, v76, v79);
  objc_msgSend_addObject_(v6, v82, v81);

  if ((flagCopy & 0x20) == 0)
  {
LABEL_8:
    if ((flagCopy & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v93 = MEMORY[0x277D7FFB0];
    v94 = sub_275DC204C();
    v96 = objc_msgSend_localizedStringForKey_value_table_(v94, v95, @"Keynote \\U201909", &stru_2884D8E20, @"Keynote");
    v97 = sub_275DC204C();
    v99 = objc_msgSend_localizedStringForKey_value_table_(v97, v98, @"Creating a Keynote \\U201909 file\\U2026", &stru_2884D8E20, @"Keynote");
    v101 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v93, v100, @"com.apple.iwork.keynote.sffkey", v96, v99);
    objc_msgSend_addObject_(v6, v102, v101);

    if ((flagCopy & 0x80) == 0)
    {
      return v6;
    }

    goto LABEL_10;
  }

LABEL_18:
  v83 = MEMORY[0x277D7FFB0];
  v84 = sub_275DC204C();
  v86 = objc_msgSend_localizedStringForKey_value_table_(v84, v85, @"HTML", &stru_2884D8E20, @"Keynote");
  v87 = sub_275DC204C();
  v89 = objc_msgSend_localizedStringForKey_value_table_(v87, v88, @"Creating HTML document\\U2026", &stru_2884D8E20, @"Keynote");
  v91 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v83, v90, @"com.apple.iwork.keynote.kpf-html", v86, v89);
  objc_msgSend_addObject_(v6, v92, v91);

  if ((flagCopy & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((flagCopy & 0x80) != 0)
  {
LABEL_10:
    v7 = MEMORY[0x277D7FFB0];
    v8 = sub_275DC204C();
    v10 = objc_msgSend_localizedStringForKey_value_table_(v8, v9, @"Keynote Theme", &stru_2884D8E20, @"Keynote");
    v11 = sub_275DC204C();
    v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"Creating a theme file…", &stru_2884D8E20, @"Keynote");
    v15 = objc_msgSend_exportableTypeWithType_localizedName_exportProgressMessage_(v7, v14, @"com.apple.iwork.keynote.sffkth", v10, v13);
    objc_msgSend_addObject_(v6, v16, v15);
  }

  return v6;
}

- (Class)exporterClassForType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  if (typeCopy && (objc_msgSend_identifier(*MEMORY[0x277CE1E08], v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_tsu_conformsToUTI_(typeCopy, v10, v9), v9, v11))
  {
    v12 = objc_opt_class();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (Class)pdfExporterClassForOptions:(id)options
{
  v3 = objc_msgSend_objectForKey_(options, a2, @"KNPrintLayoutKey");
  v6 = v3;
  if (!v3 || (objc_msgSend_integerValue(v3, v4, v5), (v7 = objc_opt_class()) == 0))
  {
    v7 = objc_opt_class();
  }

  v8 = v7;

  return v7;
}

- (Class)exportOptionsControllerClass
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBaseCompatibilityDelegate exportOptionsControllerClass]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBaseCompatibilityDelegate.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 228, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[KNBaseCompatibilityDelegate exportOptionsControllerClass]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (id)exportableTypes
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[KNBaseCompatibilityDelegate exportableTypes]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBaseCompatibilityDelegate.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 232, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[KNBaseCompatibilityDelegate exportableTypes]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (BOOL)isSageDocumentType:(id)type
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"com.apple.iwork.keynote.key";
  v9[1] = @"com.apple.iwork.keynote.sffkey";
  v3 = MEMORY[0x277CBEA60];
  typeCopy = type;
  v6 = objc_msgSend_arrayWithObjects_count_(v3, v5, v9, 2);
  LOBYTE(v3) = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v7, v6);

  return v3;
}

- (id)backwardsCompatibleTypeForType:(id)type
{
  if (objc_msgSend_isEqualToString_(type, a2, @"org.openxmlformats.presentationml.presentation"))
  {
    v3 = @"com.microsoft.powerpoint.ppt";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end