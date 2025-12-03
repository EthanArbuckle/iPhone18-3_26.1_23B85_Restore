@interface SBOldFloatingDockWindow
- (BOOL)isContentHidden;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBOldFloatingDockWindow

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
    goto LABEL_10;
  }

  _sbWindowScene = [(UIWindow *)self _sbWindowScene];
  floatingDockController = [_sbWindowScene floatingDockController];
  floatingDockRootViewController = [(SBOldFloatingDockWindow *)self floatingDockRootViewController];
  if (([floatingDockController isPresentingLibraryInFloatingDockWindow] & 1) != 0 || objc_msgSend(floatingDockRootViewController, "isPresentingFolder"))
  {
    v29.receiver = self;
    v29.super_class = SBOldFloatingDockWindow;
    v11 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v29 hitTest:eventCopy withEvent:x, y];
LABEL_6:

    goto LABEL_11;
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
  _screen = [(SBOldFloatingDockWindow *)self _screen];
  fixedCoordinateSpace = [_screen fixedCoordinateSpace];
  [(SBOldFloatingDockWindow *)self convertPoint:fixedCoordinateSpace toCoordinateSpace:x, y];
  v24 = v23;
  v26 = v25;

  v32.origin.x = v14;
  v32.origin.y = v16;
  v32.size.width = v18;
  v32.size.height = v20;
  v31.x = v24;
  v31.y = v26;
  LODWORD(_screen) = CGRectContainsPoint(v32, v31);

  if (_screen)
  {
LABEL_9:
    v28.receiver = self;
    v28.super_class = SBOldFloatingDockWindow;
    v11 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v28 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (BOOL)isContentHidden
{
  floatingDockRootViewController = [(SBOldFloatingDockWindow *)self floatingDockRootViewController];
  v6.receiver = self;
  v6.super_class = SBOldFloatingDockWindow;
  if ([(SBFWindow *)&v6 isContentHidden])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [floatingDockRootViewController isFloatingDockPresented] ^ 1;
  }

  return v4;
}

@end