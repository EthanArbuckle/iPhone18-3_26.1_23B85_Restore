@interface UIAccessibilityBlockPostingOfNotification
@end

@implementation UIAccessibilityBlockPostingOfNotification

uint64_t ___UIAccessibilityBlockPostingOfNotification_block_invoke()
{
  _BlockNotificationsLock = objc_alloc_init(MEMORY[0x1E696AD10]);

  return MEMORY[0x1EEE66BB8]();
}

@end