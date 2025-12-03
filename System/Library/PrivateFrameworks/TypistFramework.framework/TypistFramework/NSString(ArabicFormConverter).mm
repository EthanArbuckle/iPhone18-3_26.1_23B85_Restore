@interface NSString(ArabicFormConverter)
+ (id)arabicCharacterFormMap;
+ (id)arabicDiacriticCharacterSet;
+ (id)arabicFinalFormsCharacterSet;
+ (id)arabicNonPresentationFormCharacterSet;
+ (id)combinedArabicCharacterFormMap;
- (id)stringByConvertingArabicCharactersToPresentationForms;
@end

@implementation NSString(ArabicFormConverter)

+ (id)combinedArabicCharacterFormMap
{
  if (combinedArabicCharacterFormMap_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) combinedArabicCharacterFormMap];
  }

  v1 = combinedArabicCharacterFormMap_combinedArabicCharacterFormMap;

  return v1;
}

+ (id)arabicNonPresentationFormCharacterSet
{
  if (arabicNonPresentationFormCharacterSet_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) arabicNonPresentationFormCharacterSet];
  }

  v1 = arabicNonPresentationFormCharacterSet_arabicNonPresentationFormCharacterSet;

  return v1;
}

+ (id)arabicCharacterFormMap
{
  if (arabicCharacterFormMap_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) arabicCharacterFormMap];
  }

  v1 = arabicCharacterFormMap_arabicCharacterFormMap;

  return v1;
}

+ (id)arabicDiacriticCharacterSet
{
  if (arabicDiacriticCharacterSet_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) arabicDiacriticCharacterSet];
  }

  v1 = arabicDiacriticCharacterSet_arabicDiacriticCharacterSet;

  return v1;
}

+ (id)arabicFinalFormsCharacterSet
{
  if (arabicFinalFormsCharacterSet_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) arabicFinalFormsCharacterSet];
  }

  v1 = arabicFinalFormsCharacterSet_arabicFinalFormsCharacterSet;

  return v1;
}

- (id)stringByConvertingArabicCharactersToPresentationForms
{
  v2 = objc_opt_new();
  arabicCharacterFormMap = [MEMORY[0x277CCACA8] arabicCharacterFormMap];
  combinedArabicCharacterFormMap = [MEMORY[0x277CCACA8] combinedArabicCharacterFormMap];
  arabicDiacriticCharacterSet = [MEMORY[0x277CCACA8] arabicDiacriticCharacterSet];
  if ([self length])
  {
    v4 = 0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v6 = [self characterAtIndex:v4];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
      v8 = [arabicCharacterFormMap objectForKey:v7];

      if (v8)
      {
        break;
      }

      [v2 appendFormat:@"%C", v6];
LABEL_39:

      if (++v4 >= [self length])
      {
        goto LABEL_42;
      }
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v8;
      v11 = [self characterAtIndex:v5];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
      v13 = [arabicCharacterFormMap objectForKeyedSubscript:v12];

      if (!v13 || ([v13 arabicCharacterValue] & 0xFFFF0000) == 0 && (objc_msgSend(v13, "arabicCharacterValue") & 0xFFFF00000000) == 0)
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v9 = v5;
      v8 = v10;
    }

    v5 = v4 + 1;
    v14 = v4 + 1;
    if (v4 + 1 < [self length])
    {
      v14 = v4 + 1;
      do
      {
        if (![arabicDiacriticCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", v14)}])
        {
          break;
        }

        ++v14;
      }

      while (v14 < [self length]);
    }

    if (v14 < [self length])
    {
      v28 = v6;
      v29 = v8;
      v15 = v2;
      v16 = [self characterAtIndex:v14];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
      v18 = [arabicCharacterFormMap objectForKeyedSubscript:v17];

      if (!v16)
      {
        v2 = v15;
LABEL_28:
        v8 = v29;
LABEL_29:

LABEL_30:
        arabicCharacterValue = [v8 arabicCharacterValue];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL && v16 && (arabicCharacterValue & 0xFFFF00000000) != 0)
        {
          v25 = HIDWORD(arabicCharacterValue);
        }

        else if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v25 = HIWORD(arabicCharacterValue)) == 0)
        {
          v25 = arabicCharacterValue >> 16;
          if ((v16 & ((arabicCharacterValue & 0xFFFF0000) != 0)) == 0)
          {
            LOWORD(v25) = arabicCharacterValue;
          }
        }

        [v2 appendFormat:@"%C", v25];
        v5 = v4;
        goto LABEL_39;
      }

      v2 = v15;
      if (([v18 arabicCharacterValue] & 0xFFFF00000000) == 0)
      {
        arabicCharacterValue2 = [v18 arabicCharacterValue];
        if (v16 != 1600 && !HIWORD(arabicCharacterValue2))
        {
          LODWORD(v16) = 0;
          goto LABEL_28;
        }
      }

      v8 = v29;
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C", v28, v16];
        v19 = [combinedArabicCharacterFormMap objectForKey:v18];
        if (v19)
        {
          v20 = v19;
          arabicCharacterValue3 = [v19 arabicCharacterValue];
          v22 = HIWORD(arabicCharacterValue3);
          if (v9 == 0x7FFFFFFFFFFFFFFFLL)
          {
            LOWORD(v22) = arabicCharacterValue3;
          }

          [v2 appendFormat:@"%C", v22];

          ++v4;
          goto LABEL_39;
        }

        LODWORD(v16) = 1;
        goto LABEL_29;
      }
    }

    LODWORD(v16) = 0;
    goto LABEL_30;
  }

LABEL_42:

  return v2;
}

@end