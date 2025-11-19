@interface SBSystemNotesSwipeMetricSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBSystemNotesSwipeMetricSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBSystemNotesSwipeMetricSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBSystemNotesSwipeMetricSettings *)self setPanDistanceBeforeScaling:50.0];
  [(SBSystemNotesSwipeMetricSettings *)self setPanInitialThumbnailScale:1.0];
  [(SBSystemNotesSwipeMetricSettings *)self setPanDistancePer1xScaling:200.0];
  [(SBSystemNotesSwipeMetricSettings *)self setScaleThresholdBeforeFullSize:0.6];
  [(SBSystemNotesSwipeMetricSettings *)self setFlickVelocityThreshold:500.0];
  [(SBSystemNotesSwipeMetricSettings *)self setCornerDistanceBeforeScalingForDismiss:270.0];
}

+ (id)settingsControllerModule
{
  v20[6] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D43290] rowWithTitle:@"Distance Before Scaling" valueKeyPath:@"panDistanceBeforeScaling"];
  v18 = [v2 minValue:0.0 maxValue:500.0];

  v3 = [MEMORY[0x277D43290] rowWithTitle:@"Initial Thumbnail Scale" valueKeyPath:@"panInitialThumbnailScale"];
  v4 = [MEMORY[0x277D43290] rowWithTitle:@"Pan Distance Per 1x Scaling" valueKeyPath:@"panDistancePer1xScaling"];
  v5 = [v4 minValue:0.0 maxValue:500.0];

  v6 = [MEMORY[0x277D43290] rowWithTitle:@"Scale Threshold Before Full Size" valueKeyPath:@"scaleThresholdBeforeFullSize"];
  v7 = [MEMORY[0x277D43290] rowWithTitle:@"Flick Velocity Threshold" valueKeyPath:@"flickVelocityThreshold"];
  v8 = [v7 minValue:0.0 maxValue:5000.0];

  v9 = [MEMORY[0x277D43290] rowWithTitle:@"Corner Distance Before Scaling for Dismiss" valueKeyPath:@"cornerDistanceBeforeScalingForDismiss"];
  v10 = [v9 minValue:-100.0 maxValue:500.0];

  v11 = MEMORY[0x277D43210];
  v20[0] = v18;
  v20[1] = v3;
  v20[2] = v5;
  v20[3] = v6;
  v20[4] = v8;
  v20[5] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:6];
  v13 = [v11 sectionWithRows:v12 title:@"Swipe In Animation Metrics"];

  v14 = MEMORY[0x277D43210];
  v19 = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v16 = [v14 moduleWithTitle:@"Swipe In Gesture Settings" contents:v15];

  return v16;
}

@end