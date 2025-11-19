@interface TPPageInfo
+ (BOOL)isAlternativePageIndex:(unint64_t)a3 documentRoot:(id)a4;
+ (BOOL)isPageTemplatePageIndex:(unint64_t)a3 documentRoot:(id)a4;
+ (unint64_t)pageIndexFromPageTemplateIndex:(unint64_t)a3;
+ (unint64_t)pageTemplateIndexFromPageIndex:(unint64_t)a3 documentRoot:(id)a4;
- (BOOL)isEqual:(id)a3;
- (CGRect)pageFrame;
- (NSArray)childInfos;
- (TPDocumentRoot)documentRoot;
- (TPPageController)pageController;
- (TPPageInfo)initWithPageIndex:(unint64_t)a3 documentRoot:(id)a4;
- (void)dealloc;
- (void)setGeometry:(id)a3;
- (void)setParentInfo:(id)a3;
@end

@implementation TPPageInfo

- (TPPageInfo)initWithPageIndex:(unint64_t)a3 documentRoot:(id)a4
{
  v6 = a4;
  v86.receiver = self;
  v86.super_class = TPPageInfo;
  v8 = [(TPPageInfo *)&v86 init];
  if (v8)
  {
    if (!v6)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPageInfo initWithPageIndex:documentRoot:]");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v21, v22, v23, v24, v25, v14, v20, 50, 0, "invalid nil value for '%{public}s'", "documentRoot");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29, v30);
    }

    if (a3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v9, v10, v11, v12, "[TPPageInfo initWithPageIndex:documentRoot:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v39, v40, v41, v42, v43, v32, v38, 51, 0, "Invalid page index");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47, v48);
    }

    objc_storeWeak(&v8->_documentRoot, v6);
    v8->_pageIndex = a3;
    if ((objc_msgSend_isDocSetupPageIndex_(TPPageInfo, v49, v50, v51, v52, v53, a3) & 1) == 0)
    {
      v54 = objc_opt_class();
      if (objc_msgSend_hasBodyInfo(v54, v55, v56, v57, v58, v59))
      {
        v60 = objc_opt_class();
        v66 = objc_alloc(objc_msgSend_bodyInfoClass(v60, v61, v62, v63, v64, v65));
        v72 = objc_msgSend_bodyStorage(v6, v67, v68, v69, v70, v71);
        v78 = objc_msgSend_initWithBodyStorage_(v66, v73, v74, v75, v76, v77, v72);
        bodyInfo = v8->_bodyInfo;
        v8->_bodyInfo = v78;

        objc_msgSend_setParentInfo_(v8->_bodyInfo, v80, v81, v82, v83, v84, v8);
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  objc_msgSend_setParentInfo_(self->_bodyInfo, a2, v2, v3, v4, v5, 0);
  v7.receiver = self;
  v7.super_class = TPPageInfo;
  [(TPPageInfo *)&v7 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();

  if (v5)
  {
    v11 = objc_msgSend_documentRoot(self, v6, v7, v8, v9, v10);
    v17 = objc_msgSend_documentRoot(v5, v12, v13, v14, v15, v16);

    if (v11 != v17)
    {
      v23 = MEMORY[0x277D81150];
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, v22, "[TPPageInfo isEqual:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v31, v32, v33, v34, v35, v24, v30, 76, 0, "Should never need to compare pageInfos from different documents");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38, v39, v40);
    }

    pageIndex = self->_pageIndex;
    v42 = pageIndex == objc_msgSend_pageIndex(v5, v18, v19, v20, v21, v22);
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (TPPageController)pageController
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, v5, "[TPPageInfo pageController]");
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v16, v17, v18, v19, v20, v7, v13, 91, 0, "Abstract method not overridden by %{public}@", v15);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  v26 = MEMORY[0x277CBEAD8];
  v27 = *MEMORY[0x277CBE658];
  v28 = MEMORY[0x277CCACA8];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v36 = objc_msgSend_stringWithFormat_(v28, v31, v32, v33, v34, v35, @"Abstract method not overridden by %@: %s", v30, "[TPPageInfo pageController]");
  v42 = objc_msgSend_exceptionWithName_reason_userInfo_(v26, v37, v38, v39, v40, v41, v27, v36, 0);
  v43 = v42;

  objc_exception_throw(v42);
}

- (void)setParentInfo:(id)a3
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPPageInfo setParentInfo:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 102, 0, "pages have no parents");

  v25 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v25, v20, v21, v22, v23, v24);
}

- (void)setGeometry:(id)a3
{
  v7 = MEMORY[0x277D81150];
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "[TPPageInfo setGeometry:]");
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v15, v16, v17, v18, v19, v8, v14, 113, 0, "can't set geometry on a page");

  v25 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v25, v20, v21, v22, v23, v24);
}

- (NSArray)childInfos
{
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  v13 = v7;
  if (self->_bodyInfo)
  {
    objc_msgSend_addObject_(v7, v8, v9, v10, v11, v12);
  }

  return v13;
}

+ (BOOL)isPageTemplatePageIndex:(unint64_t)a3 documentRoot:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, v10, "+[TPPageInfo isPageTemplatePageIndex:documentRoot:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v19, v20, v21, v22, v23, v12, v18, 200, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27, v28);
  }

  v29 = objc_msgSend_pageTemplates(v6, v5, v7, v8, v9, v10);
  v35 = objc_msgSend_count(v29, v30, v31, v32, v33, v34) + 1592629870;

  if ((~a3 & 0x7FFFFFFFFFFFFFFFLL) != 0 && v35 <= a3)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, v37, v38, v39, v40, "+[TPPageInfo isPageTemplatePageIndex:documentRoot:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v49, v50, v51, v52, v53, v42, v48, 204, 0, "Expect pageIndex cannot be greater than max of page templates (pageIndex = %lu).", a3);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56, v57, v58);
  }

  v60 = a3 > 0x5EED9A6D && v35 > a3;

  return v60;
}

+ (BOOL)isAlternativePageIndex:(unint64_t)a3 documentRoot:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, v11, "+[TPPageInfo isAlternativePageIndex:documentRoot:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 214, 0, "invalid nil value for '%{public}s'", "documentRoot");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
  }

  if (objc_msgSend_isDocSetupPageIndex_(a1, v6, v8, v9, v10, v11, a3))
  {
    isPageTemplatePageIndex_documentRoot = 1;
  }

  else
  {
    isPageTemplatePageIndex_documentRoot = objc_msgSend_isPageTemplatePageIndex_documentRoot_(a1, v30, v31, v32, v33, v34, a3, v7);
  }

  return isPageTemplatePageIndex_documentRoot;
}

+ (unint64_t)pageIndexFromPageTemplateIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL && (a3 >= 0x5EED9A6E || objc_msgSend_isDocSetupPageIndex_(a1, a2, v3, v4, v5, v6, a3)))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v3, v4, v5, v6, "+[TPPageInfo pageIndexFromPageTemplateIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v16, v17, v18, v19, v20, v9, v15, 222, 0, "Input template index should be 0 based and not related to an alternative page index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24, v25);
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3 + 1592629870;
  }
}

+ (unint64_t)pageTemplateIndexFromPageIndex:(unint64_t)a3 documentRoot:(id)a4
{
  if ((objc_msgSend_isPageTemplatePageIndex_documentRoot_(a1, a2, v4, v5, v6, v7, a3, a4) & 1) == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, v13, "+[TPPageInfo pageTemplateIndexFromPageIndex:documentRoot:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageInfo.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v22, v23, v24, v25, v26, v15, v21, 227, 0, "Input pageIndex should be for a page template.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30, v31);
  }

  return a3 - 1592629870;
}

- (CGRect)pageFrame
{
  x = self->_pageFrame.origin.x;
  y = self->_pageFrame.origin.y;
  width = self->_pageFrame.size.width;
  height = self->_pageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (TPDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

@end