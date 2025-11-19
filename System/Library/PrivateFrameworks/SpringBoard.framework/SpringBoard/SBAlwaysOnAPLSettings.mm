@interface SBAlwaysOnAPLSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBAlwaysOnAPLSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBAlwaysOnAPLSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_overallAPLLimit = 0.07;
}

+ (id)settingsControllerModule
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D43290] rowWithTitle:@"Overall" valueKeyPath:@"overallAPLLimit"];
  v3 = [v2 minValue:0.0 maxValue:1.0];

  v4 = MEMORY[0x277D43210];
  v12[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [v4 sectionWithRows:v5 title:@"APL Limits"];

  v7 = MEMORY[0x277D43210];
  v11 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v9 = [v7 moduleWithTitle:@"Average Pixel Luminance Policies" contents:v8];

  return v9;
}

@end