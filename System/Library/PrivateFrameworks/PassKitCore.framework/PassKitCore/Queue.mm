@interface Queue
@end

@implementation Queue

void ___Queue_block_invoke()
{
  v0 = dispatch_queue_create("user-notification-queue", 0);
  v1 = _MergedGlobals_276;
  _MergedGlobals_276 = v0;
}

@end