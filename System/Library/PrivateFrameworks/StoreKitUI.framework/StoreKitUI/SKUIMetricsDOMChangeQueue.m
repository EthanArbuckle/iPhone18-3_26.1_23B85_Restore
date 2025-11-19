@interface SKUIMetricsDOMChangeQueue
- (SKUIMetricsDOMChangeQueue)init;
- (id)oldestPendingChange;
- (void)addPendingChange:(id)a3;
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

- (void)addPendingChange:(id)a3
{
  v18 = a3;
  if ([(SKUIMetricsDOMChangeQueue *)self isEmpty])
  {
    goto LABEL_14;
  }

  v4 = [(NSMutableArray *)self->_storage lastObject];
  if (![v4 isFromDeferredMessage] || !objc_msgSend(v18, "isFromDeferredMessage"))
  {

LABEL_14:
    storage = self->_storage;
    v4 = [v18 copy];
    [(NSMutableArray *)storage addObject:v4];
    goto LABEL_15;
  }

  [v4 buildStartTime];
  v6 = v5;
  [v18 buildStartTime];
  if (v6 < v7 != fmin(v6, v7) < 2.22044605e-16)
  {
    v7 = v6;
  }

  [v4 setBuildStartTime:v7];
  [v4 buildEndTime];
  v9 = v8;
  [v18 buildEndTime];
  if (v9 >= v10)
  {
    v10 = v9;
  }

  [v4 setBuildEndTime:v10];
  [v4 renderStartTime];
  v12 = v11;
  [v18 renderStartTime];
  if (v12 < v13 != fmin(v12, v13) < 2.22044605e-16)
  {
    v13 = v12;
  }

  [v4 setRenderStartTime:v13];
  [v4 renderEndTime];
  v15 = v14;
  [v18 renderEndTime];
  if (v15 >= v16)
  {
    v16 = v15;
  }

  [v4 setRenderEndTime:v16];
LABEL_15:
}

- (id)oldestPendingChange
{
  if ([(NSMutableArray *)self->_storage count])
  {
    v3 = [(NSMutableArray *)self->_storage firstObject];
    [(NSMutableArray *)self->_storage removeObjectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIMetricsDOMChangeQueue init]";
}

@end