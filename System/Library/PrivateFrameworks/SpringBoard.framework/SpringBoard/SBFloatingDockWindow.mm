@interface SBFloatingDockWindow
- (BOOL)isContentHidden;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBFloatingDockWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if ([eventCopy type] != 9)
  {
    goto LABEL_9;
  }

  if (![eventCopy _isTouchRoutingPolicyBased])
  {
    goto LABEL_13;
  }

  _sbWindowScene = [(UIWindow *)self _sbWindowScene];
  floatingDockController = [(SBFloatingDockWindow *)_sbWindowScene floatingDockController];
  floatingDockRootViewController = [(SBFloatingDockWindow *)self floatingDockRootViewController];
  if (([floatingDockController isPresentingLibraryInFloatingDockWindow] & 1) != 0 || objc_msgSend(floatingDockRootViewController, "isPresentingFolder"))
  {
    v31.receiver = self;
    v31.super_class = SBFloatingDockWindow;
    v11 = [(SBFloatingDockWindow *)&v31 hitTest:eventCopy withEvent:x, y];
LABEL_6:

LABEL_12:
    _sbWindowScene = v11;
    goto LABEL_14;
  }

  [floatingDockRootViewController presentedProgress];
  if (v12 <= 0.0)
  {
    v11 = 0;
    goto LABEL_6;
  }

  [floatingDockRootViewController floatingDockScreenFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  _screen = [(SBFloatingDockWindow *)self _screen];
  fixedCoordinateSpace = [_screen fixedCoordinateSpace];
  [(SBFloatingDockWindow *)self convertPoint:fixedCoordinateSpace toCoordinateSpace:x, y];
  v24 = v23;
  v26 = v25;

  v34.origin.x = v14;
  v34.origin.y = v16;
  v34.size.width = v18;
  v34.size.height = v20;
  v33.x = v24;
  v33.y = v26;
  LODWORD(_screen) = CGRectContainsPoint(v34, v33);

  if (_screen)
  {
LABEL_9:
    v30.receiver = self;
    v30.super_class = SBFloatingDockWindow;
    _sbWindowScene = [(SBFloatingDockWindow *)&v30 hitTest:eventCopy withEvent:x, y];
    if (_sbWindowScene == self || (-[SBFloatingDockWindow rootViewController](self, "rootViewController"), v27 = objc_claimAutoreleasedReturnValue(), [v27 view], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, _sbWindowScene == v28))
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
LABEL_13:
    _sbWindowScene = 0;
  }

LABEL_14:

  return _sbWindowScene;
}

- (BOOL)isContentHidden
{
  floatingDockRootViewController = [(SBFloatingDockWindow *)self floatingDockRootViewController];
  _sbWindowScene = [(UIWindow *)self _sbWindowScene];
  floatingDockController = [_sbWindowScene floatingDockController];
  v8.receiver = self;
  v8.super_class = SBFloatingDockWindow;
  if ([(SBFWindow *)&v8 isContentHidden])
  {
    LOBYTE(v6) = 1;
  }

  else if ([floatingDockRootViewController isFloatingDockPresented] & 1) != 0 || (objc_msgSend(floatingDockRootViewController, "isPresentingFolder"))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [floatingDockController isPresentingLibraryInFloatingDockWindow] ^ 1;
  }

  return v6;
}

@end