@interface SBDashBoardWidgetURLHandler
- (void)openURL:(id)a3;
@end

@implementation SBDashBoardWidgetURLHandler

- (void)openURL:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SBLockScreenUnlockRequest);
  [(SBLockScreenUnlockRequest *)v4 setSource:24];
  [(SBLockScreenUnlockRequest *)v4 setIntent:3];
  [(SBLockScreenUnlockRequest *)v4 setName:@"Open URL From CoverSheet Widget"];
  [(SBLockScreenUnlockRequest *)v4 setWantsBiometricPresentation:1];
  v5 = +[SBLockScreenManager sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SBDashBoardWidgetURLHandler_openURL___block_invoke;
  v7[3] = &unk_2783A9398;
  v8 = v3;
  v6 = v3;
  [v5 unlockWithRequest:v4 completion:v7];
}

uint64_t __39__SBDashBoardWidgetURLHandler_openURL___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return SBWorkspaceActivateApplicationFromURL(*(result + 32), 0, &__block_literal_global_103);
  }

  return result;
}

@end