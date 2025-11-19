@interface SBAlwaysOnDefaults
- (BOOL)_shouldEnableAODByDefault;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBAlwaysOnDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableAlwaysOn"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SBAlwaysOnDefaults _shouldEnableAODByDefault](self, "_shouldEnableAODByDefault")}];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBEnableAlwaysOn" toDefaultValue:v4 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableTapToInteract"];
  v6 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBAlwaysOnTapToInteract" toDefaultValue:MEMORY[0x1E695E110] options:4];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableSwipeToUnlock"];
  v8 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBAlwaysOnSwipeToUnlock" toDefaultValue:MEMORY[0x1E695E118] options:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"forceAndromedaSupport"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBForceAndromedaSupport" toDefaultValue:v6 options:4];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"useAlwaysOnBrightnessCurve"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBUseAlwaysOnBrightnessCurve" toDefaultValue:v8 options:4];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"useDebugColors"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBAndromedaDebugColors" toDefaultValue:v6 options:4];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enforceOverallAPLLimit"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBEnforceOverallAPLLimit" toDefaultValue:v8 options:4];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"maximumRenderInterval"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"SBAndromedaMaximumFlipbookDuration" toDefaultValue:0 options:1];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showWallpaperInAlwaysOn"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"SBShowWallpaperInAlwaysOn" toDefaultValue:v8 options:1];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showNotificationsInAlwaysOn"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"SBShowNotificationsInAlwaysOn" toDefaultValue:v8 options:1];
}

- (BOOL)_shouldEnableAODByDefault
{
  v2 = MGCopyAnswer();
  v3 = [v2 BOOLValue];

  return v3 ^ 1;
}

@end