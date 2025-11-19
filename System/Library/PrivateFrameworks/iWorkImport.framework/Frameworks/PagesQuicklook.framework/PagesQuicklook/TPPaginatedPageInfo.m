@interface TPPaginatedPageInfo
- (BOOL)isDocumentSetupPage;
- (CGRect)pageFrame;
- (NSArray)floatingDrawableInfos;
- (TPDrawablesZOrder)drawablesZOrder;
- (TPPageLayoutInfoProvider)layoutInfoProvider;
- (TPPaginatedPageInfo)initWithPageIndex:(unint64_t)a3 documentRoot:(id)a4 layoutInfoProvider:(id)a5;
- (id)orderedDrawables:(id)a3;
- (id)pageController;
@end

@implementation TPPaginatedPageInfo

- (TPPaginatedPageInfo)initWithPageIndex:(unint64_t)a3 documentRoot:(id)a4 layoutInfoProvider:(id)a5
{
  v8 = a5;
  v34.receiver = self;
  v34.super_class = TPPaginatedPageInfo;
  v10 = [(TPPageInfo *)&v34 initWithPageIndex:a3 documentRoot:a4];
  if (v10)
  {
    if (!v8)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, v14, "[TPPaginatedPageInfo initWithPageIndex:documentRoot:layoutInfoProvider:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPaginatedPageInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v24, v25, v26, v27, v16, v22, 34, 0, "invalid nil value for '%{public}s'", "layoutInfoProvider");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31, v32);
    }

    objc_storeWeak(&v10->_layoutInfoProvider, v8);
  }

  return v10;
}

- (NSArray)floatingDrawableInfos
{
  if (objc_msgSend_isDocumentSetupPage(self, a2, v2, v3, v4, v5))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_msgSend_documentRoot(self, v7, v8, v9, v10, v11);
    v19 = objc_msgSend_floatingDrawables(v13, v14, v15, v16, v17, v18);
    v25 = objc_msgSend_pageIndex(self, v20, v21, v22, v23, v24);
    v12 = objc_msgSend_orderedDrawablesOnPageIndex_(v19, v26, v27, v28, v29, v30, v25);
  }

  return v12;
}

- (TPDrawablesZOrder)drawablesZOrder
{
  v6 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_drawablesZOrder(v6, v7, v8, v9, v10, v11);

  return v12;
}

- (BOOL)isDocumentSetupPage
{
  v7 = objc_msgSend_pageIndex(self, a2, v2, v3, v4, v5);

  return objc_msgSend_isDocSetupPageIndex_(TPPageInfo, v6, v8, v9, v10, v11, v7);
}

- (id)orderedDrawables:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_documentRoot(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_drawablesZOrder(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_orderedDrawables_(v16, v17, v18, v19, v20, v21, v4);

  return v22;
}

- (id)pageController
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_layoutInfoProvider);
  v9 = objc_msgSend_pageController(WeakRetained, v4, v5, v6, v7, v8);
  v10 = TSUDynamicCast();

  return v10;
}

- (CGRect)pageFrame
{
  v7 = objc_msgSend_documentRoot(self, a2, v2, v3, v4, v5);
  objc_msgSend_pageSize(v7, v8, v9, v10, v11, v12);
  v14 = v13;
  v16 = v15;

  v22 = objc_msgSend_pageController(self, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_pageIndex(self, v23, v24, v25, v26, v27);
  isDocSetupPageIndex = objc_msgSend_isDocSetupPageIndex_(TPPageInfo, v29, v30, v31, v32, v33, v28);
  v41 = objc_msgSend_pageIndex(self, v35, v36, v37, v38, v39);
  if ((isDocSetupPageIndex & 1) != 0 || !v22)
  {
    v47 = *MEMORY[0x277CBF348];
    v49 = *(MEMORY[0x277CBF348] + 8);
    if (v41 == objc_msgSend_documentSetupRightSidePageIndex(TPPageInfo, v40, v42, v43, v44, v45))
    {
      v55 = objc_msgSend_layoutInfoProvider(self, v50, v51, v52, v53, v54);
      v61 = objc_msgSend_pageIndex(self, v56, v57, v58, v59, v60);
      shouldUseFacingPagesForPageIndex = objc_msgSend_shouldUseFacingPagesForPageIndex_(v55, v62, v63, v64, v65, v66, v61);

      if (shouldUseFacingPagesForPageIndex)
      {
        v49 = 0.0;
        v47 = v14 + 1.0;
      }
    }
  }

  else
  {
    objc_msgSend_pageOriginForPageIndex_allowAfterPaginationPoint_(v22, v40, v42, v43, v44, v45, v41, 0);
    v47 = v46;
    v49 = v48;
  }

  v68 = v47;
  v69 = v49;
  v70 = v14;
  v71 = v16;
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

- (TPPageLayoutInfoProvider)layoutInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutInfoProvider);

  return WeakRetained;
}

@end