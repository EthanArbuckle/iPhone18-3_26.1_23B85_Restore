@interface TIQueueLow
@end

@implementation TIQueueLow

void ___TIQueueLow_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create(0, v2);
  v1 = _TIQueueLow::sQueue;
  _TIQueueLow::sQueue = v0;
}

@end