@interface SXJSONAdvertisementSettings
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
- (unint64_t)bannerTypeWithValue:(id)value withType:(int)type;
@end

@implementation SXJSONAdvertisementSettings

- (unint64_t)bannerTypeWithValue:(id)value withType:(int)type
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([valueCopy isEqualToString:@"any"])
    {
      v5 = 1;
    }

    else if ([valueCopy isEqualToString:@"standard"])
    {
      v5 = 2;
    }

    else if ([valueCopy isEqualToString:@"double_height"])
    {
      v5 = 3;
    }

    else if ([valueCopy isEqualToString:@"large"])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  return v5;
}

+ (Class)classForProtocolProperty:(id)property withValue:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  if ([propertyCopy isEqualToString:@"layout"])
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___SXJSONAdvertisementSettings;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

@end