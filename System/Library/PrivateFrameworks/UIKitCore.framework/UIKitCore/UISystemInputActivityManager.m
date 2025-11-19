@interface UISystemInputActivityManager
@end

@implementation UISystemInputActivityManager

void __65___UISystemInputActivityManager_beginTrackingSystemInputActivity__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateClientSettingsSystemInputActive:0];
}

@end