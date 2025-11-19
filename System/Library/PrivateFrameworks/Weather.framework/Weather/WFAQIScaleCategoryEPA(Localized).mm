@interface WFAQIScaleCategoryEPA(Localized)
- (NSString)scaleClassName;
- (id)description;
- (id)longDescription;
@end

@implementation WFAQIScaleCategoryEPA(Localized)

- (NSString)scaleClassName
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)description
{
  v1 = [a1 categoryIndex];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = v2;
  if ((v1 - 1) > 5)
  {
    v4 = @"WFAQI_Scale_Category_Unknown";
  }

  else
  {
    v4 = off_279E69248[v1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  return v5;
}

- (id)longDescription
{
  v1 = [a1 categoryIndex];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = v2;
  if ((v1 - 1) > 5)
  {
    v4 = @"WFAQI_Scale_Category_Unknown";
  }

  else
  {
    v4 = off_279E69278[v1 - 1];
  }

  v5 = [v2 localizedStringForKey:v4 value:&stru_2882270E8 table:@"WeatherFrameworkLocalizableStrings"];

  return v5;
}

@end