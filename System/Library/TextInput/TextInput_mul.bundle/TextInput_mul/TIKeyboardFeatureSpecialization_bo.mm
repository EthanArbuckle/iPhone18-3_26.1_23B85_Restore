@interface TIKeyboardFeatureSpecialization_bo
- (id)externalStringToInternal:(id)internal;
- (id)internalStringToExternal:(id)external;
@end

@implementation TIKeyboardFeatureSpecialization_bo

- (id)internalStringToExternal:(id)external
{
  externalCopy = external;
  if (![TIKeyboardFeatureSpecialization_bo internalStringToExternal:]::gFullToSubscriptMap)
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithObjectsAndKeys:{@"ྐ", @"ཀ", @"ྑ", @"ཁ", @"ྒ", @"ག", @"ྒྷ", @"གྷ", @"ྔ", @"ང", @"ྕ", @"ཅ", @"ྖ", @"ཆ", @"ྗ", @"ཇ", @"ྙ", @"ཉ", @"ྚ", @"ཊ", @"ྛ", @"ཋ", @"ྜ", @"ཌ", @"ྜྷ", @"ཌྷ", @"ྞ", @"ཎ", @"ྟ", @"ཏ", @"ྠ", @"ཐ", @"ྡ", @"ད", @"ྡྷ", @"དྷ", @"ྣ", @"ན", @"ྤ", @"པ", @"ྥ", @"ཕ", @"ྦ", @"བ", @"ྦྷ", @"བྷ", @"ྨ", @"མ", @"ྩ", @"ཙ", @"ྪ", @"ཚ", @"ྫ", @"ཛ", @"ྫྷ", @"ཛྷ", @"ྭ", @"ཝ", @"ྮ", @"ཞ", @"ྯ"}];
    v5 = [TIKeyboardFeatureSpecialization_bo internalStringToExternal:]::gFullToSubscriptMap;
    [TIKeyboardFeatureSpecialization_bo internalStringToExternal:]::gFullToSubscriptMap = v4;
  }

  string = [MEMORY[0x29EDBA050] string];
  if ([externalCopy length])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [externalCopy characterAtIndex:v7];
      if (v8 == 2)
      {
        if (v9 != 3972)
        {
          v10 = [externalCopy substringWithRange:{v7, 1}];
          [string appendString:v10];
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

          v10 = [externalCopy substringWithRange:{v7, 1}];
          [string appendString:v10];
          goto LABEL_20;
        }

        if (v9 != 3972)
        {
          v10 = [externalCopy substringWithRange:{v7, 1}];
          v11 = [-[TIKeyboardFeatureSpecialization_bo internalStringToExternal:]::gFullToSubscriptMap objectForKey:v10];
          if (v11)
          {
            [string replaceCharactersInRange:objc_msgSend(string withString:{"length") - 1, 1, v11}];
          }

          else
          {
            [string appendString:v10];
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

    while ([externalCopy length] > v7);
  }

  return string;
}

- (id)externalStringToInternal:(id)internal
{
  internalCopy = internal;
  if (![TIKeyboardFeatureSpecialization_bo externalStringToInternal:]::gSubscriptToFullMap)
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DC0]) initWithObjectsAndKeys:{@"྄ཀ", @"ྐ", @"྄ཁ", @"ྑ", @"྄ག", @"ྒ", @"྄གྷ", @"ྒྷ", @"྄ང", @"ྔ", @"྄ཅ", @"ྕ", @"྄ཆ", @"ྖ", @"྄ཇ", @"ྗ", @"྄ཉ", @"ྙ", @"྄ཊ", @"ྚ", @"྄ཋ", @"ྛ", @"྄ཌ", @"ྜ", @"྄ཌྷ", @"ྜྷ", @"྄ཎ", @"ྞ", @"྄ཏ", @"ྟ", @"྄ཐ", @"ྠ", @"྄ད", @"ྡ", @"྄དྷ", @"ྡྷ", @"྄ན", @"ྣ", @"྄པ", @"ྤ", @"྄ཕ", @"ྥ", @"྄བ", @"ྦ", @"྄བྷ", @"ྦྷ", @"྄མ", @"ྨ", @"྄ཙ", @"ྩ", @"྄ཚ", @"ྪ", @"྄ཛ", @"ྫ", @"྄ཛྷ", @"ྫྷ", @"྄ཝ", @"ྭ", @"྄ཞ", @"ྮ", @"྄ཟ"}];
    v5 = [TIKeyboardFeatureSpecialization_bo externalStringToInternal:]::gSubscriptToFullMap;
    [TIKeyboardFeatureSpecialization_bo externalStringToInternal:]::gSubscriptToFullMap = v4;
  }

  string = [MEMORY[0x29EDBA050] string];
  if ([internalCopy length])
  {
    v7 = 0;
    do
    {
      v8 = [internalCopy substringWithRange:{v7, 1}];
      v9 = [-[TIKeyboardFeatureSpecialization_bo externalStringToInternal:]::gSubscriptToFullMap objectForKey:v8];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      [string appendString:v10];

      ++v7;
    }

    while ([internalCopy length] > v7);
  }

  return string;
}

@end