@interface WLKSportsFavoriteFactory
+ (id)favoriteFromDictionary:(id)dictionary;
+ (id)favoriteWithID:(id)d;
@end

@implementation WLKSportsFavoriteFactory

+ (id)favoriteWithID:(id)d
{
  dCopy = d;
  v4 = [[WLKSportsFavorite alloc] initWithID:dCopy];

  return v4;
}

+ (id)favoriteFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [[WLKSportsFavorite alloc] initWithDictionary:dictionaryCopy];

  return v4;
}

@end