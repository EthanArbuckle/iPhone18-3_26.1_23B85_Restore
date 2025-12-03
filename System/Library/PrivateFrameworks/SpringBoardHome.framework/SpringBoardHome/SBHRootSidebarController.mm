@interface SBHRootSidebarController
- (SBHSidebarProviderDelegate)delegate;
- (void)_configureAvocadoViewController;
- (void)_configureLayoutMargins;
- (void)_setupConstraintsForViewController:(id)controller;
- (void)setAvocadoViewController:(id)controller;
- (void)setLayoutInsetsIgnoredEdges:(unint64_t)edges;
- (void)setLegibilitySettings:(id)settings;
- (void)setSidebarVisualConfiguration:(id)configuration;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBHRootSidebarController

- (void)_configureLayoutMargins
{
  sidebarVisualConfiguration = [(SBHRootSidebarController *)self sidebarVisualConfiguration];
  v4 = sidebarVisualConfiguration;
  if (sidebarVisualConfiguration)
  {
    v5 = sidebarVisualConfiguration;
  }

  else
  {
    v5 = objc_alloc_init(SBHSidebarVisualConfiguration);
  }

  v15 = v5;

  layoutInsetsIgnoredEdges = [(SBHRootSidebarController *)self layoutInsetsIgnoredEdges];
  [(SBHSidebarVisualConfiguration *)v15 insets];
  v7 = SBHDirectionalEdgeInsetsByClearingEdges(layoutInsetsIgnoredEdges);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view = [(SBHRootSidebarController *)self view];
  [view setDirectionalLayoutMargins:{v7, v9, v11, v13}];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = SBHRootSidebarController;
  [(SBHRootSidebarController *)&v6 viewDidLoad];
  view = [(SBHRootSidebarController *)self view];
  [view setInsetsLayoutMarginsFromSafeArea:0];
  v4 = objc_opt_new();
  widgetViewControllerConstraints = self->_widgetViewControllerConstraints;
  self->_widgetViewControllerConstraints = v4;

  [(SBHRootSidebarController *)self _configureAvocadoViewController];
}

- (void)_configureAvocadoViewController
{
  avocadoViewController = [(SBHRootSidebarController *)self avocadoViewController];
  if ([(SBHRootSidebarController *)self isViewLoaded]&& avocadoViewController)
  {
    [(SBHRootSidebarController *)self bs_addChildViewController:avocadoViewController];
    [(SBHRootSidebarController *)self _setupConstraintsForViewController:avocadoViewController];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBHRootSidebarController;
  [(SBHRootSidebarController *)&v5 viewWillAppear:appear];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Sidebar viewWillAppear:", v4, 2u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v11 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = SBHRootSidebarController;
  [(SBHRootSidebarController *)&v8 viewDidAppear:appear];
  view = [(SBHRootSidebarController *)self view];
  window = [view window];

  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = SBHStringFromUIInterfaceOrientation([window interfaceOrientation]);
    *buf = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1BEB18000, v6, OS_LOG_TYPE_DEFAULT, "[Overlay Position] Root side bar viewDidAppear:, orientation: %{public}@", buf, 0xCu);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBHRootSidebarController;
  [(SBHRootSidebarController *)&v5 viewWillDisappear:disappear];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Sidebar viewWillDisappear:", v4, 2u);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBHRootSidebarController;
  [(SBHRootSidebarController *)&v5 viewDidDisappear:disappear];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEB18000, v3, OS_LOG_TYPE_DEFAULT, "Sidebar viewDidDisappear:", v4, 2u);
  }
}

- (void)setSidebarVisualConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_sidebarVisualConfiguration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_sidebarVisualConfiguration, configuration);
    [(SBHRootSidebarController *)self _configureLayoutMargins];
    configurationCopy = v6;
  }
}

- (void)setLayoutInsetsIgnoredEdges:(unint64_t)edges
{
  if (self->_layoutInsetsIgnoredEdges != edges)
  {
    self->_layoutInsetsIgnoredEdges = edges;
    [(SBHRootSidebarController *)self _configureLayoutMargins];
  }
}

- (void)setAvocadoViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_avocadoViewController != controllerCopy)
  {
    v7 = controllerCopy;
    [(SBHRootSidebarController *)self bs_removeChildViewController:?];
    widgetViewControllerConstraints = [(SBHRootSidebarController *)self widgetViewControllerConstraints];
    [widgetViewControllerConstraints removeAllObjects];

    objc_storeStrong(&self->_avocadoViewController, controller);
    [(SBHRootSidebarController *)self _configureAvocadoViewController];
    controllerCopy = v7;
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    if (objc_opt_respondsToSelector())
    {
      [(UIViewController *)self->_avocadoViewController setLegibilitySettings:settingsCopy];
    }
  }
}

- (void)_setupConstraintsForViewController:(id)controller
{
  v23[4] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  view = [(SBHRootSidebarController *)self view];
  view2 = [controllerCopy view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [view2 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

  topAnchor = [view2 topAnchor];
  topAnchor2 = [view topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];

  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  widgetViewControllerConstraints = [(SBHRootSidebarController *)self widgetViewControllerConstraints];
  v23[0] = v9;
  v23[1] = v12;
  v23[2] = v15;
  v23[3] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [widgetViewControllerConstraints addObjectsFromArray:v20];

  v21 = MEMORY[0x1E696ACD8];
  widgetViewControllerConstraints2 = [(SBHRootSidebarController *)self widgetViewControllerConstraints];
  [v21 activateConstraints:widgetViewControllerConstraints2];
}

- (SBHSidebarProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end