@interface SBHWidgetSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHWidgetSettings

- (void)setDefaultValues
{
  [(SBHWidgetSettings *)self setHitTestingDisabled:0];
  [(SBHWidgetSettings *)self setMaximumWidgetsInAStack:10];
  [(SBHWidgetSettings *)self setStackAlwaysShowsBorder:0];
  [(SBHWidgetSettings *)self setStackAlwaysShowsPageControl:0];
  [(SBHWidgetSettings *)self setStackFlashesPageControlOnAppearance:1];
  [(SBHWidgetSettings *)self setStackPageControlScale:0.65];
  toggleEditingOrPinnedAnimationSettings = [(SBHWidgetSettings *)self toggleEditingOrPinnedAnimationSettings];
  [toggleEditingOrPinnedAnimationSettings setDefaultValues];

  toggleEditingOrPinnedAnimationSettings2 = [(SBHWidgetSettings *)self toggleEditingOrPinnedAnimationSettings];
  [toggleEditingOrPinnedAnimationSettings2 setDampingRatio:0.845];

  toggleEditingOrPinnedAnimationSettings3 = [(SBHWidgetSettings *)self toggleEditingOrPinnedAnimationSettings];
  [toggleEditingOrPinnedAnimationSettings3 setResponse:0.45];

  [(SBHWidgetSettings *)self setAnimatedInsertionJumpScale:1.4];
  [(SBHWidgetSettings *)self setAnimatedInsertionImpactScale:0.8];
  [(SBHWidgetSettings *)self setAnimatedInsertionImpactDelay:0.5];
  [(SBHWidgetSettings *)self setAnimatedInsertionJumpDuration:0.7];
  [(SBHWidgetSettings *)self setAnimatedInsertionJumpDampingRatio:1.0];
  [(SBHWidgetSettings *)self setAnimatedInsertionSlamDuration:0.8];
  [(SBHWidgetSettings *)self setAnimatedInsertionSlamDelay:0.3];
  [(SBHWidgetSettings *)self setAnimatedInsertionSlamDampingRatio:1.0];
  [(SBHWidgetSettings *)self setAnimatedInsertionScaleResetDuration:0.8];
  [(SBHWidgetSettings *)self setAnimatedInsertionScaleResetDelay:0.6];
  [(SBHWidgetSettings *)self setAnimatedInsertionScaleResetDampingRatio:0.8];
  [(SBHWidgetSettings *)self setAnimatedInsertionPositionDuration:1.0];
  [(SBHWidgetSettings *)self setAnimatedInsertionPositionDampingRatio:1.0];
  dropInsertionAnimationSettings = [(SBHWidgetSettings *)self dropInsertionAnimationSettings];
  [dropInsertionAnimationSettings setDefaultValues];

  dropInsertionAnimationSettings2 = [(SBHWidgetSettings *)self dropInsertionAnimationSettings];
  [dropInsertionAnimationSettings2 setDampingRatio:0.7];

  dropInsertionAnimationSettings3 = [(SBHWidgetSettings *)self dropInsertionAnimationSettings];
  [dropInsertionAnimationSettings3 setResponse:0.36];

  dropInsertionAnimationSettings4 = [(SBHWidgetSettings *)self dropInsertionAnimationSettings];
  [dropInsertionAnimationSettings4 setTrackingDampingRatio:0.7];

  dropInsertionAnimationSettings5 = [(SBHWidgetSettings *)self dropInsertionAnimationSettings];
  [dropInsertionAnimationSettings5 setTrackingResponse:0.36];

  [(SBHWidgetSettings *)self setDropInsertionImpactScale:0.8];
  [(SBHWidgetSettings *)self setDropInsertionImpactDelay:0.0333333333];
  [(SBHWidgetSettings *)self setDropInsertionSlamDuration:0.3];
  [(SBHWidgetSettings *)self setDropInsertionSlamDelay:0.0];
  [(SBHWidgetSettings *)self setDropInsertionSlamDampingRatio:1.0];
  [(SBHWidgetSettings *)self setDropInsertionScaleResetDuration:0.6];
  [(SBHWidgetSettings *)self setDropInsertionScaleResetDelay:0.1];
  [(SBHWidgetSettings *)self setDropInsertionScaleResetDampingRatio:0.8];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(SBHWidgetSettings *)self setConfigurationBlursBackground:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1];
  [(SBHWidgetSettings *)self setConfigurationUsesPercentVerticalMargin:1];
  [(SBHWidgetSettings *)self setConfigurationPercentVerticalMargin:0.2];
  [(SBHWidgetSettings *)self setConfigurationAbsoluteVerticalMargin:24.0];
  [(SBHWidgetSettings *)self setConfigurationMinimumHorizontalMargin:16.0];
  [(SBHWidgetSettings *)self setConfigurationHomeScreenScale:0.9];
  [(SBHWidgetSettings *)self setConfigurationHomeScreenAlpha:0.9];
  [(SBHWidgetSettings *)self setConfigurationEqualizesMinCardToCameraDistance:1];
  [(SBHWidgetSettings *)self setConfigurationPerspectiveCameraDistance:-1000.0];
  [(SBHWidgetSettings *)self setConfigurationMinCardToCameraDistance:800.0];
  [(SBHWidgetSettings *)self setConfigurationDarkeningTintAlpha:0.6];
  [(SBHWidgetSettings *)self setConfigurationWidgetTintColorAlpha:0.0];
  [(SBHWidgetSettings *)self setConfigurationMaximizesCardHeight:0];
  [(SBHWidgetSettings *)self setConfigurationEnforcesMaxCardHeight:0];
  [(SBHWidgetSettings *)self setConfigurationMaxCardHeight:600.0];
  [(SBHWidgetSettings *)self setConfigurationUsesSidebarAsContainer:1];
  [(SBHWidgetSettings *)self setConfigurationFractionBetweenSourceAndContainerX:0.0];
  [(SBHWidgetSettings *)self setConfigurationFractionBetweenSourceAndContainerY:0.0];
  [(SBHWidgetSettings *)self setStackConfigurationContentHeightRatio:1.7];
  [(SBHWidgetSettings *)self setStackConfigurationZoomTransitionDuration:0.475];
  [(SBHWidgetSettings *)self setStackConfigurationBlursBackground:1];
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  [(SBHWidgetSettings *)self setStackConfigurationUsesFolderBlur:(userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  [(SBHWidgetSettings *)self setStackConfigurationDimmingAlpha:0.1728];
  [(SBHWidgetSettings *)self setStackConfigurationNoBlurDimmingAlpha:0.6];
  currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

  [(SBHWidgetSettings *)self setStackConfigurationShouldScaleWidgets:(userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) != 1];
  [(SBHWidgetSettings *)self setStackConfigurationMediumIconScale:0.86];
  [(SBHWidgetSettings *)self setStackConfigurationLargeIconScale:0.82];

  [(SBHWidgetSettings *)self setStackConfigurationExtraLargeIconScale:0.88];
}

+ (id)settingsControllerModule
{
  v175[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v167 = [v2 rowWithTitle:@"Restore Defaults" action:action];

  v4 = MEMORY[0x1E69C6638];
  v175[0] = v167;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:1];
  v166 = [v4 sectionWithRows:v5];

  v6 = MEMORY[0x1E69C6638];
  v7 = [MEMORY[0x1E69C6618] rowWithTitle:@"Maximum Widgets in a Stack" valueKeyPath:@"maximumWidgetsInAStack"];
  v8 = [v7 between:1.0 and:100.0];
  v9 = [v8 precision:0];
  v174[0] = v9;
  v10 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Stack Always Shows Border" valueKeyPath:@"stackAlwaysShowsBorder"];
  v174[1] = v10;
  v11 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Stack Always Shows Page Control" valueKeyPath:@"stackAlwaysShowsPageControl"];
  v174[2] = v11;
  v12 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Stack Flashes Page Control On Appearance" valueKeyPath:@"stackFlashesPageControlOnAppearance"];
  v174[3] = v12;
  v13 = [MEMORY[0x1E69C6610] rowWithTitle:@"Toggle Editing / Pinned Animation Settings" childSettingsKeyPath:@"toggleEditingOrPinnedAnimationSettings"];
  v174[4] = v13;
  v14 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Hit Testing Disabled" valueKeyPath:@"hitTestingDisabled"];
  v174[5] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:6];
  v165 = [v6 sectionWithRows:v15];

  v163 = MEMORY[0x1E69C6638];
  v160 = [MEMORY[0x1E69C6618] rowWithTitle:@"Jump Scale" valueKeyPath:@"animatedInsertionJumpScale"];
  v156 = [v160 between:0.0 and:5.0];
  v152 = [v156 precision:2];
  v173[0] = v152;
  v148 = [MEMORY[0x1E69C6618] rowWithTitle:@"Impact Scale" valueKeyPath:@"animatedInsertionImpactScale"];
  v144 = [v148 between:0.0 and:5.0];
  v140 = [v144 precision:2];
  v173[1] = v140;
  v136 = [MEMORY[0x1E69C6618] rowWithTitle:@"Impact Delay" valueKeyPath:@"animatedInsertionImpactDelay"];
  v132 = [v136 between:0.0 and:10.0];
  v128 = [v132 precision:3];
  v173[2] = v128;
  v124 = [MEMORY[0x1E69C6618] rowWithTitle:@"Jump Duration" valueKeyPath:@"animatedInsertionJumpDuration"];
  v119 = [v124 between:0.0 and:10.0];
  v115 = [v119 precision:2];
  v173[3] = v115;
  v111 = [MEMORY[0x1E69C6618] rowWithTitle:@"Jump Damping Ratio" valueKeyPath:@"animatedInsertionJumpDampingRatio"];
  v107 = [v111 between:0.0 and:1.0];
  v103 = [v107 precision:2];
  v173[4] = v103;
  v99 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slam Duration" valueKeyPath:@"animatedInsertionSlamDuration"];
  v95 = [v99 between:0.0 and:10.0];
  v93 = [v95 precision:2];
  v173[5] = v93;
  v91 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slam Delay" valueKeyPath:@"animatedInsertionSlamDelay"];
  v89 = [v91 between:0.0 and:10.0];
  v87 = [v89 precision:3];
  v173[6] = v87;
  v85 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slam Damping Ratio" valueKeyPath:@"animatedInsertionSlamDampingRatio"];
  v83 = [v85 between:0.0 and:1.0];
  v81 = [v83 precision:2];
  v173[7] = v81;
  v79 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Reset Duration" valueKeyPath:@"animatedInsertionScaleResetDuration"];
  v77 = [v79 between:0.0 and:10.0];
  v75 = [v77 precision:2];
  v173[8] = v75;
  v73 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Reset Delay" valueKeyPath:@"animatedInsertionScaleResetDelay"];
  v71 = [v73 between:0.0 and:10.0];
  v69 = [v71 precision:3];
  v173[9] = v69;
  v16 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Reset Damping Ratio" valueKeyPath:@"animatedInsertionScaleResetDampingRatio"];
  v17 = [v16 between:0.0 and:1.0];
  v18 = [v17 precision:2];
  v173[10] = v18;
  v19 = [MEMORY[0x1E69C6618] rowWithTitle:@"Position Duration" valueKeyPath:@"animatedInsertionPositionDuration"];
  v20 = [v19 between:0.0 and:10.0];
  v21 = [v20 precision:2];
  v173[11] = v21;
  v22 = [MEMORY[0x1E69C6618] rowWithTitle:@"Position Damping Ratio" valueKeyPath:@"animatedInsertionPositionDampingRatio"];
  v23 = [v22 between:0.0 and:1.0];
  v24 = [v23 precision:2];
  v173[12] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:13];
  v164 = [v163 sectionWithRows:v25 title:@"Animated Insertion"];

  v161 = MEMORY[0x1E69C6638];
  v157 = [MEMORY[0x1E69C6610] rowWithTitle:@"Animation Settings" childSettingsKeyPath:@"dropInsertionAnimationSettings"];
  v172[0] = v157;
  v153 = [MEMORY[0x1E69C6618] rowWithTitle:@"Impact Scale" valueKeyPath:@"dropInsertionImpactScale"];
  v149 = [v153 between:0.0 and:10.0];
  v145 = [v149 precision:2];
  v172[1] = v145;
  v141 = [MEMORY[0x1E69C6618] rowWithTitle:@"Impact Delay" valueKeyPath:@"dropInsertionImpactDelay"];
  v137 = [v141 between:0.0 and:10.0];
  v133 = [v137 precision:3];
  v172[2] = v133;
  v129 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slam Duration" valueKeyPath:@"dropInsertionSlamDuration"];
  v125 = [v129 between:0.0 and:10.0];
  v120 = [v125 precision:2];
  v172[3] = v120;
  v116 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slam Delay" valueKeyPath:@"dropInsertionSlamDelay"];
  v112 = [v116 between:0.0 and:10.0];
  v108 = [v112 precision:3];
  v172[4] = v108;
  v104 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slam Damping Ratio" valueKeyPath:@"dropInsertionSlamDampingRatio"];
  v100 = [v104 between:0.0 and:1.0];
  v96 = [v100 precision:2];
  v172[5] = v96;
  v26 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Reset Duration" valueKeyPath:@"dropInsertionScaleResetDuration"];
  v27 = [v26 between:0.0 and:10.0];
  v28 = [v27 precision:2];
  v172[6] = v28;
  v29 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Reset Delay" valueKeyPath:@"dropInsertionScaleResetDelay"];
  v30 = [v29 between:0.0 and:10.0];
  v31 = [v30 precision:3];
  v172[7] = v31;
  v32 = [MEMORY[0x1E69C6618] rowWithTitle:@"Scale Reset Damping Ratio" valueKeyPath:@"dropInsertionScaleResetDampingRatio"];
  v33 = [v32 between:0.0 and:1.0];
  v34 = [v33 precision:2];
  v172[8] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:9];
  v162 = [v161 sectionWithRows:v35 title:@"Drop Insertion"];

  v154 = MEMORY[0x1E69C6638];
  v158 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Blurs Background" valueKeyPath:@"configurationBlursBackground"];
  v171[0] = v158;
  v150 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Vertical Margin as Percent of Screen Height" valueKeyPath:@"configurationUsesPercentVerticalMargin"];
  v171[1] = v150;
  v146 = [MEMORY[0x1E69C6618] rowWithTitle:@"Vertical Margin Percentage" valueKeyPath:@"configurationPercentVerticalMargin"];
  v142 = [v146 between:0.0 and:1.0];
  v138 = [v142 precision:2];
  v171[2] = v138;
  v134 = [MEMORY[0x1E69C6618] rowWithTitle:@"Absolute Vertical Margin" valueKeyPath:@"configurationAbsoluteVerticalMargin"];
  v130 = [v134 between:0.0 and:100.0];
  v126 = [v130 precision:0];
  v171[3] = v126;
  v121 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Horizontal Margin" valueKeyPath:@"configurationMinimumHorizontalMargin"];
  v117 = [v121 between:0.0 and:100.0];
  v113 = [v117 precision:0];
  v171[4] = v113;
  v109 = [MEMORY[0x1E69C6618] rowWithTitle:@"Home Screen Scale" valueKeyPath:@"configurationHomeScreenScale"];
  v105 = [v109 between:0.0 and:1.0];
  v101 = [v105 precision:2];
  v171[5] = v101;
  v97 = [MEMORY[0x1E69C6618] rowWithTitle:@"Home Screen Alpha" valueKeyPath:@"configurationHomeScreenAlpha"];
  v94 = [v97 between:0.0 and:1.0];
  v92 = [v94 precision:2];
  v171[6] = v92;
  v90 = [MEMORY[0x1E69C6618] rowWithTitle:@"Darkening Tint Alpha" valueKeyPath:@"configurationDarkeningTintAlpha"];
  v88 = [v90 between:0.0 and:1.0];
  v86 = [v88 precision:2];
  v171[7] = v86;
  v84 = [MEMORY[0x1E69C6618] rowWithTitle:@"Widget Tint Color Alpha" valueKeyPath:@"configurationWidgetTintColorAlpha"];
  v82 = [v84 between:0.0 and:1.0];
  v80 = [v82 precision:2];
  v171[8] = v80;
  v78 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Equalize Min Card to Camera Distance" valueKeyPath:@"configurationEqualizesMinCardToCameraDistance"];
  v171[9] = v78;
  v76 = [MEMORY[0x1E69C6618] rowWithTitle:@"Perspective Camera Distance" valueKeyPath:@"configurationPerspectiveCameraDistance"];
  v74 = [v76 between:-2000.0 and:-500.0];
  v72 = [v74 precision:0];
  v171[10] = v72;
  v70 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Card to Camera Distance" valueKeyPath:@"configurationMinCardToCameraDistance"];
  v68 = [v70 between:0.0 and:2000.0];
  v67 = [v68 precision:0];
  v171[11] = v67;
  v66 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Maximize Card Height" valueKeyPath:@"configurationMaximizesCardHeight"];
  v171[12] = v66;
  v65 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enforce Max Card Height" valueKeyPath:@"configurationEnforcesMaxCardHeight"];
  v171[13] = v65;
  v64 = [MEMORY[0x1E69C6618] rowWithTitle:@"Max Card Height" valueKeyPath:@"configurationMaxCardHeight"];
  v36 = [v64 between:1.0 and:3000.0];
  v37 = [v36 precision:0];
  v171[14] = v37;
  v38 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Sidebar as Container" valueKeyPath:@"configurationUsesSidebarAsContainer"];
  v171[15] = v38;
  v39 = [MEMORY[0x1E69C6618] rowWithTitle:@"Center Fraction X" valueKeyPath:@"configurationFractionBetweenSourceAndContainerX"];
  v40 = [v39 between:0.0 and:1.0];
  v41 = [v40 precision:2];
  v171[16] = v41;
  v42 = [MEMORY[0x1E69C6618] rowWithTitle:@"Center Fraction Y" valueKeyPath:@"configurationFractionBetweenSourceAndContainerY"];
  v43 = [v42 between:0.0 and:1.0];
  v44 = [v43 precision:2];
  v171[17] = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:18];
  v155 = [v154 sectionWithRows:v45 title:@"Configuration"];

  v122 = MEMORY[0x1E69C6638];
  v159 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Blurs Background" valueKeyPath:@"stackConfigurationBlursBackground"];
  v170[0] = v159;
  v151 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Folder Background" valueKeyPath:@"stackConfigurationUsesFolderBlur"];
  v170[1] = v151;
  v147 = [MEMORY[0x1E69C6618] rowWithTitle:@"Dimming Tint Alpha" valueKeyPath:@"stackConfigurationDimmingAlpha"];
  v143 = [v147 between:0.0 and:1.0];
  v139 = [v143 precision:2];
  v170[2] = v139;
  v135 = [MEMORY[0x1E69C6618] rowWithTitle:@"No-Blur Dimming Alpha" valueKeyPath:@"stackConfigurationNoBlurDimmingAlpha"];
  v131 = [v135 between:0.0 and:1.0];
  v127 = [v131 precision:2];
  v170[3] = v127;
  v118 = [MEMORY[0x1E69C6618] rowWithTitle:@"iPad Content Height Ratio" valueKeyPath:@"stackConfigurationContentHeightRatio"];
  v114 = [v118 between:1.0 and:2.0];
  v110 = [v114 precision:2];
  v170[4] = v110;
  v106 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Zoom Duration" valueKeyPath:@"stackConfigurationZoomTransitionDuration"];
  v102 = [v106 minValue:0.0 maxValue:2.0];
  v170[5] = v102;
  v98 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Should Scale Widgets" valueKeyPath:@"stackConfigurationShouldScaleWidgets"];
  v170[6] = v98;
  v46 = [MEMORY[0x1E69C6618] rowWithTitle:@"Medium Widget Scale" valueKeyPath:@"stackConfigurationMediumIconScale"];
  v47 = [v46 between:0.1 and:1.0];
  v48 = [v47 precision:2];
  v170[7] = v48;
  v49 = [MEMORY[0x1E69C6618] rowWithTitle:@"Large Widget Scale" valueKeyPath:@"stackConfigurationLargeIconScale"];
  v50 = [v49 between:0.1 and:1.0];
  v51 = [v50 precision:2];
  v170[8] = v51;
  v52 = [MEMORY[0x1E69C6618] rowWithTitle:@"Extra Large Widget Scale" valueKeyPath:@"stackConfigurationExtraLargeIconScale"];
  v53 = [v52 between:0.1 and:1.0];
  v54 = [v53 precision:2];
  v170[9] = v54;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v170 count:10];
  v123 = [v122 sectionWithRows:v55 title:@"Stack Configuration"];

  v56 = MEMORY[0x1E69C6638];
  v57 = [MEMORY[0x1E69C6610] rowWithTitle:@"Person Detail Interaction" childSettingsKeyPath:@"personDetailInteractionSettings"];
  v169 = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v169 count:1];
  v59 = [v56 sectionWithRows:v58];

  v60 = MEMORY[0x1E69C6638];
  v168[0] = v166;
  v168[1] = v165;
  v168[2] = v123;
  v168[3] = v164;
  v168[4] = v162;
  v168[5] = v155;
  v168[6] = v59;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v168 count:7];
  v62 = [v60 moduleWithTitle:@"Icon Editing" contents:v61];

  return v62;
}

@end