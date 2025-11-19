@interface SBHomeScreenWindow
- (BOOL)isContentHidden;
- (SBHomeScreenWindow)initWithWindowScene:(id)a3 rootViewController:(id)a4 layoutStrategy:(id)a5 role:(id)a6 debugName:(id)a7;
- (id)autorotationPreventionReasons;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
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

  v3 = [(SBHomeScreenWindow *)self homeScreenViewController];
  v4 = [v3 isIconContentHidden];

  return v4;
}

- (SBHomeScreenWindow)initWithWindowScene:(id)a3 rootViewController:(id)a4 layoutStrategy:(id)a5 role:(id)a6 debugName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [SBHomeScreenWindow initWithWindowScene:a2 rootViewController:self layoutStrategy:? role:? debugName:?];
  }

  v31.receiver = self;
  v31.super_class = SBHomeScreenWindow;
  v18 = [(SBWindow *)&v31 initWithWindowScene:v13 rootViewController:v14 layoutStrategy:v15 role:v16 debugName:v17];
  if (v18)
  {
    v19 = [v13 screen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = [v14 view];
    [v28 setFrame:{v21, v23, v25, v27}];

    v29 = [(SBHomeScreenWindow *)v18 layer];
    [v29 setHitTestsAsOpaque:1];
  }

  return v18;
}

- (id)homeScreenViewController
{
  v3 = objc_opt_class();
  v4 = [(SBHomeScreenWindow *)self rootViewController];
  v5 = SBSafeCast(v3, v4);

  return v5;
}

- (id)autorotationPreventionReasons
{
  v2 = [(SBHomeScreenWindow *)self homeScreenViewController];
  v3 = [v2 _autorotationPreventionReasons];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([v7 type] == 9)
  {
    v8 = [(SBHomeScreenWindow *)self homeScreenViewController];
    v9 = [v8 isIconContentHidden];

    if (v9)
    {
LABEL_8:
      v27 = 0;
      goto LABEL_11;
    }

    v10 = [(UIWindow *)self _sbWindowScene];
    v11 = [v10 floatingDockController];
    v12 = v11;
    if (v11 && ([v11 floatingDockScreenFrame], v14 = v13, v16 = v15, v18 = v17, v20 = v19, -[SBHomeScreenWindow _screen](self, "_screen"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "fixedCoordinateSpace"), v22 = objc_claimAutoreleasedReturnValue(), -[SBHomeScreenWindow convertPoint:toCoordinateSpace:](self, "convertPoint:toCoordinateSpace:", v22, x, y), v24 = v23, v26 = v25, v22, v21, v34.origin.x = v14, v34.origin.y = v16, v34.size.width = v18, v34.size.height = v20, v33.x = v24, v33.y = v26, CGRectContainsPoint(v34, v33)) || (objc_msgSend(v12, "isPresentingLibraryInFloatingDockWindow") & 1) != 0 || (objc_msgSend(v12, "isPresentingFolder") & 1) != 0)
    {

      goto LABEL_8;
    }

    v28 = [v10 switcherController];
    v29 = [v28 unlockedEnvironmentMode];

    if (v29 != 1)
    {
      goto LABEL_8;
    }
  }

  v31.receiver = self;
  v31.super_class = SBHomeScreenWindow;
  v27 = [(SBHomeScreenWindow *)&v31 hitTest:v7 withEvent:x, y];
LABEL_11:

  return v27;
}

- (void)initWithWindowScene:(uint64_t)a1 rootViewController:(uint64_t)a2 layoutStrategy:role:debugName:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeScreenWindow.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"[rootViewController isKindOfClass:[SBHomeScreenViewController class]]"}];
}

@end