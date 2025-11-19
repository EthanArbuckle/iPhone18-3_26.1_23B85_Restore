@interface PLUserActiveStateService
+ (id)entryEventPointDefinitionState;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (NSDate)lastUserInactiveTime;
- (PLUserActiveStateService)init;
- (double)getUserInactiveMinIntervalCA;
- (id)getLastSystemSleepDate;
- (void)initOperatorDependancies;
- (void)setLastUserInactiveTime:(id)a3;
@end

@implementation PLUserActiveStateService

uint64_t __52__PLUserActiveStateService_initOperatorDependancies__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"entry"];
  v4 = [v3 objectForKeyedSubscript:@"ExternalConnected"];
  v5 = [v4 BOOLValue];

  v6 = *(a1 + 32);

  return [v6 handlePluggedInStateUpdate:v5];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLUserActiveStateService;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"State";
  v2 = +[PLUserActiveStateService entryEventPointDefinitionState];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventPointDefinitionState
{
  v22[2] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D3F4E8];
  v19 = *MEMORY[0x277D3F568];
  v20 = &unk_282C1BB18;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v22[0] = v16;
  v21[1] = *MEMORY[0x277D3F540];
  v17[0] = @"UserInactiveTime";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_RealFormat];
  v18[0] = v14;
  v17[1] = @"TimePluggedInDuringInactiveState";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_RealFormat];
  v18[1] = v3;
  v17[2] = @"TimeSinceLastUnplugDuringInactiveState";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_RealFormat];
  v18[2] = v5;
  v17[3] = @"DidSleep";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v18[3] = v7;
  v17[4] = @"BatteryTableID";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v18[4] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v22[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (PLUserActiveStateService)init
{
  if ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLUserActiveStateService;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  if ([MEMORY[0x277D3F258] deviceRebooted] || IOPMUserIsActive())
  {
    [(PLUserActiveStateService *)self setLastUserInactiveTime:0];
  }

  else
  {
    v7 = [(PLUserActiveStateService *)self lastUserInactiveTime];

    if (v7 && IOPSDrawingUnlimitedPower())
    {
      v8 = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLUserActiveStateService *)self setLastPluggedInTime:v8];

      [(PLUserActiveStateService *)self setPluggedInState:MEMORY[0x277CBEC38]];
    }
  }

  v3 = objc_alloc(MEMORY[0x277D3F1A8]);
  v4 = +[PLEventBackwardBatteryEntry entryKey];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__PLUserActiveStateService_initOperatorDependancies__block_invoke;
  v9[3] = &unk_2782597E8;
  v9[4] = self;
  v5 = [v3 initWithOperator:self forEntryKey:v4 withBlock:v9];
  [(PLUserActiveStateService *)self setBatteryNotification:v5];

  v6 = [(PLOperator *)self workQueue];
  [(PLUserActiveStateService *)self setUserActiveNotificationHandle:IOPMScheduleUserActiveChangedNotification(), MEMORY[0x277D85DD0], 3221225472, __52__PLUserActiveStateService_initOperatorDependancies__block_invoke_2, &unk_278259D80, self];
}

- (id)getLastSystemSleepDate
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLSleepWakeAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"PowerState"];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ IS NOT NULL", @"KernelSleepDate"];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ = %hd", @"Event", 4];
  v6 = [(PLOperator *)self storage];
  v12[0] = v4;
  v12[1] = v5;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v8 = [v6 lastEntryForKey:v3 withFilters:v7];

  if (v8)
  {
    v9 = [v8 entryDate];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSDate)lastUserInactiveTime
{
  [MEMORY[0x277D3F180] doubleForKey:@"PLUserActiveStateLastUserInactiveTimestamp" ifNotSet:0.0];
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }

  return v3;
}

- (void)setLastUserInactiveTime:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSince1970];
    v4 = MEMORY[0x277D3F180];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [v4 setObject:v6 forKey:@"PLUserActiveStateLastUserInactiveTimestamp" saveToDisk:1];
  }

  else
  {
    v5 = MEMORY[0x277D3F180];

    [v5 setObject:? forKey:? saveToDisk:?];
  }
}

- (double)getUserInactiveMinIntervalCA
{
  if (qword_2811F3DD8 != -1)
  {
    dispatch_once(&qword_2811F3DD8, &__block_literal_global_87);
  }

  return *&qword_2811F3DE0;
}

uint64_t __56__PLUserActiveStateService_getUserInactiveMinIntervalCA__block_invoke()
{
  result = [MEMORY[0x277D3F180] doubleForKey:@"userInactiveMinIntervalCA" ifNotSet:43200.0];
  qword_2811F3DE0 = v1;
  return result;
}

@end