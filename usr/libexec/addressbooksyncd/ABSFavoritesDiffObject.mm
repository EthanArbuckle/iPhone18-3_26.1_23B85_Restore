@interface ABSFavoritesDiffObject
- (ABSFavoritesDiffObject)init;
- (BOOL)matches:(id)a3;
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
    v4 = [v3 serverState];
    v5 = [v4 getStringValueForKey:@"com.apple.absd.favorites.sha" default:@"0"];
    sha = v2->_sha;
    v2->_sha = v5;
  }

  return v2;
}

- (BOOL)matches:(id)a3
{
  v4 = [a3 sha];
  v5 = [(ABSFavoritesDiffObject *)self sha];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

@end