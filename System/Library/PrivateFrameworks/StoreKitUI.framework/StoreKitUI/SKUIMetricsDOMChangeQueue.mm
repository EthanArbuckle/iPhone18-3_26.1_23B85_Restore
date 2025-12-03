@interface SKUIMetricsDOMChangeQueue
- (SKUIMetricsDOMChangeQueue)init;
- (id)oldestPendingChange;
- (void)addPendingChange:(id)change;
- (void)init;
@end

@implementation SKUIMetricsDOMChangeQueue

- (SKUIMetricsDOMChangeQueue)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIMetricsDOMChangeQueue init];
  }

  v7.receiver = self;
  v7.super_class = SKUIMetricsDOMChangeQueue;
  v3 = [(SKUIMetricsDOMChangeQueue *)&v7 init];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    storage = v3->_storage;
    v3->_storage = v4;
  }

  return v3;
}

- (void)addPendingChange:(id)change
{
  changeCopy = change;
  if ([(SKUIMetricsDOMChangeQueue *)self isEmpty])
  {
    goto LABEL_14;
  }

  lastObject = [(NSMutableArray *)self->_storage lastObject];
  if (![lastObject isFromDeferredMessage] || !objc_msgSend(changeCopy, "isFromDeferredMessage"))
  {

LABEL_14:
    storage = self->_storage;
    lastObject = [changeCopy copy];
    [(NSMutableArray *)storage addObject:lastObject];
    goto LABEL_15;
  }

  [lastObject buildStartTime];
  v6 = v5;
  [changeCopy buildStartTime];
  if (v6 < v7 != fmin(v6, v7) < 2.22044605e-16)
  {
    v7 = v6;
  }

  [lastObject setBuildStartTime:v7];
  [lastObject buildEndTime];
  v9 = v8;
  [changeCopy buildEndTime];
  if (v9 >= v10)
  {
    v10 = v9;
  }

  [lastObject setBuildEndTime:v10];
  [lastObject renderStartTime];
  v12 = v11;
  [changeCopy renderStartTime];
  if (v12 < v13 != fmin(v12, v13) < 2.22044605e-16)
  {
    v13 = v12;
  }

  [lastObject setRenderStartTime:v13];
  [lastObject renderEndTime];
  v15 = v14;
  [changeCopy renderEndTime];
  if (v15 >= v16)
  {
    v16 = v15;
  }

  [lastObject setRenderEndTime:v16];
LABEL_15:
}

- (id)oldestPendingChange
{
  if ([(NSMutableArray *)self->_storage count])
  {
    firstObject = [(NSMutableArray *)self->_storage firstObject];
    [(NSMutableArray *)self->_storage removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsDOMChangeQueue init]";
}

@end