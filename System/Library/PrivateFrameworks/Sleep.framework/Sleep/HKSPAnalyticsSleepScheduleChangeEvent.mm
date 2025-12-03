@interface HKSPAnalyticsSleepScheduleChangeEvent
- (HKSPAnalyticsSleepScheduleChangeEvent)initWithScheduleChangeInfo:(id)info provenanceInfo:(id)provenanceInfo;
- (NSString)description;
@end

@implementation HKSPAnalyticsSleepScheduleChangeEvent

- (HKSPAnalyticsSleepScheduleChangeEvent)initWithScheduleChangeInfo:(id)info provenanceInfo:(id)provenanceInfo
{
  infoCopy = info;
  provenanceInfoCopy = provenanceInfo;
  v19.receiver = self;
  v19.super_class = HKSPAnalyticsSleepScheduleChangeEvent;
  v8 = [(HKSPAnalyticsSleepScheduleChangeEvent *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventName, @"com.apple.SleepHealth.ScheduleChangeEvent");
    v10 = objc_opt_class();
    applicationPayloadValue = [infoCopy applicationPayloadValue];
    isSleepTrackingEnabled = [infoCopy isSleepTrackingEnabled];
    activePairedWatchProductType = [infoCopy activePairedWatchProductType];
    source = [provenanceInfoCopy source];
    v15 = [v10 _payloadWithApplication:applicationPayloadValue isSleepTrackingEnabled:isSleepTrackingEnabled activeWatchProductType:activePairedWatchProductType provenanceSource:source];
    eventPayload = v9->_eventPayload;
    v9->_eventPayload = v15;

    v17 = v9;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"[%@.%p] event=%@, payload=%@", v5, self, self->_eventName, self->_eventPayload];

  return v6;
}

@end