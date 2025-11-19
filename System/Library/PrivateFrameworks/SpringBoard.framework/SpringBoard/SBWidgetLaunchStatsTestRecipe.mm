@interface SBWidgetLaunchStatsTestRecipe
- (void)handleVolumeIncrease;
@end

@implementation SBWidgetLaunchStatsTestRecipe

- (void)handleVolumeIncrease
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v2 postNotificationName:@"DuetWidgetLaunchStatsUpdate" object:0];
}

@end