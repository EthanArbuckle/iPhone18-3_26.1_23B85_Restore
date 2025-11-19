@interface SAAnalyticsSettings
- (SAAnalyticsSettings)initWithEnableSubmission:(BOOL)a3;
@end

@implementation SAAnalyticsSettings

- (SAAnalyticsSettings)initWithEnableSubmission:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SAAnalyticsSettings;
  result = [(SAAnalyticsSettings *)&v5 init];
  if (result)
  {
    result->_enableSubmission = a3;
  }

  return result;
}

@end