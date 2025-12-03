@interface HKSPAnalyticsWindDownEvent
+ (id)_payloadValueForWindDownAction:(unint64_t)action;
- (HKSPAnalyticsWindDownEvent)initWithWindDownEventData:(id)data watchProductType:(id)type weeksSinceOnboarded:(id)onboarded;
@end

@implementation HKSPAnalyticsWindDownEvent

- (HKSPAnalyticsWindDownEvent)initWithWindDownEventData:(id)data watchProductType:(id)type weeksSinceOnboarded:(id)onboarded
{
  v32[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  typeCopy = type;
  onboardedCopy = onboarded;
  v30.receiver = self;
  v30.super_class = HKSPAnalyticsWindDownEvent;
  v11 = [(HKSPAnalyticsWindDownEvent *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_eventName, @"com.apple.SleepHealth.WindDownActionsEvent");
    v13 = [objc_opt_class() _payloadValueForWindDownAction:{objc_msgSend(dataCopy, "action")}];
    wasUsed = [dataCopy wasUsed];
    v15 = onboardedCopy;
    v28 = typeCopy;
    v16 = typeCopy;
    v17 = MEMORY[0x277CBEB38];
    v18 = v13;
    v19 = [v17 alloc];
    v31[0] = @"windDownActionPresented";
    v31[1] = @"windDownActionUsed";
    v32[0] = v18;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:wasUsed];
    v32[1] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

    v22 = [v19 initWithDictionary:v21];
    if (v16)
    {
      [v22 setObject:v16 forKeyedSubscript:@"activeWatchProductType"];
    }

    if (v15)
    {
      [v22 setObject:v15 forKeyedSubscript:@"weeksSinceOnboardedWindDownActions"];
    }

    v23 = [v22 copy];

    eventPayload = v12->_eventPayload;
    v12->_eventPayload = v23;

    v25 = v12;
    typeCopy = v29;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

+ (id)_payloadValueForWindDownAction:(unint64_t)action
{
  if (action > 3)
  {
    return &stru_287A719F0;
  }

  else
  {
    return off_279C73BC0[action];
  }
}

@end