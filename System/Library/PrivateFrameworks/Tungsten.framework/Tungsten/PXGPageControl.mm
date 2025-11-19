@interface PXGPageControl
- (CGRect)clippingRect;
- (PXGPageControl)initWithFrame:(CGRect)a3;
- (void)_valueChanged:(id)a3;
- (void)setUserData:(id)a3;
@end

@implementation PXGPageControl

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_userData != v4)
  {
    v9 = v4;
    v6 = [(PXGPageControlConfiguration *)v4 isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXGPageControlConfiguration *)v9 copy];
      userData = self->_userData;
      self->_userData = v7;

      [(PXGPageControl *)self setNumberOfPages:[(PXGPageControlConfiguration *)self->_userData numberOfPages]];
      [(PXGPageControl *)self setCurrentPage:[(PXGPageControlConfiguration *)self->_userData currentPage]];
      [(PXGPageControl *)self setHidesForSinglePage:[(PXGPageControlConfiguration *)self->_userData hidesForSinglePage]];
      v5 = v9;
    }
  }
}

- (void)_valueChanged:(id)a3
{
  v4 = [(PXGPageControlConfiguration *)self->_userData target];
  if (v4)
  {
    v5 = v4;
    v6 = [(PXGPageControlConfiguration *)self->_userData action];

    if (v6)
    {
      v7 = [(PXGPageControlConfiguration *)self->_userData target];
      [v7 performSelector:-[PXGPageControlConfiguration action](self->_userData withObject:{"action"), self}];
    }
  }
}

- (PXGPageControl)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXGPageControl;
  v3 = [(PXGPageControl *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D757E0]);
    [(PXGPageControl *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    pageControl = v3->_pageControl;
    v3->_pageControl = v5;

    [(UIPageControl *)v3->_pageControl setAutoresizingMask:18];
    [(UIPageControl *)v3->_pageControl addTarget:v3 action:sel__valueChanged_ forControlEvents:4096];
    [(PXGPageControl *)v3 addSubview:v3->_pageControl];
  }

  return v3;
}

@end