@interface WFCoreDataTriggerEvent
- (id)descriptor;
@end

@implementation WFCoreDataTriggerEvent

- (id)descriptor
{
  v3 = [WFTriggerEvent alloc];
  identifier = [(WFCoreDataTriggerEvent *)self identifier];
  trigger = [(WFCoreDataTriggerEvent *)self trigger];
  identifier2 = [trigger identifier];
  eventInfo = [(WFCoreDataTriggerEvent *)self eventInfo];
  confirmed = [(WFCoreDataTriggerEvent *)self confirmed];
  paused = [(WFCoreDataTriggerEvent *)self paused];
  dateCreated = [(WFCoreDataTriggerEvent *)self dateCreated];
  v11 = [(WFTriggerEvent *)v3 initWithIdentifier:identifier triggerID:identifier2 eventInfo:eventInfo confirmed:confirmed paused:paused dateCreated:dateCreated];

  return v11;
}

@end