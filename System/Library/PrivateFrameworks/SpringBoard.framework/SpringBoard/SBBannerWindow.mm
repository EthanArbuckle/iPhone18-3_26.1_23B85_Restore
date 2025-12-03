@interface SBBannerWindow
- (BOOL)_canBecomeKeyWindow;
- (BOOL)becomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)resignFirstResponder;
- (SBBannerWindow)initWithWindowScene:(id)scene;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SBBannerWindow

- (BOOL)becomeFirstResponder
{
  rootViewController = [(SBBannerWindow *)self rootViewController];
  becomeFirstResponder = [rootViewController becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)_canBecomeKeyWindow
{
  rootViewController = [(SBBannerWindow *)self rootViewController];
  canBecomeFirstResponder = [rootViewController canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (SBBannerWindow)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v10.receiver = self;
  v10.super_class = SBBannerWindow;
  v5 = [(SBBannerWindow *)&v10 initWithWindowScene:sceneCopy];
  v6 = v5;
  if (v5)
  {
    [(SBBannerWindow *)v5 _setRoleHint:@"SBTraitsParticipantRoleBanner"];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBBannerWindow *)v6 setBackgroundColor:clearColor];

    [(SBBannerWindow *)v6 setOpaque:0];
    v8 = [MEMORY[0x277D75BB0] sharedTextEffectsWindowForWindowScene:sceneCopy];
    [(SBBannerWindow *)v6 setHidden:1];
  }

  return v6;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBBannerWindow;
  v5 = [(SBBannerWindow *)&v9 hitTest:event withEvent:test.x, test.y];
  if (v5 == self || (-[SBBannerWindow rootViewController](self, "rootViewController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 view], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5 == v7))
  {

    v5 = 0;
  }

  return v5;
}

- (BOOL)canResignFirstResponder
{
  rootViewController = [(SBBannerWindow *)self rootViewController];
  canResignFirstResponder = [rootViewController canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  rootViewController = [(SBBannerWindow *)self rootViewController];
  resignFirstResponder = [rootViewController resignFirstResponder];

  return resignFirstResponder;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  rootViewController = [(SBBannerWindow *)self rootViewController];
  [rootViewController bs_beginAppearanceTransition:hiddenCopy ^ 1 animated:0];
  v6.receiver = self;
  v6.super_class = SBBannerWindow;
  [(SBFWindow *)&v6 setHidden:hiddenCopy];
  [rootViewController bs_endAppearanceTransition];
}

@end