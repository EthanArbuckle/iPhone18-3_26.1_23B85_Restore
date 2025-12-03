@interface WFShortcutsWidgetConfigurationIntentResponse
- (WFShortcutsWidgetConfigurationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation WFShortcutsWidgetConfigurationIntentResponse

- (WFShortcutsWidgetConfigurationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = WFShortcutsWidgetConfigurationIntentResponse;
  v7 = [(WFShortcutsWidgetConfigurationIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(WFShortcutsWidgetConfigurationIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end