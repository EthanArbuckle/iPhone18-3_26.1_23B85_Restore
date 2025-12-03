@interface TNPageLayoutAbstract
- (CGRect)pageBounds;
- (Class)repClassOverride;
- (TNPageController)pageController;
- (TNPageLayoutAbstract)initWithPageController:(id)controller pageCoordinate:(TSUCellCoord)coordinate;
- (id)computeLayoutGeometry;
- (id)description;
@end

@implementation TNPageLayoutAbstract

- (TNPageLayoutAbstract)initWithPageController:(id)controller pageCoordinate:(TSUCellCoord)coordinate
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = TNPageLayoutAbstract;
  v7 = [(TNPageLayoutAbstract *)&v10 initWithInfo:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_pageController, controllerCopy);
    v8->_pageCoordinate = coordinate;
  }

  return v8;
}

- (CGRect)pageBounds
{
  v3 = objc_msgSend_pageController(self, a2, v2);
  objc_msgSend_pageSize(v3, v4, v5);

  TSURectWithSize();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (id)computeLayoutGeometry
{
  v4 = objc_msgSend_pageController(self, a2, v2);
  v7 = objc_msgSend_pageCoordinate(self, v5, v6);
  v9 = objc_msgSend_pageLayoutGeometryForPageCoordinate_(v4, v8, v7);

  return v9;
}

- (Class)repClassOverride
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNPageLayoutAbstract repClassOverride]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageLayoutAbstract.m");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 53, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v17 = objc_msgSend_stringWithFormat_(v13, v16, @"Abstract method not overridden by %@: %s", v15, "[TNPageLayoutAbstract repClassOverride]");
  v19 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v18, v12, v17, 0);
  v20 = v19;

  objc_exception_throw(v19);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = TNPageLayoutAbstract;
  v4 = [(TNPageLayoutAbstract *)&v13 description];
  v7 = objc_msgSend_pageCoordinate(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"[%d,%d]", WORD2(v7), v7);
  v11 = objc_msgSend_stringWithFormat_(v3, v10, @"%@, PageCoordinate=%@", v4, v9);

  return v11;
}

- (TNPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end