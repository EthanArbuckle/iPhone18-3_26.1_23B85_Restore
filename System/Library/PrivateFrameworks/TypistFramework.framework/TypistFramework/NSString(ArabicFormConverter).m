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
  v30 = [MEMORY[0x277CCACA8] arabicCharacterFormMap];
  v27 = [MEMORY[0x277CCACA8] combinedArabicCharacterFormMap];
  v3 = [MEMORY[0x277CCACA8] arabicDiacriticCharacterSet];
  if ([a1 length])
  {
    v4 = 0;
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v6 = [a1 characterAtIndex:v4];
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v6];
      v8 = [v30 objectForKey:v7];

      if (v8)
      {
        break;
      }

      [v2 appendFormat:@"%C", v6];
LABEL_39:

      if (++v4 >= [a1 length])
      {
        goto LABEL_42;
      }
    }

    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = v8;
      v11 = [a1 characterAtIndex:v5];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v11];
      v13 = [v30 objectForKeyedSubscript:v12];

      if (!v13 || ([v13 arabicCharacterValue] & 0xFFFF0000) == 0 && (objc_msgSend(v13, "arabicCharacterValue") & 0xFFFF00000000) == 0)
      {
        v5 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v9 = v5;
      v8 = v10;
    }

    v5 = v4 + 1;
    v14 = v4 + 1;
    if (v4 + 1 < [a1 length])
    {
      v14 = v4 + 1;
      do
      {
        if (![v3 characterIsMember:{objc_msgSend(a1, "characterAtIndex:", v14)}])
        {
          break;
        }

        ++v14;
      }

      while (v14 < [a1 length]);
    }

    if (v14 < [a1 length])
    {
      v28 = v6;
      v29 = v8;
      v15 = v2;
      v16 = [a1 characterAtIndex:v14];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v16];
      v18 = [v30 objectForKeyedSubscript:v17];

      if (!v16)
      {
        v2 = v15;
LABEL_28:
        v8 = v29;
LABEL_29:

LABEL_30:
        v24 = [v8 arabicCharacterValue];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL && v16 && (v24 & 0xFFFF00000000) != 0)
        {
          v25 = HIDWORD(v24);
        }

        else if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v25 = HIWORD(v24)) == 0)
        {
          v25 = v24 >> 16;
          if ((v16 & ((v24 & 0xFFFF0000) != 0)) == 0)
          {
            LOWORD(v25) = v24;
          }
        }

        [v2 appendFormat:@"%C", v25];
        v5 = v4;
        goto LABEL_39;
      }

      v2 = v15;
      if (([v18 arabicCharacterValue] & 0xFFFF00000000) == 0)
      {
        v23 = [v18 arabicCharacterValue];
        if (v16 != 1600 && !HIWORD(v23))
        {
          LODWORD(v16) = 0;
          goto LABEL_28;
        }
      }

      v8 = v29;
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C", v28, v16];
        v19 = [v27 objectForKey:v18];
        if (v19)
        {
          v20 = v19;
          v21 = [v19 arabicCharacterValue];
          v22 = HIWORD(v21);
          if (v9 == 0x7FFFFFFFFFFFFFFFLL)
          {
            LOWORD(v22) = v21;
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