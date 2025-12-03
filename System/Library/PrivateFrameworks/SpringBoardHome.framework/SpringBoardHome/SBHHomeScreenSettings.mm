@interface SBHHomeScreenSettings
+ (id)homeScreenDefaults;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHHomeScreenSettings

- (void)setDefaultValues
{
  v17.receiver = self;
  v17.super_class = SBHHomeScreenSettings;
  [(PTSettings *)&v17 setDefaultValues];
  [(SBHHomeScreenSettings *)self setUsesMinimumViableHomeScreen:0];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(SBHHomeScreenSettings *)self setShowPopOvers:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  homeScreenPullToSearchSettings = [(SBHHomeScreenSettings *)self homeScreenPullToSearchSettings];
  [homeScreenPullToSearchSettings setDefaultValues];

  todayViewPullToSearchSettings = [(SBHHomeScreenSettings *)self todayViewPullToSearchSettings];
  [todayViewPullToSearchSettings setDefaultValues];
  [todayViewPullToSearchSettings setPullTransitionDistance:75.0];
  [todayViewPullToSearchSettings setPullTransitionActivationThreshold:37.5];
  [todayViewPullToSearchSettings setPullTransitionRubberbandThreshold:75.0];
  [todayViewPullToSearchSettings setPullGestureBeganFromTopLeeway:75.0];
  [todayViewPullToSearchSettings setAllowsKeyboardWhileInteractive:0];
  coversheetPullToSearchSettings = [(SBHHomeScreenSettings *)self coversheetPullToSearchSettings];
  [coversheetPullToSearchSettings setDefaultValues];
  [coversheetPullToSearchSettings setPullTransitionDistance:75.0];
  [coversheetPullToSearchSettings setPullTransitionActivationThreshold:37.5];
  [coversheetPullToSearchSettings setPullTransitionRubberbandThreshold:75.0];
  [coversheetPullToSearchSettings setPullGestureBeganFromTopLeeway:75.0];
  if ((SBHSearchAffordancePresentationAnimationEnabled([coversheetPullToSearchSettings setAllowsKeyboardWhileInteractive:0]) & 1) == 0)
  {
    todayViewPullToSearchSettings2 = [(SBHHomeScreenSettings *)self todayViewPullToSearchSettings];
    pullTransitionAnimationSettings = [todayViewPullToSearchSettings2 pullTransitionAnimationSettings];

    [pullTransitionAnimationSettings setDampingRatio:1.0];
    [pullTransitionAnimationSettings setResponse:0.54];
    homeScreenPullToSearchSettings2 = [(SBHHomeScreenSettings *)self homeScreenPullToSearchSettings];
    [homeScreenPullToSearchSettings2 setSearchContentFadeInStartThreshold:0.25];

    todayViewPullToSearchSettings3 = [(SBHHomeScreenSettings *)self todayViewPullToSearchSettings];
    [todayViewPullToSearchSettings3 setSearchContentFadeInStartThreshold:0.3];

    coversheetPullToSearchSettings2 = [(SBHHomeScreenSettings *)self coversheetPullToSearchSettings];
    [coversheetPullToSearchSettings2 setSearchContentFadeInStartThreshold:0.3];
  }

  libraryPullToSearchSettings = [(SBHHomeScreenSettings *)self libraryPullToSearchSettings];
  [libraryPullToSearchSettings setDefaultValues];
  [libraryPullToSearchSettings setPullTransitionDistance:100.0];
  [libraryPullToSearchSettings setPullTransitionActivationThreshold:0.5];
  [libraryPullToSearchSettings setPullGestureBeganFromTopLeeway:100.0];
  pullTransitionAnimationSettings2 = [libraryPullToSearchSettings pullTransitionAnimationSettings];
  [pullTransitionAnimationSettings2 setDampingRatio:1.0];
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  [pullTransitionAnimationSettings2 setResponse:dbl_1BEE85A70[(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1]];
}

+ (id)homeScreenDefaults
{
  if (homeScreenDefaults_onceToken_0 != -1)
  {
    +[SBHHomeScreenSettings homeScreenDefaults];
  }

  v3 = homeScreenDefaults_homeScreenDefaults_0;

  return v3;
}

uint64_t __43__SBHHomeScreenSettings_homeScreenDefaults__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69D4030]);
  v1 = homeScreenDefaults_homeScreenDefaults_0;
  homeScreenDefaults_homeScreenDefaults_0 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)settingsControllerModule
{
  v38[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Minimum Viable Home Screen" valueKeyPath:@"usesMinimumViableHomeScreen"];
  v38[0] = v2;
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Popovers in Quick Actions" valueKeyPath:@"showPopOvers"];
  v38[1] = v3;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];

  v33 = [MEMORY[0x1E69C6638] sectionWithRows:v29 title:@"Features"];
  v32 = [MEMORY[0x1E69C6610] rowWithTitle:@"Icons" childSettingsKeyPath:@"iconSettings"];
  v37[0] = v32;
  v31 = [MEMORY[0x1E69C6610] rowWithTitle:@"Folders" childSettingsKeyPath:@"folderSettings"];
  v37[1] = v31;
  v30 = [MEMORY[0x1E69C6610] rowWithTitle:@"Legibility" childSettingsKeyPath:@"legibilityLabelSettings"];
  v37[2] = v30;
  v28 = [MEMORY[0x1E69C6610] rowWithTitle:@"Root Folder" childSettingsKeyPath:@"rootFolderSettings"];
  v37[3] = v28;
  v27 = [MEMORY[0x1E69C6610] rowWithTitle:@"Icon Editing" childSettingsKeyPath:@"iconEditingSettings"];
  v37[4] = v27;
  v4 = [MEMORY[0x1E69C6610] rowWithTitle:@"Icon Resizing" childSettingsKeyPath:@"iconResizingSettings"];
  v37[5] = v4;
  v5 = [MEMORY[0x1E69C6610] rowWithTitle:@"Widgets" childSettingsKeyPath:@"widgetSettings"];
  v37[6] = v5;
  v6 = [MEMORY[0x1E69C6610] rowWithTitle:@"Widget Introduction" childSettingsKeyPath:@"widgetIntroductionSettings"];
  v37[7] = v6;
  v7 = [MEMORY[0x1E69C6610] rowWithTitle:@"App Library" childSettingsKeyPath:@"appLibrarySettings"];
  v37[8] = v7;
  v8 = [MEMORY[0x1E69C6610] rowWithTitle:@"Home Screen Pull-to-Search" childSettingsKeyPath:@"homeScreenPullToSearchSettings"];
  v37[9] = v8;
  v9 = [MEMORY[0x1E69C6610] rowWithTitle:@"Today View Pull-to-Search" childSettingsKeyPath:@"todayViewPullToSearchSettings"];
  v37[10] = v9;
  v10 = [MEMORY[0x1E69C6610] rowWithTitle:@"Coversheet Pull-to-Search" childSettingsKeyPath:@"coversheetPullToSearchSettings"];
  v37[11] = v10;
  v11 = [MEMORY[0x1E69C6610] rowWithTitle:@"App Library Pull-to-Search" childSettingsKeyPath:@"libraryPullToSearchSettings"];
  v37[12] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:13];

  v13 = [MEMORY[0x1E69C6638] sectionWithRows:v12];
  v14 = MEMORY[0x1E69C6638];
  v15 = [MEMORY[0x1E69C6610] rowWithTitle:@"Icon Animations" childSettingsKeyPath:@"iconAnimationSettings"];
  v36 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v17 = [v14 sectionWithRows:v16];

  v18 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v20 = [v18 rowWithTitle:@"Restore Defaults" action:action];
  v35 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];

  v22 = [MEMORY[0x1E69C6638] sectionWithRows:v21];
  v23 = MEMORY[0x1E69C6638];
  v34[0] = v33;
  v34[1] = v13;
  v34[2] = v17;
  v34[3] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  v25 = [v23 moduleWithTitle:0 contents:v24];

  return v25;
}

@end