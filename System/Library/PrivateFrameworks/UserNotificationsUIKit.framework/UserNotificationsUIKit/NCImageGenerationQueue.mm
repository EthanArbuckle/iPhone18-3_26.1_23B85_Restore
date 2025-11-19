@interface NCImageGenerationQueue
@end

@implementation NCImageGenerationQueue

void ___NCImageGenerationQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.UserNotificationsUI.IconGenerationQueue", v2);
  v1 = _NCImageGenerationQueue_imageQueue;
  _NCImageGenerationQueue_imageQueue = v0;
}

@end