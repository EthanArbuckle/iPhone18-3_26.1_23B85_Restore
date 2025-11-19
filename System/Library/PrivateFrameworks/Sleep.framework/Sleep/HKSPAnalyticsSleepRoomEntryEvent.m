@interface HKSPAnalyticsSleepRoomEntryEvent
- (NSString)description;
@end

@implementation HKSPAnalyticsSleepRoomEntryEvent

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@.%p] event=%@, payload=%@", v5, self, self->_eventName, self->_eventPayload];

  return v6;
}

@end