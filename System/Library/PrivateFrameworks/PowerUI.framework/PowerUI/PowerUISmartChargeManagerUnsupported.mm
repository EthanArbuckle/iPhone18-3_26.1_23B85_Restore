@interface PowerUISmartChargeManagerUnsupported
+ (id)manager;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (PowerUISmartChargeManagerUnsupported)init;
- (void)client:(id)client getMCLLimitWithHandler:(id)handler;
- (void)client:(id)client setDEoCState:(unint64_t)state withHandler:(id)handler;
- (void)client:(id)client setMCLLimit:(unsigned __int8)limit withHandler:(id)handler;
- (void)client:(id)client setMCMState:(unint64_t)state withHandler:(id)handler;
- (void)client:(id)client setState:(unint64_t)state withHandler:(id)handler;
- (void)fullChargeDeadlineWithHandler:(id)handler;
- (void)isMCMCurrentlyEnabledWithHandler:(id)handler;
- (void)isSmartChargingCurrentlyEnabledWithHandler:(id)handler;
- (void)legacy_isOBCEngagedWithHandler:(id)handler;
- (void)shouldMCMBeDisplayedWithHandler:(id)handler;
- (void)simulateCurrentOutputAsOfDate:(id)date overrideAllSignals:(BOOL)signals withHandler:(id)handler;
- (void)smartChargingUIStateWithHandler:(id)handler;
- (void)tmpDisableMCLViaClient:(id)client withHandler:(id)handler;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = MEMORY[0x277CCAE90];
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&unk_282D598A0];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v8 setWithObjects:{v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  [v7 setClasses:v14 forSelector:sel_statusWithHandler_ argumentIndex:0 ofReply:1];

  [connectionCopy setExportedInterface:v7];
  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

+ (id)manager
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)client:(id)client setState:(unint64_t)state withHandler:(id)handler
{
  v6 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v8 = [v6 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)fullChargeDeadlineWithHandler:(id)handler
{
  v4 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)legacy_isOBCEngagedWithHandler:(id)handler
{
  v4 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, 0, 0, v6);
}

- (void)smartChargingUIStateWithHandler:(id)handler
{
  v4 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 1, 100, 0, v6);
}

- (void)isSmartChargingCurrentlyEnabledWithHandler:(id)handler
{
  v4 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)simulateCurrentOutputAsOfDate:(id)date overrideAllSignals:(BOOL)signals withHandler:(id)handler
{
  v6 = MEMORY[0x277CBEAA8];
  handlerCopy = handler;
  distantPast = [v6 distantPast];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, distantPast, v8);
}

- (void)client:(id)client setMCMState:(unint64_t)state withHandler:(id)handler
{
  v6 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v8 = [v6 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)isMCMCurrentlyEnabledWithHandler:(id)handler
{
  v4 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 3, v6);
}

- (void)shouldMCMBeDisplayedWithHandler:(id)handler
{
  v4 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v6 = [v4 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v6);
}

- (void)client:(id)client setDEoCState:(unint64_t)state withHandler:(id)handler
{
  v6 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v8 = [v6 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)client:(id)client setMCLLimit:(unsigned __int8)limit withHandler:(id)handler
{
  v6 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v8 = [v6 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v8);
}

- (void)client:(id)client getMCLLimitWithHandler:(id)handler
{
  v5 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v7 = [v5 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v7);
}

- (void)tmpDisableMCLViaClient:(id)client withHandler:(id)handler
{
  v5 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v7 = [v5 errorWithDomain:@"PowerUISmartChargingErrorDomain" code:4 userInfo:0];
  (*(handler + 2))(handlerCopy, 0, v7);
}

@end