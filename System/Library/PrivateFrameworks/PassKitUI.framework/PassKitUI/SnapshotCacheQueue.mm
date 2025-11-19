@interface SnapshotCacheQueue
@end

@implementation SnapshotCacheQueue

void ___SnapshotCacheQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.passkit.snapshotcache", 0);
  v1 = qword_1EBD6AD28;
  qword_1EBD6AD28 = v0;
}

@end