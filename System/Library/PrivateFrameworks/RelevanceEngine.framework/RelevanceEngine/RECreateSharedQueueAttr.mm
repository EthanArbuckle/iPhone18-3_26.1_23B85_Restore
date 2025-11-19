@interface RECreateSharedQueueAttr
@end

@implementation RECreateSharedQueueAttr

uint64_t ___RECreateSharedQueueAttr_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.RelevanceEngine.SharedQueue", 0);
  v1 = _RECreateSharedQueueAttr_SharedQueue;
  _RECreateSharedQueueAttr_SharedQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end