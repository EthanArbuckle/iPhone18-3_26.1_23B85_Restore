@interface SBMiscellaneousDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation SBMiscellaneousDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"dataPlanActivationPromptCount"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBDataPlanActivationPromptCount" toDefaultValue:&unk_1F3D3E820 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"suppressNoSimAlert"];
  v5 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBSuppressNoSimAlert" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"walletPreArmForceLockButton"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBWalletPreArmForceLockButton" toDefaultValue:v5 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"backlightLevel"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBBacklightLevel2" toDefaultValue:&unk_1F3D3EF48 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"suppressAlertsForKeynote"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBSupressAlertsForKeynote" toDefaultValue:v5 options:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sensitiveUIEnabled"];
  v10 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBSensitiveUIEnabled" toDefaultValue:MEMORY[0x1E695E118] options:4];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sensitiveUIEpoch"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBSensitiveUIEpoch" toDefaultValue:&unk_1F3D3E820 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableAsyncRenderingSurfaceRetention"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBDisableAsyncRenderingSurfaceRetention" toDefaultValue:v5 options:4];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"launchWithMallocStackLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"SBShouldLaunchWithMallocStackLogging" toDefaultValue:v5 options:1];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableAutomaticMallocStackLogging"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"SBDisableAutomaticMallocStackLogging" toDefaultValue:v5 options:1];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableDynamicJetsamLimits"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"SBEnableDynamicJetsamLimits" toDefaultValue:v10 options:1];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mainDisplayDarkeningPercentage"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"SBMainDisplayDarkeningPercentage" toDefaultValue:&unk_1F3D3EF48 options:1];

  if (MEMORY[0x1BFB4D220]("[SBMiscellaneousDefaults _bindAndRegisterDefaults]"))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SBMiscellaneousDefaults__bindAndRegisterDefaults__block_invoke;
    block[3] = &unk_1E807F178;
    block[4] = self;
    if (_bindAndRegisterDefaults_onceToken != -1)
    {
      dispatch_once(&_bindAndRegisterDefaults_onceToken, block);
    }
  }
}

void __51__SBMiscellaneousDefaults__bindAndRegisterDefaults__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) _store];
  if ([v1 bs_defaultExists:@"SBSensitiveUIEpoch"] && objc_msgSend(v1, "integerForKey:", @"SBSensitiveUIEpoch") > 1)
  {
    v5 = SBLogSensitiveUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "No sensitive UI epoch migration required", &v6, 2u);
    }
  }

  else
  {
    v2 = SBLogSensitiveUI();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [v1 objectForKey:@"SBSensitiveUIEpoch"];
      v4 = [v1 objectForKey:@"SBSensitiveUIEnabled"];
      v6 = 138412802;
      v7 = v3;
      v8 = 1024;
      v9 = 2;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1BEA11000, v2, OS_LOG_TYPE_DEFAULT, "Migrating sensitive UI epoch from %@ to %d. SBSensitiveUIEnabled was %@", &v6, 0x1Cu);
    }

    [v1 removeObjectForKey:@"SBSensitiveUIEnabled"];
    [v1 setInteger:2 forKey:@"SBSensitiveUIEpoch"];
  }
}

@end