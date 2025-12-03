@interface HKSPAnalyticsManager
+ (BOOL)defaultIsDiagnosticDataSubmissionAllowed;
+ (id)activePairedWatchProductType;
+ (id)currentDeviceType;
- (HKSPAnalyticsManager)initWithUserDefaults:(id)defaults ihaOptInStatusProvider:(id)provider diagnosticsOptInStatusProvider:(id)statusProvider analyticsEventConsumer:(id)consumer;
- (void)trackEvent:(id)event;
- (void)trackEvents:(id)events;
@end

@implementation HKSPAnalyticsManager

void __45__HKSPAnalyticsManager_initWithUserDefaults___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = HKSPLogForCategory(0x11uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_INFO, "AnalyticsSendEvent(%{public}@, %{public}@)", &v8, 0x16u);
  }

  AnalyticsSendEvent();
  v7 = *MEMORY[0x277D85DE8];
}

- (HKSPAnalyticsManager)initWithUserDefaults:(id)defaults ihaOptInStatusProvider:(id)provider diagnosticsOptInStatusProvider:(id)statusProvider analyticsEventConsumer:(id)consumer
{
  defaultsCopy = defaults;
  providerCopy = provider;
  statusProviderCopy = statusProvider;
  consumerCopy = consumer;
  v25.receiver = self;
  v25.super_class = HKSPAnalyticsManager;
  v14 = [(HKSPAnalyticsManager *)&v25 init];
  if (v14)
  {
    v15 = [[HKSPAnalyticsStore alloc] initWithUserDefaults:defaultsCopy diagnosticsOptInStatusProvider:statusProviderCopy];
    analyticsStore = v14->_analyticsStore;
    v14->_analyticsStore = v15;

    v17 = [providerCopy copy];
    ihaOptInStatusProvider = v14->_ihaOptInStatusProvider;
    v14->_ihaOptInStatusProvider = v17;

    v19 = [statusProviderCopy copy];
    diagnosticsOptInStatusProvider = v14->_diagnosticsOptInStatusProvider;
    v14->_diagnosticsOptInStatusProvider = v19;

    v21 = [consumerCopy copy];
    analyticsEventConsumer = v14->_analyticsEventConsumer;
    v14->_analyticsEventConsumer = v21;

    v23 = v14;
  }

  return v14;
}

- (void)trackEvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = MEMORY[0x277CBEA60];
  eventCopy2 = event;
  v6 = [v4 arrayWithObjects:&eventCopy count:1];

  [(HKSPAnalyticsManager *)self trackEvents:v6, eventCopy, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)trackEvents:(id)events
{
  v41 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v8 = "[%{public}@] Tracking event %{public}@";
    do
    {
      v9 = 0;
      v29 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        v11 = HKSPLogForCategory(0x11uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          *buf = 138543618;
          v37 = v12;
          v38 = 2114;
          v39 = v10;
          v13 = v12;
          _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_INFO, v8, buf, 0x16u);
        }

        eventPayload = [v10 eventPayload];
        if (![(HKSPAnalyticsManager *)self isImproveHealthAndActivitySubmissionAllowed]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          v15 = v7;
          v16 = v8;
          v17 = eventsCopy;
          v18 = MEMORY[0x277CBEB98];
          keysRequiringIHAGating = [v10 keysRequiringIHAGating];
          v20 = [v18 setWithArray:keysRequiringIHAGating];

          v21 = HKSPLogForCategory(0x11uLL);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = objc_opt_class();
            *buf = 138543618;
            v37 = v22;
            v38 = 2114;
            v39 = v20;
            v23 = v22;
            _os_log_impl(&dword_269A84000, v21, OS_LOG_TYPE_INFO, "[%{public}@] Removing IHA gated keys %{public}@", buf, 0x16u);
          }

          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __36__HKSPAnalyticsManager_trackEvents___block_invoke;
          v30[3] = &unk_279C73E88;
          v31 = v20;
          v24 = v20;
          v25 = [eventPayload na_filter:v30];

          eventPayload = v25;
          eventsCopy = v17;
          v8 = v16;
          v7 = v15;
          v6 = v29;
        }

        if ([eventPayload count])
        {
          analyticsEventConsumer = self->_analyticsEventConsumer;
          eventName = [v10 eventName];
          analyticsEventConsumer[2](analyticsEventConsumer, eventName, eventPayload);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [eventsCopy countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v6);
  }

  v28 = *MEMORY[0x277D85DE8];
}

+ (BOOL)defaultIsDiagnosticDataSubmissionAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isDiagnosticSubmissionAllowed = [mEMORY[0x277D262A0] isDiagnosticSubmissionAllowed];

  return isDiagnosticSubmissionAllowed;
}

+ (id)currentDeviceType
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_device = [mEMORY[0x277CCDD30] hksp_device];

  if (hksp_device <= 3)
  {
    if (hksp_device == 2)
    {
      v4 = HKSPAnalyticsDeviceWatch;
      goto LABEL_9;
    }

LABEL_8:
    v4 = HKSPAnalyticsDevicePhone;
    goto LABEL_9;
  }

  if (hksp_device > 5)
  {
    if (hksp_device == 6)
    {
      v4 = HKSPAnalyticsDeviceReality;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (hksp_device == 4)
  {
    v4 = HKSPAnalyticsDevicePad;
  }

  else
  {
    v4 = HKSPAnalyticsDeviceMac;
  }

LABEL_9:
  v5 = *v4;

  return v5;
}

+ (id)activePairedWatchProductType
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  v4 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];

  return v4;
}

@end