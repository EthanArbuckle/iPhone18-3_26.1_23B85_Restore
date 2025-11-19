@interface SBOldFloatingDockWindow
- (BOOL)isContentHidden;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBOldFloatingDockWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([v7 type] != 9)
  {
    goto LABEL_9;
  }

  if (![v7 _isTouchRoutingPolicyBased])
  {
    goto LABEL_10;
  }

  v8 = [(UIWindow *)self _sbWindowScene];
  v9 = [v8 floatingDockController];
  v10 = [(SBOldFloatingDockWindow *)self floatingDockRootViewController];
  if (([v9 isPresentingLibraryInFloatingDockWindow] & 1) != 0 || objc_msgSend(v10, "isPresentingFolder"))
  {
    v29.receiver = self;
    v29.super_class = SBOldFloatingDockWindow;
    v11 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v29 hitTest:v7 withEvent:x, y];
LABEL_6:

    goto LABEL_11;
  }

  [v10 presentedProgress];
  if (v12 <= 0.0)
  {
    v11 = 0;
    goto LABEL_6;
  }

  [v10 floatingDockScreenFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(SBOldFloatingDockWindow *)self _screen];
  v22 = [v21 fixedCoordinateSpace];
  [(SBOldFloatingDockWindow *)self convertPoint:v22 toCoordinateSpace:x, y];
  v24 = v23;
  v26 = v25;

  v32.origin.x = v14;
  v32.origin.y = v16;
  v32.size.width = v18;
  v32.size.height = v20;
  v31.x = v24;
  v31.y = v26;
  LODWORD(v21) = CGRectContainsPoint(v32, v31);

  if (v21)
  {
LABEL_9:
    v28.receiver = self;
    v28.super_class = SBOldFloatingDockWindow;
    v11 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v28 hitTest:v7 withEvent:x, y];
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
  v3 = [(SBOldFloatingDockWindow *)self floatingDockRootViewController];
  v6.receiver = self;
  v6.super_class = SBOldFloatingDockWindow;
  if ([(SBFWindow *)&v6 isContentHidden])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 isFloatingDockPresented] ^ 1;
  }

  return v4;
}

@end