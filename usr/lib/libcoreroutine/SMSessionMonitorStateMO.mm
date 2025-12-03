@interface SMSessionMonitorStateMO
+ (id)initWithSessionMonitorState:(id)state inManagedObjectContext:(id)context;
+ (id)managedObjectWithSessionIdentifier:(id)identifier currentRegionState:(unint64_t)state triggerPending:(BOOL)pending triggerConfirmed:(BOOL)confirmed date:(id)date managedObjectContext:(id)context;
@end

@implementation SMSessionMonitorStateMO

+ (id)initWithSessionMonitorState:(id)state inManagedObjectContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  v8 = contextCopy;
  if (!stateCopy)
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

  if (contextCopy)
  {
    sessionIdentifier = [stateCopy sessionIdentifier];
    currentRegionState = [stateCopy currentRegionState];
    triggerPending = [stateCopy triggerPending];
    triggerConfirmed = [stateCopy triggerConfirmed];
    date = [stateCopy date];
    v14 = [self managedObjectWithSessionIdentifier:sessionIdentifier currentRegionState:currentRegionState triggerPending:triggerPending triggerConfirmed:triggerConfirmed date:date managedObjectContext:v8];

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

+ (id)managedObjectWithSessionIdentifier:(id)identifier currentRegionState:(unint64_t)state triggerPending:(BOOL)pending triggerConfirmed:(BOOL)confirmed date:(id)date managedObjectContext:(id)context
{
  identifierCopy = identifier;
  dateCopy = date;
  contextCopy = context;
  v16 = contextCopy;
  if (contextCopy)
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
    v20 = contextCopy;
    v21 = identifierCopy;
    v22 = dateCopy;
    stateCopy = state;
    pendingCopy = pending;
    confirmedCopy = confirmed;
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