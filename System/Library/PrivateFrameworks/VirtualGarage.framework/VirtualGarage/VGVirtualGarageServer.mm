@interface VGVirtualGarageServer
+ (id)sharedServer;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCListener)listener;
- (VGVirtualGarage)garage;
- (VGVirtualGarageObserver)observer;
- (VGVirtualGarageServer)init;
- (void)_cleanUp;
- (void)_setupVirtualGarageHostingIfNeeded;
- (void)dealloc;
- (void)setHostsVirtualGarage:(BOOL)garage;
- (void)startWithPersister:(id)persister;
- (void)stop;
- (void)valueChangedForGEOConfigKey:(id)key;
- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles;
- (void)virtualGarageAddVehicle:(id)vehicle;
- (void)virtualGarageDidUpdate:(id)update;
- (void)virtualGarageEndContinuousUpdates;
- (void)virtualGarageForceFetchAllVehicles;
- (void)virtualGarageGetGarageWithReply:(id)reply;
- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)reply;
- (void)virtualGarageOnboardVehicle:(id)vehicle;
- (void)virtualGarageRemoveVehicle:(id)vehicle;
- (void)virtualGarageSaveVehicle:(id)vehicle;
- (void)virtualGarageSelectVehicle:(id)vehicle;
- (void)virtualGarageStartContinuousUpdatesIfNeeded;
@end

@implementation VGVirtualGarageServer

- (VGVirtualGarage)garage
{
  garage = self->_garage;
  if (!garage)
  {
    v4 = [[VGVirtualGarage alloc] initWithGaragePersister:self->_persister];
    v5 = self->_garage;
    self->_garage = v4;

    [(VGVirtualGarage *)self->_garage setDelegate:self];
    garage = self->_garage;
  }

  return garage;
}

- (VGVirtualGarageObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

void __104__VGVirtualGarageServer_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__VGVirtualGarageServer_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_2;
  block[3] = &unk_279E26DC0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)reply
{
  replyCopy = reply;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageGetListOfUnpairedVehiclesWithReply:]"];
  garage = [(VGVirtualGarageServer *)self garage];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__VGVirtualGarageServer_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke;
  v7[3] = &unk_279E26E10;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  [garage virtualGarageGetListOfUnpairedVehiclesWithReply:v7];
}

void __73__VGVirtualGarageServer_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__VGVirtualGarageServer_virtualGarageGetListOfUnpairedVehiclesWithReply___block_invoke_2;
  block[3] = &unk_279E26DC0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)virtualGarageGetGarageWithReply:(id)reply
{
  replyCopy = reply;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageGetGarageWithReply:]"];
  garage = [(VGVirtualGarageServer *)self garage];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__VGVirtualGarageServer_virtualGarageGetGarageWithReply___block_invoke;
  v7[3] = &unk_279E26DE8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  [garage virtualGarageGetGarageWithReply:v7];
}

void __57__VGVirtualGarageServer_virtualGarageGetGarageWithReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) observerQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__VGVirtualGarageServer_virtualGarageGetGarageWithReply___block_invoke_2;
  block[3] = &unk_279E26DC0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)virtualGarageForceFetchAllVehicles
{
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageForceFetchAllVehicles]"];
  garage = [(VGVirtualGarageServer *)self garage];
  [garage virtualGarageForceFetchAllVehicles];
}

- (void)virtualGarageEndContinuousUpdates
{
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageEndContinuousUpdates]"];
  garage = [(VGVirtualGarageServer *)self garage];
  [garage virtualGarageEndContinuousUpdates];
}

- (void)virtualGarageStartContinuousUpdatesIfNeeded
{
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageStartContinuousUpdatesIfNeeded]"];
  garage = [(VGVirtualGarageServer *)self garage];
  [garage virtualGarageStartContinuousUpdatesIfNeeded];
}

- (void)virtualGarageOnboardVehicle:(id)vehicle
{
  performanceEventLogger = self->_performanceEventLogger;
  vehicleCopy = vehicle;
  [(GEOPerformanceEventLogger *)performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageOnboardVehicle:]"];
  garage = [(VGVirtualGarageServer *)self garage];
  [garage virtualGarageOnboardVehicle:vehicleCopy];
}

- (void)virtualGarageSelectVehicle:(id)vehicle
{
  performanceEventLogger = self->_performanceEventLogger;
  vehicleCopy = vehicle;
  [(GEOPerformanceEventLogger *)performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageSelectVehicle:]"];
  garage = [(VGVirtualGarageServer *)self garage];
  [garage virtualGarageSelectVehicle:vehicleCopy];
}

- (void)virtualGarageSaveVehicle:(id)vehicle
{
  performanceEventLogger = self->_performanceEventLogger;
  vehicleCopy = vehicle;
  [(GEOPerformanceEventLogger *)performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageSaveVehicle:]"];
  garage = [(VGVirtualGarageServer *)self garage];
  [garage virtualGarageSaveVehicle:vehicleCopy];
}

- (void)virtualGarageRemoveVehicle:(id)vehicle
{
  performanceEventLogger = self->_performanceEventLogger;
  vehicleCopy = vehicle;
  [(GEOPerformanceEventLogger *)performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageRemoveVehicle:]"];
  garage = [(VGVirtualGarageServer *)self garage];
  [garage virtualGarageRemoveVehicle:vehicleCopy];
}

- (void)virtualGarageAddVehicle:(id)vehicle
{
  performanceEventLogger = self->_performanceEventLogger;
  vehicleCopy = vehicle;
  [(GEOPerformanceEventLogger *)performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageAddVehicle:]"];
  garage = [(VGVirtualGarageServer *)self garage];
  [garage virtualGarageAddVehicle:vehicleCopy];
}

- (void)virtualGarage:(id)garage didUpdateUnpairedVehicles:(id)vehicles
{
  v59 = *MEMORY[0x277D85DE8];
  garageCopy = garage;
  vehiclesCopy = vehicles;
  val = self;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarage:didUpdateUnpairedVehicles:]"];
  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = vehiclesCopy;
    v8 = v7;
    if (v7)
    {
      if ([v7 count])
      {
        v37 = v8;
        v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v10 = v8;
        v11 = [v10 countByEnumeratingWithState:&v49 objects:buf count:16];
        if (v11)
        {
          v12 = *v50;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v50 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v49 + 1) + 8 * i);
              if (v14)
              {
                v15 = MEMORY[0x277CCACA8];
                v16 = v14;
                v17 = [v15 stringWithFormat:@"%@<%p>", objc_opt_class(), v16];
              }

              else
              {
                v17 = @"<nil>";
              }

              [v9 addObject:v17];
            }

            v11 = [v10 countByEnumeratingWithState:&v49 objects:buf count:16];
          }

          while (v11);
        }

        v18 = [v10 componentsJoinedByString:{@", "}];
        v19 = MEMORY[0x277CCACA8];
        v20 = v10;
        v21 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), v20];

        v22 = [v19 stringWithFormat:@"%@ [%@]", v21, v18];

        v8 = v37;
      }

      else
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = v8;
        v25 = [v23 stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

        v22 = [v23 stringWithFormat:@"%@ (empty)", v25];
      }
    }

    else
    {
      v22 = @"<nil>";
    }

    *buf = 136315650;
    v54 = "[VGVirtualGarageServer virtualGarage:didUpdateUnpairedVehicles:]";
    v55 = 2112;
    v56 = garageCopy;
    v57 = 2112;
    v58 = v22;
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%s %@, %@", buf, 0x20u);
  }

  objc_initWeak(buf, val);
  observer = [(VGVirtualGarageServer *)val observer];

  if (observer)
  {
    observerQueue = [(VGVirtualGarageServer *)val observerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__VGVirtualGarageServer_virtualGarage_didUpdateUnpairedVehicles___block_invoke;
    block[3] = &unk_279E26D98;
    v28 = &v48;
    objc_copyWeak(&v48, buf);
    v46 = garageCopy;
    v47 = vehiclesCopy;
    v29 = vehiclesCopy;
    v30 = garageCopy;
    dispatch_async(observerQueue, block);

    v31 = &v46;
    v32 = &v47;
  }

  else
  {
    isolationQueue = val->_isolationQueue;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __65__VGVirtualGarageServer_virtualGarage_didUpdateUnpairedVehicles___block_invoke_2;
    v41[3] = &unk_279E26D98;
    v28 = &v44;
    objc_copyWeak(&v44, buf);
    v31 = &v42;
    v32 = &v43;
    v42 = garageCopy;
    v43 = vehiclesCopy;
    v34 = vehiclesCopy;
    v35 = garageCopy;
    dispatch_async(isolationQueue, v41);
  }

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);
  v36 = *MEMORY[0x277D85DE8];
}

void __65__VGVirtualGarageServer_virtualGarage_didUpdateUnpairedVehicles___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained observer];
  [v2 virtualGarage:*(a1 + 32) didUpdateUnpairedVehicles:*(a1 + 40)];
}

void __65__VGVirtualGarageServer_virtualGarage_didUpdateUnpairedVehicles___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = WeakRetained[9];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __65__VGVirtualGarageServer_virtualGarage_didUpdateUnpairedVehicles___block_invoke_3;
          v12[3] = &unk_279E26D70;
          v13 = *(a1 + 32);
          v10 = [v9 remoteObjectProxyWithErrorHandler:v12];
          [v10 virtualGarage:*(a1 + 32) didUpdateUnpairedVehicles:*(a1 + 40)];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __65__VGVirtualGarageServer_virtualGarage_didUpdateUnpairedVehicles___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[VGVirtualGarageServer virtualGarage:didUpdateUnpairedVehicles:]_block_invoke_3";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "%s %@ %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)virtualGarageDidUpdate:(id)update
{
  v24 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer virtualGarageDidUpdate:]"];
  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "[VGVirtualGarageServer virtualGarageDidUpdate:]";
    v22 = 2112;
    v23 = updateCopy;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  observer = [(VGVirtualGarageServer *)self observer];

  if (observer)
  {
    observerQueue = [(VGVirtualGarageServer *)self observerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__VGVirtualGarageServer_virtualGarageDidUpdate___block_invoke;
    block[3] = &unk_279E26F20;
    v8 = &v19;
    objc_copyWeak(&v19, buf);
    v18 = updateCopy;
    v9 = updateCopy;
    dispatch_async(observerQueue, block);

    v10 = &v18;
  }

  else
  {
    isolationQueue = self->_isolationQueue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__VGVirtualGarageServer_virtualGarageDidUpdate___block_invoke_2;
    v14[3] = &unk_279E26F20;
    v8 = &v16;
    objc_copyWeak(&v16, buf);
    v10 = &v15;
    v15 = updateCopy;
    v12 = updateCopy;
    dispatch_async(isolationQueue, v14);
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
  v13 = *MEMORY[0x277D85DE8];
}

void __48__VGVirtualGarageServer_virtualGarageDidUpdate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained observer];
  [v2 virtualGarageDidUpdate:*(a1 + 32)];
}

void __48__VGVirtualGarageServer_virtualGarageDidUpdate___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = WeakRetained[9];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __48__VGVirtualGarageServer_virtualGarageDidUpdate___block_invoke_3;
          v12[3] = &unk_279E26D70;
          v13 = *(a1 + 32);
          v10 = [v9 remoteObjectProxyWithErrorHandler:v12];
          [v10 virtualGarageDidUpdate:*(a1 + 32)];

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __48__VGVirtualGarageServer_virtualGarageDidUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[VGVirtualGarageServer virtualGarageDidUpdate:]_block_invoke_3";
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "%s %@ %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v22 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.maps.virtualgarage.vehicles"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v12 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = VGProcessNameForPID([connectionCopy processIdentifier]);
      *location = 138412546;
      *&location[4] = v13;
      v20 = 2112;
      v21 = connectionCopy;
      _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_FAULT, "Unauthorized access from: %@ to VG XPC service from connection: %@", location, 0x16u);
    }

    goto LABEL_8;
  }

  IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
  IsEnabled_Alberta = MapsFeature_IsEnabled_Alberta();
  if ((IsEnabled_EVRouting & 1) == 0 && !IsEnabled_Alberta)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  objc_initWeak(location, self);
  isolationQueue = self->_isolationQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__VGVirtualGarageServer_listener_shouldAcceptNewConnection___block_invoke;
  v16[3] = &unk_279E26F20;
  objc_copyWeak(&v18, location);
  v17 = connectionCopy;
  dispatch_async(isolationQueue, v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(location);
  v11 = 1;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void __60__VGVirtualGarageServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880EA6A0];
    [*(a1 + 32) setRemoteObjectInterface:v3];

    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2880E9098];
    [*(a1 + 32) setExportedInterface:v4];

    v5 = [WeakRetained garage];
    [*(a1 + 32) setExportedObject:v5];

    [*(a1 + 32) setInterruptionHandler:&__block_literal_global_49];
    objc_initWeak(&location, *(a1 + 32));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__VGVirtualGarageServer_listener_shouldAcceptNewConnection___block_invoke_50;
    v6[3] = &unk_279E26D48;
    objc_copyWeak(&v7, (a1 + 40));
    objc_copyWeak(&v8, &location);
    [*(a1 + 32) setInvalidationHandler:v6];
    [WeakRetained[9] addObject:*(a1 + 32)];
    [*(a1 + 32) resume];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 32) invalidate];
  }
}

void __60__VGVirtualGarageServer_listener_shouldAcceptNewConnection___block_invoke_50(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_INFO, "Service connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__VGVirtualGarageServer_listener_shouldAcceptNewConnection___block_invoke_51;
    v8[3] = &unk_279E26D48;
    objc_copyWeak(&v9, (a1 + 32));
    objc_copyWeak(&v10, (a1 + 40));
    dispatch_async(v5, v8);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v9);
  }

  else
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[VGVirtualGarageServer listener:shouldAcceptNewConnection:]_block_invoke";
      v13 = 1024;
      v14 = 211;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __60__VGVirtualGarageServer_listener_shouldAcceptNewConnection___block_invoke_51(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = v3;
      v5 = [WeakRetained activeConnections];
      [v5 removeObject:v4];

      v6 = [WeakRetained activeConnections];
      v7 = [v6 count];

      if (!v7)
      {
        [WeakRetained _cleanUp];
      }
    }

    else
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "[VGVirtualGarageServer listener:shouldAcceptNewConnection:]_block_invoke";
        v12 = 1024;
        v13 = 214;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "strongConnection went away in %s line %d", &v10, 0x12u);
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[VGVirtualGarageServer listener:shouldAcceptNewConnection:]_block_invoke";
      v12 = 1024;
      v13 = 213;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf3 went away in %s line %d", &v10, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __60__VGVirtualGarageServer_listener_shouldAcceptNewConnection___block_invoke_2()
{
  v0 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_270EC1000, v0, OS_LOG_TYPE_ERROR, "Service connection interrupted", v1, 2u);
  }
}

- (void)valueChangedForGEOConfigKey:(id)key
{
  var1 = key.var1;
  var0 = key.var0;
  v16 = *MEMORY[0x277D85DE8];
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer valueChangedForGEOConfigKey:]"];
  v6 = var0 == *MEMORY[0x277D0EAA0] && var1 == *(MEMORY[0x277D0EAA0] + 8);
  if (v6 || (var0 == *MEMORY[0x277D0EA98] ? (v7 = var1 == *(MEMORY[0x277D0EA98] + 8)) : (v7 = 0), v7))
  {
    IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
    v9 = IsEnabled_EVRouting | MapsFeature_IsEnabled_Alberta();
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (v9)
      {
        v11 = @"YES";
      }

      v12 = v11;
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "VGServer: GEOConfigs changed. VirtualGarageIsEnabled: %@", &v14, 0xCu);
    }

    [(VGVirtualGarageServer *)self setHostsVirtualGarage:v9 & 1];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setupVirtualGarageHostingIfNeeded
{
  isolationQueue = self->_isolationQueue;
  v4 = *MEMORY[0x277D0EAA0];
  v5 = *(MEMORY[0x277D0EAA0] + 8);
  _GEOConfigAddDelegateListenerForKey();
  v6 = self->_isolationQueue;
  v7 = *MEMORY[0x277D0EA98];
  v8 = *(MEMORY[0x277D0EA98] + 8);
  _GEOConfigAddDelegateListenerForKey();
  objc_initWeak(&location, self);
  v9 = self->_isolationQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__VGVirtualGarageServer__setupVirtualGarageHostingIfNeeded__block_invoke;
  v10[3] = &unk_279E26E88;
  objc_copyWeak(&v11, &location);
  dispatch_async(v9, v10);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __59__VGVirtualGarageServer__setupVirtualGarageHostingIfNeeded__block_invoke(uint64_t a1)
{
  IsEnabled_EVRouting = MapsFeature_IsEnabled_EVRouting();
  v3 = IsEnabled_EVRouting | MapsFeature_IsEnabled_Alberta();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHostsVirtualGarage:v3 & 1];
}

- (void)setHostsVirtualGarage:(BOOL)garage
{
  garageCopy = garage;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer setHostsVirtualGarage:]"];
  if (self->_hostsVirtualGarage != garageCopy)
  {
    self->_hostsVirtualGarage = garageCopy;
    if (!garageCopy)
    {

      [(VGVirtualGarageServer *)self _cleanUp];
    }
  }
}

- (void)_cleanUp
{
  v15 = *MEMORY[0x277D85DE8];
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer _cleanUp]"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_activeConnections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_activeConnections removeAllObjects];
  garage = self->_garage;
  self->_garage = 0;

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer stop]"];
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__VGVirtualGarageServer_stop__block_invoke;
  v4[3] = &unk_279E26E88;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __29__VGVirtualGarageServer_stop__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = VGGetVirtualGarageLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "Stopped virtualGarageServer", &v6, 2u);
    }

    [WeakRetained _cleanUp];
    v4 = [WeakRetained listener];
    [v4 invalidate];

    [WeakRetained setListener:0];
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[VGVirtualGarageServer stop]_block_invoke";
      v8 = 1024;
      v9 = 118;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v6, 0x12u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)startWithPersister:(id)persister
{
  persisterCopy = persister;
  [(GEOPerformanceEventLogger *)self->_performanceEventLogger logPerformanceEvent:"[VGVirtualGarageServer startWithPersister:]"];
  objc_storeStrong(&self->_persister, persister);
  if (+[VGVirtualGarageServer canUseVirtualGarageXPCService])
  {
    objc_initWeak(&location, self);
    isolationQueue = self->_isolationQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__VGVirtualGarageServer_startWithPersister___block_invoke;
    v7[3] = &unk_279E26E88;
    objc_copyWeak(&v8, &location);
    dispatch_async(isolationQueue, v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __44__VGVirtualGarageServer_startWithPersister___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = VGGetVirtualGarageLog();
  v3 = v2;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = [WeakRetained listener];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "Started listening for connections: %@", &v6, 0xCu);
    }

    v3 = [WeakRetained listener];
    [v3 resume];
  }

  else if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "[VGVirtualGarageServer startWithPersister:]_block_invoke";
    v8 = 1024;
    v9 = 106;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = VGVirtualGarageServer;
  [(VGVirtualGarageServer *)&v3 dealloc];
}

- (NSXPCListener)listener
{
  listener = self->_listener;
  if (!listener)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.maps.virtualgarage.server"];
    v5 = self->_listener;
    self->_listener = v4;

    [(NSXPCListener *)self->_listener setDelegate:self];
    listener = self->_listener;
  }

  return listener;
}

- (VGVirtualGarageServer)init
{
  v13.receiver = self;
  v13.super_class = VGVirtualGarageServer;
  v2 = [(VGVirtualGarageServer *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.maps.virtualgarage.server.%@.%p", objc_opt_class(), v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v6;

    v8 = objc_opt_new();
    activeConnections = v2->_activeConnections;
    v2->_activeConnections = v8;

    v10 = [objc_alloc(MEMORY[0x277D0EC50]) initWithClassName:@"VGVirtualGarageServer"];
    performanceEventLogger = v2->_performanceEventLogger;
    v2->_performanceEventLogger = v10;

    [(VGVirtualGarageServer *)v2 _setupVirtualGarageHostingIfNeeded];
  }

  return v2;
}

+ (id)sharedServer
{
  if (sharedServer_onceToken != -1)
  {
    dispatch_once(&sharedServer_onceToken, &__block_literal_global_1952);
  }

  v3 = sharedServer_sharedServer;

  return v3;
}

uint64_t __37__VGVirtualGarageServer_sharedServer__block_invoke()
{
  sharedServer_sharedServer = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end