@interface PXGPointReference
- (CGPoint)point;
- (PXGLayout)layout;
- (PXGPointReference)init;
- (PXGPointReference)initWithPoint:(CGPoint)point layout:(id)layout;
- (void)invalidate;
@end

@implementation PXGPointReference

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)invalidate
{
  self->_isValid = 0;
  layout = [(PXGPointReference *)self layout];
  [layout removePointReference:self];
}

- (PXGPointReference)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPointReference.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXGPointReference init]"}];

  abort();
}

- (PXGPointReference)initWithPoint:(CGPoint)point layout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = PXGPointReference;
  v8 = [(PXGPointReference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_point.x = x;
    v8->_point.y = y;
    objc_storeWeak(&v8->_layout, layoutCopy);
    v9->_isValid = 1;
  }

  return v9;
}

@end