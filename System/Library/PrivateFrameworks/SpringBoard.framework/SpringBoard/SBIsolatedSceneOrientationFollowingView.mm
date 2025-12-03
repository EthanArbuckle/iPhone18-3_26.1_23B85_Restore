@interface SBIsolatedSceneOrientationFollowingView
- (SBIsolatedSceneOrientationFollowingView)initWithWrapperViewController:(id)controller contentNeedsCounterRotation:(BOOL)rotation delegate:(id)delegate;
- (void)containingSceneWillRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation animationSettings:(id)settings;
@end

@implementation SBIsolatedSceneOrientationFollowingView

- (SBIsolatedSceneOrientationFollowingView)initWithWrapperViewController:(id)controller contentNeedsCounterRotation:(BOOL)rotation delegate:(id)delegate
{
  rotationCopy = rotation;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SBIsolatedSceneOrientationFollowingView;
  v9 = [(SBDeviceApplicationCounterRotatableSceneOverlayView *)&v12 initWithFrame:rotationCopy contentNeedsCounterRotation:delegate delegate:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_wrapperViewController, controllerCopy);
  }

  return v10;
}

- (void)containingSceneWillRotateFromInterfaceOrientation:(int64_t)orientation toInterfaceOrientation:(int64_t)interfaceOrientation animationSettings:(id)settings
{
  v10.receiver = self;
  v10.super_class = SBIsolatedSceneOrientationFollowingView;
  settingsCopy = settings;
  [(SBDeviceApplicationCounterRotatableSceneOverlayView *)&v10 containingSceneWillRotateFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation animationSettings:settingsCopy];
  WeakRetained = objc_loadWeakRetained(&self->_wrapperViewController);
  [WeakRetained _containerViewWillRotateFromInterfaceOrientation:orientation toInterfaceOrientation:interfaceOrientation withAnimationSettings:{settingsCopy, v10.receiver, v10.super_class}];
}

@end