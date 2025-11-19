@interface SBBannerWindow
- (BOOL)_canBecomeKeyWindow;
- (BOOL)becomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)resignFirstResponder;
- (SBBannerWindow)initWithWindowScene:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setHidden:(BOOL)a3;
@end

@implementation SBBannerWindow

- (BOOL)becomeFirstResponder
{
  v2 = [(SBBannerWindow *)self rootViewController];
  v3 = [v2 becomeFirstResponder];

  return v3;
}

- (BOOL)_canBecomeKeyWindow
{
  v2 = [(SBBannerWindow *)self rootViewController];
  v3 = [v2 canBecomeFirstResponder];

  return v3;
}

- (SBBannerWindow)initWithWindowScene:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBBannerWindow;
  v5 = [(SBBannerWindow *)&v10 initWithWindowScene:v4];
  v6 = v5;
  if (v5)
  {
    [(SBBannerWindow *)v5 _setRoleHint:@"SBTraitsParticipantRoleBanner"];
    v7 = [MEMORY[0x277D75348] clearColor];
    [(SBBannerWindow *)v6 setBackgroundColor:v7];

    [(SBBannerWindow *)v6 setOpaque:0];
    v8 = [MEMORY[0x277D75BB0] sharedTextEffectsWindowForWindowScene:v4];
    [(SBBannerWindow *)v6 setHidden:1];
  }

  return v6;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBBannerWindow;
  v5 = [(SBBannerWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self || (-[SBBannerWindow rootViewController](self, "rootViewController"), v6 = objc_claimAutoreleasedReturnValue(), [v6 view], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5 == v7))
  {

    v5 = 0;
  }

  return v5;
}

- (BOOL)canResignFirstResponder
{
  v2 = [(SBBannerWindow *)self rootViewController];
  v3 = [v2 canResignFirstResponder];

  return v3;
}

- (BOOL)resignFirstResponder
{
  v2 = [(SBBannerWindow *)self rootViewController];
  v3 = [v2 resignFirstResponder];

  return v3;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBBannerWindow *)self rootViewController];
  [v5 bs_beginAppearanceTransition:v3 ^ 1 animated:0];
  v6.receiver = self;
  v6.super_class = SBBannerWindow;
  [(SBFWindow *)&v6 setHidden:v3];
  [v5 bs_endAppearanceTransition];
}

@end