@interface PXGMetalRenderStatePool
- (PXGMetalRenderStatePool)initWithDevice:(id)a3 queue:(id)a4;
- (id)checkoutRenderState;
- (void)_checkinRenderState:(id)a3;
- (void)clearReusePool;
- (void)setDevice:(id)a3;
@end

@implementation PXGMetalRenderStatePool

- (id)checkoutRenderState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_device;
  if (v3)
  {
    v4 = [(NSMutableArray *)self->_reusableRenderStates px_popFirst];
    if (!v4)
    {
      v4 = [[PXGReusableMetalRenderState alloc] initWithDevice:self->_device];
    }

    v5 = [[PXGMetalRenderStatePoolEntry alloc] initWithReusableRenderState:v4 pool:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_checkinRenderState:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v4 = [v6 device];
  device = self->_device;

  if (v4 == device)
  {
    [(NSMutableArray *)self->_reusableRenderStates addObject:v6];
  }
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  if (self->_device != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_device, a3);
    [(PXGMetalRenderStatePool *)self clearReusePool];
    v5 = v6;
  }
}

- (void)clearReusePool
{
  dispatch_assert_queue_V2(self->_queue);
  reusableRenderStates = self->_reusableRenderStates;

  [(NSMutableArray *)reusableRenderStates removeAllObjects];
}

- (PXGMetalRenderStatePool)initWithDevice:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PXGMetalRenderStatePool;
  v9 = [(PXGMetalRenderStatePool *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_queue, a4);
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    reusableRenderStates = v10->_reusableRenderStates;
    v10->_reusableRenderStates = v11;
  }

  return v10;
}

@end