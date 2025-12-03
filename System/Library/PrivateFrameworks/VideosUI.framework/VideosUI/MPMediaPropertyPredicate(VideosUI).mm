@interface MPMediaPropertyPredicate(VideosUI)
+ (id)vui_mediaPropertyPredicateWithProperty:()VideosUI predicateOperatorType:value:;
+ (uint64_t)vui_mediaPropertyPredicateComparisonWithPredicateOperatorType:()VideosUI;
@end

@implementation MPMediaPropertyPredicate(VideosUI)

+ (id)vui_mediaPropertyPredicateWithProperty:()VideosUI predicateOperatorType:value:
{
  v8 = a5;
  v9 = a3;
  v10 = [self vui_mediaPropertyPredicateComparisonWithPredicateOperatorType:a4];
  v11 = [MEMORY[0x1E6970610] predicateWithValue:v8 forProperty:v9 comparisonType:v10];

  return v11;
}

+ (uint64_t)vui_mediaPropertyPredicateComparisonWithPredicateOperatorType:()VideosUI
{
  if (a3 > 3)
  {
    if (a3 > 8)
    {
      switch(a3)
      {
        case 9:
          return 106;
        case 10:
          return 108;
        case 99:
          return 1;
      }
    }

    else
    {
      if ((a3 - 4) < 2)
      {
        return 0;
      }

      if (a3 == 8)
      {
        return 105;
      }
    }

    goto LABEL_21;
  }

  if (a3 <= 1)
  {
    if (!a3)
    {
      return 103;
    }

    if (a3 == 1)
    {
      return 104;
    }

LABEL_21:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Unsupported operator type (%lu)", a3}];
    return 0;
  }

  if (a3 == 2)
  {
    return 101;
  }

  else
  {
    return 102;
  }
}

@end