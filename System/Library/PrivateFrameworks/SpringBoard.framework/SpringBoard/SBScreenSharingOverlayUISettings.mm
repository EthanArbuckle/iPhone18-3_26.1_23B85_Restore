@interface SBScreenSharingOverlayUISettings
+ (id)settingsControllerModule;
@end

@implementation SBScreenSharingOverlayUISettings

+ (id)settingsControllerModule
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D43290] rowWithTitle:@"Buffer" valueKeyPath:@"edgeSwipeBuffer"];
  [v2 setMinValue:0.0];
  [v2 setMaxValue:100.0];
  v3 = MEMORY[0x277D43210];
  v11[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v5 = [v3 sectionWithRows:v4 title:@"Edge Swipe"];

  v6 = MEMORY[0x277D43210];
  v10 = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  v8 = [v6 moduleWithTitle:@"Screen Sharing Overlay UI Settings" contents:v7];

  return v8;
}

@end