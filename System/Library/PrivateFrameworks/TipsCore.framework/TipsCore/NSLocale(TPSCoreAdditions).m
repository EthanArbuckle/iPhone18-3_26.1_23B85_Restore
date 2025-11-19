@interface NSLocale(TPSCoreAdditions)
+ (id)tps_userLanguageCode;
+ (id)tps_userPreferredLocalizations;
+ (id)tps_userPreferredLocalizationsForLanguages:()TPSCoreAdditions;
+ (id)tps_userRegion;
@end

@implementation NSLocale(TPSCoreAdditions)

+ (id)tps_userPreferredLocalizations
{
  v2 = [MEMORY[0x1E695DF58] preferredLanguages];
  v3 = [a1 tps_userPreferredLocalizationsForLanguages:v2];

  return v3;
}

+ (id)tps_userPreferredLocalizationsForLanguages:()TPSCoreAdditions
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = MEMORY[0x1E695DF58];
  v5 = a3;
  v6 = [v4 systemLanguages];
  v7 = [v3 preferredLocalizationsFromArray:v6 forPreferences:v5];

  return v7;
}

+ (id)tps_userLanguageCode
{
  v1 = [a1 tps_userPreferredLocalizations];
  v2 = [v1 firstObject];

  return v2;
}

+ (id)tps_userRegion
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  v1 = [v0 objectForKey:*MEMORY[0x1E695D978]];
  v2 = [v1 lowercaseString];

  return v2;
}

@end