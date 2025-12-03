@interface PPSEnumerationDecoder
+ (BOOL)isDecodableMetric:(id)metric;
+ (id)decodeValue:(id)value withMetric:(id)metric;
@end

@implementation PPSEnumerationDecoder

+ (id)decodeValue:(id)value withMetric:(id)metric
{
  valueCopy = value;
  if (valueCopy)
  {
    enumMapping = [metric enumMapping];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [enumMapping valueForKey:valueCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = [valueCopy stringValue];
        v7 = [enumMapping valueForKey:stringValue];
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

+ (BOOL)isDecodableMetric:(id)metric
{
  if (!metric)
  {
    return 0;
  }

  enumMapping = [metric enumMapping];
  v4 = enumMapping != 0;

  return v4;
}

@end