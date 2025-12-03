@interface SBAppSwitcherDefaults
- (BOOL)_shouldMedusaMultitaskingBeEnabledByDefault;
- (void)_bindAndRegisterDefaults;
- (void)clearLegacyDefaults;
@end

@implementation SBAppSwitcherDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bottomEdgeGestureSwipeCount"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBSwitcherBottomEdgeGestureSwipeCount" toDefaultValue:&unk_1F3D3E8F8 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"springBoardKillable"];
  v5 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBKillableInAppSwitcher" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"trackpadSwitcherGesturesEnabled"];
  v7 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBTrackpadSwitcherGesturesEnabled" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"recentsPlistRepresentation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBRecentAppLayoutsPlistRepresentation" toDefaultValue:0 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"chamoisWindowingEnabled"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBChamoisWindowingEnabled" toDefaultValue:v5 options:1];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"chamoisHideStrips"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBChamoisHideStrips" toDefaultValue:v5 options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"chamoisHideDock"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBChamoisHideDock" toDefaultValue:v5 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"flexibleWindowingAutomaticStageCreationEnabledExternal"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBFlexibleWindowingAutomaticStageCreationEnabledExternal" toDefaultValue:v5 options:1];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"flexibleWindowingPreviouslyEnabledAutomaticStageCreation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"SBFlexibleWindowingPreviouslyEnabledAutomaticStageCreation" toDefaultValue:v5 options:1];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"chamoisHideStripsExternal"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"SBChamoisHideStripsExternal" toDefaultValue:v5 options:1];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"chamoisHideDockExternal"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"SBChamoisHideDockExternal" toDefaultValue:v5 options:1];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"legacyRecentApplications"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"SBRecentDisplays" toDefaultValue:0 options:1];

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"legacyRecentDisplayItems"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"SBRecentDisplayItems" toDefaultValue:0 options:1];

  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"legacyRecentDisplayItemRoles"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v18 withDefaultKey:@"SBRecentDisplayItemRoles" toDefaultValue:0 options:1];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldShowSplitPeekEducation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v19 withDefaultKey:@"SBShouldShowSplitPeekEducation" toDefaultValue:v7 options:1];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldShowSlideOverPeekEducation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v20 withDefaultKey:@"SBShouldShowSlideOverPeekEducation" toDefaultValue:v7 options:1];

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"medusaMultitaskingEnabled"];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[SBAppSwitcherDefaults _shouldMedusaMultitaskingBeEnabledByDefault](self, "_shouldMedusaMultitaskingBeEnabledByDefault")}];
  [(BSAbstractDefaultDomain *)self _bindProperty:v21 withDefaultKey:@"SBMedusaMultitaskingEnabled" toDefaultValue:v22 options:1];

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"flexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v23 withDefaultKey:@"SBFlexibleWindowingManualStageCreationShouldRestorePreviousOpenWindows" toDefaultValue:v7 options:1];

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldUpdateExternalDisplayMirroringWhenWindowManagementStyleUpdates"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v24 withDefaultKey:@"SBShouldToggleExternalDisplayMirroringWhenWindowManagementStyleUpdates" toDefaultValue:v7 options:1];

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"backgroundNethermostWindows"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v25 withDefaultKey:@"SBBackgroundNethermostWindows" toDefaultValue:v7 options:1];

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"wantsManyForegroundWindows"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v26 withDefaultKey:@"SBWantsManyForegroundWindows" toDefaultValue:v7 options:1];

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"hasEverUsedMultiAppConfiguration"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v27 withDefaultKey:@"SBHasEverUsedMultiAppConfiguration" toDefaultValue:v5 options:1];

  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lastMultitaskingModeSwitchDate"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v28 withDefaultKey:@"SBLastMultitaskingModeSwitchDate" toDefaultValue:0 options:1];
}

- (BOOL)_shouldMedusaMultitaskingBeEnabledByDefault
{
  if (SBFIsFlexibleWindowingUIAvailable())
  {
    v2 = vcvtd_n_f64_s64(MGGetSInt64Answer(), 0x1EuLL);
    if (__sb__runningInSpringBoard())
    {
      v3 = SBFEffectiveDeviceClass();
      return v2 > 3.0 && v3 == 2;
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v8 = v2 > 3.0 && userInterfaceIdiom == 1;
  }

  else
  {
    if (__sb__runningInSpringBoard())
    {
      return SBFEffectiveDeviceClass() == 2;
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [currentDevice userInterfaceIdiom] == 1;
  }

  v5 = v8;

  return v5;
}

- (void)clearLegacyDefaults
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  [_store removeObjectForKey:@"SBRecentDisplays"];

  _store2 = [(BSAbstractDefaultDomain *)self _store];
  [_store2 removeObjectForKey:@"SBRecentDisplayItems"];

  _store3 = [(BSAbstractDefaultDomain *)self _store];
  [_store3 removeObjectForKey:@"SBRecentDisplayItemRoles"];
}

@end