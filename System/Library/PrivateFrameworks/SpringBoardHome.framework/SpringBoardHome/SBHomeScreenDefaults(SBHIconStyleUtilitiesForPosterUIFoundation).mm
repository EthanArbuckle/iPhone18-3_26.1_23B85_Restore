@interface SBHomeScreenDefaults(SBHIconStyleUtilitiesForPosterUIFoundation)
- (id)sbh_homeScreenConfiguration;
- (void)sbh_setHomeScreenConfiguration:()SBHIconStyleUtilitiesForPosterUIFoundation;
@end

@implementation SBHomeScreenDefaults(SBHIconStyleUtilitiesForPosterUIFoundation)

- (id)sbh_homeScreenConfiguration
{
  v2 = objc_autoreleasePoolPush();
  iconUserInterfaceStyle = [self iconUserInterfaceStyle];
  [self iconUserInterfaceStyleVariation];
  v5 = v4;
  [self iconUserInterfaceStyleLuminance];
  v7 = v6;
  [self iconUserInterfaceStyleSaturation];
  v9 = v8;
  v10 = _PUIHomeScreenStyleTypeFromSBIconUserInterfaceStyleType(iconUserInterfaceStyle);
  v11 = [objc_alloc(getPUIStylePickerHomeScreenConfigurationClass()) initWithStyleType:v10 variation:v5 luminance:v7 saturation:v9];

  objc_autoreleasePoolPop(v2);

  return v11;
}

- (void)sbh_setHomeScreenConfiguration:()SBHIconStyleUtilitiesForPosterUIFoundation
{
  v4 = a3;
  v5 = _SBIconUserInterfaceStyleTypeFromPUIHomeScreenStyleType([v4 styleType]);
  [self setIconUserInterfaceStyle:v5];

  [v4 luminance];
  [self setIconUserInterfaceStyleLuminance:?];
  [v4 saturation];
  [self setIconUserInterfaceStyleSaturation:?];
  [v4 variation];
  [self setIconUserInterfaceStyleVariation:?];
  accentColor = [v4 accentColor];

  [self setIconTintColor:accentColor];
}

@end