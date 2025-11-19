@interface ABSFavoritesSyncManager
- (void)deleteShadow;
@end

@implementation ABSFavoritesSyncManager

- (void)deleteShadow
{
  v3 = +[ABSyncInterface sharedInstance];
  v2 = [v3 serverState];
  [v2 deleteKey:@"com.apple.absd.favorites.sha"];
}

@end