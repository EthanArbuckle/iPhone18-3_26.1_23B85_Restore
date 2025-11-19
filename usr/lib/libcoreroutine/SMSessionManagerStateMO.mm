@interface SMSessionManagerStateMO
+ (id)initWithSessionManagerState:(id)a3 inManagedObjectContext:(id)a4;
+ (id)managedObjectWithSessionManagerConfiguration:(id)a3 sessionState:(unint64_t)a4 triggerCateogry:(unint64_t)a5 updateReason:(unint64_t)a6 userTriggerResponse:(int64_t)a7 date:(id)a8 location:(id)a9 allowReadToken:(id)a10 safetyCacheKey:(id)a11 startMessageGUID:(id)a12 scheduledSendMessageGUID:(id)a13 scheduledSendMessageDate:(id)a14 activeDeviceIdentifier:(id)a15 estimatedEndDate:(id)a16 coarseEstimatedEndDate:(id)a17 estimatedEndDateStatus:(unint64_t)a18 sessionEndReason:(unint64_t)a19 sessionStateTransitionDate:(id)a20 activePairedDeviceIdentifier:(id)a21 managedObjectContext:(id)a22;
@end

@implementation SMSessionManagerStateMO

+ (id)initWithSessionManagerState:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v37 = 0;
    v16 = "Invalid parameter not satisfying: sessionManagerState";
    v17 = &v37;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    goto LABEL_7;
  }

  if (v7)
  {
    v35 = [v6 configuration];
    v30 = [v6 sessionState];
    v32 = [v6 monitorContext];
    v29 = [v32 triggerCategory];
    v31 = [v6 monitorContext];
    v28 = [v31 updateReason];
    v27 = [v6 userTriggerResponse];
    v26 = [v6 date];
    v25 = [v6 location];
    v34 = [v6 allowReadToken];
    v24 = [v6 safetyCacheKey];
    v23 = [v6 startMessageGUID];
    v33 = [v6 scheduledSendMessageGUID];
    v22 = [v6 scheduledSendMessageDate];
    v9 = [v6 activeDeviceIdentifier];
    v21 = [v6 estimatedEndDate];
    v20 = [v6 coarseEstimatedEndDate];
    v10 = [v6 estimatedEndDateStatus];
    v19 = a1;
    v11 = [v6 sessionEndReason];
    v12 = [v6 sessionStateTransitionDate];
    v13 = [v6 activePairedDeviceIdentifier];
    v14 = [v19 managedObjectWithSessionManagerConfiguration:v35 sessionState:v30 triggerCateogry:v29 updateReason:v28 userTriggerResponse:v27 date:v26 location:v25 allowReadToken:v34 safetyCacheKey:v24 startMessageGUID:v23 scheduledSendMessageGUID:v33 scheduledSendMessageDate:v22 activeDeviceIdentifier:v9 estimatedEndDate:v21 coarseEstimatedEndDate:v20 estimatedEndDateStatus:v10 sessionEndReason:v11 sessionStateTransitionDate:v12 activePairedDeviceIdentifier:v13 managedObjectContext:v8];

    goto LABEL_8;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v16 = "Invalid parameter not satisfying: managedObjectContext";
    v17 = buf;
    goto LABEL_12;
  }

LABEL_7:

  v14 = 0;
LABEL_8:

  return v14;
}

+ (id)managedObjectWithSessionManagerConfiguration:(id)a3 sessionState:(unint64_t)a4 triggerCateogry:(unint64_t)a5 updateReason:(unint64_t)a6 userTriggerResponse:(int64_t)a7 date:(id)a8 location:(id)a9 allowReadToken:(id)a10 safetyCacheKey:(id)a11 startMessageGUID:(id)a12 scheduledSendMessageGUID:(id)a13 scheduledSendMessageDate:(id)a14 activeDeviceIdentifier:(id)a15 estimatedEndDate:(id)a16 coarseEstimatedEndDate:(id)a17 estimatedEndDateStatus:(unint64_t)a18 sessionEndReason:(unint64_t)a19 sessionStateTransitionDate:(id)a20 activePairedDeviceIdentifier:(id)a21 managedObjectContext:(id)a22
{
  v54 = a3;
  v23 = a8;
  v53 = a9;
  v24 = a10;
  v52 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v51 = a17;
  v30 = a20;
  v31 = a21;
  v32 = a22;
  v49 = v25;
  v47 = v28;
  v48 = v27;
  v50 = v31;
  if (v32)
  {
    v77 = 0;
    v78 = &v77;
    v79 = 0x3032000000;
    v80 = __Block_byref_object_copy__0;
    v81 = __Block_byref_object_dispose__0;
    v82 = 0;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __425__SMSessionManagerStateMO_managedObjectWithSessionManagerConfiguration_sessionState_triggerCateogry_updateReason_userTriggerResponse_date_location_allowReadToken_safetyCacheKey_startMessageGUID_scheduledSendMessageGUID_scheduledSendMessageDate_activeDeviceIdentifier_estimatedEndDate_coarseEstimatedEndDate_estimatedEndDateStatus_sessionEndReason_sessionStateTransitionDate_activePairedDeviceIdentifier_managedObjectContext___block_invoke;
    v55[3] = &unk_2788C44D8;
    v70 = &v77;
    v41 = v32;
    v42 = v23;
    v56 = v32;
    v71 = a4;
    v72 = a5;
    v73 = a6;
    v74 = a7;
    v57 = v23;
    v33 = v53;
    v58 = v53;
    v59 = v24;
    v34 = v52;
    v60 = v52;
    v61 = v25;
    v62 = v26;
    v63 = v27;
    v64 = v28;
    v65 = v29;
    v66 = v51;
    v75 = a18;
    v76 = a19;
    v67 = v30;
    v68 = v31;
    v69 = v54;
    [v56 performBlockAndWait:v55];
    v35 = v42;
    v36 = v26;
    v37 = v51;
    v38 = v78[5];

    _Block_object_dispose(&v77, 8);
    v32 = v41;
    v39 = v54;
  }

  else
  {
    v38 = 0;
    v33 = v53;
    v39 = v54;
    v35 = v23;
    v36 = v26;
    v37 = v51;
    v34 = v52;
  }

  return v38;
}

void __425__SMSessionManagerStateMO_managedObjectWithSessionManagerConfiguration_sessionState_triggerCateogry_updateReason_userTriggerResponse_date_location_allowReadToken_safetyCacheKey_startMessageGUID_scheduledSendMessageGUID_scheduledSendMessageDate_activeDeviceIdentifier_estimatedEndDate_coarseEstimatedEndDate_estimatedEndDateStatus_sessionEndReason_sessionStateTransitionDate_activePairedDeviceIdentifier_managedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[SMSessionManagerStateMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 144) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 144) + 8) + 40) setSessionState:*(a1 + 152)];
  [*(*(*(a1 + 144) + 8) + 40) setTriggerCategory:*(a1 + 160)];
  [*(*(*(a1 + 144) + 8) + 40) setUpdateReason:*(a1 + 168)];
  [*(*(*(a1 + 144) + 8) + 40) setUserTriggerResponse:*(a1 + 176)];
  [*(*(*(a1 + 144) + 8) + 40) setDate:*(a1 + 40)];
  [*(a1 + 48) coordinate];
  [*(*(*(a1 + 144) + 8) + 40) setLocationLatitude:?];
  [*(a1 + 48) coordinate];
  [*(*(*(a1 + 144) + 8) + 40) setLocationLongitude:v5];
  [*(*(*(a1 + 144) + 8) + 40) setAllowReadToken:*(a1 + 56)];
  [*(*(*(a1 + 144) + 8) + 40) setSafetyCacheKey:*(a1 + 64)];
  [*(*(*(a1 + 144) + 8) + 40) setStartMessageGUID:*(a1 + 72)];
  [*(*(*(a1 + 144) + 8) + 40) setScheduledSendMessageGUID:*(a1 + 80)];
  [*(*(*(a1 + 144) + 8) + 40) setScheduledSendMessageDate:*(a1 + 88)];
  [*(*(*(a1 + 144) + 8) + 40) setActiveDeviceIdentifier:*(a1 + 96)];
  [*(*(*(a1 + 144) + 8) + 40) setEstimatedEndDate:*(a1 + 104)];
  [*(*(*(a1 + 144) + 8) + 40) setCoarseEstimatedEndDate:*(a1 + 112)];
  [*(*(*(a1 + 144) + 8) + 40) setEstimatedEndDateStatus:*(a1 + 184)];
  [*(*(*(a1 + 144) + 8) + 40) setSessionEndReason:*(a1 + 192)];
  [*(*(*(a1 + 144) + 8) + 40) setSessionStateTransitionDate:*(a1 + 120)];
  [*(*(*(a1 + 144) + 8) + 40) setActivePairedDeviceIdentifier:*(a1 + 128)];
  v6 = *(a1 + 136);
  if (v6)
  {
    v7 = [SMSessionConfigurationMO initWithSessionConfiguration:v6 inManagedObjectContext:*(a1 + 32)];
    [*(*(*(a1 + 144) + 8) + 40) setSessionConfiguration:v7];
  }
}

@end