@interface _TVContentRatingSystemUtilities
+ (id)_cleanedRatingSystem:(id)system;
+ (id)_ratingSystemLookUpDictionary;
+ (id)_ratingSystemStringLookUpDictionary;
+ (id)stringForRatingSystem:(int64_t)system;
+ (int64_t)ratingSystemForString:(id)string;
+ (int64_t)ratingSystemKindForRatingSystem:(int64_t)system;
@end

@implementation _TVContentRatingSystemUtilities

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

+ (id)_cleanedRatingSystem:(id)system
{
  v3 = [system stringByReplacingOccurrencesOfString:@" " withString:&stru_287E85D68];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

  lowercaseString = [v4 lowercaseString];

  return lowercaseString;
}

@end