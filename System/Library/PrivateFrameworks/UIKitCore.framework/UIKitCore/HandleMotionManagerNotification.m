@interface HandleMotionManagerNotification
@end

@implementation HandleMotionManagerNotification

void ___HandleMotionManagerNotification_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) consumer];
  [v2 updateEventProviderStatus:*(a1 + 40)];
}

@end