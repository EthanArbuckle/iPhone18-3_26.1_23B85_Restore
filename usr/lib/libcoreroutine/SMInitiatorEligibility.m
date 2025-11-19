@interface SMInitiatorEligibility
+ (BOOL)checkAirplaneModeEnabledWithQueue:(id)a3;
+ (BOOL)checkCellularDataEnabledWithQueue:(id)a3;
+ (BOOL)checkCellularWatchToggleEnabledWithQueue:(id)a3;
+ (BOOL)checkDevicePlatformEnabled;
+ (BOOL)checkHasSimWithQueue:(id)a3;
+ (BOOL)checkIsInternalInstall;
+ (BOOL)checkRegulatoryDomainPassedWithQueue:(id)a3;
+ (BOOL)deviceHasBaseband;
+ (BOOL)shouldSkipCellularEligibilityCheckWithEffectivePairedDevice:(id)a3 handoffType:(int64_t)a4 defaultsManager:(id)a5;
+ (id)_getRegulatoryDomainCountryCodes;
+ (int64_t)cellularEligibilityFailureStatusForPlatform:(id)a3;
+ (void)checkCellularEnabledWithQueue:(id)a3 handler:(id)a4;
+ (void)checkIMessageAccountEnabledWithQueue:(id)a3 handler:(id)a4;
+ (void)checkInitiatorEligibilityWithQueue:(id)a3 authorizationManager:(id)a4 effectivePairedDevice:(id)a5 handoffType:(int64_t)a6 defaultsManager:(id)a7 platform:(id)a8 appDeletionManager:(id)a9 handler:(id)a10;
+ (void)checkLocationAuthorizationWithQueue:(id)a3 handler:(id)a4;
+ (void)checkManateeEnabledWithQueue:(id)a3 handler:(id)a4;
+ (void)checkNetworkReachabilityWithQueue:(id)a3 handler:(id)a4;
@end

@implementation SMInitiatorEligibility

+ (BOOL)checkIsInternalInstall
{
  v2 = +[RTPlatform currentPlatform];
  v3 = [v2 internalInstall];

  return v3;
}

+ (BOOL)checkDevicePlatformEnabled
{
  v2 = +[RTPlatform currentPlatform];
  v3 = ([v2 iPhoneDevice] & 1) != 0 || objc_msgSend(MEMORY[0x277D4AAE0], "zelkovaOnWatchEnabled") && (objc_msgSend(v2, "watchPlatform") & 1) != 0;

  return v3;
}

+ (id)_getRegulatoryDomainCountryCodes
{
  v4[1] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D4AAE0] zelkovaKoreaEnabled])
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4[0] = *MEMORY[0x277D4AD50];
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  }

  return v2;
}

+ (void)checkInitiatorEligibilityWithQueue:(id)a3 authorizationManager:(id)a4 effectivePairedDevice:(id)a5 handoffType:(int64_t)a6 defaultsManager:(id)a7 platform:(id)a8 appDeletionManager:(id)a9 handler:(id)a10
{
  v54 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  if (!v14)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v52 = 136315394;
      *&v52[4] = "+[SMInitiatorEligibility checkInitiatorEligibilityWithQueue:authorizationManager:effectivePairedDevice:handoffType:defaultsManager:platform:appDeletionManager:handler:]";
      *&v52[12] = 1024;
      *&v52[14] = 64;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue (in %s:%d)", v52, 0x12u);
    }
  }

  if (!v15)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v52 = 136315394;
      *&v52[4] = "+[SMInitiatorEligibility checkInitiatorEligibilityWithQueue:authorizationManager:effectivePairedDevice:handoffType:defaultsManager:platform:appDeletionManager:handler:]";
      *&v52[12] = 1024;
      *&v52[14] = 65;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: authorizationManager (in %s:%d)", v52, 0x12u);
    }
  }

  if (!v20)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v52 = 136315394;
      *&v52[4] = "+[SMInitiatorEligibility checkInitiatorEligibilityWithQueue:authorizationManager:effectivePairedDevice:handoffType:defaultsManager:platform:appDeletionManager:handler:]";
      *&v52[12] = 1024;
      *&v52[14] = 66;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v52, 0x12u);
    }
  }

  *v52 = 0;
  *&v52[8] = v52;
  *&v52[16] = 0x2020000000;
  v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v25 = os_signpost_id_generate(v24);

  v53 = v25;
  v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v27 = v26;
  v28 = *(*&v52[8] + 24);
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v28, "SMCheckInitiatorEligibility", " enableTelemetry=YES ", buf, 2u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke;
  aBlock[3] = &unk_2788CDE08;
  v49 = v20;
  v50 = v52;
  v37 = v20;
  v29 = _Block_copy(aBlock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_38;
  block[3] = &unk_2788CDE80;
  v40 = v19;
  v41 = v15;
  v42 = v14;
  v43 = v16;
  v46 = v29;
  v47 = a6;
  v44 = v17;
  v45 = v18;
  v30 = v18;
  v31 = v17;
  v32 = v16;
  v33 = v14;
  v34 = v15;
  v35 = v29;
  v36 = v19;
  dispatch_async(v33, block);

  _Block_object_dispose(v52, 8);
}

void __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v7 = v6;
  v8 = *(*(*(a1 + 40) + 8) + 24);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = 134349312;
    v10 = a2 == 1;
    v11 = 2050;
    v12 = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_2304B3000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SMCheckInitiatorEligibility", " enableTelemetry=YES {initiatorEligibility:error:%{public,signpost.telemetry:number1}ld, error:%{public,signpost.telemetry:number2}ld}", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

void __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_38(uint64_t a1)
{
  if ([*(a1 + 32) isMessagesAppInstalled])
  {
    if (+[SMInitiatorEligibility checkDevicePlatformEnabled])
    {
      if ([SMInitiatorEligibility checkLocationServicesEnabledWithAuthorizationManager:*(a1 + 40)])
      {
        if ([SMInitiatorEligibility checkRegulatoryDomainPassedWithQueue:*(a1 + 48)])
        {
          v42[0] = 0;
          v42[1] = v42;
          v42[2] = 0x2020000000;
          v43 = 0;
          v2 = dispatch_group_create();
          dispatch_group_enter(v2);
          v3 = *(a1 + 48);
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_2;
          v38[3] = &unk_2788CDE30;
          v41 = v42;
          v40 = *(a1 + 80);
          v4 = v2;
          v39 = v4;
          [SMInitiatorEligibility checkNetworkReachabilityWithQueue:v3 handler:v38];
          dispatch_group_enter(v4);
          v5 = *(a1 + 48);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_46;
          v34[3] = &unk_2788CDE30;
          v37 = v42;
          v36 = *(a1 + 80);
          v6 = v4;
          v35 = v6;
          [SMInitiatorEligibility checkIMessageAccountEnabledWithQueue:v5 handler:v34];
          dispatch_group_enter(v6);
          v7 = *(a1 + 48);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_47;
          v30[3] = &unk_2788CDE30;
          v33 = v42;
          v32 = *(a1 + 80);
          v8 = v6;
          v31 = v8;
          [SMInitiatorEligibility checkLocationAuthorizationWithQueue:v7 handler:v30];
          dispatch_group_enter(v8);
          v9 = *(a1 + 48);
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_48;
          v26[3] = &unk_2788CDE30;
          v29 = v42;
          v28 = *(a1 + 80);
          v10 = v8;
          v27 = v10;
          [SMInitiatorEligibility checkManateeEnabledWithQueue:v9 handler:v26];
          if ([SMInitiatorEligibility shouldSkipCellularEligibilityCheckWithEffectivePairedDevice:*(a1 + 56) handoffType:*(a1 + 88) defaultsManager:*(a1 + 64)])
          {
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
LABEL_18:
              v14 = *(a1 + 48);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_50;
              block[3] = &unk_2788C5380;
              v17 = v10;
              v19 = v42;
              v18 = *(a1 + 80);
              v15 = v10;
              dispatch_group_notify(v15, v14, block);

              _Block_object_dispose(v42, 8);
              return;
            }

            v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Initiator Eligibility, skipping cellular eligibility checks", buf, 2u);
            }
          }

          else
          {
            dispatch_group_enter(v10);
            v13 = *(a1 + 48);
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_49;
            v21[3] = &unk_2788CDE58;
            v25 = v42;
            v22 = *(a1 + 72);
            v24 = *(a1 + 80);
            v23 = v10;
            [SMInitiatorEligibility checkCellularEnabledWithQueue:v13 handler:v21];

            v11 = v22;
          }

          goto LABEL_18;
        }

        v12 = *(*(a1 + 80) + 16);
      }

      else
      {
        v12 = *(*(a1 + 80) + 16);
      }
    }

    else
    {
      v12 = *(*(a1 + 80) + 16);
    }
  }

  else
  {
    v12 = *(*(a1 + 80) + 16);
  }

  v12();
}

void __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Initiator Eligibility, check network reachability, %@, error, %@", &v10, 0x16u);
    }
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if ((v8 & 1) == 0)
  {
    v9 = *(*(a1 + 48) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      (*(*(a1 + 40) + 16))();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_46(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Initiator Eligibility, check completed for iMessages account, %@, error, %@", &v10, 0x16u);
    }
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if ((v8 & 1) == 0)
  {
    v9 = *(*(a1 + 48) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      (*(*(a1 + 40) + 16))();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_47(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Initiator Eligibility, check completed for system service, %@, error, %@", &v10, 0x16u);
    }
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if ((v8 & 1) == 0)
  {
    v9 = *(*(a1 + 48) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      (*(*(a1 + 40) + 16))();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_48(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Initiator Eligibility, check completed for Manatee, %@, error, %@", &v10, 0x16u);
    }
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if ((v8 & 1) == 0)
  {
    v9 = *(*(a1 + 48) + 8);
    if ((*(v9 + 24) & 1) == 0)
    {
      *(v9 + 24) = 1;
      (*(*(a1 + 40) + 16))();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_49(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Initiator Eligibility, check cellular eligibility %@, error, %@", &v11, 0x16u);
    }
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2;
  }

  if ((v8 & 1) == 0 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    [SMInitiatorEligibility cellularEligibilityFailureStatusForPlatform:*(a1 + 32)];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = initiatorEligiblityStatusToString();
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Initiator Eligibility, cellular eligbility failure status: %@", &v11, 0xCu);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    (*(*(a1 + 48) + 16))();
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __168__SMInitiatorEligibility_checkInitiatorEligibilityWithQueue_authorizationManager_effectivePairedDevice_handoffType_defaultsManager_platform_appDeletionManager_handler___block_invoke_50(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v3 = 0;
        _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Initiator Eligibility, all checks passed", v3, 2u);
      }
    }

    return (*(*(v1 + 40) + 16))();
  }

  return result;
}

+ (BOOL)shouldSkipCellularEligibilityCheckWithEffectivePairedDevice:(id)a3 handoffType:(int64_t)a4 defaultsManager:(id)a5
{
  v5 = a5;
  if (+[SMInitiatorEligibility checkIsInternalInstall](SMInitiatorEligibility, "checkIsInternalInstall") && ([v5 objectForKey:@"SMDefaultsInitiatorEligibilitySkipCellularCheck" value:MEMORY[0x277CBEC28]], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v7))
  {
    v8 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "Initiator Eligibility, skipping cellular eligibility check due to defaults", v11, 2u);
      }

      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (int64_t)cellularEligibilityFailureStatusForPlatform:(id)a3
{
  v3 = a3;
  if ([v3 watchPlatform])
  {
    if (+[SMInitiatorEligibility deviceHasBaseband])
    {
      if ([v3 isTinkerPaired])
      {
        v4 = 5;
      }

      else
      {
        v4 = 12;
      }
    }

    else
    {
      v4 = 11;
    }
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

+ (BOOL)deviceHasBaseband
{
  if (qword_2814A7D58 != -1)
  {
    dispatch_once(&qword_2814A7D58, &__block_literal_global_89);
  }

  return _MergedGlobals_118;
}

uint64_t __43__SMInitiatorEligibility_deviceHasBaseband__block_invoke()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_118 = result;
  return result;
}

+ (void)checkCellularEnabledWithQueue:(id)a3 handler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[SMInitiatorEligibility checkCellularEnabledWithQueue:handler:]";
      v15 = 1024;
      v16 = 262;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__SMInitiatorEligibility_checkCellularEnabledWithQueue_handler___block_invoke;
  v10[3] = &unk_2788C4938;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v9, v10);
}

uint64_t __64__SMInitiatorEligibility_checkCellularEnabledWithQueue_handler___block_invoke(uint64_t a1)
{
  if ([SMInitiatorEligibility checkHasSimWithQueue:*(a1 + 32)])
  {
    [SMInitiatorEligibility checkCellularDataEnabledWithQueue:*(a1 + 32)];
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (BOOL)checkHasSimWithQueue:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC37B0];
  v4 = a3;
  v5 = [[v3 alloc] initWithQueue:v4];

  v20 = 0;
  v6 = [v5 getCurrentDataSubscriptionContextSync:&v20];
  v7 = v20;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v9 = v7;
    v10 = 0;
  }

  else
  {
    v19 = 0;
    v11 = [v5 getSIMStatus:v6 error:&v19];
    v12 = v19;
    v9 = v12;
    v10 = 0;
    if (!v12 && v11)
    {
      if ([v11 isEqualToString:*MEMORY[0x277CC3ED8]])
      {
        v10 = 0;
        v9 = 0;
      }

      else
      {
        v18 = 0;
        v13 = [v5 getSimLabel:v6 error:&v18];
        v9 = v18;
        v10 = 0;
        if (!v9 && v13)
        {
          v14 = [v13 unique_id];
          v10 = [v14 isEqualToString:@"00000000-0000-0000-0000-000000000000"] ^ 1;
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"NO";
      if (v10)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      v22 = v16;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "Initiator Eligibility, checking if SIM enabled, %@, error %@", buf, 0x16u);
    }
  }

  return v10;
}

+ (BOOL)checkCellularDataEnabledWithQueue:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _CTServerConnectionCreateWithIdentifier();
  IsEnabled = _CTServerConnectionGetCellularDataIsEnabled();
  if (v3)
  {
    CFRelease(v3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v8 = @"NO";
      v9 = 1024;
      v10 = IsEnabled;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Initiator Eligibility, checking if cellular data enabled, %@, error %d", buf, 0x12u);
    }
  }

  return 0;
}

+ (BOOL)checkAirplaneModeEnabledWithQueue:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = _CTServerConnectionCreateWithIdentifier();
  CellularDataSettings = _CTServerConnectionGetCellularDataSettings();
  if (v3)
  {
    CFRelease(v3);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v8 = "+[SMInitiatorEligibility checkAirplaneModeEnabledWithQueue:]";
      v9 = 1024;
      v10 = 0;
      v11 = 1024;
      v12 = CellularDataSettings;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s,Checking if Airplane Mode is enabled, %{Bool}d, error %d", buf, 0x18u);
    }
  }

  return 0;
}

+ (BOOL)checkCellularWatchToggleEnabledWithQueue:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEC5D0];
  v4 = a3;
  v5 = [[v3 alloc] initWithQueue:v4];

  if (v5)
  {
    v10 = 0;
    v6 = [v5 telephonyStateWithBundleIdentifierOut:&v10];
    v7 = v10;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v12 = v5;
        v13 = 1024;
        v14 = v6;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, " radioPreferences: %@ isCellularEnabled toggle: %{BOOL}d", buf, 0x12u);
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (BOOL)checkRegulatoryDomainPassedWithQueue:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D443A8] currentEstimates];
  if ([v4 count])
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(a2);
      *buf = 138412546;
      v55 = v7;
      v56 = 2112;
      v57 = v8;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, no current estimates found, falling back to last known estimates", buf, 0x16u);
    }
  }

  v9 = [MEMORY[0x277D443A8] lastKnownEstimates];

  if ([v9 count])
  {
    v4 = v9;
LABEL_8:
    v10 = [objc_opt_class() _getRegulatoryDomainCountryCodes];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v9 = v4;
    v39 = [v9 countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v39)
    {
      v11 = *v50;
      v12 = MEMORY[0x277D86220];
      v40 = v9;
      v41 = v3;
      v42 = v10;
      v38 = *v50;
      do
      {
        v13 = 0;
        do
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v49 + 1) + 8 * v13);
          context = objc_autoreleasePoolPush();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              v18 = NSStringFromSelector(a2);
              v19 = [v14 countryCode];
              *buf = 138412802;
              v55 = v17;
              v56 = 2112;
              v57 = v18;
              v58 = 2112;
              v59 = v19;
              _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, estimate's country code, %@", buf, 0x20u);
            }
          }

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v20 = v10;
          v21 = [v20 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v46;
            while (2)
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v46 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v45 + 1) + 8 * i);
                v26 = objc_autoreleasePoolPush();
                v27 = [v14 countryCode];
                v28 = [v27 isEqualToString:v25];

                if (v28)
                {
                  v9 = v40;
                  v3 = v41;
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                    {
                      v31 = objc_opt_class();
                      v32 = NSStringFromClass(v31);
                      v33 = NSStringFromSelector(a2);
                      *buf = 138412802;
                      v55 = v32;
                      v56 = 2112;
                      v57 = v33;
                      v58 = 2112;
                      v59 = v25;
                      _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@, %@, estimate's country code is equal to regulated country code, %@", buf, 0x20u);
                    }
                  }

                  objc_autoreleasePoolPop(v26);

                  objc_autoreleasePoolPop(context);
                  v29 = 0;
                  v10 = v42;
                  goto LABEL_34;
                }

                objc_autoreleasePoolPop(v26);
              }

              v22 = [v20 countByEnumeratingWithState:&v45 objects:v53 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

          objc_autoreleasePoolPop(context);
          ++v13;
          v9 = v40;
          v3 = v41;
          v10 = v42;
          v11 = v38;
          v12 = MEMORY[0x277D86220];
        }

        while (v13 != v39);
        v29 = 1;
        v39 = [v40 countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v39);
    }

    else
    {
      v29 = 1;
    }

LABEL_34:

    goto LABEL_35;
  }

  v29 = 1;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_36;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = NSStringFromSelector(a2);
    *buf = 138412546;
    v55 = v36;
    v56 = 2112;
    v57 = v37;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, no last known estimates found, returning success as default fallback behaviour", buf, 0x16u);
  }

LABEL_35:

LABEL_36:
  return v29;
}

+ (void)checkNetworkReachabilityWithQueue:(id)a3 handler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "+[SMInitiatorEligibility checkNetworkReachabilityWithQueue:handler:]";
      v13 = 1024;
      v14 = 413;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SMInitiatorEligibility_checkNetworkReachabilityWithQueue_handler___block_invoke;
  block[3] = &unk_2788C4758;
  v10 = v6;
  v8 = v6;
  dispatch_async(v5, block);
}

uint64_t __68__SMInitiatorEligibility_checkNetworkReachabilityWithQueue_handler___block_invoke(uint64_t a1)
{
  v2 = +[SMNetworkReachabilityObserver sharedNetworkReachabilityObserver];
  [v2 isNetworkReachable];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (void)checkIMessageAccountEnabledWithQueue:(id)a3 handler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "+[SMInitiatorEligibility checkIMessageAccountEnabledWithQueue:handler:]";
      v17 = 1024;
      v18 = 425;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v8 = [MEMORY[0x277D18D68] sharedInstance];
  v9 = [v8 multiplexedConnectionWithLabel:@"com.apple.routined.SafetyMonitor.SMInitiatorEligibility.iMessage" capabilities:512 context:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__SMInitiatorEligibility_checkIMessageAccountEnabledWithQueue_handler___block_invoke;
  v12[3] = &unk_2788C4938;
  v13 = v5;
  v14 = v6;
  v10 = v6;
  v11 = v5;
  [v9 connectWithCompletion:v12];
}

void __71__SMInitiatorEligibility_checkIMessageAccountEnabledWithQueue_handler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SMInitiatorEligibility_checkIMessageAccountEnabledWithQueue_handler___block_invoke_2;
  block[3] = &unk_2788C4758;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

void __71__SMInitiatorEligibility_checkIMessageAccountEnabledWithQueue_handler___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D18DE0] serviceWithName:@"iMessage"];
  v3 = [MEMORY[0x277D18D28] sharedInstance];
  v4 = [v3 accountsForService:v2];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v10 != v7)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v9 + 1) + 8 * v8) isActive])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)checkLocationAuthorizationWithQueue:(id)a3 handler:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "+[SMInitiatorEligibility checkLocationAuthorizationWithQueue:handler:]";
      v13 = 1024;
      v14 = 455;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SMInitiatorEligibility_checkLocationAuthorizationWithQueue_handler___block_invoke;
  block[3] = &unk_2788C4758;
  v10 = v6;
  v8 = v6;
  dispatch_async(v5, block);
}

uint64_t __70__SMInitiatorEligibility_checkLocationAuthorizationWithQueue_handler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBFC10] authorizationStatusForBundlePath:*MEMORY[0x277D4AD20]] == 3;
  v3 = *(*(a1 + 32) + 16);
  v4 = *(a1 + 32);

  return v3(v4, v2, 0);
}

+ (void)checkManateeEnabledWithQueue:(id)a3 handler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[SMInitiatorEligibility checkManateeEnabledWithQueue:handler:]";
      v15 = 1024;
      v16 = 466;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SMInitiatorEligibility_checkManateeEnabledWithQueue_handler___block_invoke;
  v10[3] = &unk_2788C58B8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [SMCloudKitZone supportsDeviceToDeviceEncryptionWithCompletion:v10];
}

void __63__SMInitiatorEligibility_checkManateeEnabledWithQueue_handler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SMInitiatorEligibility_checkManateeEnabledWithQueue_handler___block_invoke_2;
  block[3] = &unk_2788CDEA8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

@end