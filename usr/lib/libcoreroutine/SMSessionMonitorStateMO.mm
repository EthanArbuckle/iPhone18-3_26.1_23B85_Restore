@interface SMSessionMonitorStateMO
+ (id)initWithSessionMonitorState:(id)a3 inManagedObjectContext:(id)a4;
+ (id)managedObjectWithSessionIdentifier:(id)a3 currentRegionState:(unint64_t)a4 triggerPending:(BOOL)a5 triggerConfirmed:(BOOL)a6 date:(id)a7 managedObjectContext:(id)a8;
@end

@implementation SMSessionMonitorStateMO

+ (id)initWithSessionMonitorState:(id)a3 inManagedObjectContext:(id)a4
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

    v20 = 0;
    v16 = "Invalid parameter not satisfying: state";
    v17 = &v20;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    goto LABEL_7;
  }

  if (v7)
  {
    v9 = [v6 sessionIdentifier];
    v10 = [v6 currentRegionState];
    v11 = [v6 triggerPending];
    v12 = [v6 triggerConfirmed];
    v13 = [v6 date];
    v14 = [a1 managedObjectWithSessionIdentifier:v9 currentRegionState:v10 triggerPending:v11 triggerConfirmed:v12 date:v13 managedObjectContext:v8];

    goto LABEL_8;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v19 = 0;
    v16 = "Invalid parameter not satisfying: managedObjectContext";
    v17 = &v19;
    goto LABEL_12;
  }

LABEL_7:

  v14 = 0;
LABEL_8:

  return v14;
}

+ (id)managedObjectWithSessionIdentifier:(id)a3 currentRegionState:(unint64_t)a4 triggerPending:(BOOL)a5 triggerConfirmed:(BOOL)a6 date:(id)a7 managedObjectContext:(id)a8
{
  v13 = a3;
  v14 = a7;
  v15 = a8;
  v16 = v15;
  if (v15)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__131;
    v31 = __Block_byref_object_dispose__131;
    v32 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __139__SMSessionMonitorStateMO_managedObjectWithSessionIdentifier_currentRegionState_triggerPending_triggerConfirmed_date_managedObjectContext___block_invoke;
    v19[3] = &unk_2788CF510;
    v23 = &v27;
    v20 = v15;
    v21 = v13;
    v22 = v14;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    [v20 performBlockAndWait:v19];
    v17 = v28[5];

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __139__SMSessionMonitorStateMO_managedObjectWithSessionIdentifier_currentRegionState_triggerPending_triggerConfirmed_date_managedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[SMSessionMonitorStateMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 56) + 8) + 40) setSessionIdentifier:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setDate:*(a1 + 48)];
  [*(*(*(a1 + 56) + 8) + 40) setCurrentRegionState:*(a1 + 64)];
  [*(*(*(a1 + 56) + 8) + 40) setTriggerPending:*(a1 + 72)];
  v5 = *(a1 + 73);
  v6 = *(*(*(a1 + 56) + 8) + 40);

  return [v6 setTriggerConfirmed:v5];
}

@end