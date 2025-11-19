@interface SVXServiceCommandDelayedActionStoreProvider
- (id)create;
@end

@implementation SVXServiceCommandDelayedActionStoreProvider

- (id)create
{
  v2 = objc_alloc_init(SVXServiceCommandDelayedActionStore);

  return v2;
}

@end