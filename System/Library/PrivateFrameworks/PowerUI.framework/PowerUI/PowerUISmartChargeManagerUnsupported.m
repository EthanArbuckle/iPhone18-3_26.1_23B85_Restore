@interface PowerUISmartChargeManagerUnsupported
+ (id)manager;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (PowerUISmartChargeManagerUnsupported)init;
- (void)client:(id)a3 getMCLLimitWithHandler:(id)a4;
- (void)client:(id)a3 setDEoCState:(unint64_t)a4 withHandler:(id)a5;
- (void)client:(id)a3 setMCLLimit:(unsigned __int8)a4 withHandler:(id)a5;
- (void)client:(id)a3 setMCMState:(unint64_t)a4 withHandler:(id)a5;
- (void)client:(id)a3 setState:(unint64_t)a4 withHandler:(id)a5;
- (void)fullChargeDeadlineWithHandler:(id)a3;
- (void)isMCMCurrentlyEnabledWithHandler:(id)a3;
- (void)isSmartChargingCurrentlyEnabledWithHandler:(id)a3;
- (void)legacy_isOBCEngagedWithHandler:(id)a3;
- (void)shouldMCMBeDisplayedWithHandler:(id)a3;
- (void)simulateCurrentOutputAsOfDate:(id)a3 overrideAllSignals:(BOOL)a4 withHandler:(id)a5;
- (void)smartChargingUIStateWithHandler:(id)a3;
- (void)tmpDisableMCLViaClient:(id)a3 withHandler:(id)a4;
@end

@implementation PowerUISmartChargeManagerUnsupported

- (PowerUISmartChargeManagerUnsupported)init
{
  v7.receiver = self;
  v7.super_class = PowerUISmartChargeManagerUnsupported;
  v2 = [(PowerUISmartChargeManagerUnsupported *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.powerui.smartChargeManager"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
    v5 = *MEMORY[0x277D86238];
    xpc_activity_register("com.apple.poweruiagent.reportAnalyticsRepeating", *MEMORY[0x277D86238], &__block_literal_global_2721);
    xpc_activity_register("com.apple.poweruiagent.runOnBoot", v5, &__block_literal_global_2723);
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x277CCAE90];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_282D598A0];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  [v7 setClasses:v14 forSelector:sel_statusWithHandler_ argumentIndex:0 ofReply:1];

  [v6 setExportedInterface:v7];
  [v6 setExportedObject:self];
  [v6 resume];

  return 1;
}

+ (id)manager
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)client:(id)a3 setState:(unint64_t)a4 withHandler:(id)a5
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = a5;
  v8 = [v6 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a5 + 2))(v7, 0, v8);
}

- (void)fullChargeDeadlineWithHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)legacy_isOBCEngagedWithHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a3 + 2))(v5, 0, 0, 0, v6);
}

- (void)smartChargingUIStateWithHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a3 + 2))(v5, 1, 100, 0, v6);
}

- (void)isSmartChargingCurrentlyEnabledWithHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)simulateCurrentOutputAsOfDate:(id)a3 overrideAllSignals:(BOOL)a4 withHandler:(id)a5
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a5;
  v9 = [v6 distantPast];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a5 + 2))(v7, v9, v8);
}

- (void)client:(id)a3 setMCMState:(unint64_t)a4 withHandler:(id)a5
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = a5;
  v8 = [v6 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a5 + 2))(v7, 0, v8);
}

- (void)isMCMCurrentlyEnabledWithHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a3 + 2))(v5, 3, v6);
}

- (void)shouldMCMBeDisplayedWithHandler:(id)a3
{
  v4 = MEMORY[0x277CCA9B8];
  v5 = a3;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a3 + 2))(v5, 0, v6);
}

- (void)client:(id)a3 setDEoCState:(unint64_t)a4 withHandler:(id)a5
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = a5;
  v8 = [v6 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a5 + 2))(v7, 0, v8);
}

- (void)client:(id)a3 setMCLLimit:(unsigned __int8)a4 withHandler:(id)a5
{
  v6 = MEMORY[0x277CCA9B8];
  v7 = a5;
  v8 = [v6 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a5 + 2))(v7, 0, v8);
}

- (void)client:(id)a3 getMCLLimitWithHandler:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a4 + 2))(v6, 0, v7);
}

- (void)tmpDisableMCLViaClient:(id)a3 withHandler:(id)a4
{
  v5 = MEMORY[0x277CCA9B8];
  v6 = a4;
  v7 = [v5 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(a4 + 2))(v6, 0, v7);
}

@end