@interface HKSPAnalyticsSleepScheduleChangeEvent
- (HKSPAnalyticsSleepScheduleChangeEvent)initWithScheduleChangeInfo:(id)a3 provenanceInfo:(id)a4;
- (NSString)description;
@end

@implementation HKSPAnalyticsSleepScheduleChangeEvent

- (HKSPAnalyticsSleepScheduleChangeEvent)initWithScheduleChangeInfo:(id)a3 provenanceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = HKSPAnalyticsSleepScheduleChangeEvent;
  v8 = [(HKSPAnalyticsSleepScheduleChangeEvent *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventName, @"com.apple.SleepHealth.ScheduleChangeEvent");
    v10 = objc_opt_class();
    v11 = [v6 applicationPayloadValue];
    v12 = [v6 isSleepTrackingEnabled];
    v13 = [v6 activePairedWatchProductType];
    v14 = [v7 source];
    v15 = [v10 _payloadWithApplication:v11 isSleepTrackingEnabled:v12 activeWatchProductType:v13 provenanceSource:v14];
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