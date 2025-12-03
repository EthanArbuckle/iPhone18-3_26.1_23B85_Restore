@interface MTAdvancedPlaybackSettings
- (BOOL)enhanceDialogueEnabled;
@end

@implementation MTAdvancedPlaybackSettings

- (BOOL)enhanceDialogueEnabled
{
  v2 = [(MTAdvancedPlaybackSettings *)self primitiveValueForKey:@"setting1"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end