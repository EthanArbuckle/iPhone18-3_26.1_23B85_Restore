@interface NSBundle(LocalizationAdditions)
- (id)_preferredEnglishLocalizationBundle;
@end

@implementation NSBundle(LocalizationAdditions)

- (id)_preferredEnglishLocalizationBundle
{
  v2 = MEMORY[0x1E696AAE8];
  v3 = [a1 localizations];
  v4 = [v2 preferredLocalizationsFromArray:v3 forPreferences:&unk_1EFE2CFB8];
  v5 = [v4 firstObject];

  v6 = [a1 pathForResource:v5 ofType:@"lproj"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithPath:v6];

  return v7;
}

@end