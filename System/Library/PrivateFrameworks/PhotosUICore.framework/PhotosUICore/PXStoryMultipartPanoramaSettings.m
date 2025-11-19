@interface PXStoryMultipartPanoramaSettings
+ (PXStoryMultipartPanoramaSettings)sharedInstance;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXStoryMultipartPanoramaSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXStoryMultipartPanoramaSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXStoryMultipartPanoramaSettings *)self setIsFeatureEnabled:_os_feature_enabled_impl()];
  [(PXStoryMultipartPanoramaSettings *)self setMaximumNumberOfParts:3];
  [(PXStoryMultipartPanoramaSettings *)self setOverlappingTileCount:7];
  [(PXStoryMultipartPanoramaSettings *)self setMaximumTileSide:300.0];
  [(PXStoryMultipartPanoramaSettings *)self setTileOverlapThreshold:0.6];
  [(PXStoryMultipartPanoramaSettings *)self setProductionSimulatedDelay:0.0];
  [(PXStoryMultipartPanoramaSettings *)self setProductionReportsTimeInterval:1.0];
}

+ (id)settingsControllerModule
{
  v43[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = MEMORY[0x1E69C66A8];
  v41 = NSStringFromSelector(sel_isFeatureEnabled);
  v40 = [v3 rowWithTitle:@"Enabled" valueKeyPath:v41];
  v42[0] = v40;
  v4 = MEMORY[0x1E69C66A0];
  v39 = NSStringFromSelector(sel_maximumNumberOfParts);
  v38 = [v4 rowWithTitle:@"Maximum Parts" valueKeyPath:v39];
  v37 = [v38 minValue:1.0 maxValue:10.0];
  v36 = [v37 px_increment:1.0];
  v42[1] = v36;
  v5 = MEMORY[0x1E69C66A0];
  v35 = NSStringFromSelector(sel_overlappingTileCount);
  v34 = [v5 rowWithTitle:@"Overlapping Tiles" valueKeyPath:v35];
  v33 = [v34 minValue:1.0 maxValue:10.0];
  v32 = [v33 px_increment:1.0];
  v42[2] = v32;
  v6 = MEMORY[0x1E69C66A0];
  v31 = NSStringFromSelector(sel_maximumTileSide);
  v30 = [v6 rowWithTitle:@"Maximum Tile Side" valueKeyPath:v31];
  v29 = [v30 minValue:10.0 maxValue:1000.0];
  v28 = [v29 px_increment:1.0];
  v42[3] = v28;
  v7 = MEMORY[0x1E69C66A0];
  v27 = NSStringFromSelector(sel_tileOverlapThreshold);
  v26 = [v7 rowWithTitle:@"Overlap Threshold" valueKeyPath:v27];
  v25 = [v26 minValue:0.0 maxValue:1.0];
  v24 = [v25 px_increment:0.1];
  v42[4] = v24;
  v8 = MEMORY[0x1E69C66A0];
  v23 = NSStringFromSelector(sel_productionSimulatedDelay);
  v22 = [v8 rowWithTitle:@"Simulated Delay" valueKeyPath:v23];
  v21 = [v22 minValue:0.0 maxValue:5.0];
  v9 = [v21 px_increment:0.1];
  v42[5] = v9;
  v10 = MEMORY[0x1E69C66A0];
  v11 = NSStringFromSelector(sel_productionReportsTimeInterval);
  v12 = [v10 rowWithTitle:@"Report Time Interval" valueKeyPath:v11];
  v13 = [v12 minValue:0.0 maxValue:5.0];
  v14 = [v13 px_increment:0.1];
  v42[6] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:7];
  v16 = [v2 sectionWithRows:v15 title:@"Settings"];
  v43[0] = v16;
  v17 = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v43[1] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v19 = [v2 moduleWithTitle:@"Multipart Panoramas" contents:v18];

  return v19;
}

+ (PXStoryMultipartPanoramaSettings)sharedInstance
{
  if (sharedInstance_onceToken_145060 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_145060, &__block_literal_global_145061);
  }

  v3 = sharedInstance_sharedInstance_145062;

  return v3;
}

void __50__PXStoryMultipartPanoramaSettings_sharedInstance__block_invoke()
{
  v2 = +[PXStorySettings sharedInstance];
  v0 = [v2 multipartPanoramaSettings];
  v1 = sharedInstance_sharedInstance_145062;
  sharedInstance_sharedInstance_145062 = v0;
}

@end