@interface SDLanguageUtils
+ (id)languageHeaderCode;
@end

@implementation SDLanguageUtils

+ (id)languageHeaderCode
{
  v2 = MEMORY[0x277CBEAF8];
  v3 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v4 = [v2 minimizedLanguagesFromLanguages:v3];

  v5 = [v4 count];
  if (v5)
  {
    v6 = MEMORY[0x277CCAB68];
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v6 stringWithString:v7];

    if (v5 != 1)
    {
      if (v5 >= 5)
      {
        v9 = 5;
      }

      else
      {
        v9 = v5;
      }

      v10 = 9;
      for (i = 1; i != v9; ++i)
      {
        v12 = [v4 objectAtIndexedSubscript:i];
        [v8 appendFormat:@", %@;q=0.%u", v12, v10];

        v10 = (v10 - 1);
      }
    }

    v5 = [v8 copy];
  }

  return v5;
}

@end