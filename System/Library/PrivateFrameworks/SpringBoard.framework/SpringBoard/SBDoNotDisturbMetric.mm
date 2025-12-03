@interface SBDoNotDisturbMetric
- (BOOL)handleEvent:(unint64_t)event withContext:(id)context;
- (BOOL)sendCoreAnalyticsEventWithName:(id)name payload:(id)payload;
- (SBDoNotDisturbMetric)init;
- (SBDoNotDisturbMetric)initWithAnalyticsClient:(id)client;
- (SBDoNotDisturbMetric)initWithAnalyticsClient:(id)client dndStateService:(id)service;
- (id)_bundleIdentifierForElementWithLayoutRole:(int64_t)role fromContext:(id)context;
- (void)dealloc;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
@end

@implementation SBDoNotDisturbMetric

- (SBDoNotDisturbMetric)initWithAnalyticsClient:(id)client
{
  v4 = MEMORY[0x277D05AB0];
  clientCopy = client;
  v6 = [v4 serviceForClientIdentifier:@"com.apple.springboard.SBDoNotDisturbMetric"];
  v7 = [(SBDoNotDisturbMetric *)self initWithAnalyticsClient:clientCopy dndStateService:v6];

  return v7;
}

- (SBDoNotDisturbMetric)initWithAnalyticsClient:(id)client dndStateService:(id)service
{
  clientCopy = client;
  serviceCopy = service;
  v23.receiver = self;
  v23.super_class = SBDoNotDisturbMetric;
  v9 = [(SBDoNotDisturbMetric *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dndStateService, service);
    objc_storeStrong(&v10->_analyticsClient, client);
    primaryBundleIdentifier = v10->_primaryBundleIdentifier;
    v10->_location = 0;
    v10->_primaryBundleIdentifier = @"none";

    sideBundleIdentifier = v10->_sideBundleIdentifier;
    v10->_sideBundleIdentifier = @"none";

    floatingBundleIdentifier = v10->_floatingBundleIdentifier;
    v10->_floatingBundleIdentifier = @"none";

    [(DNDStateService *)v10->_dndStateService addStateUpdateListener:v10 withCompletionHandler:0];
    dndStateService = v10->_dndStateService;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __64__SBDoNotDisturbMetric_initWithAnalyticsClient_dndStateService___block_invoke;
    v21[3] = &unk_2783C1508;
    v15 = v10;
    v22 = v15;
    [(DNDStateService *)dndStateService queryCurrentStateWithCompletionHandler:v21];
    objc_initWeak(&location, v15);
    analyticsClient = v10->_analyticsClient;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __64__SBDoNotDisturbMetric_initWithAnalyticsClient_dndStateService___block_invoke_3;
    v18[3] = &unk_2783AFF50;
    objc_copyWeak(&v19, &location);
    [(SBFAnalyticsClient *)analyticsClient registerForQueryName:5 handler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __64__SBDoNotDisturbMetric_initWithAnalyticsClient_dndStateService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SBDoNotDisturbMetric_initWithAnalyticsClient_dndStateService___block_invoke_2;
  v5[3] = &unk_2783A92D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __64__SBDoNotDisturbMetric_initWithAnalyticsClient_dndStateService___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 40) isActive];
  *(*(a1 + 32) + 8) = result;
  return result;
}

id __64__SBDoNotDisturbMetric_initWithAnalyticsClient_dndStateService___block_invoke_3(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SBDoNotDisturbMetric_initWithAnalyticsClient_dndStateService___block_invoke_4;
  block[3] = &unk_2783A8CE0;
  v8 = &v9;
  v2 = WeakRetained;
  v7 = v2;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v13 = *MEMORY[0x277D674A0];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(v10 + 24)];
  v14[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  _Block_object_dispose(&v9, 8);

  return v4;
}

uint64_t __64__SBDoNotDisturbMetric_initWithAnalyticsClient_dndStateService___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) isDoNotDisturbActive];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (SBDoNotDisturbMetric)init
{
  mEMORY[0x277D65DD0] = [MEMORY[0x277D65DD0] sharedInstance];
  v4 = [(SBDoNotDisturbMetric *)self initWithAnalyticsClient:mEMORY[0x277D65DD0]];

  return v4;
}

- (void)dealloc
{
  [(DNDStateService *)self->_dndStateService removeStateUpdateListener:self];
  v3.receiver = self;
  v3.super_class = SBDoNotDisturbMetric;
  [(SBDoNotDisturbMetric *)&v3 dealloc];
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  v14[2] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  state = [updateCopy state];
  isActive = [state isActive];
  self->_doNotDisturbActive = isActive;
  analyticsClient = self->_analyticsClient;
  v13[0] = *MEMORY[0x277D674A0];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:isActive];
  v14[0] = v9;
  v13[1] = *MEMORY[0x277D674A8];
  reason = [updateCopy reason];

  if (reason > 4)
  {
    v11 = @"NotEnumerated";
  }

  else
  {
    v11 = off_2783C1548[reason];
  }

  v14[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [(SBFAnalyticsClient *)analyticsClient emitEvent:49 withPayload:v12];
}

- (BOOL)handleEvent:(unint64_t)event withContext:(id)context
{
  v24[5] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = contextCopy;
  if (event == 49)
  {
    eventPayload = [contextCopy eventPayload];
    v15 = [eventPayload objectForKeyedSubscript:*MEMORY[0x277D674A0]];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      if ([(SBDoNotDisturbMetric *)self location]== 4)
      {
        primaryBundleIdentifier = [(SBDoNotDisturbMetric *)self primaryBundleIdentifier];
        sideBundleIdentifier = [(SBDoNotDisturbMetric *)self sideBundleIdentifier];
        floatingBundleIdentifier = [(SBDoNotDisturbMetric *)self floatingBundleIdentifier];
      }

      else
      {
        primaryBundleIdentifier = @"none";
        sideBundleIdentifier = @"none";
        floatingBundleIdentifier = @"none";
      }

      v23[0] = @"Reason";
      v19 = [eventPayload objectForKeyedSubscript:*MEMORY[0x277D674A8]];
      v24[0] = v19;
      v23[1] = @"Location";
      v20 = NSStringFromAnalyticsLayoutLocation([(SBDoNotDisturbMetric *)self location]);
      v24[1] = v20;
      v24[2] = primaryBundleIdentifier;
      v23[2] = @"PrimaryBundleID";
      v23[3] = @"SideBundleID";
      v23[4] = @"FloatingBundleID";
      v24[3] = sideBundleIdentifier;
      v24[4] = floatingBundleIdentifier;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];
      [(SBDoNotDisturbMetric *)self sendCoreAnalyticsEventWithName:@"com.apple.SpringBoard.Analytics.DoNotDisturbEnabled" payload:v21];
    }
  }

  else
  {
    if (event == 5)
    {
      v10 = [(SBDoNotDisturbMetric *)self _bundleIdentifierForElementWithLayoutRole:1 fromContext:contextCopy];
      v11 = [(SBDoNotDisturbMetric *)self _bundleIdentifierForElementWithLayoutRole:2 fromContext:v7];
      v12 = [(SBDoNotDisturbMetric *)self _bundleIdentifierForElementWithLayoutRole:3 fromContext:v7];
      [(SBDoNotDisturbMetric *)self setPrimaryBundleIdentifier:v10];
      [(SBDoNotDisturbMetric *)self setSideBundleIdentifier:v11];
      [(SBDoNotDisturbMetric *)self setFloatingBundleIdentifier:v12];
    }

    else
    {
      if (event != 3)
      {
        LOBYTE(bOOLValue) = 0;
        goto LABEL_14;
      }

      eventPayload2 = [contextCopy eventPayload];
      v9 = [eventPayload2 objectForKeyedSubscript:*MEMORY[0x277D67498]];

      [(SBDoNotDisturbMetric *)self setLocation:SBAnalyticsLayoutLocationForDisplayLayoutElements(v9)];
    }

    LOBYTE(bOOLValue) = 1;
  }

LABEL_14:

  return bOOLValue;
}

- (BOOL)sendCoreAnalyticsEventWithName:(id)name payload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  v5 = AnalyticsSendEventLazy();

  return v5;
}

- (id)_bundleIdentifierForElementWithLayoutRole:(int64_t)role fromContext:(id)context
{
  eventPayload = [context eventPayload];
  v6 = [eventPayload objectForKeyedSubscript:*MEMORY[0x277D67588]];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SBDoNotDisturbMetric__bundleIdentifierForElementWithLayoutRole_fromContext___block_invoke;
  v13[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
  v13[4] = role;
  v7 = [v6 bs_firstObjectPassingTest:v13];
  v8 = [v7 objectForKey:*MEMORY[0x277D67568]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"none";
  }

  v11 = v10;

  return v10;
}

BOOL __78__SBDoNotDisturbMetric__bundleIdentifierForElementWithLayoutRole_fromContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x277D67580]];
  v4 = [v3 integerValue] == *(a1 + 32);

  return v4;
}

@end