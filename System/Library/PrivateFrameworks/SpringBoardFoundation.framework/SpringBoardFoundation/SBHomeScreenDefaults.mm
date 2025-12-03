@interface SBHomeScreenDefaults
- (BOOL)automaticallyAddsNewApplicationsExists;
- (id)iconTintColor;
- (id)observeIconTintColorOnQueue:(id)queue withBlock:(id)block;
- (void)_bindAndRegisterDefaults;
- (void)setIconTintColor:(id)color;
@end

@implementation SBHomeScreenDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sidebarPinned"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBHomeSidebarIsPinned" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldUseLargeDefaultSizedIcons"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBHomeLargeIcons" toDefaultValue:v4 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldUseLargeIcons"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBHomeHideLabels" toDefaultValue:v4 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldFudgeShortcutsToCauseMaximumPain"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBFudgeShortcutsToCauseMaximumPain" toDefaultValue:v4 options:1];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldHideReportWidgetStackRotationQuickAction"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBHideReportWidgetStackRotationQuickAction" toDefaultValue:v4 options:1];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldPrepareDefaultTodayList"];
  v10 = MEMORY[0x1E695E118];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBShouldResetDefaultTodayList" toDefaultValue:MEMORY[0x1E695E118] options:1];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldPrepareStackForDefaultTodayList"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBShouldResetStackForDefaultTodayList" toDefaultValue:v10 options:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldUpgradeEnableWidgetSuggestions"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBShouldUpgradeEnableWidgetSuggestions" toDefaultValue:v10 options:1];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldAddDefaultWidgetsToHomeScreen"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"SBShouldAddDefaultWidgetsToHomeScreen" toDefaultValue:v10 options:1];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableModalWidgetDiscoverabilityForTesting"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"SBEnableModalWidgetDiscoverabilityForTesting" toDefaultValue:v4 options:1];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"overriddenScreenType"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"SBHomeScreenScreenTypeOverride" toDefaultValue:0 options:1];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"automaticallyAddsNewApplications"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v16 withDefaultKey:@"SBHomeAutomaticallyAddsNewApplications" toDefaultValue:v10 options:1];

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showsBadgesInAppLibrary"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v17 withDefaultKey:@"SBHomeScreenShowsBadgesInAppLibrary" toDefaultValue:v4 options:1];

  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"showsHomeScreenSearchAffordance"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v18 withDefaultKey:@"SBHomeScreenShowsSearchAffordance" toDefaultValue:v10 options:1];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pagesHaveEverBeenHidden"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v19 withDefaultKey:@"SBHomeScreenPagesHaveEverBeenHidden" toDefaultValue:v4 options:1];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldShowLibraryEducationView"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v20 withDefaultKey:@"SBHomeShouldShowLibraryEducationView" toDefaultValue:v10 options:1];

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldShowWidgetIntroductionPopover"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v21 withDefaultKey:@"SBShouldShowWidgetIntroductionPage" toDefaultValue:v10 options:1];

  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"userHasDeletedSuggestedWidget"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v22 withDefaultKey:@"SBUserHasDeletedSuggestedWidget" toDefaultValue:v4 options:1];

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"userDidUndoSuggestedWidget"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v23 withDefaultKey:@"SBUserDidUndoSuggestedWidget" toDefaultValue:v4 options:1];

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"focusModesRequiringIntroduction"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v24 withDefaultKey:@"SBFocusModesRequiringIntroduction" toDefaultValue:0 options:8];

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"leftOfHomeAppBundleIdentifier"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v25 withDefaultKey:@"SBLeftOfHomeAppBundleIdentifier" toDefaultValue:0 options:1];

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldIgnoreMinimumRequiredSDKVersionForWidgets"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v26 withDefaultKey:@"SBIgnoreMinimumRequiredSDKVersionForWidgets" toDefaultValue:v4 options:1];

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldInsertDownloadFileStackIconToFloatingDock"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v27 withDefaultKey:@"SBShouldInsertDownloadFileStackIconToFloatingDock" toDefaultValue:v10 options:1];

  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"iconTintColorData"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v28 withDefaultKey:@"SBHomeIconTintColor" toDefaultValue:0 options:1];

  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"iconUserInterfaceStyle"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v29 withDefaultKey:@"SBHomeIconUserInterfaceStyle" toDefaultValue:@"light" options:1];

  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"iconUserInterfaceStyleVariation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v30 withDefaultKey:@"SBHomeIconUserInterfaceStyleVariation" toDefaultValue:0 options:1];

  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"iconUserInterfaceStyleLuminance"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v31 withDefaultKey:@"SBHomeIconUserInterfaceStyleLuminance" toDefaultValue:0 options:1];

  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"iconUserInterfaceStyleSaturation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v32 withDefaultKey:@"SBHomeIconUserInterfaceStyleSaturation" toDefaultValue:0 options:1];

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableHomeScreenWallpaperDimming"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v33 withDefaultKey:@"SBEnableHomeScreenWallpaperDimming" toDefaultValue:v4 options:1];

  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"didMigrateHomeScreenDefaultsTintToPosterBoard"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v34 withDefaultKey:@"SBMigratedHomeScreenDefaultsTintToPosterBoard" toDefaultValue:v4 options:1];

  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldUseFlatIconsEverywhere"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v35 withDefaultKey:@"SBUseFlatIconsEverywhere" toDefaultValue:v4 options:1];

  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableSpecularEverywhere"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v36 withDefaultKey:@"SBDisableSpecularEverywhere" toDefaultValue:v4 options:1];

  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableSpecularEverywhereUsingLSSAssertion"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v37 withDefaultKey:@"SBDisableSpecularEverywhereUsingLSSAssertion" toDefaultValue:v4 options:1];

  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableWidgetSpecular"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v38 withDefaultKey:@"SBDisableWidgetSpecular" toDefaultValue:v4 options:1];

  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableDockSpecular"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v39 withDefaultKey:@"SBDisableDockSpecular" toDefaultValue:v4 options:1];

  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableFolderSpecular"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v40 withDefaultKey:@"SBDisableFolderSpecular" toDefaultValue:v4 options:1];

  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableGlassDock"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v41 withDefaultKey:@"SBDisableGlassDock" toDefaultValue:v4 options:1];

  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldExcludeDockShadow"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v42 withDefaultKey:@"SBExcludeDockShadow" toDefaultValue:v10 options:1];

  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldExcludeSearchShadow"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v43 withDefaultKey:@"SBExcludeSearchShadow" toDefaultValue:v10 options:1];

  v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldExcludeAllClearGlassShadows"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v44 withDefaultKey:@"SBExcludeAllClearGlassShadows" toDefaultValue:v4 options:1];

  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableParallax"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v45 withDefaultKey:@"SBDisableParallax" toDefaultValue:v4 options:1];

  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"shouldDisableParallaxOnPageControl"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v46 withDefaultKey:@"SBDisableParallaxOnPageControl" toDefaultValue:v10 options:1];
}

- (BOOL)automaticallyAddsNewApplicationsExists
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  v3 = [_store bs_defaultExists:@"SBHomeAutomaticallyAddsNewApplications"];

  return v3;
}

- (id)iconTintColor
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  v3 = [_store dataForKey:@"SBHomeIconTintColor"];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_self();
    v6 = [v4 unarchivedObjectOfClass:v5 fromData:v3 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setIconTintColor:(id)color
{
  if (color)
  {
    _store2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:color requiringSecureCoding:1 error:0];
    _store = [(BSAbstractDefaultDomain *)self _store];
    [_store setObject:_store2 forKey:@"SBHomeIconTintColor"];
  }

  else
  {
    _store2 = [(BSAbstractDefaultDomain *)self _store];
    [_store2 removeObjectForKey:@"SBHomeIconTintColor"];
  }
}

- (id)observeIconTintColorOnQueue:(id)queue withBlock:(id)block
{
  v15[3] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  blockCopy = block;
  queueCopy = queue;
  v9 = [v6 stringWithUTF8String:"iconTintColorData"];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"iconUserInterfaceStyleLuminance", v9}];
  v15[1] = v10;
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"iconUserInterfaceStyleVariation"];
  v15[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

  v13 = [(BSAbstractDefaultDomain *)self observeDefaults:v12 onQueue:queueCopy withBlock:blockCopy];

  return v13;
}

@end