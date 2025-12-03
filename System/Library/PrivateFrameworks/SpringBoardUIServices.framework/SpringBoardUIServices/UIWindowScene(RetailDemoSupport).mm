@interface UIWindowScene(RetailDemoSupport)
- (uint64_t)sb_disablesMultitaskingWhileForeground;
- (void)sb_setDisablesMultitaskingWhileForeground:()RetailDemoSupport;
@end

@implementation UIWindowScene(RetailDemoSupport)

- (uint64_t)sb_disablesMultitaskingWhileForeground
{
  _FBSScene = [self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  if (objc_opt_respondsToSelector())
  {
    _FBSScene2 = [self _FBSScene];
    clientSettings2 = [_FBSScene2 clientSettings];
    disablesMultitaskingWhileForeground = [clientSettings2 disablesMultitaskingWhileForeground];
  }

  else
  {
    disablesMultitaskingWhileForeground = 0;
  }

  return disablesMultitaskingWhileForeground;
}

- (void)sb_setDisablesMultitaskingWhileForeground:()RetailDemoSupport
{
  _FBSScene = [self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    _FBSScene2 = [self _FBSScene];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__UIWindowScene_RetailDemoSupport__sb_setDisablesMultitaskingWhileForeground___block_invoke;
    v9[3] = &__block_descriptor_33_e69_v24__0__FBSMutableSceneClientSettings_8__FBSSceneTransitionContext_16l;
    v10 = a3;
    [_FBSScene2 updateClientSettings:v9];
  }
}

@end