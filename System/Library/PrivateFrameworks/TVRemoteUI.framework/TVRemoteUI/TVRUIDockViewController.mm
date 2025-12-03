@interface TVRUIDockViewController
- (TVRUIActionProviding)actionProvider;
- (TVRUIDockViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TVRUINowPlayingProviding)nowPlayingProvider;
- (TVRUIUpNextProviding)upNextProvider;
- (_TVRUIEventDelegate)buttonActionsDelegate;
- (void)_invokeLayoutHandlerIfNeeded;
- (void)_nowPlayingInfoDidChange:(id)change;
- (void)_updateNowPlayingInfo:(id)info previousNowPlayingInfo:(id)playingInfo;
- (void)configureHierarchy;
- (void)dealloc;
- (void)resetContentAnimated:(BOOL)animated;
- (void)selectViewControllerIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setStyleProvider:(id)provider;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVRUIDockViewController

- (TVRUIDockViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v21[4] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  bundleCopy = bundle;
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
    dockPreferredStackController = [(TVRUIDockViewController *)v13 dockPreferredStackController];
    [dockPreferredStackController setPreferredStackDidChangeHandler:v17];

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

- (void)resetContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  upNextViewController = [(TVRUIDockViewController *)self upNextViewController];
  [upNextViewController resetContent];

  appLauncherViewController = [(TVRUIDockViewController *)self appLauncherViewController];
  [appLauncherViewController resetContent];

  nowPlayingViewController = [(TVRUIDockViewController *)self nowPlayingViewController];
  [nowPlayingViewController resetContent];

  castViewController = [(TVRUIDockViewController *)self castViewController];
  [castViewController resetContent];

  dockPreferredStackController = [(TVRUIDockViewController *)self dockPreferredStackController];
  -[TVRUIDockViewController selectViewControllerIndex:animated:](self, "selectViewControllerIndex:animated:", [dockPreferredStackController currentStackIndex], animatedCopy);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVRUIDockViewController;
  [(TVRUIDockViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = TVRUIDockViewController;
  [(TVRUIStackViewController *)&v22 viewDidLoad];
  upNextProvider = [(TVRUIDockViewController *)self upNextProvider];
  upNextViewController = [(TVRUIDockViewController *)self upNextViewController];
  [upNextViewController setUpNextProvider:upNextProvider];

  actionProvider = [(TVRUIDockViewController *)self actionProvider];
  upNextViewController2 = [(TVRUIDockViewController *)self upNextViewController];
  [upNextViewController2 setActionProvider:actionProvider];

  nowPlayingProvider = [(TVRUIDockViewController *)self nowPlayingProvider];
  upNextViewController3 = [(TVRUIDockViewController *)self upNextViewController];
  [upNextViewController3 setNowPlayingProvider:nowPlayingProvider];

  styleProvider = [(TVRUIDockViewController *)self styleProvider];
  appLauncherViewController = [(TVRUIDockViewController *)self appLauncherViewController];
  [appLauncherViewController setStyleProvider:styleProvider];

  actionProvider2 = [(TVRUIDockViewController *)self actionProvider];
  appLauncherViewController2 = [(TVRUIDockViewController *)self appLauncherViewController];
  [appLauncherViewController2 setActionProvider:actionProvider2];

  launchableAppsController = [(TVRUIDockViewController *)self launchableAppsController];
  appLauncherViewController3 = [(TVRUIDockViewController *)self appLauncherViewController];
  [appLauncherViewController3 setLaunchableAppsController:launchableAppsController];

  nowPlayingProvider2 = [(TVRUIDockViewController *)self nowPlayingProvider];
  appLauncherViewController4 = [(TVRUIDockViewController *)self appLauncherViewController];
  [appLauncherViewController4 setNowPlayingProvider:nowPlayingProvider2];

  actionProvider3 = [(TVRUIDockViewController *)self actionProvider];
  nowPlayingViewController = [(TVRUIDockViewController *)self nowPlayingViewController];
  [nowPlayingViewController setActionProvider:actionProvider3];

  actionProvider4 = [(TVRUIDockViewController *)self actionProvider];
  castViewController = [(TVRUIDockViewController *)self castViewController];
  [castViewController setActionProvider:actionProvider4];

  [(TVRUIDockViewController *)self configureHierarchy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__nowPlayingInfoDidChange_ name:@"TVRUINowPlayingControllerInfoDidChangeNotification" object:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = TVRUIDockViewController;
  [(TVRUIDockViewController *)&v5 viewWillAppear:appear];
  upNextProvider = [(TVRUIDockViewController *)self upNextProvider];
  [upNextProvider refreshIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = TVRUIDockViewController;
  [(TVRUIDockViewController *)&v7 viewDidAppear:appear];
  nowPlayingProvider = [(TVRUIDockViewController *)self nowPlayingProvider];
  nowPlayingInfo = [nowPlayingProvider nowPlayingInfo];
  nowPlayingInfo2 = [(TVRUIDockViewController *)self nowPlayingInfo];
  [(TVRUIDockViewController *)self _updateNowPlayingInfo:nowPlayingInfo previousNowPlayingInfo:nowPlayingInfo2];
}

- (void)setStyleProvider:(id)provider
{
  objc_storeStrong(&self->_styleProvider, provider);
  styleProvider = [(TVRUIDockViewController *)self styleProvider];
  touchpadBackgroundColor = [styleProvider touchpadBackgroundColor];
  [(TVRUIStackViewController *)self setStackBackgroundColor:touchpadBackgroundColor];
}

- (void)selectViewControllerIndex:(unint64_t)index animated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = TVRUIDockViewController;
  [(TVRUIStackViewController *)&v7 selectViewControllerIndex:index animated:animated];
  dockPreferredStackController = [(TVRUIDockViewController *)self dockPreferredStackController];
  [dockPreferredStackController didChangeCurrentStackIndex:index];
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

- (void)_nowPlayingInfoDidChange:(id)change
{
  nowPlayingProvider = [(TVRUIDockViewController *)self nowPlayingProvider];
  nowPlayingInfo = [nowPlayingProvider nowPlayingInfo];

  nowPlayingInfo2 = [(TVRUIDockViewController *)self nowPlayingInfo];
  [(TVRUIDockViewController *)self _updateNowPlayingInfo:nowPlayingInfo previousNowPlayingInfo:nowPlayingInfo2];
}

- (void)_updateNowPlayingInfo:(id)info previousNowPlayingInfo:(id)playingInfo
{
  infoCopy = info;
  metadata = [playingInfo metadata];
  metadata2 = [infoCopy metadata];
  v9 = [metadata isEqualToNowPlayingMetadata:metadata2];

  playbackState = [infoCopy playbackState];
  if ([playbackState integerValue] == 1)
  {
    playbackRate = [infoCopy playbackRate];
    v12 = [playbackRate integerValue] != 1;
  }

  else
  {
    v12 = 1;
  }

  if ((v9 & 1) == 0)
  {
    nowPlayingViewController = [(TVRUIDockViewController *)self nowPlayingViewController];
    [nowPlayingViewController setNowPlayingInfo:infoCopy];

    metadata3 = [infoCopy metadata];
    castViewController = [(TVRUIDockViewController *)self castViewController];
    [castViewController setMetadata:metadata3];

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

  [(TVRUIDockViewController *)self setNowPlayingInfo:infoCopy];
}

- (void)_invokeLayoutHandlerIfNeeded
{
  layoutHandler = [(TVRUIDockViewController *)self layoutHandler];

  if (layoutHandler)
  {
    layoutHandler2 = [(TVRUIDockViewController *)self layoutHandler];
    layoutHandler2[2]();
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