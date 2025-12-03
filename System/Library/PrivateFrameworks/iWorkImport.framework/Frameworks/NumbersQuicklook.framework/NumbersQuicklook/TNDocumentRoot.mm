@interface TNDocumentRoot
+ (CGSize)previewImageMaxSizeForType:(unint64_t)type;
+ (CGSize)previewImageSizeForType:(unint64_t)type;
+ (NSPredicate)sheetDisplayPredicate;
- (BOOL)_tableInfoIsEligibleForBuilder:(TSKUIDStruct)builder;
- (BOOL)containsForms;
- (BOOL)isMultiPageForQuickLook;
- (BOOL)isPrintPreviewSupported;
- (BOOL)isTableLinkedToAForm:(TSKUIDStruct)form;
- (BOOL)removedAllQuickCalcFunctions;
- (BOOL)shouldAllowDrawableInGroups:(id)groups;
- (BOOL)shouldShowFloatingCommentInfo:(id)info;
- (BOOL)validName:(id)name forRenamingSheet:(id)sheet;
- (CGRect)p_contentFrameToCaptureForSheet:(id)sheet;
- (CGSize)p_adjustCapturedContentSize:(CGSize)result toAspectRatio:(CGSize)ratio;
- (CGSize)pageSize;
- (NSArray)selectedQuickCalcFunctions;
- (NSArray)sheets;
- (NSArray)visibleSheets;
- (NSString)printerID;
- (TNDocumentRoot)initWithContext:(id)context;
- (double)p_imageBorderForSize:(CGSize)size;
- (id)UIStateForChart:(id)chart;
- (id)_formSheetForTable:(TSKUIDStruct)table;
- (id)childEnumerator;
- (id)createDeprecatedSidebarOrder;
- (id)formSheetForTable:(TSKUIDStruct)table;
- (id)formSheetsForTable:(TSKUIDStruct)table;
- (id)freehandDrawingToolkitUIState;
- (id)nameForResolverContainer:(id)container;
- (id)nearestDisplayableSheetToSheet:(id)sheet;
- (id)p_chartsWantingDeferredUpgrade;
- (id)p_previewImageForSheet:(id)sheet withImageSize:(CGSize)size;
- (id)p_previewImageWithImageSize:(CGSize)size;
- (id)p_resolverContainerForResolver:(id)resolver;
- (id)previewImageForSize:(CGSize)size;
- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive;
- (id)resolverContainerNameForResolver:(id)resolver;
- (id)resolverContainerNamesMatchingPrefix:(id)prefix;
- (id)resolverMatchingName:(id)name;
- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName;
- (id)resolverMatchingName:(id)name contextResolver:(id)resolver;
- (id)resolversMatchingPrefix:(id)prefix;
- (id)sheetForName:(id)name caseSensitive:(BOOL)sensitive;
- (id)uniqueNameForNewSheetWithName:(id)name;
- (id)uniqueNameForSheet:(id)sheet appendNewTag:(BOOL)tag;
- (id)uniqueNameForSheetName:(id)name forRenamingSheet:(id)sheet;
- (id)uniqueNameForSheetName:(id)name forRenamingSheet:(id)sheet appendNewTag:(BOOL)tag;
- (id)untitledSheetName;
- (int)naturalAlignmentAtCharIndex:(unint64_t)index inTextStorage:(id)storage;
- (int)verticalAlignmentForTextStorage:(id)storage;
- (unint64_t)p_tableCountForSheet:(id)sheet;
- (unint64_t)tableCount;
- (unint64_t)writingDirectionForStorage;
- (void)addSheet:(id)sheet dolcContext:(id)context;
- (void)appSpecificPrepareNewDocumentWithTemplateIdentifier:(id)identifier bundle:(id)bundle documentLocale:(id)locale;
- (void)documentDidLoad;
- (void)initializeForImport;
- (void)initializeHardCodedBlankDocument;
- (void)insertSheet:(id)sheet sheetIndex:(unint64_t)index forPasteOrUndoDelete:(BOOL)delete context:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)moveSheetFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)p_clearDeprecatedSidebarOrder;
- (void)p_createDeprecatedSidebarOrderIfNecessaryFromSaveToArchiver;
- (void)performDeferredUpgradeImportOperationsRequiringCalcEngine;
- (void)removeAllSheets;
- (void)removeSheet:(id)sheet;
- (void)saveToArchiver:(id)archiver;
- (void)setImportedPaperID:(id)d printerID:(id)iD;
- (void)setPageSize:(CGSize)size;
- (void)setPaperID:(id)d;
- (void)setPrinterID:(id)d;
- (void)setRemovedAllQuickCalcFunctions:(BOOL)functions;
- (void)setSelectedQuickCalcFunctions:(id)functions;
- (void)setStylesheet:(id)stylesheet andThemeForImport:(id)import;
- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet;
- (void)setTheme:(id)theme;
- (void)setUIState:(id)state forChart:(id)chart;
- (void)sheet:(id)sheet insertedDrawable:(id)drawable;
- (void)sheet:(id)sheet removedDrawable:(id)drawable;
- (void)tableUID:(const TSKUIDStruct *)d changedToTableUID:(const TSKUIDStruct *)iD;
- (void)upgradeStylesheetForSheetStyles:(id)styles;
@end

@implementation TNDocumentRoot

- (void)setPaperID:(id)d
{
  dCopy = d;
  if (self->_paperID != dCopy)
  {
    v9 = dCopy;
    objc_msgSend_willModify(self, dCopy, v5);
    v8 = objc_msgSend_copy(v9, v6, v7);

    objc_storeStrong(&self->_paperID, v8);
    dCopy = v8;
  }
}

- (CGSize)pageSize
{
  width = self->_pageSize.width;
  height = self->_pageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_pageSize = &self->_pageSize;
  if (self->_pageSize.width != size.width || self->_pageSize.height != size.height)
  {
    objc_msgSend_willModify(self, a2, v3);
    p_pageSize->width = width;
    p_pageSize->height = height;
  }
}

- (TNDocumentRoot)initWithContext:(id)context
{
  contextCopy = context;
  v34.receiver = self;
  v34.super_class = TNDocumentRoot;
  v5 = [(TSADocumentRoot *)&v34 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D80AE0]);
    v9 = objc_msgSend_context(v5, v7, v8);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v6, v10, v9, 1);
    stylesheet = v5->_stylesheet;
    v5->_stylesheet = canCullStyles;

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableSheets = v5->_mutableSheets;
    v5->_mutableSheets = v13;

    v15 = [TNTheme alloc];
    v18 = objc_msgSend_context(v5, v16, v17);
    v20 = objc_msgSend_initWithContext_documentStylesheet_(v15, v19, v18, v5->_stylesheet);
    theme = v5->_theme;
    v5->_theme = v20;

    v24 = objc_msgSend_letterSizePrintProperties(TNPrintProperties, v22, v23);
    objc_msgSend_unscaledPageSize(v24, v25, v26);
    v5->_pageSize.width = v27;
    v5->_pageSize.height = v28;

    v31 = objc_msgSend_copy(*MEMORY[0x277D815E0], v29, v30);
    paperID = v5->_paperID;
    v5->_paperID = v31;

    v5->_printingAllSheets = 0;
  }

  return v5;
}

- (void)initializeHardCodedBlankDocument
{
  objc_msgSend_willModify(self, a2, v2);
  v6 = objc_msgSend_stylesheet(self, v4, v5);

  if (!v6)
  {
    v9 = objc_alloc(MEMORY[0x277D80AE0]);
    v38 = objc_msgSend_context(self, v10, v11);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v9, v12, v38, 1);
    objc_msgSend_setStylesheet_(self, v14, canCullStyles);
  }

  v15 = objc_msgSend_theme(self, v7, v8);

  if (!v15)
  {
    v18 = [TNTheme alloc];
    v39 = objc_msgSend_context(self, v19, v20);
    v23 = objc_msgSend_stylesheet(self, v21, v22);
    v25 = objc_msgSend_initWithContext_documentStylesheet_(v18, v24, v39, v23);
    objc_msgSend_setTheme_(self, v26, v25);
  }

  v27 = objc_msgSend_calculationEngine(self, v16, v17);

  if (!v27)
  {
    v30 = objc_alloc(MEMORY[0x277D80C28]);
    v40 = objc_msgSend_context(self, v31, v32);
    v34 = objc_msgSend_initWithContext_(v30, v33, v40);
    objc_msgSend_setCalculationEngine_(self, v35, v34);
  }

  v36 = objc_msgSend_mutableSheets(self, v28, v29);

  if (!v36)
  {
    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setMutableSheets_(self, v37, v41);
  }
}

- (void)initializeForImport
{
  v77 = *MEMORY[0x277D85DE8];
  v75.receiver = self;
  v75.super_class = TNDocumentRoot;
  [(TSADocumentRoot *)&v75 initializeForImport];
  v5 = objc_msgSend_stylesheet(self, v3, v4);
  v6 = v5 == 0;

  if (v6)
  {
    v9 = objc_alloc(MEMORY[0x277D80AE0]);
    v12 = objc_msgSend_context(self, v10, v11);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v9, v13, v12, 1);
    objc_msgSend_setStylesheet_(self, v15, canCullStyles);
  }

  v16 = objc_msgSend_theme(self, v7, v8);
  v17 = v16 == 0;

  if (v17)
  {
    v20 = [TNTheme alloc];
    v23 = objc_msgSend_context(self, v21, v22);
    v26 = objc_msgSend_stylesheet(self, v24, v25);
    v28 = objc_msgSend_initWithContext_documentStylesheet_(v20, v27, v23, v26);
    objc_msgSend_setTheme_(self, v29, v28);
  }

  v30 = objc_msgSend_theme(self, v18, v19);
  v32 = objc_msgSend_presetsOfKind_(v30, v31, *MEMORY[0x277D80BA8]);

  if (!v32)
  {
    v35 = objc_msgSend_theme(self, v33, v34);
    objc_msgSend_bootstrapWhiteHardCodedTheme(v35, v36, v37);
  }

  v38 = objc_msgSend_calculationEngine(self, v33, v34);
  if ((objc_msgSend_recalculationIsPaused(v38, v39, v40) & 1) == 0)
  {
    v43 = MEMORY[0x277D81150];
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TNDocumentRoot initializeForImport]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v43, v47, v44, v46, 242, 0, "calc engine should be paused");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
  }

  if (v32)
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v50 = objc_msgSend_mutableSheets(self, v41, v42, 0);
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v71, v76, 16);
    if (v54)
    {
      v55 = *v72;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v72 != v55)
          {
            objc_enumerationMutation(v50);
          }

          v59 = objc_msgSend_childEnumerator(*(*(&v71 + 1) + 8 * i), v52, v53);
          v60 = 0;
          while (1)
          {
            v61 = objc_msgSend_nextObject(v59, v57, v58);

            if (!v61)
            {
              break;
            }

            v60 = v61;
            if (objc_msgSend_conformsToProtocol_(v61, v62, &unk_288505010))
            {
              v60 = v61;
              objc_msgSend_willBeRemovedFromDocumentRoot_(v61, v57, self);
            }
          }
        }

        v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v52, &v71, v76, 16);
      }

      while (v54);
    }

    v65 = objc_msgSend_mutableSheets(self, v63, v64);
    objc_msgSend_removeAllObjects(v65, v66, v67);
  }

  else
  {
    v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setMutableSheets_(self, v68, v65);
  }

  objc_msgSend_p_clearDeprecatedSidebarOrder(self, v69, v70);
}

- (void)setStylesheetForUpgradeToSingleStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  v6 = objc_msgSend_stylesheet(self, v4, v5);

  if (v6 != stylesheetCopy)
  {
    objc_msgSend_willModifyForUpgrade(self, v7, v8);
    objc_msgSend_setStylesheet_(self, v9, stylesheetCopy);
  }
}

- (void)setImportedPaperID:(id)d printerID:(id)iD
{
  dCopy = d;
  if (dCopy && iD)
  {
    v24 = dCopy;
    objc_msgSend_setPaperID_(self, dCopy, dCopy);
    v9 = objc_msgSend_documentLocale(self, v7, v8);
    objc_msgSend_cfLocale(v9, v10, v11);
    v12 = TSUIsLocaleISO();

    if (v12 && (objc_msgSend_isEqualToString_(*MEMORY[0x277D815E0], v13, v24) & 1) == 0)
    {
      v15 = objc_msgSend_a4SizePrintProperties(TNPrintProperties, v13, v14);
      objc_msgSend_unscaledPageSize(v15, v20, v21);
      objc_msgSend_setPageSize_(self, v22, v23);
    }

    else
    {
      v15 = objc_msgSend_letterSizePrintProperties(TNPrintProperties, v13, v14);
      objc_msgSend_unscaledPageSize(v15, v16, v17);
      objc_msgSend_setPageSize_(self, v18, v19);
    }

    dCopy = v24;
  }
}

- (NSArray)sheets
{
  v3 = objc_msgSend_mutableSheets(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (NSArray)visibleSheets
{
  v3 = objc_msgSend_sheets(self, a2, v2);
  v4 = objc_opt_class();
  v8 = objc_msgSend_sheetDisplayPredicate(v4, v5, v6);
  if (v8)
  {
    v9 = objc_msgSend_filteredArrayUsingPredicate_(v3, v7, v8);

    v3 = v9;
  }

  return v3;
}

+ (NSPredicate)sheetDisplayPredicate
{
  if (qword_280A3DFD0 != -1)
  {
    sub_275F4AC20();
  }

  v3 = qword_280A3DFC8;

  return v3;
}

- (unint64_t)tableCount
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = objc_msgSend_mutableSheets(self, a2, v2, 0);
  v6 = 0;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v14, v18, 16);
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ((objc_msgSend_isForm(v12, v7, v8) & 1) == 0)
        {
          v6 += objc_msgSend_p_tableCountForSheet_(self, v7, v12);
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v14, v18, 16);
    }

    while (v9);
  }

  return v6;
}

- (unint64_t)p_tableCountForSheet:(id)sheet
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_childInfos(sheet, a2, sheet, 0, 0);
  v5 = 0;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v5 += objc_opt_isKindOfClass() & 1;
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v9, &v11, v15, 16);
    }

    while (v6);
  }

  return v5;
}

- (void)setStylesheet:(id)stylesheet andThemeForImport:(id)import
{
  stylesheetCopy = stylesheet;
  importCopy = import;
  if (!stylesheetCopy)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNDocumentRoot setStylesheet:andThemeForImport:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 362, 0, "invalid nil value for '%{public}s'", "inStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  if (!importCopy)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNDocumentRoot setStylesheet:andThemeForImport:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 363, 0, "invalid nil value for '%{public}s'", "inTheme");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
  }

  v24 = objc_msgSend_documentStylesheet(importCopy, v7, v8);

  if (v24 != stylesheetCopy)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TNDocumentRoot setStylesheet:andThemeForImport:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 364, 0, "Invalid parameter not satisfying: %{public}s", "inStylesheet == inTheme.documentStylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  objc_msgSend_willModify(self, v25, v26);
  objc_opt_class();
  v34 = TSUDynamicCast();
  objc_storeStrong(&self->_stylesheet, stylesheet);
  objc_msgSend_setTheme_(self, v35, v34);
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  v7 = objc_msgSend_theme(self, v5, v6);

  if (v7 != themeCopy)
  {
    objc_msgSend_willModify(self, v8, v9);
    objc_storeStrong(&self->_theme, theme);
  }
}

- (void)appSpecificPrepareNewDocumentWithTemplateIdentifier:(id)identifier bundle:(id)bundle documentLocale:(id)locale
{
  v17.receiver = self;
  v17.super_class = TNDocumentRoot;
  [(TSADocumentRoot *)&v17 appSpecificPrepareNewDocumentWithTemplateIdentifier:identifier bundle:bundle documentLocale:locale];
  v6 = CFLocaleCopyCurrent();
  if (v6)
  {
    v7 = v6;
    v8 = TSUIsLocaleISO();
    CFRelease(v7);
    if (v8)
    {
      v11 = objc_msgSend_a4SizePrintProperties(TNPrintProperties, v9, v10);
      objc_msgSend_unscaledPageSize(v11, v12, v13);
      objc_msgSend_setPageSize_(self, v14, v15);

      objc_msgSend_setPaperID_(self, v16, *MEMORY[0x277D815C0]);
    }
  }
}

- (id)untitledSheetName
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_documentLocale(self, a2, v2);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Sheet %@", &stru_2884F65E0, @"Numbers");

  v9 = objc_msgSend_sheets(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  v14 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v13, v12);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = objc_msgSend_sheets(self, v15, v16);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v31, v35, 16);
  if (v21)
  {
    v22 = *v32;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_name(*(*(&v31 + 1) + 8 * i), v19, v20);
        objc_msgSend_addObject_(v14, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v31, v35, 16);
    }

    while (v21);
  }

  v28 = objc_msgSend_documentLocale(self, v26, v27);
  v29 = TSUNumberFormatterNextUntitledNameForTemplateAndCounter();

  return v29;
}

- (id)uniqueNameForSheet:(id)sheet appendNewTag:(BOOL)tag
{
  tagCopy = tag;
  v6 = objc_msgSend_name(sheet, a2, sheet);
  v8 = objc_msgSend_uniqueNameForSheetName_forRenamingSheet_appendNewTag_(self, v7, v6, 0, tagCopy);

  return v8;
}

- (id)uniqueNameForNewSheetWithName:(id)name
{
  v3 = objc_msgSend_uniqueNameForSheetName_forRenamingSheet_appendNewTag_(self, a2, name, 0, 0);

  return v3;
}

- (id)uniqueNameForSheetName:(id)name forRenamingSheet:(id)sheet
{
  v4 = objc_msgSend_uniqueNameForSheetName_forRenamingSheet_appendNewTag_(self, a2, name, sheet, 0);

  return v4;
}

- (id)uniqueNameForSheetName:(id)name forRenamingSheet:(id)sheet appendNewTag:(BOOL)tag
{
  tagCopy = tag;
  v60 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  sheetCopy = sheet;
  v11 = nameCopy;
  if (sheetCopy)
  {
    valid = objc_msgSend_validName_forRenamingSheet_(self, v10, v11, sheetCopy);
  }

  else
  {
    valid = objc_msgSend_validNameForNewSheet_(self, v10, v11);
  }

  v15 = v11;
  v16 = v11;
  if ((valid & 1) == 0)
  {
    v17 = MEMORY[0x277CBEB18];
    v18 = objc_msgSend_sheets(self, v13, v14);
    v21 = objc_msgSend_count(v18, v19, v20);
    v23 = objc_msgSend_arrayWithCapacity_(v17, v22, v21);

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v26 = objc_msgSend_sheets(self, v24, v25, 0);
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v55, v59, 16);
    if (v30)
    {
      v31 = *v56;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v56 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v33 = *(*(&v55 + 1) + 8 * i);
          if (v33 != sheetCopy)
          {
            v34 = objc_msgSend_name(v33, v28, v29);
            objc_msgSend_addObject_(v23, v35, v34);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v28, &v55, v59, 16);
      }

      while (v30);
    }

    if (tagCopy)
    {
      v38 = objc_msgSend_documentLocale(self, v36, v37);
      v16 = TSUNumberFormatterAppendTagToString();
    }

    else
    {
      v16 = v11;
    }

    v39 = objc_msgSend_documentLocale(self, v36, v37);
    v15 = TSUNumberFormatterIncreaseTagFromStringWithSeparator();

    if (objc_msgSend_length(v15, v40, v41) >= 0x65)
    {
      v44 = objc_msgSend_untitledSheetName(self, v42, v43);

      v15 = v44;
    }
  }

  if (sheetCopy)
  {
    v45 = objc_msgSend_validName_forRenamingSheet_(self, v13, v15, sheetCopy);
  }

  else
  {
    v45 = objc_msgSend_validNameForNewSheet_(self, v13, v15);
  }

  if ((v45 & 1) == 0)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TNDocumentRoot uniqueNameForSheetName:forRenamingSheet:appendNewTag:]");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 472, 0, "created a sheet name that is invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
  }

  return v15;
}

- (void)removeAllSheets
{
  objc_msgSend_willModify(self, a2, v2);
  v14 = objc_msgSend_mutableSheets(self, v4, v5);
  objc_msgSend_removeAllObjects(v14, v6, v7);

  objc_msgSend_p_clearDeprecatedSidebarOrder(self, v8, v9);
  v15 = objc_msgSend_calculationEngine(self, v10, v11);
  objc_msgSend_markIndirectCallsAsDirty(v15, v12, v13);
}

- (void)addSheet:(id)sheet dolcContext:(id)context
{
  sheetCopy = sheet;
  contextCopy = context;
  v9 = objc_msgSend_mutableSheets(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);
  objc_msgSend_insertSheet_sheetIndex_forPasteOrUndoDelete_context_(self, v13, sheetCopy, v12, 0, contextCopy);
}

- (void)removeSheet:(id)sheet
{
  sheetCopy = sheet;
  objc_msgSend_willBeRemovedFromDocumentRoot_(sheetCopy, v4, self);
  objc_msgSend_willModify(self, v5, v6);
  v9 = objc_msgSend_mutableSheets(self, v7, v8);
  objc_msgSend_removeObject_(v9, v10, sheetCopy);

  objc_msgSend_p_clearDeprecatedSidebarOrder(self, v11, v12);
  objc_msgSend_wasRemovedFromDocumentRoot_(sheetCopy, v13, self);
  v16 = objc_msgSend_calculationEngine(self, v14, v15);
  objc_msgSend_markIndirectCallsAsDirty(v16, v17, v18);
}

- (void)insertSheet:(id)sheet sheetIndex:(unint64_t)index forPasteOrUndoDelete:(BOOL)delete context:(id)context
{
  deleteCopy = delete;
  sheetCopy = sheet;
  contextCopy = context;
  v13 = objc_msgSend_name(sheetCopy, v11, v12);
  v16 = v13;
  if (!v13 || objc_msgSend_isEqualToString_(v13, v14, &stru_2884F65E0))
  {
    v17 = objc_msgSend_untitledSheetName(self, v14, v15);
    objc_msgSend_setName_(sheetCopy, v18, v17);
  }

  if ((objc_msgSend_wasMigratingStyles(contextCopy, v14, v15) & 1) == 0)
  {
    v20 = objc_msgSend_uniqueNameForSheet_appendNewTag_(self, v19, sheetCopy, deleteCopy);
    objc_msgSend_setName_(sheetCopy, v21, v20);
  }

  objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(sheetCopy, v19, self, contextCopy);
  objc_msgSend_willModify(self, v22, v23);
  v26 = objc_msgSend_mutableSheets(self, v24, v25);
  objc_msgSend_insertObject_atIndex_(v26, v27, sheetCopy, index);

  objc_msgSend_p_clearDeprecatedSidebarOrder(self, v28, v29);
  objc_msgSend_wasAddedToDocumentRoot_dolcContext_(sheetCopy, v30, self, contextCopy);
  v33 = objc_msgSend_calculationEngine(self, v31, v32);
  objc_msgSend_markIndirectCallsAsDirty(v33, v34, v35);
}

- (void)moveSheetFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  objc_msgSend_willModify(self, a2, index);
  v9 = objc_msgSend_mutableSheets(self, v7, v8);
  v21 = objc_msgSend_objectAtIndex_(v9, v10, index);

  v13 = objc_msgSend_mutableSheets(self, v11, v12);
  objc_msgSend_removeObjectAtIndex_(v13, v14, index);

  v17 = objc_msgSend_mutableSheets(self, v15, v16);
  objc_msgSend_insertObject_atIndex_(v17, v18, v21, toIndex);

  objc_msgSend_p_clearDeprecatedSidebarOrder(self, v19, v20);
}

- (BOOL)shouldShowFloatingCommentInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = sub_275F36B44(v4);
  objc_opt_class();
  v8 = objc_msgSend_parentInfo(v5, v6, v7);
  v9 = TSUDynamicCast();

  LOBYTE(v8) = objc_msgSend_shouldPrintComments(v9, v10, v11);
  return v8;
}

- (BOOL)validName:(id)name forRenamingSheet:(id)sheet
{
  v56 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  sheetCopy = sheet;
  v49 = nameCopy;
  if (objc_msgSend_length(nameCopy, v8, v9) && objc_msgSend_length(nameCopy, v10, v11) <= 0x64 && (objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v12, v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_invertedSet(v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_rangeOfCharacterFromSet_(v49, v18, v17), v17, v14, v19 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v24 = objc_msgSend_documentLocale(self, v20, v21);
    v27 = objc_msgSend_locale(v24, v25, v26);
    v50 = objc_msgSend_stringByFoldingWithOptions_locale_(v49, v28, 1, v27);

    objc_msgSend_sheets(self, v29, v30);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    obj = v52 = 0u;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v51, v55, 16);
    if (v34)
    {
      v35 = *v52;
      while (2)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v52 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v51 + 1) + 8 * i);
          v38 = objc_msgSend_name(v37, v32, v33);
          v41 = objc_msgSend_documentLocale(self, v39, v40);
          v44 = objc_msgSend_locale(v41, v42, v43);
          v46 = objc_msgSend_stringByFoldingWithOptions_locale_(v38, v45, 1, v44);

          if (v37 != sheetCopy && (objc_msgSend_isEqualToString_(v46, v47, v50) & 1) != 0)
          {

            v22 = 0;
            goto LABEL_17;
          }
        }

        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v51, v55, 16);
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    v22 = 1;
LABEL_17:
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)sheetForName:(id)name caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = objc_msgSend_sheets(self, v7, v8);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v29, v33, 16);
  if (v13)
  {
    obj = v9;
    v14 = *v30;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        if (sensitiveCopy)
        {
          v17 = objc_msgSend_name(*(*(&v29 + 1) + 8 * i), v11, v12);
          isEqualToString = objc_msgSend_isEqualToString_(v17, v18, nameCopy);

          if (isEqualToString)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v20 = objc_msgSend_documentLocale(self, v11, v12);
          v23 = objc_msgSend_name(v16, v21, v22);
          IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v20, v24, v23, nameCopy);

          if (IsEqual_toString)
          {
LABEL_13:
            v26 = v16;
            goto LABEL_14;
          }
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v29, v33, 16);
      if (v13)
      {
        continue;
      }

      break;
    }

    v26 = 0;
LABEL_14:
    v9 = obj;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (NSString)printerID
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, v2);
  v5 = objc_msgSend_stringForKey_(v3, v4, @"TNPrinterID");

  if (!v5)
  {
    v5 = *MEMORY[0x277D81648];
  }

  return v5;
}

- (void)setPrinterID:(id)d
{
  dCopy = d;
  v6 = objc_msgSend_printerID(self, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v7, v6);

  if ((isEqualToString & 1) == 0)
  {
    v11 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v9, v10);
    objc_msgSend_setObject_forKey_(v11, v12, dCopy, @"TNPrinterID");
  }
}

- (BOOL)isPrintPreviewSupported
{
  v3 = objc_msgSend_context(self, a2, v2);
  OnlyMode = objc_msgSend_isInReadOnlyMode(v3, v4, v5);

  return OnlyMode ^ 1;
}

- (void)p_clearDeprecatedSidebarOrder
{
  objc_msgSend_willModify(self, a2, v2);

  objc_msgSend_setDeprecatedSidebarOrder_(self, v4, 0);
}

- (void)p_createDeprecatedSidebarOrderIfNecessaryFromSaveToArchiver
{
  v4 = objc_msgSend_deprecatedSidebarOrder(self, a2, v2);

  if (!v4)
  {
    v8 = objc_msgSend_createDeprecatedSidebarOrder(self, v5, v6);
    objc_msgSend_setDeprecatedSidebarOrder_(self, v7, v8);
  }
}

- (id)createDeprecatedSidebarOrder
{
  v3 = objc_alloc(MEMORY[0x277D806E8]);
  v6 = objc_msgSend_context(self, v4, v5);
  v8 = objc_msgSend_initWithContext_(v3, v7, v6);

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275F419A4;
  v14[3] = &unk_27A6A3438;
  v14[4] = self;
  v9 = v8;
  v15 = v9;
  objc_msgSend_performBlockIgnoringModifications_(v9, v10, v14);
  v11 = v15;
  v12 = v9;

  return v9;
}

- (BOOL)containsForms
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_sheets(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_isForm(*(*(&v11 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)isTableLinkedToAForm:(TSKUIDStruct)form
{
  v3 = objc_msgSend_formSheetForTable_(self, a2, form._lower, form._upper);
  v4 = v3 != 0;

  return v4;
}

- (id)_formSheetForTable:(TSKUIDStruct)table
{
  upper = table._upper;
  lower = table._lower;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = objc_msgSend_sheets(self, a2, table._lower, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v18, v22, 16);
  if (v9)
  {
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        if (objc_msgSend_isForm(*(*(&v18 + 1) + 8 * i), v7, v8))
        {
          objc_opt_class();
          v12 = TSUCheckedDynamicCast();
          if (objc_msgSend_tableUID(v12, v13, v14) == lower && v15 == upper)
          {
            goto LABEL_15;
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v18, v22, 16);
    }

    while (v9);
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (BOOL)_tableInfoIsEligibleForBuilder:(TSKUIDStruct)builder
{
  upper = builder._upper;
  lower = builder._lower;
  v5 = MEMORY[0x277D80D40];
  v6 = objc_msgSend_calculationEngine(self, a2, builder._lower);
  v8 = objc_msgSend_tableInfoForTableUID_withCalcEngine_(v5, v7, lower, upper, v6);

  return v8 != 0;
}

- (id)formSheetForTable:(TSKUIDStruct)table
{
  upper = table._upper;
  lower = table._lower;
  if (objc_msgSend__tableInfoIsEligibleForBuilder_(self, a2, table._lower))
  {
    v7 = objc_msgSend__formSheetForTable_(self, v6, lower, upper);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)formSheetsForTable:(TSKUIDStruct)table
{
  upper = table._upper;
  lower = table._lower;
  v30 = *MEMORY[0x277D85DE8];
  if (objc_msgSend__tableInfoIsEligibleForBuilder_(self, a2, table._lower))
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = objc_msgSend_sheets(self, v7, v8, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
    if (v13)
    {
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v9);
          }

          if (objc_msgSend_isForm(*(*(&v25 + 1) + 8 * i), v11, v12))
          {
            objc_opt_class();
            v16 = TSUCheckedDynamicCast();
            if (objc_msgSend_tableUID(v16, v17, v18) == lower && v19 == upper)
            {
              objc_msgSend_addObject_(v6, v19, v16);
            }
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v25, v29, 16);
      }

      while (v13);
    }

    v23 = objc_msgSend_copy(v6, v21, v22);
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  return v23;
}

- (void)tableUID:(const TSKUIDStruct *)d changedToTableUID:(const TSKUIDStruct *)iD
{
  v6 = objc_msgSend__formSheetForTable_(self, a2, d->_lower, d->_upper);
  objc_msgSend_setTableUID_(v6, v5, iD->_lower, iD->_upper);
}

- (id)p_resolverContainerForResolver:(id)resolver
{
  v3 = objc_msgSend_drawableInfo(resolver, a2, resolver);
  if (v3)
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v6 = objc_msgSend_parentInfo(v3, v4, v5);

      v3 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v3 = v3;
  }

LABEL_6:

  return v3;
}

- (id)resolverContainerNameForResolver:(id)resolver
{
  v3 = objc_msgSend_p_resolverContainerForResolver_(self, a2, resolver);
  v6 = objc_msgSend_name(v3, v4, v5);

  return v6;
}

- (id)nameForResolverContainer:(id)container
{
  containerCopy = container;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v7 = objc_msgSend_name(v4, v5, v6);

  return v7;
}

- (id)resolverContainerForName:(id)name caseSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  nameCopy = name;
  v9 = objc_msgSend_sheets(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (!v12)
  {
    v31 = 0;
    v19 = 0;
    goto LABEL_11;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = objc_msgSend_sheets(self, v13, v14);
    v19 = objc_msgSend_objectAtIndex_(v17, v18, v16);

    if (!sensitiveCopy)
    {
      break;
    }

    v22 = objc_msgSend_name(v19, v20, v21);
    isEqualToString = objc_msgSend_isEqualToString_(nameCopy, v23, v22);

    if (isEqualToString)
    {
      goto LABEL_10;
    }

LABEL_7:
    ++v16;
    v15 = v19;
    if (v12 == v16)
    {
      v31 = 0;
      goto LABEL_11;
    }
  }

  v25 = objc_msgSend_documentLocale(self, v20, v21);
  v28 = objc_msgSend_name(v19, v26, v27);
  IsEqual_toString = objc_msgSend_localizedCaseInsensitiveIsEqual_toString_(v25, v29, nameCopy, v28);

  if (!IsEqual_toString)
  {
    goto LABEL_7;
  }

LABEL_10:
  v31 = v19;
  v19 = v31;
LABEL_11:

  return v31;
}

- (id)resolverContainerNamesMatchingPrefix:(id)prefix
{
  v34 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = objc_msgSend_mutableSheets(self, v8, v9);
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v29, v33, 16);
  if (v13)
  {
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = objc_msgSend_name(*(*(&v29 + 1) + 8 * i), v11, v12);
        if (!objc_msgSend_length(prefixCopy, v17, v18) || (objc_msgSend_documentLocale(self, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_locale(v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), hasCaseInsensitivePrefix_withLocale = objc_msgSend_tst_hasCaseInsensitivePrefix_withLocale_(v16, v25, prefixCopy, v24), v24, v21, hasCaseInsensitivePrefix_withLocale))
        {
          objc_msgSend_addObject_(v7, v19, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v29, v33, 16);
    }

    while (v13);
  }

  return v7;
}

- (id)resolverMatchingName:(id)name contextResolver:(id)resolver
{
  v31 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  resolverCopy = resolver;
  if (resolverCopy)
  {
    v10 = objc_msgSend_p_resolverContainerForResolver_(self, v7, resolverCopy);
  }

  else
  {
    v10 = 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = objc_msgSend_mutableSheets(self, v7, v8);
  obj = v11;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v26, v30, 16);
  if (!v14)
  {
    v16 = 0;
    goto LABEL_24;
  }

  v15 = 0;
  v16 = 0;
  v17 = *v27;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v27 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v26 + 1) + 8 * i);
      v20 = objc_msgSend_resolverMatchingName_(v19, v13, nameCopy);
      v21 = v20;
      if (resolverCopy)
      {
        if (v20 && v19 == v10)
        {

          v16 = v21;
          v11 = obj;
          goto LABEL_24;
        }
      }

      if ((v20 == 0) | v15 & 1)
      {
        if (!v20)
        {
          goto LABEL_19;
        }

        v23 = 0;
      }

      else
      {
        v23 = v20;
        v15 = 1;
      }

      v16 = v23;
LABEL_19:
    }

    v11 = obj;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v26, v30, 16);
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_24:

  return v16;
}

- (id)resolverMatchingName:(id)name contextContainerName:(id)containerName
{
  nameCopy = name;
  containerNameCopy = containerName;
  if (!containerNameCopy || (objc_msgSend_resolverContainerForName_caseSensitive_(self, v7, containerNameCopy, 1), v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) == 0) || (objc_msgSend_resolverMatchingName_(v9, v7, nameCopy), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v11 = objc_msgSend_resolverMatchingName_contextResolver_(self, v7, nameCopy, 0);
  }

  return v11;
}

- (id)resolverMatchingName:(id)name
{
  v3 = objc_msgSend_resolverMatchingName_contextResolver_(self, a2, name, 0);

  return v3;
}

- (id)resolversMatchingPrefix:(id)prefix
{
  v50 = *MEMORY[0x277D85DE8];
  prefixCopy = prefix;
  v39 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = objc_msgSend_mutableSheets(self, v7, v8);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v44, v49, 16);
  if (v36)
  {
    v35 = *v45;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v12 = objc_msgSend_tableInfos(*(*(&v44 + 1) + 8 * i), v10, v11);
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = v12;
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v13, &v40, v48, 16);
        if (v16)
        {
          v17 = *v41;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v41 != v17)
              {
                objc_enumerationMutation(v38);
              }

              v19 = *(*(&v40 + 1) + 8 * j);
              v20 = objc_msgSend_tableName(v19, v14, v15);
              if (!objc_msgSend_length(prefixCopy, v21, v22) || (objc_msgSend_documentLocale(self, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_locale(v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), hasCaseInsensitivePrefix_withLocale = objc_msgSend_tst_hasCaseInsensitivePrefix_withLocale_(v20, v29, prefixCopy, v28), v28, v25, hasCaseInsensitivePrefix_withLocale))
              {
                v31 = objc_msgSend_resolver(v19, v23, v24);
                objc_msgSend_addObject_(v39, v32, v31);
              }
            }

            v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v14, &v40, v48, 16);
          }

          while (v16);
        }
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v44, v49, 16);
    }

    while (v36);
  }

  return v39;
}

- (id)childEnumerator
{
  v4 = MEMORY[0x277D81148];
  v5 = objc_msgSend_theme(self, a2, v2);
  v8 = objc_msgSend_mutableSheets(self, v6, v7);
  v11 = objc_msgSend_objectEnumerator(v8, v9, v10);
  v13 = objc_msgSend_aggregateEnumeratorWithObjects_(v4, v12, v5, v11, 0);

  return v13;
}

- (void)setSelectedQuickCalcFunctions:(id)functions
{
  functionsCopy = functions;
  v6 = objc_msgSend_uiState(self, v4, v5);
  objc_msgSend_setSelectedQuickCalcFunctions_(v6, v7, functionsCopy);

  objc_msgSend_invalidateViewState(self, v8, v9);
}

- (NSArray)selectedQuickCalcFunctions
{
  v3 = objc_msgSend_uiState(self, a2, v2);
  v6 = objc_msgSend_selectedQuickCalcFunctions(v3, v4, v5);

  return v6;
}

- (void)setRemovedAllQuickCalcFunctions:(BOOL)functions
{
  functionsCopy = functions;
  v5 = objc_msgSend_uiState(self, a2, functions);
  objc_msgSend_setRemovedAllQuickCalcFunctions_(v5, v6, functionsCopy);

  objc_msgSend_invalidateViewState(self, v7, v8);
}

- (BOOL)removedAllQuickCalcFunctions
{
  v3 = objc_msgSend_uiState(self, a2, v2);
  v6 = objc_msgSend_removedAllQuickCalcFunctions(v3, v4, v5);

  return v6;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812DAFE8[18]);

  if (*(v6 + 104))
  {
    v7 = *(v6 + 104);
  }

  else
  {
    v7 = MEMORY[0x277D80010];
  }

  v60.receiver = self;
  v60.super_class = TNDocumentRoot;
  [(TSADocumentRoot *)&v60 loadFromArchive:v7 unarchiver:unarchiverCopy];
  v8 = *(v6 + 72);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = sub_275F4353C;
  v59[3] = &unk_27A6A3460;
  v59[4] = self;
  v9 = unarchiverCopy;
  v11 = objc_opt_class();
  v12 = MEMORY[0x277D80A18];
  if (v8)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, v8, v11, 0, v59);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, MEMORY[0x277D80A18], v11, 0, v59);
  }

  v13 = *(v6 + 88);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_275F43550;
  v58[3] = &unk_27A6A3488;
  v58[4] = self;
  v14 = v9;
  v16 = objc_opt_class();
  if (v13)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v15, v13, v16, 0, v58);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v15, v12, v16, 0, v58);
  }

  if (*(v6 + 17))
  {
    v17 = *(v6 + 112);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_275F43564;
    v57[3] = &unk_27A6A34B0;
    v57[4] = self;
    v18 = v14;
    v19 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v18, v20, v17, v19, 0, v57);
  }

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_275F435D0;
  v56[3] = &unk_27A6A2A68;
  v56[4] = self;
  v21 = v14;
  v22 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v21, v23, v6 + 24, v22, 0, v56);

  v26 = *(v6 + 16);
  if ((v26 & 4) != 0)
  {
    v27 = *(v6 + 64);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = sub_275F435E4;
    v55[3] = &unk_27A6A34D8;
    v55[4] = self;
    v28 = v21;
    v29 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v28, v30, v27, v29, 0, v55);

    v26 = *(v6 + 16);
  }

  if ((v26 & 0x200) != 0)
  {
    TSPCGSizeCreateFromMessage(*(v6 + 120));
    self->_pageSize.width = v38;
    self->_pageSize.height = v39;
  }

  else
  {
    v31 = objc_msgSend_letterSizePrintProperties(TNPrintProperties, v24, v25);
    objc_msgSend_unscaledPageSize(v31, v32, v33);
    self->_pageSize.width = v34;
    self->_pageSize.height = v35;
  }

  if ((*(v6 + 16) & 2) != 0)
  {
    v41 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v36, *(v6 + 56) & 0xFFFFFFFFFFFFFFFELL);
    v44 = objc_msgSend_copy(v41, v42, v43);
    paperID = self->_paperID;
    self->_paperID = v44;
  }

  else
  {
    v40 = objc_msgSend_copy(*MEMORY[0x277D815E0], v36, v37);
    v41 = self->_paperID;
    self->_paperID = v40;
  }

  self->_printingAllSheets = 0;
  hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(v21, v46, v47);
  v51 = objc_msgSend_preUFFVersion(v21, v49, v50);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = sub_275F4366C;
  v53[3] = &unk_27A6A3500;
  v54 = hasPreUFFVersion;
  v53[4] = self;
  v53[5] = v51;
  objc_msgSend_addFinalizeHandler_(v21, v52, v53);
}

- (void)upgradeStylesheetForSheetStyles:(id)styles
{
  stylesCopy = styles;
  v5 = objc_msgSend_sheetStyleIDForPreset_(TNSheetStyle, v4, 0);
  objc_opt_class();
  v7 = objc_msgSend_cascadedStyleWithIdentifier_(stylesCopy, v6, v5);
  v8 = TSUDynamicCast();

  if (!v8)
  {
    objc_msgSend_willModifyForUpgrade(stylesCopy, v9, v10);
    v13 = objc_msgSend_context(self, v11, v12);
    v8 = objc_msgSend_defaultSheetStyleWithContext_(TNSheetStyle, v14, v13);

    objc_msgSend_addStyle_withIdentifier_(stylesCopy, v15, v8, v5);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = objc_msgSend_stylesheet(self, v5, v6);

  if (!v7)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TNDocumentRoot saveToArchiver:]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 1008, 0, "document is trying to be saved before we have a stylesheet. creating a new empty stylesheet to keep Numbers from crashing.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  v17 = objc_msgSend_stylesheet(self, v8, v9);

  if (!v17)
  {
    v18 = objc_alloc(MEMORY[0x277D80AE0]);
    v21 = objc_msgSend_context(self, v19, v20);
    canCullStyles = objc_msgSend_initWithContext_canCullStyles_(v18, v22, v21, 1);
    objc_msgSend_setStylesheet_(self, v24, canCullStyles);
  }

  v25 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v27 = objc_msgSend_messageWithNewFunction_descriptor_(v25, v26, sub_275F45E4C, off_2812DAFE8[18]);

  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = sub_275F43E08;
  v67[3] = &unk_27A6A3528;
  v70 = v27;
  v28 = v25;
  v68 = v28;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v28, v29, 8, v27, v67);
  v32 = objc_msgSend_mutableSheets(self, v30, v31);
  objc_msgSend_setStrongReferenceArray_message_(v28, v33, v32, v27 + 24);

  v37 = objc_msgSend_stylesheet(self, v34, v35);
  *(v27 + 16) |= 8u;
  v38 = *(v27 + 72);
  if (!v38)
  {
    v39 = *(v27 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = MEMORY[0x277C90F90](v39);
    *(v27 + 72) = v38;
  }

  objc_msgSend_setStrongReference_message_(v28, v36, v37, v38);

  v43 = objc_msgSend_theme(self, v40, v41);
  *(v27 + 16) |= 0x20u;
  v44 = *(v27 + 88);
  if (!v44)
  {
    v45 = *(v27 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C90F90](v45);
    *(v27 + 88) = v44;
  }

  objc_msgSend_setStrongReference_message_(v28, v42, v43, v44);

  objc_msgSend_p_createDeprecatedSidebarOrderIfNecessaryFromSaveToArchiver(self, v46, v47);
  v51 = objc_msgSend_deprecatedSidebarOrder(self, v48, v49);
  *(v27 + 16) |= 0x10u;
  v52 = *(v27 + 80);
  if (!v52)
  {
    v53 = *(v27 + 8);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = MEMORY[0x277C90F90](v53);
    *(v27 + 80) = v52;
  }

  objc_msgSend_setStrongReference_message_(v28, v50, v51, v52);

  v56 = objc_msgSend_paperID(self, v54, v55);
  *(v27 + 16) |= 2u;
  v57 = google::protobuf::internal::ArenaStringPtr::Mutable();
  objc_msgSend_tsp_saveToProtobufString_(v56, v58, v57);

  objc_msgSend_pageSize(self, v59, v60);
  v62 = v61;
  v64 = v63;
  *(v27 + 16) |= 0x200u;
  v65 = *(v27 + 120);
  if (!v65)
  {
    v66 = *(v27 + 8);
    if (v66)
    {
      v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
    }

    v65 = MEMORY[0x277C90F60](v66);
    *(v27 + 120) = v65;
  }

  v71.width = v62;
  v71.height = v64;
  TSPCGSizeCopyToMessage(v71, v65);
}

- (void)sheet:(id)sheet insertedDrawable:(id)drawable
{
  drawableCopy = drawable;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_msgSend_p_clearDeprecatedSidebarOrder(self, v5, v6);
  }
}

- (void)sheet:(id)sheet removedDrawable:(id)drawable
{
  drawableCopy = drawable;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_msgSend_p_clearDeprecatedSidebarOrder(self, v5, v6);
  }
}

- (BOOL)isMultiPageForQuickLook
{
  v3 = objc_msgSend_mutableSheets(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) > 1;

  return v6;
}

- (id)p_chartsWantingDeferredUpgrade
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_275F4413C;
  v13 = sub_275F4414C;
  v14 = 0;
  v4 = objc_msgSend_accessController(self, a2, v2);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275F44154;
  v8[3] = &unk_27A6A3570;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_performRead_(v4, v5, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)performDeferredUpgradeImportOperationsRequiringCalcEngine
{
  v4 = objc_msgSend_p_chartsWantingDeferredUpgrade(self, a2, v2);
  if (objc_msgSend_count(v4, v5, v6))
  {
    v9 = objc_msgSend_calculationEngine(self, v7, v8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_275F44370;
    v12[3] = &unk_27A6A2890;
    v13 = v9;
    selfCopy = self;
    v15 = v4;
    v10 = v9;
    objc_msgSend_resumeRecalculationForBlock_(v10, v11, v12);
  }
}

- (void)documentDidLoad
{
  v75.receiver = self;
  v75.super_class = TNDocumentRoot;
  [(TSADocumentRoot *)&v75 documentDidLoad];
  objc_msgSend_performDeferredUpgradeImportOperationsRequiringCalcEngine(self, v3, v4);
  v7 = objc_msgSend_sharedPropertiesProvider(MEMORY[0x277D80610], v5, v6);
  v10 = objc_msgSend_designModeEnabled(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_calculationEngine(self, v11, v12);
    if (objc_msgSend_allCellsAreClean(v13, v14, v15))
    {
    }

    else
    {
      v18 = objc_msgSend_calculationEngine(self, v16, v17);
      isRecalculationStarted = objc_msgSend_isRecalculationStarted(v18, v19, v20);

      if (isRecalculationStarted)
      {
        v24 = objc_msgSend_calculationEngine(self, v22, v23);
        objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v24, v25, v26, 5.0);

        v29 = 11;
        do
        {
          v30 = objc_msgSend_calculationEngine(self, v27, v28);
          v33 = objc_msgSend_remoteDataStore(v30, v31, v32);
          if (objc_msgSend_hasFullyPopulatedCache(v33, v34, v35))
          {
            v38 = objc_msgSend_calculationEngine(self, v36, v37);
            v41 = objc_msgSend_allCellsAreClean(v38, v39, v40);

            if (v41)
            {
              return;
            }
          }

          else
          {
          }

          sleep(3u);
          v44 = objc_msgSend_calculationEngine(self, v42, v43);
          objc_msgSend_blockUntilRecalcIsCompleteWithTimeout_(v44, v45, v46, 5.0);

          --v29;
        }

        while (v29);
        v47 = objc_msgSend_calculationEngine(self, v27, v28);
        v50 = objc_msgSend_allCellsAreClean(v47, v48, v49);

        if ((v50 & 1) == 0)
        {
          v53 = MEMORY[0x277D81150];
          v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TNDocumentRoot documentDidLoad]");
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 1274, 0, "Couldn't get calc-engine cells clean in documentDidLoad");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
        }

        v60 = objc_msgSend_calculationEngine(self, v51, v52);
        v63 = objc_msgSend_remoteDataStore(v60, v61, v62);
        hasFullyPopulatedCache = objc_msgSend_hasFullyPopulatedCache(v63, v64, v65);

        if ((hasFullyPopulatedCache & 1) == 0)
        {
          v68 = MEMORY[0x277D81150];
          v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, "[TNDocumentRoot documentDidLoad]");
          v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v68, v72, v69, v71, 1275, 0, "Couldn't fully populate remoteDataStore in documentDidLoad");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74);
        }
      }
    }
  }
}

- (id)nearestDisplayableSheetToSheet:(id)sheet
{
  sheetCopy = sheet;
  if (objc_msgSend_shouldBeDisplayed(sheetCopy, v5, v6))
  {
    v9 = sheetCopy;
    goto LABEL_20;
  }

  v10 = objc_msgSend_sheets(self, v7, v8);
  v12 = objc_msgSend_indexOfObject_(v10, v11, sheetCopy);
  if (v12)
  {
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TNDocumentRoot nearestDisplayableSheetToSheet:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1311, 0, "Asked to find a sheet near a sheet that isn't in the document.");
      goto LABEL_18;
    }

    v19 = v12 - 1;
    while (1)
    {
      v9 = objc_msgSend_objectAtIndex_(v10, v13, v19);
      if (objc_msgSend_shouldBeDisplayed(v9, v20, v21))
      {
        break;
      }

      if (--v19 == -1)
      {
        goto LABEL_11;
      }
    }

    if (v9)
    {
      goto LABEL_19;
    }
  }

LABEL_11:
  v22 = objc_msgSend_indexOfObject_(v10, v13, sheetCopy);
  v26 = objc_msgSend_count(v10, v23, v24);
  if (v22 < v26 - 1)
  {
    v9 = 0;
    v27 = v22 + 1;
    do
    {
      v28 = objc_msgSend_objectAtIndex_(v10, v25, v27);
      if (objc_msgSend_shouldBeDisplayed(v28, v29, v30))
      {
        v31 = v28;

        v9 = v31;
      }

      ++v27;
    }

    while (v26 != v27);
    if (v9)
    {
      goto LABEL_19;
    }
  }

  v32 = MEMORY[0x277D81150];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TNDocumentRoot nearestDisplayableSheetToSheet:]");
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v34, v15, v17, 1344, 0, "invalid nil value for '%{public}s'", "displayableSheet");
LABEL_18:

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
  v9 = 0;
LABEL_19:

LABEL_20:

  return v9;
}

- (id)freehandDrawingToolkitUIState
{
  v3 = objc_msgSend_uiState(self, a2, v2);
  v6 = objc_msgSend_freehandDrawingToolkitUIState(v3, v4, v5);

  return v6;
}

+ (CGSize)previewImageSizeForType:(unint64_t)type
{
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        v3 = 116.0;
        v4 = 90.0;
        goto LABEL_15;
      case 4uLL:
        v3 = 225.0;
        v4 = 174.0;
        goto LABEL_15;
      case 5uLL:
        v3 = 54.0;
        v4 = 42.0;
        goto LABEL_15;
    }

LABEL_12:
    v3 = 360.0;
    v4 = 276.0;
    goto LABEL_15;
  }

  if (!type)
  {
    v3 = 180.0;
    v4 = 138.0;
    goto LABEL_15;
  }

  if (type == 1)
  {
    v3 = 90.0;
    v4 = 70.0;
    goto LABEL_15;
  }

  if (type != 2)
  {
    goto LABEL_12;
  }

  v3 = 106.0;
  v4 = 82.0;
LABEL_15:
  result.height = v3;
  result.width = v4;
  return result;
}

+ (CGSize)previewImageMaxSizeForType:(unint64_t)type
{
  objc_msgSend_previewImageSizeForType_(self, a2, type);
  if (v3 < v4)
  {
    v3 = v4;
  }

  v5 = v3;
  result.height = v5;
  result.width = v3;
  return result;
}

- (double)p_imageBorderForSize:(CGSize)size
{
  width = size.width;
  v4 = objc_opt_class();
  objc_msgSend_previewImageMaxSizeForType_(v4, v5, 0);
  TSUMultiplySizeScalar();
  return floor(width / v6 * 20.0);
}

- (id)previewImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_275F4413C;
  v16 = sub_275F4414C;
  v17 = 0;
  v7 = objc_msgSend_accessController(self, a2, v3);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_275F44DA4;
  v11[3] = &unk_27A6A3598;
  v11[4] = self;
  v11[5] = &v12;
  *&v11[6] = width;
  *&v11[7] = height;
  objc_msgSend_performRead_(v7, v8, v11);

  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

- (CGRect)p_contentFrameToCaptureForSheet:(id)sheet
{
  sheetCopy = sheet;
  IsRightToLeft = objc_msgSend_layoutIsRightToLeft(sheetCopy, v4, v5);
  v7 = objc_alloc_init(MEMORY[0x277D801E0]);
  objc_msgSend_setContentInset_(v7, v8, v9, -40.0, -40.0, -40.0, -40.0);
  objc_msgSend_setIsAnchoredAtRight_(v7, v10, IsRightToLeft);
  v13 = objc_msgSend_childInfos(sheetCopy, v11, v12);
  objc_msgSend_setInfosToDisplay_(v7, v14, v13);

  objc_msgSend_layoutInvalidated(v7, v15, v16);
  objc_msgSend_nonInteractiveLayoutIfNeeded(v7, v17, v18);
  v21 = objc_msgSend_layoutController(v7, v19, v20);
  objc_msgSend_rectOfTopLevelLayouts(v21, v22, v23);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  objc_msgSend_teardown(v7, v32, v33);
  v56.origin.x = v25;
  v56.origin.y = v27;
  v56.size.width = v29;
  v56.size.height = v31;
  MinX = CGRectGetMinX(v56);
  v57.origin.x = v25;
  v57.origin.y = v27;
  v57.size.width = v29;
  v57.size.height = v31;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = v25;
  v58.origin.y = v27;
  v58.size.width = v29;
  v58.size.height = v31;
  Width = CGRectGetWidth(v58);
  v59.origin.x = v25;
  v59.origin.y = v27;
  v59.size.width = v29;
  v59.size.height = v31;
  Height = CGRectGetHeight(v59);
  v38 = MinX + Width + 40.0;
  v39 = 0.0;
  if (v38 < 0.0)
  {
    v38 = 0.0;
  }

  if (MinX < -40.0)
  {
    v40 = v38;
  }

  else
  {
    v40 = Width;
  }

  if (MinX < -40.0)
  {
    v41 = -40.0;
  }

  else
  {
    v41 = MinX;
  }

  v42 = Width - MinX + -40.0;
  if (v42 < 0.0)
  {
    v42 = 0.0;
  }

  if (MinX > 40.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = Width;
  }

  if (MinX > 40.0)
  {
    v44 = 40.0;
  }

  else
  {
    v44 = MinX;
  }

  if (IsRightToLeft)
  {
    v40 = v43;
    v45 = v44;
  }

  else
  {
    v45 = v41;
  }

  if (MinY + Height + 40.0 >= 0.0)
  {
    v39 = MinY + Height + 40.0;
  }

  v46 = 1200.0;
  if (Width <= Height)
  {
    v47 = 1200.0;
  }

  else
  {
    v47 = 2400.0;
  }

  if (Width <= Height)
  {
    v48 = 300.0;
  }

  else
  {
    v48 = 400.0;
  }

  if (Width > Height)
  {
    v49 = 300.0;
  }

  else
  {
    v46 = 2400.0;
    v49 = 400.0;
  }

  if (v40 > v47)
  {
    v40 = v47;
  }

  if (v40 <= v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v40;
  }

  if (MinY < -40.0)
  {
    Height = v39;
    MinY = -40.0;
  }

  if (Height > v46)
  {
    Height = v46;
  }

  if (Height <= v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = Height;
  }

  v52 = v45;
  v53 = MinY;
  v54 = v50;
  v55 = v51;
  result.size.height = v55;
  result.size.width = v54;
  result.origin.y = v53;
  result.origin.x = v52;
  return result;
}

- (CGSize)p_adjustCapturedContentSize:(CGSize)result toAspectRatio:(CGSize)ratio
{
  v4 = result.width * ratio.height / ratio.width;
  result.height = v4;
  return result;
}

- (id)p_previewImageForSheet:(id)sheet withImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  sheetCopy = sheet;
  if (sheetCopy)
  {
    objc_msgSend_p_contentFrameToCaptureForSheet_(self, v7, sheetCopy);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    objc_msgSend_p_imageBorderForSize_(self, v17, v18, width, height);
    v20 = v19;
    v71.origin.x = v10;
    v71.origin.y = v12;
    v71.size.width = v14;
    v71.size.height = v16;
    v21 = CGRectGetWidth(v71);
    v72.origin.x = v10;
    v72.origin.y = v12;
    v72.size.width = v14;
    v72.size.height = v16;
    v24 = (width <= height) ^ (v21 > CGRectGetHeight(v72));
    if (v24)
    {
      v25 = width;
    }

    else
    {
      v25 = height;
    }

    if (v24)
    {
      v26 = height;
    }

    else
    {
      v26 = width;
    }

    objc_msgSend_p_adjustCapturedContentSize_toAspectRatio_(self, v22, v23, v14, v16, v25 + v20 * -2.0, v26 + v20 * -2.0, *&v20);
    v27 = objc_alloc(MEMORY[0x277D802E0]);
    v29 = objc_msgSend_initWithDocumentRoot_(v27, v28, self);
    v32 = objc_msgSend_backgroundColor(sheetCopy, v30, v31);
    v35 = objc_msgSend_color(v32, v33, v34);
    objc_msgSend_setBackgroundColor_(v29, v36, v35);

    TSURoundedSize();
    objc_msgSend_setScaledImageSize_(v29, v37, v38);
    TSURoundedRectForScale();
    objc_msgSend_setUnscaledClipRect_(v29, v39, v40);
    objc_msgSend_setDistortedToMatch_(v29, v41, 1);
    objc_msgSend_setImageMustHaveEvenDimensions_(v29, v42, 1);
    v45 = objc_msgSend_childInfos(sheetCopy, v43, v44);
    objc_msgSend_setInfos_(v29, v46, v45);

    v49 = objc_msgSend_newImage(v29, v47, v48);
    v50 = TSUCreateRGBABitmapContext();
    v53 = objc_msgSend_backgroundColor(sheetCopy, v51, v52);
    v56 = objc_msgSend_CGColor(v53, v54, v55);
    CGContextSetFillColorWithColor(v50, v56);

    TSURectWithSize();
    CGContextFillRect(v50, v73);
    TSURectWithOriginAndSize();
    CGContextDrawImage(v50, v74, v49);
    CGImageRelease(v49);
    Image = CGBitmapContextCreateImage(v50);
    v59 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v58, Image);
    CGImageRelease(Image);
    CGContextRelease(v50);
  }

  else
  {
    v60 = TSUCreateRGBABitmapContext();
    v63 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v61, v62);
    v66 = objc_msgSend_CGColor(v63, v64, v65);
    CGContextSetFillColorWithColor(v60, v66);

    TSURectWithSize();
    CGContextFillRect(v60, v75);
    v67 = CGBitmapContextCreateImage(v60);
    v59 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v68, v67);
    CGImageRelease(v67);
    CGContextRelease(v60);
  }

  return v59;
}

- (id)p_previewImageWithImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = objc_msgSend_sheets(self, a2, v3, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v18, v22, 16);
  if (v11)
  {
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ((objc_msgSend_isForm(v14, v9, v10) & 1) == 0)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v18, v22, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v16 = objc_msgSend_p_previewImageForSheet_withImageSize_(self, v15, v11, width, height);

  return v16;
}

- (BOOL)shouldAllowDrawableInGroups:(id)groups
{
  groupsCopy = groups;
  v7.receiver = self;
  v7.super_class = TNDocumentRoot;
  if ([(TSADocumentRoot *)&v7 shouldAllowDrawableInGroups:groupsCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v5 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (id)UIStateForChart:(id)chart
{
  chartCopy = chart;
  v7 = objc_msgSend_uiState(self, v5, v6);
  v9 = objc_msgSend_UIStateForChart_(v7, v8, chartCopy);

  return v9;
}

- (void)setUIState:(id)state forChart:(id)chart
{
  stateCopy = state;
  chartCopy = chart;
  v9 = objc_msgSend_uiState(self, v7, v8);
  objc_msgSend_setUIState_forChart_(v9, v10, stateCopy, chartCopy);
}

- (int)naturalAlignmentAtCharIndex:(unint64_t)index inTextStorage:(id)storage
{
  v44 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  v8 = objc_msgSend_sheets(self, v6, v7);
  obj = v8;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v39, v43, 16);
  if (!v11)
  {
LABEL_13:

    v38.receiver = selfCopy;
    v38.super_class = TNDocumentRoot;
    v26 = [(TSWPDocumentRoot *)&v38 naturalAlignmentAtCharIndex:index inTextStorage:storageCopy];
    if (v26 == 4)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TNDocumentRoot naturalAlignmentAtCharIndex:inTextStorage:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 1941, 0, "failed to determine natural alignment");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
      v26 = 4;
    }

    goto LABEL_16;
  }

  v12 = *v40;
LABEL_3:
  v13 = 0;
  while (1)
  {
    if (*v40 != v12)
    {
      objc_enumerationMutation(obj);
    }

    v14 = *(*(&v39 + 1) + 8 * v13);
    v15 = objc_msgSend_headerFragmentIndexForStorage_(v14, v10, storageCopy);
    v17 = v15;
    if (v15 == -1)
    {
      goto LABEL_9;
    }

    if (v15 <= 2)
    {
      break;
    }

    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TNDocumentRoot naturalAlignmentAtCharIndex:inTextStorage:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 1934, 0, "unexpected header fragment index %lld", v17);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
LABEL_9:
    if (v11 == ++v13)
    {
      v8 = obj;
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v39, v43, 16);
      if (v11)
      {
        goto LABEL_3;
      }

      goto LABEL_13;
    }
  }

  v8 = obj;
  if (objc_msgSend_usesSingleHeaderFooter(v14, v10, v16))
  {
    goto LABEL_13;
  }

  v26 = dword_275F5F038[v17];

LABEL_16:
  return v26;
}

- (int)verticalAlignmentForTextStorage:(id)storage
{
  v32 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  v7 = objc_msgSend_sheets(self, v5, v6);
  obj = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v31, 16);
  if (v10)
  {
    v11 = *v28;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = objc_msgSend_headerFooterTypeForStorage_(*(*(&v27 + 1) + 8 * v12), v9, storageCopy);
      v14 = v13;
      if (v13 != -1)
      {
        if (!v13)
        {
          v22 = 0;
LABEL_15:

          goto LABEL_16;
        }

        if (v13 == 1)
        {
          v22 = 2;
          goto LABEL_15;
        }

        v15 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TNDocumentRoot verticalAlignmentForTextStorage:]");
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNDocumentRoot.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 1963, 0, "unexpected header/footer type %lld", v14);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
      }

      if (v10 == ++v12)
      {
        v7 = obj;
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v27, v31, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v26.receiver = selfCopy;
  v26.super_class = TNDocumentRoot;
  v22 = [(TSWPDocumentRoot *)&v26 verticalAlignmentForTextStorage:storageCopy];
LABEL_16:

  return v22;
}

- (unint64_t)writingDirectionForStorage
{
  if (TSWPPrimaryInputMethodIsRTL())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end