@interface SUNavigationController
- (BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (NSString)description;
- (SUNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (SUNavigationController)initWithSection:(id)section rootViewController:(id)controller;
- (id)copyArchivableContext;
- (id)copyScriptViewController;
- (id)moreListImage;
- (id)moreListSelectedImage;
- (unint64_t)supportedInterfaceOrientations;
- (void)_loadingDidChangeNotification:(id)notification;
- (void)_setStoreBarStyle:(int64_t)style clientInterface:(id)interface;
- (void)addChildViewController:(id)controller;
- (void)dealloc;
- (void)loadView;
- (void)removeChildViewController:(id)controller;
- (void)restoreArchivableContext:(id)context;
- (void)setClientInterface:(id)interface;
- (void)setParentViewController:(id)controller;
- (void)setSkLoading:(BOOL)loading;
- (void)setToolbarHidden:(BOOL)hidden;
- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SUNavigationController

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = SUNavigationController;
  [(SUNavigationController *)&v6 loadView];
  if (!self->_storeBarStyle)
  {
    section = [(SUNavigationController *)self section];
    if ([section defaultPNGStyle] == 1)
    {
      navigationBar = [(SUNavigationController *)self navigationBar];
      [navigationBar setBarStyle:1];

      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    [(SUNavigationController *)self _setStoreBarStyle:v5 clientInterface:self->_clientInterface];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  topViewController = [(SUNavigationController *)self topViewController];
  v3 = topViewController;
  if (topViewController)
  {
    supportedInterfaceOrientations = [topViewController supportedInterfaceOrientations];
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      supportedInterfaceOrientations = 30;
    }

    else if (SUAllowsLandscapePhone())
    {
      supportedInterfaceOrientations = 26;
    }

    else
    {
      supportedInterfaceOrientations = 2;
    }
  }

  return supportedInterfaceOrientations;
}

- (SUNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = SUNavigationController;
  v4 = [(SUNavigationController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    [(SUNavigationController *)v4 setNavigationBarClass:objc_opt_class()];
  }

  return v4;
}

- (SUNavigationController)initWithSection:(id)section rootViewController:(id)controller
{
  sectionCopy = section;
  controllerCopy = controller;
  [(SUNavigationController *)self setSection:sectionCopy];
  v13.receiver = self;
  v13.super_class = SUNavigationController;
  v8 = [(SUNavigationController *)&v13 init];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      clientInterface = [controllerCopy clientInterface];
      [(SUNavigationController *)v8 setClientInterface:clientInterface];
    }

    if (controllerCopy)
    {
      if ([sectionCopy type] == 1 || !objc_msgSend(sectionCopy, "type"))
      {
        [(SUNavigationController *)v8 pushViewController:controllerCopy animated:0];
      }

      else
      {
        v10 = [[SUNavigationContainerViewController alloc] initWithChildViewController:controllerCopy];
        [(SUNavigationController *)v8 pushViewController:v10 animated:0];
      }

      tabBarItem = [controllerCopy tabBarItem];
      [(SUNavigationController *)v8 setTabBarItem:tabBarItem];
    }
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUViewControllerLoadingDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = SUNavigationController;
  [(SUNavigationController *)&v4 dealloc];
}

- (void)setSkLoading:(BOOL)loading
{
  if (self->_skLoading != loading)
  {
    self->_skLoading = loading;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SUViewControllerLoadingDidChangeNotification" object:self];
  }
}

- (void)addChildViewController:(id)controller
{
  v4 = MEMORY[0x1E696AD88];
  controllerCopy = controller;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:@"SUViewControllerLoadingDidChangeNotification" object:controllerCopy];
  [defaultCenter addObserver:self selector:sel__loadingDidChangeNotification_ name:@"SUViewControllerLoadingDidChangeNotification" object:controllerCopy];
  v7.receiver = self;
  v7.super_class = SUNavigationController;
  [(SUNavigationController *)&v7 addChildViewController:controllerCopy];
}

- (id)copyArchivableContext
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = SUNavigationController;
  copyArchivableContext = [(UIViewController *)&v17 copyArchivableContext];
  [copyArchivableContext setType:4];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SUNavigationController isNavigationBarHidden](self, "isNavigationBarHidden")}];
  [copyArchivableContext setValue:v4 forMetadataKey:@"navbarhidden"];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  viewControllers = [(SUNavigationController *)self viewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [viewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(viewControllers);
        }

        copyArchivableContext2 = [*(*(&v13 + 1) + 8 * v10) copyArchivableContext];
        if (copyArchivableContext2)
        {
          [v5 addObject:copyArchivableContext2];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [viewControllers countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [copyArchivableContext setValue:v5 forMetadataKey:@"controllers"];
  }

  return copyArchivableContext;
}

- (id)copyScriptViewController
{
  v3 = objc_alloc_init(SUScriptNavigationController);
  [(SUScriptViewController *)v3 setNativeViewController:self];
  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SUNavigationController;
  v4 = [(SUNavigationController *)&v9 description];
  section = [(SUNavigationController *)self section];
  identifier = [section identifier];
  v7 = [v3 stringWithFormat:@"%@: %@", v4, identifier];

  return v7;
}

- (id)moreListImage
{
  section = [(SUNavigationController *)self section];
  moreListImage = [section moreListImage];

  return moreListImage;
}

- (id)moreListSelectedImage
{
  section = [(SUNavigationController *)self section];
  selectedMoreListImage = [section selectedMoreListImage];

  return selectedMoreListImage;
}

- (void)removeChildViewController:(id)controller
{
  v4 = MEMORY[0x1E696AD88];
  controllerCopy = controller;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:@"SUViewControllerLoadingDidChangeNotification" object:controllerCopy];
  v7.receiver = self;
  v7.super_class = SUNavigationController;
  [(SUNavigationController *)&v7 removeChildViewController:controllerCopy];
}

- (void)restoreArchivableContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [contextCopy valueForMetadataKey:@"navbarhidden"];
  -[SUNavigationController setNavigationBarHidden:](self, "setNavigationBarHidden:", [v5 BOOLValue]);

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [contextCopy valueForMetadataKey:@"controllers"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        copyViewController = [*(*(&v14 + 1) + 8 * v11) copyViewController];
        if (copyViewController)
        {
          [v6 addObject:copyViewController];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [(SUNavigationController *)self setViewControllers:v6];
  v13.receiver = self;
  v13.super_class = SUNavigationController;
  [(UIViewController *)&v13 restoreArchivableContext:contextCopy];
}

- (void)setClientInterface:(id)interface
{
  if (self->_clientInterface != interface)
  {
    objc_storeStrong(&self->_clientInterface, interface);
    appearance = [(SUClientInterface *)self->_clientInterface appearance];
    navigationBar = [(SUNavigationController *)self navigationBar];
    [appearance styleNavigationBar:navigationBar];

    if (([(SUNavigationController *)self isToolbarHidden]& 1) == 0)
    {
      appearance2 = [(SUClientInterface *)self->_clientInterface appearance];
      toolbar = [(SUNavigationController *)self toolbar];
      [appearance2 styleToolbar:toolbar];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setParentViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(SUNavigationController *)self parentViewController];
  v8.receiver = self;
  v8.super_class = SUNavigationController;
  [(SUNavigationController *)&v8 setParentViewController:controllerCopy];

  parentViewController2 = [(SUNavigationController *)self parentViewController];

  if (parentViewController != parentViewController2)
  {
    [(UIViewController *)self parentViewControllerHierarchyDidChange];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SUViewControllerParentViewControllerDidChangeNotification" object:self];
  }

  if (controllerCopy && !self->_canBeWeakScriptReference)
  {
    self->_canBeWeakScriptReference = 1;
  }
}

- (void)_setStoreBarStyle:(int64_t)style clientInterface:(id)interface
{
  if (self->_storeBarStyle != style)
  {
    self->_storeBarStyle = style;
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = SUNavigationController;
    [UINavigationController _setStoreBarStyle:sel__setStoreBarStyle_clientInterface_ clientInterface:?];
  }
}

- (void)setToolbarHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if (!hidden)
  {
    appearance = [(SUClientInterface *)self->_clientInterface appearance];
    toolbar = [(SUNavigationController *)self toolbar];
    [appearance styleToolbar:toolbar];
  }

  v7.receiver = self;
  v7.super_class = SUNavigationController;
  [(SUNavigationController *)&v7 setToolbarHidden:hiddenCopy];
}

- (void)setToolbarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  hiddenCopy = hidden;
  if (!hidden)
  {
    appearance = [(SUClientInterface *)self->_clientInterface appearance];
    toolbar = [(SUNavigationController *)self toolbar];
    [appearance styleToolbar:toolbar];
  }

  v9.receiver = self;
  v9.super_class = SUNavigationController;
  [(SUNavigationController *)&v9 setToolbarHidden:hiddenCopy animated:animatedCopy];
}

- (void)setViewControllers:(id)controllers
{
  controllersCopy = controllers;
  if ([controllersCopy count])
  {
    v5 = [controllersCopy objectAtIndex:0];
    tabBarItem = [v5 tabBarItem];
    [(SUNavigationController *)self setTabBarItem:tabBarItem];
  }

  v7.receiver = self;
  v7.super_class = SUNavigationController;
  [(SUNavigationController *)&v7 setViewControllers:controllersCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _popoverController = [(SUNavigationController *)self _popoverController];

  if (_popoverController)
  {
    navigationBar = [(SUNavigationController *)self navigationBar];
    SUNavigationBarRemoveStyling(navigationBar);
  }

  v7.receiver = self;
  v7.super_class = SUNavigationController;
  [(SUNavigationController *)&v7 viewWillAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SUViewControllerDidDisappearNotification" object:self];

  v6.receiver = self;
  v6.super_class = SUNavigationController;
  [(SUNavigationController *)&v6 viewDidDisappear:disappearCopy];
}

- (BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  windowCopy = window;
  v12.receiver = self;
  v12.super_class = SUNavigationController;
  v7 = [(SUNavigationController *)&v12 window:windowCopy shouldAutorotateToInterfaceOrientation:orientation];
  topViewController = [(SUNavigationController *)self topViewController];
  v9 = topViewController;
  if (v7)
  {
    v10 = topViewController == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    LOBYTE(v7) = [topViewController window:windowCopy shouldAutorotateToInterfaceOrientation:orientation];
  }

  return v7;
}

- (void)_loadingDidChangeNotification:(id)notification
{
  topViewController = [(SUNavigationController *)self topViewController];
  -[SUNavigationController setSkLoading:](self, "setSkLoading:", [topViewController isSkLoaded]);
}

@end