@interface SBWidgetLaunchStatsTestRecipe
- (void)handleVolumeIncrease;
@end

@implementation SBWidgetLaunchStatsTestRecipe

- (void)handleVolumeIncrease
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter postNotificationName:@"DuetWidgetLaunchStatsUpdate" object:0];
}

@end