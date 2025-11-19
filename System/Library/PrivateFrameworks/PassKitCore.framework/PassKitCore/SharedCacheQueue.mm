@interface SharedCacheQueue
@end

@implementation SharedCacheQueue

void ___SharedCacheQueue_block_invoke()
{
  v0 = dispatch_queue_create("passd_cache_queue", 0);
  v1 = qword_1ED6D1658;
  qword_1ED6D1658 = v0;
}

@end