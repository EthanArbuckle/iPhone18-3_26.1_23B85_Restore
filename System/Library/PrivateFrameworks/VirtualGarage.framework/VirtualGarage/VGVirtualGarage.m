@interface VGVirtualGarage
- (BOOL)_persisterHasStaleStateForVehicle:(id)a3;
- (NSArray)vehicles;
- (NSString)description;
- (VGVehicle)selectedVehicle;
- (VGVirtualGarage)initWithCoder:(id)a3;
- (VGVirtualGarage)initWithGaragePersister:(id)a3;
- (VGVirtualGarageDelegate)delegate;
- (id)_garageCopy;
- (id)_vehicleWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addVehicle:(id)a3;
- (void)_endContinuousUpdates;
- (void)_executeQueuedCompletionHandlersIfNeeded;
- (void)_forceUpdateWithVehicles:(id)a3;
- (void)_notifyObserversGarageDidUpdateVehicles;
- (void)_onboardVehicle:(id)a3;
- (void)_removeVehicleWithIdentifier:(id)a3;
- (void)_removeVehiclesWithUninstalledAppsIfNeeded;
- (void)_saveVehicle:(id)a3 syncAcrossDevices:(BOOL)a4;
- (void)_selectVehicleWithIdentifier:(id)a3;
- (void)_setDataCoordintorRunning:(BOOL)a3;
- (void)_startContinuousUpdatesIfNeeded;
- (void)_unpairVehicle:(id)a3;
- (void)_updateDataCoordinatorAvailability;
- (void)dataCoordinator:(id)a3 didUpdateUnpairedVehicles:(id)a4;
- (void)dataCoordinatorDidUpdateInstalledApps:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)garagePersister:(id)a3 wantsToUpdateVehicles:(id)a4;
- (void)setShouldAssumeFullCharge:(BOOL)a3;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)virtualGarageForceFetchAllVehicles;
- (void)virtualGarageGetGarageWithReply:(id)a3;
- (void)virtualGarageGetLatestStateOfVehicleWithIdentifier:(id)a3 syncAcrossDevices:(BOOL)a4 withReply:(id)a5;
- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)a3;
- (void)virtualGarageRemoveVehicle:(id)a3;
- (void)virtualGarageSelectVehicle:(id)a3;
@end

@implementation VGVirtualGarage

- (void)_notifyObserversGarageDidUpdateVehicles
{
  v4 = [(VGVirtualGarage *)self _garageCopy];
  v3 = [(VGVirtualGarage *)self delegate];
  [v3 virtualGarageDidUpdate:v4];
}

- (id)_garageCopy
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [(VGVirtualGarage *)self copy];
  v3 = *MEMORY[0x277D0EAA0];
  v4 = *(MEMORY[0x277D0EAA0] + 8);
  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEBUG, "EV Routing not enabled. Will strip EV vehicles from VG.", buf, 2u);
    }

    v6 = VGFilter(*(v2 + 8), &__block_literal_global_1224);
    v7 = [v6 mutableCopy];
    v8 = *(v2 + 8);
    *(v2 + 8) = v7;

    if (*(v2 + 16))
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = *(v2 + 8);
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
LABEL_7:
        v13 = 0;
        while (1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v18 + 1) + 8 * v13) identifier];
          v15 = [v14 isEqualToString:*(v2 + 16)];

          if (v15)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
            if (v11)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:

        v9 = *(v2 + 16);
        *(v2 + 16) = 0;
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v2;
}

- (VGVirtualGarageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDataCoordinatorAvailability
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D0EAA0];
  if (self->_finishedLoadingVehicles)
  {
    v4 = *MEMORY[0x277D0EAA0];
    v5 = *(MEMORY[0x277D0EAA0] + 8);
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 0;
  }

  v7 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    if (BOOL)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    v10 = *v3;
    v11 = v3[1];
    if (GEOConfigGetBOOL())
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
    if (self->_finishedLoadingVehicles)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    v17 = 138412802;
    v18 = v9;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v15;
    _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "_updateDataCoordinatorAvailability: %@, evRoutingEnabled: %@, vehiclesLoaded: %@", &v17, 0x20u);
  }

  [(VGVirtualGarage *)self _setDataCoordintorRunning:BOOL];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_persister)
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      persister = self->_persister;
      *buf = 134218240;
      v8 = self;
      v9 = 2048;
      v10 = persister;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "Deallocating virtualGarage: %p with persister: %p", buf, 0x16u);
    }
  }

  GEOConfigRemoveDelegateListenerForAllKeys();
  v6.receiver = self;
  v6.super_class = VGVirtualGarage;
  [(VGVirtualGarage *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (VGVehicle)selectedVehicle
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(VGVirtualGarage *)v2 _vehicleWithIdentifier:v2->_selectedVehicleIdentifier];
  objc_sync_exit(v2);

  return v3;
}

- (void)_removeVehiclesWithUninstalledAppsIfNeeded
{
  v29 = *MEMORY[0x277D85DE8];
  if (!self->_dataCoordinator)
  {
    v3 = VGGetVirtualGarageLog();
    if (!os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 136315138;
    Name = sel_getName(a2);
    v16 = "Tried to use a method (%s) that requires a dataCoordinator.";
    p_super = &v3->super;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 12;
LABEL_21:
    _os_log_impl(&dword_270EC1000, p_super, v18, v16, buf, v19);
    goto LABEL_22;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v3 = VGGetVirtualGarageLog();
    if (!os_log_type_enabled(&v3->super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v16 = "Automatic unpairing is disabled. Will not remove vehicles.";
    p_super = &v3->super;
    v18 = OS_LOG_TYPE_INFO;
    v19 = 2;
    goto LABEL_21;
  }

  v3 = self;
  objc_sync_enter(v3);
  v4 = [(VGVirtualGarage *)v3 vehicles];
  v5 = [v4 copy];

  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    Name = [v5 count];
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "Will check for vehicles (%lu) that no longer have their paired apps.", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v10 = *v23;
    *&v9 = 138412290;
    v21 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if ([(VGDataCoordinator *)self->_dataCoordinator shouldUnpairVehicle:v12, v21, v22])
        {
          v13 = VGGetVirtualGarageLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v21;
            Name = v12;
            _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "The OEM app on the primary device was uninstalled. Will remove vehicle: %@", buf, 0xCu);
          }

          v14 = [v12 identifier];
          [(VGVirtualGarage *)v3 _removeVehicleWithIdentifier:v14];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v3);
LABEL_22:

  v20 = *MEMORY[0x277D85DE8];
}

- (NSArray)vehicles
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableArray *)v2->_vehicles copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)_executeQueuedCompletionHandlersIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_queuedGetGarageCompletionHandlers count])
  {
    v3 = [(VGVirtualGarage *)self _garageCopy];
    v4 = [(NSMutableArray *)self->_queuedGetGarageCompletionHandlers copy];
    [(NSMutableArray *)self->_queuedGetGarageCompletionHandlers removeAllObjects];
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v20 = [v4 count];
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Will execute %lu queued completionHandlers with garage: %@.", buf, 0x16u);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          (*(*(*(&v14 + 1) + 8 * v10) + 16))(*(*(&v14 + 1) + 8 * v10));
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    v11 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 count];
      *buf = 134217984;
      v20 = v12;
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "Finished executing %lu queued completionHandlers", buf, 0xCu);
    }
  }

  else
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_DEBUG, "There are no queued completion handlers, nothing to do.", buf, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)virtualGarageGetLatestStateOfVehicleWithIdentifier:(id)a3 syncAcrossDevices:(BOOL)a4 withReply:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = self;
      objc_sync_enter(v11);
      v12 = VGGetDataCoordinatorLog();
      v13 = os_signpost_id_generate(v12);

      v14 = VGGetDataCoordinatorLog();
      v15 = v14;
      if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "GetVehicleState", "", buf, 2u);
      }

      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke;
      v37[3] = &unk_279E26B18;
      v39 = v13;
      v38 = v10;
      v16 = MEMORY[0x2743B8310](v37);
      if ([v8 isEqualToString:v11->_selectedVehicleIdentifier])
      {
        [(VGVirtualGarage *)v11 selectedVehicle];
      }

      else
      {
        [(VGVirtualGarage *)v11 _vehicleWithIdentifier:v8];
      }
      v17 = ;
      v18 = v17;
      if (v17)
      {
        if ([v17 isPureElectricVehicle])
        {
          objc_initWeak(buf, v11);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_44;
          v33[3] = &unk_279E26B68;
          objc_copyWeak(&v35, buf);
          v19 = v18;
          v34 = v19;
          v36 = a4;
          v20 = MEMORY[0x2743B8310](v33);
          BOOL = GEOConfigGetBOOL();
          v22 = VGGetVirtualGarageLog();
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
          if (BOOL)
          {
            if (v23)
            {
              *v32 = 0;
              _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_INFO, "EVRoutingSynchronousVehicleStateUpdate is on, will fetch SOC and wait before calling completion block.", v32, 2u);
            }

            v24 = v16;
          }

          else
          {
            if (v23)
            {
              *v32 = 0;
              _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_INFO, "EVRoutingSynchronousVehicleStateUpdate is off, getting latest SoC from what is currently in the garage.", v32, 2u);
            }

            (v16)[2](v16, v19, 0);
            v24 = 0;
          }

          (v20)[2](v20, v19, v24);

          objc_destroyWeak(&v35);
          objc_destroyWeak(buf);
LABEL_29:

          objc_sync_exit(v11);
          goto LABEL_30;
        }

        v25 = @"Fetched vehicle is not an EV vehicle.";
      }

      else
      {
        v25 = @"Could not fetch a vehicle.";
      }

      v26 = MEMORY[0x277CCA9B8];
      v27 = GEOErrorDomain();
      v40 = *MEMORY[0x277CCA450];
      v41 = v25;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v29 = [v26 errorWithDomain:v27 code:-8 userInfo:v28];

      v30 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v29;
        _os_log_impl(&dword_270EC1000, v30, OS_LOG_TYPE_ERROR, "Unable to fetch a state for vehicle. Error: %@", buf, 0xCu);
      }

      (v16)[2](v16, 0, v29);
      goto LABEL_29;
    }

    v11 = VGGetAssertLog();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v43 = "[VGVirtualGarage virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]";
      v44 = 2082;
      v45 = "reply == nil";
      v46 = 2082;
      v47 = "reply block cannot be nil";
      goto LABEL_12;
    }
  }

  else
  {
    v11 = VGGetAssertLog();
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v43 = "[VGVirtualGarage virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]";
      v44 = 2082;
      v45 = "identifier == nil";
      v46 = 2082;
      v47 = "vehicleIdentifier cannot be nil";
LABEL_12:
      _os_log_impl(&dword_270EC1000, &v11->super, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }
  }

LABEL_30:

  v31 = *MEMORY[0x277D85DE8];
}

void __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = VGGetDataCoordinatorLog();
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "GetVehicleState", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_44(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = *(WeakRetained + 4);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_45;
    v12[3] = &unk_279E26B40;
    objc_copyWeak(&v15, (a1 + 40));
    v13 = *(a1 + 32);
    v16 = *(a1 + 48);
    v14 = v6;
    [v9 getLatestStateOfVehicle:v5 withReply:v12];

    objc_destroyWeak(&v15);
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[VGVirtualGarage virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]_block_invoke";
      v19 = 1024;
      v20 = 737;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __98__VGVirtualGarage_virtualGarageGetLatestStateOfVehicleWithIdentifier_syncAcrossDevices_withReply___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v14 = *(a1 + 32);
        v21 = 138412546;
        v22 = v14;
        v23 = 2112;
        v24 = v6;
        v9 = "Failed to get the latest state of vehicle: %@. with error: %@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
        goto LABEL_12;
      }
    }

    else if ([v5 isEqual:*(a1 + 32)])
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v5;
        v9 = "Updated vehicle: %@ is the same as the existing one. Not saving the state.";
        v10 = v8;
        v11 = OS_LOG_TYPE_INFO;
        v12 = 12;
LABEL_12:
        _os_log_impl(&dword_270EC1000, v10, v11, v9, &v21, v12);
      }
    }

    else
    {
      v18 = [v5 identifier];
      v8 = [WeakRetained _vehicleWithIdentifier:v18];

      if (v8)
      {
        v15 = [v8 _vehicleByUpdatingWithVehicle:v5];

        v19 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v21 = 138412290;
          v22 = v15;
          _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_INFO, "Received the latest state of vehicle: %@ through virtualGarageGetLatestStateOfVehicle. Will save the state.", &v21, 0xCu);
        }

        [WeakRetained _saveVehicle:v15 syncAcrossDevices:*(a1 + 56)];
        goto LABEL_14;
      }

      v20 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v5;
        _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_INFO, "Received the latest state of vehicle: %@ through virtualGarageGetLatestStateOfVehicle, but the underlying vehicle was removed from the garage before the callback returned.", &v21, 0xCu);
      }

      v8 = 0;
    }

    v15 = v5;
LABEL_14:

    v16 = *(a1 + 40);
    if (v16)
    {
      (*(v16 + 16))(v16, v15, v6);
    }

    v5 = v15;
    goto LABEL_17;
  }

  v13 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v21 = 136315394;
    v22 = "[VGVirtualGarage virtualGarageGetLatestStateOfVehicleWithIdentifier:syncAcrossDevices:withReply:]_block_invoke";
    v23 = 1024;
    LODWORD(v24) = 740;
    _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v21, 0x12u);
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)virtualGarageGetListOfUnpairedVehiclesWithReply:(id)a3
{
  dataCoordinator = self->_dataCoordinator;
  v5 = a3;
  v7 = [(VGDataCoordinator *)dataCoordinator unpairedVehicles];
  v6 = [v7 copy];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)virtualGarageForceFetchAllVehicles
{
  obj = self;
  objc_sync_enter(obj);
  [(VGDataCoordinator *)obj->_dataCoordinator forceFetchAllVehicles];
  objc_sync_exit(obj);
}

- (void)virtualGarageSelectVehicle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VGVirtualGarage *)self selectedVehicle];
  v6 = [v4 identifier];
  [(VGVirtualGarage *)self _selectVehicleWithIdentifier:v6];

  if ([v4 isPureElectricVehicle])
  {
    v7 = [v5 identifier];
    v8 = [v4 identifier];
    v9 = [v7 isEqualToString:v8];

    if (!v9 || ([v5 currentVehicleState], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "currentVehicleState"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isSignificantlyDifferentFromVehicleState:", v11), v11, v10, v12))
    {
      v13 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v4 identifier];
        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "Will fetch SoC for vehicle: (%@) after it's been selected.", &v17, 0xCu);
      }

      v15 = [v4 identifier];
      [(VGVirtualGarage *)self virtualGarageGetLatestStateOfVehicleWithIdentifier:v15 syncAcrossDevices:1 withReply:&__block_literal_global_31];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __46__VGVirtualGarage_virtualGarageSelectVehicle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = VGGetVirtualGarageLog();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 identifier];
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      v9 = "Failed fetching SoC for newly selected vehicle: (%@) with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_270EC1000, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = [v4 identifier];
    v14 = 138412290;
    v15 = v8;
    v9 = "Did finish fetching SoC for vehicle: (%@) after it's been selected.";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)virtualGarageGetGarageWithReply:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_finishedLoadingVehicles)
  {
    v6 = [(VGVirtualGarage *)v5 _garageCopy];
    v4[2](v4, v6, 0);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__VGVirtualGarage_virtualGarageGetGarageWithReply___block_invoke;
    v12[3] = &unk_279E26AD0;
    v13 = v4;
    v7 = MEMORY[0x2743B8310](v12);
    queuedGetGarageCompletionHandlers = v5->_queuedGetGarageCompletionHandlers;
    v9 = MEMORY[0x2743B8310]();
    [(NSMutableArray *)queuedGetGarageCompletionHandlers addObject:v9];

    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 0;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Garage hasn't finished loading vehicles from persistor. Once finished, reply block will be executed", &v11, 2u);
    }
  }

  objc_sync_exit(v5);
}

- (void)virtualGarageRemoveVehicle:(id)a3
{
  v4 = [a3 identifier];
  [(VGVirtualGarage *)self _removeVehicleWithIdentifier:v4];
}

- (void)dataCoordinatorDidUpdateInstalledApps:(id)a3
{
  v4 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "DataCoordinator updated installed apps. Will try to remove vehicles that have no OEM app.", v5, 2u);
  }

  [(VGVirtualGarage *)self _removeVehiclesWithUninstalledAppsIfNeeded];
}

- (void)dataCoordinator:(id)a3 didUpdateUnpairedVehicles:(id)a4
{
  v5 = a4;
  v6 = [(VGVirtualGarage *)self delegate];
  [v6 virtualGarage:self didUpdateUnpairedVehicles:v5];
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3.var0 == *MEMORY[0x277D0EAA0] && a3.var1 == *(MEMORY[0x277D0EAA0] + 8))
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      BOOL = GEOConfigGetBOOL();
      v7 = @"NO";
      if (BOOL)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "GEOConfigs changed, isEVRoutingEnabled: %@", &v10, 0xCu);
    }

    [(VGVirtualGarage *)self _updateDataCoordinatorAvailability];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [(NSMutableArray *)v6->_vehicles mutableCopyWithZone:a3];
  v8 = *(v5 + 8);
  *(v5 + 8) = v7;

  v9 = [(NSString *)v6->_selectedVehicleIdentifier copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  *(v5 + 64) = v6->_shouldAssumeFullCharge;
  objc_sync_exit(v6);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [v5 encodeObject:v4->_vehicles forKey:@"_vehicles"];
  [v5 encodeObject:v4->_selectedVehicleIdentifier forKey:@"_selectedVehicleIdentifier"];
  objc_sync_exit(v4);
}

- (void)garagePersister:(id)a3 wantsToUpdateVehicles:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BOOL = GEOConfigGetBOOL();
  v9 = VGGetVirtualGarageLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (BOOL)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "garagePersister: %@ wants to update vehicles with vehicles: %@", &v14, 0x16u);
    }

    [(VGVirtualGarage *)self _forceUpdateWithVehicles:v7];
    [(VGVirtualGarage *)self _removeVehiclesWithUninstalledAppsIfNeeded];
  }

  else
  {
    if (v10)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "GeoConfig_EVRoutingUseMapsSyncLiveUpdates is not set, we're ignoring live updates.", &v14, 2u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_forceUpdateWithVehicles:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  v54 = v4;
  if (v4)
  {
    v5 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (!v7)
    {
      goto LABEL_17;
    }

    v8 = *v60;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v60 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v59 + 1) + 8 * i);
        v11 = [v10 currentVehicleState];
        v12 = [v11 dateOfUpdate];

        if (!v12)
        {
          goto LABEL_14;
        }

        v13 = [v10 identifier];
        v14 = [(VGVirtualGarage *)obj _vehicleWithIdentifier:v13];

        v15 = [v14 currentVehicleState];
        v16 = [v15 dateOfUpdate];

        if (!v16 || [v16 compare:v12] != 1)
        {

LABEL_14:
          [v5 addObject:v10];
          goto LABEL_15;
        }

        [v5 addObject:v14];
        v17 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v14;
          _os_log_impl(&dword_270EC1000, v17, OS_LOG_TYPE_ERROR, "Discarding vehicle with stale charge state: %@ in favor of: %@", buf, 0x16u);
        }

LABEL_15:
      }

      v7 = [v6 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (!v7)
      {
LABEL_17:

        v18 = VGGetVirtualGarageLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v53 = v18;
          v19 = obj->_vehicles;
          v55 = v19;
          if (v19)
          {
            if ([(NSMutableArray *)v19 count])
            {
              v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v55, "count")}];
              v65 = 0u;
              v66 = 0u;
              *v63 = 0u;
              v64 = 0u;
              v21 = v55;
              v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:v63 objects:buf count:16];
              if (v22)
              {
                v23 = *v64;
                do
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v64 != v23)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v25 = *(*&v63[8] + 8 * j);
                    if (v25)
                    {
                      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v25];
                    }

                    else
                    {
                      v26 = @"<nil>";
                    }

                    [v20 addObject:v26];
                  }

                  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:v63 objects:buf count:16];
                }

                while (v22);
              }

              v27 = [(NSMutableArray *)v21 componentsJoinedByString:@", "];
              v28 = MEMORY[0x277CCACA8];
              v29 = v21;
              v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v29];

              v31 = [v28 stringWithFormat:@"%@ [%@]", v30, v27];
            }

            else
            {
              v32 = MEMORY[0x277CCACA8];
              v33 = v55;
              v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v33];

              v31 = [v32 stringWithFormat:@"%@ (empty)", v20];
            }
          }

          else
          {
            v31 = @"<nil>";
          }

          v52 = v31;
          v34 = v5;
          v56 = v34;
          if (v34)
          {
            if ([v34 count])
            {
              v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](v56, "count")}];
              v65 = 0u;
              v66 = 0u;
              *v63 = 0u;
              v64 = 0u;
              v36 = v56;
              v37 = [v36 countByEnumeratingWithState:v63 objects:buf count:16];
              if (v37)
              {
                v38 = *v64;
                do
                {
                  for (k = 0; k != v37; ++k)
                  {
                    if (*v64 != v38)
                    {
                      objc_enumerationMutation(v36);
                    }

                    v40 = *(*&v63[8] + 8 * k);
                    if (v40)
                    {
                      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v40];
                    }

                    else
                    {
                      v41 = @"<nil>";
                    }

                    [v35 addObject:v41];
                  }

                  v37 = [v36 countByEnumeratingWithState:v63 objects:buf count:16];
                }

                while (v37);
              }

              v42 = [v36 componentsJoinedByString:@", "];
              v43 = MEMORY[0x277CCACA8];
              v44 = v36;
              v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v44];

              v46 = [v43 stringWithFormat:@"%@ [%@]", v45, v42];
            }

            else
            {
              v47 = MEMORY[0x277CCACA8];
              v48 = v56;
              v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v48];

              v46 = [v47 stringWithFormat:@"%@ (empty)", v35];
            }
          }

          else
          {
            v46 = @"<nil>";
          }

          *v67 = 138412546;
          v68 = v52;
          v69 = 2112;
          v70 = v46;
          _os_log_impl(&dword_270EC1000, v53, OS_LOG_TYPE_INFO, "Force updating local vehicles: %@, with following vehicles: %@", v67, 0x16u);

          v18 = v53;
        }

        objc_storeStrong(&obj->_vehicles, v5);
        if (GEOConfigGetBOOL())
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v73 = 1;
          vehicles = obj->_vehicles;
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __44__VGVirtualGarage__forceUpdateWithVehicles___block_invoke;
          v58[3] = &unk_279E26AA8;
          v58[4] = obj;
          v58[5] = buf;
          [(NSMutableArray *)vehicles enumerateObjectsUsingBlock:v58];
          if (*(*&buf[8] + 24) == 1 && obj->_selectedVehicleIdentifier)
          {
            v50 = VGGetVirtualGarageLog();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *v63 = 0;
              _os_log_impl(&dword_270EC1000, v50, OS_LOG_TYPE_INFO, "Forced vehicle update removed the selected vehicle. Will deselect", v63, 2u);
            }

            [(VGVirtualGarage *)obj _selectVehicleWithIdentifier:0];
          }

          _Block_object_dispose(buf, 8);
        }

        [(VGVirtualGarage *)obj _notifyObserversGarageDidUpdateVehicles];
        goto LABEL_61;
      }
    }
  }

  v5 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Tried to update local vehicles with nil vehicles.", buf, 2u);
  }

LABEL_61:

  objc_sync_exit(obj);
  v51 = *MEMORY[0x277D85DE8];
}

void __44__VGVirtualGarage__forceUpdateWithVehicles___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 identifier];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 16)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)_endContinuousUpdates
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_dataCoordinator)
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "Garage will end continuous updates.", &v7, 2u);
    }

    [(VGDataCoordinator *)self->_dataCoordinator endAllContinuousUpdates];
    objc_sync_exit(v3);
  }

  else
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_270EC1000, &v3->super, OS_LOG_TYPE_ERROR, "Tried to use a method (%s) that requires a dataCoordinator.", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_startContinuousUpdatesIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  if (self->_dataCoordinator)
  {
    v3 = self;
    objc_sync_enter(v3);
    v4 = [(VGVirtualGarage *)v3 selectedVehicle];
    v5 = VGGetVirtualGarageLog();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        v9 = 138412290;
        Name = v4;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Garage will start continuous updates for vehicle: %@", &v9, 0xCu);
      }

      [(VGDataCoordinator *)self->_dataCoordinator startContinuousUpdatesForVehicle:v4];
    }

    else
    {
      if (v6)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Garage will not start continuous updates, because there is no selected vehicle", &v9, 2u);
      }
    }

    objc_sync_exit(v3);
  }

  else
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_270EC1000, &v3->super, OS_LOG_TYPE_ERROR, "Tried to use a method (%s) that requires a dataCoordinator.", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_unpairVehicle:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_dataCoordinator)
  {
    if (!v5)
    {
      v10 = VGGetAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315906;
        Name = "[VGVirtualGarage _unpairVehicle:]";
        v15 = 2080;
        v16 = "VGVirtualGarage.m";
        v17 = 1024;
        v18 = 362;
        v19 = 2080;
        v20 = "vehicle";
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
      }

      if (_vg_isInternalInstall())
      {
        v11 = VGGetAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [MEMORY[0x277CCACC8] callStackSymbols];
          v13 = 138412290;
          Name = v12;
          _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
        }
      }
    }

    v7 = self;
    objc_sync_enter(v7);
    v8 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      Name = v6;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "Unpairing vehicle: %@", &v13, 0xCu);
    }

    [(VGDataCoordinator *)self->_dataCoordinator unpairVehicle:v6];
    objc_sync_exit(v7);
  }

  else
  {
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_270EC1000, &v7->super, OS_LOG_TYPE_ERROR, "Tried to use a method (%s) that requires a dataCoordinator.", &v13, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_onboardVehicle:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v32 = a3;
  if (self->_dataCoordinator)
  {
    obj = self;
    objc_sync_enter(obj);
    v28 = self;
    v5 = [(VGDataCoordinator *)self->_dataCoordinator unpairedVehicles];
    v6 = MEMORY[0x277CCAC30];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __35__VGVirtualGarage__onboardVehicle___block_invoke;
    v33[3] = &unk_279E26A60;
    v31 = v32;
    v34 = v31;
    v7 = [v6 predicateWithBlock:v33];
    v30 = [v5 filteredArrayUsingPredicate:v7];

    if ([v30 count] != 1)
    {
      v8 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = v30;
        v27 = v9;
        if (v9)
        {
          if ([v9 count])
          {
            v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count")}];
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v11 = v27;
            v12 = [v11 countByEnumeratingWithState:&v35 objects:buf count:16];
            if (v12)
            {
              v13 = *v36;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v36 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v35 + 1) + 8 * i);
                  if (v15)
                  {
                    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v15];
                  }

                  else
                  {
                    v16 = @"<nil>";
                  }

                  [v10 addObject:v16];
                }

                v12 = [v11 countByEnumeratingWithState:&v35 objects:buf count:16];
              }

              while (v12);
            }

            v17 = [v11 componentsJoinedByString:{@", "}];
            v18 = MEMORY[0x277CCACA8];
            v19 = v11;
            v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v19];

            v21 = [v18 stringWithFormat:@"%@ [%@]", v20, v17];
          }

          else
          {
            v23 = MEMORY[0x277CCACA8];
            v24 = v27;
            v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

            v21 = [v23 stringWithFormat:@"%@ (empty)", v10];
          }
        }

        else
        {
          v21 = @"<nil>";
        }

        *v39 = 138412546;
        v40 = v31;
        v41 = 2112;
        v42 = v21;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "_onboardVehicle will onboard vehicle %@, but we didn't find exactly one match in unpairedVehicles: %@", v39, 0x16u);
      }
    }

    v25 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      Name = v31;
      _os_log_impl(&dword_270EC1000, v25, OS_LOG_TYPE_INFO, "Onboarding vehicle: %@ in virtual garage.", buf, 0xCu);
    }

    [(VGDataCoordinator *)v28->_dataCoordinator finishOnboardingVehicle:v31];
    [(VGVirtualGarage *)obj _addVehicle:v31];

    p_super = &obj->super;
    objc_sync_exit(obj);
  }

  else
  {
    p_super = VGGetVirtualGarageLog();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      Name = sel_getName(a2);
      _os_log_impl(&dword_270EC1000, p_super, OS_LOG_TYPE_ERROR, "Tried to use a method (%s) that requires a dataCoordinator.", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_selectVehicleWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (([v5 isEqualToString:v6->_selectedVehicleIdentifier] & 1) == 0)
  {
    v7 = [(VGVirtualGarage *)v6 _vehicleWithIdentifier:v5];
    v8 = v7;
    if (v5 && !v7)
    {
      v11 = VGGetAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315906;
        v16 = "[VGVirtualGarage _selectVehicleWithIdentifier:]";
        v17 = 2080;
        v18 = "VGVirtualGarage.m";
        v19 = 1024;
        v20 = 326;
        v21 = 2080;
        v22 = "vehicleIdentifier == nil || vehicle";
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v15, 0x26u);
      }

      if (_vg_isInternalInstall())
      {
        v12 = VGGetAssertLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [MEMORY[0x277CCACC8] callStackSymbols];
          v15 = 138412290;
          v16 = v13;
          _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "%@", &v15, 0xCu);
        }
      }

      v14 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "selectVehicle: tried to select a vehicle that is not in the garage.", &v15, 2u);
      }
    }

    else
    {
      objc_storeStrong(&v6->_selectedVehicleIdentifier, a3);
      [(VGVirtualGaragePersisting *)v6->_persister setSelectedVehicleIdentifier:v5];
      v9 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Selected vehicle: %@", &v15, 0xCu);
      }

      [(VGVirtualGarage *)v6 _notifyObserversGarageDidUpdateVehicles];
    }
  }

  objc_sync_exit(v6);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeVehicleWithIdentifier:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(VGVirtualGarage *)v5 _vehicleWithIdentifier:v4];
  if (v6)
  {
    v7 = [(VGVirtualGarage *)v5 selectedVehicle];
    v8 = [v6 isEqual:v7];

    if (v8)
    {
      [(VGVirtualGarage *)v5 _endContinuousUpdates];
    }

    [(NSMutableArray *)v5->_vehicles removeObject:v6];
    [(VGVirtualGaragePersisting *)v5->_persister removeVehicle:v6];
    v9 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(NSMutableArray *)v5->_vehicles count];
      v17 = 138412546;
      v18 = v6;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Removed vehicle: %@, vehicles.count: %lu", &v17, 0x16u);
    }

    [(VGVirtualGarage *)v5 _unpairVehicle:v6];
    [(VGVirtualGarage *)v5 _notifyObserversGarageDidUpdateVehicles];
  }

  else
  {
    v12 = VGGetAssertLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "[VGVirtualGarage _removeVehicleWithIdentifier:]";
      v19 = 2080;
      v20 = "VGVirtualGarage.m";
      v21 = 1024;
      v22 = 300;
      v23 = 2080;
      v24 = "vehicle";
      _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v17, 0x26u);
    }

    if (_vg_isInternalInstall())
    {
      v13 = VGGetAssertLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [MEMORY[0x277CCACC8] callStackSymbols];
        v17 = 138412290;
        v18 = v14;
        v15 = v14;
        _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }

    v16 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "removeVehicle: tried to remove a vehicle that is not in the garage.", &v17, 2u);
    }
  }

  objc_sync_exit(v5);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_saveVehicle:(id)a3 syncAcrossDevices:(BOOL)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  obj = self;
  objc_sync_enter(obj);
  vehicles = obj->_vehicles;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __50__VGVirtualGarage__saveVehicle_syncAcrossDevices___block_invoke;
  v35[3] = &unk_279E26A38;
  v34 = v6;
  v36 = v34;
  v8 = [(NSMutableArray *)vehicles indexOfObjectPassingTest:v35];
  v9 = VGGetVirtualGarageLog();
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v31 = v10;
      v30 = [v34 identifier];
      v11 = obj->_vehicles;
      v32 = v11;
      if (v11)
      {
        if ([(NSMutableArray *)v11 count])
        {
          v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v32, "count")}];
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v13 = v32;
          v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v37 objects:buf count:16];
          if (v14)
          {
            v15 = *v38;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v37 + 1) + 8 * i);
                if (v17)
                {
                  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v17];
                }

                else
                {
                  v18 = @"<nil>";
                }

                [v12 addObject:v18];
              }

              v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v37 objects:buf count:16];
            }

            while (v14);
          }

          v19 = [(NSMutableArray *)v13 componentsJoinedByString:@", "];
          v20 = MEMORY[0x277CCACA8];
          v21 = v13;
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v21];

          v23 = [v20 stringWithFormat:@"%@ [%@]", v22, v19];
        }

        else
        {
          v27 = MEMORY[0x277CCACA8];
          v28 = v32;
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v28];

          v23 = [v27 stringWithFormat:@"%@ (empty)", v12];
        }
      }

      else
      {
        v23 = @"<nil>";
      }

      *v41 = 138412546;
      v42 = v30;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_270EC1000, v31, OS_LOG_TYPE_ERROR, "_saveVehicle: Vehicle with ID: %@ wasn't found, it was removed before _save was called. vehicles: %@", v41, 0x16u);

      v10 = v31;
    }
  }

  else
  {
    v24 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v46 = v34;
      _os_log_impl(&dword_270EC1000, v24, OS_LOG_TYPE_INFO, "_saveVehicle: Vehicle was found, will replace it in local array: %@", buf, 0xCu);
    }

    [(NSMutableArray *)obj->_vehicles replaceObjectAtIndex:v8 withObject:v34];
    [(VGVirtualGarage *)obj _notifyObserversGarageDidUpdateVehicles];
    v25 = [(VGVirtualGarage *)obj _persisterHasStaleStateForVehicle:v34];
    if (v25)
    {
      v26 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v46 = v34;
        _os_log_impl(&dword_270EC1000, v26, OS_LOG_TYPE_INFO, "_saveVehicle: Will force sync chargeState because persister has stale info for vehicle: %@", buf, 0xCu);
      }
    }

    [(VGVirtualGaragePersisting *)obj->_persister saveVehicle:v34 syncAcrossDevices:a4 || v25];
  }

  objc_sync_exit(obj);
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __50__VGVirtualGarage__saveVehicle_syncAcrossDevices___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

- (void)_addVehicle:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(NSMutableArray *)v5->_vehicles containsObject:v4])
  {
    v13 = VGGetAssertLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315906;
      v18 = "[VGVirtualGarage _addVehicle:]";
      v19 = 2080;
      v20 = "VGVirtualGarage.m";
      v21 = 1024;
      v22 = 253;
      v23 = 2080;
      v24 = "![_vehicles containsObject:vehicle]";
      _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v17, 0x26u);
    }

    if (_vg_isInternalInstall())
    {
      v14 = VGGetAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x277CCACC8] callStackSymbols];
        v17 = 138412290;
        v18 = v15;
        v16 = v15;
        _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
      }
    }
  }

  if ([(NSMutableArray *)v5->_vehicles containsObject:v4])
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "addVehicle: tried to add a vehicle that is already in the garage.", &v17, 2u);
    }
  }

  else
  {
    [(NSMutableArray *)v5->_vehicles addObject:v4];
    [(VGVirtualGaragePersisting *)v5->_persister addVehicle:v4];
    v7 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [(NSMutableArray *)v5->_vehicles count];
      v17 = 138412546;
      v18 = v4;
      v19 = 2048;
      v20 = v8;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Added vehicle: %@, vehicles.count: %lu", &v17, 0x16u);
    }

    if (!v5->_selectedVehicleIdentifier)
    {
      v9 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v4 identifier];
        v17 = 138412290;
        v18 = v10;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_INFO, "Default selecting new vehicle: %@", &v17, 0xCu);
      }

      v11 = [v4 identifier];
      [(VGVirtualGarage *)v5 _selectVehicleWithIdentifier:v11];
    }

    [(VGVirtualGarage *)v5 _notifyObserversGarageDidUpdateVehicles];
  }

  objc_sync_exit(v5);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setDataCoordintorRunning:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_isDataCoordinatorRunning != v3)
  {
    v4->_isDataCoordinatorRunning = v3;
    if (v3)
    {
      v5 = [VGDataCoordinator alloc];
      v6 = objc_alloc_init(VGOEMApplicationFinder);
      v7 = objc_alloc_init(VGExternalAccessory);
      v8 = [(VGDataCoordinator *)v5 initWithApplicationFinder:v6 externalAccessory:v7 delegate:v4];
      dataCoordinator = v4->_dataCoordinator;
      v4->_dataCoordinator = v8;

      p_super = VGGetVirtualGarageLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        v11 = v4->_dataCoordinator;
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_270EC1000, p_super, OS_LOG_TYPE_INFO, "Instantiated a new _dataCoordinator %@ for VirtualGarage", &v14, 0xCu);
      }
    }

    else
    {
      v12 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_INFO, "Will not use dataCoordinator, EV routing isn't enabled", &v14, 2u);
      }

      p_super = &v4->_dataCoordinator->super;
      v4->_dataCoordinator = 0;
    }
  }

  objc_sync_exit(v4);

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_persisterHasStaleStateForVehicle:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(VGVirtualGaragePersisting *)self->_persister persistedVehicleForVehicle:v4];
  if (!v5)
  {
    v21 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412290;
      v25 = v4;
      _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_DEBUG, "_persisterHasStaleStateForVehicle: Didn't find persisted vehicle for vehicle: %@", &v24, 0xCu);
    }

    goto LABEL_8;
  }

  v6 = [v4 currentVehicleState];
  if (!v6 || (v7 = v6, [v5 currentVehicleState], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
LABEL_8:
    v20 = 1;
    goto LABEL_9;
  }

  v9 = [v4 currentVehicleState];
  v10 = [v5 currentVehicleState];
  v11 = [v9 isSignificantlyDifferentFromVehicleState:v10];

  GEOConfigGetDouble();
  v13 = v12;
  v14 = [v5 currentVehicleState];
  v15 = [v14 dateOfUpdate];
  v16 = [v4 currentVehicleState];
  v17 = [v16 dateOfUpdate];
  [v15 timeIntervalSinceDate:v17];
  v19 = fabs(v18) > v13;

  v20 = v11 | v19;
LABEL_9:

  v22 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

- (void)setShouldAssumeFullCharge:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_shouldAssumeFullCharge = a3;
  [(VGVirtualGarage *)obj _notifyObserversGarageDidUpdateVehicles];
  objc_sync_exit(obj);
}

- (id)_vehicleWithIdentifier:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  obj = &v5->super.isa;
  if (v4)
  {
    vehicles = v5->_vehicles;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__VGVirtualGarage__vehicleWithIdentifier___block_invoke;
    v31[3] = &unk_279E26A38;
    v29 = v4;
    v32 = v29;
    v7 = [(NSMutableArray *)vehicles indexOfObjectPassingTest:v31];
    if (v7 >= [(NSMutableArray *)v5->_vehicles count])
    {
      v9 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        log = v9;
        v10 = obj[1];
        v28 = v10;
        if (v10)
        {
          if ([v10 count])
          {
            v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v28, "count")}];
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v12 = v28;
            v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v13)
            {
              v14 = *v34;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v34 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v33 + 1) + 8 * i);
                  if (v16)
                  {
                    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v16];
                  }

                  else
                  {
                    v17 = @"<nil>";
                  }

                  [v11 addObject:v17];
                }

                v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
              }

              while (v13);
            }

            v18 = [v12 componentsJoinedByString:{@", "}];
            v19 = MEMORY[0x277CCACA8];
            v20 = v12;
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v20];

            v22 = [v19 stringWithFormat:@"%@ [%@]", v21, v18];
          }

          else
          {
            v23 = MEMORY[0x277CCACA8];
            v24 = v28;
            v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

            v22 = [v23 stringWithFormat:@"%@ (empty)", v11];
          }
        }

        else
        {
          v22 = @"<nil>";
        }

        *buf = 138412546;
        v38 = v29;
        v39 = 2112;
        v40 = v22;
        _os_log_impl(&dword_270EC1000, log, OS_LOG_TYPE_ERROR, "Didn't find vehicle with identifier: %@ in vehicles: %@.", buf, 0x16u);

        v9 = log;
      }

      v8 = 0;
    }

    else
    {
      v8 = [(NSMutableArray *)v5->_vehicles objectAtIndexedSubscript:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(obj);

  v25 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __42__VGVirtualGarage__vehicleWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (NSString)description
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v24 = MEMORY[0x277CCACA8];
  obj = v2;
  v3 = objc_opt_class();
  v25 = NSStringFromClass(v3);
  selectedVehicleIdentifier = v2->_selectedVehicleIdentifier;
  v4 = v2->_vehicles;
  v26 = v4;
  if (v4)
  {
    if ([(NSMutableArray *)v4 count])
    {
      v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v26, "count")}];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = v26;
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v7)
      {
        v8 = *v29;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            if (v10)
            {
              v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v10];
            }

            else
            {
              v11 = @"<nil>";
            }

            [v5 addObject:v11];
          }

          v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v7);
      }

      v12 = [(NSMutableArray *)v6 componentsJoinedByString:@", "];
      v13 = MEMORY[0x277CCACA8];
      v14 = v6;
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v14];

      v16 = [v13 stringWithFormat:@"%@ [%@]", v15, v12];
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = v26;
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@<%p>", objc_opt_class(), v18];

      v16 = [v17 stringWithFormat:@"%@ (empty)", v19];
    }
  }

  else
  {
    v16 = @"<nil>";
  }

  v20 = [v24 stringWithFormat:@"<%@:%p, \n _selectedVehicleIdentifier: %@, \n _vehicles: %@\n>", v25, obj, selectedVehicleIdentifier, v16];

  objc_sync_exit(obj);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (VGVirtualGarage)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VGVirtualGarage;
  v5 = [(VGVirtualGarage *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_vehicles"];
    vehicles = v5->_vehicles;
    v5->_vehicles = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_selectedVehicleIdentifier"];
    selectedVehicleIdentifier = v5->_selectedVehicleIdentifier;
    v5->_selectedVehicleIdentifier = v11;
  }

  return v5;
}

- (VGVirtualGarage)initWithGaragePersister:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v31.receiver = self;
    v31.super_class = VGVirtualGarage;
    v6 = [(VGVirtualGarage *)&v31 init];
    if (v6)
    {
      v7 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v33 = v6;
        v34 = 2048;
        v35 = v5;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Creating new virtualGarage: %p with persister: %p", buf, 0x16u);
      }

      objc_storeStrong(&v6->_persister, a3);
      [(VGVirtualGaragePersisting *)v6->_persister setDelegate:v6];
      v8 = [MEMORY[0x277CBEB18] array];
      vehicles = v6->_vehicles;
      v6->_vehicles = v8;

      v10 = [MEMORY[0x277CBEB18] array];
      queuedGetGarageCompletionHandlers = v6->_queuedGetGarageCompletionHandlers;
      v6->_queuedGetGarageCompletionHandlers = v10;

      global_queue = geo_get_global_queue();
      v13 = *MEMORY[0x277D0EAA0];
      v14 = *(MEMORY[0x277D0EAA0] + 8);
      _GEOConfigAddDelegateListenerForKey();

      v15 = VGGetPersistingLog();
      v16 = os_signpost_id_generate(v15);

      v17 = VGGetPersistingLog();
      v18 = v17;
      if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "LoadVehicles", "", buf, 2u);
      }

      objc_initWeak(buf, v6);
      persister = v6->_persister;
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __43__VGVirtualGarage_initWithGaragePersister___block_invoke;
      v29 = &unk_279E26A10;
      objc_copyWeak(v30, buf);
      v30[1] = v16;
      [(VGVirtualGaragePersisting *)persister loadVehiclesWithCompletion:&v26];
      v20 = [(VGVirtualGaragePersisting *)v6->_persister selectedVehicleIdentifier:v26];
      selectedVehicleIdentifier = v6->_selectedVehicleIdentifier;
      v6->_selectedVehicleIdentifier = v20;

      objc_destroyWeak(v30);
      objc_destroyWeak(buf);
    }

    self = v6;
    v22 = self;
  }

  else
  {
    v23 = VGGetAssertLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v33 = "[VGVirtualGarage initWithGaragePersister:]";
      v34 = 2082;
      v35 = "persister == nil";
      v36 = 2082;
      v37 = "Garage should be initialized with a persister.";
      _os_log_impl(&dword_270EC1000, v23, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", buf, 0x20u);
    }

    v22 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

void __43__VGVirtualGarage_initWithGaragePersister___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    v10 = VGGetPersistingLog();
    v11 = v10;
    if (v6)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v22 = 138412290;
        v23 = v6;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "Failed to load virtual garage with error: %@", &v22, 0xCu);
      }

      v12 = VGGetPersistingLog();
      v13 = v12;
      v14 = *(a1 + 40);
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        LOWORD(v22) = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v13, OS_SIGNPOST_INTERVAL_END, v14, "LoadVehicles", "", &v22, 2u);
      }

      LOBYTE(v9[6].isa) = 1;
      [v9 _updateDataCoordinatorAvailability];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_INFO, "Garage did finish loading initial vehicles.", &v22, 2u);
      }

      if (!v5)
      {
        v19 = VGGetAssertLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v22 = 136315906;
          v23 = "[VGVirtualGarage initWithGaragePersister:]_block_invoke";
          v24 = 2080;
          v25 = "VGVirtualGarage.m";
          v26 = 1024;
          v27 = 99;
          v28 = 2080;
          v29 = "vehicles != nil";
          _os_log_impl(&dword_270EC1000, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v22, 0x26u);
        }

        if (_vg_isInternalInstall())
        {
          v20 = VGGetAssertLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = [MEMORY[0x277CCACC8] callStackSymbols];
            v22 = 138412290;
            v23 = v21;
            _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_ERROR, "%@", &v22, 0xCu);
          }
        }
      }

      [v9 _forceUpdateWithVehicles:v5];
      v15 = VGGetPersistingLog();
      v16 = v15;
      v17 = *(a1 + 40);
      if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        LOWORD(v22) = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v16, OS_SIGNPOST_INTERVAL_END, v17, "LoadVehicles", "", &v22, 2u);
      }

      LOBYTE(v9[6].isa) = 1;
      [v9 _updateDataCoordinatorAvailability];
      [v9 _removeVehiclesWithUninstalledAppsIfNeeded];
    }

    [v9 _executeQueuedCompletionHandlersIfNeeded];
    objc_sync_exit(v9);
  }

  else
  {
    v9 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v22 = 136315394;
      v23 = "[VGVirtualGarage initWithGaragePersister:]_block_invoke";
      v24 = 1024;
      LODWORD(v25) = 83;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v22, 0x12u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end