@interface TVRUIDockViewController
- (TVRUIActionProviding)actionProvider;
- (TVRUIDockViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TVRUINowPlayingProviding)nowPlayingProvider;
- (TVRUIUpNextProviding)upNextProvider;
- (_TVRUIEventDelegate)buttonActionsDelegate;
- (void)_invokeLayoutHandlerIfNeeded;
- (void)_nowPlayingInfoDidChange:(id)a3;
- (void)_updateNowPlayingInfo:(id)a3 previousNowPlayingInfo:(id)a4;
- (void)configureHierarchy;
- (void)dealloc;
- (void)resetContentAnimated:(BOOL)a3;
- (void)selectViewControllerIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setStyleProvider:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TVRUIDockViewController

- (TVRUIDockViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v21[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[TVRUIUpNextViewController alloc] initWithNibName:0 bundle:0];
  [(TVRUIUpNextViewController *)v8 setMode:2];
  v9 = [[TVRUIAppLauncherStackViewController alloc] initWithNibName:0 bundle:0];
  v10 = [[TVRUINowPlayingMiniPlayerViewController alloc] initWithNibName:0 bundle:0];
  [(TVRUINowPlayingMiniPlayerViewController *)v10 setHorizontalMode:1];
  v11 = [[TVRUICastViewController alloc] initWithNibName:0 bundle:0];
  [(TVRUICastViewController *)v11 setHorizontalMode:1];
  v21[0] = v9;
  v21[1] = v8;
  v21[2] = v10;
  v21[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v20.receiver = self;
  v20.super_class = TVRUIDockViewController;
  v13 = [(TVRUIStackViewController *)&v20 initWithViewControllers:v12];

  if (v13)
  {
    [(TVRUIDockViewController *)v13 setUpNextViewController:v8];
    [(TVRUIDockViewController *)v13 setAppLauncherViewController:v9];
    [(TVRUIDockViewController *)v13 setNowPlayingViewController:v10];
    [(TVRUIDockViewController *)v13 setCastViewController:v11];
    v14 = objc_alloc_init(TVRUIDockPreferredStackController);
    [(TVRUIDockViewController *)v13 setDockPreferredStackController:v14];

    objc_initWeak(&location, v13);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__TVRUIDockViewController_initWithNibName_bundle___block_invoke;
    v17[3] = &unk_279D87BD0;
    objc_copyWeak(&v18, &location);
    v15 = [(TVRUIDockViewController *)v13 dockPreferredStackController];
    [v15 setPreferredStackDidChangeHandler:v17];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __50__TVRUIDockViewController_initWithNibName_bundle___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained selectViewControllerIndex:a2 animated:1];
}

- (void)resetContentAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(TVRUIDockViewController *)self upNextViewController];
  [v5 resetContent];

  v6 = [(TVRUIDockViewController *)self appLauncherViewController];
  [v6 resetContent];

  v7 = [(TVRUIDockViewController *)self nowPlayingViewController];
  [v7 resetContent];

  v8 = [(TVRUIDockViewController *)self castViewController];
  [v8 resetContent];

  v9 = [(TVRUIDockViewController *)self dockPreferredStackController];
  -[TVRUIDockViewController selectViewControllerIndex:animated:](self, "selectViewControllerIndex:animated:", [v9 currentStackIndex], v3);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVRUIDockViewController;
  [(TVRUIDockViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = TVRUIDockViewController;
  [(TVRUIStackViewController *)&v22 viewDidLoad];
  v3 = [(TVRUIDockViewController *)self upNextProvider];
  v4 = [(TVRUIDockViewController *)self upNextViewController];
  [v4 setUpNextProvider:v3];

  v5 = [(TVRUIDockViewController *)self actionProvider];
  v6 = [(TVRUIDockViewController *)self upNextViewController];
  [v6 setActionProvider:v5];

  v7 = [(TVRUIDockViewController *)self nowPlayingProvider];
  v8 = [(TVRUIDockViewController *)self upNextViewController];
  [v8 setNowPlayingProvider:v7];

  v9 = [(TVRUIDockViewController *)self styleProvider];
  v10 = [(TVRUIDockViewController *)self appLauncherViewController];
  [v10 setStyleProvider:v9];

  v11 = [(TVRUIDockViewController *)self actionProvider];
  v12 = [(TVRUIDockViewController *)self appLauncherViewController];
  [v12 setActionProvider:v11];

  v13 = [(TVRUIDockViewController *)self launchableAppsController];
  v14 = [(TVRUIDockViewController *)self appLauncherViewController];
  [v14 setLaunchableAppsController:v13];

  v15 = [(TVRUIDockViewController *)self nowPlayingProvider];
  v16 = [(TVRUIDockViewController *)self appLauncherViewController];
  [v16 setNowPlayingProvider:v15];

  v17 = [(TVRUIDockViewController *)self actionProvider];
  v18 = [(TVRUIDockViewController *)self nowPlayingViewController];
  [v18 setActionProvider:v17];

  v19 = [(TVRUIDockViewController *)self actionProvider];
  v20 = [(TVRUIDockViewController *)self castViewController];
  [v20 setActionProvider:v19];

  [(TVRUIDockViewController *)self configureHierarchy];
  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  [v21 addObserver:self selector:sel__nowPlayingInfoDidChange_ name:@"TVRUINowPlayingControllerInfoDidChangeNotification" object:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TVRUIDockViewController;
  [(TVRUIDockViewController *)&v5 viewWillAppear:a3];
  v4 = [(TVRUIDockViewController *)self upNextProvider];
  [v4 refreshIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = TVRUIDockViewController;
  [(TVRUIDockViewController *)&v7 viewDidAppear:a3];
  v4 = [(TVRUIDockViewController *)self nowPlayingProvider];
  v5 = [v4 nowPlayingInfo];
  v6 = [(TVRUIDockViewController *)self nowPlayingInfo];
  [(TVRUIDockViewController *)self _updateNowPlayingInfo:v5 previousNowPlayingInfo:v6];
}

- (void)setStyleProvider:(id)a3
{
  objc_storeStrong(&self->_styleProvider, a3);
  v5 = [(TVRUIDockViewController *)self styleProvider];
  v4 = [v5 touchpadBackgroundColor];
  [(TVRUIStackViewController *)self setStackBackgroundColor:v4];
}

- (void)selectViewControllerIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = TVRUIDockViewController;
  [(TVRUIStackViewController *)&v7 selectViewControllerIndex:a3 animated:a4];
  v6 = [(TVRUIDockViewController *)self dockPreferredStackController];
  [v6 didChangeCurrentStackIndex:a3];
}

- (void)configureHierarchy
{
  v8[1] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v8[0] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__TVRUIDockViewController_configureHierarchy__block_invoke;
  v5[3] = &unk_279D87BF8;
  objc_copyWeak(&v6, &location);
  v4 = [(TVRUIDockViewController *)self registerForTraitChanges:v3 withHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __45__TVRUIDockViewController_configureHierarchy__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invokeLayoutHandlerIfNeeded];
}

- (void)_nowPlayingInfoDidChange:(id)a3
{
  v4 = [(TVRUIDockViewController *)self nowPlayingProvider];
  v6 = [v4 nowPlayingInfo];

  v5 = [(TVRUIDockViewController *)self nowPlayingInfo];
  [(TVRUIDockViewController *)self _updateNowPlayingInfo:v6 previousNowPlayingInfo:v5];
}

- (void)_updateNowPlayingInfo:(id)a3 previousNowPlayingInfo:(id)a4
{
  v6 = a3;
  v7 = [a4 metadata];
  v8 = [v6 metadata];
  v9 = [v7 isEqualToNowPlayingMetadata:v8];

  v10 = [v6 playbackState];
  if ([v10 integerValue] == 1)
  {
    v11 = [v6 playbackRate];
    v12 = [v11 integerValue] != 1;
  }

  else
  {
    v12 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v13 = [(TVRUIDockViewController *)self nowPlayingViewController];
    [v13 setNowPlayingInfo:v6];

    v14 = [v6 metadata];
    v15 = [(TVRUIDockViewController *)self castViewController];
    [v15 setMetadata:v14];

    if (!v12)
    {
      v16 = dispatch_time(0, 300000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__TVRUIDockViewController__updateNowPlayingInfo_previousNowPlayingInfo___block_invoke;
      block[3] = &unk_279D87C20;
      block[4] = self;
      dispatch_after(v16, MEMORY[0x277D85CD0], block);
    }
  }

  [(TVRUIDockViewController *)self setNowPlayingInfo:v6];
}

- (void)_invokeLayoutHandlerIfNeeded
{
  v3 = [(TVRUIDockViewController *)self layoutHandler];

  if (v3)
  {
    v4 = [(TVRUIDockViewController *)self layoutHandler];
    v4[2]();
  }
}

- (TVRUIActionProviding)actionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_actionProvider);

  return WeakRetained;
}

- (TVRUIUpNextProviding)upNextProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_upNextProvider);

  return WeakRetained;
}

- (TVRUINowPlayingProviding)nowPlayingProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_nowPlayingProvider);

  return WeakRetained;
}

- (_TVRUIEventDelegate)buttonActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonActionsDelegate);

  return WeakRetained;
}

@end