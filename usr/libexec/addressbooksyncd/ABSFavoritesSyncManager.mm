@interface ABSFavoritesSyncManager
- (void)deleteShadow;
@end

@implementation ABSFavoritesSyncManager

- (void)deleteShadow
{
  v3 = +[ABSyncInterface sharedInstance];
  serverState = [v3 serverState];
  [serverState deleteKey:@"com.apple.absd.favorites.sha"];
}

@end