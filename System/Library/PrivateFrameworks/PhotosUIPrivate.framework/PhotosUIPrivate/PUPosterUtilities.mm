@interface PUPosterUtilities
+ (int64_t)mediaIndexWithSeed:(int64_t)a3 mediaCount:(int64_t)a4;
@end

@implementation PUPosterUtilities

+ (int64_t)mediaIndexWithSeed:(int64_t)a3 mediaCount:(int64_t)a4
{
  if (a4 < 1)
  {
    return 0;
  }

  if (PXPreferencesGetBool())
  {
    return a3 % a4;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = a3 / a4;
  v8 = a3 / a4 == 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v8 < a4)
  {
    do
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
      [v9 addObject:v10];

      ++v8;
    }

    while (a4 != v8);
  }

  v11 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:a3 / a4];
  v12 = PFShuffledArrayWithRandomNumberGenerator();
  v13 = [v12 mutableCopy];

  v14 = a3 % [v13 count];
  if (a4 >= 3 && v7 && v14 < 2)
  {
    v15 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:v7 - 1];
    v16 = PFShuffledArrayWithRandomNumberGenerator();
    v17 = [v16 lastObject];
    v18 = [v17 integerValue];
    v19 = [v13 firstObject];
    v20 = [v19 integerValue];

    if (v18 == v20)
    {
      [v13 exchangeObjectAtIndex:0 withObjectAtIndex:1];
    }
  }

  v21 = [v13 objectAtIndexedSubscript:v14];
  v22 = [v21 integerValue];

  return v22;
}

@end