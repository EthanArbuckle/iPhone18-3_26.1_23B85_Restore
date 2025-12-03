@interface SearchUIAlarmBiomeEvent
+ (BOOL)supportsEvent:(id)event contextualAction:(id)action;
- (SearchUIAlarmBiomeEvent)initWithEvent:(id)event contextualAction:(id)action;
- (void)getEnabledStatusWithCompletion:(id)completion;
@end

@implementation SearchUIAlarmBiomeEvent

+ (BOOL)supportsEvent:(id)event contextualAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (SearchUIAlarmBiomeEvent)initWithEvent:(id)event contextualAction:(id)action
{
  eventCopy = event;
  actionCopy = action;
  v11.receiver = self;
  v11.super_class = SearchUIAlarmBiomeEvent;
  v8 = [(BMEventBase *)&v11 init];
  if (v8)
  {
    alarmIdentifier = [actionCopy alarmIdentifier];
    [(SearchUIAlarmBiomeEvent *)v8 setObservedAlarmIdentifier:alarmIdentifier];

    [(SearchUIBiomeEvent *)v8 setBiomeEvent:eventCopy];
  }

  return v8;
}

- (void)getEnabledStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  observedAlarmIdentifier = [(SearchUIAlarmBiomeEvent *)self observedAlarmIdentifier];
  [SearchUIMobileTimerUtilities getEnablementStatusForAlarmWithIdentifier:observedAlarmIdentifier completion:completionCopy];
}

@end