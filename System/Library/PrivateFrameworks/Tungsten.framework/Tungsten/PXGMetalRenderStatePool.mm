@interface PXGMetalRenderStatePool
- (PXGMetalRenderStatePool)initWithDevice:(id)device queue:(id)queue;
- (id)checkoutRenderState;
- (void)_checkinRenderState:(id)state;
- (void)clearReusePool;
- (void)setDevice:(id)device;
@end

@implementation PXGMetalRenderStatePool

- (id)checkoutRenderState
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = self->_device;
  if (v3)
  {
    px_popFirst = [(NSMutableArray *)self->_reusableRenderStates px_popFirst];
    if (!px_popFirst)
    {
      px_popFirst = [[PXGReusableMetalRenderState alloc] initWithDevice:self->_device];
    }

    v5 = [[PXGMetalRenderStatePoolEntry alloc] initWithReusableRenderState:px_popFirst pool:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_checkinRenderState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_queue);
  device = [stateCopy device];
  device = self->_device;

  if (device == device)
  {
    [(NSMutableArray *)self->_reusableRenderStates addObject:stateCopy];
  }
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  if (self->_device != deviceCopy)
  {
    v6 = deviceCopy;
    objc_storeStrong(&self->_device, device);
    [(PXGMetalRenderStatePool *)self clearReusePool];
    deviceCopy = v6;
  }
}

- (void)clearReusePool
{
  dispatch_assert_queue_V2(self->_queue);
  reusableRenderStates = self->_reusableRenderStates;

  [(NSMutableArray *)reusableRenderStates removeAllObjects];
}

- (PXGMetalRenderStatePool)initWithDevice:(id)device queue:(id)queue
{
  deviceCopy = device;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = PXGMetalRenderStatePool;
  v9 = [(PXGMetalRenderStatePool *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_queue, queue);
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    reusableRenderStates = v10->_reusableRenderStates;
    v10->_reusableRenderStates = v11;
  }

  return v10;
}

@end