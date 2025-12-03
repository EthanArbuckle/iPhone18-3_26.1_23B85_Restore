@interface NSLocale(TIExtras)
+ (id)localeForBundleLanguage:()TIExtras;
@end

@implementation NSLocale(TIExtras)

+ (id)localeForBundleLanguage:()TIExtras
{
  v3 = MEMORY[0x1E695DF58];
  preferredLocalizations = [a3 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v6 = [v3 canonicalLanguageIdentifierFromString:firstObject];

  if (v6)
  {
    [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v6];
  }

  else
  {
    [MEMORY[0x1E695DF58] currentLocale];
  }
  v7 = ;

  return v7;
}

@end