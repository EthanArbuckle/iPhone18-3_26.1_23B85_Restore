@interface SUCSScheduler
+ (BOOL)_callInProgress;
+ (BOOL)_getBoolForKeyPath:(id)a3;
+ (BOOL)_hasNetworkConnection;
+ (id)batteryLevelPredicate:(id)a3;
+ (int)_batteryLevel;
+ (int)_getIntForKeyPath:(id)a3;
- (SUCSScheduler)init;
- (void)dealloc;
- (void)registerInstallAlertConditionsWithHandler:(id)a3;
- (void)unregisterInstallationAlertAction;
@end

@implementation SUCSScheduler

- (SUCSScheduler)init
{
  v7.receiver = self;
  v7.super_class = SUCSScheduler;
  v2 = [(SUCSScheduler *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CFE318] userContext];
    context = v2->_context;
    v2->_context = v3;

    registration = v2->_registration;
    v2->_registration = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(SUCSScheduler *)self unregisterInstallationAlertAction];
  v3.receiver = self;
  v3.super_class = SUCSScheduler;
  [(SUCSScheduler *)&v3 dealloc];
}

- (void)registerInstallAlertConditionsWithHandler:(id)a3
{
  v24[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CFE360];
  v6 = [SUCSScheduler batteryLevelPredicate:&unk_287B6F7C0];
  v24[0] = v6;
  v7 = [SUCSScheduler phoneCallPredicate:0];
  v24[1] = v7;
  v8 = [SUCSScheduler networkPredicate:1];
  v24[2] = v8;
  v9 = [SUCSScheduler carplayPredicate:0];
  v24[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  v11 = [v5 andPredicateWithSubpredicates:v10];

  v12 = [MEMORY[0x277CFE318] userContext];
  LODWORD(v7) = [v12 evaluatePredicate:v11];

  if (v7)
  {
    SULogInfo(@"Installation alert predicate conditions met", v13, v14, v15, v16, v17, v18, v19, v23);
    v4[2](v4, @"com.apple.softwareupdateservicesd.installAlert");
  }

  else
  {
    v20 = [MEMORY[0x277CFE350] localWakingRegistrationWithIdentifier:@"com.apple.softwareupdateservicesd.installAlert" contextualPredicate:v11 callback:v4];
    registration = self->_registration;
    self->_registration = v20;

    [(_CDContext *)self->_context registerCallback:self->_registration];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)unregisterInstallationAlertAction
{
  if (self->_registration)
  {
    context = self->_context;
    if (context)
    {
      [(_CDContext *)context deregisterCallback:?];
      registration = self->_registration;
    }

    self->_registration = 0;

    MEMORY[0x2821F9730]();
  }
}

+ (id)batteryLevelPredicate:(id)a3
{
  v3 = MEMORY[0x277CFE360];
  v4 = MEMORY[0x277CFE338];
  v5 = a3;
  v6 = [v4 keyPathForBatteryLevel];
  v17 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  v7 = [v3 predicateForKeyPath:v6 withFormat:@"self.%@.value >= %@"];

  if (v7)
  {
    v15 = v7;
  }

  else
  {
    SULogInfo(@"Failed to create battery level _CDContextualPredicate", v8, v9, v10, v11, v12, v13, v14, v17);
  }

  return v7;
}

+ (BOOL)_getBoolForKeyPath:(id)a3
{
  v3 = MEMORY[0x277CFE318];
  v4 = a3;
  v5 = [v3 userContext];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOBYTE(v5) = [v6 BOOLValue];
  return v5;
}

+ (int)_getIntForKeyPath:(id)a3
{
  v3 = MEMORY[0x277CFE318];
  v4 = a3;
  v5 = [v3 userContext];
  v6 = [v5 objectForKeyedSubscript:v4];

  LODWORD(v5) = [v6 intValue];
  return v5;
}

+ (int)_batteryLevel
{
  v3 = [MEMORY[0x277CFE338] keyPathForBatteryLevel];
  LODWORD(a1) = [a1 _getIntForKeyPath:v3];

  return a1;
}

+ (BOOL)_callInProgress
{
  v3 = [MEMORY[0x277CFE338] keyPathForCallInProgressStatus];
  LOBYTE(a1) = [a1 _getBoolForKeyPath:v3];

  return a1;
}

+ (BOOL)_hasNetworkConnection
{
  v3 = [MEMORY[0x277CFE338] keyPathForWiFiConnectionQuality];
  v4 = [a1 _getIntForKeyPath:v3];

  v5 = [MEMORY[0x277CFE338] keyPathForCellConnectionQuality];
  LODWORD(a1) = [a1 _getIntForKeyPath:v5];

  return (v4 & a1 & 0x80000000) == 0;
}

@end