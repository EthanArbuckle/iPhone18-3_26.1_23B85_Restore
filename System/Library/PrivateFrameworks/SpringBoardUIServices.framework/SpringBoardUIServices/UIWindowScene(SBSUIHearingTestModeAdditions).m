@interface UIWindowScene(SBSUIHearingTestModeAdditions)
- (uint64_t)SBSUI_hearingTestMode;
- (void)SBSUI_setHearingTestMode:()SBSUIHearingTestModeAdditions;
@end

@implementation UIWindowScene(SBSUIHearingTestModeAdditions)

- (uint64_t)SBSUI_hearingTestMode
{
  v1 = [a1 _FBSScene];
  v2 = [v1 clientSettings];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 hearingTestMode];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)SBSUI_setHearingTestMode:()SBSUIHearingTestModeAdditions
{
  v4 = [a1 _FBSScene];
  v5 = [v4 clientSettings];
  if (objc_opt_respondsToSelector())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__UIWindowScene_SBSUIHearingTestModeAdditions__SBSUI_setHearingTestMode___block_invoke;
    v6[3] = &__block_descriptor_40_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
    v6[4] = a3;
    [v4 updateClientSettings:v6];
  }
}

@end