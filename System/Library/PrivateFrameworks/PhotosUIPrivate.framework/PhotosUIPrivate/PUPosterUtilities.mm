@interface PUPosterUtilities
+ (int64_t)mediaIndexWithSeed:(int64_t)seed mediaCount:(int64_t)count;
@end

@implementation PUPosterUtilities

+ (int64_t)mediaIndexWithSeed:(int64_t)seed mediaCount:(int64_t)count
{
  if (count < 1)
  {
    return 0;
  }

  if (PXPreferencesGetBool())
  {
    return seed % count;
  }

  if (!seed)
  {
    return 0;
  }

  v7 = seed / count;
  v8 = seed / count == 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v8 < count)
  {
    do
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [v9 addObject:v10];

      ++v8;
    }

    while (count != v8);
  }

  v11 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:seed / count];
  v12 = PFShuffledArrayWithRandomNumberGenerator();
  v13 = [v12 mutableCopy];

  v14 = seed % [v13 count];
  if (count >= 3 && v7 && v14 < 2)
  {
    v15 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:v7 - 1];
    v16 = PFShuffledArrayWithRandomNumberGenerator();
    lastObject = [v16 lastObject];
    integerValue = [lastObject integerValue];
    firstObject = [v13 firstObject];
    integerValue2 = [firstObject integerValue];

    if (integerValue == integerValue2)
    {
      [v13 exchangeObjectAtIndex:0 withObjectAtIndex:1];
    }
  }

  v21 = [v13 objectAtIndexedSubscript:v14];
  integerValue3 = [v21 integerValue];

  return integerValue3;
}

@end