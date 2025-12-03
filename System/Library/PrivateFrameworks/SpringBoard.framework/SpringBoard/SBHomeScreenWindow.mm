@interface SBHomeScreenWindow
- (BOOL)isContentHidden;
- (SBHomeScreenWindow)initWithWindowScene:(id)scene rootViewController:(id)controller layoutStrategy:(id)strategy role:(id)role debugName:(id)name;
- (id)autorotationPreventionReasons;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)homeScreenViewController;
@end

@implementation SBHomeScreenWindow

- (BOOL)isContentHidden
{
  v6.receiver = self;
  v6.super_class = SBHomeScreenWindow;
  if (![(SBFWindow *)&v6 isContentHidden])
  {
    return 0;
  }

  homeScreenViewController = [(SBHomeScreenWindow *)self homeScreenViewController];
  isIconContentHidden = [homeScreenViewController isIconContentHidden];

  return isIconContentHidden;
}

- (SBHomeScreenWindow)initWithWindowScene:(id)scene rootViewController:(id)controller layoutStrategy:(id)strategy role:(id)role debugName:(id)name
{
  sceneCopy = scene;
  controllerCopy = controller;
  strategyCopy = strategy;
  roleCopy = role;
  nameCopy = name;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBHomeScreenWindow initWithWindowScene:a2 rootViewController:self layoutStrategy:? role:? debugName:?];
  }

  v31.receiver = self;
  v31.super_class = SBHomeScreenWindow;
  v18 = [(SBWindow *)&v31 initWithWindowScene:sceneCopy rootViewController:controllerCopy layoutStrategy:strategyCopy role:roleCopy debugName:nameCopy];
  if (v18)
  {
    screen = [sceneCopy screen];
    [screen bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    view = [controllerCopy view];
    [view setFrame:{v21, v23, v25, v27}];

    layer = [(SBHomeScreenWindow *)v18 layer];
    [layer setHitTestsAsOpaque:1];
  }

  return v18;
}

- (id)homeScreenViewController
{
  v3 = objc_opt_class();
  rootViewController = [(SBHomeScreenWindow *)self rootViewController];
  v5 = SBSafeCast(v3, rootViewController);

  return v5;
}

- (id)autorotationPreventionReasons
{
  homeScreenViewController = [(SBHomeScreenWindow *)self homeScreenViewController];
  _autorotationPreventionReasons = [homeScreenViewController _autorotationPreventionReasons];
  v4 = [_autorotationPreventionReasons componentsJoinedByString:{@", "}];

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([eventCopy type] == 9)
  {
    homeScreenViewController = [(SBHomeScreenWindow *)self homeScreenViewController];
    isIconContentHidden = [homeScreenViewController isIconContentHidden];

    if (isIconContentHidden)
    {
LABEL_8:
      v27 = 0;
      goto LABEL_11;
    }

    _sbWindowScene = [(UIWindow *)self _sbWindowScene];
    floatingDockController = [_sbWindowScene floatingDockController];
    v12 = floatingDockController;
    if (floatingDockController && ([floatingDockController floatingDockScreenFrame], v14 = v13, v16 = v15, v18 = v17, v20 = v19, -[SBHomeScreenWindow _screen](self, "_screen"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "fixedCoordinateSpace"), v22 = objc_claimAutoreleasedReturnValue(), -[SBHomeScreenWindow convertPoint:toCoordinateSpace:](self, "convertPoint:toCoordinateSpace:", v22, x, y), v24 = v23, v26 = v25, v22, v21, v34.origin.x = v14, v34.origin.y = v16, v34.size.width = v18, v34.size.height = v20, v33.x = v24, v33.y = v26, CGRectContainsPoint(v34, v33)) || (objc_msgSend(v12, "isPresentingLibraryInFloatingDockWindow") & 1) != 0 || (objc_msgSend(v12, "isPresentingFolder") & 1) != 0)
    {

      goto LABEL_8;
    }

    switcherController = [_sbWindowScene switcherController];
    unlockedEnvironmentMode = [switcherController unlockedEnvironmentMode];

    if (unlockedEnvironmentMode != 1)
    {
      goto LABEL_8;
    }
  }

  v31.receiver = self;
  v31.super_class = SBHomeScreenWindow;
  v27 = [(SBHomeScreenWindow *)&v31 hitTest:eventCopy withEvent:x, y];
LABEL_11:

  return v27;
}

- (void)initWithWindowScene:(uint64_t)a1 rootViewController:(uint64_t)a2 layoutStrategy:role:debugName:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeScreenWindow.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"[rootViewController isKindOfClass:[SBHomeScreenViewController class]]"}];
}

@end