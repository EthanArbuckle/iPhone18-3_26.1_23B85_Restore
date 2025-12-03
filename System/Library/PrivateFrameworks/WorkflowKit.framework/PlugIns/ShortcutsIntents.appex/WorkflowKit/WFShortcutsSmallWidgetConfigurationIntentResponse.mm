@interface WFShortcutsSmallWidgetConfigurationIntentResponse
- (WFShortcutsSmallWidgetConfigurationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation WFShortcutsSmallWidgetConfigurationIntentResponse

- (WFShortcutsSmallWidgetConfigurationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = WFShortcutsSmallWidgetConfigurationIntentResponse;
  v7 = [(WFShortcutsSmallWidgetConfigurationIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(WFShortcutsSmallWidgetConfigurationIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end