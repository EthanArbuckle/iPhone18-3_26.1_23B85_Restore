@interface UILabelMarqueeAnimationDelegate
@end

@implementation UILabelMarqueeAnimationDelegate

void __62___UILabelMarqueeAnimationDelegate_animationDidStop_finished___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 9) & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = _UILabelMarqueeEndedNotification;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v3 postNotificationName:v4 object:WeakRetained userInfo:0];

    v6 = objc_loadWeakRetained((*(a1 + 32) + 16));
    objc_setAssociatedObject(v6, &__marqueeAnimationDelegateKey, 0, 1);
  }
}

void __62___UILabelMarqueeAnimationDelegate_animationDidStop_finished___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained setMarqueeRunning:0];
}

@end