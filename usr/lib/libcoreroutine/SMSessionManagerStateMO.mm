@interface SMSessionManagerStateMO
+ (id)initWithSessionManagerState:(id)state inManagedObjectContext:(id)context;
+ (id)managedObjectWithSessionManagerConfiguration:(id)configuration sessionState:(unint64_t)state triggerCateogry:(unint64_t)cateogry updateReason:(unint64_t)reason userTriggerResponse:(int64_t)response date:(id)date location:(id)location allowReadToken:(id)self0 safetyCacheKey:(id)self1 startMessageGUID:(id)self2 scheduledSendMessageGUID:(id)self3 scheduledSendMessageDate:(id)self4 activeDeviceIdentifier:(id)self5 estimatedEndDate:(id)self6 coarseEstimatedEndDate:(id)self7 estimatedEndDateStatus:(unint64_t)self8 sessionEndReason:(unint64_t)self9 sessionStateTransitionDate:(id)transitionDate activePairedDeviceIdentifier:(id)deviceIdentifier managedObjectContext:(id)context;
@end

@implementation SMSessionManagerStateMO

+ (id)initWithSessionManagerState:(id)state inManagedObjectContext:(id)context
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

    v37 = 0;
    v16 = "Invalid parameter not satisfying: sessionManagerState";
    v17 = &v37;
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, v17, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    configuration = [stateCopy configuration];
    sessionState = [stateCopy sessionState];
    monitorContext = [stateCopy monitorContext];
    triggerCategory = [monitorContext triggerCategory];
    monitorContext2 = [stateCopy monitorContext];
    updateReason = [monitorContext2 updateReason];
    userTriggerResponse = [stateCopy userTriggerResponse];
    date = [stateCopy date];
    location = [stateCopy location];
    allowReadToken = [stateCopy allowReadToken];
    safetyCacheKey = [stateCopy safetyCacheKey];
    startMessageGUID = [stateCopy startMessageGUID];
    scheduledSendMessageGUID = [stateCopy scheduledSendMessageGUID];
    scheduledSendMessageDate = [stateCopy scheduledSendMessageDate];
    activeDeviceIdentifier = [stateCopy activeDeviceIdentifier];
    estimatedEndDate = [stateCopy estimatedEndDate];
    coarseEstimatedEndDate = [stateCopy coarseEstimatedEndDate];
    estimatedEndDateStatus = [stateCopy estimatedEndDateStatus];
    selfCopy = self;
    sessionEndReason = [stateCopy sessionEndReason];
    sessionStateTransitionDate = [stateCopy sessionStateTransitionDate];
    activePairedDeviceIdentifier = [stateCopy activePairedDeviceIdentifier];
    v14 = [selfCopy managedObjectWithSessionManagerConfiguration:configuration sessionState:sessionState triggerCateogry:triggerCategory updateReason:updateReason userTriggerResponse:userTriggerResponse date:date location:location allowReadToken:allowReadToken safetyCacheKey:safetyCacheKey startMessageGUID:startMessageGUID scheduledSendMessageGUID:scheduledSendMessageGUID scheduledSendMessageDate:scheduledSendMessageDate activeDeviceIdentifier:activeDeviceIdentifier estimatedEndDate:estimatedEndDate coarseEstimatedEndDate:coarseEstimatedEndDate estimatedEndDateStatus:estimatedEndDateStatus sessionEndReason:sessionEndReason sessionStateTransitionDate:sessionStateTransitionDate activePairedDeviceIdentifier:activePairedDeviceIdentifier managedObjectContext:v8];

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

+ (id)managedObjectWithSessionManagerConfiguration:(id)configuration sessionState:(unint64_t)state triggerCateogry:(unint64_t)cateogry updateReason:(unint64_t)reason userTriggerResponse:(int64_t)response date:(id)date location:(id)location allowReadToken:(id)self0 safetyCacheKey:(id)self1 startMessageGUID:(id)self2 scheduledSendMessageGUID:(id)self3 scheduledSendMessageDate:(id)self4 activeDeviceIdentifier:(id)self5 estimatedEndDate:(id)self6 coarseEstimatedEndDate:(id)self7 estimatedEndDateStatus:(unint64_t)self8 sessionEndReason:(unint64_t)self9 sessionStateTransitionDate:(id)transitionDate activePairedDeviceIdentifier:(id)deviceIdentifier managedObjectContext:(id)context
{
  configurationCopy = configuration;
  dateCopy = date;
  locationCopy = location;
  tokenCopy = token;
  keyCopy = key;
  dCopy = d;
  iDCopy = iD;
  messageDateCopy = messageDate;
  identifierCopy = identifier;
  endDateCopy = endDate;
  estimatedEndDateCopy = estimatedEndDate;
  transitionDateCopy = transitionDate;
  deviceIdentifierCopy = deviceIdentifier;
  contextCopy = context;
  v49 = dCopy;
  v47 = identifierCopy;
  v48 = messageDateCopy;
  v50 = deviceIdentifierCopy;
  if (contextCopy)
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
    v41 = contextCopy;
    v42 = dateCopy;
    v56 = contextCopy;
    stateCopy = state;
    cateogryCopy = cateogry;
    reasonCopy = reason;
    responseCopy = response;
    v57 = dateCopy;
    v33 = locationCopy;
    v58 = locationCopy;
    v59 = tokenCopy;
    v34 = keyCopy;
    v60 = keyCopy;
    v61 = dCopy;
    v62 = iDCopy;
    v63 = messageDateCopy;
    v64 = identifierCopy;
    v65 = endDateCopy;
    v66 = estimatedEndDateCopy;
    statusCopy = status;
    endReasonCopy = endReason;
    v67 = transitionDateCopy;
    v68 = deviceIdentifierCopy;
    v69 = configurationCopy;
    [v56 performBlockAndWait:v55];
    v35 = v42;
    v36 = iDCopy;
    v37 = estimatedEndDateCopy;
    v38 = v78[5];

    _Block_object_dispose(&v77, 8);
    contextCopy = v41;
    v39 = configurationCopy;
  }

  else
  {
    v38 = 0;
    v33 = locationCopy;
    v39 = configurationCopy;
    v35 = dateCopy;
    v36 = iDCopy;
    v37 = estimatedEndDateCopy;
    v34 = keyCopy;
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