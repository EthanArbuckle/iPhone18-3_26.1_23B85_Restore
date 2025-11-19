@interface SBStatusBarWindow
+ (CGRect)_defaultStatusBarSceneReferenceBounds;
- (CGRect)_statusBarWindowBoundsForOrientation:(int64_t)a3;
- (CGRect)_statusBarWindowFrame;
- (SBStatusBarWindow)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)safeAreaInsets;
- (id)_initWithOrientation:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_rotate;
- (void)setOrientation:(int64_t)a3 animationParameters:(id)a4;
- (void)setStatusBar:(id)a3;
- (void)windowSceneDidConnect:(id)a3;
@end

@implementation SBStatusBarWindow

- (id)_initWithOrientation:(int64_t)a3
{
  if (a3 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a3;
  }

  v5.receiver = self;
  v5.super_class = SBStatusBarWindow;
  result = [(SBStatusBarWindow *)&v5 _initWithOrientation:v3];
  if (result)
  {
    *(result + 117) = v3;
  }

  return result;
}

- (SBStatusBarWindow)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBStatusBarWindow;
  v3 = [(SBStatusBarWindow *)&v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = v3;
  if (v3)
  {
    v3->_orientation = 1;
    [(SBStatusBarWindow *)v3 _statusBarWindowBoundsForOrientation:1];
    [(SBStatusBarWindow *)v4 setFrame:?];
    [(SBStatusBarWindow *)v4 setOpaque:0];
  }

  return v4;
}

+ (CGRect)_defaultStatusBarSceneReferenceBounds
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 _referenceBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)windowSceneDidConnect:(id)a3
{
  v8 = a3;
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleStatusBar"))
  {
    v5 = [(UIWindow *)self _sbWindowScene];

    if (v5 != v8)
    {
      [(SBStatusBarWindow *)a2 windowSceneDidConnect:?];
    }

    v6 = [(UIWindow *)self _sbWindowScene];
    v7 = [v6 traitsArbiter];

    if (!v7)
    {
      [(SBStatusBarWindow *)a2 windowSceneDidConnect:?];
    }

    [(SBStatusBarWindow *)self _setRoleHint:@"SBTraitsParticipantRoleStatusBar"];
  }
}

- (void)setStatusBar:(id)a3
{
  v5 = a3;
  statusBar = self->_statusBar;
  v13 = v5;
  if (statusBar != v5)
  {
    [(STUIStatusBar_Wrapper *)statusBar removeFromSuperview];
    objc_storeStrong(&self->_statusBar, a3);
    [(STUIStatusBar_Wrapper *)self->_statusBar frame];
    [(SBStatusBarWindow *)self bounds];
    [(STUIStatusBar_Wrapper *)self->_statusBar setFrame:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    [(STUIStatusBar_Wrapper *)self->_statusBar setAutoresizingMask:34];
    [(STUIStatusBar_Wrapper *)self->_statusBar setOrientation:self->_orientation];
    [(SBStatusBarWindow *)self addSubview:self->_statusBar];
    v7 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v9 = [(UIWindow *)self _sbWindowScene];
      v10 = [v9 isExtendedDisplayWindowScene];

      if ((v10 & 1) == 0)
      {
        v11 = [[_SBStatusBarWindowRootViewController alloc] initWithWindow:self];
        statusBarWindowRootViewController = self->_statusBarWindowRootViewController;
        self->_statusBarWindowRootViewController = v11;

        [(SBStatusBarWindow *)self setRootViewController:self->_statusBarWindowRootViewController];
      }
    }
  }
}

- (void)setOrientation:(int64_t)a3 animationParameters:(id)a4
{
  v6 = a4;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleStatusBar") & 1) == 0)
  {
    if (v6 && (v7 = [v6 orientationAnimation]) != 0)
    {
      if (self->_orientation != a3)
      {
        self->_orientation = a3;
        if (v7 == 2)
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __56__SBStatusBarWindow_setOrientation_animationParameters___block_invoke;
          v15[3] = &unk_2783A8C18;
          v15[4] = self;
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __56__SBStatusBarWindow_setOrientation_animationParameters___block_invoke_2;
          v14[3] = &unk_2783A9398;
          v14[4] = self;
          [MEMORY[0x277D75A80] animateWithParameters:v6 fromCurrentState:1 animations:v15 completion:v14];
        }

        else
        {
          [v6 duration];
          v9 = v8 * 0.5;
          v10 = MEMORY[0x277D75D18];
          [v6 delay];
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __56__SBStatusBarWindow_setOrientation_animationParameters___block_invoke_3;
          v13[3] = &unk_2783A8C18;
          v13[4] = self;
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __56__SBStatusBarWindow_setOrientation_animationParameters___block_invoke_4;
          v12[3] = &unk_2783B3C38;
          v12[4] = self;
          *&v12[5] = v9;
          [v10 animateWithDuration:0x10000 delay:v13 options:v12 animations:v9 completion:v11];
        }
      }
    }

    else
    {
      self->_orientation = a3;
      [(SBStatusBarWindow *)self _rotate];
    }
  }
}

uint64_t __56__SBStatusBarWindow_setOrientation_animationParameters___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 928) _statusBarWillAnimateRotation];
  v2 = *(a1 + 32);

  return [v2 _rotate];
}

uint64_t __56__SBStatusBarWindow_setOrientation_animationParameters___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _rotate];
  result = [*(*(a1 + 32) + 928) isHidden];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __56__SBStatusBarWindow_setOrientation_animationParameters___block_invoke_5;
    v4[3] = &unk_2783A8C18;
    v4[4] = *(a1 + 32);
    return [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v4 options:0 animations:v3 completion:0.0];
  }

  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_rotate
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleStatusBar") & 1) == 0)
  {
    [(STUIStatusBar_Wrapper *)self->_statusBar setOrientation:self->_orientation];
    orientation = self->_orientation;

    [(SBStatusBarWindow *)self _legacySetRotatableViewOrientation:orientation updateStatusBar:0 duration:1 force:0.0];
  }
}

- (CGRect)_statusBarWindowFrame
{
  [(SBStatusBarWindow *)self _statusBarWindowBoundsForOrientation:self->_orientation];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_statusBarWindowBoundsForOrientation:(int64_t)a3
{
  v3 = [(SBStatusBarWindow *)self windowScene];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _FBSScene];
    v6 = [v5 settings];
    [v6 frame];
  }

  else
  {
    [objc_opt_class() _defaultStatusBarSceneReferenceBounds];
  }

  _UIWindowConvertRectFromOrientationToOrientation();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBStatusBarWindow;
  v5 = [(SBStatusBarWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)windowSceneDidConnect:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStatusBarWindow.m" lineNumber:81 description:@"should connect to the window scene we are on"];
}

- (void)windowSceneDidConnect:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBStatusBarWindow.m" lineNumber:82 description:@"do not call this before the window scene is fully configured!"];
}

@end