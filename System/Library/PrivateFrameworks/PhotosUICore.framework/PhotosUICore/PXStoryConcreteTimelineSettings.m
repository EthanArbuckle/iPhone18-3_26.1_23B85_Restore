@interface PXStoryConcreteTimelineSettings
+ (PXStoryConcreteTimelineSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXStoryConcreteTimelineSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXStoryConcreteTimelineSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXStoryConcreteTimelineSettings *)self setKenBurnsPanSpeed:10.0];
  [(PXStoryConcreteTimelineSettings *)self setKenBurnsScaleSpeed:10.0];
  [(PXStoryConcreteTimelineSettings *)self setKenBurnsRotationSpeed:3.0];
  [(PXStoryConcreteTimelineSettings *)self setKenBurnsScaleSpeedDuringRotation:5.0];
  [(PXStoryConcreteTimelineSettings *)self setInitialProductionCountLimit:1];
  [(PXStoryConcreteTimelineSettings *)self setInitialProductionTimeLimit:0.0];
  [(PXStoryConcreteTimelineSettings *)self setRotationInitialProductionCountLimit:0];
  [(PXStoryConcreteTimelineSettings *)self setRotationInitialProductionTimeLimit:0.05];
  [(PXStoryConcreteTimelineSettings *)self setSubsequentProductionTimeLimit:1.0];
}

+ (id)settingsControllerModule
{
  v60[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v31 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A0];
  v57 = NSStringFromSelector(sel_kenBurnsPanSpeed);
  v56 = [v3 rowWithTitle:@"Pan Speed (pt/s)" valueKeyPath:v57];
  v55 = [v56 minValue:0.0 maxValue:200.0];
  v54 = [v55 px_increment:1.0];
  v59[0] = v54;
  v4 = MEMORY[0x1E69C66A0];
  v53 = NSStringFromSelector(sel_kenBurnsScaleSpeed);
  v52 = [v4 rowWithTitle:@"Scale Speed (pt/s at furthest edge)" valueKeyPath:v53];
  v51 = [v52 minValue:0.0 maxValue:200.0];
  v50 = [v51 px_increment:1.0];
  v59[1] = v50;
  v5 = MEMORY[0x1E69C66A0];
  v49 = NSStringFromSelector(sel_kenBurnsRotationSpeed);
  v48 = [v5 rowWithTitle:@"Rotation Speed (°/s)" valueKeyPath:v49];
  v47 = [v48 minValue:0.0 maxValue:30.0];
  v46 = [v47 px_increment:1.0];
  v59[2] = v46;
  v6 = MEMORY[0x1E69C66A0];
  v45 = NSStringFromSelector(sel_kenBurnsScaleSpeedDuringRotation);
  v44 = [v6 rowWithTitle:@"Scale Speed during Rotation (pt/s at furthest edge)" valueKeyPath:v45];
  v43 = [v44 minValue:0.0 maxValue:200.0];
  v42 = [v43 px_increment:1.0];
  v59[3] = v42;
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  v40 = [v2 sectionWithRows:v41 title:@"Movements"];
  v60[0] = v40;
  v27 = MEMORY[0x1E69C6638];
  v7 = MEMORY[0x1E69C66A0];
  v39 = NSStringFromSelector(sel_initialProductionCountLimit);
  v38 = [v7 rowWithTitle:@"Initial Count" valueKeyPath:v39];
  v37 = [v38 minValue:0.0 maxValue:50.0];
  v36 = [v37 px_increment:1.0];
  v58[0] = v36;
  v8 = MEMORY[0x1E69C66A0];
  v35 = NSStringFromSelector(sel_initialProductionTimeLimit);
  v34 = [v8 rowWithTitle:@"Initial Time" valueKeyPath:v35];
  v33 = [v34 minValue:0.0 maxValue:0.1];
  v30 = [v33 px_increment:0.005];
  v58[1] = v30;
  v9 = MEMORY[0x1E69C66A0];
  v29 = NSStringFromSelector(sel_rotationInitialProductionCountLimit);
  v28 = [v9 rowWithTitle:@"Rotation Initial Count" valueKeyPath:v29];
  v26 = [v28 minValue:0.0 maxValue:50.0];
  v25 = [v26 px_increment:1.0];
  v58[2] = v25;
  v10 = MEMORY[0x1E69C66A0];
  v24 = NSStringFromSelector(sel_rotationInitialProductionTimeLimit);
  v23 = [v10 rowWithTitle:@"Rotation Initial Time" valueKeyPath:v24];
  v11 = [v23 minValue:0.0 maxValue:0.1];
  v12 = [v11 px_increment:0.005];
  v58[3] = v12;
  v13 = MEMORY[0x1E69C66A0];
  v14 = NSStringFromSelector(sel_subsequentProductionTimeLimit);
  v15 = [v13 rowWithTitle:@"Subsequent Time" valueKeyPath:v14];
  v16 = [v15 minValue:0.0 maxValue:2.0];
  v17 = [v16 px_increment:0.1];
  v58[4] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:5];
  v19 = [v27 sectionWithRows:v18 title:@"Production Limits"];
  v60[1] = v19;
  v20 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v60[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:3];
  v32 = [v31 moduleWithTitle:@"Concrete Timeline" contents:v21];

  return v32;
}

+ (PXStoryConcreteTimelineSettings)sharedInstance
{
  if (sharedInstance_onceToken_189420 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_189420, &__block_literal_global_189421);
  }

  v3 = sharedInstance_sharedInstance_189422;

  return v3;
}

void __49__PXStoryConcreteTimelineSettings_sharedInstance__block_invoke()
{
  v2 = +[PXStorySettings sharedInstance];
  v0 = [v2 concreteTimelineSettings];
  v1 = sharedInstance_sharedInstance_189422;
  sharedInstance_sharedInstance_189422 = v0;
}

@end