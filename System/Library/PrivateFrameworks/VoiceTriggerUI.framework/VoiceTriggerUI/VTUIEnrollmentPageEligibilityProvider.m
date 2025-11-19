@interface VTUIEnrollmentPageEligibilityProvider
- (BOOL)shouldShowLanguageDisambiguationForBestFittingSiriLanguages:(id)a3;
@end

@implementation VTUIEnrollmentPageEligibilityProvider

- (BOOL)shouldShowLanguageDisambiguationForBestFittingSiriLanguages:(id)a3
{
  v3 = a3;
  if ([v3 count] >= 2)
  {
    v5 = [MEMORY[0x277CEF368] sharedPreferences];
    v6 = [v5 languageCode];

    if (v6)
    {
      v4 = [v3 containsObject:v6];
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