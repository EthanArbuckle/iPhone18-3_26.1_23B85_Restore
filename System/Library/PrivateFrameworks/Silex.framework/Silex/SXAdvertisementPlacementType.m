@interface SXAdvertisementPlacementType
+ (Class)classForProtocolProperty:(id)a3 withValue:(id)a4;
+ (id)valueClassBlockForPropertyWithName:(id)a3;
- (NSString)description;
- (unint64_t)bannerTypeWithValue:(id)a3 withType:(int)a4;
@end

@implementation SXAdvertisementPlacementType

+ (id)valueClassBlockForPropertyWithName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_6;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___SXAdvertisementPlacementType;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, v4);
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
    v11.super_class = &OBJC_METACLASS___SXAdvertisementPlacementType;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, v6, v7);
  }

  v9 = v8;

  return v9;
}

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

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; enabled: %d", -[SXAdvertisementPlacementType enabled](self, "enabled")];
  v4 = [(SXAdvertisementPlacementType *)self layout];
  [v3 appendFormat:@"; layout: %@", v4];

  [v3 appendFormat:@"; frequency: %lu", -[SXAdvertisementPlacementType frequency](self, "frequency")];
  [v3 appendFormat:@"; bannerType: %lu", -[SXAdvertisementPlacementType bannerType](self, "bannerType")];
  v5 = [(SXAdvertisementPlacementType *)self distanceFromMedia];
  [(SXAdvertisementPlacementType *)self distanceFromMedia];
  [v3 appendFormat:@"; distanceFromMedia: %f - %lu", v5, v6];
  [v3 appendString:@">"];

  return v3;
}

@end