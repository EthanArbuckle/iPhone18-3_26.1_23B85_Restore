@interface PGFeatureTransformerHelper
+ (BOOL)validParameters:(id)a3 ofTypes:(id)a4;
@end

@implementation PGFeatureTransformerHelper

+ (BOOL)validParameters:(id)a3 ofTypes:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && (v7 = [v5 count], v7 == objc_msgSend(v6, "count")))
  {
    if ([v5 count])
    {
      v8 = 0;
      do
      {
        v9 = [v5 objectAtIndexedSubscript:v8];
        [v6 objectAtIndexedSubscript:v8];
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [v5 count]);
    }

    else
    {
      isKindOfClass = 1;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end