@interface NSBundle(LocalizationAdditions)
- (id)_preferredEnglishLocalizationBundle;
@end

@implementation NSBundle(LocalizationAdditions)

- (id)_preferredEnglishLocalizationBundle
{
  v2 = MEMORY[0x1E696AAE8];
  localizations = [self localizations];
  v4 = [v2 preferredLocalizationsFromArray:localizations forPreferences:&unk_1EFE2CFB8];
  firstObject = [v4 firstObject];

  v6 = [self pathForResource:firstObject ofType:@"lproj"];
  v7 = [MEMORY[0x1E696AAE8] bundleWithPath:v6];

  return v7;
}

@end