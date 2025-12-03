@interface SBDeviceApplicationMomentsUIViewProvider
- (BOOL)handledStatusBarTap:(id)tap type:(int64_t)type;
- (id)acquireSystemUIScenePresentingAssertion;
- (id)dismissScene:(id)scene;
- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block;
@end

@implementation SBDeviceApplicationMomentsUIViewProvider

- (id)acquireSystemUIScenePresentingAssertion
{
  systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
  momentsUISceneController = [systemUIScenesCoordinator momentsUISceneController];
  v5 = [momentsUISceneController addPresenter:self];

  return v5;
}

- (id)presentScene:(id)scene viewControllerBuilderBlock:(id)block
{
  blockCopy = block;
  sceneCopy = scene;
  objc_storeWeak(&self->_presentedScene, sceneCopy);
  v10.receiver = self;
  v10.super_class = SBDeviceApplicationMomentsUIViewProvider;
  v8 = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)&v10 presentScene:sceneCopy viewControllerBuilderBlock:blockCopy];

  return v8;
}

- (id)dismissScene:(id)scene
{
  sceneCopy = scene;
  objc_storeWeak(&self->_presentedScene, 0);
  v7.receiver = self;
  v7.super_class = SBDeviceApplicationMomentsUIViewProvider;
  v5 = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)&v7 dismissScene:sceneCopy];

  return v5;
}

- (BOOL)handledStatusBarTap:(id)tap type:(int64_t)type
{
  tapCopy = tap;
  if (type || ![(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self isActive])
  {
    LOBYTE(WeakRetained) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentedScene);
    if (WeakRetained)
    {
      overlayViewController = [(SBDeviceApplicationSceneOverlayViewProvider *)self overlayViewController];
      view = [overlayViewController view];
      [tapCopy locationInView:view];
      v11 = v10;

      v12 = [objc_alloc(MEMORY[0x277D75AB0]) initWithType:0 xPosition:v11];
      v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
      [WeakRetained sendActions:v13];

      LOBYTE(WeakRetained) = 1;
    }
  }

  return WeakRetained;
}

@end