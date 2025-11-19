@interface WFCoreDataTriggerEvent
- (id)descriptor;
@end

@implementation WFCoreDataTriggerEvent

- (id)descriptor
{
  v3 = [WFTriggerEvent alloc];
  v4 = [(WFCoreDataTriggerEvent *)self identifier];
  v5 = [(WFCoreDataTriggerEvent *)self trigger];
  v6 = [v5 identifier];
  v7 = [(WFCoreDataTriggerEvent *)self eventInfo];
  v8 = [(WFCoreDataTriggerEvent *)self confirmed];
  v9 = [(WFCoreDataTriggerEvent *)self paused];
  v10 = [(WFCoreDataTriggerEvent *)self dateCreated];
  v11 = [(WFTriggerEvent *)v3 initWithIdentifier:v4 triggerID:v6 eventInfo:v7 confirmed:v8 paused:v9 dateCreated:v10];

  return v11;
}

@end