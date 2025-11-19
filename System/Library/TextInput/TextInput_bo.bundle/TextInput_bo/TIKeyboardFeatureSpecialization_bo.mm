@interface TIKeyboardFeatureSpecialization_bo
- (id)externalStringToInternal:(id)a3;
- (id)internalStringToExternal:(id)a3;
@end

@implementation TIKeyboardFeatureSpecialization_bo

- (id)internalStringToExternal:(id)a3
{
  v3 = a3;
  if (![TIKeyboardFeatureSpecialization_bo internalStringToExternal:]::gFullToSubscriptMap)
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithObjectsAndKeys:{@"ྐ", @"ཀ", @"ྑ", @"ཁ", @"ྒ", @"ག", @"ྒྷ", @"གྷ", @"ྔ", @"ང", @"ྕ", @"ཅ", @"ྖ", @"ཆ", @"ྗ", @"ཇ", @"ྙ", @"ཉ", @"ྚ", @"ཊ", @"ྛ", @"ཋ", @"ྜ", @"ཌ", @"ྜྷ", @"ཌྷ", @"ྞ", @"ཎ", @"ྟ", @"ཏ", @"ྠ", @"ཐ", @"ྡ", @"ད", @"ྡྷ", @"དྷ", @"ྣ", @"ན", @"ྤ", @"པ", @"ྥ", @"ཕ", @"ྦ", @"བ", @"ྦྷ", @"བྷ", @"ྨ", @"མ", @"ྩ", @"ཙ", @"ྪ", @"ཚ", @"ྫ", @"ཛ", @"ྫྷ", @"ཛྷ", @"ྭ", @"ཝ", @"ྮ", @"ཞ", @"ྯ"}];
    v5 = [TIKeyboardFeatureSpecialization_bo internalStringToExternal:]::gFullToSubscriptMap;
    [TIKeyboardFeatureSpecialization_bo internalStringToExternal:]::gFullToSubscriptMap = v4;
  }

  v6 = [MEMORY[0x29EDBA050] string];
  if ([v3 length])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v3 characterAtIndex:v7];
      if (v8 == 2)
      {
        if (v9 != 3972)
        {
          v10 = [v3 substringWithRange:{v7, 1}];
          [v6 appendString:v10];
          goto LABEL_19;
        }
      }

      else
      {
        if (v8 != 1)
        {
          if (v9 == 3972)
          {
            v8 = 1;
          }

          else
          {
            v8 = 3;
          }

          v10 = [v3 substringWithRange:{v7, 1}];
          [v6 appendString:v10];
          goto LABEL_20;
        }

        if (v9 != 3972)
        {
          v10 = [v3 substringWithRange:{v7, 1}];
          v11 = [-[TIKeyboardFeatureSpecialization_bo internalStringToExternal:]::gFullToSubscriptMap objectForKey:v10];
          if (v11)
          {
            [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 1, 1, v11}];
          }

          else
          {
            [v6 appendString:v10];
          }

LABEL_19:
          v8 = 3;
LABEL_20:

          goto LABEL_21;
        }
      }

      v8 = 2;
LABEL_21:
      ++v7;
    }

    while ([v3 length] > v7);
  }

  return v6;
}

- (id)externalStringToInternal:(id)a3
{
  v3 = a3;
  if (![TIKeyboardFeatureSpecialization_bo externalStringToInternal:]::gSubscriptToFullMap)
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithObjectsAndKeys:{@"྄ཀ", @"ྐ", @"྄ཁ", @"ྑ", @"྄ག", @"ྒ", @"྄གྷ", @"ྒྷ", @"྄ང", @"ྔ", @"྄ཅ", @"ྕ", @"྄ཆ", @"ྖ", @"྄ཇ", @"ྗ", @"྄ཉ", @"ྙ", @"྄ཊ", @"ྚ", @"྄ཋ", @"ྛ", @"྄ཌ", @"ྜ", @"྄ཌྷ", @"ྜྷ", @"྄ཎ", @"ྞ", @"྄ཏ", @"ྟ", @"྄ཐ", @"ྠ", @"྄ད", @"ྡ", @"྄དྷ", @"ྡྷ", @"྄ན", @"ྣ", @"྄པ", @"ྤ", @"྄ཕ", @"ྥ", @"྄བ", @"ྦ", @"྄བྷ", @"ྦྷ", @"྄མ", @"ྨ", @"྄ཙ", @"ྩ", @"྄ཚ", @"ྪ", @"྄ཛ", @"ྫ", @"྄ཛྷ", @"ྫྷ", @"྄ཝ", @"ྭ", @"྄ཞ", 0x2A2523000, @"྄ཟ"}];
    v5 = [TIKeyboardFeatureSpecialization_bo externalStringToInternal:]::gSubscriptToFullMap;
    [TIKeyboardFeatureSpecialization_bo externalStringToInternal:]::gSubscriptToFullMap = v4;
  }

  v6 = [MEMORY[0x29EDBA050] string];
  if ([v3 length])
  {
    v7 = 0;
    do
    {
      v8 = [v3 substringWithRange:{v7, 1}];
      v9 = [-[TIKeyboardFeatureSpecialization_bo externalStringToInternal:]::gSubscriptToFullMap objectForKey:v8];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      [v6 appendString:v10];

      ++v7;
    }

    while ([v3 length] > v7);
  }

  return v6;
}

@end