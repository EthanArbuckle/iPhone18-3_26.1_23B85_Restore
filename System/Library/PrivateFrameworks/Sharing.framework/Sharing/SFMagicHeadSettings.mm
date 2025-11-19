@interface SFMagicHeadSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SFMagicHeadSettings

- (void)setDefaultValues
{
  [(SFMagicHeadSettings *)self setShowRangingValues:0];
  [(SFMagicHeadSettings *)self setShowSelectionGateLock:0];
  [(SFMagicHeadSettings *)self setShowSelectionMarkers:0];
  [(SFMagicHeadSettings *)self setSelectionDisabled:0];
  [(SFMagicHeadSettings *)self setTapDarkeningAlpha:0.2];
  [(SFMagicHeadSettings *)self setCirclesFadeInDurationS:0.3];
  [(SFMagicHeadSettings *)self setCirclesFadeOutDurationS:0.7];
  [(SFMagicHeadSettings *)self setRollEnabled:1];
  [(SFMagicHeadSettings *)self setRollMaxDegrees:1.0];
  [(SFMagicHeadSettings *)self setRollRubberbandingStretchiness:5.0];
  [(SFMagicHeadSettings *)self setGuidanceEnabled:1];
  [(SFMagicHeadSettings *)self setGuidanceGoodAngleThreshold:15.0];
  [(SFMagicHeadSettings *)self setGuidanceWorstAngleDegreesDelta:15.0];
  [(SFMagicHeadSettings *)self setGuidanceDipSpeed:10.0];
  [(SFMagicHeadSettings *)self setGuidanceRubberbandingStretchiness:90.0];
  [(SFMagicHeadSettings *)self setGuidanceFadeHeadDegrees:15.0];
  [(SFMagicHeadSettings *)self setGuidanceRestoreHeadDegreesDelta:10.0];
  [(SFMagicHeadSettings *)self setGuidanceTooFarDegrees:4.0];
  [(SFMagicHeadSettings *)self setGuidanceRecoveredDegreesDelta:5.0];
  [(SFMagicHeadSettings *)self setGuidanceTiltedTooFarAlpha:0.42];
  [(SFMagicHeadSettings *)self setGuidanceSuppressHapticsEnabled:0.0];
  [(SFMagicHeadSettings *)self setGuidanceSuppressHapticsDurationS:5.0];
  [(SFMagicHeadSettings *)self setGuidanceContractDotsHapticEnabled:1.0];
  [(SFMagicHeadSettings *)self setGuidanceExpandDotsHapticEnabled:1.0];
  [(SFMagicHeadSettings *)self setRotationGatedSelectionEnabled:0];
  [(SFMagicHeadSettings *)self setRotationGateThresholdDegrees:0.1];
  [(SFMagicHeadSettings *)self setRotationStartGatingResponsiveness:5];
  [(SFMagicHeadSettings *)self setRotationStopGatingResponsiveness:20];
  [(SFMagicHeadSettings *)self setRotationStartBigHeadGatingResponsiveness:60];
  [(SFMagicHeadSettings *)self setRotationStopBigHeadGatingResponsiveness:200];
  [(SFMagicHeadSettings *)self setSelectionScaleFriction:40.0];
  [(SFMagicHeadSettings *)self setSelectionAlphaFriction:70.17];
  [(SFMagicHeadSettings *)self setSelectionPositionFriction:30.17];
  [(SFMagicHeadSettings *)self setDismissScaleFriction:40.0];
  [(SFMagicHeadSettings *)self setDismissAlphaFriction:60.17];
  [(SFMagicHeadSettings *)self setDismissPositionFriction:40.0];
  [(SFMagicHeadSettings *)self setHapticForCozyUpSelectionEnabled:0];
  [(SFMagicHeadSettings *)self setCozyUpAnimationEnabled:1];
  [(SFMagicHeadSettings *)self setCozyUpSelectDurationS:0.65];
  [(SFMagicHeadSettings *)self setSelectedPulseEnabled:1];
  [(SFMagicHeadSettings *)self setSelectedPulseDurationS:0.4];

  [(SFMagicHeadSettings *)self setSelectedPulseScaleAmount:1.04];
}

+ (id)settingsControllerModule
{
  v146[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C65E8];
  v3 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v125 = [v2 rowWithTitle:@"Restore Defaults" action:v3];

  v4 = MEMORY[0x1E69C6638];
  v146[0] = v125;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:1];
  v134 = [v4 sectionWithRows:v5];

  v124 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Ranging Values" valueKeyPath:@"showRangingValues"];
  v123 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Selection Lock" valueKeyPath:@"showSelectionGateLock"];
  v122 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Selection Markers" valueKeyPath:@"showSelectionMarkers"];
  v121 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Selection Disabled" valueKeyPath:@"selectionDisabled"];
  v120 = [MEMORY[0x1E69C6618] rowWithTitle:@"Tap Darkening Alpha" valueKeyPath:@"tapDarkeningAlpha"];
  v6 = MEMORY[0x1E69C6638];
  v145[0] = v124;
  v145[1] = v123;
  v145[2] = v122;
  v145[3] = v121;
  v145[4] = v120;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v145 count:5];
  v133 = [v6 sectionWithRows:v7 title:@"UI Settings"];

  v8 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Circles Fade In S" valueKeyPath:@"circlesFadeInDurationS"];
  v119 = [v8 minValue:0.1 maxValue:1.0];

  v9 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Circles Fade Out S" valueKeyPath:@"circlesFadeOutDurationS"];
  v118 = [v9 minValue:0.1 maxValue:1.0];

  v10 = MEMORY[0x1E69C6638];
  v144[0] = v119;
  v144[1] = v118;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v144 count:2];
  v132 = [v10 sectionWithRows:v11 title:@"Little Head Settings"];

  v117 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Roll Enabled" valueKeyPath:@"rollEnabled"];
  v12 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max °" valueKeyPath:@"rollMaxDegrees"];
  v13 = [v12 minValue:0.0 maxValue:15.0];
  v116 = [v13 valueValidator:&__block_literal_global_2];

  v14 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Rubber stretch" valueKeyPath:@"rollRubberbandingStretchiness"];
  v15 = [v14 minValue:0.0 maxValue:10.0];
  v115 = [v15 valueValidator:&__block_literal_global_2];

  v16 = MEMORY[0x1E69C6638];
  v143[0] = v117;
  v143[1] = v116;
  v143[2] = v115;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v143 count:3];
  v131 = [v16 sectionWithRows:v17 title:@"Roll Settings"];

  v130 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Guidance Enabled" valueKeyPath:@"guidanceEnabled"];
  v18 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Good ° Threshold" valueKeyPath:@"guidanceGoodAngleThreshold"];
  v19 = [v18 minValue:10.0 maxValue:50.0];
  v129 = [v19 valueValidator:&__block_literal_global_2];

  v20 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Worst ° Delta" valueKeyPath:@"guidanceWorstAngleDegreesDelta"];
  v21 = [v20 minValue:10.0 maxValue:50.0];
  v128 = [v21 valueValidator:&__block_literal_global_2];

  v22 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Dip Speed" valueKeyPath:@"guidanceDipSpeed"];
  v23 = [v22 minValue:0.0 maxValue:5.0];
  v114 = [v23 valueValidator:&__block_literal_global_2];

  v24 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Rubber Stretch" valueKeyPath:@"guidanceRubberbandingStretchiness"];
  v25 = [v24 minValue:10.0 maxValue:150.0];
  v113 = [v25 valueValidator:&__block_literal_global_3];

  v26 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Fade Head °" valueKeyPath:@"guidanceFadeHeadDegrees"];
  v27 = [v26 minValue:10.0 maxValue:50.0];
  v112 = [v27 valueValidator:&__block_literal_global_2];

  v28 = [MEMORY[0x1E69C66A0] rowWithTitle:@"RestoreHead ° Delta" valueKeyPath:@"guidanceRestoreHeadDegreesDelta"];
  v29 = [v28 minValue:0.0 maxValue:40.0];
  v111 = [v29 valueValidator:&__block_literal_global_2];

  v30 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Too Far °" valueKeyPath:@"guidanceTooFarDegrees"];
  v31 = [v30 minValue:-10.0 maxValue:30.0];
  v110 = [v31 valueValidator:&__block_literal_global_2];

  v32 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Recovered °" valueKeyPath:@"guidanceRecoveredDegreesDelta"];
  v33 = [v32 minValue:0.0 maxValue:30.0];
  v109 = [v33 valueValidator:&__block_literal_global_2];

  v34 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Too Far Alpha" valueKeyPath:@"guidanceTiltedTooFarAlpha"];
  v108 = [v34 minValue:0.1 maxValue:1.0];

  v35 = MEMORY[0x1E69C6638];
  v142[0] = v130;
  v142[1] = v129;
  v142[2] = v128;
  v142[3] = v114;
  v142[4] = v113;
  v142[5] = v112;
  v142[6] = v111;
  v142[7] = v110;
  v142[8] = v109;
  v142[9] = v108;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:10];
  v127 = [v35 sectionWithRows:v36 title:@"Guidance Settings"];

  v107 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Timed Suppression" valueKeyPath:@"guidanceSuppressHapticsEnabled"];
  v37 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Suppress Dur Sec" valueKeyPath:@"guidanceSuppressHapticsDurationS"];
  v38 = [v37 minValue:0.5 maxValue:20.0];
  v106 = [v38 valueValidator:&__block_literal_global_4];

  v105 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Dots Contract Haptic" valueKeyPath:@"guidanceContractDotsHapticEnabled"];
  v104 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Dots Expand Haptic" valueKeyPath:@"guidanceExpandDotsHapticEnabled"];
  v39 = MEMORY[0x1E69C6638];
  v141[0] = v107;
  v141[1] = v106;
  v141[2] = v105;
  v141[3] = v104;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v141 count:4];
  v126 = [v39 sectionWithRows:v40 title:@"Guidance Haptic Settings"];

  v103 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enabled" valueKeyPath:@"rotationGatedSelectionEnabled"];
  v41 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Threshold °" valueKeyPath:@"rotationGateThresholdDegrees"];
  v102 = [v41 minValue:0.01 maxValue:1.0];

  v42 = [MEMORY[0x1E69C66A0] rowWithTitle:@"MH Start" valueKeyPath:@"rotationStartGatingResponsiveness"];
  v43 = [v42 minValue:1.0 maxValue:40.0];
  v101 = [v43 valueValidator:&__block_literal_global_3];

  v44 = [MEMORY[0x1E69C66A0] rowWithTitle:@"MH Stop" valueKeyPath:@"rotationStopGatingResponsiveness"];
  v45 = [v44 minValue:1.0 maxValue:100.0];
  v100 = [v45 valueValidator:&__block_literal_global_3];

  v46 = [MEMORY[0x1E69C66A0] rowWithTitle:@"BigHead Start" valueKeyPath:@"rotationStartBigHeadGatingResponsiveness"];
  v47 = [v46 minValue:1.0 maxValue:100.0];
  v99 = [v47 valueValidator:&__block_literal_global_3];

  v48 = [MEMORY[0x1E69C66A0] rowWithTitle:@"BigHead Stop" valueKeyPath:@"rotationStopBigHeadGatingResponsiveness"];
  v49 = [v48 minValue:1.0 maxValue:400.0];
  v98 = [v49 valueValidator:&__block_literal_global_3];

  v50 = MEMORY[0x1E69C6638];
  v140[0] = v103;
  v140[1] = v102;
  v140[2] = v101;
  v140[3] = v100;
  v140[4] = v99;
  v140[5] = v98;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:6];
  v97 = [v50 sectionWithRows:v51 title:@"Selection Gating Settings"];

  v52 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Scale" valueKeyPath:@"selectionScaleFriction"];
  v53 = [v52 minValue:20.0 maxValue:100.0];
  v96 = [v53 valueValidator:&__block_literal_global_3];

  v54 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Alpha" valueKeyPath:@"selectionAlphaFriction"];
  v55 = [v54 minValue:20.0 maxValue:100.0];
  v95 = [v55 valueValidator:&__block_literal_global_3];

  v56 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Position" valueKeyPath:@"selectionPositionFriction"];
  v57 = [v56 minValue:20.0 maxValue:100.0];
  v94 = [v57 valueValidator:&__block_literal_global_3];

  v58 = MEMORY[0x1E69C6638];
  v139[0] = v96;
  v139[1] = v95;
  v139[2] = v94;
  v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:3];
  v93 = [v58 sectionWithRows:v59 title:@"Selection Animation Friction"];

  v60 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Scale" valueKeyPath:@"dismissScaleFriction"];
  v61 = [v60 minValue:20.0 maxValue:100.0];
  v92 = [v61 valueValidator:&__block_literal_global_3];

  v62 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Alpha" valueKeyPath:@"dismissAlphaFriction"];
  v63 = [v62 minValue:20.0 maxValue:100.0];
  v91 = [v63 valueValidator:&__block_literal_global_3];

  v64 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Position" valueKeyPath:@"dismissPositionFriction"];
  v65 = [v64 minValue:20.0 maxValue:100.0];
  v90 = [v65 valueValidator:&__block_literal_global_3];

  v66 = MEMORY[0x1E69C6638];
  v138[0] = v92;
  v138[1] = v91;
  v138[2] = v90;
  v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v138 count:3];
  v86 = [v66 sectionWithRows:v67 title:@"Dismiss Animation Friction"];

  v89 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Haptic for CozyUp" valueKeyPath:@"hapticForCozyUpSelectionEnabled"];
  v88 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enabled" valueKeyPath:@"cozyUpAnimationEnabled"];
  v68 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Select Dur Sec" valueKeyPath:@"cozyUpSelectDurationS"];
  v87 = [v68 minValue:0.1 maxValue:1.0];

  v69 = MEMORY[0x1E69C6638];
  v137[0] = v89;
  v137[1] = v88;
  v137[2] = v87;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v137 count:3];
  v85 = [v69 sectionWithRows:v70 title:@"Cozy Up Animation Settings"];

  v71 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enabled" valueKeyPath:@"selectedPulseEnabled"];
  v72 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Pulse Duration Sec" valueKeyPath:@"selectedPulseDurationS"];
  v73 = [v72 minValue:0.1 maxValue:1.0];
  v74 = [v73 valueValidator:&__block_literal_global_4];

  v75 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Pulse Scale Amount" valueKeyPath:@"selectedPulseScaleAmount"];
  v76 = [v75 minValue:1.01 maxValue:1.5];

  v77 = MEMORY[0x1E69C6638];
  v136[0] = v71;
  v136[1] = v74;
  v136[2] = v76;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v136 count:3];
  v79 = [v77 sectionWithRows:v78 title:@"Re-select Pulse Settings"];

  v80 = MEMORY[0x1E69C6638];
  v135[0] = v134;
  v135[1] = v133;
  v135[2] = v132;
  v135[3] = v131;
  v135[4] = v127;
  v135[5] = v126;
  v135[6] = v97;
  v135[7] = v93;
  v135[8] = v86;
  v135[9] = v85;
  v135[10] = v79;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:11];
  v82 = [v80 moduleWithTitle:@"Settings" contents:v81];

  v83 = *MEMORY[0x1E69E9840];

  return v82;
}

uint64_t __47__SFMagicHeadSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

uint64_t __47__SFMagicHeadSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 floatValue];
  v4 = round(v3 + v3) * 0.5;

  return [v2 numberWithDouble:v4];
}

uint64_t __47__SFMagicHeadSettings_settingsControllerModule__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  [a2 floatValue];
  v4 = round(v3 / 0.1) * 0.1;

  return [v2 numberWithDouble:v4];
}

@end