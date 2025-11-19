@interface TAAnalyticsManagerSettings
- (TAAnalyticsManagerSettings)initWithEnableSubmissionOrDefault:(id)a3 andSettingsVersion:(unint64_t)a4;
@end

@implementation TAAnalyticsManagerSettings

- (TAAnalyticsManagerSettings)initWithEnableSubmissionOrDefault:(id)a3 andSettingsVersion:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TAAnalyticsManagerSettings;
  v7 = [(TAAnalyticsManagerSettings *)&v10 init];
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 BOOLValue];
    }

    else
    {
      v8 = 1;
    }

    v7->_enableSubmission = v8;
    v7->_settingsVersion = a4;
  }

  return v7;
}

@end