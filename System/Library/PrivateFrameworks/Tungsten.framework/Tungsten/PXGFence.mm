@interface PXGFence
- (PXGFence)init;
- (PXGFence)initWithLayout:(id)layout type:(unint64_t)type;
- (PXGLayout)layout;
@end

@implementation PXGFence

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (PXGFence)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGFence.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXGFence init]"}];

  abort();
}

- (PXGFence)initWithLayout:(id)layout type:(unint64_t)type
{
  layoutCopy = layout;
  v10.receiver = self;
  v10.super_class = PXGFence;
  v7 = [(PXGFence *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_layout, layoutCopy);
    v8->_type = type;
  }

  return v8;
}

@end