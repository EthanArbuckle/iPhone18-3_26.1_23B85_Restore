@interface VUIContentRatingSystemUtilities
+ (id)_cleanedRatingSystem:(id)a3;
+ (id)_ratingSystemLookUpDictionary;
+ (id)_ratingSystemStringLookUpDictionary;
+ (id)stringForRatingSystem:(int64_t)a3;
+ (int64_t)ratingSystemForString:(id)a3;
+ (int64_t)ratingSystemKindForRatingSystem:(int64_t)a3;
@end

@implementation VUIContentRatingSystemUtilities

+ (int64_t)ratingSystemForString:(id)a3
{
  v4 = a3;
  v5 = [a1 _ratingSystemLookUpDictionary];
  v6 = [a1 _cleanedRatingSystem:v4];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    v8 = [v4 stringByAppendingString:@"s"];
    v7 = [v5 objectForKey:v8];
  }

  v9 = [v7 unsignedIntegerValue];

  return v9;
}

+ (id)stringForRatingSystem:(int64_t)a3
{
  v4 = [a1 _ratingSystemStringLookUpDictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

+ (int64_t)ratingSystemKindForRatingSystem:(int64_t)a3
{
  if ([a1 _isRatingSystemForMovies:?])
  {
    return 1;
  }

  if ([a1 _isRatingSystemForTV:a3])
  {
    return 2;
  }

  if ([a1 _isRatingSystemForMusic:a3])
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

+ (id)_cleanedRatingSystem:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:&stru_2880D3950];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v5 = [v4 lowercaseString];

  return v5;
}

@end