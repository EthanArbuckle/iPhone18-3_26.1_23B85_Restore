@interface SBIsolatedSceneOrientationFollowingView
- (SBIsolatedSceneOrientationFollowingView)initWithWrapperViewController:(id)a3 contentNeedsCounterRotation:(BOOL)a4 delegate:(id)a5;
- (void)containingSceneWillRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 animationSettings:(id)a5;
@end

@implementation SBIsolatedSceneOrientationFollowingView

- (SBIsolatedSceneOrientationFollowingView)initWithWrapperViewController:(id)a3 contentNeedsCounterRotation:(BOOL)a4 delegate:(id)a5
{
  v6 = a4;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SBIsolatedSceneOrientationFollowingView;
  v9 = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)&v12 initWithFrame:v6 contentNeedsCounterRotation:a5 delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_wrapperViewController, v8);
  }

  return v10;
}

- (void)containingSceneWillRotateFromInterfaceOrientation:(int64_t)a3 toInterfaceOrientation:(int64_t)a4 animationSettings:(id)a5
{
  v10.receiver = self;
  v10.super_class = SBIsolatedSceneOrientationFollowingView;
  v8 = a5;
  [(SBDeviceApplicationCounterRotatableSceneOverlayView *)&v10 containingSceneWillRotateFromInterfaceOrientation:a3 toInterfaceOrientation:a4 animationSettings:v8];
  WeakRetained = objc_loadWeakRetained(&self->_wrapperViewController);
  [WeakRetained _containerViewWillRotateFromInterfaceOrientation:a3 toInterfaceOrientation:a4 withAnimationSettings:{v8, v10.receiver, v10.super_class}];
}

@end