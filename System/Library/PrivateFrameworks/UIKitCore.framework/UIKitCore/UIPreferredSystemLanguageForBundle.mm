@interface UIPreferredSystemLanguageForBundle
@end

@implementation UIPreferredSystemLanguageForBundle

void ___UIPreferredSystemLanguageForBundle_block_invoke(uint64_t a1)
{
  locArray = [*(a1 + 32) localizations];
  v1 = *MEMORY[0x1E695E8A8];
  if (CFPreferencesAppValueIsForced(@"AppleLanguages", *MEMORY[0x1E695E8A8]))
  {
    v2 = CFPreferencesCopyAppValue(@"AppleLanguages", v1);
  }

  else
  {
    v2 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  v3 = v2;
  if (v2)
  {
    v4 = CFBundleCopyLocalizationsForPreferences(locArray, v2);
    v5 = [(__CFArray *)v4 firstObject];
    v6 = _UIPreferredSystemLanguageForBundle_primaryLanguage;
    _UIPreferredSystemLanguageForBundle_primaryLanguage = v5;
  }
}

@end