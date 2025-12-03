@interface TAAnalyticsManagerSettings
- (TAAnalyticsManagerSettings)initWithEnableSubmissionOrDefault:(id)default andSettingsVersion:(unint64_t)version;
@end

@implementation TAAnalyticsManagerSettings

- (TAAnalyticsManagerSettings)initWithEnableSubmissionOrDefault:(id)default andSettingsVersion:(unint64_t)version
{
  defaultCopy = default;
  v10.receiver = self;
  v10.super_class = TAAnalyticsManagerSettings;
  v7 = [(TAAnalyticsManagerSettings *)&v10 init];
  if (v7)
  {
    if (defaultCopy)
    {
      bOOLValue = [defaultCopy BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v7->_enableSubmission = bOOLValue;
    v7->_settingsVersion = version;
  }

  return v7;
}

@end