@interface SBDeviceApplicationMomentsUIViewProvider
- (BOOL)handledStatusBarTap:(id)a3 type:(int64_t)a4;
- (id)acquireSystemUIScenePresentingAssertion;
- (id)dismissScene:(id)a3;
- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4;
@end

@implementation SBDeviceApplicationMomentsUIViewProvider

- (id)acquireSystemUIScenePresentingAssertion
{
  v3 = [SBApp systemUIScenesCoordinator];
  v4 = [v3 momentsUISceneController];
  v5 = [v4 addPresenter:self];

  return v5;
}

- (id)presentScene:(id)a3 viewControllerBuilderBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_storeWeak(&self->_presentedScene, v7);
  v10.receiver = self;
  v10.super_class = SBDeviceApplicationMomentsUIViewProvider;
  v8 = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)&v10 presentScene:v7 viewControllerBuilderBlock:v6];

  return v8;
}

- (id)dismissScene:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_presentedScene, 0);
  v7.receiver = self;
  v7.super_class = SBDeviceApplicationMomentsUIViewProvider;
  v5 = [(SBDeviceApplicationSystemUISceneAbstractViewProvider *)&v7 dismissScene:v4];

  return v5;
}

- (BOOL)handledStatusBarTap:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  if (a4 || ![(SBDeviceApplicationSystemUISceneAbstractViewProvider *)self isActive])
  {
    LOBYTE(WeakRetained) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentedScene);
    if (WeakRetained)
    {
      v8 = [(SBDeviceApplicationSceneOverlayViewProvider *)self overlayViewController];
      v9 = [v8 view];
      [v6 locationInView:v9];
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