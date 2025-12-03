@interface TNAppDelegateBase
+ (TNAppPropertiesProvider)tn_sharedPropertiesProvider;
- (BOOL)isValidURLForImportedHyperlink:(id)hyperlink targetDocumentRoot:(id)root forCrossDocumentPaste:(BOOL)paste;
- (TNAppDelegateBase)init;
- (id)createCompatibilityDelegate;
- (id)universalPreviewImageNameForDocumentType:(id)type;
- (void)configureSharedCode;
- (void)registerClassTypeMappings;
- (void)registerSOSClassTypeMappings;
@end

@implementation TNAppDelegateBase

- (TNAppDelegateBase)init
{
  v13.receiver = self;
  v13.super_class = TNAppDelegateBase;
  v2 = [(TSABaseApplicationDelegate *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_class();
    objc_msgSend_resetSharedConfigurations(v3, v4, v5);
    objc_msgSend_registerClassTypeMappings(v2, v6, v7);
    objc_msgSend_registerSOSClassTypeMappings(v2, v8, v9);
    objc_msgSend_configureSharedCode(v2, v10, v11);
  }

  return v2;
}

- (void)registerSOSClassTypeMappings
{
  v2.receiver = self;
  v2.super_class = TNAppDelegateBase;
  [(TSABaseApplicationDelegate *)&v2 registerSOSClassTypeMappings];
}

- (void)registerClassTypeMappings
{
  v5 = objc_msgSend_sharedRegistry(MEMORY[0x277D80880], a2, v2);
  sub_275EF0D54(v5, v5);

  v6 = objc_msgSend_sharedRegistry(MEMORY[0x277D80AB0], v3, v4);
  sub_275EF0F98(v6, v6);
}

- (void)configureSharedCode
{
  for (i = 0; i != 9; ++i)
  {
    if (i != 6)
    {
      if (i == 3)
      {
        objc_msgSend_setDisallowedElementKinds_forStorageKind_(MEMORY[0x277D80F28], a2, 576972, 3);
        objc_msgSend_setDisallowedSmartFieldKinds_forStorageKind_(MEMORY[0x277D80F28], v4, 5, 3);
      }

      else
      {
        objc_msgSend_setDisallowedElementKinds_forStorageKind_(MEMORY[0x277D80F28], a2, 785871, i);
        objc_msgSend_setDisallowedSmartFieldKinds_forStorageKind_(MEMORY[0x277D80F28], v5, 133, i);
      }
    }
  }

  v66 = objc_msgSend_sharedTableConfiguration(MEMORY[0x277D80D00], a2, v2);
  objc_msgSend_setPastesTile_(v66, v6, 1);
  objc_msgSend_setSelectsCellOnInitialTap_(v66, v7, 1);
  objc_msgSend_setDragByHandleOnly_(v66, v8, 1);
  objc_msgSend_setCornersCanDragResize_(v66, v9, 1);
  objc_msgSend_setShowsChromeWhileEditingCell_(v66, v10, 1);
  objc_msgSend_setShowsSelectionKnobsWhileEditingCell_(v66, v11, 1);
  objc_msgSend_setSupportsFrozenHeaders_(v66, v12, 1);
  objc_msgSend_setSupportsAutoResizedTables_(v66, v13, 0);
  objc_msgSend_setSupportsCreateChartFromSelection_(v66, v14, 1);
  objc_msgSend_setSupportsCanvasReferenceEditing_(v66, v15, 1);
  objc_msgSend_setUsesLimitedAutomaticFormatParsing_(v66, v16, 0);
  objc_msgSend_setSupportsFormulaEditing_(v66, v17, 1);
  objc_msgSend_setSupportsContainedTextEditing_(v66, v18, 1);
  objc_msgSend_setShowsCellEditingToolbar_(v66, v19, 1);
  objc_msgSend_setSupportsAutomaticNumberKeyboard_(v66, v20, 1);
  objc_msgSend_setSupportsActionMenu_(v66, v21, 1);
  objc_msgSend_setSupportsAutofill_(v66, v22, 1);
  objc_msgSend_setSupportsTableTranspose_(v66, v23, 1);
  objc_msgSend_setSupportsComplexReorganizeUI_(v66, v24, 1);
  objc_msgSend_setReturnWhileEditingNavigates_(v66, v25, 1);
  objc_msgSend_setArrowKeyAtEdgeWhileEditingNavigates_(v66, v26, 0);
  objc_msgSend_setArrowKeysWrap_(v66, v27, 0);
  objc_msgSend_setArrowKeysNavigateWhenEditingBeganByTyping_(v66, v28, 1);
  objc_msgSend_setBackTabWraps_(v66, v29, 0);
  objc_msgSend_setTabAtEdgeAddsRow_(v66, v30, 0);
  objc_msgSend_setTabAtEdgeAddsColumn_(v66, v31, 1);
  objc_msgSend_setUsesLimitedNumberFormatInspector_(v66, v32, 0);
  objc_msgSend_setHeadersFrozenByDefault_(v66, v33, 1);
  objc_msgSend_setTableNameEnabledInNewTables_(v66, v34, 1);
  objc_msgSend_setCreateLargeDefaultTables_(v66, v35, 1);
  objc_msgSend_setSupportsRowColumnAdderKnob_(v66, v36, 0);
  objc_msgSend_setSupportsDragDropMoveMode_(v66, v37, 1);
  objc_msgSend_setSupportsDynamicallyHidingRowColumnForDragDrop_(v66, v38, 1);
  objc_msgSend_setExportsCellComments_(v66, v39, 1);
  v42 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v40, v41);
  v44 = objc_msgSend_BOOLForKey_(v42, v43, *MEMORY[0x277D80D78]);
  objc_msgSend_setSupportsTableColumnAutocomplete_(v66, v45, v44);

  objc_msgSend_setSupportsBidiTablesUI_(v66, v46, 1);
  objc_msgSend_setSupportsStockUI_(v66, v47, 1);
  objc_msgSend_setSupportsCategorization_(v66, v48, 1);
  objc_msgSend_setSupportsPivotTables_(v66, v49, 1);
  objc_msgSend_setSupportsCopySnapshot_(v66, v50, 1);
  objc_msgSend_setStructuredTextImportConfidenceThreshold_(v66, v51, v52, 0.5);
  objc_msgSend_setStructuredTextImportConfidenceThresholdForCanvas_(v66, v53, v54, 0.5);
  objc_msgSend_setStructuredTextImportSizeLimit_(v66, v55, 0);
  v58 = objc_msgSend_sharedChartConfiguration(MEMORY[0x277D80040], v56, v57);
  objc_msgSend_setSupportsChartDataEditor_(v58, v59, 0);
  objc_msgSend_setSupportsChartRangeEditingMode_(v58, v60, 1);
  objc_msgSend_setSupportsNumberFormatSameAsSource_(v58, v61, 1);
  objc_msgSend_setShowMessageOnSelection_(v58, v62, 1);
  objc_msgSend_setModifyChartDataHelpKey_(v58, v63, @"tan72719392");
  objc_msgSend_setAnalyticsAppType_(v58, v64, 2);
  objc_msgSend_setShouldPartitionForPrinting_(MEMORY[0x277D80220], v65, 1);
}

+ (TNAppPropertiesProvider)tn_sharedPropertiesProvider
{
  objc_opt_class();
  v5 = objc_msgSend_sharedPropertiesProvider(self, v3, v4);
  v6 = TSUCheckedDynamicCast();

  return v6;
}

- (id)createCompatibilityDelegate
{
  v2 = objc_alloc_init(TNQuicklookCompatibilityDelegate);

  return v2;
}

- (id)universalPreviewImageNameForDocumentType:(id)type
{
  v24[2] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v24[0] = @"com.apple.iwork.numbers.template";
  v24[1] = @"com.apple.iwork.numbers.sfftemplate";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v24, 2);
  v7 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v6, v5);

  if (v7)
  {
    v8 = @"doc_manager_template";
  }

  else
  {
    v9 = objc_opt_class();
    v12 = objc_msgSend_tn_sharedPropertiesProvider(v9, v10, v11);
    v15 = objc_msgSend_excelDocumentTypes(v12, v13, v14);
    v17 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v16, v15);

    if (v17)
    {
      v8 = @"TN_DocManagerNumbersXlsLandscape";
    }

    else
    {
      v23[0] = @"public.comma-separated-values-text";
      v23[1] = @"public.plain-text";
      v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v23, 2);
      v21 = objc_msgSend_tsu_conformsToAnyUTI_(typeCopy, v20, v19);

      if (v21)
      {
        v8 = @"TN_DocManagerNumbersCsvLandscape";
      }

      else
      {
        v8 = @"TN_DocManagerNumbersClassicLandscape";
      }
    }
  }

  return v8;
}

- (BOOL)isValidURLForImportedHyperlink:(id)hyperlink targetDocumentRoot:(id)root forCrossDocumentPaste:(BOOL)paste
{
  pasteCopy = paste;
  hyperlinkCopy = hyperlink;
  rootCopy = root;
  if (objc_msgSend_isSheetURL(hyperlinkCopy, v10, v11))
  {
    v13 = objc_msgSend_sheetFromURL_documentRoot_(TNSheet, v12, hyperlinkCopy, rootCopy);
    if (v13)
    {
      v14 = !pasteCopy;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = TNAppDelegateBase;
    v14 = [(TSWPApplicationDelegate *)&v16 isValidURLForImportedHyperlink:hyperlinkCopy targetDocumentRoot:rootCopy forCrossDocumentPaste:pasteCopy];
  }

  return v14;
}

@end