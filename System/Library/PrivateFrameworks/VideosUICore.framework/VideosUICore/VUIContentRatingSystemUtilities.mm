@interface VUIContentRatingSystemUtilities
+ (id)_cleanedRatingSystem:(id)system;
+ (id)_ratingSystemLookUpDictionary;
+ (id)_ratingSystemStringLookUpDictionary;
+ (id)stringForRatingSystem:(int64_t)system;
+ (int64_t)ratingSystemForString:(id)string;
+ (int64_t)ratingSystemKindForRatingSystem:(int64_t)system;
@end

@implementation VUIContentRatingSystemUtilities

+ (int64_t)ratingSystemForString:(id)string
{
  stringCopy = string;
  _ratingSystemLookUpDictionary = [self _ratingSystemLookUpDictionary];
  v6 = [self _cleanedRatingSystem:stringCopy];
  v7 = [_ratingSystemLookUpDictionary objectForKey:v6];

  if (!v7)
  {
    v8 = [stringCopy stringByAppendingString:@"s"];
    v7 = [_ratingSystemLookUpDictionary objectForKey:v8];
  }

  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (id)stringForRatingSystem:(int64_t)system
{
  _ratingSystemStringLookUpDictionary = [self _ratingSystemStringLookUpDictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:system];
  v6 = [_ratingSystemStringLookUpDictionary objectForKey:v5];

  return v6;
}

+ (int64_t)ratingSystemKindForRatingSystem:(int64_t)system
{
  if ([self _isRatingSystemForMovies:?])
  {
    return 1;
  }

  if ([self _isRatingSystemForTV:system])
  {
    return 2;
  }

  if ([self _isRatingSystemForMusic:system])
  {
    return 3;
  }

  return 0;
}

+ (id)_ratingSystemLookUpDictionary
{
  if (_ratingSystemLookUpDictionary___once != -1)
  {
    +[VUIContentRatingSystemUtilities _ratingSystemLookUpDictionary];
  }

  v3 = _ratingSystemLookUpDictionary___ratingSystemLookUpDictionary;

  return v3;
}

void __64__VUIContentRatingSystemUtilities__ratingSystemLookUpDictionary__block_invoke()
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v0 = 156;
  v1 = &qword_279E20758;
  do
  {
    v2 = [MEMORY[0x277CCABB0] numberWithInteger:*v1];
    [v5 setObject:v2 forKey:*(v1 - 1)];

    v1 += 2;
    --v0;
  }

  while (v0);
  v3 = [v5 copy];
  v4 = _ratingSystemLookUpDictionary___ratingSystemLookUpDictionary;
  _ratingSystemLookUpDictionary___ratingSystemLookUpDictionary = v3;
}

+ (id)_ratingSystemStringLookUpDictionary
{
  if (_ratingSystemStringLookUpDictionary___once != -1)
  {
    +[VUIContentRatingSystemUtilities _ratingSystemStringLookUpDictionary];
  }

  v3 = _ratingSystemStringLookUpDictionary___ratingSystemStringLookUpDictionary;

  return v3;
}

void __70__VUIContentRatingSystemUtilities__ratingSystemStringLookUpDictionary__block_invoke()
{
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v0 = 156;
  v1 = &qword_279E20758;
  do
  {
    v2 = *(v1 - 1);
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:*v1];
    [v6 setObject:v2 forKey:v3];

    v1 += 2;
    --v0;
  }

  while (v0);
  v4 = [v6 copy];
  v5 = _ratingSystemStringLookUpDictionary___ratingSystemStringLookUpDictionary;
  _ratingSystemStringLookUpDictionary___ratingSystemStringLookUpDictionary = v4;
}

+ (id)_cleanedRatingSystem:(id)system
{
  v3 = [system stringByReplacingOccurrencesOfString:@" " withString:&stru_2880D3950];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  lowercaseString = [v4 lowercaseString];

  return lowercaseString;
}

@end