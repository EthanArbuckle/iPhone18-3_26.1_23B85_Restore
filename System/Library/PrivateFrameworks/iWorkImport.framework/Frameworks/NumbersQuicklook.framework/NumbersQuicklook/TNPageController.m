@interface TNPageController
+ (NSMapTable)cachedAutoFitContentScaleDictionary;
+ (double)autoFitContentScaleForInfoProvider:(id)a3;
+ (double)p_unclampedAutoFitContentScaleForInfoProvider:(id)a3;
- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForContent;
- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForContentAndAddendaWithUpperBound:(TSUCellCoord)a3;
- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForContentWithUpperBound:(TSUCellCoord)a3;
- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForInfo:(id)a3 upperBound:(TSUCellCoord)a4;
- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForPageIndex:(unint64_t)a3;
- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeWithPlaceholdersWithUpperBound:(TSUCellCoord)a3;
- (BOOL)_hasAddendumContent;
- (BOOL)_isPageAddendumAtPageCoordinate:(TSUCellCoord)a3;
- (BOOL)_isPageAddendumAtPageIndex:(unint64_t)a3;
- (BOOL)_shouldPrintComments;
- (BOOL)isInteractive;
- (BOOL)isPagePlaceholderAtPageCoordinate:(TSUCellCoord)a3;
- (BOOL)isPortrait;
- (BOOL)p_headersOrFootersContainPageNumberRelatedAttachments;
- (BOOL)shouldSuppressBackgroundsForPageIndex:(unint64_t)a3;
- (CGAffineTransform)annotationPrintingHelper:(SEL)a3 inversePureTransformInRootForContentAtPageIndex:(id)a4;
- (CGRect)availableRectForAddendumContentOfAnnotationPrintingHelper:(id)a3;
- (CGRect)contentFrame;
- (CGRect)firstPartitionFrameForInfo:(id)a3 outStartPageCoordinate:(TSUCellCoord *)a4;
- (CGRect)printingLayoutRectForPageIndex:(unint64_t)a3;
- (CGRect)rectForAddendumContentOfAnnotationPrintingHelper:(id)a3;
- (CGSize)contentSizeForCanvasLayer;
- (CGSize)pageSize;
- (CGSize)pageSizeWithGutter;
- (NSArray)additionalContentProviders;
- (TNAnnotationPrintingHelper)annotationPrintingHelper;
- (TNDocumentRoot)documentRoot;
- (TNPageController)initWithDocumentRoot:(id)a3;
- (TNPageControllerDelegate)delegate;
- (TNPrintProperties)printProperties;
- (TNPrintableInfoProviding)infoProvider;
- (TNSheet)sheet;
- (TSUCellCoord)_pageCoordinateWithPageSize:(CGSize)a3 forPoint:(CGPoint)a4;
- (TSUCellCoord)p_pageCoordinateForPageLayoutAtDevicePoint:(CGPoint)a3;
- (TSUCellCoord)pageCoordinateForDrawableAtUnscaledPoint:(CGPoint)a3;
- (TSUCellCoord)pageCoordinateForMaxVisiblePage;
- (TSUCellCoord)pageCoordinateForPageIndex:(unint64_t)a3;
- (TSUCellCoord)pageCoordinateForPageLayoutAtUnscaledPoint:(CGPoint)a3;
- (double)contentScale;
- (double)printViewDefaultUserViewScale;
- (id)_createPageLayoutForCoordinate:(TSUCellCoord)a3;
- (id)_layoutsForPageIndex:(unint64_t)a3;
- (id)_printableInfos;
- (id)addendumPageTitleOfAnnotationPrintingHelper:(id)a3;
- (id)additionalContentProviderAtPageIndex:(unint64_t)a3 outPageIndexInProvider:(unint64_t *)a4;
- (id)annotationPrintingHelper:(id)a3 layoutsForPageIndex:(unint64_t)a4;
- (id)i_childLayersAtAddendumPageCoordinate:(TSUCellCoord)a3;
- (id)i_layerForHeaderType:(int64_t)a3 fragment:(int64_t)a4 atPageCoordinate:(TSUCellCoord)a5;
- (id)p_hintCacheForInfo:(id)a3;
- (id)p_layoutForInfo:(id)a3 atCoordinate:(TSUCellCoord)a4 parentLayout:(id)a5;
- (id)p_pageInfoForPageAtIndex:(unint64_t)a3;
- (id)p_pageLayoutAtCoordinate:(TSUCellCoord)a3 shouldCachePageLayout:(BOOL)a4;
- (id)pageInfoForPageIndex:(unint64_t)a3;
- (id)pageLayoutGeometryForPageCoordinate:(TSUCellCoord)a3;
- (id)pageLayoutGeometryForPrintingAtPageCoordinate:(TSUCellCoord)a3;
- (int64_t)p_pageCountForInfoProvider:(id)a3;
- (int64_t)p_priorPageCount;
- (int64_t)p_updateCachedPageCountForCurrentInfoProvider;
- (unint64_t)_pageIndexForPageCoordinate:(TSUCellCoord)a3;
- (unint64_t)numPagesForAddenda;
- (unint64_t)pageNumberForPageCoordinate:(TSUCellCoord)a3;
- (void)_measureHeadersAndFootersIfNecessary;
- (void)_postAdditionalContentChangedNotification;
- (void)_resetAnnotationPrintingHelper;
- (void)annotationPrintingHelper:(id)a3 enumerateLayoutsByPageWithBlock:(id)a4;
- (void)dealloc;
- (void)didExitPrintPreview;
- (void)drawAdditionalContentForPageIndex:(unint64_t)a3 inContext:(CGContext *)a4;
- (void)enumerateAnnotationPagesWithBlock:(id)a3;
- (void)enumerateLayoutsByPageWithBlock:(id)a3;
- (void)i_addChildLayer:(id)a3 atAddendumPageCoordinate:(TSUCellCoord)a4;
- (void)i_invalidateForHeaderChange;
- (void)i_invalidateHintCache;
- (void)i_invalidatePageLayoutCache;
- (void)i_setLayer:(id)a3 forHeaderType:(int64_t)a4 fragment:(int64_t)a5 atPageCoordinate:(TSUCellCoord)a6;
- (void)invalidateDrawableLayouts;
- (void)invalidatePageLayoutGeometries;
- (void)layoutInPageRange:(id)a3 forLayoutController:(id)a4;
- (void)layoutPrintableInfosIntoPageLayout:(id)a3 atPageCoordinate:(TSUCellCoord)a4;
- (void)p_computePriorPageCountForCurrentSheet;
- (void)p_computeSubsequentPageCountForCurrentSheet;
- (void)p_didEndDynamicContentScaleChange:(id)a3;
- (void)p_invalidateCachedAutoFitContentScaleForInfoProvider:(id)a3 notify:(BOOL)a4;
- (void)p_invalidatePageCounts;
- (void)p_layoutInfo:(id)a3 intoPageLayout:(id)a4 atPageCoordinate:(TSUCellCoord)a5;
- (void)p_measureHeadersAndFooters;
- (void)p_postAutoFitContentScaleDidChangeNotification;
- (void)p_updateVisiblePageRange:(id)a3 forLayoutController:(id)a4;
- (void)p_willBeginDynamicContentScaleChange:(id)a3;
- (void)registerPageLayout:(id)a3 atPageCoordinate:(TSUCellCoord)a4;
- (void)setDelegate:(id)a3;
- (void)setInfoProvider:(id)a3;
- (void)updateContentScale;
- (void)updatePrintMargins;
- (void)updateUserViewScale;
- (void)updateViewScale;
@end

@implementation TNPageController

- (double)printViewDefaultUserViewScale
{
  v4 = objc_msgSend_delegate(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNPageController printViewDefaultUserViewScale]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 135, 0, "invalid nil value for '%{public}s'", "self.delegate");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = objc_msgSend_delegate(self, v5, v6);
  objc_msgSend_canvasScrollViewSize(v14, v15, v16);
  v18 = v17;
  v20 = v19;

  return v18 * v20 * 0.000000520299977 + 0.289400011;
}

- (TNPageController)initWithDocumentRoot:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = TNPageController;
  v5 = [(TNPageController *)&v32 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_documentRoot, v4);
    v7 = objc_alloc_init(TNPageCoordinateDictionary);
    headerLayerCache = v6->_headerLayerCache;
    v6->_headerLayerCache = v7;

    v9 = objc_alloc_init(TNPageCoordinateDictionary);
    footerLayerCache = v6->_footerLayerCache;
    v6->_footerLayerCache = v9;

    v13 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v11, v12);
    addendumContentCache = v6->_addendumContentCache;
    v6->_addendumContentCache = v13;

    v15 = objc_alloc_init(TNPageCoordinateDictionary);
    pageLayoutCache = v6->_pageLayoutCache;
    v6->_pageLayoutCache = v15;

    v17 = objc_alloc_init(MEMORY[0x277D812B8]);
    hintCacheDictionary = v6->_hintCacheDictionary;
    v6->_hintCacheDictionary = v17;

    v19 = objc_alloc_init(MEMORY[0x277D812B8]);
    infoProviderPageCountCache = v6->_infoProviderPageCountCache;
    v6->_infoProviderPageCountCache = v19;

    objc_msgSend_setHeaderTextHeight_(v6, v21, v22, -1.0);
    objc_msgSend_setFooterTextHeight_(v6, v23, v24, -1.0);
    v27 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v25, v26);
    objc_msgSend_addObserver_selector_name_object_(v27, v28, v6, sel_p_willBeginDynamicContentScaleChange_, @"TNSheetWillBeginDynamicContentScaleChange", v4);
    objc_msgSend_addObserver_selector_name_object_(v27, v29, v6, sel_p_didEndDynamicContentScaleChange_, @"TNSheetDidEndDynamicContentScaleChange", v4);
    objc_msgSend_addObserver_selector_name_object_(v27, v30, v6, sel__resetAnnotationPrintingHelper, *MEMORY[0x277D805B0], v4);
    v6->_priorPageCount = -1;
    v6->_subsequentPageCount = -1;
    v6->_cachedPageCountDuringDynamicContentScaleChange = -1;
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_p_invalidateCachedAutoFitContentScaleForInfoProvider_notify_(self, a2, 0, 0);
  v5 = objc_msgSend_documentRoot(self, v3, v4);
  v8 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v6, v7);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, @"TNSheetWillBeginDynamicContentScaleChange", v5);
  objc_msgSend_removeObserver_name_object_(v8, v10, self, @"TNSheetDidEndDynamicContentScaleChange", v5);
  objc_msgSend_removeObserver_name_object_(v8, v11, self, *MEMORY[0x277D805B0], v5);

  v12.receiver = self;
  v12.super_class = TNPageController;
  [(TNPageController *)&v12 dealloc];
}

- (TNPrintProperties)printProperties
{
  printProperties = self->_printProperties;
  if (!printProperties)
  {
    v5 = objc_msgSend_documentRoot(self, a2, v2);
    objc_msgSend_pageSize(v5, v6, v7);
    v9 = v8;
    v11 = v10;

    v12 = [TNPrintProperties alloc];
    v15 = objc_msgSend_infoProvider(self, v13, v14);
    objc_msgSend_printMargins(v15, v16, v17);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v28 = objc_msgSend_infoProvider(self, v26, v27);
    objc_msgSend_pageHeaderInset(v28, v29, v30);
    v32 = v31;
    v35 = objc_msgSend_infoProvider(self, v33, v34);
    objc_msgSend_pageFooterInset(v35, v36, v37);
    v41 = objc_msgSend_initWithPageSize_printMargins_headerInset_footerInset_(v12, v38, v39, v9, v11, v19, v21, v23, v25, v32, v40);
    v42 = self->_printProperties;
    self->_printProperties = v41;

    printProperties = self->_printProperties;
  }

  return printProperties;
}

- (TNAnnotationPrintingHelper)annotationPrintingHelper
{
  annotationPrintingHelper = self->_annotationPrintingHelper;
  if (!annotationPrintingHelper)
  {
    v4 = [TNAnnotationPrintingHelper alloc];
    v7 = objc_msgSend_documentRoot(self, v5, v6);
    v10 = objc_msgSend_documentLocale(v7, v8, v9);
    v12 = objc_msgSend_initWithDataSource_documentLocale_(v4, v11, self, v10);
    v13 = self->_annotationPrintingHelper;
    self->_annotationPrintingHelper = v12;

    annotationPrintingHelper = self->_annotationPrintingHelper;
  }

  return annotationPrintingHelper;
}

- (void)_resetAnnotationPrintingHelper
{
  annotationPrintingHelper = self->_annotationPrintingHelper;
  if (annotationPrintingHelper)
  {
    self->_annotationPrintingHelper = 0;

    objc_msgSend_i_invalidatePageLayoutCache(self, v4, v5);
    if (objc_msgSend_isProcessingChanges(self, v6, v7))
    {

      MEMORY[0x2821F9670](self, sel_setPostAdditionalContentChangedNotificationAfterProcessingChanges_, 1);
    }

    else
    {

      MEMORY[0x2821F9670](self, sel__postAdditionalContentChangedNotification, v8);
    }
  }
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  MEMORY[0x2821F9670](self, sel_updateUserViewScale, v4);
}

- (BOOL)isInteractive
{
  v3 = objc_msgSend_delegate(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (double)contentScale
{
  v6 = objc_msgSend_infoProvider(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_delegate(self, v4, v5);
    isScaleChanging = objc_msgSend_isScaleChanging(v7, v8, v9);

    if (isScaleChanging & 1 | ((objc_msgSend_isAutofitOn(v6, v11, v12) & 1) == 0))
    {
      objc_msgSend_contentScale(v6, v13, v14);
    }

    else
    {
      v17 = objc_opt_class();
      objc_msgSend_autoFitContentScaleForInfoProvider_(v17, v18, v6);
    }

    v16 = v15;
  }

  else
  {
    v16 = 0.00999999978;
  }

  return v16;
}

- (BOOL)isPortrait
{
  v3 = objc_msgSend_infoProvider(self, a2, v2);
  v6 = objc_msgSend_inPortraitPageOrientation(v3, v4, v5);

  return v6;
}

- (TNSheet)sheet
{
  objc_opt_class();
  v5 = objc_msgSend_infoProvider(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (void)setInfoProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_infoProvider);
  if (WeakRetained == obj)
  {
    pageCountsValid = self->_pageCountsValid;

    if (pageCountsValid)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  objc_storeWeak(&self->_infoProvider, obj);
  objc_msgSend_i_invalidatePageLayoutCache(self, v6, v7);
  objc_msgSend_p_clearHintCache(self, v8, v9);
  printProperties = self->_printProperties;
  self->_printProperties = 0;

  objc_msgSend__resetAnnotationPrintingHelper(self, v11, v12);
  objc_msgSend_setHeaderTextHeight_(self, v13, v14, -1.0);
  objc_msgSend_setFooterTextHeight_(self, v15, v16, -1.0);
  objc_msgSend__updateCanvasViewScale(self, v17, v18);
  if (obj && !self->_computingPageCounts)
  {
    objc_msgSend_removeObjectForKey_(self->_infoProviderPageCountCache, v19, obj);
    if ((objc_msgSend_isUsingStartPageNumber(obj, v20, v21) & 1) == 0)
    {
      objc_msgSend_p_computePriorPageCountForCurrentSheet(self, v22, v23);
    }

    objc_msgSend_p_computeSubsequentPageCountForCurrentSheet(self, v22, v23);
    self->_pageCountsValid = 1;
  }

LABEL_9:
}

- (int64_t)p_updateCachedPageCountForCurrentInfoProvider
{
  v4 = objc_msgSend_numPages(self, a2, v2);
  v7 = objc_msgSend_infoProvider(self, v5, v6);
  if (objc_msgSend_isUsingStartPageNumber(v7, v8, v9))
  {
    v4 = v4 + objc_msgSend_startPageNumber(v7, v10, v11) - 1;
  }

  if (!objc_msgSend_shouldBeDisplayed(v7, v10, v11))
  {
    v4 = 0;
  }

  infoProviderPageCountCache = self->_infoProviderPageCountCache;
  v14 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, v4);
  objc_msgSend_setObject_forUncopiedKey_(infoProviderPageCountCache, v15, v14, v7);

  return v4;
}

- (int64_t)p_pageCountForInfoProvider:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_infoProvider(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_infoProviderPageCountCache, v8, v4);
  v12 = v9;
  if (v9)
  {
    updated = objc_msgSend_integerValue(v9, v10, v11);
  }

  else
  {
    objc_msgSend_setInfoProvider_(self, v10, v4);
    updated = objc_msgSend_p_updateCachedPageCountForCurrentInfoProvider(self, v14, v15);
    objc_msgSend_setInfoProvider_(self, v16, v7);
  }

  return updated;
}

- (void)p_computeSubsequentPageCountForCurrentSheet
{
  v4 = objc_msgSend_infoProvider(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNPageController p_computeSubsequentPageCountForCurrentSheet]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 360, 0, "invalid nil value for '%{public}s'", "self.infoProvider");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  self->_computingPageCounts = 1;
  v14 = objc_msgSend_documentRoot(self, v5, v6);
  v17 = objc_msgSend_sheets(v14, v15, v16);

  v21 = objc_msgSend_sheet(self, v18, v19);
  if (v21)
  {
    v22 = objc_msgSend_indexOfObject_(v17, v20, v21);
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v25 = objc_msgSend_count(v17, v23, v24);
    if (v22 != 0x7FFFFFFFFFFFFFFFLL && v22 != v25 - 1)
    {
      v27 = objc_msgSend_subarrayWithRange_(v17, v26, v22 + 1, v25 + ~v22);
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_275F38A1C;
      v29[3] = &unk_27A6A32E0;
      v29[4] = self;
      v29[5] = &v30;
      objc_msgSend_enumerateObjectsUsingBlock_(v27, v28, v29);
    }

    self->_subsequentPageCount = v31[3];
    self->_computingPageCounts = 0;
    _Block_object_dispose(&v30, 8);
  }

  else
  {
    self->_computingPageCounts = 0;
  }
}

- (void)p_computePriorPageCountForCurrentSheet
{
  v4 = objc_msgSend_infoProvider(self, a2, v2);

  if (!v4)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TNPageController p_computePriorPageCountForCurrentSheet]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 398, 0, "invalid nil value for '%{public}s'", "self.infoProvider");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  self->_computingPageCounts = 1;
  v16 = objc_msgSend_sheet(self, v5, v6);
  if (v16)
  {
    v17 = objc_msgSend_documentRoot(self, v14, v15);
    v20 = objc_msgSend_sheets(v17, v18, v19);

    v23 = objc_msgSend_infoProvider(self, v21, v22);
    v25 = objc_msgSend_indexOfObject_(v20, v24, v23);

    v27 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = objc_msgSend_subarrayWithRange_(v20, v26, 0, v25);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_275F38CF8;
      v30[3] = &unk_27A6A32E0;
      v30[4] = self;
      v30[5] = &v31;
      objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v28, v29, 2, v30);

      v27 = v32[3];
    }

    self->_priorPageCount = v27;
    self->_computingPageCounts = 0;
    _Block_object_dispose(&v31, 8);
  }

  else
  {
    self->_computingPageCounts = 0;
  }
}

- (CGSize)pageSize
{
  v4 = objc_msgSend_printProperties(self, a2, v2);
  objc_msgSend_contentScale(self, v5, v6);
  v8 = v7;
  isPortrait = objc_msgSend_isPortrait(self, v9, v10);
  objc_msgSend_pageSizeForContentScale_portraitOrientation_(v4, v12, isPortrait, v8);
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGRect)contentFrame
{
  objc_msgSend__measureHeadersAndFootersIfNecessary(self, a2, v2);
  v6 = objc_msgSend_printProperties(self, v4, v5);
  objc_msgSend_contentScale(self, v7, v8);
  v10 = v9;
  isPortrait = objc_msgSend_isPortrait(self, v11, v12);
  objc_msgSend_headerTextHeight(self, v14, v15);
  v17 = v16;
  objc_msgSend_footerTextHeight(self, v18, v19);
  objc_msgSend_contentRectForContentScale_portraitOrientation_headerHeight_footerHeight_(v6, v20, isPortrait, v10, v17, v21);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = v23;
  v31 = v25;
  v32 = v27;
  v33 = v29;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGSize)pageSizeWithGutter
{
  v4 = objc_msgSend_printProperties(self, a2, v2);
  objc_msgSend_contentScale(self, v5, v6);
  v8 = v7;
  objc_msgSend_userViewScale(self, v9, v10);
  v12 = v11;
  isPortrait = objc_msgSend_isPortrait(self, v13, v14);
  objc_msgSend_pageSizeWithGutterForContentScale_userViewScale_portraitOrientation_(v4, v16, isPortrait, v8, v12);
  v18 = v17;
  v20 = v19;

  v21 = v18;
  v22 = v20;
  result.height = v22;
  result.width = v21;
  return result;
}

+ (NSMapTable)cachedAutoFitContentScaleDictionary
{
  if (qword_280A3DFC0 != -1)
  {
    sub_275F4AC0C();
  }

  v3 = qword_280A3DFB8;

  return v3;
}

- (int64_t)p_priorPageCount
{
  v4 = objc_msgSend_infoProvider(self, a2, v2);

  if (!v4)
  {
    return 0;
  }

  v7 = objc_msgSend_infoProvider(self, v5, v6);
  isUsingStartPageNumber = objc_msgSend_isUsingStartPageNumber(v7, v8, v9);

  if (isUsingStartPageNumber)
  {
    v13 = objc_msgSend_infoProvider(self, v11, v12);
    priorPageCount = objc_msgSend_startPageNumber(v13, v14, v15) - 1;
  }

  else
  {
    priorPageCount = self->_priorPageCount;
    if (priorPageCount == -1)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TNPageController p_priorPageCount]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 475, 0, "expected inequality between %{public}s and %{public}s", "_priorPageCount", "kTNPrintViewUndefinedPageCount");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
      return self->_priorPageCount;
    }
  }

  return priorPageCount;
}

+ (double)p_unclampedAutoFitContentScaleForInfoProvider:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_class();
  v7 = objc_msgSend_cachedAutoFitContentScaleDictionary(v4, v5, v6);
  v10 = v7;
  if (!v3 || (objc_msgSend_objectForKey_(v7, v8, v3), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = MEMORY[0x277CBF3A0];
    x = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
    objc_msgSend_printableInfos(v3, v8, v9);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v17 = v72 = 0u;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v71, v75, 16);
    if (v21)
    {
      v22 = *v72;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v72 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v24 = objc_msgSend_partitioner(*(*(&v71 + 1) + 8 * i), v19, v20, v71);
          objc_msgSend_totalPartitionFrame(v24, v25, v26);
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v77.origin.x = x;
          v77.origin.y = y;
          v77.size.width = width;
          v77.size.height = height;
          v83.origin.x = v28;
          v83.origin.y = v30;
          v83.size.width = v32;
          v83.size.height = v34;
          v78 = CGRectUnion(v77, v83);
          x = v78.origin.x;
          y = v78.origin.y;
          width = v78.size.width;
          height = v78.size.height;
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v71, v75, 16);
      }

      while (v21);
    }

    v79.origin.x = x;
    v79.origin.y = y;
    v79.size.width = width;
    v79.size.height = height;
    v35 = CGRectEqualToRect(v79, *v12);
    v38 = 1.0;
    if (!v35)
    {
      v39 = objc_msgSend_inPortraitPageOrientation(v3, v36, v37, 1.0);
      v42 = objc_msgSend_documentRoot(v3, v40, v41);
      objc_msgSend_pageSize(v42, v43, v44);
      v46 = v45;
      v48 = v47;
      v49 = [TNPrintProperties alloc];
      objc_msgSend_printMargins(v3, v50, v51);
      v58 = objc_msgSend_initWithPageSize_printMargins_(v49, v52, v53, v46, v48, v54, v55, v56, v57);
      objc_msgSend_contentRectForContentScale_portraitOrientation_headerHeight_footerHeight_(v58, v59, v39, 1.0, 0.0, 0.0);
      v60 = CGRectGetWidth(v80);
      if (objc_msgSend_layoutIsLeftToRight(v3, v61, v62))
      {
        v81.origin.x = x;
        v81.origin.y = y;
        v81.size.width = width;
        v81.size.height = height;
        MaxX = CGRectGetMaxX(v81);
      }

      else
      {
        v82.origin.x = x;
        v82.origin.y = y;
        v82.size.width = width;
        v82.size.height = height;
        MaxX = -CGRectGetMinX(v82);
      }

      objc_msgSend_contentScaleForIntegralWidthWithContentScale_portraitOrientation_(v58, v63, v39, v60 / MaxX, v71);
      v66 = v65;

      v38 = floor(fmin(v66, 1.0) * 100.0) / 100.0;
    }

    v11 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v36, v37, v38, v71);
    if (v3)
    {
      objc_msgSend_setObject_forKey_(v10, v67, v11, v3);
    }
  }

  objc_msgSend_tsu_CGFloatValue(v11, v8, v9);
  v69 = v68;

  return v69;
}

+ (double)autoFitContentScaleForInfoProvider:(id)a3
{
  objc_msgSend_p_unclampedAutoFitContentScaleForInfoProvider_(a1, a2, a3);
  if (result <= 0.25)
  {
    result = 0.25;
  }

  if (result > 1.75)
  {
    return 1.75;
  }

  return result;
}

- (void)updateUserViewScale
{
  objc_msgSend_printViewDefaultUserViewScale(self, a2, v2);

  MEMORY[0x2821F9670](self, sel_setUserViewScale_, v4);
}

- (void)updateViewScale
{
  objc_msgSend_contentScale(self, a2, v2);
  if (v6 != 0.00999999978)
  {
    v16 = objc_msgSend_delegate(self, v4, v5);
    objc_msgSend_contentScale(self, v7, v8);
    v10 = v9;
    objc_msgSend_userViewScale(self, v11, v12);
    objc_msgSend_setViewScale_(v16, v14, v15, v10 * v13);
  }
}

- (void)updateContentScale
{
  objc_msgSend_i_invalidatePageLayoutCache(self, a2, v2);
  objc_msgSend_i_invalidateHintCache(self, v4, v5);
  objc_msgSend_invalidatePageLayoutGeometries(self, v6, v7);
  objc_msgSend_updateViewScale(self, v8, v9);
  objc_msgSend__updateCanvasViewScale(self, v10, v11);
  if (self->_inDynamicContentScaleChange || (objc_msgSend__resetAnnotationPrintingHelper(self, v12, v13), self->_inDynamicContentScaleChange))
  {
    if (self->_cachedPageCountDuringDynamicContentScaleChange != -1)
    {
      v14 = objc_msgSend_numPages(self, v12, v13);
      if (v14 != self->_cachedPageCountDuringDynamicContentScaleChange)
      {
        self->_cachedPageCountDuringDynamicContentScaleChange = v14;
        objc_msgSend_removeAllObjects(self->_headerLayerCache, v15, v16);
        footerLayerCache = self->_footerLayerCache;

        objc_msgSend_removeAllObjects(footerLayerCache, v17, v18);
      }
    }
  }
}

- (void)updatePrintMargins
{
  objc_msgSend_i_invalidatePageLayoutCache(self, a2, v2);
  objc_msgSend_i_invalidateHintCache(self, v4, v5);
  printProperties = self->_printProperties;
  self->_printProperties = 0;
}

- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForContent
{
  if (!self->_maxPageCoordinateValid)
  {
    objc_msgSend_pageRangeForContentWithUpperBound_(self, a2, 0xFFFE0000FFFELL);
    self->_maxPageCoordinateValid = 1;
  }

  v3 = 0;
  maxPageCoordinate = self->_maxPageCoordinate;
  result.var1 = maxPageCoordinate;
  result.var0 = v3;
  return result;
}

- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForContentWithUpperBound:(TSUCellCoord)a3
{
  v35 = *MEMORY[0x277D85DE8];
  maxPageCoordinate = self->_maxPageCoordinate;
  if (a3.row > maxPageCoordinate.row || a3.column > maxPageCoordinate.column)
  {
    objc_msgSend__printableInfos(self, a2, *&a3);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v7 = v30 = 0u;
    maxPageCoordinate = 0;
    v26 = 0;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v29, v34, 16);
    if (v10)
    {
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = objc_msgSend_pageRangeForInfo_upperBound_(self, v9, *(*(&v29 + 1) + 8 * i), a3, v29);
          v14 = v9 >> 32;
          if (v26 >= v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = v26;
          }

          if (maxPageCoordinate.column >= WORD2(v9))
          {
            v14 = HIDWORD(*&maxPageCoordinate);
          }

          if (maxPageCoordinate.row <= v9)
          {
            row = v9;
          }

          else
          {
            row = maxPageCoordinate.row;
          }

          v33 = row & 0xFFFF0000FFFFFFFFLL | (v14 << 32);
          if (row >= v15)
          {
            v18 = HIDWORD(v26);
            if (WORD2(v26) >= WORD2(v13))
            {
              v18 = HIDWORD(v13);
            }

            v19 = v15 & 0xFFFF0000FFFFFFFFLL | (v18 << 32);
            v23 = row != 0xFFFF && v15 != 0xFFFF && v14 >= v18 && v14 != 0xFFFFLL;
            v24 = v18 != 0xFFFFLL;
            v25 = !v23 || !v24;
            if (v23 && v24)
            {
              v26 = v19;
            }

            else
            {
              v26 = 0xFFFF0000FFFFLL;
            }

            v17 = &v33;
            if (v25)
            {
              v17 = &qword_275F5EFC8;
            }
          }

          else
          {
            v26 = 0xFFFF0000FFFFLL;
            v17 = &qword_275F5EFC8;
          }

          maxPageCoordinate = *v17;
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v29, v34, 16);
      }

      while (v10);
    }

    self->_maxPageCoordinate = maxPageCoordinate;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = maxPageCoordinate;
  result.var1 = v28;
  result.var0 = v27;
  return result;
}

- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForContentAndAddendaWithUpperBound:(TSUCellCoord)a3
{
  v4 = objc_msgSend_pageRangeForContentWithUpperBound_(self, a2, *&a3);
  v6 = v5;
  v8 = objc_msgSend_numPagesForAddenda(self, v5, v7);
  v11 = objc_msgSend_infoProvider(self, v9, v10);
  v14 = objc_msgSend_pageOrder(v11, v12, v13);

  v15 = v6 & 0xFFFFFFFF00000000 | (vcvtpd_u64_f64(v8 / (WORD2(v6) - WORD2(v4) + 1)) + v6);
  v16 = v6 & 0xFFFF0000FFFFFFFFLL | ((vcvtpd_s64_f64(v8 / (v6 - v4 + 1)) + WORD2(v6)) << 32);
  if (v14)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = v4;
  result.var1 = v17;
  result.var0 = v18;
  return result;
}

- (TSUCellCoord)pageCoordinateForMaxVisiblePage
{
  v4 = objc_msgSend_delegate(self, a2, v2);
  objc_msgSend_canvasScrollViewSize(v4, v5, v6);

  v9 = objc_msgSend_infoProvider(self, v7, v8);
  objc_msgSend_layoutIsRightToLeft(v9, v10, v11);

  return MEMORY[0x2821F9670](self, sel_p_pageCoordinateForPageLayoutAtDevicePoint_, v12);
}

- (CGSize)contentSizeForCanvasLayer
{
  objc_msgSend_pageRangeForContentAndAddendaWithUpperBound_(self, a2, *&self->_maxPageCoordinate);
  v4 = objc_msgSend_pageLayoutGeometryForPageCoordinate_(self, v3, v3);
  objc_msgSend_frame(v4, v5, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v17 = objc_msgSend_infoProvider(self, v15, v16);
  if (objc_msgSend_layoutIsLeftToRight(v17, v18, v19))
  {
    v25.origin.x = v8;
    v25.origin.y = v10;
    v25.size.width = v12;
    v25.size.height = v14;
    MaxX = CGRectGetMaxX(v25);
  }

  else
  {
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    MaxX = -CGRectGetMinX(v26);
  }

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  MaxY = CGRectGetMaxY(v27);

  v22 = MaxX;
  v23 = MaxY;
  result.height = v23;
  result.width = v22;
  return result;
}

- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeWithPlaceholdersWithUpperBound:(TSUCellCoord)a3
{
  v4 = objc_msgSend_pageRangeForContentAndAddendaWithUpperBound_(self, a2, *&a3);
  v6 = v5;
  v8 = objc_msgSend_pageCoordinateForMaxVisiblePage(self, v5, v7);
  if ((v8 + v6 + 1) < 0xFFFE)
  {
    v9 = (v8 + v6 + 1);
  }

  else
  {
    v9 = 65534;
  }

  v10 = v6 & 0xFFFF000000000000 | v9;
  if ((WORD2(v8) + WORD2(v6) + 1) >= 0xFFFEu)
  {
    v11 = 65534;
  }

  else
  {
    v11 = (WORD2(v8) + WORD2(v6) + 1);
  }

  v12 = (v10 | (v11 << 32));
  v13 = v4;
  result.var1 = v12;
  result.var0 = v13;
  return result;
}

- (unint64_t)numPagesForAddenda
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_additionalContentProviders(self, a2, v2, 0);
  v5 = 0;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v5 += objc_msgSend_numberOfAdditionalPages(*(*(&v12 + 1) + 8 * v10++), v6, v7);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v12, v16, 16);
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isPagePlaceholderAtPageCoordinate:(TSUCellCoord)a3
{
  v5 = objc_msgSend_pageRangeForContentWithUpperBound_(self, a2, *&a3);
  if (a3.row <= v6 && a3.column <= WORD2(v6) && v5 <= a3.row && WORD2(v5) <= a3.column)
  {
    return 0;
  }

  v8 = objc_msgSend__pageIndexForPageCoordinate_(self, v6, *&a3);
  return objc_msgSend__isPageAddendumAtPageIndex_(self, v9, v8) ^ 1;
}

- (unint64_t)_pageIndexForPageCoordinate:(TSUCellCoord)a3
{
  v5 = objc_msgSend_pageRangeForContent(self, a2, *&a3);
  v7 = v6;
  v9 = objc_msgSend_infoProvider(self, v6, v8);
  v12 = objc_msgSend_pageOrder(v9, v10, v11);

  if (v12)
  {
    v13 = WORD2(v7) - WORD2(v5) + 1;
    if (a3.column < v13)
    {
      return a3.column + v13 * a3.row;
    }
  }

  else
  {
    v15 = v7 - v5 + 1;
    if (v15 > a3.row)
    {
      return a3.row + v15 * a3.column;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)pageNumberForPageCoordinate:(TSUCellCoord)a3
{
  v5 = objc_msgSend_infoProvider(self, a2, *&a3);
  v8 = v5;
  if ((*&a3 & 0xFFFF00000000) != 0)
  {
    goto LABEL_7;
  }

  if (!objc_msgSend_pageOrder(v5, v6, v7))
  {
    goto LABEL_10;
  }

  v10 = objc_msgSend_infoProvider(self, v6, v9);
  if (objc_msgSend_isAutofitOn(v10, v11, v12))
  {
    v15 = objc_msgSend_delegate(self, v13, v14);
    if (objc_msgSend_isScaleChanging(v15, v16, v17))
    {

      goto LABEL_6;
    }

    objc_msgSend_contentScale(self, v18, v19);
    v24 = v23;
    v25 = objc_opt_class();
    objc_msgSend_p_unclampedAutoFitContentScaleForInfoProvider_(v25, v26, v8);
    v28 = v27;

    if (v24 > v28)
    {
      goto LABEL_7;
    }

LABEL_10:
    v20 = a3.row + 1;
    goto LABEL_8;
  }

LABEL_6:

LABEL_7:
  v20 = objc_msgSend__pageIndexForPageCoordinate_(self, v6, *&a3) + 1;
LABEL_8:
  v21 = objc_msgSend_p_priorPageCount(self, v6, v9);

  return v21 + v20;
}

- (BOOL)shouldSuppressBackgroundsForPageIndex:(unint64_t)a3
{
  if (objc_msgSend__isPageAddendumAtPageIndex_(self, a2, a3))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = objc_msgSend_sheet(self, v4, v5);
    v6 = objc_msgSend_printBackgrounds(v7, v8, v9) ^ 1;
  }

  return v6;
}

- (BOOL)_isPageAddendumAtPageCoordinate:(TSUCellCoord)a3
{
  hasAddendumContent = objc_msgSend__hasAddendumContent(self, a2, *&a3);
  if (hasAddendumContent)
  {
    v8 = objc_msgSend__pageIndexForPageCoordinate_(self, v6, *&a3);

    LOBYTE(hasAddendumContent) = objc_msgSend__isPageAddendumAtPageIndex_(self, v7, v8);
  }

  return hasAddendumContent;
}

- (BOOL)_isPageAddendumAtPageIndex:(unint64_t)a3
{
  hasAddendumContent = objc_msgSend__hasAddendumContent(self, a2, a3);
  if (hasAddendumContent)
  {
    LOBYTE(hasAddendumContent) = objc_msgSend_numPagesForContent(self, v6, v7) <= a3 && objc_msgSend_numPages(self, v8, v9) > a3;
  }

  return hasAddendumContent;
}

- (CGRect)firstPartitionFrameForInfo:(id)a3 outStartPageCoordinate:(TSUCellCoord *)a4
{
  v6 = objc_msgSend_partitioner(a3, a2, a3);
  objc_msgSend_totalPartitionFrame(v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  objc_msgSend_contentFrame(self, v17, v18);
  v20 = v19;
  v22 = v21;
  v25 = objc_msgSend_infoProvider(self, v23, v24);
  IsLeftToRight = objc_msgSend_layoutIsLeftToRight(v25, v26, v27);

  v29 = v10;
  if (IsLeftToRight)
  {
    v30 = fmod(v10, v20);
    if (v10 >= 0.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = v10;
    }

    v34 = fmod(v12, v22);
    if (v12 >= 0.0)
    {
      v35 = v34;
    }

    else
    {
      v35 = v12;
    }

    v36 = v20 - v31;
    if (!a4)
    {
      goto LABEL_16;
    }

LABEL_15:
    *a4 = objc_msgSend_pageCoordinateForDrawableAtUnscaledPoint_(self, v32, v33, v10, v12);
    goto LABEL_16;
  }

  v37 = v12;
  v38 = v14;
  v39 = v16;
  MaxX = CGRectGetMaxX(*&v29);
  v48.origin.x = v10;
  v48.origin.y = v12;
  v48.size.width = v14;
  v48.size.height = v16;
  MinY = CGRectGetMinY(v48);
  v42 = fmod(MaxX, v20);
  v31 = -v20;
  v43 = fmod(v12, v22);
  if (v12 >= 0.0)
  {
    v35 = v43;
  }

  else
  {
    v35 = v12;
  }

  v36 = v20 + v42;
  if (a4)
  {
    v10 = MaxX;
    v12 = MinY;
    goto LABEL_15;
  }

LABEL_16:
  v44 = v22 - v35;
  v45 = v31;
  v46 = v35;
  v47 = v36;
  result.size.height = v44;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (void)_measureHeadersAndFootersIfNecessary
{
  objc_msgSend_headerTextHeight(self, a2, v2);
  if (v6 == -1.0 || (objc_msgSend_footerTextHeight(self, v4, v5), v7 == -1.0))
  {

    objc_msgSend_p_measureHeadersAndFooters(self, v4, v5);
  }
}

- (void)p_measureHeadersAndFooters
{
  objc_msgSend_setHeaderTextHeight_(self, a2, v2, -1.0);
  objc_msgSend_setFooterTextHeight_(self, v4, v5, -1.0);
  v6 = [TNPageLayoutContainer alloc];
  v48 = objc_msgSend_initWithPageController_pageCoordinate_(v6, v7, self, 0);
  objc_msgSend_performBlockForEachHeaderFooterLayout_(v48, v8, &unk_2884F63A0);
  objc_msgSend_headerHeight(v48, v9, v10);
  v12 = v11;
  objc_msgSend_contentScale(self, v13, v14);
  objc_msgSend_setHeaderTextHeight_(self, v16, v17, v12 * v15);
  objc_msgSend_footerHeight(v48, v18, v19);
  v21 = v20;
  objc_msgSend_contentScale(self, v22, v23);
  objc_msgSend_setFooterTextHeight_(self, v25, v26, v21 * v24);
  objc_msgSend_headerTextHeight(self, v27, v28);
  if (v31 == -1.0)
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TNPageController p_measureHeadersAndFooters]");
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 837, 0, "Invalid header height");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
  }

  objc_msgSend_footerTextHeight(self, v29, v30);
  if (v40 == -1.0)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TNPageController p_measureHeadersAndFooters]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 838, 0, "Invalid footer height");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
  }
}

- (void)layoutInPageRange:(id)a3 forLayoutController:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  objc_msgSend_p_measureHeadersAndFooters(v8, v9, v10);
  objc_msgSend_p_updateVisiblePageRange_forLayoutController_(v8, v11, var0, var1, v7);
  v14 = objc_msgSend__printableInfos(v8, v12, v13);
  v15 = objc_alloc(MEMORY[0x277CBEB18]);
  v18 = objc_msgSend_count(v8->_hintCacheDictionary, v16, v17);
  v20 = objc_msgSend_initWithCapacity_(v15, v19, v18);
  hintCacheDictionary = v8->_hintCacheDictionary;
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = sub_275F3A754;
  v29 = &unk_27A6A3308;
  v22 = v14;
  v30 = v22;
  v23 = v20;
  v31 = v23;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(hintCacheDictionary, v24, &v26);
  objc_msgSend_removeObjectsForKeys_(v8->_hintCacheDictionary, v25, v23, v26, v27, v28, v29);

  objc_sync_exit(v8);
}

- (TSUCellCoord)pageCoordinateForPageLayoutAtUnscaledPoint:(CGPoint)a3
{
  v5 = objc_msgSend_printProperties(self, a2, v3);
  objc_msgSend_contentScale(self, v6, v7);
  v9 = v8;
  objc_msgSend_userViewScale(self, v10, v11);
  v13 = v12;
  isPortrait = objc_msgSend_isPortrait(self, v14, v15);
  objc_msgSend_pageSizeWithGutterForContentScale_userViewScale_portraitOrientation_(v5, v17, isPortrait, v9, v13);
  v20 = objc_msgSend__pageCoordinateWithPageSize_forPoint_(self, v18, v19);

  return v20;
}

- (TSUCellCoord)p_pageCoordinateForPageLayoutAtDevicePoint:(CGPoint)a3
{
  v5 = objc_msgSend_printProperties(self, a2, v3);
  objc_msgSend_userViewScale(self, v6, v7);
  v9 = v8;
  isPortrait = objc_msgSend_isPortrait(self, v10, v11);
  objc_msgSend_pageSizeWithGutterForContentScale_userViewScale_portraitOrientation_(v5, v13, isPortrait, 1.0, v9);
  objc_msgSend_userViewScale(self, v14, v15);
  TSUMultiplySizeScalar();
  v18 = objc_msgSend__pageCoordinateWithPageSize_forPoint_(self, v16, v17);

  return v18;
}

- (TSUCellCoord)pageCoordinateForDrawableAtUnscaledPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_msgSend_contentFrame(self, a2, v3);

  return objc_msgSend__pageCoordinateWithPageSize_forPoint_(self, v7, v8, v9, v10, x, y);
}

- (TSUCellCoord)_pageCoordinateWithPageSize:(CGSize)a3 forPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  height = a3.height;
  width = a3.width;
  v9 = objc_msgSend_infoProvider(self, a2, v4);
  IsLeftToRight = objc_msgSend_layoutIsLeftToRight(v9, v10, v11);
  v13 = -x;
  if (IsLeftToRight)
  {
    v13 = x;
  }

  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v16 = v14 / width;
  if (COERCE__INT64(fabs(v14 / width)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v16 > 0.0 && v16 > 65535.0)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TNPageController _pageCoordinateWithPageSize:forPoint:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 900, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    v17 = 0xFFFF00000000;
    goto LABEL_11;
  }

  if (v16 < 0.0)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TNPageController _pageCoordinateWithPageSize:forPoint:]");
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 900, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
LABEL_21:
    v17 = 0;
    goto LABEL_11;
  }

  v17 = v16 << 32;
LABEL_11:
  if (y >= 0.0)
  {
    v19 = y / height;
    if (COERCE__INT64(fabs(y / height)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v19 > 0.0 && v19 > 4294967300.0)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TNPageController _pageCoordinateWithPageSize:forPoint:]");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 901, 0, "Out-of-bounds type assignment was clamped to max");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
        v18 = 0xFFFFFFFFLL;
        return (v18 | v17);
      }

      if (v19 >= 0.0)
      {
        v18 = v19;
        return (v18 | v17);
      }

      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TNPageController _pageCoordinateWithPageSize:forPoint:]");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 901, 0, "Out-of-bounds type assignment was clamped to min");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
    }
  }

  v18 = 0;
  return (v18 | v17);
}

- (id)pageLayoutGeometryForPrintingAtPageCoordinate:(TSUCellCoord)a3
{
  v5 = objc_msgSend_printProperties(self, a2, *&a3);
  objc_msgSend_contentScale(self, v6, v7);
  v9 = v8;
  isPortrait = objc_msgSend_isPortrait(self, v10, v11);
  objc_msgSend_pageSizeForContentScale_portraitOrientation_(v5, v13, isPortrait, v9);
  v15 = v14;
  v17 = v16;

  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeTranslation(&v23, v15 * a3.column, v17 * a3.row);
  v18 = objc_alloc(MEMORY[0x277D80300]);
  v22 = v23;
  v20 = objc_msgSend_initWithSize_transform_(v18, v19, &v22, v15, v17);

  return v20;
}

- (id)pageLayoutGeometryForPageCoordinate:(TSUCellCoord)a3
{
  v5 = objc_msgSend_infoProvider(self, a2, *&a3);
  IsLeftToRight = objc_msgSend_layoutIsLeftToRight(v5, v6, v7);

  v11 = objc_msgSend_printProperties(self, v9, v10);
  objc_msgSend_contentScale(self, v12, v13);
  v15 = v14;
  isPortrait = objc_msgSend_isPortrait(self, v16, v17);
  objc_msgSend_pageSizeForContentScale_portraitOrientation_(v11, v19, isPortrait, v15);
  v21 = v20;
  v23 = v22;

  objc_msgSend_pageSizeWithGutter(self, v24, v25);
  memset(&v36, 0, sizeof(v36));
  column = a3.column;
  v29 = -(v21 + v28 * column);
  v30 = v28 * column;
  if (!IsLeftToRight)
  {
    v30 = v29;
  }

  CGAffineTransformMakeTranslation(&v36, v30, v26 * a3.row);
  v31 = objc_alloc(MEMORY[0x277D80300]);
  v35 = v36;
  v33 = objc_msgSend_initWithSize_transform_(v31, v32, &v35, v21, v23);

  return v33;
}

- (CGRect)printingLayoutRectForPageIndex:(unint64_t)a3
{
  v4 = objc_msgSend_pageCoordinateForPageIndex_(self, a2, a3);
  v7 = objc_msgSend_printProperties(self, v5, v6);
  objc_msgSend_contentScale(self, v8, v9);
  v11 = v10;
  isPortrait = objc_msgSend_isPortrait(self, v12, v13);
  objc_msgSend_pageSizeForContentScale_portraitOrientation_(v7, v15, isPortrait, v11);
  v17 = v16;
  v19 = v18;

  v20 = v17 * WORD2(v4);
  v21 = v19 * v4;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)p_pageLayoutAtCoordinate:(TSUCellCoord)a3 shouldCachePageLayout:(BOOL)a4
{
  v4 = a4;
  v8 = objc_msgSend_objectForPageCoordinate_(self->_pageLayoutCache, a2, *&a3);
  if (!v8)
  {
    v8 = objc_msgSend__createPageLayoutForCoordinate_(self, v7, *&a3);
    if (v4)
    {
      objc_msgSend_setObject_forPageCoordinate_(self->_pageLayoutCache, v9, v8, a3);
    }
  }

  return v8;
}

- (id)_createPageLayoutForCoordinate:(TSUCellCoord)a3
{
  v5 = objc_msgSend_pageRangeForContentWithUpperBound_(self, a2, *&a3);
  if (a3.row > v6 || a3.column > WORD2(v6) || v5 > a3.row || WORD2(v5) > a3.column)
  {
    isPageAddendumAtPageCoordinate = objc_msgSend__isPageAddendumAtPageCoordinate_(self, v6, *&a3);
    v12 = off_27A6A2030;
    if (!isPageAddendumAtPageCoordinate)
    {
      v12 = &off_27A6A2038;
    }

    v13 = objc_alloc(*v12);
    v9 = objc_msgSend_initWithPageController_pageCoordinate_(v13, v14, self, a3);
  }

  else
  {
    v7 = [TNPageLayoutContainer alloc];
    v9 = objc_msgSend_initWithPageController_pageCoordinate_(v7, v8, self, a3);
    objc_msgSend_layoutPrintableInfosIntoPageLayout_atPageCoordinate_(self, v10, v9, a3);
  }

  return v9;
}

- (TSUCellCoord)pageCoordinateForPageIndex:(unint64_t)a3
{
  objc_msgSend_pageRangeForContent(self, a2, a3);
  v6 = v5;
  v8 = objc_msgSend_infoProvider(self, v5, v7);
  v11 = objc_msgSend_pageOrder(v8, v9, v10);

  if (v11)
  {
    if (WORD2(v6) == 0xFFFF)
    {
      LODWORD(v12) = 0;
    }

    else
    {
      v12 = a3 / (WORD2(v6) + 1);
    }

    LOWORD(v13) = a3 - v12 * (WORD2(v6) + 1);
  }

  else
  {
    v12 = (v6 + 1);
    if (v6 == -1)
    {
      LOWORD(v13) = 0;
    }

    else
    {
      v13 = a3 / v12;
    }

    LODWORD(v12) = a3 - v12 * v13;
  }

  return ((v13 << 32) | v12);
}

- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForPageIndex:(unint64_t)a3
{
  v3 = objc_msgSend_pageCoordinateForPageIndex_(self, a2, a3);
  v4 = v3;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)didExitPrintPreview
{
  objc_msgSend_removeLayoutsFromPages(self, a2, v2);
  objc_msgSend_invalidateDrawableLayouts(self, v4, v5);

  MEMORY[0x2821F9670](self, sel_p_invalidatePageCounts, v6);
}

- (void)i_invalidateForHeaderChange
{
  objc_msgSend_headerTextHeight(self, a2, v2);
  v5 = v4;
  objc_msgSend_footerTextHeight(self, v6, v7);
  v9 = v8;
  objc_msgSend_p_measureHeadersAndFooters(self, v10, v11);
  objc_msgSend_headerTextHeight(self, v12, v13);
  if (v5 != v16 || (objc_msgSend_footerTextHeight(self, v14, v15), v9 != v17))
  {
    objc_msgSend_i_invalidatePageLayoutCache(self, v14, v15);
    objc_msgSend_i_invalidateHintCache(self, v18, v19);

    objc_msgSend__resetAnnotationPrintingHelper(self, v20, v21);
  }
}

- (void)i_invalidatePageLayoutCache
{
  self->_maxPageCoordinateValid = 0;
  self->_maxPageCoordinate = 0;
  objc_msgSend_removeAllObjects(self->_pageLayoutCache, a2, v2);
}

- (void)p_invalidatePageCounts
{
  objc_msgSend_removeAllObjects(self->_infoProviderPageCountCache, a2, v2);
  self->_priorPageCount = -1;
  self->_subsequentPageCount = -1;
  self->_pageCountsValid = 0;
}

- (void)invalidatePageLayoutGeometries
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_msgSend_allObjects(self->_pageLayoutCache, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_msgSend_invalidateSize(v10, v5, v6);
        objc_msgSend_invalidatePosition(v10, v11, v12);
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v13, v17, 16);
    }

    while (v7);
  }
}

- (void)invalidateDrawableLayouts
{
  objc_msgSend_i_invalidatePageLayoutCache(self, a2, v2);
  hintCacheDictionary = self->_hintCacheDictionary;

  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(hintCacheDictionary, v4, &unk_2884F63C0);
}

- (void)i_invalidateHintCache
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = objc_msgSend_allValues(self->_hintCacheDictionary, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v10, v14, 16);
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_invalidate(*(*(&v10 + 1) + 8 * v9++), v5, v6);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v10, v14, 16);
    }

    while (v7);
  }
}

- (void)p_postAutoFitContentScaleDidChangeNotification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275F3B670;
  block[3] = &unk_27A6A2868;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_postAdditionalContentChangedNotification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_275F3B758;
  block[3] = &unk_27A6A2868;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)p_invalidateCachedAutoFitContentScaleForInfoProvider:(id)a3 notify:(BOOL)a4
{
  v4 = a4;
  v34 = a3;
  if (!v34)
  {
    v18 = objc_opt_class();
    v21 = objc_msgSend_cachedAutoFitContentScaleDictionary(v18, v19, v20);
    objc_msgSend_removeAllObjects(v21, v22, v23);

LABEL_6:
    objc_msgSend_i_invalidatePageLayoutCache(self, v16, v17);
    objc_msgSend_i_invalidateHintCache(self, v25, v26);
    goto LABEL_7;
  }

  v6 = objc_opt_class();
  v9 = objc_msgSend_cachedAutoFitContentScaleDictionary(v6, v7, v8);
  objc_msgSend_removeObjectForKey_(v9, v10, v34);

  v15 = objc_msgSend_infoProvider(self, v11, v12);
  if (v15 != v34)
  {

    goto LABEL_7;
  }

  isAutofitOn = objc_msgSend_isAutofitOn(v34, v13, v14);

  if (isAutofitOn)
  {
    goto LABEL_6;
  }

LABEL_7:
  v27 = objc_msgSend_infoProvider(self, v16, v17);

  if (v34)
  {
    v30 = v27 == v34;
  }

  else
  {
    v30 = 1;
  }

  v31 = v30;
  if (v4 && v31)
  {
    if (objc_msgSend_isProcessingChanges(self, v28, v29))
    {
      objc_msgSend_setPostAutoFitContentScaleDidChangeNotificationAfterProcessingChanges_(self, v32, 1);
    }

    else
    {
      objc_msgSend_p_postAutoFitContentScaleDidChangeNotification(self, v32, v33);
    }
  }
}

- (id)i_layerForHeaderType:(int64_t)a3 fragment:(int64_t)a4 atPageCoordinate:(TSUCellCoord)a5
{
  v6 = 112;
  if (!a3)
  {
    v6 = 104;
  }

  v7 = objc_msgSend_objectForPageCoordinate_(*(&self->super.isa + v6), a2, *&a5);
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v8, a4);
  v11 = objc_msgSend_objectForKeyedSubscript_(v7, v10, v9);

  return v11;
}

- (id)i_childLayersAtAddendumPageCoordinate:(TSUCellCoord)a3
{
  v20 = 0;
  v4 = objc_msgSend__pageIndexForPageCoordinate_(self, a2, *&a3);
  v6 = objc_msgSend_additionalContentProviderAtPageIndex_outPageIndexInProvider_(self, v5, v4, &v20);
  v9 = objc_msgSend_addendumContentCache(self, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v6);

  v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v12, v20);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v13);
  v18 = objc_msgSend_copy(v15, v16, v17);

  return v18;
}

- (void)i_addChildLayer:(id)a3 atAddendumPageCoordinate:(TSUCellCoord)a4
{
  v6 = a3;
  v29 = 0;
  v8 = objc_msgSend__pageIndexForPageCoordinate_(self, v7, *&a4);
  v10 = objc_msgSend_additionalContentProviderAtPageIndex_outPageIndexInProvider_(self, v9, v8, &v29);
  v13 = objc_msgSend_addendumContentCache(self, v11, v12);
  v15 = objc_msgSend_objectForKeyedSubscript_(v13, v14, v10);

  if (!v15)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = objc_msgSend_addendumContentCache(self, v17, v18);
    objc_msgSend_setObject_forKey_(v19, v20, v15, v10);
  }

  v21 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v16, v29);
  v23 = objc_msgSend_objectForKeyedSubscript_(v15, v22, v21);

  if (!v23)
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v26, v29);
    objc_msgSend_setObject_forKeyedSubscript_(v15, v28, v25, v27);

    v23 = v25;
  }

  objc_msgSend_addObject_(v23, v24, v6);
}

- (void)i_setLayer:(id)a3 forHeaderType:(int64_t)a4 fragment:(int64_t)a5 atPageCoordinate:(TSUCellCoord)a6
{
  v19 = a3;
  v10 = 112;
  if (!a4)
  {
    v10 = 104;
  }

  v11 = *(&self->super.isa + v10);
  v15 = objc_msgSend_objectForPageCoordinate_(v11, v12, *&a6);
  if (!v15)
  {
    v15 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14);
    objc_msgSend_setObject_forPageCoordinate_(v11, v16, v15, a6);
  }

  v17 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v13, a5);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v18, v19, v17);
}

- (void)p_willBeginDynamicContentScaleChange:(id)a3
{
  self->_inDynamicContentScaleChange = 1;
  if (objc_msgSend_p_headersOrFootersContainPageNumberRelatedAttachments(self, a2, a3))
  {
    self->_cachedPageCountDuringDynamicContentScaleChange = objc_msgSend_numPages(self, v4, v5);
  }
}

- (void)p_didEndDynamicContentScaleChange:(id)a3
{
  self->_inDynamicContentScaleChange = 0;
  self->_cachedPageCountDuringDynamicContentScaleChange = -1;
  objc_msgSend_removeAllObjects(self->_headerLayerCache, a2, a3);
  objc_msgSend_removeAllObjects(self->_footerLayerCache, v4, v5);
  objc_msgSend_removeAllObjects(self->_addendumContentCache, v6, v7);

  objc_msgSend__resetAnnotationPrintingHelper(self, v8, v9);
}

- (BOOL)p_headersOrFootersContainPageNumberRelatedAttachments
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = objc_msgSend_infoProvider(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_275F3BF2C;
  v6[3] = &unk_27A6A33A0;
  v6[4] = &v7;
  objc_msgSend_enumerateHeaderFooterStoragesWithBlock_(v3, v4, v6);

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (void)registerPageLayout:(id)a3 atPageCoordinate:(TSUCellCoord)a4
{
  v10 = a3;
  v6 = self;
  objc_sync_enter(v6);
  v8 = objc_msgSend_objectForPageCoordinate_(v6->_pageLayoutCache, v7, *&a4);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      v10 = 0;
    }
  }

  objc_msgSend_setObject_forPageCoordinate_(v6->_pageLayoutCache, v9, v10, a4);

  objc_sync_exit(v6);
}

- (void)p_updateVisiblePageRange:(id)a3 forLayoutController:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v68 = *MEMORY[0x277D85DE8];
  v54 = a4;
  v9 = objc_msgSend_rootLayout(v54, v7, v8);
  v12 = objc_msgSend_children(v9, v10, v11);
  v55 = objc_msgSend_mutableCopy(v12, v13, v14);

  v16 = objc_msgSend_pageRangeWithPlaceholdersWithUpperBound_(self, v15, var1);
  v18 = WORD2(v17);
  v19 = HIDWORD(var1);
  if (var0.row <= v16)
  {
    row = v16;
  }

  else
  {
    row = var0.row;
  }

  if (WORD2(var1) >= WORD2(v17))
  {
    v19 = HIDWORD(v17);
  }

  if (var1 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = var1;
  }

  v22 = HIDWORD(*&var0);
  if (var0.column < WORD2(v16))
  {
    v22 = HIDWORD(v16);
  }

  v26 = v21 != 0xFFFF && row != 0xFFFF && v19 >= v22 && v19 != 0xFFFFLL;
  v27 = row & 0xFFFF0000FFFFFFFFLL | (v22 << 32);
  v28 = v22 != 0xFFFFLL;
  v29 = !v26 || !v28;
  if (v26 && v28)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xFFFF0000FFFFLL;
  }

  v31 = &v66;
  if (v29)
  {
    v31 = &qword_275F5EFC8;
  }

  v66 = v21 & 0xFFFF0000FFFFFFFFLL | (v19 << 32);
  if (v21 >= row)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xFFFF0000FFFFLL;
  }

  if (v21 >= row)
  {
    v33 = v31;
  }

  else
  {
    v33 = &qword_275F5EFC8;
  }

  v34 = *v33;
  if (*v33 < v32 || (v35 = HIDWORD(v32), HIDWORD(v32) == 0xFFFF) || WORD2(v34) == 0xFFFF || v32 == 0xFFFF || v34 == 0xFFFF || WORD2(v34) < HIDWORD(v32))
  {
    v34 = 0;
    LODWORD(v32) = 0;
    v35 = 0;
  }

  if (v32 <= 2uLL)
  {
    v36 = 2;
  }

  else
  {
    v36 = v32;
  }

  if (v35 <= 2)
  {
    v37 = 2;
  }

  else
  {
    v37 = v35;
  }

  if (v17 >= v34 + 2)
  {
    v38 = v34 + 2;
  }

  else
  {
    v38 = v17;
  }

  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v61 = sub_275F3C5D0;
  v62 = &unk_27A6A33C8;
  v63 = self;
  v39 = v55;
  v64 = v39;
  v40 = v9;
  v65 = v40;
  v41 = v60;
  v42 = v36 - 2;
  if (v36 - 2 <= v38)
  {
    v43 = v37 + 65534;
    v44 = v18 >= WORD2(v34) + 2 ? WORD2(v34) + 2 : v18;
    if (v43 != 0xFFFF && v44 != 0xFFFF && v36 != 65537 && v38 != 0xFFFF && v43 <= v44)
    {
      do
      {
        v45 = v42;
        v46 = v43;
        do
        {
          v61(v41, (v45 | (v46++ << 32)));
        }

        while (v46 <= v44);
        v42 = v45 + 1;
      }

      while (v45 + 1 <= v38);
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v47 = v39;
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v56, v67, 16);
  if (v51)
  {
    v52 = *v57;
    do
    {
      for (i = 0; i != v51; ++i)
      {
        if (*v57 != v52)
        {
          objc_enumerationMutation(v47);
        }

        objc_msgSend_removeFromParent(*(*(&v56 + 1) + 8 * i), v49, v50);
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v56, v67, 16);
    }

    while (v51);
  }
}

- (id)p_hintCacheForInfo:(id)a3
{
  v4 = a3;
  v6 = objc_msgSend_objectForKey_(self->_hintCacheDictionary, v5, v4);
  if (!v6)
  {
    v7 = [TNHintCache alloc];
    v6 = objc_msgSend_initWithInfo_pageController_(v7, v8, v4, self);
    objc_msgSend_setObject_forUncopiedKey_(self->_hintCacheDictionary, v9, v6, v4);
  }

  return v6;
}

- (id)p_layoutForInfo:(id)a3 atCoordinate:(TSUCellCoord)a4 parentLayout:(id)a5
{
  v8 = a5;
  v11 = objc_msgSend_p_hintCacheForInfo_(self, v9, a3);
  if (!v11)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TNPageController p_layoutForInfo:atCoordinate:parentLayout:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1568, 0, "invalid nil value for '%{public}s'", "hintCache");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  v19 = objc_msgSend_layoutAtCoordinate_parentLayout_(v11, v10, *&a4, v8);

  return v19;
}

- ($44DB91ABE188F3342F2E860183E7D78B)pageRangeForInfo:(id)a3 upperBound:(TSUCellCoord)a4
{
  v5 = objc_msgSend_p_hintCacheForInfo_(self, a2, a3);
  v7 = objc_msgSend_pageRangeWithUpperBound_(v5, v6, *&a4);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (void)layoutPrintableInfosIntoPageLayout:(id)a3 atPageCoordinate:(TSUCellCoord)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  objc_msgSend__printableInfos(self, v7, v8);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v9 = v16 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v15, v19, 16);
  if (v12)
  {
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_p_layoutInfo_intoPageLayout_atPageCoordinate_(self, v11, *(*(&v15 + 1) + 8 * v14++), v6, a4, v15);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v15, v19, 16);
    }

    while (v12);
  }
}

- (void)p_layoutInfo:(id)a3 intoPageLayout:(id)a4 atPageCoordinate:(TSUCellCoord)a5
{
  v31 = a3;
  v8 = a4;
  v10 = objc_msgSend_pageRangeForInfo_upperBound_(self, v9, v31, a5);
  if (a5.row <= v11 && a5.column <= WORD2(v11) && v10 <= a5.row && WORD2(v10) <= a5.column && (objc_msgSend_containsLayoutForInfo_(v8, v11, v31) & 1) == 0)
  {
    v14 = objc_msgSend_contentLayout(v8, v12, v13);
    v18 = objc_msgSend_p_layoutForInfo_atCoordinate_parentLayout_(self, v15, v31, a5, v14);
    if (!v18)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TNPageController p_layoutInfo:intoPageLayout:atPageCoordinate:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 1592, 0, "invalid nil value for '%{public}s'", "layout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    v26 = objc_msgSend_parent(v18, v16, v17);

    if (v14 != v26)
    {
      v27 = v18;
      objc_msgSend_removeFromParent(v27, v28, v29);
      objc_msgSend_addChild_(v8, v30, v27);
    }
  }
}

- (id)p_pageInfoForPageAtIndex:(unint64_t)a3
{
  isPageAddendumAtPageIndex = objc_msgSend__isPageAddendumAtPageIndex_(self, a2, a3);
  v6 = off_27A6A2020;
  if (!isPageAddendumAtPageIndex)
  {
    v6 = off_27A6A2028;
  }

  v7 = objc_alloc(*v6);
  v9 = objc_msgSend_initWithPageIndex_pageController_(v7, v8, a3, self);

  return v9;
}

- (id)pageInfoForPageIndex:(unint64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  pageLayoutCache = v4->_pageLayoutCache;
  v7 = objc_msgSend_pageCoordinateForPageIndex_(v4, v6, a3);
  v9 = objc_msgSend_objectForPageCoordinate_(pageLayoutCache, v8, v7);
  v12 = v9;
  if (!v9 || (objc_msgSend_info(v9, v10, v11), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = objc_msgSend_p_pageInfoForPageAtIndex_(v4, v10, a3);
  }

  objc_sync_exit(v4);

  return v13;
}

- (id)_printableInfos
{
  v3 = objc_msgSend_infoProvider(self, a2, v2);
  v6 = objc_msgSend_printableInfos(v3, v4, v5);

  return v6;
}

- (BOOL)_hasAddendumContent
{
  v3 = objc_msgSend_additionalContentProviders(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) != 0;

  return v6;
}

- (BOOL)_shouldPrintComments
{
  v3 = objc_msgSend_infoProvider(self, a2, v2);
  shouldPrintComments = objc_msgSend_shouldPrintComments(v3, v4, v5);

  return shouldPrintComments;
}

- (NSArray)additionalContentProviders
{
  if (objc_msgSend__shouldPrintComments(self, a2, v2))
  {
    v6 = objc_msgSend_annotationPrintingHelper(self, v4, v5);
    v8 = objc_msgSend_arrayByAddingObject_(MEMORY[0x277CBEBF8], v7, v6);
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)drawAdditionalContentForPageIndex:(unint64_t)a3 inContext:(CGContext *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_inDynamicContentScaleChange)
  {
    v7 = objc_msgSend_numPagesForContent(self, a2, a3);
    v10 = objc_msgSend_infoProvider(self, v8, v9);
    isUsingStartPageNumber = objc_msgSend_isUsingStartPageNumber(v10, v11, v12);

    if (isUsingStartPageNumber)
    {
      v16 = objc_msgSend_infoProvider(self, v14, v15);
      v19 = objc_msgSend_startPageNumber(v16, v17, v18) - 1;
    }

    else
    {
      if (objc_msgSend_priorPageCount(self, v14, v15) == -1)
      {
        objc_msgSend_p_computePriorPageCountForCurrentSheet(self, v22, v23);
      }

      v19 = objc_msgSend_priorPageCount(self, v22, v23);
    }

    v24 = a3 - v19;
    if (v24 >= v7)
    {
      v34 = 0;
      v31 = objc_msgSend_additionalContentProviderAtPageIndex_outPageIndexInProvider_(self, v20, v24, &v34);
      v33 = v31;
      if (v31)
      {
        objc_msgSend_drawContentForAdditionalPage_inContext_(v31, v32, v34, a4);
      }
    }

    else
    {
      objc_msgSend_additionalContentProviders(self, v20, v21);
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v25 = v36 = 0u;
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v35, v39, 16);
      if (v28)
      {
        v29 = *v36;
        do
        {
          v30 = 0;
          do
          {
            if (*v36 != v29)
            {
              objc_enumerationMutation(v25);
            }

            objc_msgSend_drawOverlayContentForPageIndex_inContext_(*(*(&v35 + 1) + 8 * v30++), v27, v24, a4);
          }

          while (v28 != v30);
          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v35, v39, 16);
        }

        while (v28);
      }
    }
  }
}

- (id)additionalContentProviderAtPageIndex:(unint64_t)a3 outPageIndexInProvider:(unint64_t *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = objc_msgSend_numPagesForContent(self, a2, a3);
  if (v7 <= a3)
  {
    v11 = v7;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = objc_msgSend_additionalContentProviders(self, v8, v9, 0);
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v23, v27, 16);
    if (v16)
    {
      v17 = *v24;
      while (2)
      {
        v18 = 0;
        v19 = v11;
        do
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v23 + 1) + 8 * v18);
          v21 = objc_msgSend_numberOfAdditionalPages(v20, v14, v15);
          v11 = v21 + v19;
          if (v21 + v19 > a3)
          {
            v10 = v20;
            if (a4)
            {
              *a4 = a3 - v19;
            }

            goto LABEL_16;
          }

          ++v18;
          v19 += v21;
        }

        while (v16 != v18);
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v23, v27, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_16:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)addendumPageTitleOfAnnotationPrintingHelper:(id)a3
{
  v3 = objc_msgSend_infoProvider(self, a2, a3);
  v6 = objc_msgSend_name(v3, v4, v5);

  return v6;
}

- (CGRect)rectForAddendumContentOfAnnotationPrintingHelper:(id)a3
{
  objc_msgSend__measureHeadersAndFootersIfNecessary(self, a2, a3);
  v6 = objc_msgSend_printProperties(self, v4, v5);
  isPortrait = objc_msgSend_isPortrait(self, v7, v8);
  objc_msgSend_headerTextHeight(self, v10, v11);
  v13 = v12;
  objc_msgSend_footerTextHeight(self, v14, v15);
  objc_msgSend_contentRectForContentScale_portraitOrientation_headerHeight_footerHeight_(v6, v16, isPortrait, 1.0, v13, v17);
  v19 = v18;
  v21 = v20;

  v22 = *MEMORY[0x277CBF348];
  v23 = *(MEMORY[0x277CBF348] + 8);
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)availableRectForAddendumContentOfAnnotationPrintingHelper:(id)a3
{
  MEMORY[0x2821F9670](self, sel_rectForAddendumContentOfAnnotationPrintingHelper_, a3);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)annotationPrintingHelper:(id)a3 enumerateLayoutsByPageWithBlock:(id)a4
{
  v5 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_275F3D4D4;
  v8[3] = &unk_27A6A33F0;
  v9 = v5;
  v6 = v5;
  objc_msgSend_enumerateAnnotationPagesWithBlock_(self, v7, v8);
}

- (void)enumerateAnnotationPagesWithBlock:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45[0] = 0;
  v45[1] = 0;
  v44 = v45;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v7 = objc_msgSend__printableInfos(self, v5, v6);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v40, v47, 16);
  if (v10)
  {
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = objc_msgSend_p_hintCacheForInfo_(self, v9, *(*(&v40 + 1) + 8 * i));
        v16 = v13;
        if (v13)
        {
          objc_msgSend_pageCoordinatesWithAnnotations(v13, v14, v15);
          v17 = v38;
        }

        else
        {
          v17 = 0;
          v38 = 0;
          v39[0] = 0;
          v39[1] = 0;
        }

        sub_275F2CEC0(&v44, v17, v39);
        sub_275F16814(&v38, v39[0]);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v40, v47, 16);
    }

    while (v10);
  }

  sub_275F3DE00(&v38, v44, v45);
  v20 = objc_msgSend_sheet(self, v18, v19);
  v23 = objc_msgSend_pageOrder(v20, v21, v22) == 1;

  v24 = 126 - 2 * __clz(v39[0] - v38);
  if (v39[0] == v38)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  if (v23)
  {
    v46 = sub_275F3D854;
  }

  else
  {
    v46 = sub_275F3D878;
  }

  sub_275F3DF30(v38, v39[0], &v46, v25, 1);
  v26 = v38;
  v27 = v39[0];
  if (v38 != v39[0])
  {
    do
    {
      v28 = *v26;
      objc_opt_class();
      v30 = objc_msgSend_p_pageLayoutAtCoordinate_shouldCachePageLayout_(self, v29, v28, 0);
      v31 = TSUCheckedDynamicCast();

      v34 = objc_msgSend_contentLayout(v31, v32, v33);
      v37 = objc_msgSend_children(v34, v35, v36);
      v4[2](v4, v37);

      ++v26;
    }

    while (v26 != v27);
    v26 = v38;
  }

  if (v26)
  {
    v39[0] = v26;
    operator delete(v26);
  }

  sub_275F16814(&v44, v45[0]);
}

- (void)enumerateLayoutsByPageWithBlock:(id)a3
{
  v10 = a3;
  v7 = objc_msgSend_numPagesForContent(self, v4, v5);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = objc_msgSend__layoutsForPageIndex_(self, v6, i);
      v10[2](v10, v9, i);
    }
  }
}

- (id)annotationPrintingHelper:(id)a3 layoutsForPageIndex:(unint64_t)a4
{
  v4 = objc_msgSend__layoutsForPageIndex_(self, a2, a4);

  return v4;
}

- (id)_layoutsForPageIndex:(unint64_t)a3
{
  v4 = objc_msgSend_pageCoordinateForPageIndex_(self, a2, a3);
  objc_opt_class();
  v6 = objc_msgSend_p_pageLayoutAtCoordinate_(self, v5, v4);
  v7 = TSUCheckedDynamicCast();

  v10 = objc_msgSend_contentLayout(v7, v8, v9);
  v13 = objc_msgSend_children(v10, v11, v12);

  return v13;
}

- (CGAffineTransform)annotationPrintingHelper:(SEL)a3 inversePureTransformInRootForContentAtPageIndex:(id)a4
{
  v7 = objc_msgSend_pageCoordinateForPageIndex_(self, a3, a5);
  objc_opt_class();
  v9 = objc_msgSend_p_pageLayoutAtCoordinate_(self, v8, v7);
  v20 = TSUCheckedDynamicCast();

  v12 = objc_msgSend_contentLayout(v20, v10, v11);
  v15 = objc_msgSend_pureGeometryInRoot(v12, v13, v14);
  v18 = v15;
  if (v15)
  {
    objc_msgSend_inverseTransform(v15, v16, v17);
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (TNPageControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TNDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

- (TNPrintableInfoProviding)infoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_infoProvider);

  return WeakRetained;
}

@end