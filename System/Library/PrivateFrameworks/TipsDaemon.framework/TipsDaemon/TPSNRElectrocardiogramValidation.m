@interface TPSNRElectrocardiogramValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSNRElectrocardiogramValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[TPSHealthKitDefines sharedHealthStore];
  v6 = objc_alloc(MEMORY[0x277CCD530]);
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v7 countryCode];
  v9 = [v6 initWithHealthStore:v5 currentCountryCode:v8];

  LODWORD(v7) = [v9 shouldAdvertiseElectrocardiogramForActiveWatch];
  v10 = v7 ^ [(TPSTargetingValidation *)self BOOLValue];
  v11 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v11];
  }

  (*(v4 + 2))(v4, v10 ^ 1u, 0);
}

@end