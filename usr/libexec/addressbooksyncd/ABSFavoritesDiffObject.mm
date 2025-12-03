@interface ABSFavoritesDiffObject
- (ABSFavoritesDiffObject)init;
- (BOOL)matches:(id)matches;
@end

@implementation ABSFavoritesDiffObject

- (ABSFavoritesDiffObject)init
{
  v8.receiver = self;
  v8.super_class = ABSFavoritesDiffObject;
  v2 = [(ABSFavoritesDiffObject *)&v8 init];
  if (v2)
  {
    v3 = +[ABSyncInterface sharedInstance];
    serverState = [v3 serverState];
    v5 = [serverState getStringValueForKey:@"com.apple.absd.favorites.sha" default:@"0"];
    sha = v2->_sha;
    v2->_sha = v5;
  }

  return v2;
}

- (BOOL)matches:(id)matches
{
  v4 = [matches sha];
  v5 = [(ABSFavoritesDiffObject *)self sha];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

@end