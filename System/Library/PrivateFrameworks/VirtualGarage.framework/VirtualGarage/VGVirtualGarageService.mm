@interface VGVirtualGarageService
+ (id)sharedService;
- (NSXPCConnection)connection;
- (VGVirtualGarageService)init;
- (id)messageTargetWithErrorReply:(id)reply;
- (void)_clearActiveVehicleIdentifierIfNeeded:(id)needed;
- (void)_closeConnection;
- (void)_openConnection;
- (void)closeForClient:(id)client;
- (void)openForClient:(id)client;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles;
- (void)virtualGarageAddVehicle:(id)vehicle;
- (void)virtualGarageDidUpdate:(id)update;
- (void)virtualGarageEndContinuousUpdates;
- (void)virtualGarageForceFetchAllVehicles;
- (void)virtualGarageGetGarageWithReply:(id)reply;
- (void)virtualGarageGetLatestStateOfVehicleWithIdentifier:(id)identifier syncAcrossDevices:(BOOL)devices withReply:(id)reply;
- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)reply;
- (void)virtualGarageOnboardVehicle:(id)vehicle;
- (void)virtualGarageRemoveVehicle:(id)vehicle;
- (void)virtualGarageSaveVehicle:(id)vehicle;
- (void)virtualGarageSelectVehicle:(id)vehicle;
- (void)virtualGarageSetAssumesFullCharge:(BOOL)charge;
- (void)virtualGarageSetShouldUsePreferredNetworks:(BOOL)networks forVehicle:(id)vehicle;
- (void)virtualGarageStartContinuousUpdatesIfNeeded;
@end

@implementation VGVirtualGarageService

+ (id)sharedService
{
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, &__block_literal_global_65);
  }

  v3 = sharedService_sharedService;

  return v3;
}

uint64_t __39__VGVirtualGarageService_sharedService__block_invoke()
{
  sharedService_sharedService = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (VGVirtualGarageService)init
{
  v23.receiver = self;
  v23.super_class = VGVirtualGarageService;
  v2 = [(VGVirtualGarageService *)&v23 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.maps.virtualgarage.callbacks.%@.%p", objc_opt_class(), v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v6;

    v8 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:1];
    clients = v2->_clients;
    v2->_clients = v8;

    v10 = geo_isolater_create_with_format();
    clientsIsolater = v2->_clientsIsolater;
    v2->_clientsIsolater = v10;

    v12 = [objc_alloc(MEMORY[0x277D0EC08]) initWithProtocol:&unk_2880EA6A0 queue:{v2->_callbackQueue, v2}];
    observers = v2->_observers;
    v2->_observers = v12;

    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.maps.virtualgarage.service.%@.%p", objc_opt_class(), v2];
    uTF8String2 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String2, v16);
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v17;

    if (!+[VGVirtualGarageService canUseVirtualGarageXPCService])
    {
      v19 = +[VGVirtualGarageServer sharedServer];
      [v19 setObserver:v2];

      v20 = v2->_connectionQueue;
      v21 = +[VGVirtualGarageServer sharedServer];
      [v21 setObserverQueue:v20];
    }
  }

  return v2;
}

- (void)_openConnection
{
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "VGVirtualGarageService opening connection", buf, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.maps.virtualgarage.server" options:0];
  connection = self->_connection;
  self->_connection = v4;

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880E9098];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_virtualGarageGetListOfUnpairedVehiclesWithReply_ argumentIndex:0 ofReply:1];

  v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v10 forSelector:sel_virtualGarageGetListOfUnpairedVehiclesWithReply_ argumentIndex:1 ofReply:1];

  v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v11 forSelector:sel_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply_ argumentIndex:0 ofReply:0];

  v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v12 forSelector:sel_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply_ argumentIndex:0 ofReply:1];

  v13 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v13 forSelector:sel_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply_ argumentIndex:1 ofReply:1];

  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];
  v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880EA6A0];
  v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v15 forSelector:sel_virtualGarageDidUpdate_ argumentIndex:0 ofReply:0];

  v16 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v14 setClasses:v16 forSelector:sel_virtualGarage_didUpdateUnpairedVehicles_ argumentIndex:0 ofReply:0];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [v14 setClasses:v19 forSelector:sel_virtualGarage_didUpdateUnpairedVehicles_ argumentIndex:1 ofReply:0];

  [(NSXPCConnection *)self->_connection setExportedInterface:v14];
  [(NSXPCConnection *)self->_connection setExportedObject:self];
  [(NSXPCConnection *)self->_connection _setQueue:self->_connectionQueue];
  [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_2095];
  objc_initWeak(buf, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__VGVirtualGarageService__openConnection__block_invoke_63;
  v20[3] = &unk_279E26E88;
  objc_copyWeak(&v21, buf);
  [(NSXPCConnection *)self->_connection setInvalidationHandler:v20];
  [(NSXPCConnection *)self->_connection resume];
  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (NSXPCConnection)connection
{
  v20 = *MEMORY[0x277D85DE8];
  connection = self->_connection;
  if (!connection)
  {
    v6 = VGGetAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Connection should be open by now. Make sure to call openForClient:."];
      v10 = 136316162;
      v11 = "[VGVirtualGarageService connection]";
      v12 = 2080;
      v13 = "VGVirtualGarageService.m";
      v14 = 1024;
      v15 = 77;
      v16 = 2080;
      v17 = "_connection != nil";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v10, 0x30u);
    }

    if (_vg_isInternalInstall())
    {
      v8 = VGGetAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v10 = 138412290;
        v11 = callStackSymbols;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }

    connection = self->_connection;
    if (!connection)
    {
      [(VGVirtualGarageService *)self _openConnection];
      connection = self->_connection;
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return connection;
}

- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles
{
  v43 = *MEMORY[0x277D85DE8];
  garageCopy = garage;
  vehiclesCopy = vehicles;
  v8 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = vehiclesCopy;
    v10 = v9;
    if (v9)
    {
      if ([v9 count])
      {
        v30 = v8;
        selfCopy = self;
        v32 = garageCopy;
        v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v33 objects:buf count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v34;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v33 + 1) + 8 * i);
              if (v17)
              {
                v18 = MEMORY[0x277CCACA8];
                v19 = v17;
                v20 = [v18 stringWithFormat:@"%@<%p>", objc_opt_class(), v19];
              }

              else
              {
                v20 = @"<nil>";
              }

              [v11 addObject:v20];
            }

            v14 = [v12 countByEnumeratingWithState:&v33 objects:buf count:16];
          }

          while (v14);
        }

        v21 = [v12 componentsJoinedByString:{@", "}];
        v22 = MEMORY[0x277CCACA8];
        v23 = v12;
        v24 = [v22 stringWithFormat:@"%@<%p>", objc_opt_class(), v23];

        v25 = [v22 stringWithFormat:@"%@ [%@]", v24, v21];

        self = selfCopy;
        garageCopy = v32;
        v8 = v30;
      }

      else
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = v10;
        v28 = [v26 stringWithFormat:@"%@<%p>", objc_opt_class(), v27];

        v25 = [v26 stringWithFormat:@"%@ (empty)", v28];
      }
    }

    else
    {
      v25 = @"<nil>";
    }

    *buf = 136315650;
    v38 = "[VGVirtualGarageService virtualGarage:didUpdateUnpairedVehicles:]";
    v39 = 2112;
    v40 = garageCopy;
    v41 = 2112;
    v42 = v25;
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%s %@, %@", buf, 0x20u);
  }

  [(GEOObserverHashTable *)self->_observers virtualGarage:garageCopy didUpdateUnpairedVehicles:vehiclesCopy];
  v29 = *MEMORY[0x277D85DE8];
}

- (void)virtualGarageDidUpdate:(id)update
{
  v13 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[VGVirtualGarageService virtualGarageDidUpdate:]";
    v11 = 2112;
    v12 = updateCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", &v9, 0x16u);
  }

  selectedVehicle = [updateCopy selectedVehicle];
  identifier = [selectedVehicle identifier];
  [(VGVirtualGarageService *)self _clearActiveVehicleIdentifierIfNeeded:identifier];

  [(GEOObserverHashTable *)self->_observers virtualGarageDidUpdate:updateCopy];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)virtualGarageGetLatestStateOfVehicleWithIdentifier:(id)identifier syncAcrossDevices:(BOOL)devices withReply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  v10 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[VGVirtualGarageService virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]";
    v22 = 2112;
    v23 = identifierCopy;
    _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__VGVirtualGarageService_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke;
  v15[3] = &unk_279E26F98;
  objc_copyWeak(&v18, buf);
  v16 = identifierCopy;
  v17 = replyCopy;
  devicesCopy = devices;
  v12 = identifierCopy;
  v13 = replyCopy;
  dispatch_async(connectionQueue, v15);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
  v14 = *MEMORY[0x277D85DE8];
}

void __105__VGVirtualGarageService_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __105__VGVirtualGarageService_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_2;
  v4[3] = &unk_279E26EF8;
  v5 = *(a1 + 40);
  v3 = [WeakRetained messageTargetWithErrorReply:v4];
  [v3 virtualGarageGetLatestStateOfVehicleWithIdentifier:*(a1 + 32) syncAcrossDevices:*(a1 + 56) withReply:*(a1 + 40)];
}

- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[VGVirtualGarageService virtualGarageGetListOfUnpairedVehiclesWithReply:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__VGVirtualGarageService_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke;
  v9[3] = &unk_279E26F48;
  objc_copyWeak(&v11, buf);
  v10 = replyCopy;
  v7 = replyCopy;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __74__VGVirtualGarageService_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__VGVirtualGarageService_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke_2;
  v4[3] = &unk_279E26EF8;
  v5 = *(a1 + 32);
  v3 = [WeakRetained messageTargetWithErrorReply:v4];
  [v3 virtualGarageGetListOfUnpairedVehiclesWithReply:*(a1 + 32)];
}

- (void)virtualGarageForceFetchAllVehicles
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[VGVirtualGarageService virtualGarageForceFetchAllVehicles]";
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VGVirtualGarageService_virtualGarageForceFetchAllVehicles__block_invoke;
  block[3] = &unk_279E26E88;
  objc_copyWeak(&v7, buf);
  dispatch_async(connectionQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__VGVirtualGarageService_virtualGarageForceFetchAllVehicles__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained messageTargetWithErrorReply:0];
  [v1 virtualGarageForceFetchAllVehicles];
}

- (void)virtualGarageSetAssumesFullCharge:(BOOL)charge
{
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "virtualGarageSetAssumesFullCharge: is only supported on macOS", v4, 2u);
  }
}

- (void)virtualGarageEndContinuousUpdates
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[VGVirtualGarageService virtualGarageEndContinuousUpdates]";
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__VGVirtualGarageService_virtualGarageEndContinuousUpdates__block_invoke;
  block[3] = &unk_279E26E88;
  objc_copyWeak(&v7, buf);
  dispatch_async(connectionQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__VGVirtualGarageService_virtualGarageEndContinuousUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained messageTargetWithErrorReply:0];
  [v1 virtualGarageEndContinuousUpdates];
}

- (void)virtualGarageStartContinuousUpdatesIfNeeded
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[VGVirtualGarageService virtualGarageStartContinuousUpdatesIfNeeded]";
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__VGVirtualGarageService_virtualGarageStartContinuousUpdatesIfNeeded__block_invoke;
  block[3] = &unk_279E26E88;
  objc_copyWeak(&v7, buf);
  dispatch_async(connectionQueue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __69__VGVirtualGarageService_virtualGarageStartContinuousUpdatesIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained messageTargetWithErrorReply:0];
  [v1 virtualGarageStartContinuousUpdatesIfNeeded];
}

- (void)virtualGarageSetShouldUsePreferredNetworks:(BOOL)networks forVehicle:(id)vehicle
{
  networksCopy = networks;
  v23 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v7 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = @"NO";
    if (networksCopy)
    {
      v8 = @"YES";
    }

    v9 = v8;
    *buf = 136315650;
    v18 = "[VGVirtualGarageService virtualGarageSetShouldUsePreferredNetworks:forVehicle:]";
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "%s %@ %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__VGVirtualGarageService_virtualGarageSetShouldUsePreferredNetworks_forVehicle___block_invoke;
  block[3] = &unk_279E26F70;
  objc_copyWeak(&v15, buf);
  v16 = networksCopy;
  v14 = vehicleCopy;
  v11 = vehicleCopy;
  dispatch_async(connectionQueue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __80__VGVirtualGarageService_virtualGarageSetShouldUsePreferredNetworks_forVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageSetShouldUsePreferredNetworks:*(a1 + 48) forVehicle:*(a1 + 32)];
}

- (void)virtualGarageSaveVehicle:(id)vehicle
{
  v16 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VGVirtualGarageService virtualGarageSaveVehicle:]";
    v14 = 2112;
    v15 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__VGVirtualGarageService_virtualGarageSaveVehicle___block_invoke;
  v9[3] = &unk_279E26F20;
  objc_copyWeak(&v11, buf);
  v10 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__VGVirtualGarageService_virtualGarageSaveVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageSaveVehicle:*(a1 + 32)];
}

- (void)virtualGarageOnboardVehicle:(id)vehicle
{
  v16 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VGVirtualGarageService virtualGarageOnboardVehicle:]";
    v14 = 2112;
    v15 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__VGVirtualGarageService_virtualGarageOnboardVehicle___block_invoke;
  v9[3] = &unk_279E26F20;
  objc_copyWeak(&v11, buf);
  v10 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__VGVirtualGarageService_virtualGarageOnboardVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageOnboardVehicle:*(a1 + 32)];
}

- (void)virtualGarageSelectVehicle:(id)vehicle
{
  v16 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VGVirtualGarageService virtualGarageSelectVehicle:]";
    v14 = 2112;
    v15 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__VGVirtualGarageService_virtualGarageSelectVehicle___block_invoke;
  v9[3] = &unk_279E26F20;
  objc_copyWeak(&v11, buf);
  v10 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__VGVirtualGarageService_virtualGarageSelectVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageSelectVehicle:*(a1 + 32)];
}

- (void)virtualGarageGetGarageWithReply:(id)reply
{
  v14 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[VGVirtualGarageService virtualGarageGetGarageWithReply:]";
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__VGVirtualGarageService_virtualGarageGetGarageWithReply___block_invoke;
  v9[3] = &unk_279E26F48;
  objc_copyWeak(&v11, buf);
  v10 = replyCopy;
  v7 = replyCopy;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__VGVirtualGarageService_virtualGarageGetGarageWithReply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__VGVirtualGarageService_virtualGarageGetGarageWithReply___block_invoke_2;
  v4[3] = &unk_279E26EF8;
  v5 = *(a1 + 32);
  v3 = [WeakRetained messageTargetWithErrorReply:v4];
  [v3 virtualGarageGetGarageWithReply:*(a1 + 32)];
}

- (void)virtualGarageRemoveVehicle:(id)vehicle
{
  v16 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VGVirtualGarageService virtualGarageRemoveVehicle:]";
    v14 = 2112;
    v15 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__VGVirtualGarageService_virtualGarageRemoveVehicle___block_invoke;
  v9[3] = &unk_279E26F20;
  objc_copyWeak(&v11, buf);
  v10 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __53__VGVirtualGarageService_virtualGarageRemoveVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageRemoveVehicle:*(a1 + 32)];
}

- (void)virtualGarageAddVehicle:(id)vehicle
{
  v16 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VGVirtualGarageService virtualGarageAddVehicle:]";
    v14 = 2112;
    v15 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  connectionQueue = self->_connectionQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__VGVirtualGarageService_virtualGarageAddVehicle___block_invoke;
  v9[3] = &unk_279E26F20;
  objc_copyWeak(&v11, buf);
  v10 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(connectionQueue, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

void __50__VGVirtualGarageService_virtualGarageAddVehicle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained messageTargetWithErrorReply:0];
  [v2 virtualGarageAddVehicle:*(a1 + 32)];
}

- (id)messageTargetWithErrorReply:(id)reply
{
  v20[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
  IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
  if (IsEnabled_EVRouting & 1) != 0 || (IsEnabled_Alberta)
  {
    if (+[VGVirtualGarageService canUseVirtualGarageXPCService])
    {
      connection = [(VGVirtualGarageService *)self connection];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __54__VGVirtualGarageService_messageTargetWithErrorReply___block_invoke;
      v16[3] = &unk_279E26EF8;
      v17 = replyCopy;
      v12 = [connection remoteObjectProxyWithErrorHandler:v16];
    }

    else
    {
      v12 = +[VGVirtualGarageServer sharedServer];
    }
  }

  else
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "VirtualGarage isn't enabled, service isn't able to call to server.", buf, 2u);
    }

    if (replyCopy)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = GEOErrorDomain();
      v19 = *MEMORY[0x277CCA450];
      v20[0] = @"VirtualGarage isn't enabled, service isn't able to call to server.";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v11 = [v8 errorWithDomain:v9 code:-8 userInfo:v10];

      (*(replyCopy + 2))(replyCopy, v11);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __54__VGVirtualGarageService_messageTargetWithErrorReply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "%@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clearActiveVehicleIdentifierIfNeeded:(id)needed
{
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activeVehicleIdentifier = [(VGVirtualGarageService *)selfCopy activeVehicleIdentifier];
  v8 = neededCopy;
  if (v8 | activeVehicleIdentifier)
  {
    v7 = [activeVehicleIdentifier isEqual:v8];

    if ((v7 & 1) == 0)
    {
      [(VGVirtualGarageService *)selfCopy setActiveVehicleIdentifier:0];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)unregisterObserver:(id)observer
{
  v9 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Unregistering observer: %@", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers unregisterObserver:observerCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)registerObserver:(id)observer
{
  v9 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Registering observer: %@", &v7, 0xCu);
  }

  [(GEOObserverHashTable *)self->_observers registerObserver:observerCopy];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_closeConnection
{
  objc_initWeak(&location, self);
  connectionQueue = self->_connectionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__VGVirtualGarageService__closeConnection__block_invoke;
  v4[3] = &unk_279E26E88;
  objc_copyWeak(&v5, &location);
  dispatch_async(connectionQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__VGVirtualGarageService__closeConnection__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[VGVirtualGarageService _closeConnection]_block_invoke";
      v8 = 1024;
      v9 = 192;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v6, 0x12u);
    }

    goto LABEL_8;
  }

  if (WeakRetained[7])
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "VGVirtualGarageService closing connection", &v6, 2u);
    }

    [v2[7] invalidate];
    v4 = v2[7];
    v2[7] = 0;
LABEL_8:
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __41__VGVirtualGarageService__openConnection__block_invoke_63(uint64_t a1)
{
  v2 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_ERROR, "Server connection invalidated", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _closeConnection];
}

void __41__VGVirtualGarageService__openConnection__block_invoke()
{
  v0 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_270EC1000, v0, OS_LOG_TYPE_ERROR, "Server connection interrupted", v1, 2u);
  }
}

- (void)closeForClient:(id)client
{
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (clientCopy)
  {
    if (+[VGVirtualGarageService canUseVirtualGarageXPCService])
    {
      *v20 = 0;
      *&v20[8] = v20;
      *&v20[16] = 0x2020000000;
      v21 = 0;
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 0;
      clientsIsolater = self->_clientsIsolater;
      v12 = MEMORY[0x277D85DD0];
      v6 = clientCopy;
      v13 = v6;
      geo_isolate_sync_data();
      v7 = v15[3];
      if (*(*&v20[8] + 24) == v7)
      {
        IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
        if ((IsEnabled_EVRouting | MapsFeature_IsEnabled_Alberta()))
        {
          v9 = VGGetVirtualGarageLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v6;
            _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "Tried to closeForClient: (%@) that wasn't in _clients and VG was enabled. Check if the feature flag changed during run time. If it hasn't, there is probably in issue in your open/close logic.", buf, 0xCu);
          }
        }
      }

      else if (!v7)
      {
        [(VGVirtualGarageService *)self _closeConnection:v12];
      }

      _Block_object_dispose(&v14, 8);
      _Block_object_dispose(v20, 8);
    }
  }

  else
  {
    v10 = VGGetAssertLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136446722;
      *&v20[4] = "[VGVirtualGarageService closeForClient:]";
      *&v20[12] = 2082;
      *&v20[14] = "client == nil";
      *&v20[22] = 2082;
      v21 = "Can't call closeForClient: with a nil client";
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", v20, 0x20u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __41__VGVirtualGarageService_closeForClient___block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = a1[4];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_INFO, "Will closeForClient: %@", &v6, 0xCu);
  }

  *(*(a1[6] + 8) + 24) = [*(a1[5] + 8) count];
  [*(a1[5] + 8) removeObject:a1[4]];
  result = [*(a1[5] + 8) count];
  *(*(a1[7] + 8) + 24) = result;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)openForClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (!clientCopy)
  {
    v7 = VGGetAssertLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      *&buf[4] = "[VGVirtualGarageService openForClient:]";
      *&buf[12] = 2082;
      *&buf[14] = "client == nil";
      *&buf[22] = 2082;
      v17 = "Can't call openForClient: with a nil client";
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }

    goto LABEL_7;
  }

  if (+[VGVirtualGarageService canUseVirtualGarageXPCService])
  {
    IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
    IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
    if ((IsEnabled_EVRouting & 1) == 0 && (IsEnabled_Alberta & 1) == 0)
    {
      v7 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Tried to openForClient:, but virtual garage isn't enabled", buf, 2u);
      }

LABEL_7:

      goto LABEL_14;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v17 = 0;
    clientsIsolater = self->_clientsIsolater;
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __40__VGVirtualGarageService_openForClient___block_invoke;
    location[4] = &unk_279E26E60;
    location[5] = self;
    v14 = clientCopy;
    v15 = buf;
    geo_isolate_sync_data();
    if (!*(*&buf[8] + 24))
    {
      objc_initWeak(location, self);
      connectionQueue = self->_connectionQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__VGVirtualGarageService_openForClient___block_invoke_23;
      block[3] = &unk_279E26E88;
      objc_copyWeak(&v12, location);
      dispatch_sync(connectionQueue, block);
      objc_destroyWeak(&v12);
      objc_destroyWeak(location);
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_14:

  v10 = *MEMORY[0x277D85DE8];
}

void __40__VGVirtualGarageService_openForClient___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1[4] + 8) containsObject:a1[5]])
  {
    v2 = VGGetAssertLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "[VGVirtualGarageService openForClient:]_block_invoke";
      v12 = 2080;
      v13 = "VGVirtualGarageService.m";
      v14 = 1024;
      v15 = 104;
      _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v10, 0x1Cu);
    }

    if (_vg_isInternalInstall())
    {
      v3 = VGGetAssertLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = [MEMORY[0x277CCACC8] callStackSymbols];
        v10 = 138412290;
        v11 = v4;
        _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
      }
    }

    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = a1[5];
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_FAULT, "Tried to open connection twice for client: %@.", &v10, 0xCu);
    }
  }

  else
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[5];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Will openForClient: %@", &v10, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = [*(a1[4] + 8) count];
    [*(a1[4] + 8) addObject:a1[5]];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __40__VGVirtualGarageService_openForClient___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openConnection];
}

@end