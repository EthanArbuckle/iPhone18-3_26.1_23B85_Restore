@interface SMReceiverSessionStatusMO
+ (id)managedObjectWithReceiverSessionStatus:(id)status managedObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation SMReceiverSessionStatusMO

+ (id)managedObjectWithReceiverSessionStatus:(id)status managedObject:(id)object inManagedObjectContext:(id)context
{
  statusCopy = status;
  objectCopy = object;
  contextCopy = context;
  v10 = contextCopy;
  if (!statusCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: sessionStatus";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (contextCopy)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__59;
    v24 = __Block_byref_object_dispose__59;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __105__SMReceiverSessionStatusMO_managedObjectWithReceiverSessionStatus_managedObject_inManagedObjectContext___block_invoke;
    v15[3] = &unk_2788C5DA0;
    v19 = buf;
    v16 = objectCopy;
    v17 = v10;
    v18 = statusCopy;
    [v17 performBlockAndWait:v15];
    v11 = *(v21 + 5);

    _Block_object_dispose(buf, 8);
    goto LABEL_8;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v13 = "Invalid parameter not satisfying: managedObjectContext";
    goto LABEL_12;
  }

LABEL_7:

  v11 = 0;
LABEL_8:

  return v11;
}

uint64_t __105__SMReceiverSessionStatusMO_managedObjectWithReceiverSessionStatus_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[SMReceiverSessionStatusMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = [*(a1 + 48) lastUpdateDate];
  [*(*(*(a1 + 56) + 8) + 40) setLastUpdateDate:v5];

  v6 = [*(a1 + 48) sessionID];
  [*(*(*(a1 + 56) + 8) + 40) setSessionID:v6];

  v7 = [*(a1 + 48) initiatorHandle];
  v8 = [v7 primaryHandle];
  [*(*(*(a1 + 56) + 8) + 40) setInitiatorPrimaryHandle:v8];

  v9 = [*(a1 + 48) initiatorHandle];
  v10 = [v9 secondaryHandles];
  [*(*(*(a1 + 56) + 8) + 40) setInitiatorSecondaryHandles:v10];

  v11 = [*(a1 + 48) receiverHandle];
  [*(*(*(a1 + 56) + 8) + 40) setReceiverHandle:v11];

  v12 = [*(a1 + 48) cacheExpiryDate];
  [*(*(*(a1 + 56) + 8) + 40) setCacheExpiryDate:v12];

  [*(*(*(a1 + 56) + 8) + 40) setSessionEndReason:{objc_msgSend(*(a1 + 48), "sessionEndReason")}];
  v13 = [*(a1 + 48) cacheRequestDate];
  [*(*(*(a1 + 56) + 8) + 40) setCacheRequestDate:v13];

  [*(*(*(a1 + 56) + 8) + 40) setTriggerType:{objc_msgSend(*(a1 + 48), "triggerType")}];
  v14 = [*(a1 + 48) triggerDate];
  [*(*(*(a1 + 56) + 8) + 40) setTriggerDate:v14];

  v15 = [*(a1 + 48) destinationMapItem];
  [*(*(*(a1 + 56) + 8) + 40) setDestinationMapItem:v15];

  [*(*(*(a1 + 56) + 8) + 40) setDestinationType:{objc_msgSend(*(a1 + 48), "destinationType")}];
  v16 = [*(a1 + 48) estimatedEndDate];
  [*(*(*(a1 + 56) + 8) + 40) setEstimatedEndDate:v16];

  v17 = [*(a1 + 48) coarseEstimatedEndDate];
  [*(*(*(a1 + 56) + 8) + 40) setCoarseEstimatedEndDate:v17];

  v18 = [*(a1 + 48) sessionStartDate];
  [*(*(*(a1 + 56) + 8) + 40) setSessionStartDate:v18];

  [*(*(*(a1 + 56) + 8) + 40) setSessionType:{objc_msgSend(*(a1 + 48), "sessionType")}];
  [*(*(*(a1 + 56) + 8) + 40) setZoneShareAccepted:{objc_msgSend(*(a1 + 48), "zoneShareAccepted")}];
  [*(*(*(a1 + 56) + 8) + 40) setSessionState:{objc_msgSend(*(a1 + 48), "sessionState")}];
  v19 = [*(a1 + 48) locationOfTrigger];
  v20 = [v19 date];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerDate:v20];

  v21 = [*(a1 + 48) locationOfTrigger];
  [v21 latitude];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerLatitude:?];

  v22 = [*(a1 + 48) locationOfTrigger];
  [v22 longitude];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerLongitude:?];

  v23 = [*(a1 + 48) locationOfTrigger];
  [v23 horizontalUncertainty];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerHorizontalUncertainty:?];

  v24 = [*(a1 + 48) locationOfTrigger];
  [v24 altitude];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerAltitude:?];

  v25 = [*(a1 + 48) locationOfTrigger];
  [v25 verticalUncertainty];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerVerticalUncertainty:?];

  v26 = [*(a1 + 48) locationOfTrigger];
  [v26 speed];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerSpeed:?];

  v27 = [*(a1 + 48) locationOfTrigger];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerSourceAccuracy:{objc_msgSend(v27, "sourceAccuracy")}];

  v28 = [*(a1 + 48) locationOfTrigger];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerReferenceFrame:{objc_msgSend(v28, "referenceFrame")}];

  v29 = [*(a1 + 48) lastSessionStartInfoRequestDate];
  [*(*(*(a1 + 56) + 8) + 40) setLastSessionStartInfoRequestDate:v29];

  [*(*(*(a1 + 56) + 8) + 40) setSessionStartInfoRequestCount:{objc_msgSend(*(a1 + 48), "sessionStartInfoRequestCount")}];
  v30 = [*(a1 + 48) lastKeyReleaseInfoRequestDate];
  [*(*(*(a1 + 56) + 8) + 40) setLastKeyReleaseInfoRequestDate:v30];

  [*(*(*(a1 + 56) + 8) + 40) setKeyReleaseInfoRequestCount:{objc_msgSend(*(a1 + 48), "keyReleaseInfoRequestCount")}];
  [*(*(*(a1 + 56) + 8) + 40) setIsSOSTrigger:{objc_msgSend(*(a1 + 48), "isSOSTrigger")}];
  [*(*(*(a1 + 56) + 8) + 40) setLowPowerModeWarningState:{objc_msgSend(*(a1 + 48), "lowPowerModeWarningState")}];
  v31 = [*(a1 + 48) cacheDownloadError];
  v32 = *(*(*(a1 + 56) + 8) + 40);

  return [v32 setCacheDownloadError:v31];
}

@end