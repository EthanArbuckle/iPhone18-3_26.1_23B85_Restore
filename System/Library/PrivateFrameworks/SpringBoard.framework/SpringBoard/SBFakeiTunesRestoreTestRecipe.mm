@interface SBFakeiTunesRestoreTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBFakeiTunesRestoreTestRecipe

- (void)handleVolumeIncrease
{
  v2 = +[SBSyncController sharedInstance];
  [v2 beginRestoring];
}

- (void)handleVolumeDecrease
{
  v2 = +[SBSyncController sharedInstance];
  [v2 cancelRestoring];
}

@end