@interface PowerUISmartChargeClientAudioAccessories
+ (id)remoteInterface;
- (BOOL)connectAndDisableOBCforDevice:(id)device withError:(id *)error;
- (BOOL)setState:(unint64_t)state forDevice:(id)device withError:(id *)error;
- (BOOL)updateOBCDeadline:(id)deadline forDevice:(id)device withError:(id *)error;
- (PowerUISmartChargeClientAudioAccessories)initWithClientName:(id)name;
- (id)fullChargeDeadlineForDevice:(id)device withError:(id *)error;
- (id)getAvailableDevices;
- (id)getStatusForDevice:(id)device;
- (id)lastUsedLeewayWithError:(id *)error;
- (id)unfilteredDeadlineForDevice:(id)device withError:(id *)error;
- (unint64_t)isSmartChargingCurrentlyEnabledForDevice:(id)device withError:(id *)error;
- (unint64_t)lastActionForDevice:(id)device;
- (void)clearLastActionForDevice:(id)device;
- (void)connectAndDisableOBCforDevice:(id)device withHandler:(id)handler;
- (void)dealloc;
- (void)deleteRecordsForDevice:(id)device;
- (void)disableSmartChargingForDevice:(id)device withHandler:(id)handler;
- (void)enableSmartChargingForDevice:(id)device withHandler:(id)handler;
- (void)fakeConnectionForDevice:(id)device;
- (void)fullChargeDeadlineForDevice:(id)device withHandler:(id)handler;
- (void)isSmartChargingCurrentlyEnabledForDevice:(id)device withHandler:(id)handler;
- (void)startMockingBluetoothForFakeDevice:(id)device;
- (void)stopMockingBluetooth;
- (void)temporarilyDisableSmartChargingForDevice:(id)device withHandler:(id)handler;
- (void)temporarilyEnableChargingForDevice:(id)device withHandler:(id)handler;
- (void)timeSeriesForDevice:(id)device;
- (void)unfilteredDeadlineForDevice:(id)device withHandler:(id)handler;
- (void)updateOBCDeadline:(id)deadline forDevice:(id)device withHandler:(id)handler;
@end

@implementation PowerUISmartChargeClientAudioAccessories

+ (id)remoteInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282D58AB0];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_getAvailableDevicesWithHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_getStatusForDevice_withHandler_ argumentIndex:0 ofReply:1];

  v9 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v9 forSelector:sel_getStatusForDevice_withHandler_ argumentIndex:0 ofReply:0];

  return v2;
}

- (PowerUISmartChargeClientAudioAccessories)initWithClientName:(id)name
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PowerUISmartChargeClientAudioAccessories;
  v6 = [(PowerUISmartChargeClientAudioAccessories *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientName, name);
    v8 = os_log_create("com.apple.powerui.smartcharging.AudioAccessory", [nameCopy UTF8String]);
    log = v7->_log;
    v7->_log = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.powerui.audioAccessorySmartChargeManager" options:4096];
    connection = v7->_connection;
    v7->_connection = v10;

    v12 = v7->_connection;
    remoteInterface = [objc_opt_class() remoteInterface];
    [(NSXPCConnection *)v12 setRemoteObjectInterface:remoteInterface];

    [(NSXPCConnection *)v7->_connection resume];
  }

  return v7;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = PowerUISmartChargeClientAudioAccessories;
  [(PowerUISmartChargeClientAudioAccessories *)&v3 dealloc];
}

- (void)connectAndDisableOBCforDevice:(id)device withHandler:(id)handler
{
  connection = self->_connection;
  handlerCopy = handler;
  deviceCopy = device;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy client:self->_clientName connectAndDisableOBCforDevice:deviceCopy withHandler:handlerCopy];
}

- (BOOL)connectAndDisableOBCforDevice:(id)device withError:(id *)error
{
  deviceCopy = device;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __84__PowerUISmartChargeClientAudioAccessories_connectAndDisableOBCforDevice_withError___block_invoke;
  v13[3] = &unk_2782D4678;
  v13[4] = &v18;
  v13[5] = &v14;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  clientName = self->_clientName;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__PowerUISmartChargeClientAudioAccessories_connectAndDisableOBCforDevice_withError___block_invoke_2;
  v12[3] = &unk_2782D46A0;
  v12[4] = &v18;
  v12[5] = &v14;
  [v8 client:clientName connectAndDisableOBCforDevice:deviceCopy withHandler:v12];

  if (error)
  {
    *error = v19[5];
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10;
}

void __84__PowerUISmartChargeClientAudioAccessories_connectAndDisableOBCforDevice_withError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __84__PowerUISmartChargeClientAudioAccessories_connectAndDisableOBCforDevice_withError___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (BOOL)setState:(unint64_t)state forDevice:(id)device withError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    clientName = self->_clientName;
    v11 = MEMORY[0x277CCABB0];
    v12 = log;
    v13 = [v11 numberWithUnsignedInteger:state];
    *buf = 138412546;
    *&buf[4] = clientName;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Client '%@'requests state '%@'.", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v27 = __Block_byref_object_copy__5;
  v28 = __Block_byref_object_dispose__5;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  connection = self->_connection;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __73__PowerUISmartChargeClientAudioAccessories_setState_forDevice_withError___block_invoke;
  v21[3] = &unk_2782D4678;
  v21[4] = buf;
  v21[5] = &v22;
  v15 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v21];
  v16 = self->_clientName;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__PowerUISmartChargeClientAudioAccessories_setState_forDevice_withError___block_invoke_2;
  v20[3] = &unk_2782D46A0;
  v20[4] = buf;
  v20[5] = &v22;
  [v15 client:v16 setState:state forDevice:deviceCopy withHandler:v20];

  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  v17 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __73__PowerUISmartChargeClientAudioAccessories_setState_forDevice_withError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __73__PowerUISmartChargeClientAudioAccessories_setState_forDevice_withError___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (unint64_t)isSmartChargingCurrentlyEnabledForDevice:(id)device withError:(id *)error
{
  deviceCopy = device;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5;
  v21 = __Block_byref_object_dispose__5;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__PowerUISmartChargeClientAudioAccessories_isSmartChargingCurrentlyEnabledForDevice_withError___block_invoke;
  v12[3] = &unk_2782D40A0;
  v12[4] = &v17;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__PowerUISmartChargeClientAudioAccessories_isSmartChargingCurrentlyEnabledForDevice_withError___block_invoke_2;
  v11[3] = &unk_2782D4498;
  v11[4] = &v17;
  v11[5] = &v13;
  [v8 isSmartChargingCurrentlyEnabledForDevice:deviceCopy withHandler:v11];

  if (error)
  {
    *error = v18[5];
  }

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __95__PowerUISmartChargeClientAudioAccessories_isSmartChargingCurrentlyEnabledForDevice_withError___block_invoke_2(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isSmartChargingCurrentlyEnabledForDevice:(id)device withHandler:(id)handler
{
  connection = self->_connection;
  handlerCopy = handler;
  deviceCopy = device;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy isSmartChargingCurrentlyEnabledForDevice:deviceCopy withHandler:handlerCopy];
}

- (void)disableSmartChargingForDevice:(id)device withHandler:(id)handler
{
  connection = self->_connection;
  handlerCopy = handler;
  deviceCopy = device;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy client:self->_clientName setState:0 forDevice:deviceCopy withHandler:handlerCopy];
}

- (void)temporarilyDisableSmartChargingForDevice:(id)device withHandler:(id)handler
{
  connection = self->_connection;
  handlerCopy = handler;
  deviceCopy = device;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy client:self->_clientName setState:3 forDevice:deviceCopy withHandler:handlerCopy];
}

- (void)enableSmartChargingForDevice:(id)device withHandler:(id)handler
{
  connection = self->_connection;
  handlerCopy = handler;
  deviceCopy = device;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy client:self->_clientName setState:1 forDevice:deviceCopy withHandler:handlerCopy];
}

- (void)temporarilyEnableChargingForDevice:(id)device withHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    clientName = self->_clientName;
    v12 = 138412290;
    v13 = clientName;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Client '%@'requests temporarilyEnableChargingWithHandler.", &v12, 0xCu);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy client:self->_clientName setState:2 forDevice:deviceCopy withHandler:handlerCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)fullChargeDeadlineForDevice:(id)device withError:(id *)error
{
  deviceCopy = device;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__PowerUISmartChargeClientAudioAccessories_fullChargeDeadlineForDevice_withError___block_invoke;
  v12[3] = &unk_2782D40A0;
  v12[4] = &v13;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__PowerUISmartChargeClientAudioAccessories_fullChargeDeadlineForDevice_withError___block_invoke_2;
  v11[3] = &unk_2782D4588;
  v11[4] = &v19;
  v11[5] = &v13;
  [v8 fullChargeDeadlineForDevice:deviceCopy withHandler:v11];

  if (error)
  {
    *error = v14[5];
  }

  v9 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __82__PowerUISmartChargeClientAudioAccessories_fullChargeDeadlineForDevice_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fullChargeDeadlineForDevice:(id)device withHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__PowerUISmartChargeClientAudioAccessories_fullChargeDeadlineForDevice_withHandler___block_invoke;
  v11[3] = &unk_2782D45B0;
  v12 = handlerCopy;
  v8 = handlerCopy;
  deviceCopy = device;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  [v10 fullChargeDeadlineForDevice:deviceCopy withHandler:v8];
}

- (id)unfilteredDeadlineForDevice:(id)device withError:(id *)error
{
  deviceCopy = device;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__5;
  v23 = __Block_byref_object_dispose__5;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  connection = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__PowerUISmartChargeClientAudioAccessories_unfilteredDeadlineForDevice_withError___block_invoke;
  v12[3] = &unk_2782D40A0;
  v12[4] = &v13;
  v8 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__PowerUISmartChargeClientAudioAccessories_unfilteredDeadlineForDevice_withError___block_invoke_2;
  v11[3] = &unk_2782D4588;
  v11[4] = &v19;
  v11[5] = &v13;
  [v8 unfilteredDeadlineForDevice:deviceCopy withHandler:v11];

  if (error)
  {
    *error = v14[5];
  }

  v9 = v20[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __82__PowerUISmartChargeClientAudioAccessories_unfilteredDeadlineForDevice_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)unfilteredDeadlineForDevice:(id)device withHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__PowerUISmartChargeClientAudioAccessories_unfilteredDeadlineForDevice_withHandler___block_invoke;
  v11[3] = &unk_2782D45B0;
  v12 = handlerCopy;
  v8 = handlerCopy;
  deviceCopy = device;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];
  [v10 unfilteredDeadlineForDevice:deviceCopy withHandler:v8];
}

- (BOOL)updateOBCDeadline:(id)deadline forDevice:(id)device withError:(id *)error
{
  deadlineCopy = deadline;
  deviceCopy = device;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__5;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  connection = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__PowerUISmartChargeClientAudioAccessories_updateOBCDeadline_forDevice_withError___block_invoke;
  v16[3] = &unk_2782D4678;
  v16[4] = &v21;
  v16[5] = &v17;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v16];
  clientName = self->_clientName;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __82__PowerUISmartChargeClientAudioAccessories_updateOBCDeadline_forDevice_withError___block_invoke_2;
  v15[3] = &unk_2782D46A0;
  v15[4] = &v21;
  v15[5] = &v17;
  [v11 client:clientName updateOBCDeadline:deadlineCopy forDevice:deviceCopy withHandler:v15];

  if (error)
  {
    *error = v22[5];
  }

  v13 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v13;
}

void __82__PowerUISmartChargeClientAudioAccessories_updateOBCDeadline_forDevice_withError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __82__PowerUISmartChargeClientAudioAccessories_updateOBCDeadline_forDevice_withError___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)updateOBCDeadline:(id)deadline forDevice:(id)device withHandler:(id)handler
{
  connection = self->_connection;
  handlerCopy = handler;
  deviceCopy = device;
  deadlineCopy = deadline;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy updateOBCDeadline:deadlineCopy forDevice:deviceCopy withHandler:handlerCopy];
}

void __85__PowerUISmartChargeClientAudioAccessories_engageUntil_forDevice_overrideAllSignals___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "%@ Error: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __85__PowerUISmartChargeClientAudioAccessories_engageUntil_forDevice_overrideAllSignals___block_invoke_107(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Unable to send custom timestamp", v7, 2u);
    }
  }
}

- (id)getAvailableDevices
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = MEMORY[0x277CBEBF8];
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__PowerUISmartChargeClientAudioAccessories_getAvailableDevices__block_invoke;
  v8[3] = &unk_2782D4510;
  v8[4] = self;
  v8[5] = a2;
  v4 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PowerUISmartChargeClientAudioAccessories_getAvailableDevices__block_invoke_108;
  v7[3] = &unk_2782D49F0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 getAvailableDevicesWithHandler:v7];

  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v5;
}

void __63__PowerUISmartChargeClientAudioAccessories_getAvailableDevices__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __63__PowerUISmartChargeClientAudioAccessories_getAvailableDevices__block_invoke_108(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = v4;
    v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "%@ devices about to be returned from client", &v11, 0xCu);
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;

  v10 = *MEMORY[0x277D85DE8];
}

- (id)getStatusForDevice:(id)device
{
  deviceCopy = device;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = MEMORY[0x277CBEC10];
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__PowerUISmartChargeClientAudioAccessories_getStatusForDevice___block_invoke;
  v11[3] = &unk_2782D4510;
  v11[4] = self;
  v11[5] = a2;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PowerUISmartChargeClientAudioAccessories_getStatusForDevice___block_invoke_110;
  v10[3] = &unk_2782D4538;
  v10[4] = &v12;
  [v7 getStatusForDevice:deviceCopy withHandler:v10];

  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __63__PowerUISmartChargeClientAudioAccessories_getStatusForDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (unint64_t)lastActionForDevice:(id)device
{
  deviceCopy = device;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__PowerUISmartChargeClientAudioAccessories_lastActionForDevice___block_invoke;
  v11[3] = &unk_2782D4510;
  v11[4] = self;
  v11[5] = a2;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PowerUISmartChargeClientAudioAccessories_lastActionForDevice___block_invoke_112;
  v10[3] = &unk_2782D4A18;
  v10[4] = &v12;
  [v7 lastActionForDevice:deviceCopy withHandler:v10];

  v8 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __64__PowerUISmartChargeClientAudioAccessories_lastActionForDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clearLastActionForDevice:(id)device
{
  connection = self->_connection;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __69__PowerUISmartChargeClientAudioAccessories_clearLastActionForDevice___block_invoke;
  v9 = &unk_2782D4510;
  selfCopy = self;
  v11 = a2;
  deviceCopy = device;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&v6];
  [v5 clearLastActionForDevice:{deviceCopy, v6, v7, v8, v9, selfCopy, v11}];
}

void __69__PowerUISmartChargeClientAudioAccessories_clearLastActionForDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startMockingBluetoothForFakeDevice:(id)device
{
  connection = self->_connection;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __79__PowerUISmartChargeClientAudioAccessories_startMockingBluetoothForFakeDevice___block_invoke;
  v9 = &unk_2782D4510;
  selfCopy = self;
  v11 = a2;
  deviceCopy = device;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&v6];
  [v5 startMockingBluetoothForFakeDevice:{deviceCopy, v6, v7, v8, v9, selfCopy, v11}];
}

void __79__PowerUISmartChargeClientAudioAccessories_startMockingBluetoothForFakeDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopMockingBluetooth
{
  connection = self->_connection;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__PowerUISmartChargeClientAudioAccessories_stopMockingBluetooth__block_invoke;
  v4[3] = &unk_2782D4510;
  v4[4] = self;
  v4[5] = a2;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v4];
  [v3 stopMockingBluetooth];
}

void __64__PowerUISmartChargeClientAudioAccessories_stopMockingBluetooth__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deleteRecordsForDevice:(id)device
{
  v5 = [MEMORY[0x277CBEA60] arrayWithObject:device];
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__PowerUISmartChargeClientAudioAccessories_deleteRecordsForDevice___block_invoke;
  v8[3] = &unk_2782D4510;
  v8[4] = self;
  v8[5] = a2;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 deleteRecordsForDevices:v5];
}

void __67__PowerUISmartChargeClientAudioAccessories_deleteRecordsForDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)fakeConnectionForDevice:(id)device
{
  connection = self->_connection;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __68__PowerUISmartChargeClientAudioAccessories_fakeConnectionForDevice___block_invoke;
  v9 = &unk_2782D4510;
  selfCopy = self;
  v11 = a2;
  deviceCopy = device;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&v6];
  [v5 fakeConnectionForDevice:{deviceCopy, v6, v7, v8, v9, selfCopy, v11}];
}

void __68__PowerUISmartChargeClientAudioAccessories_fakeConnectionForDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __70__PowerUISmartChargeClientAudioAccessories_setFakeConnectionStatusTo___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)lastUsedLeewayWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__5;
  v22 = __Block_byref_object_dispose__5;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  connection = self->_connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__PowerUISmartChargeClientAudioAccessories_lastUsedLeewayWithError___block_invoke;
  v11[3] = &unk_2782D4510;
  v11[4] = self;
  v11[5] = a2;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__PowerUISmartChargeClientAudioAccessories_lastUsedLeewayWithError___block_invoke_114;
  v10[3] = &unk_2782D47E0;
  v10[4] = self;
  v10[5] = &v18;
  v10[6] = &v12;
  v10[7] = a2;
  [v7 currentLeewayWithHandler:v10];

  if (error)
  {
    *error = v13[5];
  }

  v8 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);

  return v8;
}

void __68__PowerUISmartChargeClientAudioAccessories_lastUsedLeewayWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__PowerUISmartChargeClientAudioAccessories_lastUsedLeewayWithError___block_invoke_cold_1(a1, v4);
  }
}

void __68__PowerUISmartChargeClientAudioAccessories_lastUsedLeewayWithError___block_invoke_114(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  if (*(*(a1[6] + 8) + 40))
  {
    v8 = *(a1[4] + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __68__PowerUISmartChargeClientAudioAccessories_lastUsedLeewayWithError___block_invoke_114_cold_1(a1, v8);
    }
  }
}

- (void)timeSeriesForDevice:(id)device
{
  connection = self->_connection;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __64__PowerUISmartChargeClientAudioAccessories_timeSeriesForDevice___block_invoke;
  v9 = &unk_2782D4510;
  selfCopy = self;
  v11 = a2;
  deviceCopy = device;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:&v6];
  [v5 timeSeriesForDevice:{deviceCopy, v6, v7, v8, v9, selfCopy, v11}];
}

void __64__PowerUISmartChargeClientAudioAccessories_timeSeriesForDevice___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 clientName];
    v8 = NSStringFromSelector(*(a1 + 40));
    v10 = 138412802;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_21B766000, v6, OS_LOG_TYPE_DEFAULT, "Client '%@' received error (%@): %@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __68__PowerUISmartChargeClientAudioAccessories_lastUsedLeewayWithError___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3(&dword_21B766000, v5, v6, "%@ Error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __68__PowerUISmartChargeClientAudioAccessories_lastUsedLeewayWithError___block_invoke_114_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = a2;
  v4 = NSStringFromSelector(v2);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_3(&dword_21B766000, v5, v6, "%@ Error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

@end