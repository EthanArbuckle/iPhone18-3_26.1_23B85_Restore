@interface SBFloatingDockWindow
- (BOOL)isContentHidden;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBFloatingDockWindow

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
    goto LABEL_13;
  }

  v8 = [(UIWindow *)self _sbWindowScene];
  v9 = [(SBFloatingDockWindow *)v8 floatingDockController];
  v10 = [(SBFloatingDockWindow *)self floatingDockRootViewController];
  if (([v9 isPresentingLibraryInFloatingDockWindow] & 1) != 0 || objc_msgSend(v10, "isPresentingFolder"))
  {
    v31.receiver = self;
    v31.super_class = SBFloatingDockWindow;
    v11 = [(SBFloatingDockWindow *)&v31 hitTest:v7 withEvent:x, y];
LABEL_6:

LABEL_12:
    v8 = v11;
    goto LABEL_14;
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
  v21 = [(SBFloatingDockWindow *)self _screen];
  v22 = [v21 fixedCoordinateSpace];
  [(SBFloatingDockWindow *)self convertPoint:v22 toCoordinateSpace:x, y];
  v24 = v23;
  v26 = v25;

  v34.origin.x = v14;
  v34.origin.y = v16;
  v34.size.width = v18;
  v34.size.height = v20;
  v33.x = v24;
  v33.y = v26;
  LODWORD(v21) = CGRectContainsPoint(v34, v33);

  if (v21)
  {
LABEL_9:
    v30.receiver = self;
    v30.super_class = SBFloatingDockWindow;
    v8 = [(SBFloatingDockWindow *)&v30 hitTest:v7 withEvent:x, y];
    if (v8 == self || (-[SBFloatingDockWindow rootViewController](self, "rootViewController"), v27 = objc_claimAutoreleasedReturnValue(), [v27 view], v28 = objc_claimAutoreleasedReturnValue(), v28, v27, v8 == v28))
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
LABEL_13:
    v8 = 0;
  }

LABEL_14:

  return v8;
}

- (BOOL)isContentHidden
{
  v3 = [(SBFloatingDockWindow *)self floatingDockRootViewController];
  v4 = [(UIWindow *)self _sbWindowScene];
  v5 = [v4 floatingDockController];
  v8.receiver = self;
  v8.super_class = SBFloatingDockWindow;
  if ([(SBFWindow *)&v8 isContentHidden])
  {
    LOBYTE(v6) = 1;
  }

  else if ([v3 isFloatingDockPresented] & 1) != 0 || (objc_msgSend(v3, "isPresentingFolder"))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = [v5 isPresentingLibraryInFloatingDockWindow] ^ 1;
  }

  return v6;
}

@end