@interface PXVisualIntelligenceRequest
@end

@implementation PXVisualIntelligenceRequest

void __39___PXVisualIntelligenceRequest_dealloc__block_invoke()
{
  v0 = [MEMORY[0x1E6984688] globalSession];
  [v0 releaseCachedResources];
}

void __45___PXVisualIntelligenceRequest_teardownQueue__block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.photos.vi_teardownQueue", v0);
  v2 = teardownQueue_queue;
  teardownQueue_queue = v1;
}

@end