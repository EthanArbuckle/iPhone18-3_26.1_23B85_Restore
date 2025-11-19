@interface WLKSportsFavoriteFactory
+ (id)favoriteFromDictionary:(id)a3;
+ (id)favoriteWithID:(id)a3;
@end

@implementation WLKSportsFavoriteFactory

+ (id)favoriteWithID:(id)a3
{
  v3 = a3;
  v4 = [[WLKSportsFavorite alloc] initWithID:v3];

  return v4;
}

+ (id)favoriteFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [[WLKSportsFavorite alloc] initWithDictionary:v3];

  return v4;
}

@end