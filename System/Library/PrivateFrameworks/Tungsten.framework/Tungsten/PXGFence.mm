@interface PXGFence
- (PXGFence)init;
- (PXGFence)initWithLayout:(id)a3 type:(unint64_t)a4;
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGFence.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXGFence init]"}];

  abort();
}

- (PXGFence)initWithLayout:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PXGFence;
  v7 = [(PXGFence *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_layout, v6);
    v8->_type = a4;
  }

  return v8;
}

@end