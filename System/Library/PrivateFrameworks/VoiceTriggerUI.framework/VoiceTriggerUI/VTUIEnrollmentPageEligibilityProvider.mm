@interface VTUIEnrollmentPageEligibilityProvider
- (BOOL)shouldShowLanguageDisambiguationForBestFittingSiriLanguages:(id)languages;
@end

@implementation VTUIEnrollmentPageEligibilityProvider

- (BOOL)shouldShowLanguageDisambiguationForBestFittingSiriLanguages:(id)languages
{
  languagesCopy = languages;
  if ([languagesCopy count] >= 2)
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    languageCode = [mEMORY[0x277CEF368] languageCode];

    if (languageCode)
    {
      v4 = [languagesCopy containsObject:languageCode];
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end