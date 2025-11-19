@interface SMInitiatorContact
@end

@implementation SMInitiatorContact

void __76__SMInitiatorContact_RTCoreDataTransformable__createWithInitiatorContactMO___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D4AC40];
  v3 = [*(a1 + 32) workoutEvents];
  v81 = [v2 createWithSMWorkoutEventMOs:v3];

  v4 = objc_alloc(MEMORY[0x277D01160]);
  [*(a1 + 32) locationOfTriggerLatitude];
  v6 = v5;
  [*(a1 + 32) locationOfTriggerLongitude];
  v8 = v7;
  [*(a1 + 32) locationOfTriggerHorizontalUncertainty];
  v10 = v9;
  [*(a1 + 32) locationOfTriggerAltitude];
  v12 = v11;
  [*(a1 + 32) locationOfTriggerVerticalUncertainty];
  v14 = v13;
  v15 = [*(a1 + 32) locationOfTriggerDate];
  v16 = [*(a1 + 32) locationOfTriggerReferenceFrame];
  [*(a1 + 32) locationOfTriggerSpeed];
  v80 = [v4 initWithLatitude:v15 longitude:v16 horizontalUncertainty:objc_msgSend(*(a1 + 32) altitude:"locationOfTriggerSourceAccuracy") verticalUncertainty:v6 date:v8 referenceFrame:v10 speed:v12 sourceAccuracy:{v14, v17}];

  v65 = objc_alloc(MEMORY[0x277D4AAF0]);
  v79 = [*(a1 + 32) identifier];
  v78 = [*(a1 + 32) shouldBeCleanedUpDate];
  v63 = [*(a1 + 32) cloudkitShareZoneCleanedUpSuccessfully];
  v77 = [*(a1 + 32) syncDate];
  v75 = [*(a1 + 32) keyReleaseMessageSendDate];
  v74 = [*(a1 + 32) scheduledSendExpiryDate];
  v18 = MEMORY[0x277D4AA70];
  v67 = [*(a1 + 32) phoneCache];
  v76 = [v18 createWithManagedObject:v67];
  v19 = MEMORY[0x277D4AA70];
  v66 = [*(a1 + 32) watchCache];
  v73 = [v19 createWithManagedObject:v66];
  v72 = [*(a1 + 32) sessionUUID];
  v71 = [*(a1 + 32) safetyCacheKey];
  v70 = [*(a1 + 32) allowReadToken];
  v69 = [*(a1 + 32) scheduleSendMessageGUID];
  v20 = MEMORY[0x277D4AB28];
  v64 = [*(a1 + 32) unlockLocation];
  v58 = [v20 createWithManagedObject:v64];
  v21 = MEMORY[0x277D4AB28];
  v62 = [*(a1 + 32) lockLocation];
  v57 = [v21 createWithManagedObject:v62];
  v22 = MEMORY[0x277D4AB28];
  v61 = [*(a1 + 32) startingLocation];
  v56 = [v22 createWithManagedObject:v61];
  v23 = MEMORY[0x277D4AB28];
  v60 = [*(a1 + 32) offWristLocation];
  v55 = [v23 createWithManagedObject:v60];
  v24 = MEMORY[0x277D4AB28];
  v59 = [*(a1 + 32) parkedCarLocation];
  v68 = [v24 createWithManagedObject:v59];
  v54 = [*(a1 + 32) destinationMapItem];
  v51 = [*(a1 + 32) timeCacheUploadCompletion];
  [*(a1 + 32) maxCacheSize];
  v26 = v25;
  v53 = [*(a1 + 32) maxLocationsInTrace];
  [*(a1 + 32) maxTimeBetweenCacheUpdates];
  v28 = v27;
  v52 = [*(a1 + 32) numCacheUpdates];
  [*(a1 + 32) timeTilCacheRelease];
  v30 = v29;
  v50 = [*(a1 + 32) numberOfSuccessfulCacheUpdates];
  v49 = [*(a1 + 32) numberOfMessageCancelling];
  v48 = [*(a1 + 32) numberOfSuccessfulMessageCancelling];
  v47 = [*(a1 + 32) numberOfMessageScheduling];
  v46 = [*(a1 + 32) numberOfSuccessfulMessageScheduling];
  v45 = [*(a1 + 32) wasCacheReleased];
  v31 = [*(a1 + 32) wasScheduledSendTriggered];
  v44 = [*(a1 + 32) triggerDate];
  v32 = [*(a1 + 32) lockState];
  v43 = [*(a1 + 32) cacheUpdateBackstopExpiryDate];
  v33 = [v81 mutableCopy];
  v34 = [*(a1 + 32) numberOfHandoffBecomingActive];
  v35 = [*(a1 + 32) numberOfHandoffBecomingNonActive];
  v36 = [*(a1 + 32) earliestActiveDeviceIdentifier];
  v37 = [*(a1 + 32) latestActiveDeviceIdentifier];
  LOBYTE(v42) = v32;
  BYTE1(v41) = v31;
  LOBYTE(v41) = v45;
  v38 = [v65 initWithIdentifier:v79 shouldBeCleanedUpDate:v78 cloudkitShareZoneCleanedUpSuccessfully:v63 syncDate:v77 keyReleaseMessageSendDate:v75 scheduledSendExpiryDate:v74 phoneCache:v26 watchCache:v28 sessionID:v30 safetyCacheKey:v76 allowReadToken:v73 scheduleSendMessageGUID:v72 unlockLocation:v71 lockLocation:v70 startingLocation:v69 offWristLocation:v58 parkedCarLocation:v57 destinationMapItem:v56 timeCacheUploadCompletion:v55 maxCacheSize:v68 maxLocationsInTrace:v54 maxTimeBetweenCacheUpdates:v51 numCacheUpdates:v53 timeTilCacheRelease:v52 numberOfSuccessfulCacheUpdates:v50 numberOfMessageCancelling:v49 numberOfSuccessfulMessageCancelling:v48 numberOfMessageScheduling:v47 numberOfSuccessfulMessageScheduling:v46 wasCacheReleased:v41 wasScheduledSendTriggered:v80 locationOfTrigger:v44 triggerDate:v42 lockState:v43 cacheUpdateBackstopExpiryDate:v33 workoutEvents:v34 numberOfHandoffBecomingActive:v35 numberOfHandoffBecomingNonActive:v36 earliestActiveDeviceIdentifier:v37 latestActiveDeviceIdentifier:?];
  v39 = *(*(a1 + 40) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v38;
}

@end