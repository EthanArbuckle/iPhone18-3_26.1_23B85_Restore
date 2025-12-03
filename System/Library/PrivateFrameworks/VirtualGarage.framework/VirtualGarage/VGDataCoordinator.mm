@interface VGDataCoordinator
- (BOOL)shouldUnpairVehicle:(id)vehicle;
- (NSArray)unpairedVehicles;
- (VGDataCoordinator)initWithApplicationFinder:(id)finder externalAccessory:(id)accessory delegate:(id)delegate;
- (id)_applicationForVehicle:(id)vehicle;
- (id)_applicationRecordForVehicle:(id)vehicle;
- (id)_oemAppForChargeStreamForVehicle:(id)vehicle;
- (id)_vehicleStateProviderForVehicle:(id)vehicle;
- (id)deviceIdentifier;
- (unint64_t)_indexOfVehicleInUnpairedVehicles:(id)vehicles;
- (void)OEMAppsUpdated:(id)updated;
- (void)_invalidateRefreshTimer;
- (void)_loadAllOEMVehiclesForApps:(id)apps completion:(id)completion;
- (void)_loadIapVehicles;
- (void)_refreshStateForTrackedVehicles;
- (void)_removeUnpairedIapVehicleIfNeeded;
- (void)_saveOnboardingInfoForVehicle:(id)vehicle;
- (void)_setupTimerIfNeeded;
- (void)_startChargeStreamForVehicle:(id)vehicle;
- (void)_stopChargeStreamForVehicle:(id)vehicle;
- (void)_updateGarageWithVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices;
- (void)_updateStateOfChargeForVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices completion:(id)completion;
- (void)accessoryUpdatedWithVehicle:(id)vehicle;
- (void)dealloc;
- (void)endAllContinuousUpdates;
- (void)finishOnboardingVehicle:(id)vehicle;
- (void)forceFetchAllVehicles;
- (void)getLatestStateOfVehicle:(id)vehicle withReply:(id)reply;
- (void)startContinuousUpdatesForVehicle:(id)vehicle;
- (void)unpairVehicle:(id)vehicle;
- (void)vehicleStateUpdated:(id)updated;
@end

@implementation VGDataCoordinator

- (void)_loadIapVehicles
{
  BOOL = GEOConfigGetBOOL();
  v4 = VGGetDataCoordinatorLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (BOOL)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "_loadIapVehicles: Loading iAP2 vehicles.", buf, 2u);
    }

    accessory = self->_accessory;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __37__VGDataCoordinator__loadIapVehicles__block_invoke;
    v7[3] = &unk_279E26868;
    v7[4] = self;
    [(VGExternalAccessory *)accessory listCarsWithCompletion:v7];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_INFO, "_loadIapVehicles: iap2 onboarding is disabled. Will not load iap2 vehicles.", buf, 2u);
    }
  }
}

uint64_t __37__VGDataCoordinator__loadIapVehicles__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    [*(a1 + 32) accessoryUpdatedWithVehicle:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (NSArray)unpairedVehicles
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__VGDataCoordinator_unpairedVehicles__block_invoke;
  v5[3] = &unk_279E26928;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__VGDataCoordinator_unpairedVehicles__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)getLatestStateOfVehicle:(id)vehicle withReply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (!WeakRetained)
  {
    v15 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[VGDataCoordinator getLatestStateOfVehicle:withReply:]";
      v31 = 1024;
      LODWORD(v32) = 734;
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_ERROR, "strongDelegate went away in %s line %d", location, 0x12u);
    }

    goto LABEL_10;
  }

  vehicles = [WeakRetained vehicles];
  v11 = [vehicles containsObject:vehicleCopy];

  if ((v11 & 1) == 0)
  {
    v21 = VGGetAssertLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *location = 136315906;
      *&location[4] = "[VGDataCoordinator getLatestStateOfVehicle:withReply:]";
      v31 = 2080;
      v32 = "VGDataCoordinator.m";
      v33 = 1024;
      v34 = 736;
      v35 = 2080;
      v36 = "[strongDelegate.vehicles containsObject:vehicle]";
      _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", location, 0x26u);
    }

    if (_vg_isInternalInstall())
    {
      v22 = VGGetAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        *location = 138412290;
        *&location[4] = callStackSymbols;
        _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_ERROR, "%@", location, 0xCu);
      }
    }
  }

  vehicles2 = [v9 vehicles];
  v13 = [vehicles2 containsObject:vehicleCopy];

  if ((v13 & 1) == 0)
  {
    v16 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_impl(&dword_270EC1000, v16, OS_LOG_TYPE_ERROR, "Tried to get SoC for vehicle, that is not saved in the garage.", location, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = GEOErrorDomain();
    v28 = *MEMORY[0x277CCA450];
    v29 = @"Could not get latest state of vehicle.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v15 = [v17 errorWithDomain:v18 code:-10 userInfo:v19];

    replyCopy[2](replyCopy, vehicleCopy, v15);
LABEL_10:

    goto LABEL_11;
  }

  objc_initWeak(location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__VGDataCoordinator_getLatestStateOfVehicle_withReply___block_invoke;
  block[3] = &unk_279E26CD0;
  objc_copyWeak(&v27, location);
  v25 = vehicleCopy;
  v26 = replyCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v27);
  objc_destroyWeak(location);
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
}

void __55__VGDataCoordinator_getLatestStateOfVehicle_withReply___block_invoke(id *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _vehicleStateProviderForVehicle:a1[4]];
    v5 = VGGetDataCoordinatorLog();
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = objc_opt_class();
        v7 = v23;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "getLatestStateOfVehicle: using %@ to fetch SoC.", buf, 0xCu);
      }

      v8 = a1[4];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __55__VGDataCoordinator_getLatestStateOfVehicle_withReply___block_invoke_95;
      v16[3] = &unk_279E268B8;
      objc_copyWeak(&v19, a1 + 6);
      v17 = a1[4];
      v18 = a1[5];
      [v4 getStateOfChargeForVehicle:v8 completion:v16];

      objc_destroyWeak(&v19);
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[4];
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "getLatestStateOfVehicle: called for a vehicle (%@) that doesn't have a stateProvider. Make sure that the paired app is installed, otherwise there might be an issue in the VG logic.", buf, 0xCu);
      }

      v10 = MEMORY[0x277CCA9B8];
      v11 = GEOErrorDomain();
      v20 = *MEMORY[0x277CCA450];
      v21 = @"Could not get latest state of vehicle, because the provider was nil.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v13 = [v10 errorWithDomain:v11 code:-10 userInfo:v12];

      v14 = a1[4];
      (*(a1[5] + 2))();

      v4 = 0;
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[VGDataCoordinator getLatestStateOfVehicle:withReply:]_block_invoke";
      v24 = 1024;
      v25 = 748;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __55__VGDataCoordinator_getLatestStateOfVehicle_withReply___block_invoke_95(id *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__VGDataCoordinator_getLatestStateOfVehicle_withReply___block_invoke_96;
    v12[3] = &unk_279E26C30;
    v13 = v5;
    v14 = a1[4];
    v15 = v6;
    v16 = a1[5];
    dispatch_async(v9, v12);

    v10 = v13;
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[VGDataCoordinator getLatestStateOfVehicle:withReply:]_block_invoke";
      v19 = 1024;
      v20 = 762;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __55__VGDataCoordinator_getLatestStateOfVehicle_withReply___block_invoke_96(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) copy];
    [v2 _updateWithVehicleState:*(a1 + 32)];
    v3 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "getLatestStateOfVehicle: Fetched latest vehicle state: %@", &v10, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "getLatestStateOfVehicle: Tried to fetch SoC for %@, but failed with error: %@.", &v10, 0x16u);
    }

    v8 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)OEMAppsUpdated:(id)updated
{
  updatedCopy = updated;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__VGDataCoordinator_OEMAppsUpdated___block_invoke;
  block[3] = &unk_279E26F20;
  objc_copyWeak(&v9, &location);
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __36__VGDataCoordinator_OEMAppsUpdated___block_invoke(uint64_t a1)
{
  v1 = a1;
  v101 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 1);
    if (v4)
    {
      v5 = VGGetDataCoordinatorLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = v3[5];
        v7 = v6;
        v84 = v1;
        if (v6)
        {
          if ([v6 count])
          {
            v78 = v5;
            v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v76 = v7;
            v9 = v7;
            v10 = [v9 countByEnumeratingWithState:&v93 objects:buf count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v94;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v94 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v93 + 1) + 8 * i);
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

                  [v8 addObject:v17];
                }

                v11 = [v9 countByEnumeratingWithState:&v93 objects:buf count:16];
              }

              while (v11);
            }

            v18 = [v9 componentsJoinedByString:{@", "}];
            v19 = MEMORY[0x277CCACA8];
            v20 = v9;
            v21 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), v20];

            v22 = [v19 stringWithFormat:@"%@ [%@]", v21, v18];

            v7 = v76;
            v5 = v78;
          }

          else
          {
            v24 = MEMORY[0x277CCACA8];
            v25 = v7;
            v26 = [v24 stringWithFormat:@"%@<%p>", objc_opt_class(), v25];

            v22 = [v24 stringWithFormat:@"%@ (empty)", v26];
          }
        }

        else
        {
          v22 = @"<nil>";
        }

        v27 = v22;
        v1 = v84;
        v28 = *(v84 + 32);
        v29 = v28;
        if (v28)
        {
          if ([v28 count])
          {
            v77 = v27;
            v79 = v5;
            v81 = v4;
            v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v29, "count")}];
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v31 = v29;
            v32 = [v31 countByEnumeratingWithState:&v93 objects:buf count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v94;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v94 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = *(*(&v93 + 1) + 8 * j);
                  if (v36)
                  {
                    v37 = MEMORY[0x277CCACA8];
                    v38 = v36;
                    v39 = [v37 stringWithFormat:@"%@<%p>", objc_opt_class(), v38];
                  }

                  else
                  {
                    v39 = @"<nil>";
                  }

                  [v30 addObject:v39];
                }

                v33 = [v31 countByEnumeratingWithState:&v93 objects:buf count:16];
              }

              while (v33);
            }

            v40 = [v31 componentsJoinedByString:{@", "}];
            v41 = MEMORY[0x277CCACA8];
            v42 = v31;
            v43 = [v41 stringWithFormat:@"%@<%p>", objc_opt_class(), v42];

            v44 = [v41 stringWithFormat:@"%@ [%@]", v43, v40];

            v4 = v81;
            v27 = v77;
            v5 = v79;
          }

          else
          {
            v45 = MEMORY[0x277CCACA8];
            v46 = v29;
            v30 = [v45 stringWithFormat:@"%@<%p>", objc_opt_class(), v46];

            v44 = [v45 stringWithFormat:@"%@ (empty)", v30];
          }

          v1 = v84;
        }

        else
        {
          v44 = @"<nil>";
        }

        *buf = 138412546;
        v98 = v27;
        v99 = 2112;
        v100 = v44;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "OEMAppsUpdated, reseting unpairedVehicles, updating apps from %@ to %@.", buf, 0x16u);
      }

      objc_storeStrong(v3 + 5, *(v1 + 32));
      v47 = [v3[7] mutableCopy];
      v48 = [v3 _unpairedOEMVehicles];
      [v47 removeObjectsInArray:v48];

      objc_storeStrong(v3 + 7, v47);
      v49 = v3[3];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__VGDataCoordinator_OEMAppsUpdated___block_invoke_86;
      block[3] = &unk_279E26750;
      v90 = v4;
      v91 = v3;
      v23 = v47;
      v92 = v23;
      dispatch_async(v49, block);
      v50 = VGGetDataCoordinatorLog();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = *(v1 + 32);
        v52 = v51;
        if (v51)
        {
          v85 = v1;
          if ([v51 count])
          {
            v80 = v23;
            v82 = v4;
            v83 = v3;
            v53 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v52, "count")}];
            v93 = 0u;
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v54 = v52;
            v55 = [v54 countByEnumeratingWithState:&v93 objects:buf count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v94;
              do
              {
                for (k = 0; k != v56; ++k)
                {
                  if (*v94 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = *(*(&v93 + 1) + 8 * k);
                  if (v59)
                  {
                    v60 = MEMORY[0x277CCACA8];
                    v61 = v59;
                    v62 = [v60 stringWithFormat:@"%@<%p>", objc_opt_class(), v61];
                  }

                  else
                  {
                    v62 = @"<nil>";
                  }

                  [v53 addObject:v62];
                }

                v56 = [v54 countByEnumeratingWithState:&v93 objects:buf count:16];
              }

              while (v56);
            }

            v63 = [v54 componentsJoinedByString:{@", "}];
            v64 = MEMORY[0x277CCACA8];
            v65 = v54;
            v66 = [v64 stringWithFormat:@"%@<%p>", objc_opt_class(), v65];

            v67 = [v64 stringWithFormat:@"%@ [%@]", v66, v63];

            v4 = v82;
            v3 = v83;
            v23 = v80;
          }

          else
          {
            v68 = MEMORY[0x277CCACA8];
            v69 = v52;
            v53 = [v68 stringWithFormat:@"%@<%p>", objc_opt_class(), v69];

            v67 = [v68 stringWithFormat:@"%@ (empty)", v53];
          }

          v1 = v85;
        }

        else
        {
          v67 = @"<nil>";
        }

        *buf = 138412290;
        v98 = v67;
        _os_log_impl(&dword_270EC1000, v50, OS_LOG_TYPE_INFO, "Started pulling all vehicles for apps: %@.", buf, 0xCu);
      }

      v70 = VGGetDataCoordinatorLog();
      v71 = os_signpost_id_generate(v70);

      v72 = VGGetDataCoordinatorLog();
      v73 = v72;
      if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_270EC1000, v73, OS_SIGNPOST_INTERVAL_BEGIN, v71, "PullAllVehicles", "", buf, 2u);
      }

      v74 = *(v1 + 32);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __36__VGDataCoordinator_OEMAppsUpdated___block_invoke_87;
      v86[3] = &unk_279E26890;
      v88 = v71;
      v87 = v74;
      [v3 _loadAllOEMVehiclesForApps:v87 completion:v86];
    }

    else
    {
      v23 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v98 = "[VGDataCoordinator OEMAppsUpdated:]_block_invoke";
        v99 = 1024;
        LODWORD(v100) = 706;
        _os_log_impl(&dword_270EC1000, v23, OS_LOG_TYPE_ERROR, "strongDelegate went away in %s line %d", buf, 0x12u);
      }
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v98 = "[VGDataCoordinator OEMAppsUpdated:]_block_invoke";
      v99 = 1024;
      LODWORD(v100) = 705;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v75 = *MEMORY[0x277D85DE8];
}

uint64_t __36__VGDataCoordinator_OEMAppsUpdated___block_invoke_86(uint64_t a1)
{
  [*(a1 + 32) dataCoordinator:*(a1 + 40) didUpdateUnpairedVehicles:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 dataCoordinatorDidUpdateInstalledApps:v3];
}

void __36__VGDataCoordinator_OEMAppsUpdated___block_invoke_87(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = VGGetDataCoordinatorLog();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PullAllVehicles", "", buf, 2u);
  }

  v5 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = v6;
    if (v6)
    {
      if ([v6 count])
      {
        v26 = v5;
        v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = v7;
        v10 = [v9 countByEnumeratingWithState:&v27 objects:buf count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
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

              [v8 addObject:v17];
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:buf count:16];
          }

          while (v11);
        }

        v18 = [v9 componentsJoinedByString:{@", "}];
        v19 = MEMORY[0x277CCACA8];
        v20 = v9;
        v21 = [v19 stringWithFormat:@"%@<%p>", objc_opt_class(), v20];

        v22 = [v19 stringWithFormat:@"%@ [%@]", v21, v18];

        v5 = v26;
      }

      else
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = v7;
        v8 = [v23 stringWithFormat:@"%@<%p>", objc_opt_class(), v24];

        v22 = [v23 stringWithFormat:@"%@ (empty)", v8];
      }
    }

    else
    {
      v22 = @"<nil>";
    }

    *buf = 138412290;
    v32 = v22;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Finished pulling all vehicles for apps: %@.", buf, 0xCu);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_removeUnpairedIapVehicleIfNeeded
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_unpairedVehicles;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        iapIdentifier = [v8 iapIdentifier];

        if (iapIdentifier)
        {
          v10 = VGGetDataCoordinatorLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v19 = v8;
            _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Will remove an existing unpaired iap2 vehicle: %@", buf, 0xCu);
          }

          [(NSMutableArray *)self->_unpairedVehicles removeObject:v8];
          delegateQueue = self->_delegateQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__VGDataCoordinator__removeUnpairedIapVehicleIfNeeded__block_invoke;
          block[3] = &unk_279E267C8;
          block[4] = self;
          dispatch_async(delegateQueue, block);
          goto LABEL_14;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(&v3->super.super, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, &v3->super.super, OS_LOG_TYPE_INFO, "Haven't found any iAP2 unpaired vehicles upon disconnecting from iAP2.", buf, 2u);
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
}

void __54__VGDataCoordinator__removeUnpairedIapVehicleIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = [*(v2 + 56) copy];
  [WeakRetained dataCoordinator:v2 didUpdateUnpairedVehicles:v3];
}

- (void)accessoryUpdatedWithVehicle:(id)vehicle
{
  v16 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v6 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__VGDataCoordinator_accessoryUpdatedWithVehicle___block_invoke;
  v11[3] = &unk_279E26F20;
  objc_copyWeak(&v13, buf);
  v12 = vehicleCopy;
  v9 = vehicleCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __49__VGDataCoordinator_accessoryUpdatedWithVehicle___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 1);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 32))
      {
        BOOL = GEOConfigGetBOOL();
        v7 = VGGetDataCoordinatorLog();
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
        if (BOOL)
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "accessoryUpdatedWithVehicle: accessory did update vehicle. Will update garage", buf, 2u);
          }

          [v3 _updateGarageWithVehicle:*(a1 + 32) syncAcrossDevices:0];
          goto LABEL_35;
        }

        if (v8)
        {
          *buf = 0;
          v21 = "accessoryUpdatedWithVehicle: iAP2 onboarding is disabled. The dataCoordinator won't save the iAP2 vehicle.";
LABEL_33:
          _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, v21, buf, 2u);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

      v10 = VGGetDataCoordinatorLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "accessoryUpdatedWithVehicle: not connected to an iAP2 EV vehicle. Will remove any unpaired vehicles if possible", buf, 2u);
      }

      [v3 _removeUnpairedIapVehicleIfNeeded];
      v11 = VGGetDataCoordinatorLog();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

      if (v12)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [v5 vehicles];
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
LABEL_18:
          v17 = 0;
          while (1)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * v17);
            v19 = v3[6];
            v20 = [v18 iapIdentifier];
            LOBYTE(v19) = [v19 isConnectedToAccessoryWithIdentifier:v20];

            if (v19)
            {
              break;
            }

            if (v15 == ++v17)
            {
              v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
              if (v15)
              {
                goto LABEL_18;
              }

              goto LABEL_24;
            }
          }

          v7 = v18;

          if (!v7)
          {
            goto LABEL_31;
          }

          v22 = VGGetDataCoordinatorLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_INFO, "accessoryUpdatedWithVehicle: accessory is connected to a disambiguated non-EV accessory.", buf, 2u);
          }

          goto LABEL_34;
        }

LABEL_24:

LABEL_31:
        v7 = VGGetDataCoordinatorLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v21 = "accessoryUpdatedWithVehicle: accessory is connected to a vehicle that is not an EV and was not disambiguated. ";
          goto LABEL_33;
        }

LABEL_34:
      }
    }

    else
    {
      v9 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[VGDataCoordinator accessoryUpdatedWithVehicle:]_block_invoke";
        v31 = 1024;
        v32 = 630;
        _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "strongDelegate went away in %s line %d", buf, 0x12u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[VGDataCoordinator accessoryUpdatedWithVehicle:]_block_invoke";
      v31 = 1024;
      v32 = 629;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

LABEL_35:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)vehicleStateUpdated:(id)updated
{
  updatedCopy = updated;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__VGDataCoordinator_vehicleStateUpdated___block_invoke;
  block[3] = &unk_279E26F20;
  objc_copyWeak(&v9, &location);
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __41__VGDataCoordinator_vehicleStateUpdated___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[9];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __41__VGDataCoordinator_vehicleStateUpdated___block_invoke_85;
    v35[3] = &unk_279E26A38;
    v36 = *(a1 + 32);
    v5 = VGFilter(v4, v35);
    if ([v5 count])
    {
      v6 = [v5 firstObject];
      v7 = [v6 copy];

      v8 = VGGetDataCoordinatorLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        *buf = 138412546;
        v42 = v7;
        v43 = 2112;
        v44 = v9;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "SoC Streaming will update vehicle: %@ with state: %@", buf, 0x16u);
      }

      [v7 _updateWithVehicleState:*(a1 + 32)];
      [v3 _updateGarageWithVehicle:v7 syncAcrossDevices:0];
    }

    else
    {
      v7 = VGGetDataCoordinatorLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 32);
        v12 = [v3[9] allObjects];
        v13 = v12;
        if (v12)
        {
          if ([v12 count])
          {
            v32 = v11;
            v33 = v5;
            v34 = v3;
            v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v15 = v13;
            v16 = [v15 countByEnumeratingWithState:&v37 objects:buf count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v38;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v37 + 1) + 8 * i);
                  if (v20)
                  {
                    v21 = MEMORY[0x277CCACA8];
                    v22 = v20;
                    v23 = [v21 stringWithFormat:@"%@<%p>", objc_opt_class(), v22];
                  }

                  else
                  {
                    v23 = @"<nil>";
                  }

                  [v14 addObject:v23];
                }

                v17 = [v15 countByEnumeratingWithState:&v37 objects:buf count:16];
              }

              while (v17);
            }

            v24 = [v15 componentsJoinedByString:{@", "}];
            v25 = MEMORY[0x277CCACA8];
            v26 = v15;
            v27 = [v25 stringWithFormat:@"%@<%p>", objc_opt_class(), v26];

            v28 = [v25 stringWithFormat:@"%@ [%@]", v27, v24];

            v5 = v33;
            v3 = v34;
            v11 = v32;
          }

          else
          {
            v29 = MEMORY[0x277CCACA8];
            v30 = v13;
            v14 = [v29 stringWithFormat:@"%@<%p>", objc_opt_class(), v30];

            v28 = [v29 stringWithFormat:@"%@ (empty)", v14];
          }
        }

        else
        {
          v28 = @"<nil>";
        }

        *buf = 138412546;
        v42 = v11;
        v43 = 2112;
        v44 = v28;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_ERROR, "SoC Streaming couldn't find vehicle for state: %@ in observed vehicles: %@", buf, 0x16u);
      }
    }

    v10 = v36;
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[VGDataCoordinator vehicleStateUpdated:]_block_invoke";
      v43 = 1024;
      LODWORD(v44) = 597;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __41__VGDataCoordinator_vehicleStateUpdated___block_invoke_85(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 siriIntentsIdentifier];
  v7 = [*(a1 + 32) identifier];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

- (void)_stopChargeStreamForVehicle:(id)vehicle
{
  v10 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = [(VGDataCoordinator *)self _oemAppForChargeStreamForVehicle:vehicleCopy];
  if (v5)
  {
    v6 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = vehicleCopy;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "Will stop charge stream for vehicle: %@.", &v8, 0xCu);
    }

    [v5 stopSendingChargeUpdatesForVehicle:vehicleCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_startChargeStreamForVehicle:(id)vehicle
{
  v10 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = [(VGDataCoordinator *)self _oemAppForChargeStreamForVehicle:vehicleCopy];
  if (v5)
  {
    v6 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      v9 = vehicleCopy;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_INFO, "Will start charge stream for vehicle: %@.", &v8, 0xCu);
    }

    [v5 setChargeStreamingDelegate:self];
    [v5 startSendingChargeUpdatesForVehicle:vehicleCopy];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_oemAppForChargeStreamForVehicle:(id)vehicle
{
  v13 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  siriIntentsIdentifier = [vehicleCopy siriIntentsIdentifier];

  if (siriIntentsIdentifier)
  {
    if (GEOConfigGetBOOL())
    {
      v6 = [(VGDataCoordinator *)self _applicationForVehicle:vehicleCopy];
      if (v6)
      {
        v7 = v6;
        siriIntentsIdentifier = v7;
LABEL_11:

        goto LABEL_12;
      }

      v8 = VGGetDataCoordinatorLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = vehicleCopy;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "Couldn't modify charge stream for vehicle: %@. Underlying app was not found.", &v11, 0xCu);
      }

      v7 = 0;
    }

    else
    {
      v7 = VGGetDataCoordinatorLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_INFO, "Couldn't modify charge stream for vehicle, because EVRoutingStreamUpdatesDuringNav is false.", &v11, 2u);
      }
    }

    siriIntentsIdentifier = 0;
    goto LABEL_11;
  }

LABEL_12:

  v9 = *MEMORY[0x277D85DE8];

  return siriIntentsIdentifier;
}

- (void)_loadAllOEMVehiclesForApps:(id)apps completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  completionCopy = completion;
  v7 = dispatch_group_create();
  objc_initWeak(&location, self);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = appsCopy;
  v8 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = VGGetDataCoordinatorLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          identifier = [v11 identifier];
          *buf = 138412290;
          v35 = identifier;
          _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_INFO, "Requesting list of vehicles for %@", buf, 0xCu);
        }

        dispatch_group_enter(v7);
        v14 = VGGetDataCoordinatorLog();
        v15 = os_signpost_id_generate(v14);

        v16 = VGGetDataCoordinatorLog();
        v17 = v16;
        if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_270EC1000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "ListCars", "", buf, 2u);
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __59__VGDataCoordinator__loadAllOEMVehiclesForApps_completion___block_invoke;
        v25[3] = &unk_279E26818;
        v28[1] = v15;
        v26 = v7;
        v27 = v11;
        objc_copyWeak(v28, &location);
        [v11 listCarsWithCompletion:v25];
        objc_destroyWeak(v28);
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v8);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__VGDataCoordinator__loadAllOEMVehiclesForApps_completion___block_invoke_2;
  block[3] = &unk_279E26840;
  v24 = completionCopy;
  v19 = completionCopy;
  dispatch_group_notify(v7, workQueue, block);

  objc_destroyWeak(&location);
  v20 = *MEMORY[0x277D85DE8];
}

void __59__VGDataCoordinator__loadAllOEMVehiclesForApps_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = VGGetDataCoordinatorLog();
  v8 = v7;
  v9 = *(a1 + 56);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270EC1000, v8, OS_SIGNPOST_INTERVAL_END, v9, "ListCars", "", buf, 2u);
  }

  if (v6)
  {
    v10 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v6 description];
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "Error Listing Cars from Intents: %@", buf, 0xCu);
    }

LABEL_7:

    dispatch_group_leave(*(a1 + 32));
    goto LABEL_18;
  }

  v12 = [v5 count];
  v10 = VGGetDataCoordinatorLog();
  v13 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v12)
  {
    if (v13)
    {
      v19 = *(a1 + 40);
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Didn't receive any vehicles from %@, bailing.", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (v13)
  {
    v14 = *(a1 + 40);
    *buf = 138412546;
    v26 = v14;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "Received Vehicles from %@: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__VGDataCoordinator__loadAllOEMVehiclesForApps_completion___block_invoke_82;
    block[3] = &unk_279E26D98;
    v22 = v5;
    objc_copyWeak(&v24, (a1 + 48));
    v23 = *(a1 + 32);
    dispatch_async(v17, block);

    objc_destroyWeak(&v24);
    v18 = v22;
  }

  else
  {
    v18 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[VGDataCoordinator _loadAllOEMVehiclesForApps:completion:]_block_invoke";
      v27 = 1024;
      LODWORD(v28) = 519;
      _os_log_impl(&dword_270EC1000, v18, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __59__VGDataCoordinator__loadAllOEMVehiclesForApps_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __59__VGDataCoordinator__loadAllOEMVehiclesForApps_completion___block_invoke_82(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        if (!WeakRetained)
        {
          v10 = VGGetVirtualGarageLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v19 = "[VGDataCoordinator _loadAllOEMVehiclesForApps:completion:]_block_invoke";
            v20 = 1024;
            v21 = 522;
            _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", buf, 0x12u);
          }

          goto LABEL_13;
        }

        v9 = WeakRetained;
        dispatch_group_enter(*(a1 + 40));
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __59__VGDataCoordinator__loadAllOEMVehiclesForApps_completion___block_invoke_83;
        v12[3] = &unk_279E267C8;
        v13 = *(a1 + 40);
        [v9 _updateStateOfChargeForVehicle:v7 syncAcrossDevices:1 completion:v12];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  dispatch_group_leave(*(a1 + 40));
LABEL_13:
  v11 = *MEMORY[0x277D85DE8];
}

BOOL __41__VGDataCoordinator__unpairedOEMVehicles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pairedAppIdentifier];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 siriIntentsIdentifier];
    v4 = v5 != 0;
  }

  return v4;
}

- (id)_applicationForVehicle:(id)vehicle
{
  v20 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_applications;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        identifier = [v9 identifier];
        pairedAppIdentifier = [vehicleCopy pairedAppIdentifier];
        v12 = [identifier isEqualToString:pairedAppIdentifier];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_setupTimerIfNeeded
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_vehicleStateRefreshTimer)
  {
    [(VGDataCoordinator *)self _vehicleStateRefreshInterval];
    v4 = v3;
    v5 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 134217984;
      v10 = v4;
      _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Starting refresh timer with interval: %ld", &v9, 0xCu);
    }

    v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__refreshStateForTrackedVehicles selector:0 userInfo:1 repeats:v4];
    vehicleStateRefreshTimer = self->_vehicleStateRefreshTimer;
    self->_vehicleStateRefreshTimer = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateRefreshTimer
{
  v3 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "Invalidating refresh timer.", v5, 2u);
  }

  [(NSTimer *)self->_vehicleStateRefreshTimer invalidate];
  vehicleStateRefreshTimer = self->_vehicleStateRefreshTimer;
  self->_vehicleStateRefreshTimer = 0;
}

- (void)_refreshStateForTrackedVehicles
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__VGDataCoordinator__refreshStateForTrackedVehicles__block_invoke;
  v4[3] = &unk_279E26E88;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __52__VGDataCoordinator__refreshStateForTrackedVehicles__block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [WeakRetained[9] allObjects];
      v4 = v3;
      if (v3)
      {
        if ([v3 count])
        {
          v30 = v2;
          v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v29 = v4;
          v6 = v4;
          v7 = [v6 countByEnumeratingWithState:&v35 objects:buf count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v36;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v36 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                v11 = *(*(&v35 + 1) + 8 * i);
                if (v11)
                {
                  v12 = MEMORY[0x277CCACA8];
                  v13 = v11;
                  v14 = [v12 stringWithFormat:@"%@<%p>", objc_opt_class(), v13];
                }

                else
                {
                  v14 = @"<nil>";
                }

                [v5 addObject:v14];
              }

              v8 = [v6 countByEnumeratingWithState:&v35 objects:buf count:16];
            }

            while (v8);
          }

          v15 = [v6 componentsJoinedByString:{@", "}];
          v16 = MEMORY[0x277CCACA8];
          v17 = v6;
          v18 = [v16 stringWithFormat:@"%@<%p>", objc_opt_class(), v17];

          v19 = [v16 stringWithFormat:@"%@ [%@]", v18, v15];

          v4 = v29;
          v2 = v30;
        }

        else
        {
          v21 = MEMORY[0x277CCACA8];
          v22 = v4;
          v23 = [v21 stringWithFormat:@"%@<%p>", objc_opt_class(), v22];

          v19 = [v21 stringWithFormat:@"%@ (empty)", v23];
        }
      }

      else
      {
        v19 = @"<nil>";
      }

      *buf = 138412290;
      v41 = v19;
      _os_log_impl(&dword_270EC1000, v2, OS_LOG_TYPE_INFO, "Refresh timer ticked, pulling SoC for vehicles: %@", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = WeakRetained[9];
    v24 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v20);
          }

          [WeakRetained _updateStateOfChargeForVehicle:*(*(&v31 + 1) + 8 * j) syncAcrossDevices:1 completion:0];
        }

        v25 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v20 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "[VGDataCoordinator _refreshStateForTrackedVehicles]_block_invoke";
      v42 = 1024;
      v43 = 444;
      _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)endAllContinuousUpdates
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__VGDataCoordinator_endAllContinuousUpdates__block_invoke;
  v4[3] = &unk_279E26E88;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__VGDataCoordinator_endAllContinuousUpdates__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = WeakRetained[9];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 _stopChargeStreamForVehicle:{*(*(&v10 + 1) + 8 * i), v10}];
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [v2[9] removeAllObjects];
    [v2 _invalidateRefreshTimer];
  }

  else
  {
    v8 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[VGDataCoordinator endAllContinuousUpdates]_block_invoke";
      v17 = 1024;
      v18 = 429;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)startContinuousUpdatesForVehicle:(id)vehicle
{
  v16 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (vehicleCopy)
  {
    objc_initWeak(location, self);
    workQueue = self->_workQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__VGDataCoordinator_startContinuousUpdatesForVehicle___block_invoke;
    v8[3] = &unk_279E26F20;
    objc_copyWeak(&v10, location);
    v9 = vehicleCopy;
    dispatch_async(workQueue, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = VGGetAssertLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[VGDataCoordinator startContinuousUpdatesForVehicle:]";
      v12 = 2082;
      v13 = "vehicle == nil";
      v14 = 2082;
      v15 = "can't start continuous updates with a nil vehicle.";
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "%{public}s forbids: %{public}s. %{public}s", location, 0x20u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __54__VGDataCoordinator_startContinuousUpdatesForVehicle___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [*(WeakRetained + 9) addObject:*(a1 + 32)];
    [v3 _startChargeStreamForVehicle:*(a1 + 32)];
    if (!v3[8])
    {
      [v3 _refreshStateForTrackedVehicles];
      [v3 _setupTimerIfNeeded];
    }
  }

  else
  {
    v4 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[VGDataCoordinator startContinuousUpdatesForVehicle:]_block_invoke";
      v8 = 1024;
      v9 = 413;
      _os_log_impl(&dword_270EC1000, v4, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v6, 0x12u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)unpairVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  iapIdentifier = [vehicleCopy iapIdentifier];
  if (iapIdentifier && (v6 = iapIdentifier, [vehicleCopy pairedAppIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v13 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_270EC1000, v13, OS_LOG_TYPE_INFO, "unpairVehicle: Unpairing iAP2 only vehicle. Will reload unpaired iAP vehicles.", location, 2u);
    }

    [(VGDataCoordinator *)self _loadIapVehicles];
  }

  else
  {
    siriIntentsIdentifier = [vehicleCopy siriIntentsIdentifier];
    if (siriIntentsIdentifier && (v9 = siriIntentsIdentifier, [vehicleCopy pairedAppIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      objc_initWeak(location, self);
      workQueue = self->_workQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __35__VGDataCoordinator_unpairVehicle___block_invoke;
      v14[3] = &unk_279E26F20;
      objc_copyWeak(&v16, location);
      v15 = vehicleCopy;
      dispatch_async(workQueue, v14);

      objc_destroyWeak(&v16);
      objc_destroyWeak(location);
    }

    else
    {
      v12 = VGGetDataCoordinatorLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_INFO, "unpairVehicle: Tried to unpair a vehicle without iapIdentifier/siriIdentifier/pairedAppIdentifier -> ignoring the call.", location, 2u);
      }
    }
  }
}

void __35__VGDataCoordinator_unpairVehicle___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[5];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __35__VGDataCoordinator_unpairVehicle___block_invoke_72;
    v34[3] = &unk_279E267F0;
    v35 = *(a1 + 32);
    v5 = VGFilter(v4, v34);
    v6 = [v5 firstObject];
    v7 = VGGetDataCoordinatorLog();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v6;
        _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "unpairVehicle: will reload all vehicles for app: %@", buf, 0xCu);
      }

      v40 = v6;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
      [v3 _loadAllOEMVehiclesForApps:v8 completion:0];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = v3[5];
      v12 = v11;
      if (v11)
      {
        v33 = v11;
        if ([v11 count])
        {
          v31 = v10;
          v32 = v8;
          v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v12, "count")}];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v14 = v12;
          v15 = [v14 countByEnumeratingWithState:&v36 objects:buf count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v37;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v37 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v36 + 1) + 8 * i);
                if (v19)
                {
                  v20 = MEMORY[0x277CCACA8];
                  v21 = v19;
                  v22 = [v20 stringWithFormat:@"%@<%p>", objc_opt_class(), v21];
                }

                else
                {
                  v22 = @"<nil>";
                }

                [v13 addObject:v22];
              }

              v16 = [v14 countByEnumeratingWithState:&v36 objects:buf count:16];
            }

            while (v16);
          }

          v23 = [v14 componentsJoinedByString:{@", "}];
          v24 = MEMORY[0x277CCACA8];
          v25 = v14;
          v26 = [v24 stringWithFormat:@"%@<%p>", objc_opt_class(), v25];

          v27 = [v24 stringWithFormat:@"%@ [%@]", v26, v23];

          v8 = v32;
          v6 = 0;
          v10 = v31;
        }

        else
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = v12;
          v13 = [v28 stringWithFormat:@"%@<%p>", objc_opt_class(), v29];

          v27 = [v28 stringWithFormat:@"%@ (empty)", v13];
        }

        v12 = v33;
      }

      else
      {
        v27 = @"<nil>";
      }

      *buf = 138412546;
      v42 = v10;
      v43 = 2112;
      v44 = v27;
      _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_ERROR, "unpairVehicle: Tried to unpair a vehicle %@, but _applications didn't contain the vehicle's paired app (%@). Not adding it back to unpaired vehicles.", buf, 0x16u);
    }

    v9 = v35;
  }

  else
  {
    v9 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[VGDataCoordinator unpairVehicle:]_block_invoke";
      v43 = 1024;
      LODWORD(v44) = 383;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __35__VGDataCoordinator_unpairVehicle___block_invoke_72(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 isEnabled] && (objc_msgSend(v6, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "pairedAppIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v9))
  {
    v10 = 1;
    *a4 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_saveOnboardingInfoForVehicle:(id)vehicle
{
  v20 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  pairedAppIdentifier = [vehicleCopy pairedAppIdentifier];

  if (!pairedAppIdentifier)
  {
    headUnitIdentifier = [vehicleCopy headUnitIdentifier];
    if ([headUnitIdentifier length])
    {
    }

    else
    {
      headUnitBluetoothIdentifier = [vehicleCopy headUnitBluetoothIdentifier];
      v13 = [headUnitBluetoothIdentifier length];

      if (!v13)
      {
        v7 = VGGetDataCoordinatorLog();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v18 = 138412290;
        v19 = vehicleCopy;
        v14 = "No application associated with vehicle: %@";
        v15 = v7;
        v16 = OS_LOG_TYPE_ERROR;
        goto LABEL_12;
      }
    }

    v7 = VGGetDataCoordinatorLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v18 = 138412290;
    v19 = vehicleCopy;
    v14 = "No matching application for vehicle: %@";
    v15 = v7;
    v16 = OS_LOG_TYPE_INFO;
LABEL_12:
    _os_log_impl(&dword_270EC1000, v15, v16, v14, &v18, 0xCu);
    goto LABEL_13;
  }

  v6 = [(VGDataCoordinator *)self _applicationRecordForVehicle:vehicleCopy];
  if (v6)
  {
    v7 = v6;
    deviceIdentifier = [(VGDataCoordinator *)self deviceIdentifier];
    [vehicleCopy setPairedAppInstallDeviceIdentifier:deviceIdentifier];

    installSessionIdentifier = [v7 installSessionIdentifier];
    [vehicleCopy setPairedAppInstallSessionIdentifier:installSessionIdentifier];
  }

  else
  {
    v11 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = vehicleCopy;
      _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "Ignoring, OEM Application not installed for vehicle: %@", &v18, 0xCu);
    }

    v7 = 0;
  }

LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_applicationRecordForVehicle:(id)vehicle
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC1E70];
  vehicleCopy = vehicle;
  v5 = [v3 alloc];
  pairedAppIdentifier = [vehicleCopy pairedAppIdentifier];

  v12 = 0;
  v7 = [v5 initWithBundleIdentifier:pairedAppIdentifier allowPlaceholder:0 error:&v12];
  v8 = v12;

  if (!v7)
  {
    v9 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_ERROR, "Failed to load application record with error: %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)shouldUnpairVehicle:(id)vehicle
{
  v30 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  pairedAppIdentifier = [vehicleCopy pairedAppIdentifier];

  if (!pairedAppIdentifier)
  {
    v10 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "shouldUnpairVehicle: vehicle doesn't have a pairedAppId -> NO", &v24, 2u);
    }

    goto LABEL_12;
  }

  deviceIdentifier = [(VGDataCoordinator *)self deviceIdentifier];
  pairedAppInstallDeviceIdentifier = [vehicleCopy pairedAppInstallDeviceIdentifier];
  v8 = [deviceIdentifier isEqual:pairedAppInstallDeviceIdentifier];

  if ((v8 & 1) == 0)
  {
    v10 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      pairedAppInstallDeviceIdentifier2 = [vehicleCopy pairedAppInstallDeviceIdentifier];
      deviceIdentifier2 = [(VGDataCoordinator *)self deviceIdentifier];
      v24 = 138412546;
      v25 = pairedAppInstallDeviceIdentifier2;
      v26 = 2112;
      v27 = deviceIdentifier2;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_INFO, "shouldUnpairVehicle: this is not the primary device. vehicle.deviceId: %@, self.deviceId: %@ -> NO", &v24, 0x16u);
    }

LABEL_12:
    v14 = 0;
    goto LABEL_16;
  }

  v9 = [(VGDataCoordinator *)self _applicationRecordForVehicle:vehicleCopy];
  v10 = v9;
  if (v9)
  {
    installSessionIdentifier = [v9 installSessionIdentifier];
    pairedAppInstallSessionIdentifier = [vehicleCopy pairedAppInstallSessionIdentifier];
    v13 = [installSessionIdentifier isEqual:pairedAppInstallSessionIdentifier];
    v14 = v13 ^ 1;

    v15 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      pairedAppInstallSessionIdentifier2 = [vehicleCopy pairedAppInstallSessionIdentifier];
      installSessionIdentifier2 = [v10 installSessionIdentifier];
      v18 = @"YES";
      if (v13)
      {
        v18 = @"NO";
      }

      v19 = v18;
      v24 = 138412802;
      v25 = pairedAppInstallSessionIdentifier2;
      v26 = 2112;
      v27 = installSessionIdentifier2;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_INFO, "shouldUnpairVehicle: this is a primary device, the OEM app is installed, vehicle.installId: %@, oemApp.installId: %@ -> %@", &v24, 0x20u);
    }
  }

  else
  {
    v15 = VGGetDataCoordinatorLog();
    v14 = 1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_INFO, "shouldUnpairVehicle: this is a primary device and the OEM app is not installed -> YES", &v24, 2u);
    }
  }

LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)finishOnboardingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__VGDataCoordinator_finishOnboardingVehicle___block_invoke;
  v7[3] = &unk_279E26D98;
  objc_copyWeak(&v10, &location);
  v8 = vehicleCopy;
  selfCopy = self;
  v6 = vehicleCopy;
  dispatch_sync(workQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__VGDataCoordinator_finishOnboardingVehicle___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v6 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v40 = "[VGDataCoordinator finishOnboardingVehicle:]_block_invoke";
      v41 = 1024;
      LODWORD(v42) = 272;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }

    goto LABEL_28;
  }

  v3 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v40 = v4;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "finishOnboardingVehicle: will update and remove vehicle: %@ from unpairedVehicles.", buf, 0xCu);
  }

  [*(a1 + 40) _saveOnboardingInfoForVehicle:*(a1 + 32)];
  v5 = [WeakRetained _indexOfVehicleInUnpairedVehicles:*(a1 + 32)];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(WeakRetained + 7);
      v9 = v8;
      if (v8)
      {
        if ([v8 count])
        {
          v32 = v7;
          v33 = WeakRetained;
          v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v31 = v9;
          v11 = v9;
          v12 = [v11 countByEnumeratingWithState:&v35 objects:buf count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v36;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v36 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v35 + 1) + 8 * i);
                if (v16)
                {
                  v17 = MEMORY[0x277CCACA8];
                  v18 = v16;
                  v19 = [v17 stringWithFormat:@"%@<%p>", objc_opt_class(), v18];
                }

                else
                {
                  v19 = @"<nil>";
                }

                [v10 addObject:v19];
              }

              v13 = [v11 countByEnumeratingWithState:&v35 objects:buf count:16];
            }

            while (v13);
          }

          v20 = [v11 componentsJoinedByString:{@", "}];
          v21 = MEMORY[0x277CCACA8];
          v22 = v11;
          v23 = [v21 stringWithFormat:@"%@<%p>", objc_opt_class(), v22];

          v24 = [v21 stringWithFormat:@"%@ [%@]", v23, v20];

          WeakRetained = v33;
          v9 = v31;
          v7 = v32;
        }

        else
        {
          v28 = MEMORY[0x277CCACA8];
          v29 = v9;
          v10 = [v28 stringWithFormat:@"%@<%p>", objc_opt_class(), v29];

          v24 = [v28 stringWithFormat:@"%@ (empty)", v10];
        }
      }

      else
      {
        v24 = @"<nil>";
      }

      *buf = 138412546;
      v40 = v7;
      v41 = 2112;
      v42 = v24;
      _os_log_impl(&dword_270EC1000, v6, OS_LOG_TYPE_ERROR, "_removeUnpairedVehicle: Tried to remove unpaired vehicle: %@, but _unpairedVehicles don't contain that vehicle. %@", buf, 0x16u);
    }

LABEL_28:

    goto LABEL_29;
  }

  [*(WeakRetained + 7) removeObjectAtIndex:v5];
  v25 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = *(a1 + 32);
    *buf = 138412290;
    v40 = v26;
    _os_log_impl(&dword_270EC1000, v25, OS_LOG_TYPE_INFO, "_removeUnpairedVehicle: removed vehicle: %@ from unpairedVehicles.", buf, 0xCu);
  }

  v27 = *(WeakRetained + 3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__VGDataCoordinator_finishOnboardingVehicle___block_invoke_70;
  block[3] = &unk_279E267C8;
  block[4] = WeakRetained;
  dispatch_async(v27, block);
LABEL_29:

  v30 = *MEMORY[0x277D85DE8];
}

void __45__VGDataCoordinator_finishOnboardingVehicle___block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = [*(v2 + 56) copy];
  [WeakRetained dataCoordinator:v2 didUpdateUnpairedVehicles:v3];
}

- (id)_vehicleStateProviderForVehicle:(id)vehicle
{
  v32 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v5 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [vehicleCopy identifier];
    accessory = self->_accessory;
    v24 = 138412546;
    v25 = identifier;
    v26 = 2112;
    v27 = accessory;
    _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_DEFAULT, "Querying vehicle state provider for vehicle: %@ with accessory: %@", &v24, 0x16u);
  }

  v8 = [(VGExternalAccessory *)self->_accessory isConnectedToVehicle:vehicleCopy];
  v9 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 67109120;
    LODWORD(v25) = v8;
    _os_log_impl(&dword_270EC1000, v9, OS_LOG_TYPE_DEFAULT, "Is accessory connected to vehicle: %d", &v24, 8u);
  }

  if (v8)
  {
    v10 = self->_accessory;
  }

  else
  {
    v10 = [(VGDataCoordinator *)self _applicationForVehicle:vehicleCopy];
  }

  v11 = v10;
  v12 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412290;
    v25 = v11;
    _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_DEFAULT, "Found state provider: %@", &v24, 0xCu);
  }

  if (v11)
  {
    v13 = &selRef_virtualGarageForceFetchAllVehicles;
    if (([(VGExternalAccessory *)v11 conformsToProtocol:&unk_2880E81F0]& 1) == 0)
    {
      v21 = VGGetAssertLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = 136315906;
        v25 = "[VGDataCoordinator _vehicleStateProviderForVehicle:]";
        v26 = 2080;
        v27 = "VGDataCoordinator.m";
        v28 = 1024;
        v29 = 252;
        v30 = 2080;
        v31 = "!vehicleStateProvider || [vehicleStateProvider conformsToProtocol:@protocol(VGVehicleStateProviding)]";
        _os_log_impl(&dword_270EC1000, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v24, 0x26u);
      }

      if (_vg_isInternalInstall())
      {
        v22 = VGGetAssertLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v24 = 138412290;
          v25 = callStackSymbols;
          _os_log_impl(&dword_270EC1000, v22, OS_LOG_TYPE_ERROR, "%@", &v24, 0xCu);

          v13 = &selRef_virtualGarageForceFetchAllVehicles;
        }
      }
    }

    if (([(VGExternalAccessory *)v11 conformsToProtocol:v13[138]]& 1) != 0)
    {
      v14 = v11;
      goto LABEL_20;
    }

    v15 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      identifier2 = NSStringFromClass(v18);
      v24 = 138412290;
      v25 = identifier2;
      v17 = "vehicleStateProvider: %@ does not conform to VGVehicleStateProviding";
      goto LABEL_18;
    }
  }

  else
  {
    v15 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [vehicleCopy identifier];
      v24 = 138412290;
      v25 = identifier2;
      v17 = "vehicleStateProvider: failed to get vehicle state provider for vehicle: %@";
LABEL_18:
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_ERROR, v17, &v24, 0xCu);
    }
  }

  v14 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (unint64_t)_indexOfVehicleInUnpairedVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  unpairedVehicles = self->_unpairedVehicles;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__VGDataCoordinator__indexOfVehicleInUnpairedVehicles___block_invoke;
  v9[3] = &unk_279E26A38;
  v10 = vehiclesCopy;
  v6 = vehiclesCopy;
  v7 = [(NSMutableArray *)unpairedVehicles indexOfObjectPassingTest:v9];

  return v7;
}

- (void)_updateStateOfChargeForVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_17;
  }

  v10 = MEMORY[0x2743B8310](completionCopy);
  v11 = [(VGDataCoordinator *)self _vehicleStateProviderForVehicle:vehicleCopy];
  v12 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138412546;
    v24 = v14;
    v25 = 2112;
    v26 = vehicleCopy;
    _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_INFO, "Will update SoC using %@ for vehicle: %@.", buf, 0x16u);
  }

  if (v11)
  {
    objc_initWeak(buf, self);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __81__VGDataCoordinator__updateStateOfChargeForVehicle_syncAcrossDevices_completion___block_invoke_18;
    v17[3] = &unk_279E267A0;
    objc_copyWeak(&v21, buf);
    v18 = vehicleCopy;
    v20 = v10;
    v19 = v11;
    devicesCopy = devices;
    [v19 getStateOfChargeForVehicle:v18 completion:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = vehicleCopy;
      _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_INFO, "Couldn't update SoC for vehicle: %@, because there was no source.", buf, 0xCu);
    }

    v10[2](v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __81__VGDataCoordinator__updateStateOfChargeForVehicle_syncAcrossDevices_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__VGDataCoordinator__updateStateOfChargeForVehicle_syncAcrossDevices_completion___block_invoke_19;
    block[3] = &unk_279E26778;
    objc_copyWeak(&v18, (a1 + 56));
    v13 = v5;
    v14 = *(a1 + 32);
    v15 = v6;
    v17 = *(a1 + 48);
    v16 = *(a1 + 40);
    v19 = *(a1 + 64);
    dispatch_async(v9, block);

    objc_destroyWeak(&v18);
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[VGDataCoordinator _updateStateOfChargeForVehicle:syncAcrossDevices:completion:]_block_invoke";
      v22 = 1024;
      v23 = 218;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", buf, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __81__VGDataCoordinator__updateStateOfChargeForVehicle_syncAcrossDevices_completion___block_invoke_19(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = VGGetDataCoordinatorLog();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 56);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = *(a1 + 32);
        v14 = 138412546;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_INFO, "Received vehicleState and will update vehicle. Source: %@ state: %@.", &v14, 0x16u);
      }

      [*(a1 + 40) _updateWithVehicleState:*(a1 + 32)];
      [WeakRetained _updateGarageWithVehicle:*(a1 + 40) syncAcrossDevices:*(a1 + 80)];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v14 = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_270EC1000, v5, OS_LOG_TYPE_ERROR, "Failed to get vehicleState for vehicle: %@. error: %@", &v14, 0x16u);
      }
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v10 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[VGDataCoordinator _updateStateOfChargeForVehicle:syncAcrossDevices:completion:]_block_invoke";
      v16 = 1024;
      LODWORD(v17) = 220;
      _os_log_impl(&dword_270EC1000, v10, OS_LOG_TYPE_ERROR, "strongSelf2 went away in %s line %d", &v14, 0x12u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateGarageWithVehicle:(id)vehicle syncAcrossDevices:(BOOL)devices
{
  v99 = *MEMORY[0x277D85DE8];
  vehicleCopy = vehicle;
  v8 = VGGetVirtualGarageLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412290;
    v92 = v9;
    _os_log_impl(&dword_270EC1000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  if (vehicleCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = WeakRetained;
    if (!WeakRetained)
    {
      v17 = VGGetVirtualGarageLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v92 = "[VGDataCoordinator _updateGarageWithVehicle:syncAcrossDevices:]";
        v93 = 1024;
        LODWORD(v94) = 147;
        _os_log_impl(&dword_270EC1000, v17, OS_LOG_TYPE_ERROR, "strongDelegate went away in %s line %d", buf, 0x12u);
      }

      v14 = vehicleCopy;
      goto LABEL_29;
    }

    v86 = vehicleCopy;
    vehicles = [WeakRetained vehicles];
    v13 = [VGVehicleDeduper actionForAddingNewVehicle:&v86 withExistingGarageVehicles:vehicles andUnpairedVehicles:self->_unpairedVehicles];
    v14 = v86;

    if (v13 <= 1)
    {
      if (!v13)
      {
        v17 = VGGetDataCoordinatorLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_270EC1000, v17, OS_LOG_TYPE_INFO, "_updateGarageWithVehicle: No action to update the garage with.", buf, 2u);
        }

        goto LABEL_29;
      }

      if (v13 == 1)
      {
        v15 = VGGetDataCoordinatorLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v92 = v14;
          _os_log_impl(&dword_270EC1000, v15, OS_LOG_TYPE_INFO, "_updateGarageWithVehicle: Updating a vehicle in VG :%@.", buf, 0xCu);
        }

        delegateQueue = self->_delegateQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __64__VGDataCoordinator__updateGarageWithVehicle_syncAcrossDevices___block_invoke;
        block[3] = &unk_279E26728;
        v82 = v11;
        selfCopy = self;
        v14 = v14;
        v84 = v14;
        devicesCopy = devices;
        dispatch_async(delegateQueue, block);

        v17 = v82;
        goto LABEL_29;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (v13 == 2)
    {
      if ([(VGDataCoordinator *)self _indexOfVehicleInUnpairedVehicles:v14]== 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = VGGetDataCoordinatorLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v92 = v14;
          _os_log_impl(&dword_270EC1000, v25, OS_LOG_TYPE_INFO, "_updateGarageWithVehicle: Found a new vehicle. Saving vehicle in dataCoordinator until it's onboarded through UI. Vehicle: :%@.", buf, 0xCu);
        }

        [(NSMutableArray *)self->_unpairedVehicles addObject:v14];
        v26 = [(NSMutableArray *)self->_unpairedVehicles copy];
        v27 = self->_delegateQueue;
        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = __64__VGDataCoordinator__updateGarageWithVehicle_syncAcrossDevices___block_invoke_15;
        v73[3] = &unk_279E26750;
        v74 = v11;
        selfCopy2 = self;
        v76 = v26;
        v17 = v26;
        dispatch_async(v27, v73);

        v24 = v74;
        goto LABEL_28;
      }

      selfCopy3 = self;
      v48 = VGGetAssertLog();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v92 = "[VGDataCoordinator _updateGarageWithVehicle:syncAcrossDevices:]";
        v93 = 2080;
        v94 = "VGDataCoordinator.m";
        v95 = 1024;
        v96 = 181;
        v97 = 2080;
        v98 = "indexOfExistingUnpairedVehicle == NSNotFound";
        _os_log_impl(&dword_270EC1000, v48, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (_vg_isInternalInstall())
      {
        v49 = VGGetAssertLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138412290;
          v92 = callStackSymbols;
          _os_log_impl(&dword_270EC1000, v49, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v17 = VGGetDataCoordinatorLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      v70 = selfCopy3->_unpairedVehicles;
      if (v70)
      {
        if ([(NSMutableArray *)v70 count])
        {
          v51 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v70, "count")}];
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          obja = v70;
          v52 = [(NSMutableArray *)obja countByEnumeratingWithState:&v87 objects:buf count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v88;
            do
            {
              for (i = 0; i != v53; ++i)
              {
                if (*v88 != v54)
                {
                  objc_enumerationMutation(obja);
                }

                v56 = *(*(&v87 + 1) + 8 * i);
                if (v56)
                {
                  v57 = MEMORY[0x277CCACA8];
                  v58 = v56;
                  v59 = [v57 stringWithFormat:@"%@<%p>", objc_opt_class(), v58];
                }

                else
                {
                  v59 = @"<nil>";
                }

                [v51 addObject:v59];
              }

              v53 = [(NSMutableArray *)obja countByEnumeratingWithState:&v87 objects:buf count:16];
            }

            while (v53);
          }

          v60 = [(NSMutableArray *)obja componentsJoinedByString:@", "];
          v61 = MEMORY[0x277CCACA8];
          v62 = obja;
          v63 = [v61 stringWithFormat:@"%@<%p>", objc_opt_class(), v62];

          v46 = [v61 stringWithFormat:@"%@ [%@]", v63, v60];
        }

        else
        {
          v67 = MEMORY[0x277CCACA8];
          v68 = v70;
          v51 = [v67 stringWithFormat:@"%@<%p>", objc_opt_class(), v68];

          v46 = [v67 stringWithFormat:@"%@ (empty)", v51];
        }
      }

      else
      {
        v46 = @"<nil>";
      }

      *buf = 138412546;
      v92 = v46;
      v93 = 2112;
      v94 = v14;
      v66 = "_updateGarageWithVehicle: Tried to add unpaired vehicle, but it already exists in the array: %@, vehicle: %@";
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_30;
      }

      v18 = [(VGDataCoordinator *)self _indexOfVehicleInUnpairedVehicles:v14];
      if (v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = v18;
        v20 = VGGetDataCoordinatorLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [(NSMutableArray *)self->_unpairedVehicles objectAtIndexedSubscript:v19];
          *buf = 138412546;
          v92 = v21;
          v93 = 2112;
          v94 = v14;
          _os_log_impl(&dword_270EC1000, v20, OS_LOG_TYPE_INFO, "_updateGarageWithVehicle: Replacing an upaired vehicle with an updated one. existing vehicle: %@, updated vehicle: %@", buf, 0x16u);
        }

        [(NSMutableArray *)self->_unpairedVehicles replaceObjectAtIndex:v19 withObject:v14];
        v22 = [(NSMutableArray *)self->_unpairedVehicles copy];
        v23 = self->_delegateQueue;
        v77[0] = MEMORY[0x277D85DD0];
        v77[1] = 3221225472;
        v77[2] = __64__VGDataCoordinator__updateGarageWithVehicle_syncAcrossDevices___block_invoke_13;
        v77[3] = &unk_279E26750;
        v78 = v11;
        selfCopy4 = self;
        v80 = v22;
        v17 = v22;
        dispatch_async(v23, v77);

        v24 = v78;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      selfCopy5 = self;
      v30 = VGGetAssertLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v92 = "[VGDataCoordinator _updateGarageWithVehicle:syncAcrossDevices:]";
        v93 = 2080;
        v94 = "VGDataCoordinator.m";
        v95 = 1024;
        v96 = 165;
        v97 = 2080;
        v98 = "indexOfExistingUnpairedVehicle != NSNotFound";
        _os_log_impl(&dword_270EC1000, v30, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (_vg_isInternalInstall())
      {
        v31 = VGGetAssertLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138412290;
          v92 = callStackSymbols2;
          _os_log_impl(&dword_270EC1000, v31, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v17 = VGGetDataCoordinatorLog();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      v69 = selfCopy5->_unpairedVehicles;
      if (v69)
      {
        if ([(NSMutableArray *)v69 count])
        {
          v33 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](v69, "count")}];
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          obj = v69;
          v34 = [(NSMutableArray *)obj countByEnumeratingWithState:&v87 objects:buf count:16];
          if (v34)
          {
            v35 = v34;
            v36 = *v88;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v88 != v36)
                {
                  objc_enumerationMutation(obj);
                }

                v38 = *(*(&v87 + 1) + 8 * j);
                if (v38)
                {
                  v39 = MEMORY[0x277CCACA8];
                  v40 = v38;
                  v41 = [v39 stringWithFormat:@"%@<%p>", objc_opt_class(), v40];
                }

                else
                {
                  v41 = @"<nil>";
                }

                [v33 addObject:v41];
              }

              v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v87 objects:buf count:16];
            }

            while (v35);
          }

          v42 = [(NSMutableArray *)obj componentsJoinedByString:@", "];
          v43 = MEMORY[0x277CCACA8];
          v44 = obj;
          v45 = [v43 stringWithFormat:@"%@<%p>", objc_opt_class(), v44];

          v46 = [v43 stringWithFormat:@"%@ [%@]", v45, v42];
        }

        else
        {
          v64 = MEMORY[0x277CCACA8];
          v65 = v69;
          v33 = [v64 stringWithFormat:@"%@<%p>", objc_opt_class(), v65];

          v46 = [v64 stringWithFormat:@"%@ (empty)", v33];
        }
      }

      else
      {
        v46 = @"<nil>";
      }

      *buf = 138412546;
      v92 = v46;
      v93 = 2112;
      v94 = v14;
      v66 = "_updateGarageWithVehicle: didn't find an unpaired vehicle to update in _unpairedVehicles array: %@, vehicle: %@";
    }

    _os_log_impl(&dword_270EC1000, v17, OS_LOG_TYPE_FAULT, v66, buf, 0x16u);

    goto LABEL_29;
  }

  v14 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_270EC1000, v14, OS_LOG_TYPE_INFO, "_updateGarageWithState: tried to update garage with a nil vehicle. No action for the DataCoordinator.", buf, 2u);
  }

LABEL_31:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)forceFetchAllVehicles
{
  v3 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_INFO, "forceFetchAllVehicles: will reload all SI and iAP2 vehicles", buf, 2u);
  }

  [(VGDataCoordinator *)self _loadIapVehicles];
  [(VGOEMApplicationFinding *)self->_applicationFinder findOEMApplications];
  objc_initWeak(buf, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__VGDataCoordinator_forceFetchAllVehicles__block_invoke;
  block[3] = &unk_279E26E88;
  objc_copyWeak(&v6, buf);
  dispatch_async(workQueue, block);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __42__VGDataCoordinator_forceFetchAllVehicles__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _loadAllOEMVehiclesForApps:WeakRetained[5] completion:&__block_literal_global_368];
  }

  else
  {
    v3 = VGGetVirtualGarageLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[VGDataCoordinator forceFetchAllVehicles]_block_invoke";
      v7 = 1024;
      v8 = 128;
      _os_log_impl(&dword_270EC1000, v3, OS_LOG_TYPE_ERROR, "strongSelf went away in %s line %d", &v5, 0x12u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __42__VGDataCoordinator_forceFetchAllVehicles__block_invoke_10()
{
  v0 = VGGetDataCoordinatorLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_270EC1000, v0, OS_LOG_TYPE_INFO, "forceFetchAllVehicles: finished reloading vehicles", v1, 2u);
  }
}

- (id)deviceIdentifier
{
  v22 = *MEMORY[0x277D85DE8];
  deviceIdentifier = self->_deviceIdentifier;
  if (!deviceIdentifier)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    deviceIdentifierForVendor = [defaultWorkspace deviceIdentifierForVendor];
    uUIDString = [deviceIdentifierForVendor UUIDString];

    if (!uUIDString)
    {
      v11 = VGGetAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315906;
        v15 = "[VGDataCoordinator deviceIdentifier]";
        v16 = 2080;
        v17 = "VGDataCoordinator.m";
        v18 = 1024;
        v19 = 104;
        v20 = 2080;
        v21 = "uniqueDeviceID";
        _os_log_impl(&dword_270EC1000, v11, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v14, 0x26u);
      }

      if (_vg_isInternalInstall())
      {
        v12 = VGGetAssertLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v14 = 138412290;
          v15 = callStackSymbols;
          _os_log_impl(&dword_270EC1000, v12, OS_LOG_TYPE_ERROR, "%@", &v14, 0xCu);
        }
      }
    }

    v7 = VGGetDataCoordinatorLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = uUIDString;
      _os_log_impl(&dword_270EC1000, v7, OS_LOG_TYPE_DEFAULT, "loaded device identifier as: %@", &v14, 0xCu);
    }

    v8 = self->_deviceIdentifier;
    self->_deviceIdentifier = uUIDString;

    deviceIdentifier = self->_deviceIdentifier;
  }

  v9 = *MEMORY[0x277D85DE8];

  return deviceIdentifier;
}

- (void)dealloc
{
  [(VGDataCoordinator *)self _invalidateRefreshTimer];
  v3.receiver = self;
  v3.super_class = VGDataCoordinator;
  [(VGDataCoordinator *)&v3 dealloc];
}

- (VGDataCoordinator)initWithApplicationFinder:(id)finder externalAccessory:(id)accessory delegate:(id)delegate
{
  finderCopy = finder;
  accessoryCopy = accessory;
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = VGDataCoordinator;
  v12 = [(VGDataCoordinator *)&v24 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("VGDataCoordinator.WorkQueue", v13);
    workQueue = v12->_workQueue;
    v12->_workQueue = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("VGDataCoordinator.DelegateQueue", v16);
    delegateQueue = v12->_delegateQueue;
    v12->_delegateQueue = v17;

    objc_storeWeak(&v12->_delegate, delegateCopy);
    array = [MEMORY[0x277CBEB18] array];
    unpairedVehicles = v12->_unpairedVehicles;
    v12->_unpairedVehicles = array;

    v21 = [MEMORY[0x277CBEB58] set];
    observedVehicles = v12->_observedVehicles;
    v12->_observedVehicles = v21;

    objc_storeStrong(&v12->_applicationFinder, finder);
    [(VGOEMApplicationFinding *)v12->_applicationFinder setDelegate:v12];
    [(VGOEMApplicationFinding *)v12->_applicationFinder findOEMApplications];
    objc_storeStrong(&v12->_accessory, accessory);
    [(VGExternalAccessory *)v12->_accessory setAccessoryUpdateDelegate:v12];
    [(VGDataCoordinator *)v12 _loadIapVehicles];
  }

  return v12;
}

@end