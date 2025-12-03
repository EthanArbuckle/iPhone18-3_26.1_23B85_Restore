@interface NSLocale(TPSCoreAdditions)
+ (id)tps_userLanguageCode;
+ (id)tps_userPreferredLocalizations;
+ (id)tps_userPreferredLocalizationsForLanguages:()TPSCoreAdditions;
+ (id)tps_userRegion;
@end

@implementation NSLocale(TPSCoreAdditions)

+ (id)tps_userPreferredLocalizations
{
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v3 = [self tps_userPreferredLocalizationsForLanguages:preferredLanguages];

  return v3;
}

+ (id)tps_userPreferredLocalizationsForLanguages:()TPSCoreAdditions
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = MEMORY[0x1E695DF58];
  v5 = a3;
  systemLanguages = [v4 systemLanguages];
  v7 = [v3 preferredLocalizationsFromArray:systemLanguages forPreferences:v5];

  return v7;
}

+ (id)tps_userLanguageCode
{
  tps_userPreferredLocalizations = [self tps_userPreferredLocalizations];
  firstObject = [tps_userPreferredLocalizations firstObject];

  return firstObject;
}

+ (id)tps_userRegion
{
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];
  lowercaseString = [v1 lowercaseString];

  return lowercaseString;
}

@end