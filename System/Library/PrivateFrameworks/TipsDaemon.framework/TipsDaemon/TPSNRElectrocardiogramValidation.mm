@interface TPSNRElectrocardiogramValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSNRElectrocardiogramValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[TPSHealthKitDefines sharedHealthStore];
  v6 = objc_alloc(MEMORY[0x277CCD530]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  countryCode = [currentLocale countryCode];
  v9 = [v6 initWithHealthStore:v5 currentCountryCode:countryCode];

  LODWORD(currentLocale) = [v9 shouldAdvertiseElectrocardiogramForActiveWatch];
  v10 = currentLocale ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v10 ^ 1u, 0);
}

@end