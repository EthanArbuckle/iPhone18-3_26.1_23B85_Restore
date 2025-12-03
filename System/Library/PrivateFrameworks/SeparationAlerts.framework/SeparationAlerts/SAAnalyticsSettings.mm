@interface SAAnalyticsSettings
- (SAAnalyticsSettings)initWithEnableSubmission:(BOOL)submission;
@end

@implementation SAAnalyticsSettings

- (SAAnalyticsSettings)initWithEnableSubmission:(BOOL)submission
{
  v5.receiver = self;
  v5.super_class = SAAnalyticsSettings;
  result = [(SAAnalyticsSettings *)&v5 init];
  if (result)
  {
    result->_enableSubmission = submission;
  }

  return result;
}

@end