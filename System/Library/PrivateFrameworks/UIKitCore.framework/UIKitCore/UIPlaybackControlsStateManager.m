@interface UIPlaybackControlsStateManager
@end

@implementation UIPlaybackControlsStateManager

void __66___UIPlaybackControlsStateManager__beginFullscreenPlaybackSession__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] removeObject:v5];
    [(_UIPlaybackControlsStateManager *)v4 _updateState];
  }
}

void __67___UIPlaybackControlsStateManager__beginPresentingPlaybackControls__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] removeObject:v5];
    [(_UIPlaybackControlsStateManager *)v4 _updateState];
  }
}

@end