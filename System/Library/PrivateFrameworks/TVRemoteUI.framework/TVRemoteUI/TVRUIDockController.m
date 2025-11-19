@interface TVRUIDockController
- (TVRUIDockController)initWithHostingViewController:(id)a3 actionProvider:(id)a4 upNextProvider:(id)a5 nowPlayingProvider:(id)a6 layoutHandler:(id)a7;
- (TVRUIDockLayoutManager)layoutManager;
- (void)setDevice:(id)a3;
- (void)setStyleProvider:(id)a3;
@end

@implementation TVRUIDockController

- (TVRUIDockController)initWithHostingViewController:(id)a3 actionProvider:(id)a4 upNextProvider:(id)a5 nowPlayingProvider:(id)a6 layoutHandler:(id)a7
{
  v26 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = TVRUIDockController;
  v17 = [(TVRUIDockController *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_hostingViewController, a3);
    objc_storeStrong(&v18->_actionProvider, a4);
    objc_storeStrong(&v18->_upNextProvider, a5);
    objc_storeStrong(&v18->_nowPlayingProvider, a6);
    v19 = _Block_copy(v16);
    layoutHandler = v18->_layoutHandler;
    v18->_layoutHandler = v19;

    v21 = [[TVRUIDockViewController alloc] initWithNibName:0 bundle:0];
    viewController = v18->_viewController;
    v18->_viewController = v21;

    v23 = objc_alloc_init(TVRUILaunchableAppsController);
    launchableAppsController = v18->_launchableAppsController;
    v18->_launchableAppsController = v23;

    [(TVRUIDockViewController *)v18->_viewController setLaunchableAppsController:v18->_launchableAppsController];
    [(TVRUIDockViewController *)v18->_viewController setActionProvider:v13];
    [(TVRUIDockViewController *)v18->_viewController setUpNextProvider:v14];
    [(TVRUIDockViewController *)v18->_viewController setNowPlayingProvider:v15];
    [(TVRUIDockViewController *)v18->_viewController setLayoutHandler:v16];
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
    v5 = [(TVRUIDockController *)self hostingViewController];
    v6 = [v5 view];
    v7 = [(TVRUIDockLayoutManager *)v4 initWithDockHostingView:v6 dockInfoProvider:self->_viewController];
    v8 = self->_layoutManager;
    self->_layoutManager = v7;

    layoutManager = self->_layoutManager;
  }

  return layoutManager;
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  v6 = [v5 isEqualToDevice:self->_device];
  objc_storeStrong(&self->_device, a3);
  if ((v6 & 1) == 0)
  {
    v7 = [(TVRUIDockController *)self launchableAppsController];
    [v7 setDevice:v5];

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

- (void)setStyleProvider:(id)a3
{
  objc_storeStrong(&self->_styleProvider, a3);
  v5 = a3;
  v6 = [(TVRUIDockController *)self viewController];
  [v6 setStyleProvider:v5];
}

@end