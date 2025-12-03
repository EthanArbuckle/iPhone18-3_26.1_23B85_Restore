@interface SBOldBannerWindow
- (BOOL)_canBecomeKeyWindow;
- (BOOL)becomeFirstResponder;
- (BOOL)canResignFirstResponder;
- (BOOL)resignFirstResponder;
- (SBOldBannerWindow)initWithWindowScene:(id)scene;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SBOldBannerWindow

- (SBOldBannerWindow)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = SBOldBannerWindow;
  v5 = [(SBMainScreenActiveInterfaceOrientationWindow *)&v9 initWithWindowScene:sceneCopy role:@"SBTraitsParticipantRoleBanner" debugName:@"bannerPresentationWindow"];
  if (v5)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SBOldBannerWindow *)v5 setBackgroundColor:clearColor];

    [(SBOldBannerWindow *)v5 setOpaque:0];
    [(SBMainScreenActiveInterfaceOrientationWindow *)v5 setPassesTouchesThrough:1];
    v7 = [MEMORY[0x277D75BB0] sharedTextEffectsWindowForWindowScene:sceneCopy];
    [(SBOldBannerWindow *)v5 setHidden:1];
  }

  return v5;
}

- (BOOL)_canBecomeKeyWindow
{
  contentViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self contentViewController];
  canBecomeFirstResponder = [contentViewController canBecomeFirstResponder];

  return canBecomeFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  contentViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self contentViewController];
  becomeFirstResponder = [contentViewController becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)canResignFirstResponder
{
  contentViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self contentViewController];
  canResignFirstResponder = [contentViewController canResignFirstResponder];

  return canResignFirstResponder;
}

- (BOOL)resignFirstResponder
{
  contentViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self contentViewController];
  resignFirstResponder = [contentViewController resignFirstResponder];

  return resignFirstResponder;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  rootViewController = [(SBMainScreenActiveInterfaceOrientationWindow *)self rootViewController];
  [rootViewController bs_beginAppearanceTransition:hiddenCopy ^ 1 animated:0];
  v6.receiver = self;
  v6.super_class = SBOldBannerWindow;
  [(SBMainScreenActiveInterfaceOrientationWindow *)&v6 setHidden:hiddenCopy];
  [rootViewController bs_endAppearanceTransition];
}

@end