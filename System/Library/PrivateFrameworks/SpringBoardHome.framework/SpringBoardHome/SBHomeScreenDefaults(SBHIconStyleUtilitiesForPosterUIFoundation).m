@interface SBHomeScreenDefaults(SBHIconStyleUtilitiesForPosterUIFoundation)
- (id)sbh_homeScreenConfiguration;
- (void)sbh_setHomeScreenConfiguration:()SBHIconStyleUtilitiesForPosterUIFoundation;
@end

@implementation SBHomeScreenDefaults(SBHIconStyleUtilitiesForPosterUIFoundation)

- (id)sbh_homeScreenConfiguration
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 iconUserInterfaceStyle];
  [a1 iconUserInterfaceStyleVariation];
  v5 = v4;
  [a1 iconUserInterfaceStyleLuminance];
  v7 = v6;
  [a1 iconUserInterfaceStyleSaturation];
  v9 = v8;
  v10 = _PUIHomeScreenStyleTypeFromSBIconUserInterfaceStyleType(v3);
  v11 = [objc_alloc(getPUIStylePickerHomeScreenConfigurationClass()) initWithStyleType:v10 variation:v5 luminance:v7 saturation:v9];

  objc_autoreleasePoolPop(v2);

  return v11;
}

- (void)sbh_setHomeScreenConfiguration:()SBHIconStyleUtilitiesForPosterUIFoundation
{
  v4 = a3;
  v5 = _SBIconUserInterfaceStyleTypeFromPUIHomeScreenStyleType([v4 styleType]);
  [a1 setIconUserInterfaceStyle:v5];

  [v4 luminance];
  [a1 setIconUserInterfaceStyleLuminance:?];
  [v4 saturation];
  [a1 setIconUserInterfaceStyleSaturation:?];
  [v4 variation];
  [a1 setIconUserInterfaceStyleVariation:?];
  v6 = [v4 accentColor];

  [a1 setIconTintColor:v6];
}

@end