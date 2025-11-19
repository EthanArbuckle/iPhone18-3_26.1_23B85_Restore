@interface PXGPointReference
- (CGPoint)point;
- (PXGLayout)layout;
- (PXGPointReference)init;
- (PXGPointReference)initWithPoint:(CGPoint)a3 layout:(id)a4;
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
  v3 = [(PXGPointReference *)self layout];
  [v3 removePointReference:self];
}

- (PXGPointReference)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGPointReference.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXGPointReference init]"}];

  abort();
}

- (PXGPointReference)initWithPoint:(CGPoint)a3 layout:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PXGPointReference;
  v8 = [(PXGPointReference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_point.x = x;
    v8->_point.y = y;
    objc_storeWeak(&v8->_layout, v7);
    v9->_isValid = 1;
  }

  return v9;
}

@end