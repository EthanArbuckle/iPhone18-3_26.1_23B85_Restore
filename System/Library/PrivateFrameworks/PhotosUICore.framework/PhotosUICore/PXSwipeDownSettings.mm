@interface PXSwipeDownSettings
+ (PXSwipeDownSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXSwipeDownSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXSwipeDownSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXSwipeDownSettings *)self setHorizontalMotionType:1];
  [(PXSwipeDownSettings *)self setHorizontalResistanceDistance:100.0];
  [(PXSwipeDownSettings *)self setDownMotionType:0];
  [(PXSwipeDownSettings *)self setDownResistanceDistance:200.0];
  [(PXSwipeDownSettings *)self setUpMotionType:1];
  [(PXSwipeDownSettings *)self setUpResistanceDistance:100.0];
  [(PXSwipeDownSettings *)self setScaleDownFactor:0.5];
  [(PXSwipeDownSettings *)self setScaleDownDistance:200.0];
  [(PXSwipeDownSettings *)self setRotationOnHorizontalMotion:0];
  [(PXSwipeDownSettings *)self setRotationHorizontalMotionFactor:50.0];
  [(PXSwipeDownSettings *)self setRotationHorizontalMotionHysteresisDistance:20.0];
  [(PXSwipeDownSettings *)self setRotationOnVerticalMotion:0];
  [(PXSwipeDownSettings *)self setRotationVerticalMotionAngle:7.0];
  [(PXSwipeDownSettings *)self setRotationVerticalMotionResistanceDistance:400.0];
  [(PXSwipeDownSettings *)self setRotationMaximumAngle:12.0];
  [(PXSwipeDownSettings *)self setTransitionDistance:400.0];
}

+ (id)settingsControllerModule
{
  v62[16] = *MEMORY[0x1E69E9840];
  v43 = MEMORY[0x1E69C6638];
  v60 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Horizontal Motion" valueKeyPath:@"horizontalMotionType"];
  v59 = [v60 possibleValues:&unk_1F19104F8 titles:&unk_1F1910510];
  v62[0] = v59;
  v58 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Horizontal Resistance Distance" valueKeyPath:@"horizontalResistanceDistance"];
  v57 = [v58 minValue:10.0 maxValue:500.0];
  v56 = [v57 px_increment:10.0];
  v55 = [MEMORY[0x1E696AE18] predicateWithFormat:@"horizontalMotionType == %@", &unk_1F190B938];
  v54 = [v56 condition:v55];
  v62[1] = v54;
  v53 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Down Motion" valueKeyPath:@"downMotionType"];
  v52 = [v53 possibleValues:&unk_1F19104F8 titles:&unk_1F1910510];
  v62[2] = v52;
  v51 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Down Resistance Distance" valueKeyPath:@"downResistanceDistance"];
  v50 = [v51 minValue:10.0 maxValue:500.0];
  v49 = [v50 px_increment:10.0];
  v48 = [MEMORY[0x1E696AE18] predicateWithFormat:@"downMotionType == %@", &unk_1F190B938];
  v47 = [v49 condition:v48];
  v62[3] = v47;
  v46 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Up Motion" valueKeyPath:@"upMotionType"];
  v45 = [v46 possibleValues:&unk_1F19104F8 titles:&unk_1F1910510];
  v62[4] = v45;
  v42 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Up Resistance Distance" valueKeyPath:@"upResistanceDistance"];
  v41 = [v42 minValue:10.0 maxValue:500.0];
  v40 = [v41 px_increment:10.0];
  v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"upMotionType == %@", &unk_1F190B938];
  v38 = [v40 condition:v39];
  v62[5] = v38;
  v37 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Scale Down Factor" valueKeyPath:@"scaleDownFactor"];
  v36 = [v37 minValue:0.0 maxValue:1.0];
  v35 = [v36 px_increment:0.100000001];
  v62[6] = v35;
  v34 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Scale Down Distance" valueKeyPath:@"scaleDownDistance"];
  v33 = [v34 minValue:10.0 maxValue:500.0];
  v32 = [v33 px_increment:10.0];
  v62[7] = v32;
  v31 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Rotation on Horizontal Motion" valueKeyPath:@"rotationOnHorizontalMotion"];
  v62[8] = v31;
  v30 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Factor" valueKeyPath:@"rotationHorizontalMotionFactor"];
  v29 = [v30 minValue:0.0 maxValue:300.0];
  v28 = [v29 px_increment:1.0];
  v27 = [v28 conditionFormat:@"rotationOnHorizontalMotion != 0"];
  v62[9] = v27;
  v26 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Hysteresis Distance" valueKeyPath:@"rotationHorizontalMotionHysteresisDistance"];
  v25 = [v26 minValue:0.0 maxValue:100.0];
  v24 = [v25 px_increment:1.0];
  v23 = [v24 conditionFormat:@"rotationOnHorizontalMotion != 0"];
  v62[10] = v23;
  v22 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Rotation on Vertical Motion" valueKeyPath:@"rotationOnVerticalMotion"];
  v62[11] = v22;
  v21 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Angle" valueKeyPath:@"rotationVerticalMotionAngle"];
  v20 = [v21 minValue:0.0 maxValue:10.0];
  v19 = [v20 px_increment:0.5];
  v18 = [v19 conditionFormat:@"rotationOnVerticalMotion != 0"];
  v62[12] = v18;
  v17 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Distance" valueKeyPath:@"rotationVerticalMotionResistanceDistance"];
  v2 = [v17 minValue:0.0 maxValue:500.0];
  v3 = [v2 px_increment:10.0];
  v4 = [v3 conditionFormat:@"rotationOnVerticalMotion != 0"];
  v62[13] = v4;
  v5 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Maximum Angle" valueKeyPath:@"rotationMaximumAngle"];
  v6 = [v5 minValue:0.0 maxValue:45.0];
  v7 = [v6 px_increment:1.0];
  v62[14] = v7;
  v8 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Transition Distance" valueKeyPath:@"transitionDistance"];
  v9 = [v8 minValue:10.0 maxValue:500.0];
  v10 = [v9 px_increment:10.0];
  v62[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:16];
  v44 = [v43 sectionWithRows:v11];

  v12 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v13 = MEMORY[0x1E69C6638];
  v61[0] = v44;
  v61[1] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
  v15 = [v13 moduleWithTitle:@"Swipe Down" contents:v14];

  return v15;
}

+ (PXSwipeDownSettings)sharedInstance
{
  if (sharedInstance_onceToken_80665 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_80665, &__block_literal_global_80666);
  }

  v3 = sharedInstance_sharedInstance_80667;

  return v3;
}

void __37__PXSwipeDownSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 swipeDownSettings];
  v1 = sharedInstance_sharedInstance_80667;
  sharedInstance_sharedInstance_80667 = v0;
}

@end