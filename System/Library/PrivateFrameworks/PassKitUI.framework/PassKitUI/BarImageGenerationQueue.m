@interface BarImageGenerationQueue
@end

@implementation BarImageGenerationQueue

void ___BarImageGenerationQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.passkitui.bar.generation", v2);
  v1 = _MergedGlobals_2_2;
  _MergedGlobals_2_2 = v0;
}

@end