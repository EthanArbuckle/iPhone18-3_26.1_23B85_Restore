@interface HKSPAnalyticsOnboardingEvent
- (HKSPAnalyticsOnboardingEvent)initWithOnboardingInfo:(id)info provenanceInfo:(id)provenanceInfo;
- (NSString)description;
@end

@implementation HKSPAnalyticsOnboardingEvent

- (HKSPAnalyticsOnboardingEvent)initWithOnboardingInfo:(id)info provenanceInfo:(id)provenanceInfo
{
  v33[5] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  provenanceInfoCopy = provenanceInfo;
  v31.receiver = self;
  v31.super_class = HKSPAnalyticsOnboardingEvent;
  v8 = [(HKSPAnalyticsOnboardingEvent *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventName, @"com.apple.SleepHealth.OnboardingSteps");
    stepPayloadValue = [infoCopy stepPayloadValue];
    entryPointPayloadValue = [infoCopy entryPointPayloadValue];
    actionPayloadValue = [infoCopy actionPayloadValue];
    source = [provenanceInfoCopy source];
    v30 = provenanceInfoCopy;
    presentation = [provenanceInfoCopy presentation];
    v15 = actionPayloadValue;
    v16 = MEMORY[0x277CBEB38];
    v17 = presentation;
    v18 = source;
    v19 = entryPointPayloadValue;
    v20 = stepPayloadValue;
    v21 = [v16 alloc];
    v32[0] = @"step";
    v32[1] = @"entryPoint";
    v33[0] = v20;
    v33[1] = v19;
    v32[2] = @"device";
    v22 = +[HKSPAnalyticsManager currentDeviceType];
    v33[2] = v22;
    v33[3] = v18;
    v32[3] = @"provenance";
    v32[4] = @"context";
    v33[4] = v17;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:5];

    v24 = [v21 initWithDictionary:v23];
    if (v15)
    {
      [v24 setObject:v15 forKeyedSubscript:@"action"];
    }

    v25 = [v24 copy];

    eventPayload = v9->_eventPayload;
    v9->_eventPayload = v25;

    v27 = v9;
    provenanceInfoCopy = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
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