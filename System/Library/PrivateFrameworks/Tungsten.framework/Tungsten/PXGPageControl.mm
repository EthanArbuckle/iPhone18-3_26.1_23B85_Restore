@interface PXGPageControl
- (CGRect)clippingRect;
- (PXGPageControl)initWithFrame:(CGRect)frame;
- (void)_valueChanged:(id)changed;
- (void)setUserData:(id)data;
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

- (void)setUserData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self->_userData != dataCopy)
  {
    v9 = dataCopy;
    v6 = [(PXGPageControlConfiguration *)dataCopy isEqual:?];
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

- (void)_valueChanged:(id)changed
{
  target = [(PXGPageControlConfiguration *)self->_userData target];
  if (target)
  {
    v5 = target;
    action = [(PXGPageControlConfiguration *)self->_userData action];

    if (action)
    {
      target2 = [(PXGPageControlConfiguration *)self->_userData target];
      [target2 performSelector:-[PXGPageControlConfiguration action](self->_userData withObject:{"action"), self}];
    }
  }
}

- (PXGPageControl)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXGPageControl;
  v3 = [(PXGPageControl *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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