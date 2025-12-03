@interface TNPageContentLayout
- (TNPageContentLayout)initWithPageLayout:(id)layout;
- (TNPageLayoutContainer)pageLayout;
- (id)computeLayoutGeometry;
- (unint64_t)pageCount;
- (void)validate;
@end

@implementation TNPageContentLayout

- (TNPageContentLayout)initWithPageLayout:(id)layout
{
  layoutCopy = layout;
  v8.receiver = self;
  v8.super_class = TNPageContentLayout;
  v5 = [(TNPageContentLayout *)&v8 initWithInfo:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_pageLayout, layoutCopy);
    v6->_pageNumber = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (void)validate
{
  v13.receiver = self;
  v13.super_class = TNPageContentLayout;
  [(TNPageContentLayout *)&v13 validate];
  v5 = objc_msgSend_pageLayout(self, v3, v4);
  v8 = objc_msgSend_pageCoordinate(v5, v6, v7);
  v11 = objc_msgSend_pageController(v5, v9, v10);
  self->_pageNumber = objc_msgSend_pageNumberForPageCoordinate_(v11, v12, v8);
}

- (id)computeLayoutGeometry
{
  v3 = objc_alloc(MEMORY[0x277D80300]);
  v6 = objc_msgSend_pageLayout(self, v4, v5);
  objc_msgSend_contentFrame(v6, v7, v8);
  v11 = objc_msgSend_initWithFrame_(v3, v9, v10);

  return v11;
}

- (unint64_t)pageCount
{
  v3 = objc_msgSend_pageLayout(self, a2, v2);
  v6 = objc_msgSend_pageController(v3, v4, v5);

  v9 = objc_msgSend_numPages(v6, v7, v8);
  return v9;
}

- (TNPageLayoutContainer)pageLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_pageLayout);

  return WeakRetained;
}

@end