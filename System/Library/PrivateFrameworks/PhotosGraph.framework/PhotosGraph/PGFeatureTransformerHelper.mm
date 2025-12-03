@interface PGFeatureTransformerHelper
+ (BOOL)validParameters:(id)parameters ofTypes:(id)types;
@end

@implementation PGFeatureTransformerHelper

+ (BOOL)validParameters:(id)parameters ofTypes:(id)types
{
  parametersCopy = parameters;
  typesCopy = types;
  if (parametersCopy && (v7 = [parametersCopy count], v7 == objc_msgSend(typesCopy, "count")))
  {
    if ([parametersCopy count])
    {
      v8 = 0;
      do
      {
        v9 = [parametersCopy objectAtIndexedSubscript:v8];
        [typesCopy objectAtIndexedSubscript:v8];
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while (v8 < [parametersCopy count]);
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