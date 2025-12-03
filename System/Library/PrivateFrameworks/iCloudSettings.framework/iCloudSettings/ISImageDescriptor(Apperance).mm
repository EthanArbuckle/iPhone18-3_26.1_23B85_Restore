@interface ISImageDescriptor(Apperance)
+ (id)ics_tintColorForTraitCollection:()Apperance;
+ (uint64_t)ics_appearanceVariantForTraitCollection:()Apperance;
+ (uint64_t)ics_imageApperanceForTraitCollection:()Apperance;
+ (unint64_t)ics_imageApperanceForColorForTraitCollection:()Apperance;
@end

@implementation ISImageDescriptor(Apperance)

+ (uint64_t)ics_imageApperanceForTraitCollection:()Apperance
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 objectForTrait:v5];

  if ([v6 updatedConfigurationType] == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = [self ics_imageApperanceForColorForTraitCollection:v4];
  }

  return v7;
}

+ (unint64_t)ics_imageApperanceForColorForTraitCollection:()Apperance
{
  v3 = a3;
  v4 = objc_opt_self();
  v5 = [v3 objectForTrait:v4];

  variant = [v5 variant];
  if (variant >= 2)
  {
    variant = [v3 userInterfaceStyle] == 2;
  }

  return variant;
}

+ (uint64_t)ics_appearanceVariantForTraitCollection:()Apperance
{
  v3 = a3;
  v4 = objc_opt_self();
  v5 = [v3 objectForTrait:v4];

  updatedConfigurationType = [v5 updatedConfigurationType];
  v7 = 3;
  if (updatedConfigurationType != 1)
  {
    v7 = 0;
  }

  if (updatedConfigurationType == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

+ (id)ics_tintColorForTraitCollection:()Apperance
{
  v3 = a3;
  v4 = objc_opt_self();
  v5 = [v3 objectForTrait:v4];

  if ([v5 updatedConfigurationType] == 2)
  {
    tintColor = [v5 tintColor];
    uIColor = [tintColor UIColor];
  }

  else
  {
    uIColor = 0;
  }

  return uIColor;
}

@end