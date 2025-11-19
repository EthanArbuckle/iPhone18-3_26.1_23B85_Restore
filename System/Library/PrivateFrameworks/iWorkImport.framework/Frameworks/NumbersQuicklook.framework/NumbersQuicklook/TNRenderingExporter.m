@interface TNRenderingExporter
- (BOOL)drawCurrentPageInContext:(CGContext *)a3 viewScale:(double)a4 unscaledClipRect:(CGRect)a5 createPage:(BOOL)a6;
- (BOOL)exportToURL:(id)a3 pageNumber:(unint64_t)a4 delegate:(id)a5 error:(id *)a6;
- (BOOL)incrementPage;
- (BOOL)isPageInPortraitOrientation:(unint64_t)a3;
- (BOOL)p_isActiveSheetForm;
- (BOOL)preparePage:(unint64_t)a3;
- (BOOL)shouldPrintComments;
- (BOOL)shouldSuppressBackgroundsForCurrentPage;
- (CGAffineTransform)annotationPrintingHelper:(SEL)a3 inversePureTransformInRootForContentAtPageIndex:(id)a4;
- (CGRect)_unpaginatedBoundsRect;
- (CGRect)availableRectForAddendumContentOfAnnotationPrintingHelper:(id)a3;
- (CGRect)boundsRect;
- (CGRect)p_boundsRectForFirstPage;
- (CGRect)rectForAddendumContentOfAnnotationPrintingHelper:(id)a3;
- (CGRect)unscaledClipRect;
- (NSArray)addendumContentProvidersForCurrentSheet;
- (NSArray)overlayContentProvidersForCurrentSheet;
- (TNAnnotationPrintingHelper)annotationPrintingHelper;
- (TNRenderingExporter)initWithDocumentRoot:(id)a3;
- (UIEdgeInsets)_printMargins;
- (double)totalProgess;
- (id).cxx_construct;
- (id)_pageCountCache;
- (id)_printableInfos;
- (id)addendumPageTitleOfAnnotationPrintingHelper:(id)a3;
- (id)annotationPrintingHelper:(id)a3 layoutsForPageIndex:(unint64_t)a4;
- (id)currentInfos;
- (id)p_activeSheet;
- (id)p_canvasBasedSheets;
- (int64_t)p_indexOfActiveSheet;
- (int64_t)pageIndexFromQuickLookSheet:(id)a3;
- (unint64_t)_addendumPageCountForCurrentSheet;
- (unint64_t)addendumPageCount;
- (unint64_t)inSheetPageIndexForPage:(unint64_t)a3;
- (unint64_t)numberOfCanvasBasedSheets;
- (unint64_t)pageCount;
- (unint64_t)sheetIndexForPage:(unint64_t)a3;
- (vector<unsigned)p_pageCountArray;
- (vector<unsigned)p_pageStartArray;
- (void)_resetSheetDependentObjects;
- (void)_updateExportState;
- (void)annotationPrintingHelper:(id)a3 enumerateLayoutsByPageWithBlock:(id)a4;
- (void)dealloc;
- (void)drawCurrentPageWithContext:(CGContext *)a3 returnSuccess:(BOOL *)a4;
- (void)processHyperlinksForCanvas:(id)a3 withContext:(CGContext *)a4 andImager:(id)a5 isFitToSheet:(BOOL)a6;
- (void)setSheetIndex:(unint64_t)a3 andPageIndex:(unint64_t)a4;
- (void)setSheetIndex:(unint64_t)a3 pageIndex:(unint64_t)a4 addendumPageIndex:(unint64_t)a5;
- (void)setup;
- (void)teardown;
@end

@implementation TNRenderingExporter

- (CGRect)boundsRect
{
  if (objc_msgSend_paginate(self, a2, v2))
  {
    mPageIndex = self->mPageIndex;
    if (mPageIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_p_boundsRectForFirstPage(self, v4, 0x7FFFFFFFFFFFFFFFLL);
    }

    else
    {
      objc_msgSend_printingLayoutRectForPageIndex_(self->mPageController, v4, mPageIndex);
    }
  }

  else
  {
    objc_msgSend__unpaginatedBoundsRect(self, v4, v5);
  }

  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)unscaledClipRect
{
  if (objc_msgSend_paginate(self, a2, v2))
  {
    goto LABEL_2;
  }

  objc_msgSend__printMargins(self, v5, v6);
  height = v14;
  x = v15;
  y = v16;
  v19 = objc_msgSend_exportState(self, v17, v18);
  if (v19 == 1)
  {
    v63 = objc_msgSend_addendumContentProvidersForCurrentSheet(self, v20, v21);

    if (!v63)
    {
      v66 = MEMORY[0x277D81150];
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, "[TNRenderingExporter unscaledClipRect]");
      v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v70, v67, v69, 197, 0, "Attempting to use addendum content providers when none exist");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72);
    }

    v73 = objc_msgSend_addendumPageIndex(self, v64, v65);
    v76 = objc_msgSend_addendumContentProvidersForCurrentSheet(self, v74, v75);
    v79 = objc_msgSend_count(v76, v77, v78);

    if (v73 >= v79)
    {
      v100 = MEMORY[0x277D81150];
      v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "[TNRenderingExporter unscaledClipRect]");
      v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v102, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v100, v104, v101, v103, 205, 0, "addendumPageIndex out of bounds. Providing default rect");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106);
LABEL_2:
      objc_msgSend_boundsRect(self, v5, v6);
      x = v7;
      y = v9;
      width = v11;
      height = v12;
      goto LABEL_32;
    }

    v82 = x;
    objc_msgSend__unpaginatedBoundsRect(self, v80, v81);
    x = v83;
    y = v84;
    width = v85;
    v87 = v86;
    v90 = objc_msgSend_addendumContentProvidersForCurrentSheet(self, v88, v89);
    v93 = objc_msgSend_addendumPageIndex(self, v91, v92);
    v95 = objc_msgSend_objectAtIndexedSubscript_(v90, v94, v93);

    objc_msgSend_heightForAdditionalContent(v95, v96, v97);
    v99 = v82 + height + v98;
    if (v99 >= v87)
    {
      height = v99;
    }

    else
    {
      height = v87;
    }
  }

  else
  {
    v117 = y;
    v118 = x;
    if (!v19)
    {
      v22 = objc_alloc(MEMORY[0x277D802F8]);
      v24 = objc_msgSend_initWithCanvas_(v22, v23, 0);
      v27 = objc_msgSend_currentInfos(self, v25, v26);
      objc_msgSend_setInfos_(v24, v28, v27);

      objc_msgSend_validateLayouts(v24, v29, v30);
      objc_msgSend_rectOfTopLevelLayouts(v24, v31, v32);
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v43 = objc_msgSend_p_canvasBasedSheets(self, v41, v42);
      v45 = v43;
      if (self->mSheetIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_objectAtIndex_(v43, v44, 0);
      }

      else
      {
        objc_msgSend_objectAtIndex_(v43, v44, self->mSheetIndex);
      }
      v46 = ;
      objc_msgSend_boundsRect(self, v47, v48);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      if (objc_msgSend_layoutIsRightToLeft(v46, v57, v58))
      {
        rect = v40;
        v119.origin.x = v50;
        v119.origin.y = v52;
        v119.size.width = v54;
        v119.size.height = v56;
        MinX = CGRectGetMinX(v119);
        v120.origin.x = v34;
        v120.origin.y = v36;
        v120.size.width = v38;
        v120.size.height = v40;
        MaxX = CGRectGetMaxX(v120);
        v50 = -(v54 + v50);
        v121.origin.x = v50;
        v121.origin.y = v52;
        v121.size.width = v54;
        v121.size.height = v56;
        if (MaxX > CGRectGetMaxX(v121))
        {
          v122.origin.x = v34;
          v122.origin.y = v36;
          v122.size.width = v38;
          v122.size.height = rect;
          v60 = CGRectGetMaxX(v122);
          v123.origin.x = v50;
          v123.origin.y = v52;
          v123.size.width = v54;
          v123.size.height = v56;
          v38 = v38 - (v60 - CGRectGetMaxX(v123));
        }

        v40 = rect;
        v61 = v34 + MinX;
        v62 = v38 - MinX;
      }

      else
      {
        if (v34 < v50)
        {
          v61 = v50;
        }

        else
        {
          v61 = v34;
        }

        if (v34 < v50)
        {
          v62 = v38 - (v50 - v34);
        }

        else
        {
          v62 = v38;
        }
      }

      v107 = v40 - (v52 - v36);
      if (v36 >= v52)
      {
        v108 = v36;
      }

      else
      {
        v108 = v52;
      }

      if (v36 >= v52)
      {
        v107 = v40;
      }

      v109 = v117 + v62;
      v110 = v118 + v107;
      v126.origin.x = v50;
      v126.origin.y = v52;
      v126.size.width = v54;
      v126.size.height = v56;
      v124 = CGRectUnion(*&v61, v126);
      x = v124.origin.x;
      y = v124.origin.y;
      width = v124.size.width;
      height = v124.size.height;
    }
  }

LABEL_32:
  v111 = x;
  v112 = y;
  v113 = width;
  v114 = height;
  result.size.height = v114;
  result.size.width = v113;
  result.origin.y = v112;
  result.origin.x = v111;
  return result;
}

- (id)currentInfos
{
  if (objc_msgSend_paginate(self, a2, v2))
  {
    if ((objc_msgSend_p_isActiveSheetForm(self, v4, v5) & 1) == 0)
    {
      v8 = MEMORY[0x277CBEA60];
      v9 = objc_msgSend_pageController(self, v6, v7);
      v11 = objc_msgSend_pageInfoForPageIndex_(v9, v10, self->mPageIndex);
      v13 = objc_msgSend_arrayWithObject_(v8, v12, v11);

      goto LABEL_9;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_9;
  }

  v14 = objc_msgSend_exportState(self, v4, v5);
  if (v14 != 1)
  {
    if (!v14)
    {
      v13 = objc_msgSend__printableInfos(self, v15, v16);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v13 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v13;
}

- (unint64_t)pageCount
{
  if (objc_msgSend_paginate(self, a2, v2))
  {
    v6 = objc_msgSend_infoProvider(self->mPageController, v4, v5);
    v9 = objc_msgSend__pageCountCache(self, v7, v8);
    v11 = objc_msgSend_objectForKey_(v9, v10, v6);

    if (v11)
    {
      v14 = objc_msgSend_unsignedIntegerValue(v11, v12, v13);
LABEL_18:

      return v14;
    }

    if (objc_msgSend_isRenderingAllSheets(self, v12, v13))
    {
      objc_msgSend_p_pageCountArray(self, v23, v24);
      if (v51 != v52)
      {
        v27 = 0;
        v28 = v51;
        do
        {
          v29 = *v28;
          v28 += 2;
          v27 += v29;
        }

        while (v28 != v52);
        v14 = v27;
        if (!v51)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v14 = 0;
      if (v51)
      {
LABEL_15:
        operator delete(v51);
      }
    }

    else
    {
      v40 = objc_msgSend_pageController(self, v23, v24);
      v14 = objc_msgSend_numPages(v40, v41, v42);

      v45 = objc_msgSend_pageController(self, v43, v44);
      objc_msgSend_invalidatePageLayout(v45, v46, v47);
    }

LABEL_16:
    v11 = objc_msgSend__pageCountCache(self, v25, v26);
    v38 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v48, v14);
    objc_msgSend_setObject_forKey_(v11, v49, v38, v6);
    goto LABEL_17;
  }

  v15 = objc_msgSend__pageCountCache(self, v4, v5);
  v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v16, v17);
  v20 = objc_msgSend_objectForKey_(v15, v19, v18);

  if (!v20)
  {
    v30 = objc_msgSend_addendumPageCount(self, v21, v22);
    v14 = objc_msgSend_numberOfCanvasBasedSheets(self, v31, v32) + v30;
    v6 = objc_msgSend__pageCountCache(self, v33, v34);
    v11 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v35, v14);
    v38 = objc_msgSend_null(MEMORY[0x277CBEB68], v36, v37);
    objc_msgSend_setObject_forKey_(v6, v39, v11, v38);
LABEL_17:

    goto LABEL_18;
  }

  v14 = objc_msgSend_unsignedIntegerValue(v20, v21, v22);

  return v14;
}

- (unint64_t)numberOfCanvasBasedSheets
{
  v3 = objc_msgSend_p_canvasBasedSheets(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (unint64_t)sheetIndexForPage:(unint64_t)a3
{
  if ((objc_msgSend_isRenderingAllSheets(self, a2, a3) & 1) != 0 || (mSheetIndex = self->mSheetIndex, mSheetIndex == 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = objc_msgSend_numberOfCanvasBasedSheets(self, v5, v6);
    objc_msgSend_p_pageStartArray(self, v9, v10);
    if (v8)
    {
      mSheetIndex = 0;
      while (__p[mSheetIndex] <= a3)
      {
        if (v8 == ++mSheetIndex)
        {
          mSheetIndex = v8 - 1;
          goto LABEL_9;
        }
      }

      goto LABEL_9;
    }

    mSheetIndex = -1;
    if (__p)
    {
LABEL_9:
      operator delete(__p);
    }
  }

  return mSheetIndex;
}

- (unint64_t)inSheetPageIndexForPage:(unint64_t)a3
{
  v3 = a3;
  if (!objc_msgSend_paginate(self, a2, a3))
  {
    return 0;
  }

  if (objc_msgSend_isRenderingAllSheets(self, v5, v6))
  {
    v8 = objc_msgSend_sheetIndexForPage_(self, v7, v3);
    if (v8)
    {
      v11 = v8;
      objc_msgSend_p_pageStartArray(self, v9, v10);
      v3 -= *(__p + v11 - 1);
      v14 = __p;
      operator delete(__p);
    }
  }

  return v3;
}

- (void)setSheetIndex:(unint64_t)a3 andPageIndex:(unint64_t)a4
{
  v8 = objc_msgSend_addendumPageIndex(self, a2, a3);

  objc_msgSend_setSheetIndex_pageIndex_addendumPageIndex_(self, v7, a3, a4, v8);
}

- (void)setSheetIndex:(unint64_t)a3 pageIndex:(unint64_t)a4 addendumPageIndex:(unint64_t)a5
{
  if (self->mSheetIndex != a3)
  {
    v9 = objc_msgSend_numberOfCanvasBasedSheets(self, a2, a3);
    v12 = v9;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL && v9 <= a3)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TNRenderingExporter setSheetIndex:pageIndex:addendumPageIndex:]");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 351, 0, "An invalid sheet index was passed in!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }

    if (v12 > a3)
    {
      v20 = objc_msgSend_p_canvasBasedSheets(self, v10, v11);
      v22 = objc_msgSend_objectAtIndex_(v20, v21, a3);
      v25 = objc_msgSend_sheet(self->mPageController, v23, v24);

      if (v25 != v22)
      {
        objc_msgSend_setInfoProvider_(self->mPageController, v26, v22);
      }
    }

    self->mSheetIndex = a3;
    objc_msgSend__resetSheetDependentObjects(self, v10, v11);
  }

  if (self->mPageIndex != a4)
  {
    self->mPageIndex = a4;
  }

  if (objc_msgSend_addendumPageIndex(self, a2, a3) != a5)
  {
    hasCompletedSetup = objc_msgSend_hasCompletedSetup(self, v27, v28);
    if (a5 != 0x7FFFFFFFFFFFFFFFLL && hasCompletedSetup && objc_msgSend__addendumPageCountForCurrentSheet(self, v30, v31) <= a5)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TNRenderingExporter setSheetIndex:pageIndex:addendumPageIndex:]");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 374, 0, "Trying to set an invalid addendumPageIndex");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
    }

    objc_msgSend_setAddendumPageIndex_(self, v30, a5);
  }
}

- (BOOL)preparePage:(unint64_t)a3
{
  if (a3 && objc_msgSend_pageCount(self, a2, a3) >= a3)
  {
    v13 = a3 - 1;
    v14 = objc_msgSend_sheetIndexForPage_(self, a2, v13);
    v18 = objc_msgSend_inSheetPageIndexForPage_(self, v15, v13);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TNRenderingExporter preparePage:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 390, 0, "Expected the sheet index to be set");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    }

    if (v14 >= objc_msgSend_numberOfCanvasBasedSheets(self, v16, v17))
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TNRenderingExporter preparePage:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 391, 0, "Out of bounds sheet index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    }

    objc_msgSend_setSheetIndex_andPageIndex_(self, v26, v14, v18);
    return 1;
  }

  else
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNRenderingExporter preparePage:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 384, 0, "An invalid page number was passed in!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
    return 0;
  }
}

- (BOOL)incrementPage
{
  if ((objc_msgSend_paginate(self, a2, v2) & 1) == 0)
  {
    v6 = objc_msgSend_exportState(self, v4, v5);
    if (v6 == 1)
    {
      if (objc_msgSend_addendumPageIndex(self, v4, v5) == 0x7FFFFFFFFFFFFFFFLL || !objc_msgSend_addendumPageIndex(self, v18, v19))
      {
        objc_msgSend_setSheetIndex_pageIndex_addendumPageIndex_(self, v18, self->mSheetIndex, self->mPageIndex + 1, 0);
        return objc_msgSend__addendumPageCountForCurrentSheet(self, v31, v32) != 0;
      }

      v21 = objc_msgSend_addendumPageIndex(self, v18, v20) + 1;
      if (v21 >= objc_msgSend__addendumPageCountForCurrentSheet(self, v22, v23))
      {
        return 0;
      }

      mSheetIndex = self->mSheetIndex;
      mPageIndex = self->mPageIndex;
      v28 = objc_msgSend_addendumPageIndex(self, v24, v25);
      objc_msgSend_setSheetIndex_pageIndex_addendumPageIndex_(self, v29, mSheetIndex, mPageIndex + 1, v28 + 1);
      return 1;
    }

    if (!v6)
    {
      isRenderingAllSheets = objc_msgSend_isRenderingAllSheets(self, v4, v5);
      v10 = self->mSheetIndex;
      if (isRenderingAllSheets)
      {
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = self;
          active = 0;
LABEL_24:
          v34 = 0;
LABEL_25:
          objc_msgSend_setSheetIndex_pageIndex_addendumPageIndex_(v11, v8, active, v34, 0x7FFFFFFFFFFFFFFFLL);
          return 1;
        }

        if (v10 < objc_msgSend_numberOfCanvasBasedSheets(self, v8, v9) - 1)
        {
          active = self->mSheetIndex + 1;
          v34 = self->mPageIndex + 1;
          v11 = self;
          goto LABEL_25;
        }
      }

      else if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        active = objc_msgSend_p_indexOfActiveSheet(self, v8, v9);
        v11 = self;
        goto LABEL_24;
      }

      return 0;
    }
  }

  if (!objc_msgSend_isRenderingAllSheets(self, v4, v5))
  {
    v17 = self->mPageIndex;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = self->mSheetIndex;
      v15 = self;
      goto LABEL_13;
    }

    if (v17 >= objc_msgSend_pageCount(self, v13, v14) - 1)
    {
      return 0;
    }

    objc_msgSend_setSheetIndex_andPageIndex_(self, v30, self->mSheetIndex, self->mPageIndex + 1);
    return 1;
  }

  if (self->mSheetIndex == 0x7FFFFFFFFFFFFFFFLL || self->mPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = self;
    v16 = 0;
LABEL_13:
    objc_msgSend_setSheetIndex_andPageIndex_(v15, v13, v16, 0);
    return 1;
  }

  objc_msgSend_p_pageCountArray(self, v13, v14);
  v37 = self->mPageIndex;
  v38 = self->mSheetIndex;
  if (v37 < __p[v38] - 1)
  {
    objc_msgSend_setSheetIndex_andPageIndex_(self, v35, v38, v37 + 1);
LABEL_34:
    v33 = 1;
    goto LABEL_36;
  }

  if (v38 < objc_msgSend_numberOfCanvasBasedSheets(self, v35, v36) - 1)
  {
    objc_msgSend_setSheetIndex_andPageIndex_(self, v39, self->mSheetIndex + 1, 0);
    goto LABEL_34;
  }

  v33 = 0;
LABEL_36:
  if (__p)
  {
    operator delete(__p);
  }

  return v33;
}

- (BOOL)shouldSuppressBackgroundsForCurrentPage
{
  if (!objc_msgSend_paginate(self, a2, v2))
  {
    return 0;
  }

  v6 = objc_msgSend_pageController(self, v4, v5);
  shouldSuppressBackgroundsForPageIndex = objc_msgSend_shouldSuppressBackgroundsForPageIndex_(v6, v7, self->mPageIndex);

  return shouldSuppressBackgroundsForPageIndex;
}

- (BOOL)exportToURL:(id)a3 pageNumber:(unint64_t)a4 delegate:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  objc_msgSend_setRenderingAllSheets_(self, v12, a4 == -1);
  v14.receiver = self;
  v14.super_class = TNRenderingExporter;
  LOBYTE(a6) = [(TSARenderingExporter *)&v14 exportToURL:v10 pageNumber:a4 delegate:v11 error:a6];

  return a6;
}

- (void)processHyperlinksForCanvas:(id)a3 withContext:(CGContext *)a4 andImager:(id)a5 isFitToSheet:(BOOL)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  mHyperlinkController = self->mHyperlinkController;
  objc_msgSend_unscaledClipRect(self, v12, v13);
  objc_msgSend_setCanvasRect_(mHyperlinkController, v14, v15);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = objc_msgSend_allReps(v9, v16, v17, 0);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v27, v31, 16);
  if (v21)
  {
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v18);
        }

        objc_msgSend_addHyperlinksForRep_(self->mHyperlinkController, v20, *(*(&v27 + 1) + 8 * v23++));
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v27, v31, 16);
    }

    while (v21);
  }

  objc_msgSend_actualScaledClipRect(v10, v24, v25);
  objc_msgSend_commitHyperlinksToPDF_targetRect_(self->mHyperlinkController, v26, a4, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8));
}

- (BOOL)drawCurrentPageInContext:(CGContext *)a3 viewScale:(double)a4 unscaledClipRect:(CGRect)a5 createPage:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  objc_opt_class();
  v14 = TSUCheckedStaticCast();
  objc_msgSend_setShouldShowTextCommentHighlights_(v14, v15, 0);
  if (!objc_msgSend_paginate(self, v16, v17))
  {
    v29 = objc_msgSend_renderingComments(self, v18, v19) == 1;
    objc_msgSend_setShouldShowComments_(v14, v30, v29);
    v33 = objc_msgSend_exportState(self, v31, v32);
    if (v33)
    {
      if (v33 != 1)
      {
        v72 = 0;
        objc_msgSend_setBackgroundColor_(v14, v34, 0);
        goto LABEL_13;
      }

      v36 = objc_msgSend_whiteColor(MEMORY[0x277D81180], v34, v35);
      v39 = objc_msgSend_addendumContentProvidersForCurrentSheet(self, v37, v38);
      v42 = objc_msgSend_addendumPageIndex(self, v40, v41);
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = sub_275F33844;
      v78[3] = &unk_27A6A31F0;
      v43 = v39;
      v79 = v43;
      v80 = v42;
      objc_msgSend_setPostRenderAction_(v14, v44, v78);
      v45 = v79;
    }

    else
    {
      v43 = objc_msgSend_p_canvasBasedSheets(self, v34, v35);
      v45 = objc_msgSend_objectAtIndex_(v43, v46, self->mSheetIndex);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v48 = MEMORY[0x277D81150];
        v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TNRenderingExporter drawCurrentPageInContext:viewScale:unscaledClipRect:createPage:]");
        v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v49, v51, 562, 0, "%@ should be a TNSheet", v45);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "[TNRenderingExporter drawCurrentPageInContext:viewScale:unscaledClipRect:createPage:]");
        v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v61, v58, v60, 563, 0, "%@ should respond to -backgroundColor", v45);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63);
      }

      v64 = objc_msgSend_backgroundColor(v45, v55, v56);
      v36 = objc_msgSend_color(v64, v65, v66);

      objc_initWeak(&location, self);
      objc_initWeak(&from, v14);
      v69 = objc_msgSend_overlayContentProvidersForCurrentSheet(self, v67, v68);
      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = sub_275F336C4;
      v81[3] = &unk_27A6A31C8;
      objc_copyWeak(&v83, &location);
      objc_copyWeak(v84, &from);
      v84[1] = a3;
      v82 = v69;
      v70 = v69;
      objc_msgSend_setPostRenderAction_(v14, v71, v81);

      objc_destroyWeak(v84);
      objc_destroyWeak(&v83);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    v72 = v36;
    objc_msgSend_setBackgroundColor_(v14, v73, v36);
LABEL_13:
    v77.receiver = self;
    v77.super_class = TNRenderingExporter;
    v28 = [(TSARenderingExporter *)&v77 drawCurrentPageInContext:a3 viewScale:v6 unscaledClipRect:a4 createPage:x, y, width, height];
    objc_msgSend__updateExportState(self, v74, v75);

    goto LABEL_14;
  }

  v20 = objc_msgSend_pageController(self, v18, v19);
  v23 = objc_msgSend_sheet(v20, v21, v22);
  shouldPrintComments = objc_msgSend_shouldPrintComments(v23, v24, v25);
  objc_msgSend_setShouldShowComments_(v14, v27, shouldPrintComments);

  v87.receiver = self;
  v87.super_class = TNRenderingExporter;
  v28 = [(TSARenderingExporter *)&v87 drawCurrentPageInContext:a3 viewScale:v6 unscaledClipRect:a4 createPage:x, y, width, height];
LABEL_14:

  return v28;
}

- (vector<unsigned)p_pageCountArray
{
  v4 = retstr;
  v69 = *MEMORY[0x277D85DE8];
  p_mSheetPageCountArray = &self->mSheetPageCountArray;
  if (self->mSheetPageCountArray.__end_ == self->mSheetPageCountArray.__begin_)
  {
    if (objc_msgSend_paginate(self, a3, v3))
    {
      v59 = objc_msgSend_p_canvasBasedSheets(self, v7, v8);
      v57 = objc_msgSend_sheet(self->mPageController, v9, v10);
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = v59;
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v64, v68, 16);
      if (v13)
      {
        v14 = *v65;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v65 != v14)
            {
              objc_enumerationMutation(obj);
            }

            objc_msgSend_setInfoProvider_(self->mPageController, v12, *(*(&v64 + 1) + 8 * i));
            v18 = objc_msgSend_numPages(self->mPageController, v16, v17);
            v20 = p_mSheetPageCountArray[1];
            v19 = p_mSheetPageCountArray[2];
            if (v20 >= v19)
            {
              v22 = *p_mSheetPageCountArray;
              v23 = v20 - *p_mSheetPageCountArray;
              v24 = v23 >> 3;
              v25 = (v23 >> 3) + 1;
              if (v25 >> 61)
              {
                sub_275F07904();
              }

              v26 = v19 - v22;
              if (v26 >> 2 > v25)
              {
                v25 = v26 >> 2;
              }

              v27 = v26 >= 0x7FFFFFFFFFFFFFF8;
              v28 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v27)
              {
                v28 = v25;
              }

              if (v28)
              {
                sub_275F07A74(p_mSheetPageCountArray, v28);
              }

              *(8 * v24) = v18;
              v21 = 8 * v24 + 8;
              memcpy(0, v22, v23);
              v29 = *p_mSheetPageCountArray;
              *p_mSheetPageCountArray = 0;
              p_mSheetPageCountArray[1] = v21;
              p_mSheetPageCountArray[2] = 0;
              if (v29)
              {
                operator delete(v29);
              }
            }

            else
            {
              *v20 = v18;
              v21 = (v20 + 1);
            }

            p_mSheetPageCountArray[1] = v21;
          }

          v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v64, v68, 16);
        }

        while (v13);
      }

      v4 = retstr;
      objc_msgSend_setInfoProvider_(self->mPageController, v30, v57);
    }

    else
    {
      v31 = objc_msgSend_numberOfCanvasBasedSheets(self, v7, v8);
      obja = self->mSheetIndex;
      mPageIndex = self->mPageIndex;
      v58 = objc_msgSend_addendumPageIndex(self, v32, v33);
      TemporaryLayouts = objc_msgSend_shouldGenerateTemporaryLayouts(self, v34, v35);
      objc_msgSend_setShouldGenerateTemporaryLayouts_(self, v36, 1);
      if (v31)
      {
        v38 = 0;
        v39 = 1;
        do
        {
          objc_msgSend_setSheetIndex_pageIndex_addendumPageIndex_(self, v37, v38, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
          v42 = objc_msgSend__addendumPageCountForCurrentSheet(self, v40, v41) + 1;
          v44 = p_mSheetPageCountArray[1];
          v43 = p_mSheetPageCountArray[2];
          if (v44 >= v43)
          {
            v46 = *p_mSheetPageCountArray;
            v47 = v44 - *p_mSheetPageCountArray;
            v48 = v47 >> 3;
            v49 = (v47 >> 3) + 1;
            if (v49 >> 61)
            {
              sub_275F07904();
            }

            v50 = v43 - v46;
            if (v50 >> 2 > v49)
            {
              v49 = v50 >> 2;
            }

            if (v50 >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v49;
            }

            if (v51)
            {
              sub_275F07A74(p_mSheetPageCountArray, v51);
            }

            *(8 * v48) = v42;
            v45 = 8 * v48 + 8;
            memcpy(0, v46, v47);
            v52 = *p_mSheetPageCountArray;
            *p_mSheetPageCountArray = 0;
            p_mSheetPageCountArray[1] = v45;
            p_mSheetPageCountArray[2] = 0;
            if (v52)
            {
              operator delete(v52);
            }
          }

          else
          {
            *v44 = v42;
            v45 = (v44 + 1);
          }

          p_mSheetPageCountArray[1] = v45;
          v38 = v39;
        }

        while (v31 > v39++);
      }

      objc_msgSend_setSheetIndex_pageIndex_addendumPageIndex_(self, v37, obja, mPageIndex, v58);
      objc_msgSend_setShouldGenerateTemporaryLayouts_(self, v54, TemporaryLayouts);
      v4 = retstr;
    }
  }

  v4->__begin_ = 0;
  v4->__end_ = 0;
  v4->__cap_ = 0;
  return sub_275F36048(v4, *p_mSheetPageCountArray, p_mSheetPageCountArray[1], (p_mSheetPageCountArray[1] - *p_mSheetPageCountArray) >> 3);
}

- (vector<unsigned)p_pageStartArray
{
  p_mSheetPageStartArray = &self->mSheetPageStartArray;
  begin = self->mSheetPageStartArray.__begin_;
  end = self->mSheetPageStartArray.__end_;
  if (begin == end)
  {
    objc_msgSend_p_pageCountArray(self, begin, end);
    v10 = objc_msgSend_numberOfCanvasBasedSheets(self, v8, v9);
    sub_275F33E48(p_mSheetPageStartArray, v10);
    v11 = v18;
    v12 = v19;
    begin = p_mSheetPageStartArray->__begin_;
    if (v18 != v19)
    {
      v13 = (v18 + 1);
      v14 = *v18;
      *begin = *v18;
      if (v11 + 8 == v12)
      {
        goto LABEL_7;
      }

      v15 = begin + 1;
      do
      {
        v16 = *v13;
        v13 += 8;
        v14 += v16;
        *v15++ = v14;
      }

      while (v13 != v12);
    }

    if (!v11)
    {
LABEL_8:
      end = p_mSheetPageStartArray->__end_;
      goto LABEL_9;
    }

LABEL_7:
    v19 = v11;
    operator delete(v11);
    begin = p_mSheetPageStartArray->__begin_;
    goto LABEL_8;
  }

LABEL_9:
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return sub_275F36048(retstr, begin, end, end - begin);
}

- (TNRenderingExporter)initWithDocumentRoot:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = TNRenderingExporter;
  v5 = [(TSARenderingExporter *)&v33 initWithDocumentRoot:v4];
  if (v5)
  {
    v6 = [TNPageController alloc];
    v8 = objc_msgSend_initWithDocumentRoot_(v6, v7, v4);
    mPageController = v5->mPageController;
    v5->mPageController = v8;

    v12 = objc_msgSend_activeSheet(v4, v10, v11);
    objc_msgSend_setInfoProvider_(v5->mPageController, v13, v12);

    v16 = objc_msgSend_sheet(v5->mPageController, v14, v15);

    if (v16)
    {
      v19 = objc_msgSend_p_canvasBasedSheets(v5, v17, v18);
      v22 = objc_msgSend_sheet(v5->mPageController, v20, v21);
      v5->mSheetIndex = objc_msgSend_indexOfObject_(v19, v23, v22);
    }

    else
    {
      v5->mSheetIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(&v5->super.super.isa + *MEMORY[0x277D7FFF8]) = 0;
    v24 = [TNPdfHyperlinkController alloc];
    v26 = objc_msgSend_initWithDocumentRoot_(v24, v25, v4);
    mHyperlinkController = v5->mHyperlinkController;
    v5->mHyperlinkController = v26;

    objc_initWeak(&location, v5);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_275F340C4;
    v30[3] = &unk_27A6A3240;
    objc_copyWeak(&v31, &location);
    objc_msgSend_performBlockWithImager_(v5, v28, v30);
    v5->_renderingAllSheets = 0;
    v5->_renderingComments = 0;
    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)dealloc
{
  self->mSheetPageCountArray.__end_ = self->mSheetPageCountArray.__begin_;
  self->mSheetPageStartArray.__end_ = self->mSheetPageStartArray.__begin_;
  v2.receiver = self;
  v2.super_class = TNRenderingExporter;
  [(TNRenderingExporter *)&v2 dealloc];
}

- (void)setup
{
  v8.receiver = self;
  v8.super_class = TNRenderingExporter;
  [(TSARenderingExporter *)&v8 setup];
  self->mSheetIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->mPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  mPageCountCache = self->mPageCountCache;
  self->mPageCountCache = 0;

  objc_msgSend_setAddendumPageIndex_(self, v4, 0x7FFFFFFFFFFFFFFFLL);
  objc_msgSend_setAddendumPageCount_(self, v5, 0x7FFFFFFFFFFFFFFFLL);
  objc_msgSend_setExportState_(self, v6, 0);
  objc_msgSend_setHasCompletedSetup_(self, v7, 1);
}

- (void)teardown
{
  self->mSheetIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->mPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  objc_msgSend_setAddendumPageIndex_(self, a2, 0x7FFFFFFFFFFFFFFFLL);
  objc_msgSend_setAddendumPageCount_(self, v3, 0x7FFFFFFFFFFFFFFFLL);
  objc_msgSend_setExportState_(self, v4, 0);
  objc_msgSend_setHasCompletedSetup_(self, v5, 0);
  mCanvasBasedSheets = self->mCanvasBasedSheets;
  self->mCanvasBasedSheets = 0;

  mHyperlinkController = self->mHyperlinkController;
  self->mHyperlinkController = 0;

  mPageController = self->mPageController;
  self->mPageController = 0;

  v9.receiver = self;
  v9.super_class = TNRenderingExporter;
  [(TSARenderingExporter *)&v9 teardown];
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

- (void)_resetSheetDependentObjects
{
  overlayContentProvidersForCurrentSheet = self->_overlayContentProvidersForCurrentSheet;
  self->_overlayContentProvidersForCurrentSheet = 0;

  addendumContentProvidersForCurrentSheet = self->_addendumContentProvidersForCurrentSheet;
  self->_addendumContentProvidersForCurrentSheet = 0;

  annotationPrintingHelper = self->_annotationPrintingHelper;
  self->_annotationPrintingHelper = 0;
}

- (id)p_activeSheet
{
  objc_opt_class();
  v5 = objc_msgSend_documentRoot(self, v3, v4);
  v6 = TSUDynamicCast();

  if (!v6)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNRenderingExporter p_activeSheet]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 787, 0, "pdf exporter cannot get to doc");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v16 = objc_msgSend_activeSheet(v6, v7, v8);

  return v16;
}

- (int64_t)p_indexOfActiveSheet
{
  v4 = objc_msgSend_p_canvasBasedSheets(self, a2, v2);
  v7 = objc_msgSend_p_activeSheet(self, v5, v6);
  v9 = objc_msgSend_indexOfObject_(v4, v8, v7);

  return v9;
}

- (void)drawCurrentPageWithContext:(CGContext *)a3 returnSuccess:(BOOL *)a4
{
  if (objc_msgSend_paginate(self, a2, a3))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNRenderingExporter drawCurrentPageWithContext:returnSuccess:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 828, 0, "[TNRenderingExporter drawCurrentPageWithContext] does not support pagination.");

    v16 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v16, v14, v15);
  }

  else
  {
    v17 = objc_msgSend_exportState(self, v7, v8);
    if (v17 == 1)
    {
      objc_msgSend_setInfoProvider_(self->mPageController, v18, 0);
    }

    else if (!v17)
    {
      v20 = objc_msgSend_p_canvasBasedSheets(self, v18, v19);
      v22 = objc_msgSend_objectAtIndex_(v20, v21, self->mSheetIndex);
      objc_msgSend_setInfoProvider_(self->mPageController, v23, v22);
    }

    v24.receiver = self;
    v24.super_class = TNRenderingExporter;
    [(TSARenderingExporter *)&v24 drawCurrentPageWithContext:a3 returnSuccess:a4];
  }
}

- (double)totalProgess
{
  if (objc_msgSend_paginate(self, a2, v2) && !objc_msgSend_p_isActiveSheetForm(self, v4, v5))
  {
    v7 = objc_msgSend_p_canvasBasedSheets(self, v4, v5);
    v10 = objc_msgSend_count(v7, v8, v9);
    v15 = objc_msgSend_sheet(self->mPageController, v11, v12);
    v6 = 0;
    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        objc_msgSend_setup(self, v13, v14);
        v18 = objc_msgSend_objectAtIndex_(v7, v17, i);
        objc_msgSend_setInfoProvider_(self->mPageController, v19, v18);
        v6 += objc_msgSend_pageCount(self, v20, v21);
      }
    }

    objc_msgSend_setInfoProvider_(self->mPageController, v13, v15);
  }

  else
  {
    v6 = objc_msgSend_pageCount(self, v4, v5);
  }

  return v6;
}

- (unint64_t)addendumPageCount
{
  result = self->_addendumPageCount;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    mSheetIndex = self->mSheetIndex;
    mPageIndex = self->mPageIndex;
    v7 = objc_msgSend_addendumPageIndex(self, a2, v2);
    TemporaryLayouts = objc_msgSend_shouldGenerateTemporaryLayouts(self, v8, v9);
    self->_addendumPageCount = 0;
    objc_msgSend_setShouldGenerateTemporaryLayouts_(self, v11, 1);
    v14 = objc_msgSend_numberOfCanvasBasedSheets(self, v12, v13);
    if (v14)
    {
      v16 = v14;
      for (i = 0; i != v16; ++i)
      {
        objc_msgSend_setSheetIndex_pageIndex_addendumPageIndex_(self, v15, i, 0x7FFFFFFFFFFFFFFFLL, 0x7FFFFFFFFFFFFFFFLL);
        self->_addendumPageCount += objc_msgSend__addendumPageCountForCurrentSheet(self, v18, v19);
      }
    }

    objc_msgSend_setSheetIndex_pageIndex_addendumPageIndex_(self, v15, mSheetIndex, mPageIndex, v7);
    objc_msgSend_setShouldGenerateTemporaryLayouts_(self, v20, TemporaryLayouts);
    return self->_addendumPageCount;
  }

  return result;
}

- (unint64_t)_addendumPageCountForCurrentSheet
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = objc_msgSend_addendumContentProvidersForCurrentSheet(self, a2, v2, 0);
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

- (NSArray)addendumContentProvidersForCurrentSheet
{
  v17[1] = *MEMORY[0x277D85DE8];
  shouldPrintComments = objc_msgSend_shouldPrintComments(self, a2, v2);
  v7 = MEMORY[0x277CBEBF8];
  if (shouldPrintComments)
  {
    addendumContentProvidersForCurrentSheet = self->_addendumContentProvidersForCurrentSheet;
    if (addendumContentProvidersForCurrentSheet)
    {
      v7 = addendumContentProvidersForCurrentSheet;
    }

    else
    {
      v9 = objc_msgSend_annotationPrintingHelper(self, v5, v6);
      v10 = self->_addendumContentProvidersForCurrentSheet;
      self->_addendumContentProvidersForCurrentSheet = v7;

      if (objc_msgSend_numberOfAdditionalPages(v9, v11, v12))
      {
        v17[0] = v9;
        v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v17, 1);
        v15 = self->_addendumContentProvidersForCurrentSheet;
        self->_addendumContentProvidersForCurrentSheet = v14;
      }

      v7 = self->_addendumContentProvidersForCurrentSheet;
    }
  }

  return v7;
}

- (NSArray)overlayContentProvidersForCurrentSheet
{
  v17[1] = *MEMORY[0x277D85DE8];
  shouldPrintComments = objc_msgSend_shouldPrintComments(self, a2, v2);
  v7 = MEMORY[0x277CBEBF8];
  if (shouldPrintComments)
  {
    overlayContentProvidersForCurrentSheet = self->_overlayContentProvidersForCurrentSheet;
    if (overlayContentProvidersForCurrentSheet)
    {
      v7 = overlayContentProvidersForCurrentSheet;
    }

    else
    {
      v9 = objc_msgSend_annotationPrintingHelper(self, v5, v6);
      v10 = self->_overlayContentProvidersForCurrentSheet;
      self->_overlayContentProvidersForCurrentSheet = v7;

      if (objc_msgSend_hasOverlayContent(v9, v11, v12))
      {
        v17[0] = v9;
        v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v17, 1);
        v15 = self->_overlayContentProvidersForCurrentSheet;
        self->_overlayContentProvidersForCurrentSheet = v14;
      }

      v7 = self->_overlayContentProvidersForCurrentSheet;
    }
  }

  return v7;
}

- (id)p_canvasBasedSheets
{
  v24 = *MEMORY[0x277D85DE8];
  mCanvasBasedSheets = self->mCanvasBasedSheets;
  if (!mCanvasBasedSheets)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->mCanvasBasedSheets;
    self->mCanvasBasedSheets = v4;

    v8 = objc_msgSend_documentRoot(self, v6, v7);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = objc_msgSend_sheets(v8, v9, v10, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v19, v23, 16);
    if (v13)
    {
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_msgSend_addObject_(self->mCanvasBasedSheets, v17, v16);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v17, &v19, v23, 16);
      }

      while (v13);
    }

    mCanvasBasedSheets = self->mCanvasBasedSheets;
  }

  return mCanvasBasedSheets;
}

- (void)_updateExportState
{
  if (objc_msgSend_renderingComments(self, a2, v2) == 2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNRenderingExporter _updateExportState]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 960, 0, "State management is not handled when using print settings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (objc_msgSend__addendumPageCountForCurrentSheet(self, v4, v5))
  {
    v15 = objc_msgSend_exportState(self, v13, v14);
    if (v15)
    {
      if (v15 != 1)
      {
        return;
      }

      v18 = objc_msgSend_addendumPageIndex(self, v16, v17);
      if (v18 < objc_msgSend__addendumPageCountForCurrentSheet(self, v19, v20) - 1)
      {
        return;
      }

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    objc_msgSend_setExportState_(self, v16, v21);
  }
}

- (BOOL)p_isActiveSheetForm
{
  if (*(&self->super.super.isa + *MEMORY[0x277D7FFE0]))
  {
    return 0;
  }

  v4 = objc_msgSend_p_activeSheet(self, a2, v2);
  isForm = objc_msgSend_isForm(v4, v5, v6);

  return isForm;
}

- (CGRect)p_boundsRectForFirstPage
{
  v4 = objc_msgSend_sheet(self->mPageController, a2, v2);

  if (v4)
  {
    objc_msgSend_printingLayoutRectForPageIndex_(self->mPageController, v5, 0);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = objc_msgSend_documentRoot(self, v5, v6);
    v18 = objc_msgSend_sheets(v15, v16, v17);
    v22 = objc_msgSend_count(v18, v19, v20);
    if (v22)
    {
      v23 = 0;
      while (1)
      {
        v24 = objc_msgSend_objectAtIndex_(v18, v21, v23);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v22 == ++v23)
        {
          goto LABEL_9;
        }
      }

      objc_msgSend_setInfoProvider_(self->mPageController, v25, v24);
    }

LABEL_9:

    objc_msgSend_printingLayoutRectForPageIndex_(self->mPageController, v26, 0);
    v8 = v27;
    v10 = v28;
    v12 = v29;
    v14 = v30;
    objc_msgSend_setInfoProvider_(self->mPageController, v31, 0);
  }

  v32 = v8;
  v33 = v10;
  v34 = v12;
  v35 = v14;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (BOOL)isPageInPortraitOrientation:(unint64_t)a3
{
  v4 = objc_msgSend_sheetIndexForPage_(self, a2, a3 - 1);
  v7 = objc_msgSend_p_canvasBasedSheets(self, v5, v6);
  v9 = objc_msgSend_objectAtIndex_(v7, v8, v4);
  v12 = objc_msgSend_inPortraitPageOrientation(v9, v10, v11);

  return v12;
}

- (int64_t)pageIndexFromQuickLookSheet:(id)a3
{
  v4 = a3;
  if (objc_msgSend_paginate(self, v5, v6))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TNRenderingExporter pageIndexFromQuickLookSheet:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1019, 0, "Pagination is not supported in -pageIndexFromSlide");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v17 = objc_msgSend_quickLookSheets(self, v7, v8);
    v16 = objc_msgSend_indexOfObjectIdenticalTo_(v17, v18, v4);
  }

  return v16;
}

- (id)addendumPageTitleOfAnnotationPrintingHelper:(id)a3
{
  if (objc_msgSend_paginate(self, a2, a3))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNRenderingExporter addendumPageTitleOfAnnotationPrintingHelper:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1043, 0, "The rendering exporter only needs to answer this question when we're not paginated.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (self->mSheetIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNRenderingExporter addendumPageTitleOfAnnotationPrintingHelper:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 1044, 0, "Expected the sheet index to be set");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

  v20 = objc_msgSend_p_canvasBasedSheets(self, v4, v5);
  mSheetIndex = self->mSheetIndex;
  if (mSheetIndex >= objc_msgSend_count(v20, v22, v23))
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TNRenderingExporter addendumPageTitleOfAnnotationPrintingHelper:]");
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 1047, 0, "Out of bounds sheet index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
  }

  if (self->mSheetIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_objectAtIndex_(v20, v24, 0);
  }

  else
  {
    objc_msgSend_objectAtIndex_(v20, v24, self->mSheetIndex);
  }
  v32 = ;
  v35 = objc_msgSend_name(v32, v33, v34);

  return v35;
}

- (BOOL)shouldPrintComments
{
  if (objc_msgSend_renderingComments(self, a2, v2) == 2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNRenderingExporter shouldPrintComments]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1061, 0, "TNRenderingExporter does not support pagination. The data source method is only valid for the case where we don't use print settings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  return objc_msgSend_renderingComments(self, v4, v5) == 1;
}

- (CGRect)availableRectForAddendumContentOfAnnotationPrintingHelper:(id)a3
{
  if (objc_msgSend_renderingComments(self, a2, a3) == 2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNRenderingExporter availableRectForAddendumContentOfAnnotationPrintingHelper:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1067, 0, "TNRenderingExporter does not support pagination. The data source method is only valid for the case where we don't use print settings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend__unpaginatedBoundsRect(self, v4, v5);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  objc_msgSend__printMargins(self, v19, v20);
  v22 = v16 + v21;
  v25 = v18 - (v23 + v24);
  v26 = 1.79769313e308;
  v27 = v14 + v23;
  v28 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)rectForAddendumContentOfAnnotationPrintingHelper:(id)a3
{
  objc_msgSend_unscaledClipRect(self, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  objc_msgSend__printMargins(self, v12, v13);
  v15 = v7 + v14;
  v18 = v9 - (v16 + v17);
  v20 = v11 - (v14 + v19);
  v21 = v5 + v16;
  v22 = v15;
  v23 = v18;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)_printableInfos
{
  if (objc_msgSend_renderingComments(self, a2, v2) == 2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TNRenderingExporter _printableInfos]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 1107, 0, "TNRenderingExporter does not support pagination. _printableInfos should not be called if using printing settings");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  if (self->mSheetIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  else
  {
    v14 = objc_msgSend_p_canvasBasedSheets(self, v4, v5);
    v16 = objc_msgSend_objectAtIndex_(v14, v15, self->mSheetIndex);
    shouldPrintComments = objc_msgSend_shouldPrintComments(self, v17, v18);
    v13 = objc_msgSend_printableInfosIncludingComments_(v16, v20, shouldPrintComments);
  }

  return v13;
}

- (CGRect)_unpaginatedBoundsRect
{
  v4 = objc_msgSend__printProperties(self, a2, v2);
  objc_msgSend__printMargins(self, v5, v6);
  v8 = v7;
  v10 = v9;
  objc_msgSend_pageWidth(v4, v11, v12);
  v14 = v13;
  objc_msgSend_pageHeight(v4, v15, v16);
  v18 = v17;

  v19 = 0.0 - v10;
  v20 = 0.0 - v8;
  v21 = v14;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (UIEdgeInsets)_printMargins
{
  v3 = objc_msgSend_legacyExportPrintProperties(TNPrintProperties, a2, v2);
  objc_msgSend_printMargins(v3, v4, v5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (id)_pageCountCache
{
  mPageCountCache = self->mPageCountCache;
  if (!mPageCountCache)
  {
    v5 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], a2, v2);
    v6 = self->mPageCountCache;
    self->mPageCountCache = v5;

    mPageCountCache = self->mPageCountCache;
  }

  return mPageCountCache;
}

- (void)annotationPrintingHelper:(id)a3 enumerateLayoutsByPageWithBlock:(id)a4
{
  v8 = a4;
  v7 = objc_msgSend_annotationPrintingHelper_layoutsForPageIndex_(self, v6, a3, 0);
  v8[2](v8, v7);
}

- (id)annotationPrintingHelper:(id)a3 layoutsForPageIndex:(unint64_t)a4
{
  v8 = a3;
  if (a4)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TNRenderingExporter annotationPrintingHelper:layoutsForPageIndex:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNRenderingExporter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 1155, 0, "The rendering exporter should only have a single page per sheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (objc_msgSend_shouldGenerateTemporaryLayouts(self, v6, v7))
  {
    v18 = objc_alloc(MEMORY[0x277D802F8]);
    v20 = objc_msgSend_initWithCanvas_(v18, v19, 0);
    v23 = objc_msgSend_currentInfos(self, v21, v22);
    objc_msgSend_setInfos_(v20, v24, v23);

    objc_msgSend_validateLayouts(v20, v25, v26);
    v29 = objc_msgSend_rootLayout(v20, v27, v28);
    v32 = objc_msgSend_children(v29, v30, v31);
  }

  else
  {
    v20 = objc_msgSend_canvas(*(&self->super.super.isa + *MEMORY[0x277D7FFE8]), v16, v17);
    v29 = objc_msgSend_layoutController(v20, v33, v34);
    v37 = objc_msgSend_rootLayout(v29, v35, v36);
    v32 = objc_msgSend_children(v37, v38, v39);
  }

  return v32;
}

- (CGAffineTransform)annotationPrintingHelper:(SEL)a3 inversePureTransformInRootForContentAtPageIndex:(id)a4
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  return self;
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 15) = 0;
  *(self + 13) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  return self;
}

@end