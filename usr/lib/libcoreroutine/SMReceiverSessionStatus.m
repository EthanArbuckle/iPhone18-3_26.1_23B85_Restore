@interface SMReceiverSessionStatus
@end

@implementation SMReceiverSessionStatus

void __86__SMReceiverSessionStatus_RTCoreDataTransformable__createWithReceiverSessionStatusMO___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4AAE8]);
  v3 = [*(a1 + 32) initiatorPrimaryHandle];
  v4 = [*(a1 + 32) initiatorSecondaryHandles];
  v37 = [v2 initWithPrimaryHandle:v3 secondaryHandles:v4];

  v5 = objc_alloc(MEMORY[0x277D01160]);
  [*(a1 + 32) locationOfTriggerLatitude];
  v7 = v6;
  [*(a1 + 32) locationOfTriggerLongitude];
  v9 = v8;
  [*(a1 + 32) locationOfTriggerHorizontalUncertainty];
  v11 = v10;
  [*(a1 + 32) locationOfTriggerAltitude];
  v13 = v12;
  [*(a1 + 32) locationOfTriggerVerticalUncertainty];
  v15 = v14;
  v16 = [*(a1 + 32) locationOfTriggerDate];
  v17 = [*(a1 + 32) locationOfTriggerReferenceFrame];
  [*(a1 + 32) locationOfTriggerSpeed];
  v19 = [v5 initWithLatitude:v16 longitude:v17 horizontalUncertainty:objc_msgSend(*(a1 + 32) altitude:"locationOfTriggerSourceAccuracy") verticalUncertainty:v7 date:v9 referenceFrame:v11 speed:v13 sourceAccuracy:{v15, v18}];

  v20 = objc_alloc(MEMORY[0x277D4AB58]);
  v21 = [*(a1 + 32) identifier];
  v22 = [*(a1 + 32) sessionID];
  v23 = [v20 initWithIdentifier:v21 sessionID:v22 initiatorHandle:v37];
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v26 = [*(a1 + 32) receiverHandle];
  [*(*(*(a1 + 40) + 8) + 40) setReceiverHandle:v26];

  v27 = [*(a1 + 32) lastUpdateDate];
  [*(*(*(a1 + 40) + 8) + 40) setLastUpdateDate:v27];

  v28 = [*(a1 + 32) cacheExpiryDate];
  [*(*(*(a1 + 40) + 8) + 40) setCacheExpiryDate:v28];

  [*(*(*(a1 + 40) + 8) + 40) setSessionEndReason:{objc_msgSend(*(a1 + 32), "sessionEndReason")}];
  v29 = [*(a1 + 32) cacheRequestDate];
  [*(*(*(a1 + 40) + 8) + 40) setCacheRequestDate:v29];

  [*(*(*(a1 + 40) + 8) + 40) setTriggerType:{objc_msgSend(*(a1 + 32), "triggerType")}];
  v30 = [*(a1 + 32) triggerDate];
  [*(*(*(a1 + 40) + 8) + 40) setTriggerDate:v30];

  v31 = [*(a1 + 32) destinationMapItem];
  [*(*(*(a1 + 40) + 8) + 40) setDestinationMapItem:v31];

  [*(*(*(a1 + 40) + 8) + 40) setDestinationType:{objc_msgSend(*(a1 + 32), "destinationType")}];
  v32 = [*(a1 + 32) estimatedEndDate];
  [*(*(*(a1 + 40) + 8) + 40) setEstimatedEndDate:v32];

  v33 = [*(a1 + 32) coarseEstimatedEndDate];
  [*(*(*(a1 + 40) + 8) + 40) setCoarseEstimatedEndDate:v33];

  v34 = [*(a1 + 32) sessionStartDate];
  [*(*(*(a1 + 40) + 8) + 40) setSessionStartDate:v34];

  [*(*(*(a1 + 40) + 8) + 40) setSessionType:{objc_msgSend(*(a1 + 32), "sessionType")}];
  [*(*(*(a1 + 40) + 8) + 40) setZoneShareAccepted:{objc_msgSend(*(a1 + 32), "zoneShareAccepted")}];
  [*(*(*(a1 + 40) + 8) + 40) setSessionState:{objc_msgSend(*(a1 + 32), "sessionState")}];
  [*(*(*(a1 + 40) + 8) + 40) setLocationOfTrigger:v19];
  v35 = [*(a1 + 32) lastSessionStartInfoRequestDate];
  [*(*(*(a1 + 40) + 8) + 40) setLastSessionStartInfoRequestDate:v35];

  [*(*(*(a1 + 40) + 8) + 40) setSessionStartInfoRequestCount:{objc_msgSend(*(a1 + 32), "sessionStartInfoRequestCount")}];
  v36 = [*(a1 + 32) lastKeyReleaseInfoRequestDate];
  [*(*(*(a1 + 40) + 8) + 40) setLastKeyReleaseInfoRequestDate:v36];

  [*(*(*(a1 + 40) + 8) + 40) setKeyReleaseInfoRequestCount:{objc_msgSend(*(a1 + 32), "keyReleaseInfoRequestCount")}];
  [*(*(*(a1 + 40) + 8) + 40) setIsSOSTrigger:{objc_msgSend(*(a1 + 32), "isSOSTrigger")}];
  [*(*(*(a1 + 40) + 8) + 40) setLowPowerModeWarningState:{objc_msgSend(*(a1 + 32), "lowPowerModeWarningState")}];
  [*(*(*(a1 + 40) + 8) + 40) setCacheDownloadError:{objc_msgSend(*(a1 + 32), "cacheDownloadError")}];
}

@end