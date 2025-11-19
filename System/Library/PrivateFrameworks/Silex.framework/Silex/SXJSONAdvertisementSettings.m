@interface SXJSONAdvertisementSettings
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
- (unint64_t)bannerTypeWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXJSONAdvertisementSettings

- (unint64_t)bannerTypeWithValue:(id)a3 withType:(int)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEqualToString:@"any"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"standard"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"double_height"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"large"])
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

+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"layout"])
  {
    v8 = objc_opt_class();
  }

  else
  {
    v11.receiver = a1;
    v11.super_class = &OBJC_METACLASS___SXJSONAdvertisementSettings;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v9 = v8;

  return v9;
}

@end