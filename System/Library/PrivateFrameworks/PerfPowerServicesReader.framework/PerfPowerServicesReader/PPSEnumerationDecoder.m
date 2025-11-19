@interface PPSEnumerationDecoder
+ (BOOL)isDecodableMetric:(id)a3;
+ (id)decodeValue:(id)a3 withMetric:(id)a4;
@end

@implementation PPSEnumerationDecoder

+ (id)decodeValue:(id)a3 withMetric:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [a4 enumMapping];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 valueForKey:v5];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 stringValue];
        v7 = [v6 valueForKey:v8];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isDecodableMetric:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 enumMapping];
  v4 = v3 != 0;

  return v4;
}

@end