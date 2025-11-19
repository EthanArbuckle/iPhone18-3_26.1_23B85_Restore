@interface UIWindowScene(RetailDemoSupport)
- (uint64_t)sb_disablesMultitaskingWhileForeground;
- (void)sb_setDisablesMultitaskingWhileForeground:()RetailDemoSupport;
@end

@implementation UIWindowScene(RetailDemoSupport)

- (uint64_t)sb_disablesMultitaskingWhileForeground
{
  v2 = [a1 _FBSScene];
  v3 = [v2 clientSettings];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 _FBSScene];
    v5 = [v4 clientSettings];
    v6 = [v5 disablesMultitaskingWhileForeground];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)sb_setDisablesMultitaskingWhileForeground:()RetailDemoSupport
{
  v5 = [a1 _FBSScene];
  v6 = [v5 clientSettings];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [a1 _FBSScene];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__UIWindowScene_RetailDemoSupport__sb_setDisablesMultitaskingWhileForeground___block_invoke;
    v9[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
    v10 = a3;
    [v8 updateClientSettings:v9];
  }
}

@end