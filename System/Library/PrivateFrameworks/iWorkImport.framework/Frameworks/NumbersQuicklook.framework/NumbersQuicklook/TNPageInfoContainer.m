@interface TNPageInfoContainer
- (TNPageController)pageController;
- (TNPageInfoContainer)initWithPageIndex:(unint64_t)a3 pageController:(id)a4;
- (void)setGeometry:(id)a3;
- (void)setParentInfo:(id)a3;
@end

@implementation TNPageInfoContainer

- (TNPageInfoContainer)initWithPageIndex:(unint64_t)a3 pageController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = TNPageInfoContainer;
  v7 = [(TNPageInfoContainer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_pageController, v6);
    v8->_pageIndex = a3;
  }

  return v8;
}

- (void)setParentInfo:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNPageInfoContainer setParentInfo:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageInfoContainer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 34, 0, "pages have no parents");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (void)setGeometry:(id)a3
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TNPageInfoContainer setGeometry:]");
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/numbers/Classes/TNPageInfoContainer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 45, 0, "can't set geometry on a page");

  v10 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

- (TNPageController)pageController
{
  WeakRetained = objc_loadWeakRetained(&self->_pageController);

  return WeakRetained;
}

@end