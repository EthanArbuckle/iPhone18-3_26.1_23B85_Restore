@interface OpusMarimbaProducerContext
+ (void)initialize;
- (OpusMarimbaProducerContext)init;
- (void)dealloc;
@end

@implementation OpusMarimbaProducerContext

+ (void)initialize
{
  global_queue = dispatch_get_global_queue(25, 0);

  dispatch_async(global_queue, &stru_1AAEB0);
}

- (OpusMarimbaProducerContext)init
{
  v4.receiver = self;
  v4.super_class = OpusMarimbaProducerContext;
  v2 = [(OpusMarimbaProducerContext *)&v4 init];
  if (v2)
  {
    v2->_synopsisGroups = objc_alloc_init(NSMutableArray);
  }

  return v2;
}

- (void)dealloc
{
  synopsisGroups = self->_synopsisGroups;
  if (synopsisGroups)
  {

    self->_synopsisGroups = 0;
  }

  v4.receiver = self;
  v4.super_class = OpusMarimbaProducerContext;
  [(OpusMarimbaProducerContext *)&v4 dealloc];
}

@end