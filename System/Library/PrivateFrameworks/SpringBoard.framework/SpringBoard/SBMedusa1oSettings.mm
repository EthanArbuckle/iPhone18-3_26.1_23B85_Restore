@interface SBMedusa1oSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBMedusa1oSettings

- (void)setDefaultValues
{
  [(SBMedusa1oSettings *)self setDebugRotationCenter:0];
  [(SBMedusa1oSettings *)self setDebugColorRotationRegions:0];
  [(SBMedusa1oSettings *)self setClipRotationRegions:0];
  [(SBMedusa1oSettings *)self setZoomOutRotationFactor:1.0];
  [(SBMedusa1oSettings *)self setRotationSlowdownFactor:1.0];
  [(SBMedusa1oSettings *)self setFencesRotation:1];

  [(SBMedusa1oSettings *)self setGapSwipeBuffer:40.0];
}

+ (id)settingsControllerModule
{
  v34[5] = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277D432A8] rowWithTitle:@"Color Rotation Center" valueKeyPath:@"debugRotationCenter"];
  v28 = [MEMORY[0x277D432A8] rowWithTitle:@"Color Rotation Regions" valueKeyPath:@"debugColorRotationRegions"];
  v27 = [MEMORY[0x277D432A8] rowWithTitle:@"Clip Rotation Regions" valueKeyPath:@"clipRotationRegions"];
  v2 = [MEMORY[0x277D43290] rowWithTitle:@"Zoom Out During Rotation" valueKeyPath:@"zoomOutRotationFactor"];
  [v2 setMinValue:1.0];
  v3 = v2;
  v24 = v2;
  [v2 setMaxValue:3.0];
  v4 = [MEMORY[0x277D43290] rowWithTitle:@"Rotation Slowdown Factor" valueKeyPath:@"rotationSlowdownFactor"];
  [v4 setMinValue:1.0];
  [v4 setMaxValue:30.0];
  v5 = MEMORY[0x277D43210];
  v34[0] = v29;
  v34[1] = v28;
  v34[2] = v27;
  v34[3] = v3;
  v34[4] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:5];
  v25 = [v5 sectionWithRows:v6 title:@"Debugging Aids"];

  v26 = [MEMORY[0x277D432A8] rowWithTitle:@"Fence Rotation" valueKeyPath:@"fencesRotation"];
  v7 = MEMORY[0x277D43210];
  v33 = v26;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
  v9 = [v7 sectionWithRows:v8 title:@"Animations"];

  v10 = [MEMORY[0x277D43290] rowWithTitle:@"Buffer" valueKeyPath:@"gapSwipeBuffer"];
  [v10 setMinValue:0.0];
  [v10 setMaxValue:200.0];
  v11 = MEMORY[0x277D43210];
  v32 = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v13 = [v11 sectionWithRows:v12 title:@"GapSwipe"];

  v14 = MEMORY[0x277D431B0];
  v15 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v16 = [v14 rowWithTitle:@"Restore Defaults" action:v15];

  v17 = MEMORY[0x277D43210];
  v31 = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v19 = [v17 sectionWithRows:v18];

  v20 = MEMORY[0x277D43210];
  v30[0] = v25;
  v30[1] = v9;
  v30[2] = v13;
  v30[3] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  v22 = [v20 moduleWithTitle:@"Medusa 1.0" contents:v21];

  return v22;
}

@end