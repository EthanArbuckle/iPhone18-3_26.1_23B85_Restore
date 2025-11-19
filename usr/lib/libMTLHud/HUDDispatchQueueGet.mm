@interface HUDDispatchQueueGet
@end

@implementation HUDDispatchQueueGet

void ___HUDDispatchQueueGet_block_invoke(id a1)
{
  v1 = dispatch_queue_create("com.apple.libMTLHud", 0);
  v2 = _HUDDispatchQueueGet_queue;
  _HUDDispatchQueueGet_queue = v1;

  _objc_release_x1(v1, v2);
}

@end