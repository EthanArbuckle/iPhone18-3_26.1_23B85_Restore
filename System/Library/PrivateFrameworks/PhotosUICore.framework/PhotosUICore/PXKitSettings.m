@interface PXKitSettings
+ (PXKitSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXKitSettings

- (void)setDefaultValues
{
  v8.receiver = self;
  v8.super_class = PXKitSettings;
  [(PTSettings *)&v8 setDefaultValues];
  [(PXKitSettings *)self setDownGesturesAngularToleranceInDegrees:30.0];
  [(PXKitSettings *)self setUpGesturesAngularToleranceInDegrees:30.0];
  [(PXKitSettings *)self setHorizontalGesturesAngularToleranceInDegrees:30.0];
  [(PXKitSettings *)self setUncontestedGesturesAngularToleranceInDegrees:60.0];
  [(PXKitSettings *)self setSmallestSignificantScrollVelocity:100.0];
  [(PXKitSettings *)self setHonorSilentMode:0];
  [(PXKitSettings *)self setSimulateSilentMode:0];
  [(PXKitSettings *)self setDefaultAsyncTextRenderingEnabled:1];
  [(PXKitSettings *)self setDefaultLabelTypesettingMode:2];
  [(PXKitSettings *)self setDefaultTextAutoscalingEnabled:1];
  [(PXKitSettings *)self setDefaultTextMinimumScaleFactor:0.600000024];
  [(PXKitSettings *)self setDefaultTextTruncationEnabled:1];
  [(PXKitSettings *)self setDefaultTruncatedTextMinimumScaleFactor:0.649999976];
  [(PXKitSettings *)self setAllowCapitalization:1];
  v3 = MGCopyAnswer();
  if ([v3 isEqualToString:@"s5l8960x"])
  {
    v4 = MGCopyAnswer();
    v5 = [v4 containsString:@"iPad"];

    v6 = v5 ^ 1;
    v7 = (v5 ^ 1) & 1;
  }

  else
  {

    v6 = 1;
    v7 = 1;
  }

  [(PXKitSettings *)self setDeviceGraphicsQuality:v7];
  [(PXKitSettings *)self setUseFancyDarkening:v6 & 1];
  [(PXKitSettings *)self setSimulateDroppedFramesDuringPPT:0];
  [(PXKitSettings *)self setSimulatedDroppedFramesDurationInMilliseconds:20.0];
  [(PXKitSettings *)self setSimulatedDroppedFramesPeriod:10];
  [(PXKitSettings *)self setViewResetTimeoutDuration:480.0];
}

+ (PXKitSettings)sharedInstance
{
  if (sharedInstance_onceToken_139544 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_139544, &__block_literal_global_139545);
  }

  v3 = sharedInstance_sharedInstance_139546;

  return v3;
}

void __31__PXKitSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 kit];
  v1 = sharedInstance_sharedInstance_139546;
  sharedInstance_sharedInstance_139546 = v0;
}

+ (id)settingsControllerModule
{
  v115[7] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AE18];
  v3 = NSStringFromSelector(sel_simulateDroppedFramesDuringPPT);
  v4 = [v2 predicateWithFormat:@"%K != 0", v3];

  v5 = MEMORY[0x1E69C6638];
  v72 = MEMORY[0x1E69C6638];
  v6 = MEMORY[0x1E69C66A0];
  v108 = NSStringFromSelector(sel_downGesturesAngularToleranceInDegrees);
  v107 = [v6 rowWithTitle:@"Down" valueKeyPath:v108];
  v106 = [v107 minValue:0.0 maxValue:90.0];
  v105 = [v106 px_increment:5.0];
  v114[0] = v105;
  v7 = MEMORY[0x1E69C66A0];
  v104 = NSStringFromSelector(sel_upGesturesAngularToleranceInDegrees);
  v103 = [v7 rowWithTitle:@"Up" valueKeyPath:v104];
  v102 = [v103 minValue:0.0 maxValue:90.0];
  v101 = [v102 px_increment:5.0];
  v114[1] = v101;
  v8 = MEMORY[0x1E69C66A0];
  v100 = NSStringFromSelector(sel_horizontalGesturesAngularToleranceInDegrees);
  v99 = [v8 rowWithTitle:@"Horizontal" valueKeyPath:v100];
  v98 = [v99 minValue:0.0 maxValue:90.0];
  v97 = [v98 px_increment:5.0];
  v114[2] = v97;
  v9 = MEMORY[0x1E69C66A0];
  v96 = NSStringFromSelector(sel_uncontestedGesturesAngularToleranceInDegrees);
  v95 = [v9 rowWithTitle:@"Uncontested" valueKeyPath:v96];
  v94 = [v95 minValue:0.0 maxValue:90.0];
  v93 = [v94 px_increment:5.0];
  v114[3] = v93;
  v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:4];
  v91 = [v5 sectionWithRows:v92 title:@"Gestures Angular Tolerances"];
  v115[0] = v91;
  v10 = MEMORY[0x1E69C6638];
  v11 = MEMORY[0x1E69C66A0];
  v90 = NSStringFromSelector(sel_smallestSignificantScrollVelocity);
  v89 = [v11 rowWithTitle:@"Min Velocity" valueKeyPath:v90];
  v88 = [v89 minValue:0.0 maxValue:1000.0];
  v87 = [v88 px_increment:50.0];
  v113 = v87;
  v86 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v113 count:1];
  v85 = [v10 sectionWithRows:v86 title:@"Scroll Gestures"];
  v115[1] = v85;
  v12 = MEMORY[0x1E69C6638];
  v13 = MEMORY[0x1E69C65F8];
  v84 = NSStringFromSelector(sel_viewResetTimeoutDuration);
  v83 = [v13 rowWithTitle:@"View Reset Timeout Duration" valueKeyPath:v84];
  v82 = [v83 possibleValues:&unk_1F1911038 titles:&unk_1F1911050];
  v112[0] = v82;
  v14 = MEMORY[0x1E69C66A8];
  v81 = NSStringFromSelector(sel_honorSilentMode);
  v80 = [v14 rowWithTitle:@"Honour Silent Mode" valueKeyPath:v81];
  v112[1] = v80;
  v15 = MEMORY[0x1E69C66A8];
  v79 = NSStringFromSelector(sel_simulateSilentMode);
  v78 = [v15 rowWithTitle:@"Simulate Silent Mode" valueKeyPath:v79];
  v112[2] = v78;
  v16 = MEMORY[0x1E69C66A8];
  v77 = NSStringFromSelector(sel_defaultAsyncTextRenderingEnabled);
  v76 = [v16 rowWithTitle:@"Async Text Rendering" valueKeyPath:v77];
  v112[3] = v76;
  v17 = MEMORY[0x1E69C65F8];
  v75 = NSStringFromSelector(sel_defaultLabelTypesettingMode);
  v74 = [v17 rowWithTitle:@"Typesetting Mode" valueKeyPath:v75];
  v71 = [v74 possibleValues:&unk_1F1911068 titles:&unk_1F1911080];
  v112[4] = v71;
  v18 = MEMORY[0x1E69C66A8];
  v70 = NSStringFromSelector(sel_defaultTextAutoscalingEnabled);
  v69 = [v18 rowWithTitle:@"Text Autoscaling" valueKeyPath:v70];
  v112[5] = v69;
  v19 = MEMORY[0x1E69C66A0];
  v68 = NSStringFromSelector(sel_defaultTextMinimumScaleFactor);
  v67 = [v19 rowWithTitle:@"Text Minimum Scale Factor" valueKeyPath:v68];
  v66 = [v67 conditionFormat:@"defaultTextAutoscalingEnabled != 0"];
  v112[6] = v66;
  v20 = MEMORY[0x1E69C66A8];
  v65 = NSStringFromSelector(sel_defaultTextTruncationEnabled);
  v64 = [v20 rowWithTitle:@"Text Truncation" valueKeyPath:v65];
  v112[7] = v64;
  v21 = MEMORY[0x1E69C66A0];
  v63 = NSStringFromSelector(sel_defaultTruncatedTextMinimumScaleFactor);
  v62 = [v21 rowWithTitle:@"Truncated Text Minimum Scale Factor" valueKeyPath:v63];
  v61 = [v62 conditionFormat:@"defaultTextTruncationEnabled != 0"];
  v112[8] = v61;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:9];
  v58 = [v12 sectionWithRows:v60 title:@"Default Values"];
  v115[2] = v58;
  v22 = MEMORY[0x1E69C6638];
  v23 = MEMORY[0x1E69C65F8];
  v57 = NSStringFromSelector(sel_deviceGraphicsQuality);
  v56 = [v23 rowWithTitle:@"Graphics Quality" valueKeyPath:v57];
  v55 = [v56 possibleValues:&unk_1F1911098 titles:&unk_1F19110B0];
  v111[0] = v55;
  v24 = MEMORY[0x1E69C66A8];
  v54 = NSStringFromSelector(sel_useFancyDarkening);
  v53 = [v24 rowWithTitle:@"Fancy Darkening (requires app restart)" valueKeyPath:v54];
  v111[1] = v53;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:2];
  v51 = [v22 sectionWithRows:v52 title:@"Settings"];
  v115[3] = v51;
  v25 = MEMORY[0x1E69C6638];
  v26 = MEMORY[0x1E69C66A8];
  v50 = NSStringFromSelector(sel_allowCapitalization);
  v49 = [v26 rowWithTitle:@"Allow Capitalization" valueKeyPath:v50];
  v110 = v49;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  v47 = [v25 sectionWithRows:v48 title:@"Debug"];
  v115[4] = v47;
  v41 = MEMORY[0x1E69C6638];
  v27 = MEMORY[0x1E69C66A8];
  v46 = NSStringFromSelector(sel_simulateDroppedFramesDuringPPT);
  v45 = [v27 rowWithTitle:@"Simulate Dropped Frames" valueKeyPath:v46];
  v109[0] = v45;
  v28 = MEMORY[0x1E69C66A0];
  v44 = NSStringFromSelector(sel_simulatedDroppedFramesDurationInMilliseconds);
  v43 = [v28 rowWithTitle:@"Dropped Frames Duration" valueKeyPath:v44];
  v42 = [v43 minValue:1.0 maxValue:100.0];
  v59 = v4;
  v29 = [v42 condition:v4];
  v109[1] = v29;
  v30 = MEMORY[0x1E69C66A0];
  v31 = NSStringFromSelector(sel_simulatedDroppedFramesPeriod);
  v32 = [v30 rowWithTitle:@"Dropped Frames Period" valueKeyPath:v31];
  v33 = [v32 minValue:1.0 maxValue:120.0];
  v34 = [v33 px_increment:1.0];
  v35 = [v34 condition:v4];
  v109[2] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:3];
  v37 = [v41 sectionWithRows:v36 title:@"PPT"];
  v115[5] = v37;
  v38 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v115[6] = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:7];
  v73 = [v72 moduleWithTitle:@"Kit" contents:v39];

  return v73;
}

@end