@interface TPRenderingExporter
- (BOOL)drawCurrentPageInContext:(CGContext *)a3 viewScale:(double)a4 unscaledClipRect:(CGRect)a5 createPage:(BOOL)a6;
- (BOOL)incrementPage;
- (BOOL)preparePage:(unint64_t)a3;
- (CGRect)boundsRect;
- (CGRect)unscaledClipRect;
- (NSMutableArray)outputPageList;
- (TPPaginatedPageController)pageController;
- (TPRenderingExporter)initWithDocumentRoot:(id)a3;
- (double)progressForCurrentPage;
- (double)totalProgess;
- (id)currentInfos;
- (unint64_t)pageCount;
- (void)invalidateOutputPageList;
- (void)p_addHyperLinksInContext:(CGContext *)a3 forCanvas:(id)a4;
- (void)setIncludeBackgrounds:(BOOL)a3;
- (void)setIncludeComments:(BOOL)a3;
- (void)setOptions:(id)a3;
- (void)setup;
- (void)setupPencilAnnotationsAndHyperlinks;
- (void)teardown;
@end

@implementation TPRenderingExporter

- (TPRenderingExporter)initWithDocumentRoot:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = TPRenderingExporter;
  v5 = [(TSARenderingExporter *)&v34 initWithDocumentRoot:v4];
  v6 = v5;
  if (v5)
  {
    v5->_lastPageIndexForLayout = -1;
    v5->_startPageIndex = 0;
    v5->_lastPageIndex = -1;
    v7 = [TPPdfHyperlinkController alloc];
    v13 = objc_msgSend_initWithDocumentRoot_(v7, v8, v9, v10, v11, v12, v4);
    hyperlinkController = v6->_hyperlinkController;
    v6->_hyperlinkController = v13;

    v6->_includeComments = 0;
    v6->_includeBackgrounds = 1;
    v6->_includePencilAnnotations = 0;
    v20 = objc_msgSend_paginatedPageControllerForDelegate_(TPPaginatedPageController, v15, v16, v17, v18, v19, v4);
    pageController = v6->_pageController;
    v6->_pageController = v20;

    v6->_tornDown = 0;
    v27 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v22, v23, v24, v25, v26);
    objc_msgSend_postNotificationName_object_(v27, v28, v29, v30, v31, v32, *MEMORY[0x277D81028], *(&v6->super.super.isa + *MEMORY[0x277D7FFD8]));
  }

  return v6;
}

- (NSMutableArray)outputPageList
{
  outputPageList = self->_outputPageList;
  if (!outputPageList)
  {
    v8 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
    v9 = self->_outputPageList;
    self->_outputPageList = v8;

    v15 = objc_msgSend_pageController(self, v10, v11, v12, v13, v14);
    if (objc_msgSend_lastPageIndexForLayout(self, v16, v17, v18, v19, v20) == -1)
    {
      PageIndex = objc_msgSend_lastPageIndex(self, v21, v22, v23, v24, v25);
    }

    else
    {
      PageIndex = objc_msgSend_lastPageIndexForLayout(self, v21, v22, v23, v24, v25);
    }

    v85[0] = MEMORY[0x277D85DD0];
    v28.n128_u64[0] = 3221225472;
    v85[1] = 3221225472;
    v85[2] = sub_275FF4D3C;
    v85[3] = &unk_27A6A8AB0;
    v85[4] = v15;
    v85[5] = PageIndex;
    objc_msgSend_performBlockWithImager_(self, v27, v28, v29, v30, v31, v85);
    isPaginationComplete = objc_msgSend_isPaginationComplete(v15, v32, v33, v34, v35, v36);
    objc_msgSend_setDidLimitPageLayout_(self, v38, v39, v40, v41, v42, isPaginationComplete ^ 1u);
    LaidOutDocumentPageIndex = objc_msgSend_lastLaidOutDocumentPageIndex(v15, v43, v44, v45, v46, v47);
    v54 = objc_msgSend_lastPageIndex(self, v49, v50, v51, v52, v53);
    if (LaidOutDocumentPageIndex >= v54)
    {
      v60 = v54;
    }

    else
    {
      v60 = LaidOutDocumentPageIndex;
    }

    started = objc_msgSend_startPageIndex(self, v55, v56, v57, v58, v59);
    if (started <= v60)
    {
      v67 = started;
      do
      {
        if ((objc_msgSend_includeComments(self, v62, v63, v64, v65, v66) & 1) == 0)
        {
          v68 = objc_alloc_init(TPRenderingExporterPageEntry);
          objc_msgSend_setDocumentPageIndex_(v68, v69, v70, v71, v72, v73, v67);
          objc_msgSend_setCommentOverflowPageIndex_(v68, v74, v75, v76, v77, v78, 0);
          objc_msgSend_addObject_(self->_outputPageList, v79, v80, v81, v82, v83, v68);
        }

        ++v67;
      }

      while (v67 <= v60);
    }

    outputPageList = self->_outputPageList;
  }

  return outputPageList;
}

- (void)invalidateOutputPageList
{
  objc_msgSend_setOutputPageList_(self, a2, v2, v3, v4, v5, 0);

  objc_msgSend_setInternalPageCount_(self, v7, v8, v9, v10, v11, 0);
}

- (void)setIncludeComments:(BOOL)a3
{
  if (self->_includeComments != a3)
  {
    objc_msgSend_invalidateOutputPageList(self, a2, v3, v4, v5, v6);
    self->_includeComments = a3;
  }
}

- (void)setIncludeBackgrounds:(BOOL)a3
{
  if (self->_includeBackgrounds != a3)
  {
    objc_msgSend_invalidateOutputPageList(self, a2, v3, v4, v5, v6);
    self->_includeBackgrounds = a3;
    v19 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v9, v10, v11, v12, v13);
    objc_msgSend_postNotificationName_object_(v19, v14, v15, v16, v17, v18, *MEMORY[0x277D81028], *(&self->super.super.isa + *MEMORY[0x277D7FFD8]));
  }
}

- (void)setupPencilAnnotationsAndHyperlinks
{
  v6[0] = MEMORY[0x277D85DD0];
  v2.n128_u64[0] = 3221225472;
  v6[1] = 3221225472;
  v6[2] = sub_275FF4FB8;
  v6[3] = &unk_27A6A8B00;
  v6[4] = self;
  objc_msgSend_performBlockWithImager_(self, a2, v2, v3, v4, v5, v6);
}

- (void)setup
{
  v13.receiver = self;
  v13.super_class = TPRenderingExporter;
  [(TSARenderingExporter *)&v13 setup];
  objc_msgSend_setupPencilAnnotationsAndHyperlinks(self, v3, v4, v5, v6, v7);
  objc_msgSend_setPageIndex_(self, v8, v9, v10, v11, v12, 0x7FFFFFFFFFFFFFFFLL);
}

- (void)teardown
{
  objc_msgSend_setHyperlinkController_(self, a2, v2, v3, v4, v5, 0);
  objc_msgSend_setPageIndex_(self, v7, v8, v9, v10, v11, 0x7FFFFFFFFFFFFFFFLL);
  self->_tornDown = 1;
  v12.receiver = self;
  v12.super_class = TPRenderingExporter;
  [(TSARenderingExporter *)&v12 teardown];
}

- (BOOL)drawCurrentPageInContext:(CGContext *)a3 viewScale:(double)a4 unscaledClipRect:(CGRect)a5 createPage:(BOOL)a6
{
  v6 = a6;
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  if (a6)
  {
    TSURectWithSize();
    mediaBox.origin.x = v14;
    mediaBox.origin.y = v15;
    mediaBox.size.width = v16;
    mediaBox.size.height = v17;
    CGContextBeginPage(a3, &mediaBox);
  }

  CGContextSaveGState(a3);
  CGContextScaleCTM(a3, a4, a4);
  CGContextSaveGState(a3);
  v26[0] = MEMORY[0x277D85DD0];
  v18.n128_u64[0] = 3221225472;
  v26[1] = 3221225472;
  v26[2] = sub_275FF5320;
  v26[3] = &unk_27A6A8B00;
  v26[4] = self;
  objc_msgSend_performBlockWithImager_(self, v19, v18, v20, v21, v22, v26);
  v25.receiver = self;
  v25.super_class = TPRenderingExporter;
  v23 = [(TSARenderingExporter *)&v25 drawCurrentPageInContext:a3 viewScale:0 unscaledClipRect:1.0 createPage:x, y, width, height];
  CGContextRestoreGState(a3);
  CGContextRestoreGState(a3);
  if (v6)
  {
    CGContextEndPage(a3);
  }

  return v23;
}

- (void)p_addHyperLinksInContext:(CGContext *)a3 forCanvas:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a4;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    v13 = objc_msgSend_hyperlinkController(self, v7, v9, v10, v11, v12);
    objc_msgSend_unscaledClipRect(self, v14, v15, v16, v17, v18);
    objc_msgSend_setCanvasRect_(v13, v19, v20, v21, v22, v23);

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v28 = objc_msgSend_allReps(v6, v24, 0, v25, v26, v27, 0);
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, v30, v31, v32, v33, &v68, v72, 16);
    if (v34)
    {
      v40 = v34;
      v41 = *v69;
      do
      {
        v42 = 0;
        do
        {
          if (*v69 != v41)
          {
            objc_enumerationMutation(v28);
          }

          v43 = *(*(&v68 + 1) + 8 * v42);
          v44 = objc_msgSend_hyperlinkController(self, v35, v36, v37, v38, v39);
          objc_msgSend_addHyperlinksForRep_(v44, v45, v46, v47, v48, v49, v43);

          ++v42;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v35, v36, v37, v38, v39, &v68, v72, 16);
      }

      while (v40);
    }

    objc_msgSend_pageSize(v8, v50, v51, v52, v53, v54);
    v56 = v55.n128_u64[0];
    v58 = v57.n128_u64[0];
    v62 = objc_msgSend_hyperlinkController(self, v59, v55, v57, v60, v61);
    v63.n128_u64[0] = 0;
    v64.n128_u64[0] = 0;
    v65.n128_u64[0] = v56;
    v66.n128_u64[0] = v58;
    objc_msgSend_commitHyperlinksToPDF_targetRect_(v62, v67, v63, v64, v65, v66, a3);
  }
}

- (TPPaginatedPageController)pageController
{
  if (objc_msgSend_tornDown(self, a2, v2, v3, v4, v5))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10, v11, "[TPRenderingExporter pageController]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPRenderingExporter.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 522, 0, "Misuse of pageController after teardown");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  }

  pageController = self->_pageController;

  return pageController;
}

- (void)setOptions:(id)a3
{
  v34.receiver = self;
  v34.super_class = TPRenderingExporter;
  v4 = a3;
  [(TSARenderingExporter *)&v34 setOptions:v4];
  v10 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v6, v7, v8, v9, @"kTPExportFromPage", v34.receiver, v34.super_class);
  v16 = objc_msgSend_objectForKeyedSubscript_(v4, v11, v12, v13, v14, v15, @"kTPExportToPage");

  if (v10)
  {
    v22 = objc_msgSend_unsignedIntValue(v10, v17, v18, v19, v20, v21);
    if (v22)
    {
      objc_msgSend_setStartPageIndex_(self, v23, v24, v25, v26, v27, v22 - 1);
    }

    else
    {
      objc_msgSend_setStartPageIndex_(self, v23, v24, v25, v26, v27, 1);
    }
  }

  if (v16)
  {
    v28 = objc_msgSend_unsignedIntValue(v16, v17, v18, v19, v20, v21);
    if (v28)
    {
      objc_msgSend_setLastPageIndex_(self, v29, v30, v31, v32, v33, v28 - 1);
    }

    else
    {
      objc_msgSend_setLastPageIndex_(self, v29, v30, v31, v32, v33, 1);
    }
  }
}

- (CGRect)boundsRect
{
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  objc_msgSend_pageSize(v6, v7, v8, v9, v10, v11);
  v13 = v12;
  v15 = v14;

  v16 = 0.0;
  v17 = 0.0;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)unscaledClipRect
{
  if (objc_msgSend_pageIndex(self, a2, v2, v3, v4, v5) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = objc_msgSend_pageIndex(self, v7, v8, v9, v10, v11);
  }

  v13 = objc_msgSend_outputPageList(self, v7, v8, v9, v10, v11);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, v15, v16, v17, v18, v12);

  v25 = objc_msgSend_pageController(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_documentPageIndex(v19, v26, v27, v28, v29, v30);
  objc_msgSend_pageRectForPageIndex_allowAfterPaginationPoint_(v25, v32, v33, v34, v35, v36, v31, 0);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = v38;
  v46 = v40;
  v47 = v42;
  v48 = v44;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (id)currentInfos
{
  v66[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_outputPageList(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_pageIndex(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v7, v14, v15, v16, v17, v18, v13);

  if (v19)
  {
    if (objc_msgSend_isDocumentPage(v19, v20, v21, v22, v23, v24) && objc_msgSend_documentPageIndex(v19, v25, v26, v27, v28, v29) != 0x7FFFFFFFFFFFFFFFLL)
    {
      v36 = objc_msgSend_pageController(self, v30, v31, v32, v33, v34);
      v42 = objc_msgSend_documentPageIndex(v19, v37, v38, v39, v40, v41);
      objc_msgSend_paginateThroughPageIndex_(v36, v43, v44, v45, v46, v47, v42 + 1);
      v53 = objc_msgSend_documentPageIndex(v19, v48, v49, v50, v51, v52);
      v59 = objc_msgSend_pageInfoForPageIndex_(v36, v54, v55, v56, v57, v58, v53);
      v66[0] = v59;
      v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v61, v62, v63, v64, v66, 1);
    }

    else
    {
      v35 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (BOOL)preparePage:(unint64_t)a3
{
  v9 = objc_msgSend_pageController(self, a2, v3, v4, v5, v6);
  v15 = objc_msgSend_outputPageList(self, v10, v11, v12, v13, v14);
  v16 = a3 - 1;
  v22 = objc_msgSend_objectAtIndexedSubscript_(v15, v17, v18, v19, v20, v21, a3 - 1);

  if (objc_msgSend_isDocumentPage(v22, v23, v24, v25, v26, v27) && objc_msgSend_bodyRangeForPageIndex_forcePagination_(v9, v28, v29, v30, v31, v32, v16, 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0;
  }

  else
  {
    objc_msgSend_setPageIndex_(self, v28, v29, v30, v31, v32, v16);
    v33 = 1;
  }

  return v33;
}

- (BOOL)incrementPage
{
  if (objc_msgSend_pageIndex(self, a2, v2, v3, v4, v5) == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_setPageIndex_(self, v7, v8, v9, v10, v11, 0);
  }

  else
  {
    v17 = objc_msgSend_pageIndex(self, v7, v8, v9, v10, v11) + 1;
    objc_msgSend_setPageIndex_(self, v18, v19, v20, v21, v22, v17);
  }

  v23 = objc_msgSend_pageIndex(self, v12, v13, v14, v15, v16);
  v29 = objc_msgSend_outputPageList(self, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_count(v29, v30, v31, v32, v33, v34);

  if (v23 >= v35)
  {
    return 0;
  }

  v41 = objc_msgSend_pageController(self, v36, v37, v38, v39, v40);
  v47 = objc_msgSend_outputPageList(self, v42, v43, v44, v45, v46);
  v53 = objc_msgSend_pageIndex(self, v48, v49, v50, v51, v52);
  v59 = objc_msgSend_objectAtIndexedSubscript_(v47, v54, v55, v56, v57, v58, v53);

  objc_msgSend_isDocumentPage(v59, v60, v61, v62, v63, v64);
  v70 = objc_msgSend_documentPageIndex(v59, v65, v66, v67, v68, v69);
  v76 = objc_msgSend_bodyRangeForPageIndex_forcePagination_(v41, v71, v72, v73, v74, v75, v70, 1) != 0x7FFFFFFFFFFFFFFFLL;

  return v76;
}

- (double)totalProgess
{
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_bodyStorage(v6, v7, v8, v9, v10, v11);
  v18 = objc_msgSend_length(v12, v13, v14, v15, v16, v17);

  if (v18 <= 1)
  {
    return 1;
  }

  else
  {
    return v18;
  }
}

- (double)progressForCurrentPage
{
  v7 = objc_msgSend_outputPageList(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_pageIndex(self, v8, v9, v10, v11, v12);
  v19 = objc_msgSend_objectAtIndexedSubscript_(v7, v14, v15, v16, v17, v18, v13);

  v25 = objc_msgSend_pageController(self, v20, v21, v22, v23, v24);
  v31 = objc_msgSend_documentPageIndex(v19, v26, v27, v28, v29, v30);
  objc_msgSend_bodyRangeForPageIndex_forcePagination_(v25, v32, v33, v34, v35, v36, v31, 1);
  if (v37 <= 1)
  {
    v38 = 1;
  }

  else
  {
    v38 = v37;
  }

  v39 = v38;

  return v39;
}

- (unint64_t)pageCount
{
  if (!objc_msgSend_internalPageCount(self, a2, v2, v3, v4, v5))
  {
    v12 = objc_msgSend_outputPageList(self, v7, v8, v9, v10, v11);
    v18 = objc_msgSend_count(v12, v13, v14, v15, v16, v17);
    objc_msgSend_setInternalPageCount_(self, v19, v20, v21, v22, v23, v18);
  }

  return objc_msgSend_internalPageCount(self, v7, v8, v9, v10, v11);
}

@end