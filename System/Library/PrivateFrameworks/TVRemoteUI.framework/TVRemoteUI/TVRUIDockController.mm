@interface TVRUIDockController
- (TVRUIDockController)initWithHostingViewController:(id)controller actionProvider:(id)provider upNextProvider:(id)nextProvider nowPlayingProvider:(id)playingProvider layoutHandler:(id)handler;
- (TVRUIDockLayoutManager)layoutManager;
- (void)setDevice:(id)device;
- (void)setStyleProvider:(id)provider;
@end

@implementation TVRUIDockController

- (TVRUIDockController)initWithHostingViewController:(id)controller actionProvider:(id)provider upNextProvider:(id)nextProvider nowPlayingProvider:(id)playingProvider layoutHandler:(id)handler
{
  controllerCopy = controller;
  providerCopy = provider;
  nextProviderCopy = nextProvider;
  playingProviderCopy = playingProvider;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = TVRUIDockController;
  v17 = [(TVRUIDockController *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_hostingViewController, controller);
    objc_storeStrong(&v18->_actionProvider, provider);
    objc_storeStrong(&v18->_upNextProvider, nextProvider);
    objc_storeStrong(&v18->_nowPlayingProvider, playingProvider);
    v19 = _Block_copy(handlerCopy);
    layoutHandler = v18->_layoutHandler;
    v18->_layoutHandler = v19;

    v21 = [[TVRUIDockViewController alloc] initWithNibName:0 bundle:0];
    viewController = v18->_viewController;
    v18->_viewController = v21;

    v23 = objc_alloc_init(TVRUILaunchableAppsController);
    launchableAppsController = v18->_launchableAppsController;
    v18->_launchableAppsController = v23;

    [(TVRUIDockViewController *)v18->_viewController setLaunchableAppsController:v18->_launchableAppsController];
    [(TVRUIDockViewController *)v18->_viewController setActionProvider:providerCopy];
    [(TVRUIDockViewController *)v18->_viewController setUpNextProvider:nextProviderCopy];
    [(TVRUIDockViewController *)v18->_viewController setNowPlayingProvider:playingProviderCopy];
    [(TVRUIDockViewController *)v18->_viewController setLayoutHandler:handlerCopy];
    [(TVRUIDockController *)v18 setEnabled:1];
  }

  return v18;
}

- (TVRUIDockLayoutManager)layoutManager
{
  layoutManager = self->_layoutManager;
  if (!layoutManager)
  {
    v4 = [TVRUIDockLayoutManager alloc];
    hostingViewController = [(TVRUIDockController *)self hostingViewController];
    view = [hostingViewController view];
    v7 = [(TVRUIDockLayoutManager *)v4 initWithDockHostingView:view dockInfoProvider:self->_viewController];
    v8 = self->_layoutManager;
    self->_layoutManager = v7;

    layoutManager = self->_layoutManager;
  }

  return layoutManager;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  v6 = [deviceCopy isEqualToDevice:self->_device];
  objc_storeStrong(&self->_device, device);
  if ((v6 & 1) == 0)
  {
    launchableAppsController = [(TVRUIDockController *)self launchableAppsController];
    [launchableAppsController setDevice:deviceCopy];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__TVRUIDockController_setDevice___block_invoke;
    block[3] = &unk_279D87C20;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __33__TVRUIDockController_setDevice___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewController];
  [v1 resetContentAnimated:0];
}

- (void)setStyleProvider:(id)provider
{
  objc_storeStrong(&self->_styleProvider, provider);
  providerCopy = provider;
  viewController = [(TVRUIDockController *)self viewController];
  [viewController setStyleProvider:providerCopy];
}

@end