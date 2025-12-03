@interface SXAdvertisementPlacementType
+ (Class)classForProtocolProperty:(id)property withValue:(id)value;
+ (id)valueClassBlockForPropertyWithName:(id)name;
- (NSString)description;
- (unint64_t)bannerTypeWithValue:(id)value withType:(int)type;
@end

@implementation SXAdvertisementPlacementType

+ (id)valueClassBlockForPropertyWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"conditional"])
  {
    v5 = &__block_literal_global_6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SXAdvertisementPlacementType;
    v5 = objc_msgSendSuper2(&v7, sel_valueClassBlockForPropertyWithName_, nameCopy);
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
    v11.super_class = &OBJC_METACLASS___SXAdvertisementPlacementType;
    v8 = objc_msgSendSuper2(&v11, sel_classForProtocolProperty_withValue_, propertyCopy, valueCopy);
  }

  v9 = v8;

  return v9;
}

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

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"; enabled: %d", -[SXAdvertisementPlacementType enabled](self, "enabled")];
  layout = [(SXAdvertisementPlacementType *)self layout];
  [v3 appendFormat:@"; layout: %@", layout];

  [v3 appendFormat:@"; frequency: %lu", -[SXAdvertisementPlacementType frequency](self, "frequency")];
  [v3 appendFormat:@"; bannerType: %lu", -[SXAdvertisementPlacementType bannerType](self, "bannerType")];
  distanceFromMedia = [(SXAdvertisementPlacementType *)self distanceFromMedia];
  [(SXAdvertisementPlacementType *)self distanceFromMedia];
  [v3 appendFormat:@"; distanceFromMedia: %f - %lu", distanceFromMedia, v6];
  [v3 appendString:@">"];

  return v3;
}

@end