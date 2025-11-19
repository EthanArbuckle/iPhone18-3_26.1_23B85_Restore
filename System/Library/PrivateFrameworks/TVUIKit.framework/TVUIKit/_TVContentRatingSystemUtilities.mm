@interface _TVContentRatingSystemUtilities
+ (id)_cleanedRatingSystem:(id)a3;
+ (id)_ratingSystemLookUpDictionary;
+ (id)_ratingSystemStringLookUpDictionary;
+ (id)stringForRatingSystem:(int64_t)a3;
+ (int64_t)ratingSystemForString:(id)a3;
+ (int64_t)ratingSystemKindForRatingSystem:(int64_t)a3;
@end

@implementation _TVContentRatingSystemUtilities

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
    +[_TVContentRatingSystemUtilities _ratingSystemLookUpDictionary];
  }

  v3 = _ratingSystemLookUpDictionary___ratingSystemLookUpDictionary;

  return v3;
}

+ (id)_ratingSystemStringLookUpDictionary
{
  if (_ratingSystemStringLookUpDictionary___once != -1)
  {
    +[_TVContentRatingSystemUtilities _ratingSystemStringLookUpDictionary];
  }

  v3 = _ratingSystemStringLookUpDictionary___ratingSystemStringLookUpDictionary;

  return v3;
}

+ (id)_cleanedRatingSystem:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:&stru_287E85D68];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  v5 = [v4 lowercaseString];

  return v5;
}

@end