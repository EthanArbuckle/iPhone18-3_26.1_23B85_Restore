@interface SMTriggerDestinationStateMO
+ (id)initWithTriggerDestinationState:(id)state inManagedObjectContext:(id)context;
+ (id)managedObjectWithSessionIdentifier:(id)identifier lastLockDate:(id)date lastUnlockDate:(id)unlockDate predominantModeOfTransport:(unint64_t)transport currentStatus:(unint64_t)status currentStatusDate:(id)statusDate date:(id)a9 shouldRetryETAQuery:(BOOL)self0 numberOfETARetries:(unsigned __int16)self1 upperBoundEtaCrowFliesUpperBoundEta:(id)self2 upperBoundEtaMapsUpperBoundEta:(id)self3 roundTripReminderDate:(id)self4 timeToUpdateStatus:(id)self5 mapsExpectedTravelTime:(double)self6 remainingDistance:(double)self7 managedObjectContext:(id)self8;
@end

@implementation SMTriggerDestinationStateMO

+ (id)initWithTriggerDestinationState:(id)state inManagedObjectContext:(id)context
{
  stateCopy = state;
  contextCopy = context;
  v8 = contextCopy;
  if (!stateCopy)
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

  if (contextCopy)
  {
    sessionIdentifier = [stateCopy sessionIdentifier];
    lastLockDate = [stateCopy lastLockDate];
    lastUnlockDate = [stateCopy lastUnlockDate];
    predominantModeOfTransport = [stateCopy predominantModeOfTransport];
    currentStatus = [stateCopy currentStatus];
    currentStatusDate = [stateCopy currentStatusDate];
    date = [stateCopy date];
    shouldRetryETAQuery = [stateCopy shouldRetryETAQuery];
    numberOfETARetries = [stateCopy numberOfETARetries];
    upperBoundEta = [stateCopy upperBoundEta];
    crowFliesUpperBoundEta = [upperBoundEta crowFliesUpperBoundEta];
    upperBoundEta2 = [stateCopy upperBoundEta];
    mapsUpperBoundEta = [upperBoundEta2 mapsUpperBoundEta];
    roundTripReminderDate = [stateCopy roundTripReminderDate];
    timeToUpdateStatus = [stateCopy timeToUpdateStatus];
    [stateCopy mapsExpectedTravelTime];
    v15 = v14;
    [stateCopy remainingDistance];
    WORD1(v22) = numberOfETARetries;
    LOBYTE(v22) = shouldRetryETAQuery;
    v17 = [self managedObjectWithSessionIdentifier:sessionIdentifier lastLockDate:lastLockDate lastUnlockDate:lastUnlockDate predominantModeOfTransport:predominantModeOfTransport currentStatus:currentStatus currentStatusDate:currentStatusDate date:v15 shouldRetryETAQuery:v16 numberOfETARetries:date upperBoundEtaCrowFliesUpperBoundEta:v22 upperBoundEtaMapsUpperBoundEta:crowFliesUpperBoundEta roundTripReminderDate:mapsUpperBoundEta timeToUpdateStatus:roundTripReminderDate mapsExpectedTravelTime:timeToUpdateStatus remainingDistance:v8 managedObjectContext:?];

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

+ (id)managedObjectWithSessionIdentifier:(id)identifier lastLockDate:(id)date lastUnlockDate:(id)unlockDate predominantModeOfTransport:(unint64_t)transport currentStatus:(unint64_t)status currentStatusDate:(id)statusDate date:(id)a9 shouldRetryETAQuery:(BOOL)self0 numberOfETARetries:(unsigned __int16)self1 upperBoundEtaCrowFliesUpperBoundEta:(id)self2 upperBoundEtaMapsUpperBoundEta:(id)self3 roundTripReminderDate:(id)self4 timeToUpdateStatus:(id)self5 mapsExpectedTravelTime:(double)self6 remainingDistance:(double)self7 managedObjectContext:(id)self8
{
  identifierCopy = identifier;
  dateCopy = date;
  unlockDateCopy = unlockDate;
  statusDateCopy = statusDate;
  v26 = a9;
  etaCopy = eta;
  boundEtaCopy = boundEta;
  reminderDateCopy = reminderDate;
  updateStatusCopy = updateStatus;
  contextCopy = context;
  v39 = dateCopy;
  if (contextCopy)
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
    v36 = contextCopy;
    v32 = boundEtaCopy;
    v42 = contextCopy;
    v33 = identifierCopy;
    v43 = identifierCopy;
    v44 = v26;
    v45 = dateCopy;
    v46 = unlockDateCopy;
    transportCopy = transport;
    statusCopy = status;
    v47 = statusDateCopy;
    queryCopy = query;
    retriesCopy = retries;
    v48 = etaCopy;
    v49 = boundEtaCopy;
    v50 = reminderDateCopy;
    v51 = updateStatusCopy;
    timeCopy = time;
    distanceCopy = distance;
    [v42 performBlockAndWait:v41];
    v34 = v60[5];

    _Block_object_dispose(&v59, 8);
    contextCopy = v36;
  }

  else
  {
    v34 = 0;
    v33 = identifierCopy;
    v32 = boundEtaCopy;
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