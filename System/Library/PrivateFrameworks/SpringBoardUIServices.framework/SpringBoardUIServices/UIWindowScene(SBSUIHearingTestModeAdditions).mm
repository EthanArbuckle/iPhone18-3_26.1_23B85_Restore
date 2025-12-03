@interface UIWindowScene(SBSUIHearingTestModeAdditions)
- (uint64_t)SBSUI_hearingTestMode;
- (void)SBSUI_setHearingTestMode:()SBSUIHearingTestModeAdditions;
@end

@implementation UIWindowScene(SBSUIHearingTestModeAdditions)

- (uint64_t)SBSUI_hearingTestMode
{
  _FBSScene = [self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  if (objc_opt_respondsToSelector())
  {
    hearingTestMode = [clientSettings hearingTestMode];
  }

  else
  {
    hearingTestMode = 0;
  }

  return hearingTestMode;
}

- (void)SBSUI_setHearingTestMode:()SBSUIHearingTestModeAdditions
{
  _FBSScene = [self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__UIWindowScene_SBSUIHearingTestModeAdditions__SBSUI_setHearingTestMode___block_invoke;
    v6[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
    v6[4] = a3;
    [_FBSScene updateClientSettings:v6];
  }
}

@end