@interface TPPaginatedPageController
+ (id)existingOwnedPaginatedPageControllerForDelegate:(id)a3;
+ (id)ownedPaginatedPageControllerForDelegate:(id)a3;
+ (id)paginatedPageControllerForDelegate:(id)a3;
+ (void)disownPaginatedPageControllerForDelegate:(id)a3;
+ (void)initialize;
- (BOOL)canProvideInfoForPageIndex:(unint64_t)a3;
- (BOOL)canProvideNumberingInfoForPageIndex:(unint64_t)a3;
- (BOOL)isPageLayoutRightToLeft;
- (BOOL)isPaginationComplete;
- (BOOL)isPaginationCompleteForSelection:(id)a3 inFlow:(id)a4;
- (BOOL)isPaginationInProgress;
- (BOOL)isSectionInfo:(id)a3 onPage:(unint64_t)a4;
- (BOOL)okToAnchorDrawable:(id)a3 toPageIndex:(unint64_t)a4;
- (BOOL)okToAnchorDrawables:(id)a3 toPageIndex:(unint64_t)a4;
- (BOOL)p_canAnchorDrawable:(id)a3 toPageLayout:(id)a4;
- (BOOL)p_couldBeFirstPageIndex:(unint64_t)a3 forPartitionedAttachmentCharIndex:(unint64_t)a4;
- (BOOL)p_didLayOut;
- (BOOL)p_isBodyLayoutComplete;
- (BOOL)p_layOutNextPageOnceWithOffscreenLayoutController;
- (BOOL)pageAtIndexHasBody:(unint64_t)a3;
- (BOOL)pageBeginsWithPaginatedAttachment:(unint64_t)a3;
- (BOOL)pageEndsWithPaginatedAttachment:(unint64_t)a3;
- (BOOL)performBackgroundPagination;
- (BOOL)shouldHeaderFooterBeVisibleForPageIndex:(unint64_t)a3;
- (BOOL)shouldUseFacingPagesForPageIndex:(unint64_t)a3;
- (CGPoint)pageOriginForPageIndex:(unint64_t)a3 allowAfterPaginationPoint:(BOOL)a4;
- (CGRect)pageRectForPageIndex:(unint64_t)a3 allowAfterPaginationPoint:(BOOL)a4;
- (CGSize)canvasSizeToFitAllPagesForPageViewState:(int64_t)a3;
- (TPPageControllerDelegate)delegate;
- (TPPaginatedPageController)initWithDelegate:(id)a3;
- (_NSRange)anchoredRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (_NSRange)bodyRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (_NSRange)documentPageRangeOfSectionIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (_NSRange)footnoteLayoutRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (_NSRange)p_anchoredRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5;
- (_NSRange)p_bodyRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5;
- (_NSRange)p_footnoteLayoutRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5;
- (_NSRange)p_pageRangeAffectedByInfo:(id)a3;
- (_NSRange)p_pageRangeForRange:(_NSRange)a3 forcePagination:(BOOL)a4 includingEmptyPages:(BOOL)a5 caretAffinity:(int64_t)a6 leadingCharIndex:(unint64_t)a7 outEndIsValid:(BOOL *)a8;
- (_NSRange)pageRangeForSelection:(id)a3 includingEmptyPages:(BOOL)a4 outEndIsValid:(BOOL *)a5;
- (_NSRange)sectionBodyRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (_NSRange)sectionPageRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 outEndIsValid:(BOOL *)a5;
- (_NSRange)validPageRangeForSelection:(id)a3;
- (double)verticalPageSeparation;
- (id)anchoredDrawablesOnPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (id)backgroundFillForPageIndex:(unint64_t)a3;
- (id)displayPageNumberForCharIndex:(unint64_t)a3 withSystemFormatting:(BOOL)a4;
- (id)displayPageNumberForPageIndex:(unint64_t)a3 withSystemFormatting:(BOOL)a4;
- (id)footnoteLayoutController;
- (id)headerFooterProviderForPageIndex:(unint64_t)a3;
- (id)i_columnAfterPageIndex:(unint64_t)a3;
- (id)i_columnPriorToPageIndex:(unint64_t)a3;
- (id)i_firstChildHintAfterPageIndex:(unint64_t)a3;
- (id)i_pageHintForPageIndex:(unint64_t)a3;
- (id)i_pageIndexPathForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5;
- (id)i_textPageHintPrecedingPageIndex:(unint64_t *)a3;
- (id)i_topicNumberHintsAfterPageIndex:(unint64_t)a3;
- (id)metricsCacheForStorage:(id)a3;
- (id)numberOfPagesInEachSection;
- (id)offscreenLayoutController;
- (id)p_cachedPageLayoutForPageIndex:(unint64_t)a3 preferredLayoutController:(id)a4;
- (id)p_lastValidPageHint;
- (id)p_lastValidTextPageHint:(unint64_t *)a3;
- (id)p_pageHintForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5;
- (id)p_pageHintForPageIndexPath:(id)a3;
- (id)p_pageHintPrecedingPageIndexPath:(id)a3;
- (id)p_pageIndicesForFlow:(id)a3 withSelection:(id)a4 forcePagination:(BOOL)a5;
- (id)p_pageInfoForPageAtIndex:(unint64_t)a3;
- (id)p_pageInfosForBodySelection:(id)a3;
- (id)p_pageInfosForFlow:(id)a3 withSelection:(id)a4;
- (id)p_pageMasterForPageIndex:(unint64_t)a3 inSection:(id)a4 sectionHint:(id)a5;
- (id)p_sectionAtSectionIndex:(unint64_t)a3;
- (id)p_sectionHintForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5;
- (id)p_textPageHintFollowingPageIndexPath:(id)a3;
- (id)p_textPageHintPrecedingPageIndexPath:(id)a3;
- (id)pageIndexesForSelection:(id)a3 forcePagination:(BOOL)a4 outEndIsValid:(BOOL *)a5;
- (id)pageIndicesForPartitionableAttachmentAtBodyCharIndex:(unint64_t)a3 selectionPath:(id)a4 forcePagination:(BOOL)a5;
- (id)pageInfoForPageIndex:(unint64_t)a3;
- (id)pageNumberFormatForSectionOnPageIndex:(unint64_t)a3;
- (id)sectionForPageIndex:(unint64_t)a3;
- (id)sectionTemplateDrawableProviderForPageIndex:(unint64_t)a3;
- (id)topicNumbersForStorage:(id)a3;
- (int64_t)pageKindForPageIndex:(unint64_t)a3;
- (unint64_t)adjacentPageIndexForPageIndex:(unint64_t)a3;
- (unint64_t)calculatePageIndexFromCanvasPoint:(CGPoint)a3;
- (unint64_t)contentFlagsForPageIndex:(unint64_t)a3;
- (unint64_t)p_backupPageIndexForCharIndex:(unint64_t)a3;
- (unint64_t)p_firstPageColumn;
- (unint64_t)p_lastValidCharIndex;
- (unint64_t)p_lastValidFootnoteIndex;
- (unint64_t)p_lastValidTextPageIndex;
- (unint64_t)p_pageHintIndexForAnchoredCharIndex:(unint64_t)a3;
- (unint64_t)p_pageHintIndexForCharIndex:(unint64_t)a3;
- (unint64_t)p_pageIndexContainingIndex:(unint64_t)a3 ofType:(unint64_t)a4;
- (unint64_t)p_pageIndexForAnchoredCharIndex:(unint64_t)a3 forcePagination:(BOOL)a4 searchAfterPaginationPoint:(BOOL)a5;
- (unint64_t)p_pageIndexForCharIndex:(unint64_t)a3 includeEmptyPages:(BOOL)a4 caretAffinity:(int64_t)a5 forcePagination:(BOOL)a6 searchAfterPaginationPoint:(BOOL)a7;
- (unint64_t)p_pageIndexForFootnoteIndex:(unint64_t)a3 forcePagination:(BOOL)a4 searchAfterPaginationPoint:(BOOL)a5;
- (unint64_t)p_pageNumberForContinuousSectionsAtPageIndex:(unint64_t)a3 finalPage:(BOOL)a4;
- (unint64_t)p_textPageIndexPrecedingPageIndex:(unint64_t)a3;
- (unint64_t)pageCountForPageIndex:(unint64_t)a3;
- (unint64_t)pageHeightCountForPageViewState:(int64_t)a3;
- (unint64_t)pageIndexForAnchoredAttachment:(id)a3 forcePagination:(BOOL)a4;
- (unint64_t)pageIndexForAnchoredCharIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (unint64_t)pageIndexForCharIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (unint64_t)pageIndexForFootnoteIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (unint64_t)pageIndexFromCanvasPoint:(CGPoint)a3;
- (unint64_t)pageNumberForPageIndex:(unint64_t)a3;
- (unint64_t)sectionIndexForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (unint64_t)sectionPageIndexForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4;
- (void)accquireLockAndPerformAction:(id)a3;
- (void)addPaginationObserver:(id)a3;
- (void)backgroundPaginationDidEnd;
- (void)canvasDidValidateLayouts:(id)a3;
- (void)changeTrackingVisibilityDidChange;
- (void)d_timePaginationResettingMetrics:(BOOL)a3;
- (void)dealloc;
- (void)enumerateHeaderFooterFragmentsOnPageIndex:(unint64_t)a3 usingBlock:(id)a4;
- (void)i_inflateColumnsInBodyLayout:(id)a3;
- (void)i_inflateFootnotesInFootnoteContainer:(id)a3;
- (void)i_inflateTextFlowsOnPage:(id)a3;
- (void)i_invalidateFlows:(id)a3 startingPage:(id)a4;
- (void)i_invalidatePageIndex:(unint64_t)a3;
- (void)i_rebuildCachedLayoutChildrenFromStartPage:(unint64_t)a3 toEndPage:(unint64_t)a4 setNeedsLayout:(BOOL)a5;
- (void)i_registerPageLayout:(id)a3;
- (void)i_setNeedsDynamicLayoutForLayoutController:(id)a3 onPageIndex:(unint64_t)a4;
- (void)i_trimPageAtIndex:(unint64_t)a3 toCharIndex:(unint64_t)a4 removeFootnoteReferenceCount:(unint64_t)a5 removeAutoNumberFootnoteCount:(unint64_t)a6;
- (void)i_unregisterPageLayout:(id)a3;
- (void)invalidateAllPageLayoutsSizeAndPosition;
- (void)layoutManager:(id)a3 didClearDirtyRangeWithDelta:(int64_t)a4 afterCharIndex:(unint64_t)a5;
- (void)layoutManagerNeedsLayout:(id)a3;
- (void)p_advanceSectionIndex;
- (void)p_checkForBackUp;
- (void)p_destroyBodyLayoutState;
- (void)p_hasBodyChanged:(id)a3;
- (void)p_invalidatePageIndex:(unint64_t)LaidOutDocumentPageIndex;
- (void)p_invalidateThumbnailForPageIndex:(unint64_t)a3;
- (void)p_invalidateThumbnailsFromSectionIndexToEnd:(unint64_t)a3;
- (void)p_invalidateThumbnailsFromSectionToEnd:(id)a3;
- (void)p_layOutFootnotesIntoPageLayout:(id)a3;
- (void)p_layOutIntoPageLayout:(id)a3 outDidSync:(BOOL *)a4;
- (void)p_layOutNextPageForLayoutController:(id)a3 dirtyRange:(id)a4;
- (void)p_layOutTextIntoPageLayout:(id)a3 didSync:(BOOL *)a4 initialFootnoteIndex:(unint64_t *)a5;
- (void)p_notifyObserversDidLayoutWhileSyncing:(BOOL)a3;
- (void)p_paginateThroughPageIndex:(unint64_t)a3 forLayoutController:(id)a4 clearOffscreenInfos:(BOOL)a5;
- (void)p_performPaginationResetAndMetricsReset:(BOOL)a3;
- (void)p_performWithCachedPageLayouts:(id)a3;
- (void)p_preparePageHintForNextPage;
- (void)p_preparePaginationStateForNextPage;
- (void)p_prepareSectionHintForNextPage;
- (void)p_processBodyLayoutInvalidation;
- (void)p_processWidowsAndInflationForLayoutController:(id)a3;
- (void)p_rebuildPageLayoutsContainingDrawableUUIDs:(id)a3;
- (void)p_removeDeletedFootnotesOnPageLayout:(id)a3;
- (void)p_removeFinishedPageGenerators;
- (void)p_resetPageGenerators;
- (void)p_setNeedsLayoutFromSectionIndexToEnd:(unint64_t)a3;
- (void)p_setNeedsLayoutOnPageIndex:(unint64_t)a3;
- (void)p_syncFromNextPageWithDirtyRanges:(id)a3 pageTextRange:(const _NSRange *)a4;
- (void)p_updateNonTextHintAtPageIndexPath:(id)a3 pageLayout:(id)a4;
- (void)p_updatePageCount;
- (void)p_updateTextHintAtPageIndexPath:(id)a3 withTarget:(id)a4;
- (void)p_withPageLayoutAtIndex:(unint64_t)a3 preferredLayoutController:(id)a4 executeBlock:(id)a5;
- (void)paginateThroughPageIndex:(unint64_t)a3 forLayoutController:(id)a4;
- (void)performBlockForExport:(id)a3;
- (void)removePaginationObserver:(id)a3;
- (void)restoreFromLayoutState:(id)a3;
- (void)teardown;
- (void)withPageLayoutAtIndex:(unint64_t)a3 preferredLayoutController:(id)a4 executeBlock:(id)a5;
@end

@implementation TPPaginatedPageController

- (BOOL)canProvideInfoForPageIndex:(unint64_t)a3
{
  v24 = 0;
  v25 = &v24;
  v3.n128_u64[0] = 0x2020000000;
  v26 = 0x2020000000;
  v27 = 0;
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v21 = 1;
    *(v25 + 24) = 1;
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v17.n128_u64[0] = 3221225472;
    v23[1] = 3221225472;
    v23[2] = sub_275FFA868;
    v23[3] = &unk_27A6A8B30;
    v23[4] = self;
    v23[5] = &v24;
    v23[6] = a3;
    objc_msgSend_accquireLockAndPerformAction_(self, v16, v17, v18, v19, v20, v23);
    v21 = *(v25 + 24);
  }

  _Block_object_dispose(&v24, 8);
  return v21 & 1;
}

- (BOOL)canProvideNumberingInfoForPageIndex:(unint64_t)a3
{
  v24 = 0;
  v25 = &v24;
  v3.n128_u64[0] = 0x2020000000;
  v26 = 0x2020000000;
  v27 = 0;
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v21 = 1;
    *(v25 + 24) = 1;
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v17.n128_u64[0] = 3221225472;
    v23[1] = 3221225472;
    v23[2] = sub_275FFAA04;
    v23[3] = &unk_27A6A8B58;
    v23[4] = self;
    v23[5] = &v24;
    v23[6] = a3;
    objc_msgSend_accquireLockAndPerformAction_(self, v16, v17, v18, v19, v20, v23);
    v21 = *(v25 + 24);
  }

  _Block_object_dispose(&v24, 8);
  return v21 & 1;
}

- (id)backgroundFillForPageIndex:(unint64_t)a3
{
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_documentRoot(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_settings(v15, v16, v17, v18, v19, v20);
  if (objc_msgSend_hasBody(v21, v22, v23, v24, v25, v26))
  {

    goto LABEL_8;
  }

  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v27, v28, v29, v30, v31, a3, v9);

  if (!isPageTemplatePageIndex_documentRoot)
  {
LABEL_8:
    v137 = 0;
    v138 = &v137;
    v139 = 0x3032000000;
    v140 = sub_275FFADAC;
    v141 = sub_275FFADBC;
    v142 = 0;
    v136[0] = MEMORY[0x277D85DD0];
    v33.n128_u64[0] = 3221225472;
    v136[1] = 3221225472;
    v136[2] = sub_275FFADC4;
    v136[3] = &unk_27A6A8B58;
    v136[4] = self;
    v136[5] = &v137;
    v136[6] = a3;
    objc_msgSend_accquireLockAndPerformAction_(self, v32, v33, v34, v35, v36, v136);
    v104 = v138[5];
    if (v104)
    {
      v106 = objc_msgSend_sectionIndex(v104, v99, v100, v101, v102, v103);
      if (v106 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v129 = objc_msgSend_p_sectionAtSectionIndex_(self, v105, v107, v108, v109, v110, v106);
        v98 = objc_msgSend_backgroundFill(v129, v130, v131, v132, v133, v134);

        goto LABEL_13;
      }

      v111 = MEMORY[0x277D81150];
      v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v107, v108, v109, v110, "[TPPaginatedPageController(LayoutInfoProvider) backgroundFillForPageIndex:]");
      v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, v114, v115, v116, v117, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v119, v120, v121, v122, v123, v112, v118, 87, 0, "unable to determine section index for page index %lu", a3);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v124, v125, v126, v127, v128);
    }

    v98 = 0;
LABEL_13:
    _Block_object_dispose(&v137, 8);

    goto LABEL_14;
  }

  v38 = objc_msgSend_pageTemplateIndexFromPageIndex_documentRoot_(TPPageInfo, v32, v33, v34, v35, v36, a3, v9);
  v44 = objc_msgSend_pageTemplates(v9, v39, v40, v41, v42, v43);
  v50 = objc_msgSend_count(v44, v45, v46, v47, v48, v49);

  if (v38 >= v50)
  {
    v56 = MEMORY[0x277D81150];
    v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, v52, v53, v54, v55, "[TPPaginatedPageController(LayoutInfoProvider) backgroundFillForPageIndex:]");
    v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v64, v65, v66, v67, v68, v57, v63, 75, 0, "bad template index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v69, v70, v71, v72, v73);
  }

  v74 = objc_msgSend_pageTemplates(v9, v51, v52, v53, v54, v55);
  v80 = objc_msgSend_count(v74, v75, v76, v77, v78, v79);

  if (v38 >= v80)
  {
    v98 = 0;
  }

  else
  {
    v86 = objc_msgSend_pageTemplates(v9, v81, v82, v83, v84, v85);
    v92 = objc_msgSend_objectAtIndexedSubscript_(v86, v87, v88, v89, v90, v91, v38);

    v98 = objc_msgSend_backgroundFill(v92, v93, v94, v95, v96, v97);
  }

LABEL_14:

  return v98;
}

- (id)sectionForPageIndex:(unint64_t)a3
{
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_documentRoot(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_settings(v15, v16, v17, v18, v19, v20);
  if (objc_msgSend_hasBody(v21, v22, v23, v24, v25, v26))
  {
  }

  else
  {
    isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v27, v28, v29, v30, v31, a3, v9);

    if (isPageTemplatePageIndex_documentRoot)
    {
      v38 = 0;
      goto LABEL_11;
    }
  }

  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = sub_275FFADAC;
  v75 = sub_275FFADBC;
  v76 = 0;
  v70[0] = MEMORY[0x277D85DD0];
  v33.n128_u64[0] = 3221225472;
  v70[1] = 3221225472;
  v70[2] = sub_275FFB044;
  v70[3] = &unk_27A6A8B58;
  v70[4] = self;
  v70[5] = &v71;
  v70[6] = a3;
  objc_msgSend_accquireLockAndPerformAction_(self, v32, v33, v34, v35, v36, v70);
  v44 = v72[5];
  if (v44)
  {
    v46 = objc_msgSend_sectionIndex(v44, v39, v40, v41, v42, v43);
    if (v46 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = objc_msgSend_p_sectionAtSectionIndex_(self, v45, v47, v48, v49, v50, v46);
      goto LABEL_10;
    }

    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v47, v48, v49, v50, "[TPPaginatedPageController(LayoutInfoProvider) sectionForPageIndex:]");
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v59, v60, v61, v62, v63, v52, v58, 112, 0, "unable to determine section index for page index %lu", a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67, v68);
  }

  v38 = 0;
LABEL_10:
  _Block_object_dispose(&v71, 8);

LABEL_11:

  return v38;
}

- (id)headerFooterProviderForPageIndex:(unint64_t)a3
{
  v24 = 0;
  v25 = &v24;
  v3.n128_u64[0] = 0x3032000000;
  v26 = 0x3032000000;
  v27 = sub_275FFADAC;
  v28 = sub_275FFADBC;
  v29 = 0;
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9);

  if ((isPageTemplatePageIndex_documentRoot & 1) == 0)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v17.n128_u64[0] = 3221225472;
    v23[1] = 3221225472;
    v23[2] = sub_275FFB1E8;
    v23[3] = &unk_27A6A8B30;
    v23[4] = self;
    v23[5] = &v24;
    v23[6] = a3;
    objc_msgSend_accquireLockAndPerformAction_(self, v16, v17, v18, v19, v20, v23);
  }

  v21 = v25[5];
  _Block_object_dispose(&v24, 8);

  return v21;
}

- (BOOL)shouldHeaderFooterBeVisibleForPageIndex:(unint64_t)a3
{
  v23 = 0;
  v24 = &v23;
  v3.n128_u64[0] = 0x2020000000;
  v25 = 0x2020000000;
  v26 = 1;
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  if (objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9))
  {
    v20 = 0;
    *(v24 + 24) = 0;
  }

  else
  {
    v22[0] = MEMORY[0x277D85DD0];
    v16.n128_u64[0] = 3221225472;
    v22[1] = 3221225472;
    v22[2] = sub_275FFB44C;
    v22[3] = &unk_27A6A8B30;
    v22[4] = self;
    v22[5] = &v23;
    v22[6] = a3;
    objc_msgSend_accquireLockAndPerformAction_(self, v15, v16, v17, v18, v19, v22);
    v20 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);
  return v20 & 1;
}

- (id)sectionTemplateDrawableProviderForPageIndex:(unint64_t)a3
{
  v105 = 0;
  v106 = &v105;
  v3.n128_u64[0] = 0x3032000000;
  v107 = 0x3032000000;
  v108 = sub_275FFADAC;
  v109 = sub_275FFADBC;
  v110 = 0;
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v21 = objc_msgSend_documentRoot(self, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_pageTemplateIndexFromPageIndex_documentRoot_(TPPageInfo, v22, v23, v24, v25, v26, a3, v21);

    v33 = objc_msgSend_documentRoot(self, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_pageTemplates(v33, v34, v35, v36, v37, v38);
    v45 = objc_msgSend_count(v39, v40, v41, v42, v43, v44);

    if (v27 >= v45)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, v50, "[TPPaginatedPageController(LayoutInfoProvider) sectionTemplateDrawableProviderForPageIndex:]");
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v54, v55, v56, v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageController_LayoutInfoProvider.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v59, v60, v61, v62, v63, v52, v58, 203, 0, "bad template index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66, v67, v68);
    }

    v69 = objc_msgSend_documentRoot(self, v46, v47, v48, v49, v50);
    v75 = objc_msgSend_pageTemplates(v69, v70, v71, v72, v73, v74);
    v81 = objc_msgSend_count(v75, v76, v77, v78, v79, v80);

    if (v27 < v81)
    {
      v87 = objc_msgSend_documentRoot(self, v82, v83, v84, v85, v86);
      v93 = objc_msgSend_pageTemplates(v87, v88, v89, v90, v91, v92);
      v99 = objc_msgSend_objectAtIndexedSubscript_(v93, v94, v95, v96, v97, v98, v27);
      v100 = TSUProtocolCast();
      v101 = v106[5];
      v106[5] = v100;
    }
  }

  else
  {
    v104[0] = MEMORY[0x277D85DD0];
    v17.n128_u64[0] = 3221225472;
    v104[1] = 3221225472;
    v104[2] = sub_275FFB890;
    v104[3] = &unk_27A6A8B30;
    v104[4] = self;
    v104[5] = &v105;
    v104[6] = a3;
    objc_msgSend_accquireLockAndPerformAction_(self, v16, v17, v18, v19, v20, v104);
  }

  v102 = v106[5];
  _Block_object_dispose(&v105, 8);

  return v102;
}

- (unint64_t)pageNumberForPageIndex:(unint64_t)a3
{
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v21 = objc_msgSend_documentRoot(self, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_pageTemplateIndexFromPageIndex_documentRoot_(TPPageInfo, v22, v23, v24, v25, v26, a3, v21);

    return v27 + 1;
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel_p_pageNumberForContinuousSectionsAtPageIndex_finalPage_, v17, v18, v19, v20);
  }
}

- (unint64_t)pageCountForPageIndex:(unint64_t)a3
{
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v21 = objc_msgSend_documentRoot(self, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_pageTemplates(v21, v22, v23, v24, v25, v26);
    v33 = objc_msgSend_count(v27, v28, v29, v30, v31, v32);

    return v33;
  }

  else
  {

    return MEMORY[0x2821F9670](self, sel_p_pageNumberForContinuousSectionsAtPageIndex_finalPage_, v17, v18, v19, v20);
  }
}

- (id)pageNumberFormatForSectionOnPageIndex:(unint64_t)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D80E68];
  v10 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v3, v4, v5, v6);
  v16 = objc_msgSend_defaultPageNumberFormatForLocale_(v9, v11, v12, v13, v14, v15, v10);

  v22 = objc_msgSend_documentRoot(self, v17, v18, v19, v20, v21);
  LOBYTE(v10) = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v23, v24, v25, v26, v27, a3, v22);

  if ((v10 & 1) == 0)
  {
    v33 = objc_msgSend_headerFooterProviderForPageIndex_(self, v28, v29, v30, v31, v32, a3);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v38 = objc_msgSend_headerFooterFragmentEnumerator(v33, v34, 0, v35, v36, v37, 0);
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, v40, v41, v42, v43, &v58, v62, 16);
    if (v44)
    {
      v50 = v44;
      v51 = *v59;
      while (2)
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v59 != v51)
          {
            objc_enumerationMutation(v38);
          }

          v53 = *(*(&v58 + 1) + 8 * i);
          v54 = objc_msgSend_firstPageNumberAttachment(v53, v45, v46, v47, v48, v49);
          if (!v54)
          {
            v54 = objc_msgSend_firstPageCountAttachment(v53, v45, v46, v47, v48, v49);
            if (!v54)
            {
              continue;
            }
          }

          v55 = v54;
          v56 = objc_msgSend_numberFormat(v54, v45, v46, v47, v48, v49);

          v16 = v56;
          goto LABEL_13;
        }

        v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v45, v46, v47, v48, v49, &v58, v62, 16);
        if (v50)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v16;
}

- (id)displayPageNumberForCharIndex:(unint64_t)a3 withSystemFormatting:(BOOL)a4
{
  objc_msgSend_pageIndexForCharIndex_forcePagination_(self, a2, v4, v5, v6, v7, a3, 0);

  return MEMORY[0x2821F9670](self, sel_displayPageNumberForPageIndex_withSystemFormatting_, v9, v10, v11, v12);
}

- (id)displayPageNumberForPageIndex:(unint64_t)a3 withSystemFormatting:(BOOL)a4
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = &stru_288501738;
  }

  else
  {
    v9 = a4;
    v12 = objc_msgSend_pageNumberForPageIndex_(self, a2, v4, v5, v6, v7);
    if (v12 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v12;
    }

    if (v9)
    {
      v19 = objc_alloc_init(MEMORY[0x277CCABB8]);
      objc_msgSend_setNumberStyle_(v19, v20, v21, v22, v23, v24, 1);
      v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v25, v26, v27, v28, v29, v18);
      v8 = objc_msgSend_stringFromNumber_(v19, v31, v32, v33, v34, v35, v30);
    }

    else
    {
      v19 = objc_msgSend_pageNumberFormatForSectionOnPageIndex_(self, v13, v14, v15, v16, v17, a3);
      v8 = objc_msgSend_stringFromNumber_forFormatName_(MEMORY[0x277D80E68], v36, v37, v38, v39, v40, v18, v19);
    }
  }

  return v8;
}

- (unint64_t)contentFlagsForPageIndex:(unint64_t)a3
{
  v59 = 0;
  v60 = &v59;
  v3.n128_u64[0] = 0x2020000000;
  v61 = 0x2020000000;
  v62 = 31;
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9);

  if (isPageTemplatePageIndex_documentRoot)
  {
    v21 = 6;
    v60[3] = 6;
  }

  else
  {
    v22 = objc_msgSend_documentRoot(self, v16, v17, v18, v19, v20);
    v28 = objc_msgSend_bodyStorage(v22, v23, v24, v25, v26, v27);
    v34 = objc_msgSend_footnoteCount(v28, v29, v30, v31, v32, v33);

    if (!v34)
    {
      v60[3] &= ~0x10uLL;
    }

    v40 = objc_msgSend_documentRoot(self, v35, v36, v37, v38, v39);
    v46 = objc_msgSend_settings(v40, v41, v42, v43, v44, v45);

    if ((objc_msgSend_hasHeaders(v46, v47, v48, v49, v50, v51) & 1) == 0 && (objc_msgSend_hasFooters(v46, v52, v53, v54, v55, v56) & 1) == 0)
    {
      v60[3] &= ~8uLL;
    }

    v58[0] = MEMORY[0x277D85DD0];
    v53.n128_u64[0] = 3221225472;
    v58[1] = 3221225472;
    v58[2] = sub_275FFBFC0;
    v58[3] = &unk_27A6A8B30;
    v58[4] = self;
    v58[5] = &v59;
    v58[6] = a3;
    objc_msgSend_accquireLockAndPerformAction_(self, v52, v53, v54, v55, v56, v58);

    v21 = v60[3];
  }

  _Block_object_dispose(&v59, 8);
  return v21;
}

- (BOOL)shouldUseFacingPagesForPageIndex:(unint64_t)a3
{
  v7 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6, a3);
  v13 = objc_msgSend_settings(v7, v8, v9, v10, v11, v12);
  hasFacingPages = objc_msgSend_hasFacingPages(v13, v14, v15, v16, v17, v18);

  return hasFacingPages;
}

- (BOOL)isSectionInfo:(id)a3 onPage:(unint64_t)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_275FFC268;
  v14[3] = &unk_27A6A8B80;
  v7 = v6;
  v15 = v7;
  v16 = self;
  v17 = &v19;
  v18 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, v8, v9, v10, v11, v12, v14);
  LOBYTE(a4) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return a4;
}

- (void)enumerateHeaderFooterFragmentsOnPageIndex:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v12 = objc_msgSend_documentRoot(self, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_settings(v12, v13, v14, v15, v16, v17);

  hasHeaders = objc_msgSend_hasHeaders(v18, v19, v20, v21, v22, v23);
  hasFooters = objc_msgSend_hasFooters(v18, v25, v26, v27, v28, v29);
  v36 = hasFooters;
  if (((hasHeaders & 1) != 0 || hasFooters) && objc_msgSend_shouldHeaderFooterBeVisibleForPageIndex_(self, v31, v32, v33, v34, v35, a3))
  {
    v62 = v18;
    v42 = objc_msgSend_headerFooterProviderForPageIndex_(self, v37, v38, v39, v40, v41, a3);
    v48 = objc_msgSend_usesSingleHeaderFooter(v42, v43, v44, v45, v46, v47);
    v54 = 1;
    if (!v36)
    {
      v54 = 2;
    }

    if (hasHeaders)
    {
      v55 = 0;
    }

    else
    {
      v55 = v54;
    }

    if (v48)
    {
      v56 = 2;
    }

    else
    {
      v56 = 3;
    }

    v57 = v48;
    do
    {
      v58 = v57;
      do
      {
        v59 = objc_msgSend_headerFooter_fragmentAtIndex_(v42, v49, v50, v51, v52, v53, v55, v58);
        v63 = 0;
        v6[2](v6, v55, v58, v59, &v63);
        v60 = v63;

        if (v60)
        {
          break;
        }

        ++v58;
      }

      while (v58 < v56);
      if (v55)
      {
        v61 = 0;
      }

      else
      {
        v61 = v36;
      }

      v55 = 1;
    }

    while ((v61 & 1) != 0);

    v18 = v62;
  }
}

- (id)p_sectionAtSectionIndex:(unint64_t)a3
{
  v8 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  v14 = objc_msgSend_bodyStorage(v8, v9, v10, v11, v12, v13);

  if (objc_msgSend_sectionCount(v14, v15, v16, v17, v18, v19) <= a3)
  {
    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v14, v20, v21, v22, v23, v24, a3, 0);
  }

  return v25;
}

- (id)p_pageMasterForPageIndex:(unint64_t)a3 inSection:(id)a4 sectionHint:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (objc_msgSend_sectionTemplateFirstPageDifferent(v7, v9, v10, v11, v12, v13) && objc_msgSend_documentStartPageIndex(v8, v14, v15, v16, v17, v18) == a3)
  {
    objc_msgSend_sectionTemplatePageForType_(v7, v14, v15, v16, v17, v18, 0);
  }

  else if ((a3 & objc_msgSend_sectionTemplateEvenOddPagesDifferent(v7, v14, v15, v16, v17, v18)) != 0)
  {
    objc_msgSend_sectionTemplatePageForType_(v7, v19, v20, v21, v22, v23, 1);
  }

  else
  {
    objc_msgSend_sectionTemplatePageForType_(v7, v19, v20, v21, v22, v23, 2);
  }
  v24 = ;

  return v24;
}

- (unint64_t)p_pageNumberForContinuousSectionsAtPageIndex:(unint64_t)a3 finalPage:(BOOL)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_275FFC6D4;
  v10[3] = &unk_27A6A8BA8;
  v10[5] = &v12;
  v10[6] = a3;
  v10[4] = self;
  v11 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v4, v5, v6, v7, v10);
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v7 = objc_msgSend_weakToWeakObjectsMapTable(MEMORY[0x277CCAB00], v2, v3, v4, v5, v6);
    v8 = qword_280A404E0;
    qword_280A404E0 = v7;

    v14 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v9, v10, v11, v12, v13);
    v15 = qword_280A404E8;
    qword_280A404E8 = v14;
  }
}

+ (id)paginatedPageControllerForDelegate:(id)a3
{
  v4 = a3;
  v5 = qword_280A404E0;
  objc_sync_enter(v5);
  v12 = objc_msgSend_objectForKeyedSubscript_(qword_280A404E0, v6, v7, v8, v9, v10, v4);
  if (!v12)
  {
    v17 = [a1 alloc];
    v12 = objc_msgSend_initWithDelegate_(v17, v18, v19, v20, v21, v22, v4);
    objc_msgSend_setObject_forKeyedSubscript_(qword_280A404E0, v23, v24, v25, v26, v27);
  }

  v28 = objc_msgSend_delegate(v12, v11, v13, v14, v15, v16);

  if (v28 != v4)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "+[TPPaginatedPageController paginatedPageControllerForDelegate:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    v47 = objc_msgSend_delegate(v12, v42, v43, v44, v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v48, v49, v50, v51, v52, v35, v41, 236, 0, "Page controller's delegate doesn't match expected.  %@ != %@", v47, v4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56, v57);
  }

  objc_sync_exit(v5);

  return v12;
}

+ (id)ownedPaginatedPageControllerForDelegate:(id)a3
{
  v4 = a3;
  v5 = qword_280A404E8;
  objc_sync_enter(v5);
  v11 = objc_msgSend_objectForKeyedSubscript_(qword_280A404E8, v6, v7, v8, v9, v10, v4);
  if (!v11)
  {
    v12 = qword_280A404E0;
    objc_sync_enter(v12);
    v11 = objc_msgSend_objectForKeyedSubscript_(qword_280A404E0, v13, v14, v15, v16, v17, v4);
    if (!v11)
    {
      v23 = [a1 alloc];
      v11 = objc_msgSend_initWithDelegate_(v23, v24, v25, v26, v27, v28, v4);
      objc_msgSend_setObject_forKeyedSubscript_(qword_280A404E0, v29, v30, v31, v32, v33);
    }

    objc_msgSend_setObject_forKeyedSubscript_(qword_280A404E8, v18, v19, v20, v21, v22, v11, v4);
    objc_sync_exit(v12);
  }

  objc_sync_exit(v5);

  return v11;
}

+ (id)existingOwnedPaginatedPageControllerForDelegate:(id)a3
{
  v3 = a3;
  v4 = qword_280A404E8;
  objc_sync_enter(v4);
  v10 = objc_msgSend_objectForKeyedSubscript_(qword_280A404E8, v5, v6, v7, v8, v9, v3);
  objc_sync_exit(v4);

  return v10;
}

+ (void)disownPaginatedPageControllerForDelegate:(id)a3
{
  v15 = a3;
  v3 = qword_280A404E8;
  objc_sync_enter(v3);
  v4 = qword_280A404E0;
  objc_sync_enter(v4);
  objc_msgSend_removeObjectForKey_(qword_280A404E8, v5, v6, v7, v8, v9, v15);
  objc_msgSend_removeObjectForKey_(qword_280A404E0, v10, v11, v12, v13, v14, v15);
  objc_sync_exit(v4);

  objc_sync_exit(v3);
}

- (TPPaginatedPageController)initWithDelegate:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_documentRoot(v4, v5, v6, v7, v8, v9);
  v232.receiver = self;
  v232.super_class = TPPaginatedPageController;
  v11 = [(TPPageController *)&v232 initWithDocumentRoot:v10];

  v17 = objc_msgSend_documentRoot(v11, v12, v13, v14, v15, v16);
  if (objc_msgSend_writingDirection(v17, v18, v19, v20, v21, v22) == 4)
  {
  }

  else
  {
    v33 = objc_msgSend_documentRoot(v11, v23, v24, v25, v26, v27);
    v39 = objc_msgSend_writingDirection(v33, v34, v35, v36, v37, v38);

    if (v39 != 3)
    {
      goto LABEL_5;
    }
  }

  v40 = MEMORY[0x277D81150];
  v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "[TPPaginatedPageController initWithDelegate:]");
  v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
  v53 = objc_msgSend_documentRoot(v11, v48, v49, v50, v51, v52);
  v59 = objc_msgSend_writingDirection(v53, v54, v55, v56, v57, v58);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v60, v61, v62, v63, v64, v41, v47, 277, 0, "Unexpected writing direction %lu. Page layout will probably be wrong.", v59);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66, v67, v68, v69);
LABEL_5:
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained(&v11->super._documentRoot);
    objc_storeWeak(&v11->_delegate, v4);
    v71 = objc_alloc(MEMORY[0x277D801E0]);
    v72 = objc_opt_class();
    v78 = objc_msgSend_initWithLayoutControllerClass_delegate_(v71, v73, v74, v75, v76, v77, v72, 0);
    objc_opt_class();
    v84 = objc_msgSend_layoutController(v78, v79, v80, v81, v82, v83);
    v85 = TSUDynamicCast();

    if (!v85)
    {
      v91 = MEMORY[0x277D81150];
      v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v86, v87, v88, v89, v90, "[TPPaginatedPageController initWithDelegate:]");
      v98 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v93, v94, v95, v96, v97, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v91, v99, v100, v101, v102, v103, v92, v98, 284, 0, "invalid nil value for '%{public}s'", "layoutController");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106, v107, v108);
    }

    v109 = [TPPageControllerCanvasDelegate alloc];
    v115 = objc_msgSend_initWithDocumentRoot_canvas_(v109, v110, v111, v112, v113, v114, WeakRetained, v78);
    offscreenSearchDelegate = v11->_offscreenSearchDelegate;
    v11->_offscreenSearchDelegate = v115;

    objc_msgSend_setDelegate_(v78, v117, v118, v119, v120, v121, v11->_offscreenSearchDelegate);
    v122 = [TPFootnoteLayoutController alloc];
    v128 = objc_msgSend_initWithPaginatedPageController_(v122, v123, v124, v125, v126, v127, v11);
    footnoteLayoutController = v11->_footnoteLayoutController;
    v11->_footnoteLayoutController = v128;

    v130 = objc_alloc(MEMORY[0x277D80E78]);
    v136 = objc_msgSend_bodyStorage(WeakRetained, v131, v132, v133, v134, v135);
    v142 = objc_msgSend_initWithStorage_owner_(v130, v137, v138, v139, v140, v141, v136, v11);
    bodyLayoutManager = v11->_bodyLayoutManager;
    v11->_bodyLayoutManager = v142;

    v144 = objc_alloc_init(_TtC14PagesQuicklook17TPPageLayoutCache);
    pageLayoutCache = v11->_pageLayoutCache;
    v11->_pageLayoutCache = v144;

    v146 = [_TtC14PagesQuicklook17TPPaginationState alloc];
    v152 = objc_msgSend_bodyStorage(WeakRetained, v147, v148, v149, v150, v151);
    v158 = objc_msgSend_initWithBodyStorage_(v146, v153, v154, v155, v156, v157, v152);
    paginationState = v11->_paginationState;
    v11->_paginationState = v158;

    v165 = objc_msgSend_copy(v11->_paginationState, v160, v161, v162, v163, v164);
    cachedPaginationState = v11->_cachedPaginationState;
    v11->_cachedPaginationState = v165;

    v167 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pageGeneratorStack = v11->_pageGeneratorStack;
    v11->_pageGeneratorStack = v167;

    v11->_lastKnownPageCount = 1;
    v169 = [TPTextFlowLayoutController alloc];
    v175 = objc_msgSend_initWithPageController_(v169, v170, v171, v172, v173, v174, v11);
    flowController = v11->_flowController;
    v11->_flowController = v175;

    v177 = [TPTextWrapController alloc];
    v183 = objc_msgSend_initWithDocumentRoot_(v177, v178, v179, v180, v181, v182, WeakRetained);
    wrapController = v11->_wrapController;
    v11->_wrapController = v183;

    v190 = objc_msgSend_settings(WeakRetained, v185, v186, v187, v188, v189);

    if (!v190)
    {
      v196 = MEMORY[0x277D81150];
      v197 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, v192, v193, v194, v195, "[TPPaginatedPageController initWithDelegate:]");
      v203 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v198, v199, v200, v201, v202, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v196, v204, v205, v206, v207, v208, v197, v203, 305, 0, "invalid nil value for '%{public}s'", "documentRoot.settings");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v209, v210, v211, v212, v213);
    }

    objc_msgSend_horizontalPageSeparation(v11, v191, v192, v193, v194, v195);
    *&v11->_horizontalGapBetweenPages = v214.n128_u64[0];
    objc_msgSend_verticalPageSeparation(v11, v215, v214, v216, v217, v218);
    v11->_verticalGapBetweenPages = v219;
    v11->_cachedPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    v220 = *MEMORY[0x277D81490];
    v11->_cachedBodyTextRange = *MEMORY[0x277D81490];
    v11->_withPageLayoutRecursionCount = -1;
    v225 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v221, v220, v222, v223, v224);
    objc_msgSend_addObserver_selector_name_object_(v225, v226, v227, v228, v229, v230, v11, sel_p_hasBodyChanged_, @"TPHasBodyChanged", WeakRetained);
    v11->_didLayOutPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    v11->_currentPageBeingLaidOut = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

- (void)teardown
{
  if (!self->_isTornDown)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v2.n128_u64[0] = 3221225472;
    v8[1] = 3221225472;
    v8[2] = sub_27601580C;
    v8[3] = &unk_27A6A8768;
    v8[4] = self;
    objc_msgSend_accquireLockAndPerformAction_(self, a2, v2, v3, v4, v5, v8);
  }

  v7.receiver = self;
  v7.super_class = TPPaginatedPageController;
  [(TPPageController *)&v7 teardown];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TPPaginatedPageController;
  [(TPPageController *)&v2 dealloc];
}

- (void)restoreFromLayoutState:(id)a3
{
  v158 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v153 = 0;
  v154 = &v153;
  v5.n128_u64[0] = 0x2020000000;
  v155 = 0x2020000000;
  v156 = 1;
  if (objc_msgSend_bodyLength(v4, v6, v5, v7, v8, v9) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ((v154[3] & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v15 = objc_msgSend_documentRoot(self, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_bodyStorage(v15, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_length(v21, v22, v23, v24, v25, v26);

  if (objc_msgSend_bodyLength(v4, v28, v29, v30, v31, v32) != v27)
  {
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "[TPPaginatedPageController restoreFromLayoutState:]");
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v46, v47, v48, v49, v50, v39, v45, 448, 0, "Archived layout state is invalid");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v51, v52, v53, v54, v55);
  }

  v56 = objc_msgSend_bodyLength(v4, v33, v34, v35, v36, v37);
  *(v154 + 24) = v56 == v27;
  if (v56 == v27)
  {
LABEL_7:
    v57 = objc_msgSend_missingFonts(v4, v10, v11, v12, v13, v14);
    v63 = objc_msgSend_documentRoot(self, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_unavailableDocumentFonts(v63, v64, v65, v66, v67, v68);
    isEqualToSet = objc_msgSend_isEqualToSet_(v57, v70, v71, v72, v73, v74, v69);

    if ((isEqualToSet & 1) == 0)
    {
      *(v154 + 24) = 0;
    }
  }

LABEL_9:
  v76 = objc_msgSend_documentRoot(self, v10, v11, v12, v13, v14);
  v82 = objc_msgSend_delegate(v76, v77, v78, v79, v80, v81);
  v144 = &unk_288546938;
  v83 = TSUProtocolCast();

  if (*(v154 + 24) != 1)
  {
    goto LABEL_23;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (v154[3])
    {
      goto LABEL_12;
    }

LABEL_23:
    v133 = objc_msgSend_documentRoot(self, v84, v85, v86, v87, v88, v144);
    objc_msgSend_invalidateViewState(v133, v139, v140, v141, v142, v143);
    goto LABEL_24;
  }

  hasPersistenceWarningsOfKind = objc_msgSend_hasPersistenceWarningsOfKind_(v83, v84, v85, v86, v87, v88, 0, &unk_288546938);
  *(v154 + 24) = hasPersistenceWarningsOfKind ^ 1;
  if (hasPersistenceWarningsOfKind)
  {
    goto LABEL_23;
  }

LABEL_12:
  v90 = objc_alloc(MEMORY[0x277CBEB18]);
  v96 = objc_msgSend_sectionHints(v4, v91, v92, v93, v94, v95);
  v102 = objc_msgSend_count(v96, v97, v98, v99, v100, v101);
  v108 = objc_msgSend_initWithCapacity_(v90, v103, v104, v105, v106, v107, v102);

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v113 = objc_msgSend_sectionHints(v4, v109, 0, v110, v111, v112);
  v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v113, v114, v115, v116, v117, v118, &v149, v157, 16);
  if (v120)
  {
    v125 = *v150;
    do
    {
      for (i = 0; i != v120; ++i)
      {
        if (*v150 != v125)
        {
          objc_enumerationMutation(v113);
        }

        v128 = objc_msgSend_copyForArchiving(*(*(&v149 + 1) + 8 * i), v119, v121, v122, v123, v124, v144);
        if (v128)
        {
          objc_msgSend_addObject_(v108, v127, v129, v130, v131, v132, v128);
        }
      }

      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v113, v119, v121, v122, v123, v124, &v149, v157, 16);
    }

    while (v120);
  }

  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = sub_276015EE0;
  v145[3] = &unk_27A6A9108;
  v145[4] = self;
  v146 = v4;
  v148 = &v153;
  v133 = v108;
  v147 = v133;
  objc_msgSend_accquireLockAndPerformAction_(self, v134, v135, v136, v137, v138, v145);

LABEL_24:
  _Block_object_dispose(&v153, 8);
}

- (void)accquireLockAndPerformAction:(id)a3
{
  v52 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_isTornDown)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, v9, "[TPPaginatedPageController accquireLockAndPerformAction:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v19, v20, v21, v22, v11, v17, 630, 0, "Nil _pageGeneratorStack; page controller shouldn't be called after teardown");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26, v27);
  }

  v28 = objc_msgSend_documentRoot(v4, v5, v6, v7, v8, v9);
  if (v28)
  {
    isTornDown = v4->_isTornDown;

    if (!isTornDown)
    {
      objc_msgSend_setIsInvalid_(v4->_paginationState, v30, v31, v32, v33, v34, 0);
      objc_msgSend_coalesce(v4->_pageLayoutCache, v35, v36, v37, v38, v39);
      v52[2]();
      if (objc_msgSend_isInvalid(v4->_paginationState, v40, v41, v42, v43, v44))
      {
        v50 = objc_msgSend_copyForCaching(v4->_paginationState, v45, v46, v47, v48, v49);
        cachedPaginationState = v4->_cachedPaginationState;
        v4->_cachedPaginationState = v50;
      }
    }
  }

  objc_sync_exit(v4);
}

- (void)paginateThroughPageIndex:(unint64_t)a3 forLayoutController:(id)a4
{
  v6 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_276016D54;
  v13[3] = &unk_27A6A84B8;
  v14 = v6;
  v15 = a3;
  v13[4] = self;
  v7 = v6;
  objc_msgSend_accquireLockAndPerformAction_(self, v8, v9, v10, v11, v12, v13);
}

- (void)canvasDidValidateLayouts:(id)a3
{
  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], a2, v3, v4, v5, v6, a3))
  {
    self->_bodyLayoutInvalidated = 0;
  }
}

- (id)pageIndexesForSelection:(id)a3 forcePagination:(BOOL)a4 outEndIsValid:(BOOL *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (objc_msgSend_isValid(v8, v10, v11, v12, v13, v14) && (v20 = objc_msgSend_superRange(v8, v15, v16, v17, v18, v19), v22 = v21, objc_msgSend_documentRoot(self, v21, v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v27, v28, v29, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend_length(v33, v34, v35, v36, v37, v38), v33, v27, &v22[v20] > v39))
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, v44, "[TPPaginatedPageController pageIndexesForSelection:forcePagination:outEndIsValid:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v53, v54, v55, v56, v57, v46, v52, 706, 0, "illegal selection past end of storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61, v62);
  }

  else
  {
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = sub_276016FC0;
    v69[3] = &unk_27A6A9158;
    v70 = v8;
    v71 = self;
    v74 = a4;
    v72 = v9;
    v73 = a5;
    objc_msgSend_accquireLockAndPerformAction_(self, v63, v64, v65, v66, v67, v69);
  }

  return v9;
}

- (_NSRange)pageRangeForSelection:(id)a3 includingEmptyPages:(BOOL)a4 outEndIsValid:(BOOL *)a5
{
  v85 = a4;
  v7 = a3;
  IsValid = *MEMORY[0x277D81510];
  v9 = *(MEMORY[0x277D81510] + 8);
  if (objc_msgSend_isValid(v7, v10, v11, v12, v13, v14) && (v20 = objc_msgSend_superRange(v7, v15, v16, v17, v18, v19), v22 = v21, objc_msgSend_documentRoot(self, v21, v23, v24, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend_bodyStorage(v27, v28, v29, v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend_length(v33, v34, v35, v36, v37, v38), v33, v27, &v22[v20] > v39))
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "[TPPaginatedPageController pageRangeForSelection:includingEmptyPages:outEndIsValid:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v48, v49, v50, v51, v52, v41, v47, 737, 0, "illegal selection past end of storage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56, v57);
  }

  else if (objc_msgSend_isValid(v7, v15, v16, v17, v18, v19))
  {
    v63 = objc_msgSend_superRange(v7, v58, v59, v60, v61, v62);
    v65 = v64;
    v70 = objc_msgSend_caretLFAffinity(v7, v64, v66, v67, v68, v69);
    v76 = objc_msgSend_leadingCharIndex(v7, v71, v72, v73, v74, v75);
    IsValid = objc_msgSend_p_pageRangeForRange_forcePagination_includingEmptyPages_caretAffinity_leadingCharIndex_outEndIsValid_(self, v77, v78, v79, v80, v81, v63, v65, 0, v85, v70, v76, a5);
    v9 = v82;
  }

  v83 = IsValid;
  v84 = v9;
  result.length = v84;
  result.location = v83;
  return result;
}

- (_NSRange)p_pageRangeForRange:(_NSRange)a3 forcePagination:(BOOL)a4 includingEmptyPages:(BOOL)a5 caretAffinity:(int64_t)a6 leadingCharIndex:(unint64_t)a7 outEndIsValid:(BOOL *)a8
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x4012000000;
  v26 = sub_27601745C;
  v27 = nullsub_2;
  v28 = &unk_2760658C2;
  v11 = *MEMORY[0x277D81510];
  v29 = *MEMORY[0x277D81510];
  if (a8)
  {
    *a8 = 0;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v11.n128_u64[0] = 3221225472;
  v16[1] = 3221225472;
  v16[2] = sub_27601746C;
  v16[3] = &unk_27A6A9180;
  v17 = a3;
  v21 = a5;
  v16[4] = self;
  v16[5] = &v23;
  v18 = a7;
  v19 = a8;
  v20 = a6;
  v22 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v11, v8, v9, v10, v16);
  v12 = v24[6];
  v13 = v24[7];
  _Block_object_dispose(&v23, 8);
  v14 = v12;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

- (_NSRange)validPageRangeForSelection:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4012000000;
  v22 = sub_27601745C;
  v23 = nullsub_2;
  v24 = &unk_2760658C2;
  v25 = *MEMORY[0x277D81490];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276017BD8;
  v15[3] = &unk_27A6A91A8;
  v16 = v4;
  v17 = self;
  v18 = &v19;
  v5 = v4;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v7, v8, v9, v10, v15);
  v11 = v20[6];
  v12 = v20[7];

  _Block_object_dispose(&v19, 8);
  v13 = v11;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (_NSRange)bodyRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4012000000;
  v17 = sub_27601745C;
  v18 = nullsub_2;
  v19 = &unk_2760658C2;
  v20 = *MEMORY[0x277D81490];
  v7.n128_u64[1] = *(&v20 + 1);
  v12[0] = MEMORY[0x277D85DD0];
  v7.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276017DF8;
  v12[3] = &unk_27A6A91D0;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = a3;
  v13 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v7, v4, v5, v6, v12);
  v8 = v15[6];
  v9 = v15[7];
  _Block_object_dispose(&v14, 8);
  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (_NSRange)anchoredRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4012000000;
  v17 = sub_27601745C;
  v18 = nullsub_2;
  v19 = &unk_2760658C2;
  v20 = *MEMORY[0x277D81490];
  v7.n128_u64[1] = *(&v20 + 1);
  v12[0] = MEMORY[0x277D85DD0];
  v7.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276017F3C;
  v12[3] = &unk_27A6A91D0;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = a3;
  v13 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v7, v4, v5, v6, v12);
  v8 = v15[6];
  v9 = v15[7];
  _Block_object_dispose(&v14, 8);
  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)anchoredDrawablesOnPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v9 = objc_msgSend_anchoredRangeForPageIndex_forcePagination_(self, a2, v4, v5, v6, v7, a3, a4);
  v11 = v10;
  v16 = objc_msgSend_documentRoot(self, v10, v12, v13, v14, v15);
  v22 = objc_msgSend_bodyStorage(v16, v17, v18, v19, v20, v21);

  v28 = objc_msgSend_attachmentIndexRangeForTextRange_(v22, v23, v24, v25, v26, v27, v9, v11);
  v30 = v29;
  if (v28 >= v28 + v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = 0;
    do
    {
      objc_opt_class();
      v37 = objc_msgSend_attachmentAtAttachmentIndex_outCharIndex_(v22, v32, v33, v34, v35, v36, v28, 0);
      v38 = TSUDynamicCast();

      if (v38 && objc_msgSend_isDrawable(v38, v39, v40, v41, v42, v43) && objc_msgSend_isAnchored(v38, v44, v45, v46, v47, v48) && (objc_msgSend_isPartitioned(v38, v49, v50, v51, v52, v53) & 1) == 0)
      {
        if (v31)
        {
          v59 = objc_msgSend_drawable(v38, v54, v55, v56, v57, v58);
          objc_msgSend_addObject_(v31, v60, v61, v62, v63, v64, v59);
        }

        else
        {
          v65 = MEMORY[0x277CBEB18];
          v59 = objc_msgSend_drawable(v38, v54, v55, v56, v57, v58);
          v31 = objc_msgSend_arrayWithObject_(v65, v66, v67, v68, v69, v70, v59);
        }
      }

      ++v28;
      --v30;
    }

    while (v30);
  }

  return v31;
}

- (_NSRange)footnoteLayoutRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4012000000;
  v17 = sub_27601745C;
  v18 = nullsub_2;
  v19 = &unk_2760658C2;
  v20 = *MEMORY[0x277D81490];
  v7.n128_u64[1] = *(&v20 + 1);
  v12[0] = MEMORY[0x277D85DD0];
  v7.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_27601825C;
  v12[3] = &unk_27A6A91D0;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = a3;
  v13 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v7, v4, v5, v6, v12);
  v8 = v15[6];
  v9 = v15[7];
  _Block_object_dispose(&v14, 8);
  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (BOOL)pageBeginsWithPaginatedAttachment:(unint64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v3.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_27601835C;
  v9[3] = &unk_27A6A91F8;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v9);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)pageEndsWithPaginatedAttachment:(unint64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v3.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_276018550;
  v9[3] = &unk_27A6A91F8;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v9);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (BOOL)pageAtIndexHasBody:(unint64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v3.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_276018744;
  v9[3] = &unk_27A6A91F8;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v9);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unint64_t)pageIndexForCharIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_276018938;
  v10[3] = &unk_27A6A91D0;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = a3;
  v11 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v4, v5, v6, v7, v10);
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

- (unint64_t)pageIndexForAnchoredCharIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_276018A48;
  v10[3] = &unk_27A6A91D0;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = a3;
  v11 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v4, v5, v6, v7, v10);
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

- (unint64_t)pageIndexForAnchoredAttachment:(id)a3 forcePagination:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12 = v6;
  if (v6)
  {
    CharIndex = objc_msgSend_findCharIndex(v6, v7, v8, v9, v10, v11);
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    if (CharIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = objc_msgSend_pageIndexForAnchoredCharIndex_forcePagination_(self, v13, v15, v16, v17, v18, CharIndex, v4);
    }
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v19;
}

- (unint64_t)pageIndexForFootnoteIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_276018BD0;
  v10[3] = &unk_27A6A91D0;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = a3;
  v11 = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v4, v5, v6, v7, v10);
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

- (_NSRange)documentPageRangeOfSectionIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4012000000;
  v17 = sub_27601745C;
  v18 = nullsub_2;
  v19 = &unk_2760658C2;
  v20 = *MEMORY[0x277D81490];
  v7.n128_u64[1] = *(&v20 + 1);
  v12[0] = MEMORY[0x277D85DD0];
  v7.n128_u64[0] = 3221225472;
  v12[1] = 3221225472;
  v12[2] = sub_276018D14;
  v12[3] = &unk_27A6A9220;
  v13 = a4;
  v12[5] = &v14;
  v12[6] = a3;
  v12[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v7, v4, v5, v6, v12);
  v8 = v15[6];
  v9 = v15[7];
  _Block_object_dispose(&v14, 8);
  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (unint64_t)sectionIndexForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_276018F44;
  v10[3] = &unk_27A6A9220;
  v10[5] = &v12;
  v10[6] = a3;
  v11 = a4;
  v10[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v4, v5, v6, v7, v10);
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

- (_NSRange)sectionBodyRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4012000000;
  v16 = sub_27601745C;
  v17 = nullsub_2;
  v18 = &unk_2760658C2;
  v19 = xmmword_27605FD20;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2760190C4;
  v11[3] = &unk_27A6A9220;
  v11[5] = &v13;
  v11[6] = a3;
  v12 = a4;
  v11[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, 0xC0000000uLL, v4, v5, v6, v11);
  v7 = v14[6];
  v8 = v14[7];
  _Block_object_dispose(&v13, 8);
  v9 = v7;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (unint64_t)sectionPageIndexForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FFFFFFFFFFFFFFFLL;
  v10[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v10[1] = 3221225472;
  v10[2] = sub_276019328;
  v10[3] = &unk_27A6A9220;
  v10[5] = &v12;
  v10[6] = a3;
  v11 = a4;
  v10[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v4, v5, v6, v7, v10);
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v8;
}

- (_NSRange)sectionPageRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 outEndIsValid:(BOOL *)a5
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4012000000;
  v17 = sub_27601745C;
  v18 = nullsub_2;
  v19 = &unk_2760658C2;
  v20 = xmmword_27605FD20;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2760194AC;
  v12[3] = &unk_27A6A9248;
  v13 = a4;
  v12[4] = self;
  v12[5] = &v14;
  v12[6] = a3;
  v12[7] = a5;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, 0xC0000000uLL, v5, v6, v7, v12);
  v8 = v15[6];
  v9 = v15[7];
  _Block_object_dispose(&v14, 8);
  v10 = v8;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- (id)pageInfoForPageIndex:(unint64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2760196AC;
  v14 = sub_2760196BC;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v3.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_2760196C4;
  v9[3] = &unk_27A6A91F8;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)numberOfPagesInEachSection
{
  v15 = 0;
  v16 = &v15;
  v2.n128_u64[0] = 0x3032000000;
  v17 = 0x3032000000;
  v18 = sub_2760196AC;
  v19 = sub_2760196BC;
  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v14[0] = MEMORY[0x277D85DD0];
  v7.n128_u64[0] = 3221225472;
  v14[1] = 3221225472;
  v14[2] = sub_276019954;
  v14[3] = &unk_27A6A9270;
  v14[4] = self;
  v14[5] = &v15;
  objc_msgSend_accquireLockAndPerformAction_(self, v8, v7, v9, v10, v11, v14);
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)pageIndicesForPartitionableAttachmentAtBodyCharIndex:(unint64_t)a3 selectionPath:(id)a4 forcePagination:(BOOL)a5
{
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_276019C14;
  v20[3] = &unk_27A6A9158;
  v20[4] = self;
  v23 = a3;
  v24 = a5;
  v10 = v8;
  v21 = v10;
  v11 = v9;
  v22 = v11;
  objc_msgSend_accquireLockAndPerformAction_(self, v12, v13, v14, v15, v16, v20);
  v17 = v22;
  v18 = v11;

  return v11;
}

- (void)withPageLayoutAtIndex:(unint64_t)a3 preferredLayoutController:(id)a4 executeBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_27601A1F0;
  v17[3] = &unk_27A6A92B8;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = a3;
  v10 = v9;
  v11 = v8;
  objc_msgSend_accquireLockAndPerformAction_(self, v12, v13, v14, v15, v16, v17);
}

- (id)offscreenLayoutController
{
  v6 = objc_msgSend_canvas(self->_offscreenSearchDelegate, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_layoutController(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)isPaginationCompleteForSelection:(id)a3 inFlow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_27601AA24;
  v16[3] = &unk_27A6A92E0;
  v16[4] = self;
  v17 = v7;
  v18 = v6;
  v19 = &v20;
  v8 = v6;
  v9 = v7;
  objc_msgSend_accquireLockAndPerformAction_(self, v10, v11, v12, v13, v14, v16);
  LOBYTE(self) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return self;
}

- (BOOL)isPaginationComplete
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v8[1] = 3221225472;
  v8[2] = sub_27601AB74;
  v8[3] = &unk_27A6A9308;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v2, v3, v4, v5, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (BOOL)isPaginationInProgress
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v8[1] = 3221225472;
  v8[2] = sub_27601AC64;
  v8[3] = &unk_27A6A9308;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v2, v3, v4, v5, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (id)footnoteLayoutController
{
  footnoteLayoutController = self->_footnoteLayoutController;
  if (!footnoteLayoutController)
  {
    v4 = [TPFootnoteLayoutController alloc];
    v10 = objc_msgSend_initWithPaginatedPageController_(v4, v5, v6, v7, v8, v9, self);
    v11 = self->_footnoteLayoutController;
    self->_footnoteLayoutController = v10;

    footnoteLayoutController = self->_footnoteLayoutController;
  }

  return footnoteLayoutController;
}

- (BOOL)p_canAnchorDrawable:(id)a3 toPageLayout:(id)a4
{
  v191 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v13 = objc_msgSend_bodyLayout(v7, v8, v9, v10, v11, v12);
  v180 = v13;
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), TSUDynamicCast(), v19 = objc_claimAutoreleasedReturnValue(), (v20 = v19) != 0) && (v21 = objc_msgSend_containsDisallowedElementKind_(v19, v14, v15, v16, v17, v18, 4), v20, v21))
    {
      if (objc_msgSend_textIsVertical(v13, v14, v15, v16, v17, v18))
      {
        LOBYTE(v13) = 0;
        goto LABEL_49;
      }
    }

    v22 = objc_msgSend_columns(v13, v14, v15, v16, v17, v18);
    v179 = v22;
    if (!v22 || !objc_msgSend_count(v22, v23, v24, v25, v26, v27))
    {
      LOBYTE(v13) = 0;
LABEL_48:

      goto LABEL_49;
    }

    v33 = objc_msgSend_firstObject(v179, v28, v29, v30, v31, v32);
    v39 = objc_msgSend_singleLinePartitionedInfoAtStart_(v33, v34, v35, v36, v37, v38, 1);

    v178 = v39;
    if (v39)
    {
      v45 = objc_msgSend_lastObject(v179, v40, v41, v42, v43, v44);
      v51 = objc_msgSend_singleLinePartitionedInfoAtStart_(v45, v46, v47, v48, v49, v50, 0);

      if (v51 == v39)
      {
        LOBYTE(v13) = 0;
        goto LABEL_47;
      }
    }

    v187 = 0u;
    v188 = 0u;
    v185 = 0u;
    v186 = 0u;
    v52 = v179;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, v54, v55, v56, v57, &v185, v190, 16);
    if (v59)
    {
      v176 = v7;
      v64 = 0;
      v65 = 0;
      v66 = *v186;
      while (2)
      {
        for (i = 0; i != v59; ++i)
        {
          if (*v186 != v66)
          {
            objc_enumerationMutation(v52);
          }

          v68 = *(*(&v185 + 1) + 8 * i);
          v65 |= objc_msgSend_onlyHasPartitionedAttachments(v68, v58, v60, v61, v62, v63);
          if (objc_msgSend_lineCount(v68, v69, v70, v71, v72, v73))
          {
            v64 = 1;
            if ((objc_msgSend_onlyHasAnchoredDrawable(v68, v58, v60, v61, v62, v63) & 1) == 0)
            {
              v74 = 0;
              goto LABEL_23;
            }
          }
        }

        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v58, v60, v61, v62, v63, &v185, v190, 16);
        if (v59)
        {
          continue;
        }

        break;
      }

      v74 = 1;
LABEL_23:
      v7 = v176;
    }

    else
    {
      v64 = 0;
      LOBYTE(v65) = 0;
      v74 = 1;
    }

    v80 = objc_msgSend_documentRoot(self, v75, v76, v77, v78, v79);
    v86 = v80;
    if (v65)
    {
      goto LABEL_26;
    }

    if (v64)
    {
      if ((v74 & 1) == 0)
      {
        v175 = v80;
        v177 = v7;
        v174 = v6;
        v88 = *MEMORY[0x277D81490];
        v87 = *(MEMORY[0x277D81490] + 8);
        v181 = 0u;
        v182 = 0u;
        v183 = 0u;
        v184 = 0u;
        v89 = v52;
        v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, v91, v92, v93, v94, &v181, v189, 16);
        if (!v96)
        {

          v6 = v174;
          goto LABEL_55;
        }

        v101 = *v182;
        location = v88;
        length = v87;
        do
        {
          for (j = 0; j != v96; ++j)
          {
            if (*v182 != v101)
            {
              objc_enumerationMutation(v89);
            }

            v105 = *(*(&v181 + 1) + 8 * j);
            if (location == 0x7FFFFFFFFFFFFFFFLL)
            {
              location = objc_msgSend_anchoredRange(*(*(&v181 + 1) + 8 * j), v95, v97, v98, v99, v100);
              length = v106;
              v111 = objc_msgSend_range(v105, v106, v107, v108, v109, v110);
            }

            else
            {
              v194.location = objc_msgSend_anchoredRange(*(*(&v181 + 1) + 8 * j), v95, v97, v98, v99, v100);
              v194.length = v112;
              v192.location = location;
              v192.length = length;
              v113 = NSUnionRange(v192, v194);
              location = v113.location;
              length = v113.length;
              v195.location = objc_msgSend_range(v105, v113.length, v114, v115, v116, v117);
              v195.length = v118;
              v193.location = v88;
              v193.length = v87;
              v119 = NSUnionRange(v193, v195);
              v95 = v119.length;
              v111 = v119.location;
            }

            v88 = v111;
            v87 = v95;
          }

          v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v95, v97, v98, v99, v100, &v181, v189, 16);
        }

        while (v96);

        v6 = v174;
        v7 = v177;
        if (location <= v88 || location < v88 + v87)
        {
LABEL_55:
          v156 = objc_msgSend_sectionTemplatePageOwningInfo_(v175, v120, v121, v122, v123, v124, v6, v174);
          LODWORD(v13) = v156 == 0;

          if (v13)
          {
            v86 = v175;
            if (objc_msgSend_elementKind(v6, v157, v158, v159, v160, v161) != 4)
            {
              LOBYTE(v13) = 1;
              goto LABEL_27;
            }

            v167 = objc_msgSend_bodyLayout(v7, v162, v163, v164, v165, v166);
            IsVertical = objc_msgSend_textIsVertical(v167, v168, v169, v170, v171, v172);

            LOBYTE(v13) = IsVertical ^ 1;
          }

          goto LABEL_60;
        }

        LOBYTE(v13) = 0;
LABEL_60:
        v86 = v175;
        goto LABEL_27;
      }
    }

    else if (v6 && objc_msgSend_elementKind(v6, v81, v82, v83, v84, v85) == 4)
    {
      v175 = v86;
      v132 = objc_msgSend_floatingDrawables(v86, v127, v128, v129, v130, v131);
      v138 = objc_msgSend_pageIndex(v7, v133, v134, v135, v136, v137);
      v144 = objc_msgSend_drawablesOnPageIndex_(v132, v139, v140, v141, v142, v143, v138);

      if (objc_msgSend_count(v144, v145, v146, v147, v148, v149) == 1)
      {
        v155 = objc_msgSend_member_(v144, v150, v151, v152, v153, v154, v6);
        LOBYTE(v13) = v155 != 0;
      }

      else
      {
        LOBYTE(v13) = 0;
      }

      goto LABEL_60;
    }

LABEL_26:
    LOBYTE(v13) = 0;
LABEL_27:

LABEL_47:
    goto LABEL_48;
  }

LABEL_49:

  return v13 & 1;
}

- (BOOL)okToAnchorDrawable:(id)a3 toPageIndex:(unint64_t)a4
{
  v10 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], a2, v4, v5, v6, v7, a3);
  LOBYTE(a4) = objc_msgSend_okToAnchorDrawables_toPageIndex_(self, v11, v12, v13, v14, v15, v10, a4);

  return a4;
}

- (BOOL)okToAnchorDrawables:(id)a3 toPageIndex:(unint64_t)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_27601B464;
  v14[3] = &unk_27A6A9358;
  v14[4] = self;
  v15 = v6;
  v16 = &v18;
  v17 = a4;
  v7 = v6;
  objc_msgSend_accquireLockAndPerformAction_(self, v8, v9, v10, v11, v12, v14);
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

- (void)addPaginationObserver:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = sub_27601B928;
    v34[3] = &unk_27A6A8418;
    v34[4] = self;
    v35 = v4;
    objc_msgSend_accquireLockAndPerformAction_(self, v11, v12, v13, v14, v15, v34);
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, v9, "[TPPaginatedPageController addPaginationObserver:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v24, v25, v26, v27, v28, v17, v23, 1571, 0, "invalid nil value for '%{public}s'", "observer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32, v33);
  }
}

- (void)removePaginationObserver:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    if (self->_layoutObservers)
    {
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_27601BBA8;
      v52[3] = &unk_27A6A8418;
      v52[4] = self;
      v53 = v4;
      objc_msgSend_accquireLockAndPerformAction_(self, v11, v12, v13, v14, v15, v52);

      goto LABEL_7;
    }
  }

  else
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, v9, "[TPPaginatedPageController removePaginationObserver:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v24, v25, v26, v27, v28, v17, v23, 1584, 0, "invalid nil value for '%{public}s'", "observer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31, v32, v33);
    if (self->_layoutObservers)
    {
      goto LABEL_7;
    }
  }

  if (!self->_isTornDown)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, v9, "[TPPaginatedPageController removePaginationObserver:]");
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 1592, 0, "_layoutObservers shouldn't be nil unless the page controller has been torn down");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50, v51);
  }

LABEL_7:
}

- (void)layoutManagerNeedsLayout:(id)a3
{
  v27 = a3;
  if (self->_bodyLayoutManager != v27)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPPaginatedPageController layoutManagerNeedsLayout:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 1983, 0, "bad layout manager");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  self->_layoutInvalidationPending = 0;
  objc_msgSend_p_processBodyLayoutInvalidation(self, v4, v5, v6, v7, v8);
}

- (void)p_processBodyLayoutInvalidation
{
  v6[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v6[1] = 3221225472;
  v6[2] = sub_27601BD48;
  v6[3] = &unk_27A6A8768;
  v6[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v2, v3, v4, v5, v6);
}

- (id)topicNumbersForStorage:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_documentRoot(self, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_bodyStorage(v10, v11, v12, v13, v14, v15);
  if (v17 == v4)
  {
    v22 = objc_msgSend_bodyTopicNumbers(self, v16, v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)layoutManager:(id)a3 didClearDirtyRangeWithDelta:(int64_t)a4 afterCharIndex:(unint64_t)a5
{
  if ((objc_msgSend_isPaginating(self, a2, v5, v6, v7, v8, a3) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "[TPPaginatedPageController layoutManager:didClearDirtyRangeWithDelta:afterCharIndex:]");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v25, v26, v27, v28, v29, v18, v24, 2125, 0, "should only clear dirty range during layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33, v34);
  }

  if (a4)
  {
    v35 = objc_msgSend_sectionHints(self->_paginationState, v12, v13, v14, v15, v16);
    v41 = objc_msgSend_documentPageIndex(self->_paginationState, v36, v37, v38, v39, v40);
    sub_275FFD28C(v64, v35, v41 + 1);

    while (1)
    {
      v47 = sub_275FFD320(v64, v42, v43, v44, v45, v46);

      if (!v47)
      {
        break;
      }

      if (sub_275FFD3B8(v64, v48, v49, v50, v51, v52) != 5)
      {
        v58 = sub_275FFD320(v64, v53, v54, v55, v56, v57);
        objc_msgSend_offsetStartCharIndexBy_charIndex_(v58, v59, v60, v61, v62, v63, a4, a5);
      }

      sub_275FFCF2C(v64, v53, v54, v55, v56, v57);
    }

    sub_275FFD2D0(v64);
  }
}

- (id)metricsCacheForStorage:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_documentRoot(self, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_bodyStorage(v10, v11, v12, v13, v14, v15);
  if (v17 != v4)
  {
    goto LABEL_4;
  }

  v22 = objc_msgSend_documentRoot(self, v16, v18, v19, v20, v21);
  if (objc_msgSend_isDocumentCurrentlyImporting(v22, v23, v24, v25, v26, v27))
  {

LABEL_4:
LABEL_5:
    v33 = 0;
    goto LABEL_6;
  }

  v35 = objc_msgSend_allowParagraphMetrics(self, v28, v29, v30, v31, v32);

  if (!v35)
  {
    goto LABEL_5;
  }

  v33 = self->_bodyLayoutMetricsCache;
LABEL_6:

  return v33;
}

- (BOOL)isPageLayoutRightToLeft
{
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  if (objc_msgSend_writingDirection(v7, v8, v9, v10, v11, v12) == 2)
  {
    v18 = 1;
  }

  else
  {
    v19 = objc_msgSend_documentRoot(self, v13, v14, v15, v16, v17);
    v18 = objc_msgSend_laysOutBodyVertically(v19, v20, v21, v22, v23, v24);
  }

  return v18;
}

- (CGPoint)pageOriginForPageIndex:(unint64_t)a3 allowAfterPaginationPoint:(BOOL)a4
{
  v10 = objc_msgSend_documentRoot(self, a2, v4, v5, v6, v7, a3, a4);
  objc_msgSend_pageSize(v10, v11, v12, v13, v14, v15);
  v17 = v16;
  v19 = v18;

  v25 = objc_msgSend_delegate(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_pageViewState(v25, v26, v27, v28, v29, v30);

  if (v31 == 1)
  {
    v89 = 0;
    v90 = &v89;
    v91 = 0x2020000000;
    v92 = 0x7FFFFFFFFFFFFFFFLL;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2020000000;
    v88 = 0x7FFFFFFFFFFFFFFFLL;
    v32 = self->_cachedPaginationState;
    if (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(v32, v33, v34, v35, v36, v37, a3))
    {
      v43 = objc_msgSend_pageHintForPageIndex_(v32, v38, v39, v40, v41, v42, a3);
      v49 = v43;
      if (v43)
      {
        v50 = objc_msgSend_pageColumn(v43, v44, v45, v46, v47, v48);
        v90[3] = v50;
        v56 = objc_msgSend_pageRow(v49, v51, v52, v53, v54, v55);
        v86[3] = v56;
      }

      else
      {
        v60 = MEMORY[0x277D81150];
        v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, v48, "[TPPaginatedPageController pageOriginForPageIndex:allowAfterPaginationPoint:]");
        v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, v66, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v68, v69, v70, v71, v72, v61, v67, 2170, 0, "invalid nil value for '%{public}s'", "pageHint");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76, v77);
      }
    }

    else if (a3)
    {
      v84[0] = MEMORY[0x277D85DD0];
      v39.n128_u64[0] = 3221225472;
      v84[1] = 3221225472;
      v84[2] = sub_27601CB8C;
      v84[3] = &unk_27A6A9380;
      v84[4] = self;
      v84[5] = &v89;
      v84[6] = &v85;
      v84[7] = a3;
      objc_msgSend_accquireLockAndPerformAction_(self, v38, v39, v40, v41, v42, v84);
    }

    else
    {
      PageColumn = objc_msgSend_p_firstPageColumn(self, v38, v39, v40, v41, v42);
      v90[3] = PageColumn;
      v86[3] = 0;
    }

    v78 = v90;
    v79 = v90[3];
    v80 = v86;
    if (v79 == 0x7FFFFFFFFFFFFFFFLL || (v81 = v86[3], v81 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v81 = 0;
      v90[3] = 0;
      v80[3] = 0;
      v79 = v78[3];
    }

    v58 = (v17 + self->_horizontalGapBetweenPages) * v79;
    v57 = (v19 + self->_verticalGapBetweenPages) * v81;

    _Block_object_dispose(&v85, 8);
    _Block_object_dispose(&v89, 8);
  }

  else
  {
    v57 = (v19 + self->_verticalGapBetweenPages) * a3;
    v58 = 0.0;
  }

  v82 = v58;
  v83 = v57;
  result.y = v83;
  result.x = v82;
  return result;
}

- (CGRect)pageRectForPageIndex:(unint64_t)a3 allowAfterPaginationPoint:(BOOL)a4
{
  objc_msgSend_pageOriginForPageIndex_allowAfterPaginationPoint_(self, a2, v4, v5, v6, v7, a3, a4);
  v10 = v9.n128_u64[0];
  v12 = v11.n128_u64[0];
  v16 = objc_msgSend_documentRoot(self, v13, v9, v11, v14, v15);
  objc_msgSend_pageSize(v16, v17, v18, v19, v20, v21);
  v23 = v22;
  v25 = v24;

  v26 = *&v10;
  v27 = *&v12;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (unint64_t)pageIndexFromCanvasPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  result = objc_msgSend_pageCount(self, a2, a3, *&a3.y, v3, v4);
  if (result)
  {
    v14 = result;
    v10.n128_f64[0] = x;
    v11.n128_f64[0] = y;
    result = objc_msgSend_calculatePageIndexFromCanvasPoint_(self, v9, v10, v11, v12, v13);
    if (result >= v14 - 1)
    {
      return v14 - 1;
    }
  }

  return result;
}

- (int64_t)pageKindForPageIndex:(unint64_t)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v3.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_27601CF18;
  v9[3] = &unk_27A6A93A8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v9);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unint64_t)calculatePageIndexFromCanvasPoint:(CGPoint)a3
{
  v3.n128_u64[0] = 0;
  if (a3.x >= 0.0)
  {
    x = a3.x;
  }

  else
  {
    x = 0.0;
  }

  if (a3.y >= 0.0)
  {
    y = a3.y;
  }

  else
  {
    y = 0.0;
  }

  v8 = objc_msgSend_documentRoot(self, a2, a3, *&a3.y, v3, v4);
  objc_msgSend_pageSize(v8, v9, v10, v11, v12, v13);
  v15 = v14;
  v17 = v16;

  v23 = objc_msgSend_delegate(self, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_pageViewState(v23, v24, v25, v26, v27, v28);

  if (v29 == 1)
  {
    v35 = objc_msgSend_documentRoot(self, v30, v31, v32, v33, v34);
    v41 = objc_msgSend_settings(v35, v36, v37, v38, v39, v40);
    hasFacingPages = objc_msgSend_hasFacingPages(v41, v42, v43, v44, v45, v46);

    objc_msgSend_horizontalPageSeparation(self, v48, v49, v50, v51, v52);
    v54 = v53.n128_f64[0];
    objc_msgSend_verticalPageSeparation(self, v55, v53, v56, v57, v58);
    v62.n128_f64[0] = y + v63.n128_f64[0] * 0.5;
    v63.n128_f64[0] = v62.n128_f64[0] / (v17 + v63.n128_f64[0]);
    v64 = v63.n128_f64[0];
    if (v63.n128_f64[0] < 0)
    {
      v65 = MEMORY[0x277D81150];
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v63, v62, v60, v61, "[TPPaginatedPageController calculatePageIndexFromCanvasPoint:]");
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v68, v69, v70, v71, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v73, v74, v75, v76, v77, v66, v72, 2277, 0, "CanvasPointPageRow must be non-negative (cast later to NSUInteger)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81, v82);
    }

    v63.n128_f64[0] = v54 * 0.5;
    v83 = v15 + v54;
    v84 = objc_msgSend_pageCount(self, v59, v63, v62, v60, v61);
    v90 = (v84 - 1) >> 1;
    if (v90 >= v64)
    {
      v90 = v64;
    }

    v91 = (v84 + 1) >> 1;
    if (v91 >= v64)
    {
      v91 = v64;
    }

    v92 = v84 - 1;
    if (hasFacingPages)
    {
      v93 = v91;
    }

    else
    {
      v93 = v90;
    }

    v94 = (x + v54 * 0.5 >= v83) ^ objc_msgSend_isPageLayoutRightToLeft(self, v85, v86, v87, v88, v89) | (2 * v93);
    if (v94)
    {
      v95 = hasFacingPages;
    }

    else
    {
      v95 = 0;
    }

    v96 = v94 - v95;
    if (v96 >= v92)
    {
      return v92;
    }

    else
    {
      return v96;
    }
  }

  else
  {
    v31.n128_f64[0] = y / (v17 + self->_verticalGapBetweenPages);
    v98 = v31.n128_f64[0];
    if (v31.n128_f64[0] < 0)
    {
      v99 = MEMORY[0x277D81150];
      v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, v34, "[TPPaginatedPageController calculatePageIndexFromCanvasPoint:]");
      v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, v102, v103, v104, v105, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v99, v107, v108, v109, v110, v111, v100, v106, 2299, 0, "CanvasPointPageGap must be greater than or equal to zero (cast later to NSUInteger)");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v112, v113, v114, v115, v116);
    }

    return v98;
  }
}

- (unint64_t)pageHeightCountForPageViewState:(int64_t)a3
{
  v11 = 0;
  v12 = &v11;
  v3.n128_u64[0] = 0x2020000000;
  v13 = 0x2020000000;
  v14 = 0;
  if (a3 == 1)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v3.n128_u64[0] = 3221225472;
    v10[1] = 3221225472;
    v10[2] = sub_27601D310;
    v10[3] = &unk_27A6A9270;
    v10[4] = self;
    v10[5] = &v11;
    objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v10);
    v7 = v12[3];
  }

  else
  {
    v8 = objc_msgSend_pageCount(self, a2, v3, v4, v5, v6);
    if (v8 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8;
    }

    v12[3] = v7;
  }

  _Block_object_dispose(&v11, 8);
  return v7;
}

- (CGSize)canvasSizeToFitAllPagesForPageViewState:(int64_t)a3
{
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  objc_msgSend_pageSize(v9, v10, v11, v12, v13, v14);
  v16 = v15;
  v18 = v17;

  if (a3 == 1)
  {
    v20.n128_u64[0] = *&self->_horizontalGapBetweenPages;
    v21.n128_u64[0] = 2.0;
    v16 = v20.n128_f64[0] + v16 * 2.0;
  }

  v24 = objc_msgSend_pageHeightCountForPageViewState_(self, v19, v20, v21, v22, v23, a3);
  v25 = v24;
  v26 = self->_verticalGapBetweenPages * (v24 - 1);
  if ((atomic_load_explicit(&qword_280A404F0, memory_order_acquire) & 1) == 0)
  {
    v29 = v26;
    v30 = v24;
    sub_276038454();
    v26 = v29;
    v25 = v30;
  }

  v27 = v26 + v18 * v25;
  if (*&qword_280A404F8 != v16 || *&qword_280A40500 != v27)
  {
    qword_280A404F8 = *&v16;
    qword_280A40500 = *&v27;
  }

  v28 = v16;
  result.height = v27;
  result.width = v28;
  return result;
}

- (void)changeTrackingVisibilityDidChange
{
  v8.receiver = self;
  v8.super_class = TPPaginatedPageController;
  [(TPPageController *)&v8 changeTrackingVisibilityDidChange];
  objc_msgSend_invalidateAllPageLayoutsSizeAndPosition(self, v3, v4, v5, v6, v7);
}

- (void)invalidateAllPageLayoutsSizeAndPosition
{
  v6[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v6[1] = 3221225472;
  v6[2] = sub_27601D694;
  v6[3] = &unk_27A6A8768;
  v6[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v2, v3, v4, v5, v6);
}

- (double)verticalPageSeparation
{
  v6 = objc_msgSend_delegate(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v6, v7, v8, v9, v10, v11);
  if (!v13)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v14, v15, v16, v17, "[TPPaginatedPageController verticalPageSeparation]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v26, v27, v28, v29, v30, v19, v25, 2396, 0, "invalid nil value for '%{public}s'", "docRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34, v35);
  }

  v36 = objc_msgSend_settings(v13, v12, v14, v15, v16, v17);
  v47 = 12.0;
  if ((objc_msgSend_hasFacingPages(v36, v37, v38, v39, v40, v41) & 1) == 0 && objc_msgSend_pageViewState(v6, v42, v43, v44, v45, v46) != 1)
  {
    v53 = objc_msgSend_settings(v13, v48, v49, v50, v51, v52);
    if (objc_msgSend_hasBody(v53, v54, v55, v56, v57, v58))
    {
      v47 = 0.0;
    }

    else
    {
      v47 = 12.0;
    }
  }

  return v47;
}

- (unint64_t)adjacentPageIndexForPageIndex:(unint64_t)a3
{
  v9 = objc_msgSend_delegate(self, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_pageViewState(v9, v10, v11, v12, v13, v14);

  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (v15 == 1)
  {
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0x7FFFFFFFFFFFFFFFLL;
    v17 = self->_cachedPaginationState;
    if (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(v17, v18, v19, v20, v21, v22, a3))
    {
      v28 = objc_msgSend_pageHintForPageIndex_(v17, v23, v24, v25, v26, v27, a3);
      v34 = v28;
      if (v28)
      {
        v35 = objc_msgSend_pageColumn(v28, v29, v30, v31, v32, v33);
        v72[3] = v35;
      }

      else
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "[TPPaginatedPageController adjacentPageIndexForPageIndex:]");
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v50, v51, v52, v53, v54, v43, v49, 2412, 0, "invalid nil value for '%{public}s'", "pageHint");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58, v59);
      }
    }

    else if (a3)
    {
      v70[0] = MEMORY[0x277D85DD0];
      v24.n128_u64[0] = 3221225472;
      v70[1] = 3221225472;
      v70[2] = sub_27601DBF4;
      v70[3] = &unk_27A6A91F8;
      v70[4] = self;
      v70[5] = &v71;
      v70[6] = a3;
      objc_msgSend_accquireLockAndPerformAction_(self, v23, v24, v25, v26, v27, v70);
    }

    else
    {
      PageColumn = objc_msgSend_p_firstPageColumn(self, v23, v24, v25, v26, v27);
      v72[3] = PageColumn;
    }

    v16 = 0x7FFFFFFFFFFFFFFFLL;
    if (v72[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v60 = objc_msgSend_documentPageIndex(self->_paginationState, v36, v37, v38, v39, v40);
      isPageLayoutRightToLeft = objc_msgSend_isPageLayoutRightToLeft(self, v61, v62, v63, v64, v65);
      v67 = v72[3];
      if (a3 || (v68 = v67 == isPageLayoutRightToLeft, v67 = isPageLayoutRightToLeft, v68))
      {
        if (v67 != isPageLayoutRightToLeft || (v16 = a3 + 1, a3 + 1 >= v60))
        {
          if (a3 != 0 && v67 != isPageLayoutRightToLeft)
          {
            v16 = a3 - 1;
          }

          else
          {
            v16 = 0x7FFFFFFFFFFFFFFFLL;
          }
        }
      }
    }

    _Block_object_dispose(&v71, 8);
  }

  return v16;
}

- (void)i_rebuildCachedLayoutChildrenFromStartPage:(unint64_t)a3 toEndPage:(unint64_t)a4 setNeedsLayout:(BOOL)a5
{
  v9 = a5;
  v42 = *MEMORY[0x277D85DE8];
  objc_msgSend_pageLayoutsFromStartIndex_toEndIndex_(self->_pageLayoutCache, a2, v5, v6, v7, v8, a3, a4);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v11 = v38 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, v16, &v37, v41, 16);
  if (v18)
  {
    v23 = *v38;
    do
    {
      v24 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v11);
        }

        v25 = *(*(&v37 + 1) + 8 * v24);
        if (v9)
        {
          v26 = objc_msgSend_pageIndex(*(*(&v37 + 1) + 8 * v24), v17, v19, v20, v21, v22, v37);
          objc_msgSend_p_setNeedsLayoutOnPageIndex_(self, v27, v28, v29, v30, v31, v26);
        }

        objc_msgSend_rebuildChildLayoutsOnNextValidationForcingTextLayoutOnTopLevelObjects_(v25, v17, v19, v20, v21, v22, v9, v37);
        objc_msgSend_invalidate(v25, v32, v33, v34, v35, v36);
        ++v24;
      }

      while (v18 != v24);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, v19, v20, v21, v22, &v37, v41, 16);
    }

    while (v18);
  }
}

- (void)p_performWithCachedPageLayouts:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_pageLayouts(self->_pageLayoutCache, v5, v6, v7, v8, v9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_27601DF98;
  v17[3] = &unk_27A6A93D0;
  v11 = v4;
  v18 = v11;
  objc_msgSend_enumerateObjectsUsingBlock_(v10, v12, v13, v14, v15, v16, v17);
}

- (void)p_rebuildPageLayoutsContainingDrawableUUIDs:(id)a3
{
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_27601E198;
    v23[3] = &unk_27A6A93F8;
    v24 = v4;
    v11 = v10;
    v25 = v11;
    objc_msgSend_p_performWithCachedPageLayouts_(self, v12, v13, v14, v15, v16, v23);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_27601E408;
    v22[3] = &unk_27A6A8558;
    v22[4] = self;
    objc_msgSend_enumerateIndexesUsingBlock_(v11, v17, v18, v19, v20, v21, v22);
  }
}

- (_NSRange)p_pageRangeAffectedByInfo:(id)a3
{
  v185 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D81490];
  v6 = *(MEMORY[0x277D81490] + 8);
  v179 = v4;
  objc_opt_class();
  v12 = objc_msgSend_owningAttachment(v4, v7, v8, v9, v10, v11);
  v13 = TSUDynamicCast();
  v19 = objc_msgSend_topLevelAttachment(v13, v14, v15, v16, v17, v18);

  v25 = objc_msgSend_documentRoot(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_bodyStorage(v25, v26, v27, v28, v29, v30);

  objc_opt_class();
  v32 = TSUDynamicCast();
  v38 = v32;
  if (v32)
  {
    CharIndex = objc_msgSend_findCharIndex(v32, v33, v34, v35, v36, v37);
    v40 = v38;
    v46 = objc_msgSend_parentStorage(v38, v41, v42, v43, v44, v45);
    v52 = v46;
    if (CharIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v46 == v31)
      {
        isPartitioned = objc_msgSend_isPartitioned(v40, v47, v48, v49, v50, v51);
        if (CharIndex)
        {
          v140 = isPartitioned;
        }

        else
        {
          v140 = 0;
        }

        v141 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(self, v135, v136, v137, v138, v139, CharIndex - v140, 0, 0, 0, 1);
        if (objc_msgSend_isPartitioned(v40, v142, v143, v144, v145, v146))
        {
          if (v141 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (CharIndex + 1 >= objc_msgSend_length(v31, v147, v148, v149, v150, v151) || (LaidOutDocumentPageIndex = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(self, v152, v153, v154, v155, v156), LaidOutDocumentPageIndex == 0x7FFFFFFFFFFFFFFFLL))
            {
              LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v152, v153, v154, v155, v156);
              if (LaidOutDocumentPageIndex == 0x7FFFFFFFFFFFFFFFLL)
              {
                LaidOutDocumentPageIndex = v141;
              }
            }

            if (v141 <= LaidOutDocumentPageIndex + 1)
            {
              v158 = LaidOutDocumentPageIndex + 1;
            }

            else
            {
              v158 = v141;
            }

            if (v141 >= LaidOutDocumentPageIndex + 1)
            {
              v5 = LaidOutDocumentPageIndex + 1;
            }

            else
            {
              v5 = v141;
            }

            v6 = v158 - v5;
          }
        }

        else
        {
          v159 = objc_msgSend_p_pageIndexForAnchoredCharIndex_forcePagination_searchAfterPaginationPoint_(self, v147, v148, v149, v150, v151, CharIndex, 0, 1);
          v165 = objc_msgSend_p_backupPageIndexForCharIndex_(self, v160, v161, v162, v163, v164, CharIndex);
          v171 = v165;
          if (v159)
          {
            if (v159 + 1 == v141 && v165 != v159 - 1)
            {
              objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v166, v167, v168, v169, v170, v159, 0, 1);
              if (!v172)
              {
                --v159;
              }
            }
          }

          if (v171 >= v141)
          {
            v173 = v141;
          }

          else
          {
            v173 = v171;
          }

          if (v173 >= v159)
          {
            v173 = v159;
          }

          if (v173 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v141 <= v171)
            {
              v174 = v171;
            }

            else
            {
              v174 = v141;
            }

            if (v171 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v174 = v141;
            }

            if (v141 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v174 = v171;
            }

            if (v159 <= v174)
            {
              v175 = v174;
            }

            else
            {
              v175 = v159;
            }

            if (v174 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v175 = v159;
            }

            if (v159 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v176 = v174;
            }

            else
            {
              v176 = v175;
            }

            v6 = v176 - v173 + 1;
            v5 = v173;
          }
        }
      }

      else
      {
        v53 = objc_msgSend_parentInfo(v46, v47, v48, v49, v50, v51);
        objc_opt_class();
        v54 = TSUCheckedClassAndProtocolCast();

        v5 = objc_msgSend_p_pageRangeAffectedByInfo_(self, v55, v56, v57, v58, v59, v54, &unk_2885108A0);
        v6 = v60;
      }
    }

    v38 = v40;
  }

  else
  {
    objc_opt_class();
    v62 = TSUDynamicCast();
    if (v62)
    {
      v68 = objc_msgSend_footnoteIndexForFootnote_(v31, v61, v63, v64, v65, v66, v62);
      if (v68 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v73 = objc_msgSend_p_pageIndexForFootnoteIndex_forcePagination_searchAfterPaginationPoint_(self, v67, v69, v70, v71, v72, v68, 0, 1);
        if (v73 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v74 = v73 - 1;
          if (!v73)
          {
            v74 = 0;
          }

          if (v74 <= v73 + 1)
          {
            v75 = v73 + 1;
          }

          else
          {
            v75 = v74;
          }

          if (v74 >= v73 + 1)
          {
            v5 = v73 + 1;
          }

          else
          {
            v5 = v74;
          }

          v6 = v75 - v5;
        }
      }
    }

    else
    {
      v178 = v31;
      v76 = 0;
      for (i = v179; ; i = v76)
      {
        v179 = i;
        v78 = objc_msgSend_parentInfo(i, v61, v63, v64, v65, v66, v177);
        objc_opt_class();
        v177 = &unk_2885108A0;
        v79 = TSUClassAndProtocolCast();

        if (!v79)
        {
          break;
        }

        v76 = v79;
      }

      v85 = objc_msgSend_documentRoot(self, v80, v81, v82, v83, v84, &unk_2885108A0);
      v38 = 0;
      v91 = objc_msgSend_floatingDrawables(v85, v86, v87, v88, v89, v90);

      v97 = objc_msgSend_pageIndexForDrawable_(v91, v92, v93, v94, v95, v96, v179);
      if (v97 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = v97;
        v6 = 1;
      }

      objc_opt_class();
      v98 = TSUDynamicCast();
      if (objc_msgSend_isLinked(v98, v99, v100, v101, v102, v103))
      {
        v182 = 0u;
        v183 = 0u;
        v180 = 0u;
        v181 = 0u;
        v108 = objc_msgSend_textFlow(v98, v104, 0, v105, v106, v107);
        v114 = objc_msgSend_textboxes(v108, v109, v110, v111, v112, v113);

        v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v115, v116, v117, v118, v119, &v180, v184, 16);
        if (v121)
        {
          v126 = 0;
          v127 = *v181;
          do
          {
            for (j = 0; j != v121; ++j)
            {
              if (*v181 != v127)
              {
                objc_enumerationMutation(v114);
              }

              v129 = *(*(&v180 + 1) + 8 * j);
              if (v126)
              {
                v130 = objc_msgSend_pageIndexForDrawable_(v91, v120, v122, v123, v124, v125, v129);
                if (v130 >= v6 + v5 && v130 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v6 = v130 - v5 + 1;
                }

                v126 = 1;
              }

              else
              {
                v126 = v129 == v98;
              }
            }

            v121 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v120, v122, v123, v124, v125, &v180, v184, 16);
          }

          while (v121);
        }

        v31 = v178;
        v62 = 0;
        v38 = 0;
      }
    }
  }

  v132 = v5;
  v133 = v6;
  result.length = v133;
  result.location = v132;
  return result;
}

- (unint64_t)p_backupPageIndexForCharIndex:(unint64_t)a3
{
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_bodyStorage(v9, v10, v11, v12, v13, v14);

  v21 = objc_msgSend_paragraphIndexAtCharIndex_(v15, v16, v17, v18, v19, v20, a3);
  if (v21)
  {
    v46 = *MEMORY[0x277D81490];
    v26 = objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(v15, v22, v46, v23, v24, v25, v21 - 1, &v46);
    if (objc_msgSend_intValueForProperty_(v26, v27, v28, v29, v30, v31, 90))
    {
      v37 = objc_msgSend_p_pageIndexForCharIndex_includeEmptyPages_caretAffinity_forcePagination_searchAfterPaginationPoint_(self, v32, v33, v34, v35, v36, v46.n128_u64[0], 0, 0, 0, 1);
      v43 = v37;
      if (v37 && v37 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v44 = objc_msgSend_p_bodyRangeForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v38, v39, v40, v41, v42, v37, 0, 1);
        v43 -= v46.n128_u64[0] == v44;
      }
    }

    else
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v43;
}

- (unint64_t)p_firstPageColumn
{
  v7 = objc_msgSend_delegate(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_documentRoot(v7, v8, v9, v10, v11, v12);

  v19 = objc_msgSend_settings(v13, v14, v15, v16, v17, v18);
  hasFacingPages = objc_msgSend_hasFacingPages(v19, v20, v21, v22, v23, v24);

  if (hasFacingPages)
  {
    isPageLayoutRightToLeft = objc_msgSend_isPageLayoutRightToLeft(self, v26, v27, v28, v29, v30) ^ 1;
  }

  else
  {
    isPageLayoutRightToLeft = objc_msgSend_isPageLayoutRightToLeft(self, v26, v27, v28, v29, v30);
  }

  v32 = isPageLayoutRightToLeft;

  return v32;
}

- (void)p_hasBodyChanged:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_27601ED74;
  v11[3] = &unk_27A6A8418;
  v11[4] = self;
  v12 = v4;
  v5 = v4;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v7, v8, v9, v10, v11);
}

- (void)p_setNeedsLayoutFromSectionIndexToEnd:(unint64_t)a3
{
  v9 = objc_msgSend_sectionHints(self->_paginationState, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);

  if (v15 <= a3)
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = objc_msgSend_sectionHints(self->_paginationState, v16, v17, v18, v19, v20);
    v27 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v23, v24, v25, v26, a3);

    v33 = objc_msgSend_documentPageRange(v27, v28, v29, v30, v31, v32);
    v39 = v33;
    if (v33 > 0x7FFFFFFFFFFFFFFELL)
    {
      v39 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      completePageCount = &v34[v33];
      v41 = &v34[v33 - 1];
      if (v41 <= 0x7FFFFFFFFFFFFFFDLL)
      {
        if (self->_completePageCount <= v41)
        {
          completePageCount = &v34[v33 - 1];
        }

        else
        {
          completePageCount = self->_completePageCount;
        }
      }

      if (v33 <= completePageCount)
      {
        v42 = v33;
        do
        {
          objc_msgSend_p_invalidatePageIndex_(self, v34, v35, v36, v37, v38, v42++);
        }

        while (v42 <= completePageCount);
      }
    }
  }

  v43 = objc_msgSend_sectionHints(self->_paginationState, v16, v17, v18, v19, v20);
  v49 = objc_msgSend_count(v43, v44, v45, v46, v47, v48);

  if (v49 > a3)
  {
    objc_msgSend_trimSectionHintsFromIndex_(self->_paginationState, v50, v51, v52, v53, v54, a3);
  }

  if (self->_completePageCount >= v39)
  {
    v55 = v39 - 1;
    if (!v39)
    {
      v55 = 0;
    }
  }

  else
  {
    if (v39 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    v55 = 0;
  }

  self->_completePageCount = v55;
LABEL_22:

  objc_msgSend_p_interruptBackgroundPagination(self, v50, v51, v52, v53, v54);
}

- (void)p_setNeedsLayoutOnPageIndex:(unint64_t)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(TPPageInfo, v10, v11, v12, v13, v14, a3, v9);

  if ((isPageTemplatePageIndex_documentRoot & 1) == 0)
  {
    objc_msgSend_p_invalidatePageIndex_(self, v16, v17, v18, v19, v20, a3);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = self->_layoutObservers;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, v24, v25, v26, &v46, v50, 16);
    if (v27)
    {
      v28 = *v47;
      do
      {
        v29 = 0;
        do
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(v21);
          }

          v30 = TSUProtocolCast();
          objc_msgSend_needLayoutForPageController_(v30, v31, v32, v33, v34, v35, self, &unk_288546998);

          ++v29;
        }

        while (v27 != v29);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v36, v37, v38, v39, v40, &v46, v50, 16);
      }

      while (v27);
    }

    objc_msgSend_p_interruptBackgroundPagination(self, v41, v42, v43, v44, v45);
  }
}

- (void)p_invalidatePageIndex:(unint64_t)LaidOutDocumentPageIndex
{
  if (objc_msgSend_isPaginating(self, a2, v3, v4, v5, v6))
  {
    v14 = MEMORY[0x277D81150];
    v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPPaginatedPageController p_invalidatePageIndex:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v25, v111, v20, 3551, 0, "shouldn't invalidate a page while in the middle of pagination");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  if (objc_msgSend_p_isPaginationComplete(self, v9, v10, v11, v12, v13) && (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v31, v32, v33, v34, v35, LaidOutDocumentPageIndex) & 1) == 0)
  {
    LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v31, v32, v33, v34, v35);
  }

  v36 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v31, v32, v33, v34, v35, LaidOutDocumentPageIndex, 0, 1);
  if (v36)
  {
    v112 = v36;
    v41 = objc_msgSend_p_pageHintForPageIndexPath_(self, v36, v37, v38, v39, v40, v36);
    v47 = v41;
    if (v41)
    {
      v48 = objc_msgSend_pageKind(v41, v42, v43, v44, v45, v46);
      v54 = v48;
      if ((v48 - 3) <= 1)
      {
        v56 = objc_msgSend_p_textPageIndexPrecedingPageIndex_(self, v49, v50, v51, v52, v53, LaidOutDocumentPageIndex);
        if (v56 != 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_msgSend_p_invalidatePageIndex_(self, v55, v57, v58, v59, v60, v56);
        }

LABEL_20:
        objc_msgSend_setPageKind_(v47, v55, v57, v58, v59, v60, 5);
        goto LABEL_21;
      }

      if (v48 != 5)
      {
        if (objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, v49, v50, v51, v52, v53, LaidOutDocumentPageIndex))
        {
          if (v54 == 1 || (objc_msgSend_flowHints(v47, v79, v80, v81, v82, v83), v84 = objc_claimAutoreleasedReturnValue(), v90 = objc_msgSend_count(v84, v85, v86, v87, v88, v89), v84, v90))
          {
            self->_checkedForBackUp = 0;
          }
        }

        if (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v79, v80, v81, v82, v83, LaidOutDocumentPageIndex))
        {
          objc_msgSend_restartPaginationFromPageIndexPath_documentPageIndex_(self->_paginationState, v55, v57, v58, v59, v60, v112, LaidOutDocumentPageIndex);
          objc_msgSend_removeAllObjects(self->_pageGeneratorStack, v91, v92, v93, v94, v95);
          objc_msgSend_p_destroyBodyLayoutState(self, v96, v97, v98, v99, v100);
          objc_msgSend_setBodyCharIndex_(self->_paginationState, v101, v102, v103, v104, v105, 0x7FFFFFFFFFFFFFFFLL);
          objc_msgSend_setFootnoteIndex_(self->_paginationState, v106, v107, v108, v109, v110, 0x7FFFFFFFFFFFFFFFLL);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v61 = MEMORY[0x277D81150];
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, v46, "[TPPaginatedPageController p_invalidatePageIndex:]");
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v69, v70, v71, v72, v73, v62, v68, 3562, 0, "invalid nil value for '%{public}s'", "pageHint");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77, v78);
    }

LABEL_21:

    v36 = v112;
  }
}

- (void)p_destroyBodyLayoutState
{
  if (objc_msgSend_bodyLayoutState(self->_paginationState, a2, v2, v3, v4, v5))
  {
    bodyLayoutManager = self->_bodyLayoutManager;
    v13 = objc_msgSend_bodyLayoutState(self->_paginationState, v7, v8, v9, v10, v11);
    objc_msgSend_destroyLayoutState_(bodyLayoutManager, v14, v15, v16, v17, v18, v13);
    paginationState = self->_paginationState;

    objc_msgSend_setBodyLayoutState_(paginationState, v19, v20, v21, v22, v23, 0);
  }
}

- (BOOL)p_isBodyLayoutComplete
{
  if (objc_msgSend_p_isPaginationComplete(self, a2, v2, v3, v4, v5))
  {
    return 1;
  }

  v13 = objc_msgSend_bodyCharIndex(self->_paginationState, v7, v8, v9, v10, v11);
  v19 = objc_msgSend_documentRoot(self, v14, v15, v16, v17, v18);
  v25 = objc_msgSend_bodyStorage(v19, v20, v21, v22, v23, v24);
  v12 = v13 == objc_msgSend_length(v25, v26, v27, v28, v29, v30) && objc_msgSend_bodyLayoutState(self->_paginationState, v31, v32, v33, v34, v35) == 0;

  return v12;
}

- (unint64_t)p_lastValidCharIndex
{
  v6 = objc_msgSend_p_lastValidPageHint(self, a2, v2, v3, v4, v5);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_range(v6, v7, v8, v9, v10, v11);
    v15 = v13 + v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (unint64_t)p_lastValidFootnoteIndex
{
  v6 = objc_msgSend_p_lastValidPageHint(self, a2, v2, v3, v4, v5);
  v12 = v6;
  if (v6)
  {
    v13 = objc_msgSend_footnoteLayoutRange(v6, v7, v8, v9, v10, v11);
    v15 = v13 + v14;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)p_cachedPageLayoutForPageIndex:(unint64_t)a3 preferredLayoutController:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_msgSend_pageLayoutsWithPageIndex_(self->_pageLayoutCache, v7, v8, v9, v10, v11, a3);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v12 = v45 = 0u;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, v17, &v44, v48, 16);
  if (v18)
  {
    v19 = 0;
    v20 = *v45;
LABEL_3:
    v21 = 0;
    v22 = v19;
    while (1)
    {
      if (*v45 != v20)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v44 + 1) + 8 * v21);

      if (!v6)
      {
        break;
      }

      v28 = objc_msgSend_layoutController(v19, v23, v24, v25, v26, v27, v44);
      v29 = v28 == v6;

      if (v29)
      {
        goto LABEL_10;
      }

      ++v21;
      v22 = v19;
      if (v18 == v21)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v30, v31, v32, v33, v34, &v44, v48, 16);
        if (v18)
        {
          goto LABEL_3;
        }

LABEL_10:

        goto LABEL_12;
      }
    }
  }

  else
  {

    v19 = 0;
    v40 = 0;
    if (!v6)
    {
      goto LABEL_19;
    }

LABEL_12:
    v41 = objc_msgSend_layoutController(v19, v35, v36, v37, v38, v39, v44);
    v42 = v41 == v6;

    if (!v42)
    {
      v40 = 0;
LABEL_17:

      goto LABEL_19;
    }
  }

  if (v19)
  {
    objc_opt_class();
    v40 = TSUCheckedDynamicCast();
    goto LABEL_17;
  }

  v40 = 0;
LABEL_19:

  return v40;
}

- (void)p_withPageLayoutAtIndex:(unint64_t)a3 preferredLayoutController:(id)a4 executeBlock:(id)a5
{
  v243[1] = *MEMORY[0x277D85DE8];
  v242 = a4;
  v8 = a5;
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, v9, v10, v11, v12, v13, a3) & 1) == 0 && (!objc_msgSend_p_isPaginationComplete(self, v14, v15, v16, v17, v18) || self->_lastKnownPageCount < a3))
  {
    v19 = objc_msgSend_documentRoot(self, v14, v15, v16, v17, v18);
    isAlternativePageIndex_documentRoot = objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, v20, v21, v22, v23, v24, a3, v19);

    if ((isAlternativePageIndex_documentRoot & 1) == 0)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPPaginatedPageController p_withPageLayoutAtIndex:preferredLayoutController:executeBlock:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v34, v35, v36, v37, v38, v27, v33, 3683, 0, "trying to generate a layout for a page past where we need layout");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40, v41, v42, v43);
    }
  }

  v44 = objc_msgSend_p_cachedPageLayoutForPageIndex_preferredLayoutController_(self, v14, v15, v16, v17, v18, a3, v242);
  v50 = v44;
  if (v44 && (objc_msgSend_bodyLayout(v44, v45, v46, v47, v48, v49), v51 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend_needsInflation(v51, v52, v53, v54, v55, v56), v51, (v57 & 1) == 0))
  {
    objc_msgSend_p_removeDeletedFootnotesOnPageLayout_(self, v45, v46, v47, v48, v49, v50);
    v168 = objc_msgSend_layoutController(v50, v163, v164, v165, v166, v167);
    objc_msgSend_invalidateLayout_(v168, v169, v170, v171, v172, v173, v50);

    v179 = objc_msgSend_bodyLayout(v50, v174, v175, v176, v177, v178);
    v185 = objc_msgSend_needsInflation(v179, v180, v181, v182, v183, v184);

    v191 = objc_msgSend_layoutController(v50, v186, v187, v188, v189, v190);
    objc_msgSend_validateLayoutWithDependencies_(v191, v192, v193, v194, v195, v196, v50);

    v202 = objc_msgSend_bodyLayout(v50, v197, v198, v199, v200, v201);
    v208 = objc_msgSend_needsInflation(v202, v203, v204, v205, v206, v207);

    if (v208)
    {
      v214 = MEMORY[0x277D81150];
      v215 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v209, v210, v211, v212, v213, "[TPPaginatedPageController p_withPageLayoutAtIndex:preferredLayoutController:executeBlock:]");
      v221 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v216, v217, v218, v219, v220, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v214, v222, v223, v224, v225, v226, v215, v221, 3697, 0, "Page should not need inflation after validation (%d)", v185);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v227, v228, v229, v230, v231);
    }

    v98 = v50;
  }

  else
  {
    v58 = objc_msgSend_canvas(self->_offscreenSearchDelegate, v45, v46, v47, v48, v49);
    v64 = objc_msgSend_layoutController(v58, v59, v60, v61, v62, v63);

    v70 = objc_msgSend_p_pageInfoForPageAtIndex_(self, v65, v66, v67, v68, v69, a3);
    v76 = objc_msgSend_canvas(self->_offscreenSearchDelegate, v71, v72, v73, v74, v75);
    v243[0] = v70;
    v82 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v77, v78, v79, v80, v81, v243, 1);
    objc_msgSend_setInfosToDisplay_(v76, v83, v84, v85, v86, v87, v82);

    objc_msgSend_validateLayouts(v64, v88, v89, v90, v91, v92);
    v98 = objc_msgSend_p_cachedPageLayoutForPageIndex_preferredLayoutController_(self, v93, v94, v95, v96, v97, a3, v64);

    v105 = objc_msgSend_bodyLayout(v98, v99, v100, v101, v102, v103);
    if (v105)
    {
      v110 = objc_msgSend_bodyLayout(v98, v104, v106, v107, v108, v109);
      v116 = objc_msgSend_needsInflation(v110, v111, v112, v113, v114, v115);

      if (v116)
      {
        v122 = MEMORY[0x277D81150];
        v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v117, v118, v119, v120, v121, "[TPPaginatedPageController p_withPageLayoutAtIndex:preferredLayoutController:executeBlock:]");
        v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, v128, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v130, v131, v132, v133, v134, v123, v129, 3709, 0, "Newly created page should not need inflation");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v135, v136, v137, v138, v139);
      }
    }

    if (!v98)
    {
      v145 = MEMORY[0x277D81150];
      v146 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v141, v142, v143, v144, "[TPPaginatedPageController p_withPageLayoutAtIndex:preferredLayoutController:executeBlock:]");
      v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, v148, v149, v150, v151, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v145, v153, v154, v155, v156, v157, v146, v152, 3711, 0, "should have found or created a page layout %d", v50 == 0);

      v98 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v158, v159, v160, v161, v162);
    }
  }

  v8[2](v8, v98);
  if (objc_msgSend_withPageLayoutRecursionCount(self, v232, v233, v234, v235, v236) <= 0)
  {
    objc_msgSend_evacuateOldChildLayoutCache(v98, v237, v238, v239, v240, v241);
  }
}

- (id)p_pageInfoForPageAtIndex:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  v11 = objc_msgSend_documentRoot(self, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_initWithPageIndex_documentRoot_layoutInfoProvider_(v5, v12, v13, v14, v15, v16, a3, v11, self);

  return v17;
}

- (unint64_t)p_pageIndexForCharIndex:(unint64_t)a3 includeEmptyPages:(BOOL)a4 caretAffinity:(int64_t)a5 forcePagination:(BOOL)a6 searchAfterPaginationPoint:(BOOL)a7
{
  v11 = a7;
  v12 = a6;
  v15 = objc_msgSend_documentRoot(self, a2, v7, v8, v9, v10);
  v21 = objc_msgSend_bodyStorage(v15, v16, v17, v18, v19, v20);

  v188 = v21;
  if (a3)
  {
    if (objc_msgSend_length(v21, v22, v23, v24, v25, v26) < a3)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "[TPPaginatedPageController p_pageIndexForCharIndex:includeEmptyPages:caretAffinity:forcePagination:searchAfterPaginationPoint:]");
      v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      v45 = objc_msgSend_length(v21, v40, v41, v42, v43, v44);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v46, v47, v48, v49, v50, v33, v39, 3756, 0, "Given char index is beyond the storage: %lu vs %lu", v45, a3);

      objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v51, v52, v53, v54, v55);
    }

    if (objc_msgSend_length(v21, v27, v28, v29, v30, v31))
    {
      if (objc_msgSend_length(v21, v56, v57, v58, v59, v60) <= a3 - 1)
      {
        v68 = 0;
      }

      else
      {
        v66 = objc_msgSend_characterAtIndex_(v21, v61, v62, v63, v64, v65, a3 - 1);
        v67 = IsParagraphBreakingCharacter();
        if (v66 == 8232)
        {
          v68 = 1;
        }

        else
        {
          v68 = v67;
        }
      }

      v70 = objc_msgSend_p_pageIndexContainingIndex_ofType_(self, v61, v62, v63, v64, v65, a3 - 1, 0);
    }

    else
    {
      v68 = 0;
      v70 = objc_msgSend_p_pageIndexContainingIndex_ofType_(self, v56, v57, v58, v59, v60, a3 - 1, 0);
    }

    v69 = v70;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  if (v69 > objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v22, v23, v24, v25, v26))
  {
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, v75, "[TPPaginatedPageController p_pageIndexForCharIndex:includeEmptyPages:caretAffinity:forcePagination:searchAfterPaginationPoint:]");
    v78 = a3;
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v85, v86, v87, v88, v89, v77, v84, 3760, 0, "Start page index should be a valid index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v90, v91, v92, v93, v94);
    a3 = v78;
  }

  v191 = a3;
  while (1)
  {
    v95 = v12 && (v69 != self->_didLayOutPageIndex);
    v97 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v71, v72, v73, v74, v75, v69, v95, v11);
    if (!v97 || !v11 && (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v96, v98, v99, v100, v101, v69) & 1) == 0)
    {
      break;
    }

    if (objc_msgSend_pageKind(v97, v96, v98, v99, v100, v101) != 1 || !objc_msgSend_lineCount(v97, v102, v103, v104, v105, v106) && !a4)
    {
      v107 = objc_msgSend_documentRoot(self, v102, v103, v104, v105, v106);
      v113 = objc_msgSend_settings(v107, v108, v109, v110, v111, v112);
      if (objc_msgSend_hasBody(v113, v114, v115, v116, v117, v118))
      {
        v124 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_28:

        goto LABEL_42;
      }

      v125 = objc_msgSend_pageKind(v97, v119, v120, v121, v122, v123);

      if (v125 != 6)
      {
        goto LABEL_41;
      }
    }

    v126 = objc_msgSend_range(v97, v102, v103, v104, v105, v106);
    v132 = v126;
    v124 = v69;
    if (&v127[v126] > v191)
    {
      goto LABEL_42;
    }

    v124 = &v127[v126] == v191 ? v69 : 0x7FFFFFFFFFFFFFFFLL;
    if (((&v127[v126] == v191) & ((a5 != 1) | v68)) != 1)
    {
      goto LABEL_42;
    }

    if (!(v127 | a5))
    {
      v144 = v188;
      v107 = objc_msgSend_firstChildHint(v97, v127, v128, v129, v130, v131);
      v150 = objc_msgSend_firstChildHint(v97, v145, v146, v147, v148, v149);
      v113 = v150;
      if (!(v107 | v150))
      {
        goto LABEL_59;
      }

      v187 = 1;
      if (v107 && v150 && v107 == v150)
      {
        v187 = (objc_opt_respondsToSelector() & 1) != 0 ? objc_msgSend_isFirstHint(v107, v156, v157, v158, v159, v160) : 1;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v161 = MEMORY[0x277D81150];
          v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, v152, v153, v154, v155, "[TPPaginatedPageController p_pageIndexForCharIndex:includeEmptyPages:caretAffinity:forcePagination:searchAfterPaginationPoint:]");
          v185 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v162, v163, v164, v165, v166, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v161, v167, v168, v169, v170, v171, v186, v185, 3793, 0, "partition hints must respond to -isFirstHint");

          v144 = v188;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v172, v173, v174, v175, v176);
        }
      }

      if (objc_msgSend_pageKind(v97, v151, v152, v153, v154, v155) == 1)
      {
        v182 = objc_msgSend_length(v144, v177, v178, v179, v180, v181);
        v183 = (v107 != 0) & v187;
        if (v132 >= v182)
        {
          v183 = 1;
        }

        if (v183)
        {
          v124 = v69;
        }

        else
        {
          v124 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      else
      {
LABEL_59:
        v124 = v69;
      }

      goto LABEL_28;
    }

    v133 = objc_msgSend_lastChildHint(v97, v127, v128, v129, v130, v131);

    v124 = v69;
    if (!v133)
    {
      if (objc_msgSend_p_isPaginationComplete(self, v134, v135, v136, v137, v138))
      {
        if (v69 == objc_msgSend_p_lastValidTextPageIndex(self, v139, v140, v141, v142, v143))
        {
          v124 = v69;
        }

        else
        {
          v124 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_42;
      }

LABEL_41:
      v124 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_42:

    ++v69;
    if (v124 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_61;
    }
  }

  v124 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_61:

  return v124;
}

- (_NSRange)p_bodyRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5
{
  v10 = *MEMORY[0x277D81490];
  v9 = *(MEMORY[0x277D81490] + 8);
  v11 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v5, v6, v7, v8, a3, a4, a5);
  v17 = v11;
  if (v11)
  {
    v10 = objc_msgSend_range(v11, v12, v13, v14, v15, v16);
    v9 = v18;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "[TPPaginatedPageController p_bodyRangeForPageIndex:forcePagination:allowAfterPaginationPoint:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v31, v32, v33, v34, v35, v24, v30, 3826, 0, "Bogus page hint body range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39, v40);
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v41 = v10;
  v42 = v9;
  result.length = v42;
  result.location = v41;
  return result;
}

- (_NSRange)p_anchoredRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5
{
  v10 = *MEMORY[0x277D81490];
  v9 = *(MEMORY[0x277D81490] + 8);
  v11 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v5, v6, v7, v8, a3, a4, a5);
  v17 = v11;
  if (v11)
  {
    if (objc_msgSend_pageKind(v11, v12, v13, v14, v15, v16) == 1)
    {
      v10 = objc_msgSend_anchoredRange(v17, v18, v19, v20, v21, v22);
      v9 = v23;
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, v27, "[TPPaginatedPageController p_anchoredRangeForPageIndex:forcePagination:allowAfterPaginationPoint:]");
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v36, v37, v38, v39, v40, v29, v35, 3840, 0, "Bogus page hint anchored range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44, v45);
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  v46 = v10;
  v47 = v9;
  result.length = v47;
  result.location = v46;
  return result;
}

- (_NSRange)p_footnoteLayoutRangeForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5
{
  v9 = *MEMORY[0x277D81490];
  v10 = *(MEMORY[0x277D81490] + 8);
  v11 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v5, v6, v7, v8, a3, a4, a5);
  v17 = v11;
  if (v11 && objc_msgSend_pageKind(v11, v12, v13, v14, v15, v16) != 5)
  {
    v9 = objc_msgSend_footnoteLayoutRange(v17, v18, v19, v20, v21, v22);
    v10 = v23;
  }

  v24 = v9;
  v25 = v10;
  result.length = v25;
  result.location = v24;
  return result;
}

- (unint64_t)p_pageIndexContainingIndex:(unint64_t)a3 ofType:(unint64_t)a4
{
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, a2, v4, v5, v6, v7);
  if (LaidOutDocumentPageIndex <= 0x7FFFFFFFFFFFFFFELL)
  {
    v17 = LaidOutDocumentPageIndex;
    v18 = 0;
    while (1)
    {
      v16 = (v18 + v17) >> 1;
      v19 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v11, v12, v13, v14, v15, v16, 0, 0);
      v51 = v19;
      if (!a4)
      {
        v25 = objc_msgSend_range(v19, v20, v21, v22, v23, v24);
        goto LABEL_10;
      }

      if (a4 == 1)
      {
        break;
      }

      if (a4 == 2)
      {
        v25 = objc_msgSend_footnoteLayoutRange(v19, v20, v21, v22, v23, v24);
LABEL_10:
        v26 = v25;
        v27 = v20;
        goto LABEL_12;
      }

      v27 = 0;
      v26 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = MEMORY[0x277D81150];
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, v24, "[TPPaginatedPageController p_pageIndexContainingIndex:ofType:]");
        v30 = a4;
        v31 = a3;
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v38, v39, v40, v41, v42, v29, v37, 3892, 0, "Index range should be valid for laid out pages.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46, v47);
        a3 = v31;
        a4 = v30;
      }

      if (v26 <= a3)
      {
        v48 = v51;
        if (&v27[v26] > a3)
        {

          return v16;
        }

        v18 = v16 + 1;
      }

      else
      {
        v17 = v16 - 1;
        v48 = v51;
      }

      if (v18 > v17)
      {
        return v16;
      }
    }

    v25 = objc_msgSend_anchoredRange(v19, v20, v21, v22, v23, v24);
    goto LABEL_10;
  }

  return 0;
}

- (BOOL)p_couldBeFirstPageIndex:(unint64_t)a3 forPartitionedAttachmentCharIndex:(unint64_t)a4
{
  if (!a3)
  {
    return 1;
  }

  v10 = 1;
  v11 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v4, v5, v6, v7, a3, 0, 1);
  if (v11)
  {
    objc_opt_class();
    v17 = objc_msgSend_documentRoot(self, v12, v13, v14, v15, v16);
    v23 = objc_msgSend_bodyStorage(v17, v18, v19, v20, v21, v22);
    v29 = objc_msgSend_attachmentAtCharIndex_(v23, v24, v25, v26, v27, v28, a4);
    v30 = TSUCheckedDynamicCast();

    if ((objc_msgSend_isPartitioned(v30, v31, v32, v33, v34, v35) & 1) == 0)
    {
      v41 = MEMORY[0x277D81150];
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "[TPPaginatedPageController p_couldBeFirstPageIndex:forPartitionedAttachmentCharIndex:]");
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v49, v50, v51, v52, v53, v42, v48, 3931, 0, "attachment should be partitionable");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57, v58);
    }

    v59 = objc_msgSend_drawable(v30, v36, v37, v38, v39, v40);
    v65 = objc_msgSend_objectUUID(v59, v60, v61, v62, v63, v64);

    v71 = objc_msgSend_startingPartitionedAttachments(v11, v66, v67, v68, v69, v70);
    v10 = objc_msgSend_containsObject_(v71, v72, v73, v74, v75, v76, v65);
  }

  return v10;
}

- (unint64_t)p_pageIndexForAnchoredCharIndex:(unint64_t)a3 forcePagination:(BOOL)a4 searchAfterPaginationPoint:(BOOL)a5
{
  paginationState = self->_paginationState;
  if (!paginationState)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = a5;
  v12 = a4;
  if (a3)
  {
    v14 = objc_msgSend_p_pageIndexContainingIndex_ofType_(self, a2, v5, v6, v7, v8, a3 - 1, 1);
    if (v14 > objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v15, v16, v17, v18, v19))
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, v21, v22, v23, v24, "[TPPaginatedPageController p_pageIndexForAnchoredCharIndex:forcePagination:searchAfterPaginationPoint:]");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v33, v34, v35, v36, v37, v26, v32, 3952, 0, "Start page index should be a valid index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41, v42);
    }
  }

  else
  {
    objc_msgSend_lastLaidOutDocumentPageIndex(paginationState, a2, v5, v6, v7, v8);
    v14 = 0;
  }

  while (1)
  {
    v44 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v20, v21, v22, v23, v24, v14, v12, v11);
    if (!v44 || !v11 && (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v43, v45, v46, v47, v48, v14) & 1) == 0)
    {
      break;
    }

    if (objc_msgSend_pageKind(v44, v43, v45, v46, v47, v48) != 1)
    {
      goto LABEL_16;
    }

    v54 = objc_msgSend_anchoredRange(v44, v49, v50, v51, v52, v53);
    v60 = v14;
    if (&v55[v54] <= a3)
    {
      if (&v55[v54] == a3 && objc_msgSend_p_isPaginationComplete(self, v55, v56, v57, v58, v59))
      {
        if (v14 == objc_msgSend_p_lastValidTextPageIndex(self, v61, v62, v63, v64, v65))
        {
          v60 = v14;
        }

        else
        {
          v60 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_17;
      }

LABEL_16:
      v60 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_17:

    ++v14;
    if (v60 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v60;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (unint64_t)p_pageHintIndexForCharIndex:(unint64_t)a3
{
  v81 = 0;
  v82 = &v81;
  v3.n128_u64[0] = 0x2020000000;
  v83 = 0x2020000000;
  v84 = 0;
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0;
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_settings(v9, v10, v11, v12, v13, v14);
  hasBody = objc_msgSend_hasBody(v15, v16, v17, v18, v19, v20);

  if (hasBody)
  {
    v27 = objc_msgSend_sectionHints(self->_paginationState, v22, v23, v24, v25, v26);
    v76[0] = MEMORY[0x277D85DD0];
    v28.n128_u64[0] = 3221225472;
    v76[1] = 3221225472;
    v76[2] = sub_276020F54;
    v76[3] = &unk_27A6A9420;
    v76[4] = &v81;
    v76[5] = &v77;
    v76[6] = a3;
    objc_msgSend_enumerateObjectsUsingBlock_(v27, v29, v28, v30, v31, v32, v76);
  }

  else
  {
    v78[3] = a3;
    v33 = objc_msgSend_sectionHints(self->_paginationState, v22, v23, v24, v25, v26);
    v39 = objc_msgSend_count(v33, v34, v35, v36, v37, v38);

    if (v39 <= a3)
    {
      goto LABEL_7;
    }

    v45 = objc_msgSend_sectionHints(self->_paginationState, v40, v41, v42, v43, v44);
    v27 = objc_msgSend_objectAtIndexedSubscript_(v45, v46, v47, v48, v49, v50, v78[3]);

    if (objc_msgSend_pageCount(v27, v51, v52, v53, v54, v55))
    {
      v61 = objc_msgSend_pageHints(v27, v56, v57, v58, v59, v60);
      v67 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, v63, v64, v65, v66, 0);
      v73 = objc_msgSend_pageKind(v67, v68, v69, v70, v71, v72) == 6;
      *(v82 + 24) = v73;
    }
  }

LABEL_7:
  if (*(v82 + 24) == 1)
  {
    v74 = v78[3];
  }

  else
  {
    v74 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v77, 8);
  _Block_object_dispose(&v81, 8);
  return v74;
}

- (unint64_t)p_pageHintIndexForAnchoredCharIndex:(unint64_t)a3
{
  v40 = 0;
  v41 = &v40;
  v3.n128_u64[0] = 0x2020000000;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_settings(v9, v10, v11, v12, v13, v14);
  hasBody = objc_msgSend_hasBody(v15, v16, v17, v18, v19, v20);

  if (hasBody)
  {
    v27 = objc_msgSend_sectionHints(self->_paginationState, v22, v23, v24, v25, v26);
    v35[0] = MEMORY[0x277D85DD0];
    v28.n128_u64[0] = 3221225472;
    v35[1] = 3221225472;
    v35[2] = sub_276021260;
    v35[3] = &unk_27A6A9420;
    v35[4] = &v40;
    v35[5] = &v36;
    v35[6] = a3;
    objc_msgSend_enumerateObjectsUsingBlock_(v27, v29, v28, v30, v31, v32, v35);
  }

  if (*(v41 + 24) == 1)
  {
    v33 = v37[3];
  }

  else
  {
    v33 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  return v33;
}

- (unint64_t)p_pageIndexForFootnoteIndex:(unint64_t)a3 forcePagination:(BOOL)a4 searchAfterPaginationPoint:(BOOL)a5
{
  v9 = a5;
  v10 = a4;
  if (a3)
  {
    v13 = objc_msgSend_p_pageIndexContainingIndex_ofType_(self, a2, v5, v6, v7, v8, a3 - 1, 2);
  }

  else
  {
    v13 = 0;
  }

  if (v13 > objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, a2, v5, v6, v7, v8))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPPaginatedPageController p_pageIndexForFootnoteIndex:forcePagination:searchAfterPaginationPoint:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v31, v20, v26, 4051, 0, "Start page index should be a valid index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
  }

  while (1)
  {
    v38 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v14, v15, v16, v17, v18, v13, v10, v9);
    if (!v38 || !v9 && (objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, v37, v39, v40, v41, v42, v13) & 1) == 0)
    {
      break;
    }

    v48 = 0x7FFFFFFFFFFFFFFFLL;
    if (objc_msgSend_pageKind(v38, v37, v39, v40, v41, v42) != 5)
    {
      v49 = objc_msgSend_footnoteLayoutRange(v38, v43, v44, v45, v46, v47);
      if (v49 + v50 <= a3)
      {
        v48 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v13;
      }
    }

    ++v13;
    if (v48 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v48;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (void)p_processWidowsAndInflationForLayoutController:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v10 = objc_msgSend_documentPageIndex(self->_paginationState, v4, v6, v7, v8, v9);
    objc_msgSend_pageLayoutsUpToPageIndex_(self->_pageLayoutCache, v11, v12, v13, v14, v15, v10);
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v16 = v39 = 0u;
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, v21, &v38, v42, 16);
    if (v23)
    {
      v28 = *v39;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(v16);
          }

          v30 = *(*(&v38 + 1) + 8 * i);
          v31 = objc_msgSend_layoutController(v30, v22, v24, v25, v26, v27, v38);
          v32 = v31 == v5;

          if (v32)
          {
            objc_msgSend_processWidowAndInflation(v30, v22, v24, v25, v26, v27);
            objc_msgSend_processWidowAndInflationOnPage_(self->_flowController, v33, v34, v35, v36, v37, v30);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v22, v24, v25, v26, v27, &v38, v42, 16);
      }

      while (v23);
    }
  }
}

- (id)p_pageInfosForBodySelection:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6, v7, v8, v9);
  if (v4)
  {
    v16 = objc_msgSend_pageIndexesForSelection_forcePagination_outEndIsValid_(self, v10, v12, v13, v14, v15, v4, 0, 0);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_27602182C;
    v23[3] = &unk_27A6A9448;
    v24 = v11;
    v25 = self;
    objc_msgSend_enumerateIndexesUsingBlock_(v16, v17, v18, v19, v20, v21, v23);
  }

  return v11;
}

- (id)p_pageIndicesForFlow:(id)a3 withSelection:(id)a4 forcePagination:(BOOL)a5
{
  v184 = a5;
  v195 = *MEMORY[0x277D85DE8];
  v183 = a3;
  v187 = a4;
  v186 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v6, v7, v8, v9, v10);
  v189 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v11, v12, v13, v14, v15);
  v21 = objc_msgSend_documentRoot(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_floatingDrawables(v21, v22, v23, v24, v25, v26);

  v182 = objc_msgSend_DEPRECATED_range(v187, v28, v29, v30, v31, v32);
  range1 = v33;
  isInsertionPoint = objc_msgSend_isInsertionPoint(v187, v33, v34, v35, v36, v37);
  v174 = objc_msgSend_caretLFAffinity(v187, v39, v40, v41, v42, v43);
  v173 = objc_msgSend_textStorage(v183, v44, v45, v46, v47, v48);
  v181 = objc_msgSend_length(v173, v49, v50, v51, v52, v53);
  v59 = objc_msgSend_isInsertionPoint(v187, v54, v55, v56, v57, v58);
  if (v174 == 1)
  {
    v65 = 0;
  }

  else
  {
    v65 = v59;
  }

  if (v65 == 1)
  {
    v179 = objc_msgSend_leadingCharIndex(v187, v60, v61, v62, v63, v64);
  }

  else
  {
    v179 = v182;
  }

  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  obj = objc_msgSend_textboxes(v183, v60, 0, v62, v63, v64);
  v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v66, v67, v68, v69, v70, &v190, v194, 16);
  if (v72)
  {
    v77 = *v191;
    v177 = isInsertionPoint ^ 1;
    v172 = v179 - 1;
    do
    {
      for (i = 0; i != v72; ++i)
      {
        if (*v191 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v80 = objc_msgSend_pageIndexForDrawable_(v27, v71, v73, v74, v75, v76, *(*(&v190 + 1) + 8 * i), v172);
        if (v80 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v85 = MEMORY[0x277D81150];
          v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, v81, v82, v83, v84, "[TPPaginatedPageController p_pageIndicesForFlow:withSelection:forcePagination:]");
          v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, v88, v89, v90, v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v93, v94, v95, v96, v97, v86, v92, 4115, 0, "Page index not found for text box in flow");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v98, v99, v100, v101, v102);
          continue;
        }

        if (v187)
        {
          if ((objc_msgSend_containsIndex_(v189, v79, v81, v82, v83, v84, v80) & 1) == 0)
          {
            v108 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v103, v104, v105, v106, v107, v80, v184, 0);
            v114 = v108;
            if (!v108)
            {
              goto LABEL_47;
            }

            v115 = objc_msgSend_flowHints(v108, v109, v110, v111, v112, v113);
            v121 = objc_msgSend_objectForKeyedSubscript_(v115, v116, v117, v118, v119, v120, v183);
            v127 = v121;
            if (!v121)
            {
              goto LABEL_46;
            }

            v128 = objc_msgSend_range(v121, v122, v123, v124, v125, v126);
            v130 = v129;
            if (!objc_msgSend_lineFragmentCount(v127, v129, v131, v132, v133, v134) || v128 == *MEMORY[0x277D81490] && v130 == *(MEMORY[0x277D81490] + 8))
            {
              goto LABEL_46;
            }

            if (v128 + v130 > v181)
            {
              v175 = MEMORY[0x277D81150];
              v180 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v135, v136, v137, v138, v139, "[TPPaginatedPageController p_pageIndicesForFlow:withSelection:forcePagination:]");
              v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v141, v142, v143, v144, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
              v146 = v175;
              v176 = v145;
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v146, v147, v148, v149, v150, v151, v180, v145, 4128, 0, "Bad flow hint past end of text storage");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153, v154, v155, v156);
            }

            v197.location = v182;
            v197.length = range1;
            v198.location = v128;
            v198.length = v130;
            v162 = NSIntersectionRange(v197, v198);
            length = v162.length;
            v163 = v162.length != 0;
            if (v163 | v177 & 1)
            {
LABEL_24:
              if (!v163)
              {
LABEL_25:
                v164 = objc_msgSend_superRange(v187, length, v158, v159, v160, v161);
                if (v164 + v165 < v128)
                {

                  goto LABEL_51;
                }

LABEL_46:

LABEL_47:
                goto LABEL_48;
              }
            }

            else
            {
              v166 = v128 + v130;
              if (v174 != 1)
              {
                v166 = v128;
              }

              v168 = v179 != v128 && v182 - v128 < v130 && v182 >= v128;
              if (!v168 && v179 != v166)
              {
                if (v179 != v128 + v130 || !v181 || v179 != v181)
                {
                  goto LABEL_25;
                }

                v169 = objc_msgSend_characterAtIndex_(v173, v162.length, v158, v159, v160, v161, v172);
                v170 = IsParagraphBreakingCharacter() ^ 1;
                if (v169 == 8232)
                {
                  LOBYTE(v170) = 0;
                }

                if ((v170 & 1) == 0)
                {
                  v163 = objc_msgSend_endOfLayout(v127, length, v158, v159, v160, v161);
                  goto LABEL_24;
                }
              }
            }

            objc_msgSend_addIndex_(v186, length, v158, v159, v160, v161, v80);
            goto LABEL_46;
          }
        }

        else
        {
          objc_msgSend_addIndex_(v186, v79, v81, v82, v83, v84, v80);
        }

LABEL_48:
        objc_msgSend_addIndex_(v189, v103, v104, v105, v106, v107, v80);
      }

      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v71, v73, v74, v75, v76, &v190, v194, 16);
    }

    while (v72);
  }

LABEL_51:

  return v186;
}

- (id)p_pageInfosForFlow:(id)a3 withSelection:(id)a4
{
  v9 = objc_msgSend_p_pageIndicesForFlow_withSelection_forcePagination_(self, a2, v4, v5, v6, v7, a3, a4, 1);
  v15 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11, v12, v13, v14);
  v23[0] = MEMORY[0x277D85DD0];
  v16.n128_u64[0] = 3221225472;
  v23[1] = 3221225472;
  v23[2] = sub_276021F78;
  v23[3] = &unk_27A6A9448;
  v23[4] = self;
  v23[5] = v15;
  objc_msgSend_enumerateIndexesUsingBlock_(v9, v17, v16, v18, v19, v20, v23);
  v21 = v15;

  return v15;
}

- (void)p_checkForBackUp
{
  if (!self->_checkedForBackUp)
  {
    self->_checkedForBackUp = 1;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (objc_msgSend_pageIndex(self->_paginationState, a2, v2, v3, v4, v5))
    {
      v99 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = objc_msgSend_p_lastValidTextPageHint_(self, v7, v8, v9, v10, v11, &v99);
      v14 = v13;
      if (v13)
      {
        bodyLayoutManager = self->_bodyLayoutManager;
        v16 = objc_msgSend_lastColumn(v13, v7, v8, v9, v10, v11);
        LODWORD(bodyLayoutManager) = objc_msgSend_needsLayoutInColumn_(bodyLayoutManager, v17, v18, v19, v20, v21, v16);

        if (bodyLayoutManager)
        {
          v12 = v99;
        }

        else
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if (objc_msgSend_documentPageIndex(self->_paginationState, v7, v8, v9, v10, v11))
    {
      flowController = self->_flowController;
      v28 = objc_msgSend_documentPageIndex(self->_paginationState, v22, v23, v24, v25, v26);
      v34 = objc_msgSend_pageIndexNeedingLayoutPreviousToPageIndex_(flowController, v29, v30, v31, v32, v33, v28);
      if (v34 < v12)
      {
        v35 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v22, v23, v24, v25, v26, v34, 0, 0);
        v36 = v35;
        if (v35)
        {
          v37 = v35;

          v14 = v37;
          v12 = v34;
        }
      }
    }

    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v22, v23, v24, v25, v26, v12, 0, 0);
      objc_msgSend_backUpToPageIndexPath_documentPageIndex_(self->_paginationState, v39, v40, v41, v42, v43, v38, v12);
      objc_msgSend_p_destroyBodyLayoutState(self, v44, v45, v46, v47, v48);
      v54 = objc_msgSend_range(v14, v49, v50, v51, v52, v53);
      objc_msgSend_setBodyCharIndex_(self->_paginationState, v55, v56, v57, v58, v59, v54);
      v65 = objc_msgSend_footnoteLayoutRange(v14, v60, v61, v62, v63, v64);
      objc_msgSend_setFootnoteIndex_(self->_paginationState, v66, v67, v68, v69, v70, v65);
      if (objc_msgSend_bodyCharIndex(self->_paginationState, v71, v72, v73, v74, v75) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v81 = MEMORY[0x277D81150];
        v82 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, v80, "[TPPaginatedPageController p_checkForBackUp]");
        v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v81, v89, v90, v91, v92, v93, v82, v88, 4213, 0, "Last valid text page should have a valid body range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95, v96, v97, v98);
      }
    }
  }
}

- (void)p_paginateThroughPageIndex:(unint64_t)a3 forLayoutController:(id)a4 clearOffscreenInfos:(BOOL)a5
{
  v149 = a5;
  v155 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (self->_paginationState)
  {
    v13 = objc_msgSend_documentRoot(self, v7, v9, v10, v11, v12);
    isAlternativePageIndex_documentRoot = objc_msgSend_isAlternativePageIndex_documentRoot_(TPPageInfo, v14, v15, v16, v17, v18, a3, v13);

    if ((isAlternativePageIndex_documentRoot & 1) == 0)
    {
      if (objc_msgSend_isPaginating(self, v20, v21, v22, v23, v24))
      {
        v30 = MEMORY[0x277D81150];
        v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "[TPPaginatedPageController p_paginateThroughPageIndex:forLayoutController:clearOffscreenInfos:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v38, v39, v40, v41, v42, v31, v37, 4226, 0, "shouldn't trigger pagination during pagination");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46, v47);
      }

      currentPageBeingLaidOut = self->_currentPageBeingLaidOut;
      if (currentPageBeingLaidOut <= a3 && currentPageBeingLaidOut != 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = MEMORY[0x277D81150];
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "[TPPaginatedPageController p_paginateThroughPageIndex:forLayoutController:clearOffscreenInfos:]");
        v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, v53, v54, v55, v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v58, v59, v60, v61, v62, v51, v57, 4230, 0, "shouldn't trigger layout of another page during layout");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65, v66, v67);
        currentPageBeingLaidOut = self->_currentPageBeingLaidOut;
      }

      if (currentPageBeingLaidOut == 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_p_processWidowsAndInflationForLayoutController_(self, v25, v26, v27, v28, v29, v8);
        if ((objc_msgSend_p_isPaginationComplete(self, v68, v69, v70, v71, v72) & 1) == 0)
        {
          self->_currentPageBeingLaidOut = objc_msgSend_documentPageIndex(self->_paginationState, v73, v74, v75, v76, v77);
          v83 = objc_msgSend_dirtyRanges(self->_bodyLayoutManager, v78, v79, v80, v81, v82);
          v89 = objc_msgSend_copy(v83, v84, v85, v86, v87, v88);

          objc_msgSend_p_checkForBackUp(self, v90, v91, v92, v93, v94);
          v100 = 0;
          while (objc_msgSend_documentPageIndex(self->_paginationState, v95, v96, v97, v98, v99) <= a3 && (objc_msgSend_p_isPaginationComplete(self, v101, v102, v103, v104, v105) & 1) == 0)
          {
            objc_msgSend_p_layOutNextPageForLayoutController_dirtyRange_(self, v101, v102, v103, v104, v105, v8, v89);
            self->_currentPageBeingLaidOut = objc_msgSend_documentPageIndex(self->_paginationState, v106, v107, v108, v109, v110);
            v100 = 1;
          }

          if (v100)
          {
            if (v149)
            {
              v111 = objc_msgSend_canvas(self->_offscreenSearchDelegate, v101, v102, v103, v104, v105);
              objc_msgSend_setInfosToDisplay_(v111, v112, v113, v114, v115, v116, 0);
            }

            objc_msgSend_p_processWidowsAndInflationForLayoutController_(self, v101, v102, v103, v104, v105, v8);
            objc_msgSend_p_didLayOut(self, v117, v118, v119, v120, v121);
            v122 = v8;
            if (v122)
            {
              v128 = v122;
              objc_msgSend_notifyThatLayoutsChangedOutsideOfLayout(v122, v123, v124, v125, v126, v127);
            }

            else
            {
              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              v129 = self->_layoutObservers;
              v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v130, v131, v132, v133, v134, &v150, v154, 16);
              if (v135)
              {
                v136 = *v151;
                do
                {
                  for (i = 0; i != v135; ++i)
                  {
                    if (*v151 != v136)
                    {
                      objc_enumerationMutation(v129);
                    }

                    v138 = TSUProtocolCast();
                    objc_msgSend_layoutsChangedOutsideOfLayoutForPageController_(v138, v139, v140, v141, v142, v143, self, &unk_288546998);
                  }

                  v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v129, v144, v145, v146, v147, v148, &v150, v154, 16);
                }

                while (v135);
              }

              v128 = 0;
            }
          }

          self->_currentPageBeingLaidOut = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }
}

- (void)p_layOutNextPageForLayoutController:(id)a3 dirtyRange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v14 = objc_msgSend_documentRoot(self, v9, v10, v11, v12, v13);

  if (!v14)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v28, v29, v30, v31, v32, v21, v27, 4295, 0, "invalid nil value for '%{public}s'", "self.documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36, v37);
  }

  v38 = objc_msgSend_sectionHints(self->_paginationState, v15, v16, v17, v18, v19);

  if (!v38)
  {
    v44 = MEMORY[0x277D81150];
    v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, v40, v41, v42, v43, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]");
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v52, v53, v54, v55, v56, v45, v51, 4296, 0, "invalid nil value for '%{public}s'", "_paginationState.sectionHints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59, v60, v61);
  }

  v62 = objc_msgSend_sectionIndex(self->_paginationState, v39, v40, v41, v42, v43);
  v68 = objc_msgSend_sectionHints(self->_paginationState, v63, v64, v65, v66, v67);
  v74 = objc_msgSend_count(v68, v69, v70, v71, v72, v73);

  if (v62 > v74)
  {
    v80 = MEMORY[0x277D81150];
    v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, v76, v77, v78, v79, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]");
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v82, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v80, v88, v89, v90, v91, v92, v81, v87, 4297, 0, "Section index is past the last section hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v93, v94, v95, v96, v97);
  }

  if (objc_msgSend_isPaginating(self, v75, v76, v77, v78, v79))
  {
    v103 = MEMORY[0x277D81150];
    v104 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, v99, v100, v101, v102, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]");
    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v106, v107, v108, v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v103, v111, v112, v113, v114, v115, v104, v110, 4298, 0, "already laying out a page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v116, v117, v118, v119, v120);
  }

  objc_msgSend_p_preparePaginationStateForNextPage(self, v98, v99, v100, v101, v102);
  objc_msgSend_p_prepareSectionHintForNextPage(self, v121, v122, v123, v124, v125);
  objc_msgSend_p_preparePageHintForNextPage(self, v126, v127, v128, v129, v130);
  v295 = 0;
  v296 = &v295;
  v131.n128_u64[0] = 0x2020000000;
  v297 = 0x2020000000;
  v298 = 0;
  objc_msgSend_setIsPaginating_(self, v132, v131, v133, v134, v135, 1);
  v288 = 0;
  v289 = &v288;
  v290 = 0x4012000000;
  v291 = sub_27601745C;
  v292 = nullsub_2;
  v293 = &unk_2760658C2;
  v294 = *MEMORY[0x277D81490];
  v140 = objc_msgSend_documentPageIndex(self->_paginationState, v136, v294, v137, v138, v139);
  v287[0] = MEMORY[0x277D85DD0];
  v141.n128_u64[0] = 3221225472;
  v287[1] = 3221225472;
  v287[2] = sub_276022DC8;
  v287[3] = &unk_27A6A9470;
  v287[4] = self;
  v287[5] = &v295;
  v287[6] = &v288;
  objc_msgSend_p_withPageLayoutAtIndex_preferredLayoutController_executeBlock_(self, v142, v141, v143, v144, v145, v140, v6, v287);
  if (*(v296 + 24) == 1)
  {
    v151 = v289[6];
    v152 = v289[7];
    v153 = objc_msgSend_documentRoot(self, v146, v147, v148, v149, v150);
    v159 = objc_msgSend_bodyStorage(v153, v154, v155, v156, v157, v158);
    v165 = v159;
    if (v159)
    {
      objc_msgSend_paragraphEnumeratorAtCharIndex_styleProvider_(v159, v160, v161, v162, v163, v164, v152 + v151, 0);
    }

    else
    {
      v286 = 0;
      memset(v285, 0, sizeof(v285));
    }

    v166 = TSWPParagraphEnumerator::paragraphTextRange(v285);
    v172 = objc_msgSend_dirtyRangesIntersecting_(v7, v167, v168, v169, v170, v171, v166, v167);
    if ((objc_msgSend_isEmpty(v172, v173, v174, v175, v176, v177) & 1) == 0)
    {
      *(v296 + 24) = 0;
    }

    TSWPParagraphEnumerator::~TSWPParagraphEnumerator(v285);
  }

  objc_msgSend_advancePageIndex(self->_paginationState, v146, v147, v148, v149, v150);
  v183 = objc_msgSend_documentPageIndex(self->_paginationState, v178, v179, v180, v181, v182);
  v190 = objc_msgSend_i_pageHintForPageIndex_(self, v184, v185, v186, v187, v188, v183 - 1);
  if (!v190)
  {
    v195 = MEMORY[0x277D81150];
    v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v189, v191, v192, v193, v194, "[TPPaginatedPageController p_layOutNextPageForLayoutController:dirtyRange:]");
    v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v197, v198, v199, v200, v201, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v195, v203, v204, v205, v206, v207, v196, v202, 4340, 0, "invalid nil value for '%{public}s'", "pageHint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v208, v209, v210, v211, v212);
  }

  objc_msgSend_setIsPaginating_(self, v189, v191, v192, v193, v194, 0);
  objc_msgSend_p_notifyObserversDidLayoutWhileSyncing_(self, v213, v214, v215, v216, v217, 0);
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v218, v219, v220, v221, v222);
  objc_msgSend_p_invalidateThumbnailForPageIndex_(self, v224, v225, v226, v227, v228, LaidOutDocumentPageIndex);
  v234 = objc_msgSend_documentRoot(self, v229, v230, v231, v232, v233);
  v240 = objc_msgSend_settings(v234, v235, v236, v237, v238, v239);
  if (!objc_msgSend_hasBody(v240, v241, v242, v243, v244, v245))
  {

    goto LABEL_24;
  }

  if (v296[3])
  {
  }

  else
  {
    isBodyLayoutComplete = objc_msgSend_p_isBodyLayoutComplete(self, v246, v247, v248, v249, v250);

    if ((isBodyLayoutComplete & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  objc_msgSend_p_syncFromNextPageWithDirtyRanges_pageTextRange_(self, v251, v252, v253, v254, v255, v7, v289 + 6);
LABEL_24:
  objc_msgSend_p_removeFinishedPageGenerators(self, v251, v252, v253, v254, v255);
  if (!objc_msgSend_count(self->_pageGeneratorStack, v257, v258, v259, v260, v261))
  {
    objc_msgSend_p_advanceSectionIndex(self, v262, v263, v264, v265, v266);
  }

  v267 = objc_msgSend_documentRoot(self, v262, v263, v264, v265, v266);
  v273 = objc_msgSend_settings(v267, v268, v269, v270, v271, v272);
  if (objc_msgSend_hasBody(v273, v274, v275, v276, v277, v278))
  {
  }

  else
  {
    v279 = *(v296 + 24);

    if (v279 == 1)
    {
      objc_msgSend_p_syncFromNextPageWithDirtyRanges_pageTextRange_(self, v280, v281, v282, v283, v284, v7, v289 + 6);
    }
  }

  _Block_object_dispose(&v288, 8);
  _Block_object_dispose(&v295, 8);
  objc_autoreleasePoolPop(v8);
}

- (void)p_layOutIntoPageLayout:(id)a3 outDidSync:(BOOL *)a4
{
  v382 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v374 = 0u;
  v375 = 0u;
  v376 = 0u;
  v377 = 0u;
  v11 = objc_msgSend_childTextLayoutsForExteriorWrap(v6, v7, 0, v8, v9, v10);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, v13, v14, v15, v16, &v374, v381, 16);
  if (v18)
  {
    v23 = *v375;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v375 != v23)
        {
          objc_enumerationMutation(v11);
        }

        v25 = *(*(&v374 + 1) + 8 * i);
        if (objc_msgSend_isLinked(v25, v17, v19, v20, v21, v22))
        {
          objc_msgSend_invalidateTextLayout(v25, v17, v19, v20, v21, v22);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, v19, v20, v21, v22, &v374, v381, 16);
    }

    while (v18);
  }

  v373 = 0x7FFFFFFFFFFFFFFFLL;
  if (objc_msgSend_allowsBody(v6, v26, v27, v28, v29, v30))
  {
    objc_msgSend_p_layOutTextIntoPageLayout_didSync_initialFootnoteIndex_(self, v31, v32, v33, v34, v35, v6, a4, &v373);
    objc_msgSend_layOutFlowsIfNeededOnPage_(self->_flowController, v36, v37, v38, v39, v40, v6);
    v46 = objc_msgSend_pageIndexPath(self->_paginationState, v41, v42, v43, v44, v45);
    v52 = objc_msgSend_bodyLayout(v6, v47, v48, v49, v50, v51);
    objc_msgSend_p_updateTextHintAtPageIndexPath_withTarget_(self, v53, v54, v55, v56, v57, v46, v52);

    v63 = objc_msgSend_pageIndexPath(self->_paginationState, v58, v59, v60, v61, v62);
    v69 = objc_msgSend_p_pageHintForPageIndexPath_(self, v64, v65, v66, v67, v68, v63);

    v75 = objc_msgSend_range(v69, v70, v71, v72, v73, v74);
    objc_msgSend_setBodyCharIndex_(self->_paginationState, v76, v77, v78, v79, v80, &v76[v75]);
    goto LABEL_20;
  }

  objc_msgSend_layOutFlowsIfNeededOnPage_(self->_flowController, v31, v32, v33, v34, v35, v6);
  v86 = objc_msgSend_pageIndexPath(self->_paginationState, v81, v82, v83, v84, v85);
  v69 = objc_msgSend_p_pageHintForPageIndexPath_(self, v87, v88, v89, v90, v91, v86);

  if (objc_msgSend_pageKind(v69, v92, v93, v94, v95, v96) == 6)
  {
    v102 = objc_msgSend_pageIndexPath(self->_paginationState, v97, v98, v99, v100, v101);
    v108 = objc_msgSend_documentRoot(self, v103, v104, v105, v106, v107);
    v114 = objc_msgSend_bodyStorage(v108, v109, v110, v111, v112, v113);
    objc_msgSend_updateRangeForIndexPath_withStorage_(v69, v115, v116, v117, v118, v119, v102, v114);
  }

  objc_msgSend_range(v69, v97, v98, v99, v100, v101);
  if ((v120 || objc_msgSend_pageKind(v69, 0, v121, v122, v123, v124) == 6) && objc_msgSend_pageKind(v69, v120, v121, v122, v123, v124) == 6)
  {
    bodyLayoutManager = self->_bodyLayoutManager;
    v126 = objc_msgSend_range(v69, v120, v121, v122, v123, v124);
    objc_msgSend_removeDirtyRange_(bodyLayoutManager, v127, v128, v129, v130, v131, v126, v127);
  }

  v132 = objc_msgSend_pageIndexPath(self->_paginationState, v120, v121, v122, v123, v124);
  objc_msgSend_p_updateNonTextHintAtPageIndexPath_pageLayout_(self, v133, v134, v135, v136, v137, v132, v6);

  v143 = objc_msgSend_pageIndexPath(self->_paginationState, v138, v139, v140, v141, v142);
  if (objc_msgSend_pageIndex(v143, v144, v145, v146, v147, v148))
  {
    goto LABEL_19;
  }

  objc_msgSend_range(v69, v149, v150, v151, v152, v153);
  v293 = v292 == 0;

  if (!v293)
  {
    v299 = objc_msgSend_pageIndexPath(self->_paginationState, v294, v295, v296, v297, v298);
    v305 = objc_msgSend_sectionIndex(v299, v300, v301, v302, v303, v304);
    v311 = objc_msgSend_sectionHints(self->_paginationState, v306, v307, v308, v309, v310);
    LODWORD(v305) = v305 + 1 < objc_msgSend_count(v311, v312, v313, v314, v315, v316);

    if (v305)
    {
      v322 = objc_msgSend_pageIndexPath(self->_paginationState, v317, v318, v319, v320, v321);
      v143 = objc_msgSend_copy(v322, v323, v324, v325, v326, v327);

      v333 = objc_msgSend_sectionIndex(v143, v328, v329, v330, v331, v332);
      objc_msgSend_setSectionIndex_(v143, v334, v335, v336, v337, v338, v333 + 1);
      v344 = objc_msgSend_p_pageHintForPageIndexPath_(self, v339, v340, v341, v342, v343, v143);
      if (objc_msgSend_pageKind(v344, v345, v346, v347, v348, v349) != 5)
      {
        v355 = objc_msgSend_range(v69, v350, v351, v352, v353, v354);
        *a4 = &v360[v355] == objc_msgSend_range(v344, v360, v356, v357, v358, v359);
      }

LABEL_19:
    }
  }

LABEL_20:

  v371 = 0u;
  v372 = 0u;
  v369 = 0u;
  v370 = 0u;
  v158 = objc_msgSend_childTextLayoutsForExteriorWrap(v6, v154, 0, v155, v156, v157);
  v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, v160, v161, v162, v163, &v369, v380, 16);
  if (v165)
  {
    v170 = *v370;
    do
    {
      for (j = 0; j != v165; ++j)
      {
        if (*v370 != v170)
        {
          objc_enumerationMutation(v158);
        }

        v172 = *(*(&v369 + 1) + 8 * j);
        if ((objc_msgSend_isLinked(v172, v164, v166, v167, v168, v169) & 1) == 0)
        {
          if (objc_msgSend_parentAutosizes(v172, v164, v166, v167, v168, v169))
          {
            objc_msgSend_invalidateSize(v172, v173, v174, v175, v176, v177);
          }

          else
          {
            objc_msgSend_invalidateTextLayout(v172, v173, v174, v175, v176, v177);
          }
        }
      }

      v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v164, v166, v167, v168, v169, &v369, v380, 16);
    }

    while (v165);
  }

  if (objc_msgSend_allowsFootnotes(v6, v178, v179, v180, v181, v182))
  {
    objc_msgSend_p_layOutFootnotesIntoPageLayout_(self, v183, v184, v185, v186, v187, v6);
  }

  else if (objc_msgSend_allowsBody(v6, v183, v184, v185, v186, v187))
  {
    v193 = objc_msgSend_pageIndexPath(self->_paginationState, v188, v189, v190, v191, v192);
    v199 = objc_msgSend_p_pageHintForPageIndexPath_(self, v194, v195, v196, v197, v198, v193);

    objc_msgSend_setFootnoteLayoutRange_(v199, v200, v201, v202, v203, v204, v373, 0);
    v210 = objc_msgSend_footnoteContainerLayout(v6, v205, v206, v207, v208, v209);
    objc_msgSend_removeAllFootnoteLayouts(v210, v211, v212, v213, v214, v215);
  }

  v216 = objc_msgSend_documentPageIndex(self->_paginationState, v188, v189, v190, v191, v192);
  objc_msgSend_pageLayoutsWithPageIndex_(self->_pageLayoutCache, v217, v218, v219, v220, v221, v216);
  v367 = 0u;
  v368 = 0u;
  v365 = 0u;
  v222 = v366 = 0u;
  v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v222, v223, v224, v225, v226, v227, &v365, v379, 16);
  if (v229)
  {
    v234 = *v366;
    do
    {
      for (k = 0; k != v229; ++k)
      {
        if (*v366 != v234)
        {
          objc_enumerationMutation(v222);
        }

        v236 = *(*(&v365 + 1) + 8 * k);
        if (v236 != v6)
        {
          objc_msgSend_setNeedsInflation(v236, v228, v230, v231, v232, v233);
        }
      }

      v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v222, v228, v230, v231, v232, v233, &v365, v379, 16);
    }

    while (v229);
  }

  if (objc_msgSend_allowsBody(v6, v237, v238, v239, v240, v241))
  {
    v247 = objc_msgSend_bodyLayout(v6, v242, v243, v244, v245, v246);
    v253 = objc_msgSend_needsInflation(v247, v248, v249, v250, v251, v252);

    if (v253)
    {
      v254 = MEMORY[0x277D81150];
      v255 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v242, v243, v244, v245, v246, "[TPPaginatedPageController p_layOutIntoPageLayout:outDidSync:]");
      v261 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v256, v257, v258, v259, v260, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v254, v262, v263, v264, v265, v266, v255, v261, 4477, 0, "Body layout should not need inflation immediately after layout.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v267, v268, v269, v270, v271);
    }
  }

  self->_didLayOutPageIndex = objc_msgSend_pageIndex(v6, v242, v243, v244, v245, v246);
  v361 = 0u;
  v362 = 0u;
  v363 = 0u;
  v364 = 0u;
  v272 = self->_layoutObservers;
  v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v272, v273, v274, v275, v276, v277, &v361, v378, 16);
  if (v278)
  {
    v279 = *v362;
    do
    {
      for (m = 0; m != v278; ++m)
      {
        if (*v362 != v279)
        {
          objc_enumerationMutation(v272);
        }

        v281 = TSUProtocolCast();
        objc_msgSend_pageController_didLayOutPageLayout_(v281, v282, v283, v284, v285, v286, self, v6, &unk_288546998);
      }

      v278 = objc_msgSend_countByEnumeratingWithState_objects_count_(v272, v287, v288, v289, v290, v291, &v361, v378, 16);
    }

    while (v278);
  }

  self->_didLayOutPageIndex = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)p_layOutTextIntoPageLayout:(id)a3 didSync:(BOOL *)a4 initialFootnoteIndex:(unint64_t *)a5
{
  v7 = a3;
  *a5 = objc_msgSend_footnoteIndex(self->_paginationState, v8, v9, v10, v11, v12);
  v18 = objc_msgSend_bodyLayout(v7, v13, v14, v15, v16, v17);
  v24 = objc_msgSend_documentRoot(self, v19, v20, v21, v22, v23);
  v341 = objc_msgSend_bodyStorage(v24, v25, v26, v27, v28, v29);

  if (!v18)
  {
    goto LABEL_33;
  }

  if (objc_msgSend_needsInflation(v18, v30, v31, v32, v33, v34))
  {
    v40 = MEMORY[0x277D81150];
    v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, v39, "[TPPaginatedPageController p_layOutTextIntoPageLayout:didSync:initialFootnoteIndex:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v48, v49, v50, v51, v52, v41, v47, 4506, 0, "Body layout shouldn't need inflation when laying out body text");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56, v57);
  }

  v58 = objc_msgSend_pageIndex(v7, v35, v36, v37, v38, v39);
  v340 = objc_msgSend_footnoteHeightMeasurer(v18, v59, v60, v61, v62, v63);
  if (!objc_msgSend_footnoteCount(v341, v64, v65, v66, v67, v68))
  {
    goto LABEL_22;
  }

  objc_msgSend_removeAllFootnoteReferenceStorages(v340, v69, v70, v71, v72, v73);
  v79 = objc_msgSend_documentRoot(self, v74, v75, v76, v77, v78);
  if ((objc_msgSend_laysOutBodyVertically(v79, v80, v81, v82, v83, v84) & 1) == 0)
  {

LABEL_22:
    hasFacingPages = 0;
    goto LABEL_23;
  }

  v90 = objc_msgSend_documentRoot(self, v85, v86, v87, v88, v89);
  v96 = objc_msgSend_settings(v90, v91, v92, v93, v94, v95);
  hasFacingPages = objc_msgSend_hasFacingPages(v96, v97, v98, v99, v100, v101);

  if ((v58 & 1) != 0 || v58 == 0)
  {
    v104 = 0;
  }

  else
  {
    v104 = hasFacingPages;
  }

  if (v104 != 1)
  {
    goto LABEL_23;
  }

  v347 = 0x7FFFFFFFFFFFFFFFLL;
  v105 = objc_msgSend_p_lastValidTextPageHint_(self, v69, v70, v71, v72, v73, &v347);
  v111 = v105;
  v112 = v347 + 1;
  if (v347 + 1 == v58 && v105)
  {
    if (!objc_msgSend_hasForcedFootnotes(v105, v106, v107, v108, v109, v110))
    {
      v346 = 0;
      v309 = objc_msgSend_rangeAndChildHints_(v111, v106, v107, v108, v109, v110, &v346);
      v338 = v310;
      v311 = v309;
      v345[0] = MEMORY[0x277D85DD0];
      v345[1] = 3221225472;
      v345[2] = sub_276023F90;
      v345[3] = &unk_27A6A9498;
      v345[4] = v341;
      v345[5] = v340;
      v119 = v346;
      objc_msgSend_enumerateFootnoteAttachmentsInTextRange_usingBlock_(v341, v312, v313, v314, v315, v316, v311, v338, v345);
      goto LABEL_37;
    }

    v112 = v347 + 1;
  }

  if (v112 != v58)
  {
    v113 = objc_msgSend_i_pageHintForPageIndex_(self, v106, v107, v108, v109, v110, v58 - 1);
    v119 = v113;
    if (!v113)
    {
      v317 = MEMORY[0x277D81150];
      v335 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v114, v115, v116, v117, v118, "[TPPaginatedPageController p_layOutTextIntoPageLayout:didSync:initialFootnoteIndex:]");
      v336 = 0;
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v318, v319, v320, v321, v322, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      v132 = v335;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v317, v323, v324, v325, v326, v327, v335, v131, 4537, 0, "invalid nil value for '%{public}s'", "truePreviousPageHint");
      goto LABEL_36;
    }

    if (objc_msgSend_pageKind(v113, v114, v115, v116, v117, v118) == 5)
    {
      v125 = MEMORY[0x277D81150];
      v333 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v120, v121, v122, v123, v124, "[TPPaginatedPageController p_layOutTextIntoPageLayout:didSync:initialFootnoteIndex:]");
      v336 = v119;
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v126, v127, v128, v129, v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      v132 = v333;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v125, v133, v134, v135, v136, v137, v333, v131, 4539, 0, "Previous page hint was unexpectedly dirty");
LABEL_36:

      v119 = v336;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v328, v329, v330, v331, v332);
    }

LABEL_37:
  }

  hasFacingPages = 1;
LABEL_23:
  objc_msgSend_setOverrideAllowFootnotes_(v7, v69, v70, v71, v72, v73, 0);
  bodyLayoutManager = self->_bodyLayoutManager;
  v144 = objc_msgSend_bodyLayoutState(self->_paginationState, v139, v140, v141, v142, v143);
  v150 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(bodyLayoutManager, v145, v146, v147, v148, v149, v18, v144, a4);
  objc_msgSend_setBodyLayoutState_(self->_paginationState, v151, v152, v153, v154, v155, v150);
  if (hasFacingPages && (v58 & 1) != 0 && objc_msgSend_hasFootnotes(v340, v156, v157, v158, v159, v160))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_27602402C;
    aBlock[3] = &unk_27A6A94C0;
    v337 = v18;
    v343 = v337;
    v344 = self;
    v161 = _Block_copy(aBlock);
    if ((v161[2])())
    {
      objc_msgSend_setFootnoteIndex_(self->_paginationState, v162, v163, v164, v165, v166, 0x7FFFFFFFFFFFFFFFLL);
      objc_msgSend_removeAllFootnoteReferenceStorages(v340, v167, v168, v169, v170, v171);
      objc_msgSend_resetFootnoteHeightMeasurer(v337, v172, v173, v174, v175, v176);
      objc_msgSend_setOverrideAllowFootnotes_(v7, v177, v178, v179, v180, v181, 1);
      objc_msgSend_p_destroyBodyLayoutState(self, v182, v183, v184, v185, v186);
      objc_msgSend_p_preparePaginationStateForNextPage(self, v187, v188, v189, v190, v191);
      *a5 = objc_msgSend_footnoteIndex(self->_paginationState, v192, v193, v194, v195, v196);
      v197 = self->_bodyLayoutManager;
      v203 = objc_msgSend_bodyLayoutState(self->_paginationState, v198, v199, v200, v201, v202);
      v209 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v197, v204, v205, v206, v207, v208, v337, v203, a4);
      objc_msgSend_setBodyLayoutState_(self->_paginationState, v210, v211, v212, v213, v214, v209);
      if ((v161[2](v161) & 1) == 0)
      {
        v334 = objc_msgSend_sectionHint(self->_paginationState, v215, v216, v217, v218, v219);
        v225 = objc_msgSend_pageIndex(self->_paginationState, v220, v221, v222, v223, v224);
        v231 = objc_msgSend_pageHints(v334, v226, v227, v228, v229, v230);
        v237 = objc_msgSend_count(v231, v232, v233, v234, v235, v236);

        if (v225 + 1 < v237)
        {
          v243 = objc_msgSend_pageHints(v334, v238, v239, v240, v241, v242);
          v249 = objc_msgSend_pageIndex(self->_paginationState, v244, v245, v246, v247, v248);
          v255 = objc_msgSend_objectAtIndexedSubscript_(v243, v250, v251, v252, v253, v254, v249 + 1);
          objc_msgSend_setPageKind_(v255, v256, v257, v258, v259, v260, 5);
        }

        objc_msgSend_setFootnoteIndex_(self->_paginationState, v238, v239, v240, v241, v242, 0x7FFFFFFFFFFFFFFFLL);
        objc_msgSend_removeAllFootnoteReferenceStorages(v340, v261, v262, v263, v264, v265);
        objc_msgSend_resetFootnoteHeightMeasurer(v337, v266, v267, v268, v269, v270);
        objc_msgSend_setOverrideAllowFootnotes_(v7, v271, v272, v273, v274, v275, 0);
        objc_msgSend_p_destroyBodyLayoutState(self, v276, v277, v278, v279, v280);
        objc_msgSend_p_preparePaginationStateForNextPage(self, v281, v282, v283, v284, v285);
        *a5 = objc_msgSend_footnoteIndex(self->_paginationState, v286, v287, v288, v289, v290);
        v291 = self->_bodyLayoutManager;
        v297 = objc_msgSend_bodyLayoutState(self->_paginationState, v292, v293, v294, v295, v296);
        v303 = objc_msgSend_layOutIntoTarget_withLayoutState_outSync_(v291, v298, v299, v300, v301, v302, v337, v297, a4);
        objc_msgSend_setBodyLayoutState_(self->_paginationState, v304, v305, v306, v307, v308, v303);
      }
    }
  }

LABEL_33:
}

- (void)p_layOutFootnotesIntoPageLayout:(id)a3
{
  v4 = a3;
  ValidFootnoteIndex = objc_msgSend_p_lastValidFootnoteIndex(self, v5, v6, v7, v8, v9);
  if (objc_msgSend_footnoteIndex(self->_paginationState, v11, v12, v13, v14, v15) != ValidFootnoteIndex)
  {
    objc_msgSend_setFootnoteIndex_(self->_paginationState, v16, v17, v18, v19, v20, ValidFootnoteIndex);
  }

  v21 = objc_msgSend_pageIndexPath(self->_paginationState, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_p_pageHintForPageIndexPath_(self, v22, v23, v24, v25, v26, v21);

  v161 = v4;
  v34 = objc_msgSend_footnoteContainerLayout(v161, v28, v29, v30, v31, v32);
  if (!v34)
  {
    goto LABEL_8;
  }

  v39 = objc_msgSend_footnoteContainerLayout(v161, v33, v35, v36, v37, v38);
  v45 = objc_msgSend_layoutController(v39, v40, v41, v42, v43, v44);

  if (!v45)
  {
    v34 = 0;
LABEL_8:
    objc_msgSend_setFootnoteLayoutRange_(v27, v33, v35, v36, v37, v38, *MEMORY[0x277D81510], *(MEMORY[0x277D81510] + 8));
    goto LABEL_9;
  }

  v160 = v27;
  footnoteLayoutController = self->_footnoteLayoutController;
  v47 = objc_msgSend_footnoteIndex(self->_paginationState, v33, v35, v36, v37, v38);
  v159 = objc_msgSend_footnoteContainerLayout(v161, v48, v49, v50, v51, v52);
  v158 = v47;
  objc_msgSend_blockHeightAvailableForFootnotes(v161, v53, v54, v55, v56, v57);
  v59 = v58.n128_u64[0];
  v64 = objc_msgSend_range(v27, v60, v58, v61, v62, v63);
  v66 = v65;
  v71 = objc_msgSend_sectionCharRange(self->_paginationState, v65, v67, v68, v69, v70);
  v73 = v72;
  Section = objc_msgSend_onLastSection(self->_paginationState, v72, v74, v75, v76, v77);
  v84 = objc_msgSend_sectionHint(self->_paginationState, v79, v80, v81, v82, v83);
  v90 = objc_msgSend_pageIndex(self->_paginationState, v85, v86, v87, v88, v89);
  v91.n128_u64[0] = v59;
  isLastSection_sectionHint_pageHintIndex = objc_msgSend_layOutFootnotesFromIndex_intoFootnoteContainer_maxBlockHeight_pageCharRange_sectionCharRange_isLastSection_sectionHint_pageHintIndex_(footnoteLayoutController, v92, v91, v93, v94, v95, v158, v159, v64, v66, v71, v73, Section, v84, v90);
  v34 = v97;

  if (isLastSection_sectionHint_pageHintIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = v160;
    objc_msgSend_setFootnoteLayoutRange_(v160, v98, v99, v100, v101, v102, *MEMORY[0x277D81510], *(MEMORY[0x277D81510] + 8));
LABEL_9:
    isLastSection_sectionHint_pageHintIndex = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  v27 = v160;
  v109 = objc_msgSend_allowsFootnotes(v161, v98, v99, v100, v101, v102);
  v115 = v34;
  if ((v109 & 1) == 0)
  {
    v116 = objc_msgSend_documentRoot(self, v110, v111, v112, v113, v114);
    if (objc_msgSend_laysOutBodyVertically(v116, v117, v118, v119, v120, v121))
    {
      v127 = objc_msgSend_documentRoot(self, v122, v123, v124, v125, v126);
      v133 = objc_msgSend_settings(v127, v128, v129, v130, v131, v132);
      hasFacingPages = objc_msgSend_hasFacingPages(v133, v134, v135, v136, v137, v138);

      if (hasFacingPages)
      {
        goto LABEL_25;
      }
    }

    else
    {
    }

    v140 = MEMORY[0x277D81150];
    v141 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, v111, v112, v113, v114, "[TPPaginatedPageController p_layOutFootnotesIntoPageLayout:]");
    v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v142, v143, v144, v145, v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v140, v148, v149, v150, v151, v152, v141, v147, 4631, 0, "Footnotes laid out but disallowed unexpectedly");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v153, v154, v155, v156, v157);
LABEL_25:
    v115 = 0;
  }

  objc_msgSend_setFootnoteLayoutRange_(v160, v110, v111, v112, v113, v114, isLastSection_sectionHint_pageHintIndex, v115);
LABEL_10:
  if (v34 == *(MEMORY[0x277D81490] + 8) && isLastSection_sectionHint_pageHintIndex == *MEMORY[0x277D81490])
  {
    objc_msgSend_setFootnoteIndex_(self->_paginationState, v103, v104, v105, v106, v107, 0);
  }

  else
  {
    objc_msgSend_setFootnoteIndex_(self->_paginationState, v103, v104, v105, v106, v107, &v34[isLastSection_sectionHint_pageHintIndex]);
  }
}

- (void)p_performPaginationResetAndMetricsReset:(BOOL)a3
{
  objc_msgSend_p_setNeedsLayoutOnPageIndex_(self, a2, v3, v4, v5, v6, 0);
  objc_msgSend_removeAllSectionHints(self->_paginationState, v8, v9, v10, v11, v12);
  self->_lastKnownPageCount = 1;
  self->_completePageCount = 0;
}

- (void)p_removeDeletedFootnotesOnPageLayout:(id)a3
{
  footnoteLayoutController = self->_footnoteLayoutController;
  v13 = objc_msgSend_footnoteContainerLayout(a3, a2, v3, v4, v5, v6);
  objc_msgSend_removeDeletedFootnoteInContainer_(footnoteLayoutController, v8, v9, v10, v11, v12);
}

- (void)p_updateTextHintAtPageIndexPath:(id)a3 withTarget:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (!v8)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPaginatedPageController p_updateTextHintAtPageIndexPath:withTarget:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 4677, 0, "Cannot update a text page hint without a target");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  v31 = objc_msgSend_p_pageHintForPageIndexPath_(self, v7, v9, v10, v11, v12, v6);
  if (objc_msgSend_pageKind(v31, v32, v33, v34, v35, v36) != 1)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, v41, "[TPPaginatedPageController p_updateTextHintAtPageIndexPath:withTarget:]");
    v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v50, v51, v52, v53, v54, v43, v49, 4680, 0, "Trying to update text attributes of non-text page hint");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57, v58, v59);
  }

  if (v8 && v31)
  {
    v60 = objc_opt_new();
    v270 = objc_opt_new();
    v269 = objc_opt_new();
    v271 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v61, v62, v63, v64, v65, 2);
    v276 = 0;
    v274 = 0;
    v275 = 0;
    bodyLayoutManager = self->_bodyLayoutManager;
    v72 = objc_msgSend_bodyLayoutState(self->_paginationState, v67, v68, v69, v70, v71);
    objc_msgSend_deflateTarget_intoHints_childHints_anchoredDrawablePositions_startingPartitionedAttachments_topicNumberHints_layoutState_(bodyLayoutManager, v73, v74, v75, v76, v77, v8, v60, v271, &v276, &v275, &v274, v72);
    if (!objc_msgSend_count(v60, v78, v79, v80, v81, v82))
    {
      v88 = MEMORY[0x277D81150];
      v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, v84, v85, v86, v87, "[TPPaginatedPageController p_updateTextHintAtPageIndexPath:withTarget:]");
      v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v90, v91, v92, v93, v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v88, v96, v97, v98, v99, v100, v89, v95, 4698, 0, "Failed to deflate into hints");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102, v103, v104, v105);
    }

    objc_msgSend_setHints_topicNumberHints_(v31, v83, v84, v85, v86, v87, v60, v274);
    flowController = self->_flowController;
    v112 = objc_msgSend_pageLayout(v8, v107, v108, v109, v110, v111);
    objc_msgSend_deflatePage_intoHints_topicNumberHints_(flowController, v113, v114, v115, v116, v117, v112, v270, v269);

    objc_msgSend_setFlowHints_flowTopicNumberHints_(v31, v118, v119, v120, v121, v122, v270, v269);
    objc_msgSend_setChildHints_(v31, v123, v124, v125, v126, v127, v271);
    objc_msgSend_setAnchoredDrawablePositions_(v31, v128, v129, v130, v131, v132, v276);
    objc_msgSend_setStartingPartitionedAttachments_(v31, v133, v134, v135, v136, v137, v275);
    v143 = objc_msgSend_info(v8, v138, v139, v140, v141, v142);
    v149 = objc_msgSend_bodyStorage(v143, v144, v145, v146, v147, v148);
    v155 = objc_msgSend_range(v31, v150, v151, v152, v153, v154);
    v161 = objc_msgSend_autoNumberFootnoteCountForRange_(v149, v156, v157, v158, v159, v160, v155, v156);

    v167 = objc_msgSend_p_textPageHintPrecedingPageIndexPath_(self, v162, v163, v164, v165, v166, v6);
    v173 = v167;
    if (v167)
    {
      v174 = objc_msgSend_footnoteAutoNumberRange(v167, v168, v169, v170, v171, v172);
      objc_msgSend_setFootnoteAutoNumberRange_(v31, v175, v176, v177, v178, v179, &v175[v174], v161);
    }

    else
    {
      objc_msgSend_setFootnoteAutoNumberRange_(v31, v168, v169, v170, v171, v172, 0, v161);
    }

    v185 = objc_msgSend_pageLayout(v8, v180, v181, v182, v183, v184);
    v191 = objc_msgSend_overrideAllowFootnotes(v185, v186, v187, v188, v189, v190);
    objc_msgSend_setHasForcedFootnotes_(v31, v192, v193, v194, v195, v196, v191);

    v202 = objc_msgSend_documentRoot(self, v197, v198, v199, v200, v201);
    v208 = objc_msgSend_bodyStorage(v202, v203, v204, v205, v206, v207);

    v214 = objc_msgSend_footnoteCount(v208, v209, v210, v211, v212, v213);
    v273 = 0;
    if (v214)
    {
      v220 = objc_msgSend_footnoteAtFootnoteIndex_outCharIndex_(v208, v215, v216, v217, v218, v219, v214 - 1, &v273);
    }

    else
    {
      objc_msgSend_setFootnoteLayoutRange_(v31, v215, v216, v217, v218, v219, *MEMORY[0x277D81510], *(MEMORY[0x277D81510] + 8));
    }

    v226 = v273;
    v227 = objc_msgSend_range(v31, v221, v222, v223, v224, v225);
    if (v226 < &v228[v227])
    {
      v233 = objc_msgSend_footnoteAutoNumberRange(v31, v228, v229, v230, v231, v232);
      v235 = v234;
      v240 = objc_msgSend_sectionHints(self->_paginationState, v234, v236, v237, v238, v239);
      sub_275FFD180(v272, v240, v6, 1);
      v241 = &v235[v233];

      while (1)
      {
        v247 = sub_275FFD320(v272, v242, v243, v244, v245, v246);

        if (!v247)
        {
          break;
        }

        if (sub_275FFD3B8(v272, v248, v249, v250, v251, v252) == 1)
        {
          if (sub_275FFD4E8(v272, v253, v254, v255, v256, v257) == v241 && !v258)
          {
            break;
          }

          v263 = sub_275FFD320(v272, v258, v259, v260, v261, v262);
          objc_msgSend_setFootnoteAutoNumberRange_(v263, v264, v265, v266, v267, v268, v241, 0);
        }

        sub_275FFCF2C(v272, v253, v254, v255, v256, v257);
      }

      sub_275FFD2D0(v272);
    }
  }
}

- (void)p_updateNonTextHintAtPageIndexPath:(id)a3 pageLayout:(id)a4
{
  v6 = a3;
  v169 = a4;
  v12 = objc_msgSend_p_pageHintForPageIndexPath_(self, v7, v8, v9, v10, v11, v6);
  if (objc_msgSend_pageKind(v12, v13, v14, v15, v16, v17) == 1)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "[TPPaginatedPageController p_updateNonTextHintAtPageIndexPath:pageLayout:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v31, v32, v33, v34, v35, v24, v30, 4765, 0, "Wrong way to update text page hints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39, v40);
  }

  v41 = objc_msgSend_p_pageHintPrecedingPageIndexPath_(self, v18, v19, v20, v21, v22, v6);
  v47 = v41;
  if (v41)
  {
    v48 = objc_msgSend_range(v41, v42, v43, v44, v45, v46);
    v50 = v49;
    v55 = objc_msgSend_footnoteAutoNumberRange(v47, v49, v51, v52, v53, v54);
    v57 = v56;
    v62 = objc_msgSend_footnoteLayoutRange(v47, v56, v58, v59, v60, v61);
    v63 = &v50[v48];
    v64 = &v57[v55];
    v66 = v62 + v65;
  }

  else
  {
    v66 = 0;
    v64 = 0;
    v63 = 0;
  }

  v67 = objc_opt_new();
  objc_msgSend_setNextWidowPullsDownFromCharIndex_(v67, v68, v69, v70, v71, v72, v63);
  v78 = objc_msgSend_documentRoot(self, v73, v74, v75, v76, v77);
  v84 = objc_msgSend_settings(v78, v79, v80, v81, v82, v83);
  hasBody = objc_msgSend_hasBody(v84, v85, v86, v87, v88, v89);

  if (hasBody)
  {
    objc_msgSend_setRange_(v67, v91, v92, v93, v94, v95, v63, 0);
  }

  else
  {
    v101 = objc_msgSend_documentRoot(self, v91, v92, v93, v94, v95);
    v107 = objc_msgSend_bodyStorage(v101, v102, v103, v104, v105, v106);
    v113 = objc_msgSend_sectionAtCharIndex_effectiveRange_(v107, v108, v109, v110, v111, v112, v63, v170);

    objc_msgSend_setRange_(v67, v114, v115, v116, v117, v118, v170[0], v170[1]);
  }

  objc_msgSend_setAnchoredRange_(v67, v96, v97, v98, v99, v100, v63, 0);
  v119.n128_u64[0] = *MEMORY[0x277CBF398];
  v120.n128_u64[0] = *(MEMORY[0x277CBF398] + 8);
  v121.n128_u64[0] = *(MEMORY[0x277CBF398] + 16);
  v122.n128_u64[0] = *(MEMORY[0x277CBF398] + 24);
  objc_msgSend_setFrameBounds_(v67, v123, v119, v120, v121, v122);
  v129 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v124, v125, v126, v127, v128, v67);
  v130 = objc_opt_new();
  objc_msgSend_setHints_topicNumberHints_(v12, v131, v132, v133, v134, v135, v129, v130);

  v136 = objc_opt_new();
  v137 = objc_opt_new();
  objc_msgSend_deflatePage_intoHints_topicNumberHints_(self->_flowController, v138, v139, v140, v141, v142, v169, v136, v137);
  objc_msgSend_setFlowHints_flowTopicNumberHints_(v12, v143, v144, v145, v146, v147, v136, v137);
  objc_msgSend_setFootnoteAutoNumberRange_(v12, v148, v149, v150, v151, v152, v64, 0);
  objc_msgSend_setFootnoteLayoutRange_(v12, v153, v154, v155, v156, v157, v66, 0);
  v163 = objc_msgSend_dictionary(MEMORY[0x277D81308], v158, v159, v160, v161, v162);
  objc_msgSend_setAnchoredDrawablePositions_(v12, v164, v165, v166, v167, v168, v163);
}

- (void)p_preparePaginationStateForNextPage
{
  if (!objc_msgSend_bodyLayoutState(self->_paginationState, a2, v2, v3, v4, v5))
  {
    objc_msgSend_p_checkForBackUp(self, v7, v8, v9, v10, v11);
    v70 = objc_msgSend_documentPageIndex(self->_paginationState, v12, v13, v14, v15, v16);
    v22 = objc_msgSend_i_textPageHintPrecedingPageIndex_(self, v17, v18, v19, v20, v21, &v70);
    v28 = v22;
    if (v22)
    {
      bodyLayoutManager = self->_bodyLayoutManager;
      v30 = objc_msgSend_lastHint(v22, v23, v24, v25, v26, v27);
      v36 = objc_msgSend_lastChildHint(v28, v31, v32, v33, v34, v35);
      Target_childHint = objc_msgSend_layoutStateForLayoutAfterHint_firstTarget_childHint_(bodyLayoutManager, v37, v38, v39, v40, v41, v30, 0, v36);
      objc_msgSend_setBodyLayoutState_(self->_paginationState, v43, v44, v45, v46, v47, Target_childHint);
    }
  }

  if (objc_msgSend_bodyCharIndex(self->_paginationState, v7, v8, v9, v10, v11) == 0x7FFFFFFFFFFFFFFFLL)
  {
    ValidCharIndex = objc_msgSend_p_lastValidCharIndex(self, v48, v49, v50, v51, v52);
    if (ValidCharIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setBodyCharIndex_(self->_paginationState, v54, v55, v56, v57, v58, 0);
    }

    else
    {
      objc_msgSend_setBodyCharIndex_(self->_paginationState, v54, v55, v56, v57, v58, ValidCharIndex);
    }
  }

  if (objc_msgSend_footnoteIndex(self->_paginationState, v48, v49, v50, v51, v52) == 0x7FFFFFFFFFFFFFFFLL)
  {
    ValidFootnoteIndex = objc_msgSend_p_lastValidFootnoteIndex(self, v59, v60, v61, v62, v63);
    if (ValidFootnoteIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_setFootnoteIndex_(self->_paginationState, v65, v66, v67, v68, v69, 0);
    }

    else
    {
      objc_msgSend_setFootnoteIndex_(self->_paginationState, v65, v66, v67, v68, v69, ValidFootnoteIndex);
    }
  }
}

- (void)p_prepareSectionHintForNextPage
{
  v7 = objc_msgSend_sectionHints(self->_paginationState, a2, v2, v3, v4, v5);

  if (!v7)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "[TPPaginatedPageController p_prepareSectionHintForNextPage]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 4839, 0, "invalid nil value for '%{public}s'", "_paginationState.sectionHints");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
  }

  v31 = objc_msgSend_sectionHints(self->_paginationState, v8, v9, v10, v11, v12);

  if (v31)
  {
    v37 = objc_msgSend_sectionIndex(self->_paginationState, v32, v33, v34, v35, v36);
    v43 = objc_msgSend_sectionHints(self->_paginationState, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_count(v43, v44, v45, v46, v47, v48);

    if (v37 >= v49)
    {
      v66 = objc_alloc_init(TPSectionHint);
      v72 = objc_msgSend_documentPageIndex(self->_paginationState, v67, v68, v69, v70, v71);
      objc_msgSend_setDocumentStartPageIndex_(v66, v73, v74, v75, v76, v77, v72);
      v94 = v66;
      objc_msgSend_addSectionHint_(self->_paginationState, v78, v79, v80, v81, v82, v66);
    }

    else
    {
      v55 = objc_msgSend_sectionHints(self->_paginationState, v50, v51, v52, v53, v54);
      v94 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, v57, v58, v59, v60, v37);
    }

    if (!objc_msgSend_pageIndex(self->_paginationState, v61, v62, v63, v64, v65))
    {
      v88 = objc_msgSend_documentPageIndex(self->_paginationState, v83, v84, v85, v86, v87);
      objc_msgSend_setDocumentStartPageIndex_(v94, v89, v90, v91, v92, v93, v88);
    }
  }
}

- (void)p_preparePageHintForNextPage
{
  if (objc_msgSend_isPaginationComplete(self->_paginationState, a2, v2, v3, v4, v5))
  {
    v12 = MEMORY[0x277D81150];
    v185 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "[TPPaginatedPageController p_preparePageHintForNextPage]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v19, v20, v21, v22, v23, v185, v18, 4868, 0, "Shouldn't be be any 'next' page when pagination is complete");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  }

  v30 = objc_msgSend_count(self->_pageGeneratorStack, v7, v8, v9, v10, v11);
  if (!v30)
  {
    objc_msgSend_p_resetPageGenerators(self, v29, v31, v32, v33, v34);
  }

  v186 = objc_msgSend_sectionHint(self->_paginationState, v29, v31, v32, v33, v34);
  while (1)
  {
    if (!objc_msgSend_count(self->_pageGeneratorStack, v35, v36, v37, v38, v39))
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v41, v42, v43, v44, "[TPPaginatedPageController p_preparePageHintForNextPage]");
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      v70 = objc_msgSend_sectionIndex(self->_paginationState, v65, v66, v67, v68, v69);
      v76 = objc_msgSend_pageIndex(self->_paginationState, v71, v72, v73, v74, v75);
      v82 = objc_msgSend_documentPageIndex(self->_paginationState, v77, v78, v79, v80, v81);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v83, v84, v85, v86, v87, v58, v64, 4928, 0, "Failed to find a page generator; failed to set up page hint for section index %lu page index %lu (%lu). Stack count was %lu", v70, v76, v82, v30);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v88, v89, v90, v91, v92);
      goto LABEL_23;
    }

    v45 = objc_msgSend_lastObject(self->_pageGeneratorStack, v40, v41, v42, v43, v44);
    if (objc_msgSend_wantsPageInSectionHint_withState_(v45, v46, v47, v48, v49, v50, v186, self->_paginationState))
    {
      break;
    }

    v56 = objc_msgSend_tsu_pop(self->_pageGeneratorStack, v51, v52, v53, v54, v55);
  }

  objc_msgSend_createOrUpdatePageHintInSectionHint_withState_(v45, v51, v52, v53, v54, v55, v186, self->_paginationState);
  v98 = objc_msgSend_pageIndex(self->_paginationState, v93, v94, v95, v96, v97);
  v104 = objc_msgSend_pageHintForPageIndex_(v186, v99, v100, v101, v102, v103, v98);
  v110 = objc_msgSend_p_lastValidPageHint(self, v105, v106, v107, v108, v109);
  if (objc_msgSend_documentPageIndex(self->_paginationState, v111, v112, v113, v114, v115))
  {
    if (!objc_msgSend_documentPageIndex(self->_paginationState, v116, v117, v118, v119, v120))
    {
      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v121, v122, v123, v124, v125, "[TPPaginatedPageController p_preparePageHintForNextPage]");
      v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, v129, v130, v131, v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v134, v135, v136, v137, v138, v127, v133, 4899, 0, "Page index should be > 0 here");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v139, v140, v141, v142, v143);
    }

    v144 = objc_msgSend_pageColumn(v110, v121, v122, v123, v124, v125);
    v150 = objc_msgSend_documentRoot(self, v145, v146, v147, v148, v149);
    v156 = objc_msgSend_writingDirection(v150, v151, v152, v153, v154, v155);

    if (v156 == 1)
    {
      v162 = v144 != 1;
LABEL_18:
      objc_msgSend_setPageColumn_(v104, v157, v158, v159, v160, v161, v162);
      goto LABEL_19;
    }

    if (objc_msgSend_isPageLayoutRightToLeft(self, v157, v158, v159, v160, v161))
    {
      v162 = v144 == 0;
      goto LABEL_18;
    }
  }

  else
  {
    objc_msgSend_setPageRow_(v104, v116, v117, v118, v119, v120, 0);
    PageColumn = objc_msgSend_p_firstPageColumn(self, v163, v164, v165, v166, v167);
    objc_msgSend_setPageColumn_(v104, v169, v170, v171, v172, v173, PageColumn);
    v144 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_19:
  if (v144 == (objc_msgSend_isPageLayoutRightToLeft(self, v157, v158, v159, v160, v161) ^ 1))
  {
    v180 = objc_msgSend_pageRow(v110, v174, v175, v176, v177, v178) + 1;
  }

  else
  {
    v180 = objc_msgSend_pageRow(v110, v174, v175, v176, v177, v178);
  }

  objc_msgSend_setPageRow_(v104, v179, v181, v182, v183, v184, v180);

LABEL_23:
}

- (void)p_resetPageGenerators
{
  v50 = objc_alloc_init(TPFillerPageGenerator);
  v3 = objc_alloc_init(TPTextPageGenerator);
  v4 = [TPEndnotePageGenerator alloc];
  v10 = objc_msgSend_initWithFootnoteLayoutController_(v4, v5, v6, v7, v8, v9, self->_footnoteLayoutController);
  v11 = [TPOrphanPageGenerator alloc];
  v17 = objc_msgSend_documentRoot(self, v12, v13, v14, v15, v16);
  v23 = objc_msgSend_initWithDocumentRoot_(v11, v18, v19, v20, v21, v22, v17);

  v24 = objc_alloc_init(TPPageLayoutPageGenerator);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v25, v26, v27, v28, v29, v23);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v30, v31, v32, v33, v34, v10);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v35, v36, v37, v38, v39, v24);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v40, v41, v42, v43, v44, v3);
  objc_msgSend_tsu_push_(self->_pageGeneratorStack, v45, v46, v47, v48, v49, v50);
}

- (void)p_syncFromNextPageWithDirtyRanges:(id)a3 pageTextRange:(const _NSRange *)a4
{
  v616 = *MEMORY[0x277D85DE8];
  v593 = a3;
  v602 = self;
  v11 = objc_msgSend_documentRoot(self, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_settings(v11, v12, v13, v14, v15, v16);
  if (objc_msgSend_hasBody(v17, v18, v19, v20, v21, v22))
  {
    v28 = objc_msgSend_pageIndex(v602->_paginationState, v23, v24, v25, v26, v27);

    if (!v28)
    {
      v34 = MEMORY[0x277D81150];
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, v33, "[TPPaginatedPageController p_syncFromNextPageWithDirtyRanges:pageTextRange:]");
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v42, v43, v44, v45, v46, v35, v41, 4952, 0, "Shouldn't be syncing if we haven't laid out any pages in this section");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48, v49, v50, v51);
    }
  }

  else
  {
  }

  v601 = objc_msgSend_dirtyRangesIntersecting_(v593, v29, v30, v31, v32, v33, 0, a4->length + a4->location);
  v591 = objc_msgSend_mutableCopy(v593, v52, v53, v54, v55, v56);
  objc_msgSend_subtract_(v591, v57, v58, v59, v60, v61, v601);
  v67 = objc_msgSend_superRange(v591, v62, v63, v64, v65, v66);
  v596 = v68;
  v597 = v67;
  v595 = objc_msgSend_sectionHint(v602->_paginationState, v68, v69, v70, v71, v72);
  v592 = objc_msgSend_documentPageIndex(v602->_paginationState, v73, v74, v75, v76, v77);
  v594 = objc_msgSend_pageCount(v595, v78, v79, v80, v81, v82);
  v598 = objc_msgSend_p_lastValidPageHint(v602, v83, v84, v85, v86, v87);
  v93 = objc_msgSend_documentRoot(v602, v88, v89, v90, v91, v92);
  v99 = objc_msgSend_bodyStorage(v93, v94, v95, v96, v97, v98);
  v105 = objc_msgSend_sectionIndex(v602->_paginationState, v100, v101, v102, v103, v104);
  v111 = objc_msgSend_sectionAtSectionIndex_effectiveRange_(v99, v106, v107, v108, v109, v110, v105, &v612);

  v112 = objc_opt_new();
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(v602->_paginationState, v113, v114, v115, v116, v117);
  v603 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(v602, v119, v120, v121, v122, v123, LaidOutDocumentPageIndex, 0, 0);
  v129 = objc_msgSend_documentRoot(v602, v124, v125, v126, v127, v128);
  v135 = objc_msgSend_flowInfoContainer(v129, v130, v131, v132, v133, v134);
  v141 = objc_msgSend_flowInfos(v135, v136, v137, v138, v139, v140);
  v599 = objc_msgSend_count(v141, v142, v143, v144, v145, v146);

  do
  {
    v600 = objc_msgSend_p_pageHintForPageIndexPath_(v602, v147, v148, v149, v150, v151, v603);
    v157 = objc_msgSend_flowHints(v600, v152, v153, v154, v155, v156);
    v610 = 0u;
    v611 = 0u;
    v608 = 0u;
    v609 = 0u;
    v158 = v157;
    v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, v160, v161, v162, v163, &v608, v615, 16);
    if (v165)
    {
      v170 = *v609;
      do
      {
        for (i = 0; i != v165; ++i)
        {
          if (*v609 != v170)
          {
            objc_enumerationMutation(v158);
          }

          v172 = *(*(&v608 + 1) + 8 * i);
          v173 = objc_msgSend_objectForKeyedSubscript_(v112, v164, v166, v167, v168, v169, v172);
          v174 = v173 == 0;

          if (v174)
          {
            v175 = objc_msgSend_objectForKeyedSubscript_(v158, v164, v166, v167, v168, v169, v172);
            v181 = objc_msgSend_range(v175, v176, v177, v178, v179, v180);
            v183 = v182;

            v189 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v184, v185, v186, v187, v188, v181, v183);
            objc_msgSend_setObject_forUncopiedKey_(v112, v190, v191, v192, v193, v194, v189, v172);
          }
        }

        v165 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v164, v166, v167, v168, v169, &v608, v615, 16);
      }

      while (v165);
    }

    if (!objc_msgSend_pageIndex(v603, v195, v196, v197, v198, v199) && objc_msgSend_sectionIndex(v603, v200, v201, v202, v203, v204))
    {
      while (objc_msgSend_sectionIndex(v603, v200, v201, v202, v203, v204))
      {
        v222 = objc_msgSend_sectionIndex(v603, v217, v218, v219, v220, v221);
        objc_msgSend_setSectionIndex_(v603, v223, v224, v225, v226, v227, v222 - 1);
        v233 = objc_msgSend_sectionHints(v602->_paginationState, v228, v229, v230, v231, v232);
        v239 = objc_msgSend_sectionIndex(v603, v234, v235, v236, v237, v238);
        v245 = objc_msgSend_objectAtIndexedSubscript_(v233, v240, v241, v242, v243, v244, v239);
        v251 = objc_msgSend_pageCount(v245, v246, v247, v248, v249, v250);

        if (v251)
        {
          objc_msgSend_setPageIndex_(v603, v200, v201, v202, v203, v204, v251 - 1);
          goto LABEL_18;
        }
      }

      goto LABEL_18;
    }

    if (objc_msgSend_pageIndex(v603, v200, v201, v202, v203, v204))
    {
      v210 = objc_msgSend_pageIndex(v603, v205, v206, v207, v208, v209);
      objc_msgSend_setPageIndex_(v603, v211, v212, v213, v214, v215, v210 - 1);
LABEL_18:
      v216 = 1;
      goto LABEL_24;
    }

    v216 = 0;
LABEL_24:

    if (objc_msgSend_count(v112, v252, v253, v254, v255, v256) < v599)
    {
      v257 = v216;
    }

    else
    {
      v257 = 0;
    }
  }

  while ((v257 & 1) != 0);
  v258 = objc_msgSend_documentRoot(v602, v147, v148, v149, v150, v151);
  v264 = objc_msgSend_settings(v258, v259, v260, v261, v262, v263);
  hasBody = objc_msgSend_hasBody(v264, v265, v266, v267, v268, v269);

  if (hasBody)
  {
    v276 = 0;
    while (objc_msgSend_pageIndex(v602->_paginationState, v271, v272, v273, v274, v275) < v594)
    {
      v282 = objc_msgSend_bodyCharIndex(v602->_paginationState, v277, v278, v279, v280, v281);
      if (v282 >= v613 + v612)
      {
        v283 = objc_msgSend_bodyCharIndex(v602->_paginationState, v277, v278, v279, v280, v281);
        if (v283 != v613 + v612)
        {
          break;
        }

        v284 = objc_msgSend_bodyCharIndex(v602->_paginationState, v277, v278, v279, v280, v281);
        v290 = objc_msgSend_documentRoot(v602, v285, v286, v287, v288, v289);
        v296 = objc_msgSend_bodyStorage(v290, v291, v292, v293, v294, v295);
        LODWORD(v284) = v284 == objc_msgSend_length(v296, v297, v298, v299, v300, v301);

        if (!v284)
        {
          break;
        }
      }

      v302 = objc_msgSend_pageIndex(v602->_paginationState, v277, v278, v279, v280, v281);
      v309 = objc_msgSend_pageHintForPageIndex_(v595, v303, v304, v305, v306, v307, v302);
      if (!v309)
      {
        v314 = MEMORY[0x277D81150];
        v315 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v308, v310, v311, v312, v313, "[TPPaginatedPageController p_syncFromNextPageWithDirtyRanges:pageTextRange:]");
        v321 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v316, v317, v318, v319, v320, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v314, v322, v323, v324, v325, v326, v315, v321, 5011, 0, "invalid nil value for '%{public}s'", "nextPageHint");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v327, v328, v329, v330, v331);
      }

      if (objc_msgSend_pageKind(v309, v308, v310, v311, v312, v313) == 3)
      {
        v337 = objc_msgSend_documentRoot(v602, v332, v333, v334, v335, v336);
        v343 = objc_msgSend_floatingDrawables(v337, v338, v339, v340, v341, v342);
        v349 = objc_msgSend_pageIndex(v602->_paginationState, v344, v345, v346, v347, v348);
        v355 = objc_msgSend_drawablesOnPageIndex_(v343, v350, v351, v352, v353, v354, v349);
        v361 = objc_msgSend_count(v355, v356, v357, v358, v359, v360) != 0;
      }

      else
      {
        v361 = 0;
      }

      if (objc_msgSend_pageKind(v309, v332, v333, v334, v335, v336) == 1)
      {
        if (!(v361 | ((objc_msgSend_p_isBodyLayoutComplete(v602, v362, v363, v364, v365, v366) & 1) == 0)))
        {
          goto LABEL_62;
        }
      }

      else if (!v361)
      {
        goto LABEL_62;
      }

      v367 = objc_msgSend_range(v309, v362, v363, v364, v365, v366);
      v369 = v368;
      v617.length = v596;
      v617.location = v597;
      v619.location = v367;
      v619.length = v369;
      if (NSIntersectionRange(v617, v619).length)
      {
        goto LABEL_62;
      }

      if (v367 + v369 == v597)
      {
        goto LABEL_62;
      }

      v374 = objc_msgSend_documentRoot(v602, 0, v370, v371, v372, v373);
      v380 = objc_msgSend_bodyStorage(v374, v375, v376, v377, v378, v379);
      v386 = objc_msgSend_syncsWithEndOfPageHint_bodyStorage_flowRanges_(v309, v381, v382, v383, v384, v385, v598, v380, v112);

      if ((v386 & 1) == 0)
      {
        goto LABEL_62;
      }

      objc_msgSend_advancePageIndex(v602->_paginationState, v387, v388, v389, v390, v391);
      v397 = objc_msgSend_range(v309, v392, v393, v394, v395, v396);
      objc_msgSend_setBodyCharIndex_(v602->_paginationState, v398, v399, v400, v401, v402, &v398[v397]);
      v408 = objc_msgSend_footnoteLayoutRange(v309, v403, v404, v405, v406, v407);
      objc_msgSend_setFootnoteIndex_(v602->_paginationState, v409, v410, v411, v412, v413, &v409[v408]);
      objc_msgSend_p_notifyObserversDidLayoutWhileSyncing_(v602, v414, v415, v416, v417, v418, 1);
      v419 = v309;

      if (objc_msgSend_pageKind(v419, v420, v421, v422, v423, v424) == 1)
      {
        v425 = v419;

        v276 = v425;
      }

      v598 = v419;
    }
  }

  else
  {
    v309 = objc_msgSend_sectionHints(v602->_paginationState, v271, v272, v273, v274, v275);
    v431 = objc_msgSend_count(v309, v426, v427, v428, v429, v430);
    while (1)
    {

      if (objc_msgSend_sectionIndex(v602->_paginationState, v432, v433, v434, v435, v436) >= v431 || objc_msgSend_pageIndex(v602->_paginationState, v277, v278, v279, v280, v281))
      {
        v276 = 0;
        goto LABEL_63;
      }

      v309 = objc_msgSend_sectionHint(v602->_paginationState, v277, v278, v279, v280, v281);
      if (!objc_msgSend_pageCount(v309, v437, v438, v439, v440, v441))
      {
        break;
      }

      v447 = objc_msgSend_pageHintForPageIndex_(v309, v442, v443, v444, v445, v446, 0);
      if (objc_msgSend_pageKind(v447, v448, v449, v450, v451, v452) != 6 || (v458 = objc_msgSend_range(v447, v453, v454, v455, v456, v457), v460 = v459, v618.length = v596, v618.location = v597, v620.location = v458, v620.length = v460, NSIntersectionRange(v618, v620).length) || v458 + v460 == v597 || !objc_msgSend_syncsFlowRanges_withEndOfPageHint_(v447, 0, v461, v462, v463, v464, v112, v598))
      {

        goto LABEL_61;
      }

      objc_msgSend_advancePageIndex(v602->_paginationState, v465, v466, v467, v468, v469);
      objc_msgSend_advanceSectionIndex(v602->_paginationState, v470, v471, v472, v473, v474);
      v480 = objc_msgSend_range(v447, v475, v476, v477, v478, v479);
      objc_msgSend_setBodyCharIndex_(v602->_paginationState, v481, v482, v483, v484, v485, &v481[v480]);
      v491 = objc_msgSend_footnoteLayoutRange(v447, v486, v487, v488, v489, v490);
      objc_msgSend_setFootnoteIndex_(v602->_paginationState, v492, v493, v494, v495, v496, &v492[v491]);
      objc_msgSend_p_notifyObserversDidLayoutWhileSyncing_(v602, v497, v498, v499, v500, v501, 1);

      v598 = v447;
    }

    v502 = MEMORY[0x277D81150];
    v503 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v442, v443, v444, v445, v446, "[TPPaginatedPageController p_syncFromNextPageWithDirtyRanges:pageTextRange:]");
    v509 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v504, v505, v506, v507, v508, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v502, v510, v511, v512, v513, v514, v503, v509, 5050, 0, "Expected section hint to contain at least 1 page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v515, v516, v517, v518, v519);
LABEL_61:
    v276 = 0;
LABEL_62:
  }

LABEL_63:
  v520 = objc_msgSend_documentPageIndex(v602->_paginationState, v277, v278, v279, v280, v281);
  objc_msgSend_pageLayoutsInRange_(v602->_pageLayoutCache, v521, v522, v523, v524, v525, v592, v520 - v592);
  v606 = 0u;
  v607 = 0u;
  v604 = 0u;
  v526 = v605 = 0u;
  v533 = objc_msgSend_countByEnumeratingWithState_objects_count_(v526, v527, v528, v529, v530, v531, &v604, v614, 16);
  if (v533)
  {
    v538 = *v605;
    do
    {
      for (j = 0; j != v533; ++j)
      {
        if (*v605 != v538)
        {
          objc_enumerationMutation(v526);
        }

        v540 = objc_msgSend_bodyLayout(*(*(&v604 + 1) + 8 * j), v532, v534, v535, v536, v537);
        v546 = v540;
        if (v540 && (objc_msgSend_needsInflation(v540, v541, v542, v543, v544, v545) & 1) == 0)
        {
          objc_msgSend_updateStartCharIndexWithDirtyRanges_(v546, v547, v548, v549, v550, v551, v601);
        }
      }

      v533 = objc_msgSend_countByEnumeratingWithState_objects_count_(v526, v532, v534, v535, v536, v537, &v604, v614, 16);
    }

    while (v533);
  }

  if (objc_msgSend_documentPageIndex(v602->_paginationState, v552, v553, v554, v555, v556) > v592)
  {
    objc_msgSend_p_destroyBodyLayoutState(v602, v557, v558, v559, v560, v561);
    if (v276)
    {
      if (v602->_currentPageBeingLaidOut != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_documentPageIndex(v602->_paginationState, v562, v563, v564, v565, v566) == v602->_currentPageBeingLaidOut)
      {
        bodyLayoutManager = v602->_bodyLayoutManager;
        v573 = objc_msgSend_lastHint(v276, v567, v568, v569, v570, v571);
        v579 = objc_msgSend_lastChildHint(v276, v574, v575, v576, v577, v578);
        Target_childHint = objc_msgSend_layoutStateForLayoutAfterHint_firstTarget_childHint_(bodyLayoutManager, v580, v581, v582, v583, v584, v573, 0, v579);
        objc_msgSend_setBodyLayoutState_(v602->_paginationState, v586, v587, v588, v589, v590, Target_childHint);
      }
    }
  }
}

- (void)p_removeFinishedPageGenerators
{
  v29 = objc_msgSend_sectionHint(self->_paginationState, a2, v2, v3, v4, v5);
  while (objc_msgSend_count(self->_pageGeneratorStack, v7, v8, v9, v10, v11))
  {
    v17 = objc_msgSend_lastObject(self->_pageGeneratorStack, v12, v13, v14, v15, v16);
    if (objc_msgSend_wantsPageInSectionHint_withState_(v17, v18, v19, v20, v21, v22, v29, self->_paginationState))
    {

      break;
    }

    v28 = objc_msgSend_tsu_pop(self->_pageGeneratorStack, v23, v24, v25, v26, v27);
  }
}

- (void)p_advanceSectionIndex
{
  v7 = objc_msgSend_sectionIndex(self->_paginationState, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_sectionHints(self->_paginationState, v8, v9, v10, v11, v12);
  v153 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, v15, v16, v17, v18, v7);

  if (!objc_msgSend_pageCount(v153, v19, v20, v21, v22, v23))
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v25, v26, v27, v28, "[TPPaginatedPageController p_advanceSectionIndex]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v37, v38, v39, v40, v41, v30, v36, 5127, 0, "Shouldn't be advancing past an empty section");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45, v46);
  }

  v47 = objc_msgSend_pageIndex(self->_paginationState, v24, v25, v26, v27, v28);
  objc_msgSend_trimPageHintsFromPageIndex_(v153, v48, v49, v50, v51, v52, v47);
  objc_msgSend_advanceSectionIndex(self->_paginationState, v53, v54, v55, v56, v57);
  for (i = v7 + 1; ; ++i)
  {
    v65 = objc_msgSend_sectionIndex(self->_paginationState, v58, v59, v60, v61, v62);
    paginationState = self->_paginationState;
    if (i >= v65)
    {
      break;
    }

    v71 = objc_msgSend_sectionHints(paginationState, v64, v66, v67, v68, v69);
    v77 = objc_msgSend_count(v71, v72, v73, v74, v75, v76);

    if (i >= v77)
    {
      v89 = objc_alloc_init(TPSectionHint);
      objc_msgSend_addSectionHint_(self->_paginationState, v95, v96, v97, v98, v99);
    }

    else
    {
      v83 = objc_msgSend_sectionHints(self->_paginationState, v78, v79, v80, v81, v82);
      v89 = objc_msgSend_objectAtIndexedSubscript_(v83, v84, v85, v86, v87, v88, i);
    }

    objc_msgSend_setPageHints_(v89, v90, v91, v92, v93, v94, 0);
    v105 = objc_msgSend_documentPageIndex(self->_paginationState, v100, v101, v102, v103, v104);
    objc_msgSend_setDocumentStartPageIndex_(v89, v106, v107, v108, v109, v110, v105);
  }

  v111 = objc_msgSend_sectionIndex(paginationState, v64, v66, v67, v68, v69);
  v117 = objc_msgSend_sectionHints(self->_paginationState, v112, v113, v114, v115, v116);
  v123 = objc_msgSend_count(v117, v118, v119, v120, v121, v122);

  if (v111 < v123)
  {
    v129 = objc_msgSend_sectionHint(self->_paginationState, v124, v125, v126, v127, v128);
    started = objc_msgSend_documentStartPageIndex(v129, v130, v131, v132, v133, v134);
    if (started != objc_msgSend_documentPageIndex(self->_paginationState, v136, v137, v138, v139, v140))
    {
      v146 = self->_paginationState;
      v147 = objc_msgSend_sectionIndex(v146, v141, v142, v143, v144, v145);
      objc_msgSend_trimSectionHintsFromIndex_(v146, v148, v149, v150, v151, v152, v147);
    }
  }
}

- (BOOL)p_didLayOut
{
  v73 = *MEMORY[0x277D85DE8];
  self->_cachedPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  v6 = *MEMORY[0x277D81490];
  self->_cachedBodyTextRange = *MEMORY[0x277D81490];
  isPaginationComplete = objc_msgSend_p_isPaginationComplete(self, a2, v6, v2, v3, v4);
  paginationState = self->_paginationState;
  if (isPaginationComplete)
  {
    v14 = objc_msgSend_sectionIndex(self->_paginationState, v8, v9, v10, v11, v12);
    objc_msgSend_trimSectionHintsFromIndex_(paginationState, v15, v16, v17, v18, v19, v14);
    pageLayoutCache = self->_pageLayoutCache;
    PageIndexNeedingLayout = objc_msgSend_firstPageIndexNeedingLayout(self, v21, v22, v23, v24, v25);
    objc_msgSend_pageLayoutsFromStartIndex_(pageLayoutCache, v27, v28, v29, v30, v31, PageIndexNeedingLayout);
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v32 = v69 = 0u;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v34, v35, v36, v37, &v68, v72, 16);
    if (v39)
    {
      v44 = *v69;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v69 != v44)
          {
            objc_enumerationMutation(v32);
          }

          objc_msgSend_setNeedsInflation(*(*(&v68 + 1) + 8 * i), v38, v40, v41, v42, v43, v68);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v38, v40, v41, v42, v43, &v68, v72, 16);
      }

      while (v39);
    }
  }

  else
  {
    v51 = objc_msgSend_documentPageIndex(self->_paginationState, v8, v9, v10, v11, v12);
    objc_msgSend_p_invalidateThumbnailForPageIndex_(self, v52, v53, v54, v55, v56, v51);
  }

  if (objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v46, v47, v48, v49, v50, v68))
  {
    objc_msgSend_p_updatePageCount(self, v57, v58, v59, v60, v61);
  }

  else
  {
    self->_shouldUpdatePageCount = 1;
    if (objc_msgSend_p_isPaginationComplete(self, v57, v58, v59, v60, v61))
    {
      objc_msgSend_backgroundPaginationDidEnd(self, v62, v63, v64, v65, v66);
    }
  }

  return objc_msgSend_p_isPaginationComplete(self, v62, v63, v64, v65, v66);
}

- (void)p_updatePageCount
{
  v6[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v6[1] = 3221225472;
  v6[2] = sub_276026C10;
  v6[3] = &unk_27A6A8768;
  v6[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v2, v3, v4, v5, v6);
}

- (id)p_pageHintForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5
{
  v12 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v5, v6, v7, v8, a3, a4);
  if (v12)
  {
    v17 = objc_msgSend_sectionHints(self->_paginationState, v11, v13, v14, v15, v16);
    v23 = objc_msgSend_sectionIndex(v12, v18, v19, v20, v21, v22);
    v29 = objc_msgSend_objectAtIndexedSubscript_(v17, v24, v25, v26, v27, v28, v23);

    v35 = objc_msgSend_pageIndex(v12, v30, v31, v32, v33, v34);
    v41 = objc_msgSend_pageHintForPageIndex_(v29, v36, v37, v38, v39, v40, v35);
    v47 = v41;
    if (!a5 && objc_msgSend_pageKind(v41, v42, v43, v44, v45, v46) == 5)
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v49, v50, v51, v52, "[TPPaginatedPageController p_pageHintForPageIndex:forcePagination:allowAfterPaginationPoint:]");
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, v56, v57, v58, v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v61, v62, v63, v64, v65, v54, v60, 5278, 0, "Shouldn't be finding a dirty page hint here");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67, v68, v69, v70);
    }
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

- (id)p_sectionHintForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5
{
  v11 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v5, v6, v7, v8, a3, a4, a5);
  if (v11)
  {
    v16 = objc_msgSend_sectionHints(self->_paginationState, v10, v12, v13, v14, v15);
    v22 = objc_msgSend_sectionIndex(v11, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_objectAtIndexedSubscript_(v16, v23, v24, v25, v26, v27, v22);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)p_pageHintForPageIndexPath:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_sectionIndex(v4, v5, v6, v7, v8, v9);
  v161 = objc_msgSend_pageIndex(v4, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_sectionHints(self->_paginationState, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);

  if (v10 >= v27)
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, v32, "[TPPaginatedPageController p_pageHintForPageIndexPath:]");
    v159 = v4;
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, v39, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    v46 = objc_msgSend_sectionHints(self->_paginationState, v41, v42, v43, v44, v45);
    v52 = objc_msgSend_count(v46, v47, v48, v49, v50, v51);
    v58 = objc_msgSend_documentRoot(self, v53, v54, v55, v56, v57);
    v64 = objc_msgSend_settings(v58, v59, v60, v61, v62, v63);
    hasBody = objc_msgSend_hasBody(v64, v65, v66, v67, v68, v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v71, v72, v73, v74, v75, v34, v40, 5305, 0, "No section hint for this section index (%lu/%lu) hasBody: %d", v10, v52, hasBody);

    v4 = v159;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77, v78, v79, v80);
  }

  v81 = objc_msgSend_sectionHints(self->_paginationState, v28, v29, v30, v31, v32);
  v87 = objc_msgSend_count(v81, v82, v83, v84, v85, v86);

  if (v10 >= v87)
  {
    v157 = 0;
  }

  else
  {
    v93 = objc_msgSend_sectionHints(self->_paginationState, v88, v89, v90, v91, v92);
    v99 = objc_msgSend_objectAtIndexedSubscript_(v93, v94, v95, v96, v97, v98, v10);

    if (v161 >= objc_msgSend_pageCount(v99, v100, v101, v102, v103, v104))
    {
      v110 = MEMORY[0x277D81150];
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v106, v107, v108, v109, "[TPPaginatedPageController p_pageHintForPageIndexPath:]");
      v160 = v4;
      v117 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v112, v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      v123 = objc_msgSend_pageCount(v99, v118, v119, v120, v121, v122);
      v129 = objc_msgSend_documentRoot(self, v124, v125, v126, v127, v128);
      v135 = objc_msgSend_settings(v129, v130, v131, v132, v133, v134);
      v141 = objc_msgSend_hasBody(v135, v136, v137, v138, v139, v140);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v110, v142, v143, v144, v145, v146, v111, v117, 5308, 0, "No page hint for this page index (%lu/%lu), section: %lu hasBody: %d", v161, v123, v10, v141);

      v4 = v160;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148, v149, v150, v151);
    }

    if (v161 >= objc_msgSend_pageCount(v99, v105, v106, v107, v108, v109))
    {
      v157 = 0;
    }

    else
    {
      v157 = objc_msgSend_pageHintForPageIndex_(v99, v152, v153, v154, v155, v156);
    }
  }

  return v157;
}

- (id)p_pageHintPrecedingPageIndexPath:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_sectionHints(self->_paginationState, v5, v6, v7, v8, v9);
  sub_275FFD180(v18, v10, v4, -1);

  v16 = sub_275FFD320(v18, v11, v12, v13, v14, v15);
  sub_275FFD2D0(v18);

  return v16;
}

- (id)p_textPageHintPrecedingPageIndexPath:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_sectionHints(self->_paginationState, v5, v6, v7, v8, v9);
  sub_275FFD180(v28, v10, v4, -1);

  while (1)
  {
    v16 = sub_275FFD320(v28, v11, v12, v13, v14, v15);

    if (!v16)
    {
      break;
    }

    if (sub_275FFD3B8(v28, v17, v18, v19, v20, v21) == 1)
    {
      v16 = sub_275FFD320(v28, v22, v23, v24, v25, v26);
      break;
    }

    sub_275FFCD14(v28, v22, v23, v24, v25, v26);
  }

  sub_275FFD2D0(v28);

  return v16;
}

- (id)p_textPageHintFollowingPageIndexPath:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_sectionHints(self->_paginationState, v5, v6, v7, v8, v9);
  sub_275FFD180(v28, v10, v4, 1);

  while (1)
  {
    v16 = sub_275FFD320(v28, v11, v12, v13, v14, v15);

    if (!v16)
    {
      break;
    }

    if (sub_275FFD3B8(v28, v17, v18, v19, v20, v21) == 1)
    {
      v16 = sub_275FFD320(v28, v22, v23, v24, v25, v26);
      break;
    }

    sub_275FFCF2C(v28, v22, v23, v24, v25, v26);
  }

  sub_275FFD2D0(v28);

  return v16;
}

- (id)p_lastValidPageHint
{
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, a2, v2, v3, v4, v5);

  return objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v7, v9, v10, v11, v12, LaidOutDocumentPageIndex, 0, 0);
}

- (id)p_lastValidTextPageHint:(unint64_t *)a3
{
  *a3 = objc_msgSend_documentPageIndex(self->_paginationState, a2, v3, v4, v5, v6);

  return objc_msgSend_i_textPageHintPrecedingPageIndex_(self, v9, v10, v11, v12, v13, a3);
}

- (unint64_t)p_lastValidTextPageIndex
{
  v8 = objc_msgSend_documentPageIndex(self->_paginationState, a2, v2, v3, v4, v5);

  return objc_msgSend_p_textPageIndexPrecedingPageIndex_(self, v7, v9, v10, v11, v12, v8);
}

- (unint64_t)p_textPageIndexPrecedingPageIndex:(unint64_t)a3
{
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3)
  {
    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPPaginatedPageController p_textPageIndexPrecedingPageIndex:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v18, v19, v20, v21, v22, v11, v17, 5375, 0, "Bogus page index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25, v26, v27);
    }

    v28 = objc_msgSend_sectionHints(self->_paginationState, a2, v3, v4, v5, v6);
    sub_275FFD28C(v51, v28, a3 - 1);

    while (1)
    {
      v34 = sub_275FFD320(v51, v29, v30, v31, v32, v33);

      if (!v34)
      {
        break;
      }

      if (sub_275FFD3B8(v51, v35, v36, v37, v38, v39) == 1 || sub_275FFD3B8(v51, v40, v41, v42, v43, v44) == 6)
      {
        v7 = sub_275FFD698(v51);
        goto LABEL_11;
      }

      sub_275FFCD14(v51, v45, v46, v47, v48, v49);
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
    sub_275FFD2D0(v51);
  }

  return v7;
}

- (void)performBlockForExport:(id)a3
{
  v28 = a3;
  offscreenSearchDelegate = self->_offscreenSearchDelegate;
  MustIncludeAdornmentsCounter = objc_msgSend_textLayoutMustIncludeAdornmentsCounter(offscreenSearchDelegate, v5, v6, v7, v8, v9);
  objc_msgSend_setTextLayoutMustIncludeAdornmentsCounter_(offscreenSearchDelegate, v11, v12, v13, v14, v15, MustIncludeAdornmentsCounter + 1);
  v28[2]();
  v16 = self->_offscreenSearchDelegate;
  v22 = objc_msgSend_textLayoutMustIncludeAdornmentsCounter(v16, v17, v18, v19, v20, v21);
  objc_msgSend_setTextLayoutMustIncludeAdornmentsCounter_(v16, v23, v24, v25, v26, v27, v22 - 1);
}

- (void)p_notifyObserversDidLayoutWhileSyncing:(BOOL)a3
{
  v7 = a3;
  v36 = *MEMORY[0x277D85DE8];
  LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, a2, v3, v4, v5, v6);
  LaidOutSectionIndex = objc_msgSend_lastLaidOutSectionIndex(self->_paginationState, v10, v11, v12, v13, v14);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = self->_layoutObservers;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v18, v19, v20, v21, &v31, v35, 16);
  if (v22)
  {
    v23 = *v32;
    do
    {
      v24 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v16);
        }

        v25 = *(*(&v31 + 1) + 8 * v24);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_pageController_didLayOutPageAtIndex_sectionIndex_syncing_(v25, v26, v27, v28, v29, v30, self, LaidOutDocumentPageIndex, LaidOutSectionIndex, v7, v31);
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v26, v27, v28, v29, v30, &v31, v35, 16);
    }

    while (v22);
  }
}

- (BOOL)performBackgroundPagination
{
  v16 = 0;
  v17 = &v16;
  v2.n128_u64[0] = 0x2020000000;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);

  if (v7)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v9.n128_u64[0] = 3221225472;
    v15[1] = 3221225472;
    v15[2] = sub_276027F9C;
    v15[3] = &unk_27A6A9308;
    v15[4] = self;
    v15[5] = &v16;
    objc_msgSend_accquireLockAndPerformAction_(self, v8, v9, v10, v11, v12, v15);
    v13 = *(v17 + 24);
  }

  else
  {
    v13 = 1;
    *(v17 + 24) = 1;
  }

  _Block_object_dispose(&v16, 8);
  return v13 & 1;
}

- (void)backgroundPaginationDidEnd
{
  if (self->_shouldUpdatePageCount)
  {
    v6[3] = v2;
    v6[4] = v3;
    objc_initWeak(v6, self);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_27602809C;
    v4[3] = &unk_27A6A9538;
    objc_copyWeak(&v5, v6);
    dispatch_async(MEMORY[0x277D85CD0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(v6);
  }
}

- (BOOL)p_layOutNextPageOnceWithOffscreenLayoutController
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v8[1] = 3221225472;
  v8[2] = sub_2760281E8;
  v8[3] = &unk_27A6A9270;
  v8[4] = self;
  v8[5] = &v9;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v2, v3, v4, v5, v8);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

- (void)p_invalidateThumbnailsFromSectionToEnd:(id)a3
{
  v27 = a3;
  v9 = objc_msgSend_documentRoot(self, v4, v5, v6, v7, v8);
  v15 = objc_msgSend_bodyStorage(v9, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_sectionIndexForSection_(v15, v16, v17, v18, v19, v20, v27);

  if (v21 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_p_invalidateThumbnailsFromSectionIndexToEnd_(self, v22, v23, v24, v25, v26, 0);
  }

  else
  {
    objc_msgSend_p_invalidateThumbnailsFromSectionIndexToEnd_(self, v22, v23, v24, v25, v26, v21);
  }
}

- (void)p_invalidateThumbnailsFromSectionIndexToEnd:(unint64_t)a3
{
  v9 = objc_msgSend_sectionHints(self->_paginationState, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_count(v9, v10, v11, v12, v13, v14);

  if (v15 > a3)
  {
    v21 = objc_msgSend_sectionHints(self->_paginationState, v16, v17, v18, v19, v20);
    v41 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v23, v24, v25, v26, a3);

    v32 = objc_msgSend_documentPageRange(v41, v27, v28, v29, v30, v31);
    v38 = v32;
    if (v32 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v39 = &v33[v32];
      if (&v33[v32 - 1] <= 0x7FFFFFFFFFFFFFFDLL)
      {
        completePageCount = self->_completePageCount;
        if (completePageCount <= v39)
        {
          completePageCount = &v33[v32];
        }

        v39 = (completePageCount - 1);
      }

      while (v38 <= v39)
      {
        objc_msgSend_p_invalidateThumbnailForPageIndex_(self, v33, v34, v35, v36, v37, v38++);
      }
    }
  }
}

- (void)p_invalidateThumbnailForPageIndex:(unint64_t)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_documentRoot(self, a2, v3, v4, v5, v6);
  objc_msgSend_invalidateThumbnailForPageIndex_(v9, v10, v11, v12, v13, v14, a3);
  v20 = objc_msgSend_thumbnailIdentifierForPageIndex_(v9, v15, v16, v17, v18, v19, a3);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = self->_layoutObservers;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, v24, v25, v26, &v42, v46, 16);
  if (v27)
  {
    v28 = *v43;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(v21);
        }

        v30 = TSUProtocolCast();
        v36 = v30;
        if (v30)
        {
          objc_msgSend_pageController_didInvalidateThumbnailWithIdentifier_(v30, v31, v32, v33, v34, v35, self, v20, &unk_288546A58);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v37, v38, v39, v40, v41, &v42, v46, 16);
    }

    while (v27);
  }
}

- (id)i_pageHintForPageIndex:(unint64_t)a3
{
  v9 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, a2, v3, v4, v5, v6, a3, 0, 0);
  if (v9)
  {
    v14 = objc_msgSend_p_pageHintForPageIndexPath_(self, v8, v10, v11, v12, v13, v9);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)i_pageIndexPathForPageIndex:(unint64_t)a3 forcePagination:(BOOL)a4 allowAfterPaginationPoint:(BOOL)a5
{
  if (a4)
  {
    objc_msgSend_p_paginateThroughPageIndex_forLayoutController_clearOffscreenInfos_(self, a2, v5, v6, v7, v8, a3, 0, 0);
  }

  if (a5 || objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, a2, v5, v6, v7, v8, a3))
  {
    v12 = objc_msgSend_sectionHints(self->_paginationState, a2, v5, v6, v7, v8);
    v19 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);
    if (v19)
    {
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = objc_msgSend_objectAtIndexedSubscript_(v12, v18, v20, v21, v22, v23, v24);
        v32 = objc_msgSend_pageCount(v26, v27, v28, v29, v30, v31) + v25;
        if (v32 > a3)
        {
          break;
        }

        ++v24;
        v25 = v32;
        if (v19 == v24)
        {
          goto LABEL_9;
        }
      }

      v34 = [TPPageIndexPath alloc];
      v33 = objc_msgSend_initWithSectionIndex_pageIndex_(v34, v35, v36, v37, v38, v39, v24, a3 - v25);
    }

    else
    {
LABEL_9:
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (void)i_trimPageAtIndex:(unint64_t)a3 toCharIndex:(unint64_t)a4 removeFootnoteReferenceCount:(unint64_t)a5 removeAutoNumberFootnoteCount:(unint64_t)a6
{
  if ((objc_msgSend_isPaginationCompleteThroughDocumentPageIndex_(self->_paginationState, a2, v6, v7, v8, v9) & 1) == 0)
  {
    v20 = MEMORY[0x277D81150];
    v168 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "[TPPaginatedPageController i_trimPageAtIndex:toCharIndex:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v31, v168, v26, 5624, 0, "trimming on or after where layout is");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
  }

  if (objc_msgSend_lastLaidOutDocumentPageIndex(self->_paginationState, v15, v16, v17, v18, v19) != a3)
  {
    v42 = MEMORY[0x277D81150];
    v169 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, v41, "[TPPaginatedPageController i_trimPageAtIndex:toCharIndex:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v53, v169, v48, 5625, 0, "trimming on an unexpected page");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57, v58);
  }

  v59 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v37, v38, v39, v40, v41, a3, 0, 0);
  v170 = v59;
  if (v59)
  {
    v65 = objc_msgSend_p_pageHintForPageIndexPath_(self, v59, v61, v62, v63, v64, v59);
    if (objc_msgSend_pageKind(v65, v66, v67, v68, v69, v70) != 1)
    {
      v76 = MEMORY[0x277D81150];
      v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, v72, v73, v74, v75, "[TPPaginatedPageController i_trimPageAtIndex:toCharIndex:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, v82, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v84, v85, v86, v87, v88, v77, v83, 5632, 0, "Can't trim a non-text page");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92, v93);
    }

    v94 = objc_msgSend_documentRoot(self, v71, v72, v73, v74, v75);
    v100 = objc_msgSend_settings(v94, v95, v96, v97, v98, v99);
    v106 = objc_msgSend_footnoteKind(v100, v101, v102, v103, v104, v105);

    v112 = objc_msgSend_lastColumn(v65, v107, v108, v109, v110, v111);
    v118 = v112;
    if ((v106 - 1) >= 2)
    {
      objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v112, v113, v114, v115, v116, v117, a4, 0, a5, a6);
    }

    else
    {
      objc_msgSend_trimToCharIndex_inTarget_removeFootnoteReferenceCount_removeAutoNumberFootnoteCount_(v112, v113, v114, v115, v116, v117, a4, 0, 0, a6);
    }

    objc_msgSend_footnoteLayoutRange(v65, v119, v120, v121, v122, v123);
    if (v124)
    {
      footnoteLayoutController = self->_footnoteLayoutController;
      v130 = objc_msgSend_range(v65, v124, v125, v126, v127, v128);
      v137 = objc_msgSend_footnoteLayoutRangeForPageCharRange_(footnoteLayoutController, v131, v132, v133, v134, v135, v130, v131);
      if (v137 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v142 = v136;
        v143 = objc_msgSend_footnoteLayoutRange(v65, v136, v138, v139, v140, v141);
        if (v143 <= &v142[v137])
        {
          v149 = &v142[v137];
        }

        else
        {
          v149 = v143;
        }

        if (v143 >= &v142[v137])
        {
          objc_msgSend_setFootnoteLayoutRange_(v65, v144, v145, v146, v147, v148, &v142[v137], v149 - &v142[v137]);
        }

        else
        {
          objc_msgSend_setFootnoteLayoutRange_(v65, v144, v145, v146, v147, v148, v143, v149 - v143);
        }
      }
    }
  }

  else
  {
    v150 = MEMORY[0x277D81150];
    v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, v61, v62, v63, v64, "[TPPaginatedPageController i_trimPageAtIndex:toCharIndex:removeFootnoteReferenceCount:removeAutoNumberFootnoteCount:]");
    v157 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, v153, v154, v155, v156, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v158, v159, v160, v161, v162, v151, v157, 5628, 0, "invalid nil value for '%{public}s'", "pageIndexPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v163, v164, v165, v166, v167);
  }
}

- (id)i_columnPriorToPageIndex:(unint64_t)a3
{
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, a2, v3, v4, v5, v6) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPPaginatedPageController i_columnPriorToPageIndex:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 5660, 0, "requesting a column from a page that needs layout");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }

  v32 = objc_msgSend_p_textPageIndexPrecedingPageIndex_(self, v9, v10, v11, v12, v13, a3);
  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = 0;
  }

  else
  {
    v39 = v32;
    v41 = objc_msgSend_p_cachedPageLayoutForPageIndex_preferredLayoutController_(self, v33, v34, v35, v36, v37, v32, 0);
    if (!v41 || (v46 = [TPVisibleColumnProxy alloc], (v38 = objc_msgSend_initWithPageIndex_pageController_(v46, v47, v48, v49, v50, v51, v39, self)) == 0))
    {
      v52 = objc_msgSend_p_pageHintForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v40, v42, v43, v44, v45, v39, 0, 0);
      v38 = objc_msgSend_lastColumn(v52, v53, v54, v55, v56, v57);
    }
  }

  return v38;
}

- (id)i_topicNumberHintsAfterPageIndex:(unint64_t)a3
{
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, a2, v3, v4, v5, v6) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPPaginatedPageController i_topicNumberHintsAfterPageIndex:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 5687, 0, "requesting topicNumberHints past one page after where we've laid out to / are currently laying out");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }

  v33 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v9, v10, v11, v12, v13, a3, 0, 1);
  if (v33)
  {
    v38 = objc_msgSend_p_textPageHintFollowingPageIndexPath_(self, v32, v34, v35, v36, v37, v33);
    v44 = objc_msgSend_topicNumberHints(v38, v39, v40, v41, v42, v43);
  }

  else
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v34, v35, v36, v37, "[TPPaginatedPageController i_topicNumberHintsAfterPageIndex:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v53, v54, v55, v56, v57, v46, v52, 5691, 0, "invalid nil value for '%{public}s'", "pageIndexPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61, v62);
    v44 = 0;
  }

  return v44;
}

- (id)i_columnAfterPageIndex:(unint64_t)a3
{
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, a2, v3, v4, v5, v6) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPPaginatedPageController i_columnAfterPageIndex:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 5703, 0, "requesting a column past one page after where we've laid out to / are currently laying out");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }

  v33 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v9, v10, v11, v12, v13, a3, 0, 1);
  if (v33)
  {
    v38 = objc_msgSend_p_textPageHintFollowingPageIndexPath_(self, v32, v34, v35, v36, v37, v33);
    v44 = objc_msgSend_firstColumn(v38, v39, v40, v41, v42, v43);
  }

  else
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v34, v35, v36, v37, "[TPPaginatedPageController i_columnAfterPageIndex:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v53, v54, v55, v56, v57, v46, v52, 5708, 0, "invalid nil value for '%{public}s'", "pageIndexPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61, v62);
    v44 = 0;
  }

  return v44;
}

- (id)i_firstChildHintAfterPageIndex:(unint64_t)a3
{
  if ((objc_msgSend_isPaginationCompleteUpToDocumentPageIndex_(self->_paginationState, a2, v3, v4, v5, v6) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "[TPPaginatedPageController i_firstChildHintAfterPageIndex:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 5720, 0, "requesting a column past one page after where we've laid out to / are currently laying out");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }

  v33 = objc_msgSend_i_pageIndexPathForPageIndex_forcePagination_allowAfterPaginationPoint_(self, v9, v10, v11, v12, v13, a3, 0, 1);
  if (v33)
  {
    v38 = objc_msgSend_p_textPageHintFollowingPageIndexPath_(self, v32, v34, v35, v36, v37, v33);
    v44 = objc_msgSend_firstChildHint(v38, v39, v40, v41, v42, v43);
  }

  else
  {
    v45 = MEMORY[0x277D81150];
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v34, v35, v36, v37, "[TPPaginatedPageController i_firstChildHintAfterPageIndex:]");
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, v48, v49, v50, v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v53, v54, v55, v56, v57, v46, v52, 5725, 0, "invalid nil value for '%{public}s'", "pageIndexPath");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60, v61, v62);
    v44 = 0;
  }

  return v44;
}

- (void)i_inflateColumnsInBodyLayout:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2760293DC;
  v11[3] = &unk_27A6A8418;
  v12 = v4;
  v13 = self;
  v5 = v4;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v7, v8, v9, v10, v11);
}

- (void)i_inflateFootnotesInFootnoteContainer:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276029F7C;
  v11[3] = &unk_27A6A8418;
  v11[4] = self;
  v12 = v4;
  v5 = v4;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v7, v8, v9, v10, v11);
}

- (void)i_inflateTextFlowsOnPage:(id)a3
{
  v4 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_27602A1E8;
  v11[3] = &unk_27A6A8418;
  v11[4] = self;
  v12 = v4;
  v5 = v4;
  objc_msgSend_accquireLockAndPerformAction_(self, v6, v7, v8, v9, v10, v11);
}

- (id)i_textPageHintPrecedingPageIndex:(unint64_t *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_2760196AC;
  v14 = sub_2760196BC;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v3.n128_u64[0] = 3221225472;
  v9[1] = 3221225472;
  v9[2] = sub_27602A520;
  v9[3] = &unk_27A6A91F8;
  v9[5] = &v10;
  v9[6] = a3;
  v9[4] = self;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)i_invalidatePageIndex:(unint64_t)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v3.n128_u64[0] = 3221225472;
  v7[1] = 3221225472;
  v7[2] = sub_27602A72C;
  v7[3] = &unk_27A6A9588;
  v7[4] = self;
  v7[5] = a3;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v7);
}

- (void)i_invalidateFlows:(id)a3 startingPage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_27602A81C;
  v15[3] = &unk_27A6A95B0;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v8 = v7;
  v9 = v6;
  objc_msgSend_accquireLockAndPerformAction_(self, v10, v11, v12, v13, v14, v15);
}

- (void)i_registerPageLayout:(id)a3
{
  v57 = a3;
  if (!v57)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPPaginatedPageController i_registerPageLayout:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 5901, 0, "can't register or unregister nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = objc_msgSend_info(v57, v4, v5, v6, v7, v8);
  v33 = objc_msgSend_pageController(v27, v28, v29, v30, v31, v32);

  if (v33 != self)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, v38, "[TPPaginatedPageController i_registerPageLayout:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v47, v48, v49, v50, v51, v40, v46, 5902, 0, "wrong page controller");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55, v56);
  }

  if (v57)
  {
    objc_msgSend_enqueueInsertion_(self->_pageLayoutCache, v34, v35, v36, v37, v38, v57);
  }
}

- (void)i_unregisterPageLayout:(id)a3
{
  v57 = a3;
  if (!v57)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v5, v6, v7, v8, "[TPPaginatedPageController i_unregisterPageLayout:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v17, v18, v19, v20, v21, v10, v16, 5911, 0, "can't register or unregister nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25, v26);
  }

  v27 = objc_msgSend_info(v57, v4, v5, v6, v7, v8);
  v33 = objc_msgSend_pageController(v27, v28, v29, v30, v31, v32);

  if (v33 != self)
  {
    v39 = MEMORY[0x277D81150];
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, v38, "[TPPaginatedPageController i_unregisterPageLayout:]");
    v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageController.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v47, v48, v49, v50, v51, v40, v46, 5912, 0, "wrong page controller");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55, v56);
  }

  if (v57)
  {
    objc_msgSend_enqueueRemoval_(self->_pageLayoutCache, v34, v35, v36, v37, v38, v57);
  }
}

- (void)i_setNeedsDynamicLayoutForLayoutController:(id)a3 onPageIndex:(unint64_t)a4
{
  v8[0] = MEMORY[0x277D85DD0];
  v4.n128_u64[0] = 3221225472;
  v8[1] = 3221225472;
  v8[2] = sub_27602AC48;
  v8[3] = &unk_27A6A9588;
  v8[4] = self;
  v8[5] = a4;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v4, v5, v6, v7, v8);
}

- (TPPageControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)d_timePaginationResettingMetrics:(BOOL)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v3.n128_u64[0] = 3221225472;
  v7[1] = 3221225472;
  v7[2] = sub_27602AFDC;
  v7[3] = &unk_27A6A94E8;
  v7[4] = self;
  v8 = a3;
  objc_msgSend_accquireLockAndPerformAction_(self, a2, v3, v4, v5, v6, v7);
}

@end