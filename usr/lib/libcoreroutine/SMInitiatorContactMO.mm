@interface SMInitiatorContactMO
+ (id)getLocationMOFromLocation:(id)a3 context:(id)a4;
+ (id)managedObjectWithInitiatorContact:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation SMInitiatorContactMO

+ (id)managedObjectWithInitiatorContact:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v13 = "Invalid parameter not satisfying: initiatorContact";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (v9)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__14;
    v24 = __Block_byref_object_dispose__14;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __95__SMInitiatorContactMO_managedObjectWithInitiatorContact_managedObject_inManagedObjectContext___block_invoke;
    v15[3] = &unk_2788C5DA0;
    v19 = buf;
    v16 = v8;
    v17 = v10;
    v18 = v7;
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

void __95__SMInitiatorContactMO_managedObjectWithInitiatorContact_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[SMInitiatorContactMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = [*(a1 + 48) shouldBeCleanedUpDate];
  [*(*(*(a1 + 56) + 8) + 40) setShouldBeCleanedUpDate:v5];

  [*(*(*(a1 + 56) + 8) + 40) setCloudkitShareZoneCleanedUpSuccessfully:{objc_msgSend(*(a1 + 48), "cloudkitShareZoneCleanedUpSuccessfully")}];
  v6 = [*(a1 + 48) keyReleaseMessageSendDate];
  [*(*(*(a1 + 56) + 8) + 40) setKeyReleaseMessageSendDate:v6];

  v7 = [*(a1 + 48) scheduledSendExpiryDate];
  [*(*(*(a1 + 56) + 8) + 40) setScheduledSendExpiryDate:v7];

  v8 = [*(a1 + 48) sessionUUID];
  [*(*(*(a1 + 56) + 8) + 40) setSessionUUID:v8];

  v9 = [*(a1 + 48) allowReadToken];
  [*(*(*(a1 + 56) + 8) + 40) setAllowReadToken:v9];

  v10 = [*(a1 + 48) safetyCacheKey];
  [*(*(*(a1 + 56) + 8) + 40) setSafetyCacheKey:v10];

  v11 = [*(a1 + 48) syncDate];
  [*(*(*(a1 + 56) + 8) + 40) setSyncDate:v11];

  v12 = [*(a1 + 48) scheduleSendMessageGUID];
  [*(*(*(a1 + 56) + 8) + 40) setScheduleSendMessageGUID:v12];

  v13 = [*(a1 + 48) unlockLocation];
  v14 = [SMInitiatorContactMO getLocationMOFromLocation:v13 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setUnlockLocation:v14];

  v15 = [*(a1 + 48) lockLocation];
  v16 = [SMInitiatorContactMO getLocationMOFromLocation:v15 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setLockLocation:v16];

  v17 = [*(a1 + 48) startingLocation];
  v18 = [SMInitiatorContactMO getLocationMOFromLocation:v17 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setStartingLocation:v18];

  v19 = [*(a1 + 48) offWristLocation];
  v20 = [SMInitiatorContactMO getLocationMOFromLocation:v19 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setOffWristLocation:v20];

  v21 = [*(a1 + 48) parkedCarLocation];
  v22 = [SMInitiatorContactMO getLocationMOFromLocation:v21 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setParkedCarLocation:v22];

  v23 = [*(a1 + 48) destinationMapItem];
  [*(*(*(a1 + 56) + 8) + 40) setDestinationMapItem:v23];

  v24 = [*(a1 + 48) timeCacheUploadCompletion];
  [*(*(*(a1 + 56) + 8) + 40) setTimeCacheUploadCompletion:v24];

  [*(a1 + 48) maxCacheSize];
  [*(*(*(a1 + 56) + 8) + 40) setMaxCacheSize:?];
  [*(*(*(a1 + 56) + 8) + 40) setMaxLocationsInTrace:{objc_msgSend(*(a1 + 48), "maxLocationsInTrace")}];
  [*(a1 + 48) maxTimeBetweenCacheUpdates];
  [*(*(*(a1 + 56) + 8) + 40) setMaxTimeBetweenCacheUpdates:?];
  [*(*(*(a1 + 56) + 8) + 40) setNumCacheUpdates:{objc_msgSend(*(a1 + 48), "numCacheUpdates")}];
  [*(a1 + 48) timeTilCacheRelease];
  [*(*(*(a1 + 56) + 8) + 40) setTimeTilCacheRelease:?];
  [*(*(*(a1 + 56) + 8) + 40) setNumberOfSuccessfulCacheUpdates:{objc_msgSend(*(a1 + 48), "numberOfSuccessfulCacheUpdates")}];
  [*(*(*(a1 + 56) + 8) + 40) setNumberOfMessageCancelling:{objc_msgSend(*(a1 + 48), "numberOfMessageCancelling")}];
  [*(*(*(a1 + 56) + 8) + 40) setNumberOfSuccessfulMessageCancelling:{objc_msgSend(*(a1 + 48), "numberOfSuccessfulMessageCancelling")}];
  [*(*(*(a1 + 56) + 8) + 40) setNumberOfMessageScheduling:{objc_msgSend(*(a1 + 48), "numberOfMessageScheduling")}];
  [*(*(*(a1 + 56) + 8) + 40) setNumberOfSuccessfulMessageScheduling:{objc_msgSend(*(a1 + 48), "numberOfSuccessfulMessageScheduling")}];
  [*(*(*(a1 + 56) + 8) + 40) setWasCacheReleased:{objc_msgSend(*(a1 + 48), "wasCacheReleased")}];
  [*(*(*(a1 + 56) + 8) + 40) setWasScheduledSendTriggered:{objc_msgSend(*(a1 + 48), "wasScheduledSendTriggered")}];
  v25 = [*(a1 + 48) locationOfTrigger];
  v26 = [v25 date];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerDate:v26];

  v27 = [*(a1 + 48) locationOfTrigger];
  [v27 latitude];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerLatitude:?];

  v28 = [*(a1 + 48) locationOfTrigger];
  [v28 longitude];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerLongitude:?];

  v29 = [*(a1 + 48) locationOfTrigger];
  [v29 horizontalUncertainty];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerHorizontalUncertainty:?];

  v30 = [*(a1 + 48) locationOfTrigger];
  [v30 altitude];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerAltitude:?];

  v31 = [*(a1 + 48) locationOfTrigger];
  [v31 verticalUncertainty];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerVerticalUncertainty:?];

  v32 = [*(a1 + 48) locationOfTrigger];
  [v32 speed];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerSpeed:?];

  v33 = [*(a1 + 48) locationOfTrigger];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerSourceAccuracy:{objc_msgSend(v33, "sourceAccuracy")}];

  v34 = [*(a1 + 48) locationOfTrigger];
  [*(*(*(a1 + 56) + 8) + 40) setLocationOfTriggerReferenceFrame:{objc_msgSend(v34, "referenceFrame")}];

  v35 = [*(a1 + 48) triggerDate];
  [*(*(*(a1 + 56) + 8) + 40) setTriggerDate:v35];

  [*(*(*(a1 + 56) + 8) + 40) setLockState:{objc_msgSend(*(a1 + 48), "lockState")}];
  v36 = [*(a1 + 48) cacheUpdateBackstopExpiryDate];
  [*(*(*(a1 + 56) + 8) + 40) setCacheUpdateBackstopExpiryDate:v36];

  [*(*(*(a1 + 56) + 8) + 40) setNumberOfHandoffBecomingActive:{objc_msgSend(*(a1 + 48), "numberOfHandoffBecomingActive")}];
  [*(*(*(a1 + 56) + 8) + 40) setNumberOfHandoffBecomingNonActive:{objc_msgSend(*(a1 + 48), "numberOfHandoffBecomingNonActive")}];
  v37 = [*(a1 + 48) earliestActiveDeviceIdentifier];
  [*(*(*(a1 + 56) + 8) + 40) setEarliestActiveDeviceIdentifier:v37];

  v38 = [*(a1 + 48) latestActiveDeviceIdentifier];
  [*(*(*(a1 + 56) + 8) + 40) setLatestActiveDeviceIdentifier:v38];

  v39 = +[SMCacheMO fetchRequest];
  v40 = MEMORY[0x277CCAC30];
  v41 = [*(a1 + 48) phoneCache];
  v42 = [v41 identifier];
  v43 = [v40 predicateWithFormat:@"%K == %@", @"identifier", v42];
  [v39 setPredicate:v43];

  v44 = *(a1 + 40);
  v76 = 0;
  v45 = [v44 executeFetchRequest:v39 error:&v76];
  v46 = v76;
  v47 = [*(a1 + 48) phoneCache];
  v48 = [v45 firstObject];
  v49 = [SMCacheMO managedObjectWithCache:v47 managedObject:v48 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setPhoneCache:v49];

  if (v46)
  {
    v50 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v71 = [*(a1 + 48) sessionUUID];
      v65 = [*(a1 + 48) identifier];
      v73 = [*(a1 + 48) phoneCache];
      v66 = [v73 identifier];
      *buf = 136316162;
      v78 = "+[SMInitiatorContactMO managedObjectWithInitiatorContact:managedObject:inManagedObjectContext:]_block_invoke";
      v79 = 2112;
      v80 = v71;
      v81 = 2112;
      v82 = v65;
      v83 = 2112;
      v84 = v66;
      v67 = v66;
      v85 = 2112;
      v86 = v46;
      _os_log_error_impl(&dword_2304B3000, v50, OS_LOG_TYPE_ERROR, "SMInitiatorContactMO,%s,sessionUUID,%@,initiatorContact.identifier,%@,phoneCache.identifier,%@,phone cache fetch error,%@", buf, 0x34u);
    }
  }

  v51 = +[SMCacheMO fetchRequest];
  v52 = MEMORY[0x277CCAC30];
  v53 = [*(a1 + 48) watchCache];
  v54 = [v53 identifier];
  v55 = [v52 predicateWithFormat:@"%K == %@", @"identifier", v54];
  [v51 setPredicate:v55];

  v56 = *(a1 + 40);
  v75 = 0;
  v57 = [v56 executeFetchRequest:v51 error:&v75];
  v58 = v75;
  v59 = [*(a1 + 48) watchCache];
  v60 = [v57 firstObject];
  v61 = [SMCacheMO managedObjectWithCache:v59 managedObject:v60 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setWatchCache:v61];

  if (v58)
  {
    v62 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v72 = [*(a1 + 48) sessionUUID];
      v68 = [*(a1 + 48) identifier];
      v74 = [*(a1 + 48) watchCache];
      v69 = [v74 identifier];
      *buf = 136316162;
      v78 = "+[SMInitiatorContactMO managedObjectWithInitiatorContact:managedObject:inManagedObjectContext:]_block_invoke";
      v79 = 2112;
      v80 = v72;
      v81 = 2112;
      v82 = v68;
      v83 = 2112;
      v84 = v69;
      v70 = v69;
      v85 = 2112;
      v86 = v58;
      _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "SMInitiatorContactMO,%s,sessionUUID,%@,initiatorContact.identifier,%@,watchCache.identifier,%@,watch cache fetch error,%@", buf, 0x34u);
    }
  }

  v63 = [*(a1 + 48) workoutEvents];
  v64 = [SMWorkoutEventMO getWorkoutEventMOFromWorkoutEvents:v63 context:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setWorkoutEvents:v64];
}

+ (id)getLocationMOFromLocation:(id)a3 context:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = +[SMLocationMO fetchRequest];
    v8 = MEMORY[0x277CCAC30];
    v9 = [v6 identifier];
    v10 = [v8 predicateWithFormat:@"%K == %@", @"identifier", v9];
    [v7 setPredicate:v10];

    v15 = 0;
    v11 = [v5 executeFetchRequest:v7 error:&v15];
    v12 = [v11 firstObject];
    v13 = [SMLocationMO managedObjectWithLocation:v6 managedObject:v12 inManagedObjectContext:v5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end