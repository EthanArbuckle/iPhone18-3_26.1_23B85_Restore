@interface TIQueueUserInitiated
@end

@implementation TIQueueUserInitiated

void ___TIQueueUserInitiated_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create(0, v2);
  v1 = _TIQueueUserInitiated::sQueue;
  _TIQueueUserInitiated::sQueue = v0;
}

@end