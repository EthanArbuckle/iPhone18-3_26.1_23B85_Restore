@interface SWCChatterboxResolver
@end

@implementation SWCChatterboxResolver

void __41___SWCChatterboxResolver_Private___queue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;

  [_MergedGlobals_1 setMaxConcurrentOperationCount:1];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SWC Chatterbox resolution queue"];
  [_MergedGlobals_1 setName:?];

  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("SWC Chatterbox resolution queue (U)", v2);

  if (v4)
  {
    [_MergedGlobals_1 setUnderlyingQueue:v4];
  }
}

@end