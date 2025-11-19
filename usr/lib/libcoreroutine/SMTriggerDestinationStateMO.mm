@interface SMTriggerDestinationStateMO
+ (id)initWithTriggerDestinationState:(id)a3 inManagedObjectContext:(id)a4;
+ (id)managedObjectWithSessionIdentifier:(id)a3 lastLockDate:(id)a4 lastUnlockDate:(id)a5 predominantModeOfTransport:(unint64_t)a6 currentStatus:(unint64_t)a7 currentStatusDate:(id)a8 date:(id)a9 shouldRetryETAQuery:(BOOL)a10 numberOfETARetries:(unsigned __int16)a11 upperBoundEtaCrowFliesUpperBoundEta:(id)a12 upperBoundEtaMapsUpperBoundEta:(id)a13 roundTripReminderDate:(id)a14 timeToUpdateStatus:(id)a15 mapsExpectedTravelTime:(double)a16 remainingDistance:(double)a17 managedObjectContext:(id)a18;
@end

@implementation SMTriggerDestinationStateMO

+ (id)initWithTriggerDestinationState:(id)a3 inManagedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v34 = 0;
    v19 = "Invalid parameter not satisfying: state";
    v20 = &v34;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v19, v20, 2u);
    goto LABEL_7;
  }

  if (v7)
  {
    v31 = [v6 sessionIdentifier];
    v25 = [v6 lastLockDate];
    v30 = [v6 lastUnlockDate];
    v29 = [v6 predominantModeOfTransport];
    v27 = [v6 currentStatus];
    v26 = [v6 currentStatusDate];
    v24 = [v6 date];
    v32 = [v6 shouldRetryETAQuery];
    v9 = [v6 numberOfETARetries];
    v28 = [v6 upperBoundEta];
    v23 = [v28 crowFliesUpperBoundEta];
    v10 = [v6 upperBoundEta];
    v11 = [v10 mapsUpperBoundEta];
    v12 = [v6 roundTripReminderDate];
    v13 = [v6 timeToUpdateStatus];
    [v6 mapsExpectedTravelTime];
    v15 = v14;
    [v6 remainingDistance];
    WORD1(v22) = v9;
    LOBYTE(v22) = v32;
    v17 = [a1 managedObjectWithSessionIdentifier:v31 lastLockDate:v25 lastUnlockDate:v30 predominantModeOfTransport:v29 currentStatus:v27 currentStatusDate:v26 date:v15 shouldRetryETAQuery:v16 numberOfETARetries:v24 upperBoundEtaCrowFliesUpperBoundEta:v22 upperBoundEtaMapsUpperBoundEta:v23 roundTripReminderDate:v11 timeToUpdateStatus:v12 mapsExpectedTravelTime:v13 remainingDistance:v8 managedObjectContext:?];

    goto LABEL_8;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v19 = "Invalid parameter not satisfying: managedObjectContext";
    v20 = buf;
    goto LABEL_12;
  }

LABEL_7:

  v17 = 0;
LABEL_8:

  return v17;
}

+ (id)managedObjectWithSessionIdentifier:(id)a3 lastLockDate:(id)a4 lastUnlockDate:(id)a5 predominantModeOfTransport:(unint64_t)a6 currentStatus:(unint64_t)a7 currentStatusDate:(id)a8 date:(id)a9 shouldRetryETAQuery:(BOOL)a10 numberOfETARetries:(unsigned __int16)a11 upperBoundEtaCrowFliesUpperBoundEta:(id)a12 upperBoundEtaMapsUpperBoundEta:(id)a13 roundTripReminderDate:(id)a14 timeToUpdateStatus:(id)a15 mapsExpectedTravelTime:(double)a16 remainingDistance:(double)a17 managedObjectContext:(id)a18
{
  v40 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a8;
  v26 = a9;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a18;
  v39 = v23;
  if (v31)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__107;
    v63 = __Block_byref_object_dispose__107;
    v64 = 0;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __367__SMTriggerDestinationStateMO_managedObjectWithSessionIdentifier_lastLockDate_lastUnlockDate_predominantModeOfTransport_currentStatus_currentStatusDate_date_shouldRetryETAQuery_numberOfETARetries_upperBoundEtaCrowFliesUpperBoundEta_upperBoundEtaMapsUpperBoundEta_roundTripReminderDate_timeToUpdateStatus_mapsExpectedTravelTime_remainingDistance_managedObjectContext___block_invoke;
    v41[3] = &unk_2788CDDC0;
    v52 = &v59;
    v36 = v31;
    v32 = v28;
    v42 = v31;
    v33 = v40;
    v43 = v40;
    v44 = v26;
    v45 = v23;
    v46 = v24;
    v53 = a6;
    v54 = a7;
    v47 = v25;
    v58 = a10;
    v57 = a11;
    v48 = v27;
    v49 = v28;
    v50 = v29;
    v51 = v30;
    v55 = a16;
    v56 = a17;
    [v42 performBlockAndWait:v41];
    v34 = v60[5];

    _Block_object_dispose(&v59, 8);
    v31 = v36;
  }

  else
  {
    v34 = 0;
    v33 = v40;
    v32 = v28;
  }

  return v34;
}

uint64_t __367__SMTriggerDestinationStateMO_managedObjectWithSessionIdentifier_lastLockDate_lastUnlockDate_predominantModeOfTransport_currentStatus_currentStatusDate_date_shouldRetryETAQuery_numberOfETARetries_upperBoundEtaCrowFliesUpperBoundEta_upperBoundEtaMapsUpperBoundEta_roundTripReminderDate_timeToUpdateStatus_mapsExpectedTravelTime_remainingDistance_managedObjectContext___block_invoke(uint64_t a1)
{
  v2 = [[SMTriggerDestinationStateMO alloc] initWithContext:*(a1 + 32)];
  v3 = *(*(a1 + 112) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(*(*(a1 + 112) + 8) + 40) setSessionIdentifier_v2:*(a1 + 40)];
  [*(*(*(a1 + 112) + 8) + 40) setDate:*(a1 + 48)];
  [*(*(*(a1 + 112) + 8) + 40) setLastLockDate:*(a1 + 56)];
  [*(*(*(a1 + 112) + 8) + 40) setLastUnlockDate:*(a1 + 64)];
  [*(*(*(a1 + 112) + 8) + 40) setPredominantModeOfTransport_v2:*(a1 + 120)];
  [*(*(*(a1 + 112) + 8) + 40) setCurrentStatus:*(a1 + 128)];
  [*(*(*(a1 + 112) + 8) + 40) setCurrentStatusDate:*(a1 + 72)];
  [*(*(*(a1 + 112) + 8) + 40) setShouldRetryETAQuery:*(a1 + 154)];
  [*(*(*(a1 + 112) + 8) + 40) setNumberOfETARetries:*(a1 + 152)];
  [*(*(*(a1 + 112) + 8) + 40) setUpperBoundEtaCrowFliesUpperBoundEta:*(a1 + 80)];
  [*(*(*(a1 + 112) + 8) + 40) setUpperBoundEtaMapsUpperBoundEta:*(a1 + 88)];
  [*(*(*(a1 + 112) + 8) + 40) setRoundTripReminderDate:*(a1 + 96)];
  [*(*(*(a1 + 112) + 8) + 40) setTimeToUpdateStatus:*(a1 + 104)];
  [*(*(*(a1 + 112) + 8) + 40) setMapsExpectedTravelTime:*(a1 + 136)];
  v5 = *(a1 + 144);
  v6 = *(*(*(a1 + 112) + 8) + 40);

  return [v6 setRemainingDistance:v5];
}

@end