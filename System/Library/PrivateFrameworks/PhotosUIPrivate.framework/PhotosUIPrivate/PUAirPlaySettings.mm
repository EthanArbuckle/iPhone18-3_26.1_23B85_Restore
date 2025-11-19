@interface PUAirPlaySettings
+ (id)settingsControllerModule;
+ (id)sharedInstance;
- (id)debugDescription;
- (void)setDefaultValues;
@end

@implementation PUAirPlaySettings

- (void)setDefaultValues
{
  [(PUAirPlaySettings *)self setIgnoreMirroredScreens:0];
  [(PUAirPlaySettings *)self setIgnoreScreenRecordingScreens:PFOSVariantHasInternalUI()];
  [(PUAirPlaySettings *)self setCompensateForOverscan:0];
  [(PUAirPlaySettings *)self setPlaceholderForMirroredScreen:0];
  [(PUAirPlaySettings *)self setPlaceholderForSecondScreen:2];
  [(PUAirPlaySettings *)self setMinimumZoomForScrollPadding:1.20000005];
  [(PUAirPlaySettings *)self setMaximumZoomForScrollPadding:2.0];
  [(PUAirPlaySettings *)self setSimulatedScreenContentWidth:320.0];
  [(PUAirPlaySettings *)self setSimulatedScreenContentHeight:180.0];
  [(PUAirPlaySettings *)self setRouteAvailabilityOverride:0];

  [(PUAirPlaySettings *)self setSwitchToMediaPresentationMode:1];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = [(PUAirPlaySettings *)self description];
  v5 = [v3 stringWithString:v4];

  if ([(PUAirPlaySettings *)self ignoreMirroredScreens])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"\n\tIgnore mirrored screens: %@", v6];
  if ([(PUAirPlaySettings *)self ignoreScreenRecordingScreens])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v5 appendFormat:@"\n\tIgnore screen recording screens: %@", v7];
  if ([(PUAirPlaySettings *)self compensateForOverscan])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 appendFormat:@"\n\tCompensate for overscan: %@", v8];
  v9 = [(PUAirPlaySettings *)self placeholderForMirroredScreen];
  if (v9 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E7B74CD8[v9];
  }

  [v5 appendFormat:@"\n\tMirrored placeholder type: %@", v10];
  v11 = [(PUAirPlaySettings *)self placeholderForSecondScreen];
  if (v11 > 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = off_1E7B74CD8[v11];
  }

  [v5 appendFormat:@"\n\tSecond-screen placeholder type: %@", v12];
  [(PUAirPlaySettings *)self minimumZoomForScrollPadding];
  [v5 appendFormat:@"\n\tMin zoom for scroll padding: %f", v13];
  [(PUAirPlaySettings *)self maximumZoomForScrollPadding];
  [v5 appendFormat:@"\n\tMax zoom for scroll padding: %f", v14];

  return v5;
}

+ (id)settingsControllerModule
{
  v55[6] = *MEMORY[0x1E69E9840];
  v46 = MEMORY[0x1E69C6638];
  v44 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Ignore mirrored screens" valueKeyPath:@"ignoreMirroredScreens"];
  v55[0] = v44;
  v42 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Ignore screen recording screens" valueKeyPath:@"ignoreScreenRecordingScreens"];
  v55[1] = v42;
  v2 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Compensate for overscan" valueKeyPath:@"compensateForOverscan"];
  v55[2] = v2;
  v3 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Mirrored-screen placeholder" valueKeyPath:@"placeholderForMirroredScreen"];
  v54[0] = @"None";
  v54[1] = @"No content";
  v54[2] = @"Last content";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  v5 = [v3 possibleValues:&unk_1F2B7CC68 titles:v4];
  v55[3] = v5;
  v6 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Second-screen placeholder" valueKeyPath:@"placeholderForSecondScreen"];
  v53[0] = @"None";
  v53[1] = @"No content";
  v53[2] = @"Last content";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
  v8 = [v6 possibleValues:&unk_1F2B7CC80 titles:v7];
  v55[4] = v8;
  v9 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable HDR (switch to media presentation mode)" valueKeyPath:@"switchToMediaPresentationMode"];
  v55[5] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:6];
  v47 = [v46 sectionWithRows:v10 title:@"AirPlay Screens"];

  v11 = MEMORY[0x1E69C6638];
  v12 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Min zoom for scroll padding" valueKeyPath:@"minimumZoomForScrollPadding"];
  v13 = [v12 minValue:1.10000002 maxValue:1.79999995];
  v52[0] = v13;
  v14 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Max zoom for scroll padding" valueKeyPath:@"maximumZoomForScrollPadding"];
  v15 = [v14 minValue:1.79999995 maxValue:2.5];
  v52[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v45 = [v11 sectionWithRows:v16 title:@"Browsing"];

  v17 = MEMORY[0x1E69C6638];
  v18 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"AirPlay debug info" output:&__block_literal_global_109];
  v51 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
  v43 = [v17 sectionWithRows:v19 title:@"Debugging"];

  v20 = MEMORY[0x1E69C6638];
  v41 = [MEMORY[0x1E69C65E8] pu_rowWithTitle:@"Toggle Simulated AirPlay Screen" action:&__block_literal_global_119];
  v50[0] = v41;
  v21 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Width" valueKeyPath:@"simulatedScreenContentWidth"];
  v22 = [v21 minValue:50.0 maxValue:500.0];
  v23 = [v22 pu_increment:5.0];
  v50[1] = v23;
  v24 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Height" valueKeyPath:@"simulatedScreenContentHeight"];
  v25 = [v24 minValue:50.0 maxValue:500.0];
  v26 = [v25 pu_increment:5.0];
  v50[2] = v26;
  v27 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Route Availability" valueKeyPath:@"routeAvailabilityOverride"];
  v28 = [v27 possibleValues:&unk_1F2B7CC98 titles:&unk_1F2B7CCB0];
  v50[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:4];
  v30 = [v20 sectionWithRows:v29 title:@"Simulation"];

  v31 = MEMORY[0x1E69C6638];
  v32 = MEMORY[0x1E69C65E8];
  v33 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v34 = [v32 rowWithTitle:@"Restore Defaults" action:v33];
  v49 = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v36 = [v31 sectionWithRows:v35];

  v37 = MEMORY[0x1E69C6638];
  v48[0] = v47;
  v48[1] = v45;
  v48[2] = v43;
  v48[3] = v30;
  v48[4] = v36;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:5];
  v39 = [v37 moduleWithTitle:@"AirPlay Settings" contents:v38];

  return v39;
}

void __45__PUAirPlaySettings_settingsControllerModule__block_invoke_2()
{
  v0 = testerAirPlayScreenSimulator;
  if (!testerAirPlayScreenSimulator)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v1 = getPUTesterAirPlayScreenSimulatorClass_softClass;
    v17 = getPUTesterAirPlayScreenSimulatorClass_softClass;
    if (!getPUTesterAirPlayScreenSimulatorClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getPUTesterAirPlayScreenSimulatorClass_block_invoke;
      v13[3] = &unk_1E7B800F0;
      v13[4] = &v14;
      __getPUTesterAirPlayScreenSimulatorClass_block_invoke(v13);
      v1 = v15[3];
    }

    v2 = v1;
    _Block_object_dispose(&v14, 8);
    v3 = [v1 sharedSimulator];
    v4 = testerAirPlayScreenSimulator;
    testerAirPlayScreenSimulator = v3;

    v0 = testerAirPlayScreenSimulator;
  }

  v12 = v0;
  if ([v12 isScreenVisible])
  {
    [v12 hideScreen];
  }

  else
  {
    v5 = PXFirstViewControllerPassingTest();
    v6 = +[PUAirPlaySettings sharedInstance];
    [v6 simulatedScreenContentWidth];
    v8 = v7;
    v9 = +[PUAirPlaySettings sharedInstance];
    [v9 simulatedScreenContentHeight];
    v11 = v10;

    [v12 showScreenWithContentSize:v5 contentProvider:{v8, v11}];
  }
}

id __45__PUAirPlaySettings_settingsControllerModule__block_invoke()
{
  v0 = +[PHAirPlayScreenController sharedInstance];
  v1 = [v0 debugDescription];

  return v1;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6297 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6297, &__block_literal_global_6298);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __35__PUAirPlaySettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 airPlaySettings];
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

@end