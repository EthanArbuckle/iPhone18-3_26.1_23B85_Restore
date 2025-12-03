@interface WiFiUsageLQMRelatedTrigger
- (WiFiUsageLQMRelatedTrigger)initWithTrigger:(id)trigger andReason:(id)reason andTimestamp:(id)timestamp;
@end

@implementation WiFiUsageLQMRelatedTrigger

- (WiFiUsageLQMRelatedTrigger)initWithTrigger:(id)trigger andReason:(id)reason andTimestamp:(id)timestamp
{
  triggerCopy = trigger;
  reasonCopy = reason;
  timestampCopy = timestamp;
  v12 = timestampCopy;
  selfCopy = 0;
  if (triggerCopy && timestampCopy)
  {
    v16.receiver = self;
    v16.super_class = WiFiUsageLQMRelatedTrigger;
    v14 = [(WiFiUsageLQMRelatedTrigger *)&v16 init];
    objc_storeStrong(&v14->_trigger, trigger);
    objc_storeStrong(&v14->_reason, reason);
    objc_storeStrong(&v14->_timestamp, timestamp);
    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

@end