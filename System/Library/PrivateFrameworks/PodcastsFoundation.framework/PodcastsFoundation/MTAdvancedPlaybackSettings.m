@interface MTAdvancedPlaybackSettings
- (BOOL)enhanceDialogueEnabled;
@end

@implementation MTAdvancedPlaybackSettings

- (BOOL)enhanceDialogueEnabled
{
  v2 = [(MTAdvancedPlaybackSettings *)self primitiveValueForKey:@"setting1"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end