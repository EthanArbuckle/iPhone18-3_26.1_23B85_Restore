@interface UIProtocolCreationQueue
@end

@implementation UIProtocolCreationQueue

void ___UIProtocolCreationQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.uikit.protocol-creation-queue", 0);
  v1 = _MergedGlobals_1370;
  _MergedGlobals_1370 = v0;
}

@end