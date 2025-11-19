@interface UIAccessibilityQueueNotification
@end

@implementation UIAccessibilityQueueNotification

uint64_t ___UIAccessibilityQueueNotification_block_invoke()
{
  _QueuedNotificationsLock = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

@end