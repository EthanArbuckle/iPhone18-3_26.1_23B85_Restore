@interface SBElasticHUDSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBElasticHUDSettings

- (void)setDefaultValues
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134283521;
  v3 = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "(ElasticHUD) volumeButtonsCenterY: %{private}f", &v2, 0xCu);
}

double __40__SBElasticHUDSettings_setDefaultValues__block_invoke(int a1, CFTypeRef cf)
{
  v2 = *MEMORY[0x277CBF398];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDataGetTypeID())
    {
      v2 = *CFDataGetBytePtr(cf);
    }

    CFRelease(cf);
  }

  return v2;
}

+ (id)settingsControllerModule
{
  v67[9] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = MEMORY[0x277D43210];
  v4 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke();
  v5 = [v3 sectionWithRows:v4 title:@"Volume Control"];

  [v2 addObject:v5];
  v6 = MEMORY[0x277D43210];
  v7 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_2();
  v8 = [v6 sectionWithRows:v7 title:@"Brightness Control"];

  [v2 addObject:v8];
  v9 = MEMORY[0x277D43210];
  v66 = [MEMORY[0x277D431D8] rowWithTitle:@"Default (Transition)" childSettingsKeyPath:@"defaultTransitionSettings"];
  v67[0] = v66;
  v65 = [MEMORY[0x277D431D8] rowWithTitle:@"Default (Position)" childSettingsKeyPath:@"defaultPositionSettings"];
  v67[1] = v65;
  v10 = [MEMORY[0x277D431D8] rowWithTitle:@"Base-to-Initial (Transition)" childSettingsKeyPath:@"baseToInitialTransitionSettings"];
  v67[2] = v10;
  v11 = [MEMORY[0x277D431D8] rowWithTitle:@"Base-to-Initial (Position)" childSettingsKeyPath:@"baseToInitialPositionSettings"];
  v67[3] = v11;
  v12 = [MEMORY[0x277D431D8] rowWithTitle:@"Deflation Transition" childSettingsKeyPath:@"deflationTransitionSettings"];
  v67[4] = v12;
  v13 = [MEMORY[0x277D431D8] rowWithTitle:@"Deflated-to-Base (Transition)" childSettingsKeyPath:@"deflatingToBaseTransitionSettings"];
  v67[5] = v13;
  v14 = [MEMORY[0x277D431D8] rowWithTitle:@"Deflated-to-Base (Position)" childSettingsKeyPath:@"deflatingToBasePositionSettings"];
  v67[6] = v14;
  v15 = [MEMORY[0x277D431D8] rowWithTitle:@"General To-Base Transition" childSettingsKeyPath:@"generalToBaseTransitionSettings"];
  v67[7] = v15;
  v16 = [MEMORY[0x277D431D8] rowWithTitle:@"Compact-To-Base Transition" childSettingsKeyPath:@"compactToBaseTransitionSettings"];
  v67[8] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:9];
  v18 = [v9 sectionWithRows:v17 title:@"Animation Settings"];

  [v2 addObject:v18];
  v19 = MEMORY[0x277D43210];
  v20 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_3();
  v21 = [v19 sectionWithRows:v20 title:@"Metrics"];

  [v2 addObject:v21];
  v22 = MEMORY[0x277D43210];
  v23 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_4();
  v24 = [v22 sectionWithRows:v23 title:@"Dismissal Timing"];

  [v2 addObject:v24];
  v25 = MEMORY[0x277D43210];
  v26 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_5();
  v27 = [v25 sectionWithRows:v26 title:@"Interaction Legibility"];

  [v2 addObject:v27];
  v28 = MEMORY[0x277D43210];
  v29 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_6();
  v30 = [v28 sectionWithRows:v29 title:@"General Landscape"];

  [v2 addObject:v30];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v33 = MEMORY[0x277D43210];
    v34 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_7();
    v35 = [v33 sectionWithRows:v34 title:@"General Portrait"];

    [v2 addObject:v35];
  }

  v36 = MEMORY[0x277D43210];
  v37 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_8();
  v38 = [v36 sectionWithRows:v37 title:@"Initial State Landscape"];

  [v2 addObject:v38];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v41 = MEMORY[0x277D43210];
    v42 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_9();
    v43 = [v41 sectionWithRows:v42 title:@"Initial State Portrait"];

    [v2 addObject:v43];
  }

  v44 = MEMORY[0x277D43210];
  v45 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_10();
  v46 = [v44 sectionWithRows:v45 title:@"Compact State Landscape"];

  [v2 addObject:v46];
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v49 = MEMORY[0x277D43210];
    v50 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_11();
    v51 = [v49 sectionWithRows:v50 title:@"Compact State Portrait"];

    [v2 addObject:v51];
  }

  v52 = MEMORY[0x277D43210];
  v53 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_12();
  v54 = [v52 sectionWithRows:v53 title:@"Interacting State Landscape"];

  [v2 addObject:v54];
  currentDevice4 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

  if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v57 = MEMORY[0x277D43210];
    v58 = __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_13();
    v59 = [v57 sectionWithRows:v58 title:@"Interacting State Portrait"];

    [v2 addObject:v59];
  }

  v60 = MEMORY[0x277D43210];
  v61 = __41__SBHUDSettings_settingsControllerModule__block_invoke_2();
  v62 = [v60 sectionWithRows:v61];

  [v2 addObject:v62];
  v63 = [MEMORY[0x277D43210] moduleWithTitle:@"Elastic HUD Settings" contents:v2];

  return v63;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277D43290] rowWithTitle:@"Volume Step" valueKeyPath:@"volumeStepDelta"];
  [v1 setMaxValue:0.1];
  [v1 setMinValue:0.01];
  [v0 addObject:v1];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"Show Debug UI" valueKeyPath:@"showDebugUI"];
  v3 = [MEMORY[0x277D432A8] rowWithTitle:@"Auto Dismiss" valueKeyPath:@"autoDismiss"];
  [v0 addObject:v2];
  [v0 addObject:v3];

  return v0;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB18] array];
  v1 = [MEMORY[0x277D432A8] rowWithTitle:@"Change Display with ⌘+↑↓" valueKeyPath:@"displayBrightnessKeyCommandsEnabled"];
  v2 = [MEMORY[0x277D432A8] rowWithTitle:@"Change Keyboard with ^+⌘+↑↓" valueKeyPath:@"keyboardBrightnessKeyCommandsEnabled"];
  [v0 addObject:v1];
  [v0 addObject:v2];

  return v0;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_3()
{
  v10[5] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D431E8] rowWithTitle:@"Base Scale Factor" valueKeyPath:@"baseScaleFactor"];
  v1 = [MEMORY[0x277D431E8] rowWithTitle:@"Deflated Scale Factor" valueKeyPath:@"deflatedScaleFactor"];
  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"Compact Stretch Amount" valueKeyPath:@"compactStretchAmount"];
  v3 = [v2 precision:3];

  v4 = [MEMORY[0x277D431E8] rowWithTitle:@"Interacting Stretch Amount" valueKeyPath:@"interactingStretchAmount"];
  v5 = [v4 precision:3];

  v6 = [MEMORY[0x277D431E8] rowWithTitle:@"Label Padding" valueKeyPath:@"labelPadding"];
  v7 = [v6 precision:4];

  v10[0] = v0;
  v10[1] = v1;
  v10[2] = v3;
  v10[3] = v5;
  v10[4] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];

  return v8;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_4()
{
  v8[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D431E8] rowWithTitle:@"Dismissal Interval" valueKeyPath:@"dismissalInterval"];
  v1 = [v0 precision:3];

  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"Deflation Dismissal Interval" valueKeyPath:@"deflationDismissalInterval"];
  v3 = [v2 precision:3];

  v4 = [MEMORY[0x277D431E8] rowWithTitle:@"Post-Transition Dismissal Interval" valueKeyPath:@"postTransitionDismissalInterval"];
  v5 = [v4 precision:3];

  v8[0] = v1;
  v8[1] = v3;
  v8[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_5()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D431E8] rowWithTitle:@"Dimming Alpha" valueKeyPath:@"dimmingAlpha"];
  v1 = [MEMORY[0x277D431E8] rowWithTitle:@"Legibility Strength" valueKeyPath:@"legibilityStrength"];
  v4[0] = v0;
  v4[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_6()
{
  v8[3] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D431E8] rowWithTitle:@"On-screen Top Margin" valueKeyPath:@"onscreenTopMargin"];
  v1 = [v0 precision:4];

  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"Off-screen Top Margin" valueKeyPath:@"offscreenTopMargin"];
  v3 = [v2 precision:4];

  v4 = [MEMORY[0x277D431E8] rowWithTitle:@"Landscape Corner Radius Fraction" valueKeyPath:@"landscapeCornerRadiusFraction"];
  v5 = [v4 precision:4];

  v8[0] = v3;
  v8[1] = v1;
  v8[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_7()
{
  v10[4] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D431E8] rowWithTitle:@"Center Y Position" valueKeyPath:@"volumeButtonsCenterY"];
  v1 = [v0 precision:4];

  v2 = [MEMORY[0x277D431E8] rowWithTitle:@"On-screen Leading Margin" valueKeyPath:@"onscreenLeadingMargin"];
  v3 = [v2 precision:4];

  v4 = [MEMORY[0x277D431E8] rowWithTitle:@"Off-screen Leading Margin" valueKeyPath:@"offscreenLeadingMargin"];
  v5 = [v4 precision:4];

  v6 = [MEMORY[0x277D431E8] rowWithTitle:@"Portrait Corner Radius Fraction" valueKeyPath:@"portraitCornerRadiusFraction"];
  v7 = [v6 precision:4];

  v10[0] = v1;
  v10[1] = v3;
  v10[2] = v5;
  v10[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];

  return v8;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_8()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277D43290] rowWithTitle:@"width" valueKeyPath:@"landscapeState1Width"];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = [v1 minValue:50.0 maxValue:v3];

  [v0 addObject:v4];
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"width" valueKeyPath:@"landscapeState1Width"];
  [v0 addObject:v5];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"height" valueKeyPath:@"landscapeState1Height"];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = [v6 minValue:5.0 maxValue:v8];

  [v0 addObject:v9];
  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"height" valueKeyPath:@"landscapeState1Height"];
  [v0 addObject:v10];

  return v0;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_9()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277D43290] rowWithTitle:@"width (slider)" valueKeyPath:@"portraitState1Width"];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = [v1 minValue:50.0 maxValue:v3];

  [v0 addObject:v4];
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"width" valueKeyPath:@"portraitState1Width"];
  [v0 addObject:v5];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"height (slider)" valueKeyPath:@"portraitState1Height"];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = [v6 minValue:5.0 maxValue:v8];

  [v0 addObject:v9];
  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"height" valueKeyPath:@"portraitState1Height"];
  [v0 addObject:v10];

  return v0;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_10()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277D43290] rowWithTitle:@"width (slider)" valueKeyPath:@"landscapeState2Width"];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = [v1 minValue:50.0 maxValue:v3];

  [v0 addObject:v4];
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"width" valueKeyPath:@"landscapeState2Width"];
  [v0 addObject:v5];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"height (slider)" valueKeyPath:@"landscapeState2Height"];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = [v6 minValue:5.0 maxValue:v8];

  [v0 addObject:v9];
  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"height" valueKeyPath:@"landscapeState2Height"];
  [v0 addObject:v10];

  return v0;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_11()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277D43290] rowWithTitle:@"width (slider)" valueKeyPath:@"portraitState2Width"];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = [v1 minValue:50.0 maxValue:v3];

  [v0 addObject:v4];
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"width" valueKeyPath:@"portraitState2Width"];
  [v0 addObject:v5];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"height (slider)" valueKeyPath:@"portraitState2Height"];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = [v6 minValue:5.0 maxValue:v8];

  [v0 addObject:v9];
  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"height" valueKeyPath:@"portraitState2Height"];
  [v0 addObject:v10];

  return v0;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_12()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277D43290] rowWithTitle:@"width (slider)" valueKeyPath:@"landscapeState3Width"];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = [v1 minValue:50.0 maxValue:v3];

  [v0 addObject:v4];
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"width" valueKeyPath:@"landscapeState3Width"];
  [v0 addObject:v5];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"height (slider)" valueKeyPath:@"landscapeState3Height"];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = [v6 minValue:5.0 maxValue:v8];

  [v0 addObject:v9];
  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"height" valueKeyPath:@"landscapeState3Height"];
  [v0 addObject:v10];

  return v0;
}

id __48__SBElasticHUDSettings_settingsControllerModule__block_invoke_13()
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277D43290] rowWithTitle:@"width (slider)" valueKeyPath:@"portraitState3Width"];
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = [v1 minValue:50.0 maxValue:v3];

  [v0 addObject:v4];
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"width" valueKeyPath:@"portraitState3Width"];
  [v0 addObject:v5];
  v6 = [MEMORY[0x277D43290] rowWithTitle:@"height (slider)" valueKeyPath:@"portraitState3Height"];
  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 bounds];
  v9 = [v6 minValue:5.0 maxValue:v8];

  [v0 addObject:v9];
  v10 = [MEMORY[0x277D431E8] rowWithTitle:@"height" valueKeyPath:@"portraitState3Height"];
  [v0 addObject:v10];

  return v0;
}

@end