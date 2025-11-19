@interface SMReceiverContactMO
+ (id)managedObjectWithReceiverContact:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation SMReceiverContactMO

+ (id)managedObjectWithReceiverContact:(id)a3 managedObject:(id)a4 inManagedObjectContext:(id)a5
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
    v13 = "Invalid parameter not satisfying: receiverContact";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    goto LABEL_7;
  }

  if (v9)
  {
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__88;
    v24 = __Block_byref_object_dispose__88;
    v25 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __93__SMReceiverContactMO_managedObjectWithReceiverContact_managedObject_inManagedObjectContext___block_invoke;
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

void __93__SMReceiverContactMO_managedObjectWithReceiverContact_managedObject_inManagedObjectContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [[SMReceiverContactMO alloc] initWithContext:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  if (!v2)
  {
  }

  v4 = [*(a1 + 48) identifier];
  [*(*(*(a1 + 56) + 8) + 40) setIdentifier:v4];

  v5 = [*(a1 + 48) syncDate];
  [*(*(*(a1 + 56) + 8) + 40) setSyncDate:v5];

  v6 = [*(a1 + 48) allowReadToken];
  [*(*(*(a1 + 56) + 8) + 40) setAllowReadToken:v6];

  v7 = [*(a1 + 48) safetyCacheKey];
  [*(*(*(a1 + 56) + 8) + 40) setSafetyCacheKey:v7];

  v8 = [*(a1 + 48) shareURL];
  [*(*(*(a1 + 56) + 8) + 40) setShareURL:v8];

  v9 = [*(a1 + 48) participantID];
  [*(*(*(a1 + 56) + 8) + 40) setParticipantID:v9];

  v10 = [*(a1 + 48) sharingInvitationData];
  [*(*(*(a1 + 56) + 8) + 40) setSharingInvitationData:v10];

  v11 = [*(a1 + 48) sessionUUID];
  [*(*(*(a1 + 56) + 8) + 40) setSessionUUID:v11];

  v12 = +[SMCacheMO fetchRequest];
  v13 = MEMORY[0x277CCAC30];
  v14 = [*(a1 + 48) phoneCache];
  v15 = [v14 identifier];
  v16 = [v13 predicateWithFormat:@"%K == %@", @"identifier", v15];
  v45 = v12;
  [v12 setPredicate:v16];

  v17 = *(a1 + 40);
  v48 = 0;
  v44 = [v17 executeFetchRequest:v12 error:&v48];
  v18 = v48;
  v19 = [*(a1 + 48) phoneCache];
  v20 = [v44 firstObject];
  v21 = [SMCacheMO managedObjectWithCache:v19 managedObject:v20 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setPhoneCache:v21];

  v22 = +[SMCacheMO fetchRequest];
  v23 = MEMORY[0x277CCAC30];
  v24 = [*(a1 + 48) watchCache];
  v25 = [v24 identifier];
  v26 = [v23 predicateWithFormat:@"%K == %@", @"identifier", v25];
  [v22 setPredicate:v26];

  v27 = *(a1 + 40);
  v47 = v18;
  v43 = [v27 executeFetchRequest:v22 error:&v47];
  v28 = v47;

  v29 = [*(a1 + 48) watchCache];
  v30 = [v43 firstObject];
  v31 = [SMCacheMO managedObjectWithCache:v29 managedObject:v30 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setWatchCache:v31];

  v32 = +[SMReceiverSessionStatusMO fetchRequest];
  v33 = MEMORY[0x277CCAC30];
  v34 = [*(a1 + 48) sessionStatus];
  v35 = [v34 identifier];
  v36 = [v33 predicateWithFormat:@"%K == %@", @"identifier", v35];
  [v32 setPredicate:v36];

  v37 = *(a1 + 40);
  v46 = v28;
  v38 = [v37 executeFetchRequest:v32 error:&v46];
  v39 = v46;

  v40 = [*(a1 + 48) sessionStatus];
  v41 = [v38 firstObject];
  v42 = [SMReceiverSessionStatusMO managedObjectWithReceiverSessionStatus:v40 managedObject:v41 inManagedObjectContext:*(a1 + 40)];
  [*(*(*(a1 + 56) + 8) + 40) setSessionStatus:v42];

  [*(*(*(a1 + 56) + 8) + 40) setMaxPhoneCacheSize:{objc_msgSend(*(a1 + 48), "maxPhoneCacheSize")}];
  [*(*(*(a1 + 56) + 8) + 40) setMaxWatchCacheSize:{objc_msgSend(*(a1 + 48), "maxWatchCacheSize")}];
  [*(*(*(a1 + 56) + 8) + 40) setMaxLocationsInPhoneCacheTrace:{objc_msgSend(*(a1 + 48), "maxLocationsInPhoneCacheTrace")}];
  [*(*(*(a1 + 56) + 8) + 40) setMaxLocationsInWatchCacheTrace:{objc_msgSend(*(a1 + 48), "maxLocationsInWatchCacheTrace")}];
  [*(*(*(a1 + 56) + 8) + 40) setNumCacheDownloads:{objc_msgSend(*(a1 + 48), "numCacheDownloads")}];
  [*(*(*(a1 + 56) + 8) + 40) setNumSuccessfulCacheDownloads:{objc_msgSend(*(a1 + 48), "numSuccessfulCacheDownloads")}];
  [*(a1 + 48) timeTillCacheRelease];
  [*(*(*(a1 + 56) + 8) + 40) setTimeTillCacheRelease:?];
  [*(a1 + 48) timeTillFirstSuccessfulCacheDownload];
  [*(*(*(a1 + 56) + 8) + 40) setTimeTillFirstSuccessfulCacheDownload:?];
  [*(*(*(a1 + 56) + 8) + 40) setFirstDetailViewSessionState:{objc_msgSend(*(a1 + 48), "firstDetailViewSessionState")}];
  [*(*(*(a1 + 56) + 8) + 40) setLastDetailViewSessionState:{objc_msgSend(*(a1 + 48), "lastDetailViewSessionState")}];
  [*(*(*(a1 + 56) + 8) + 40) setPhoneMaxWorkoutEvents:{objc_msgSend(*(a1 + 48), "phoneMaxWorkoutEvents")}];
  [*(*(*(a1 + 56) + 8) + 40) setWatchMaxWorkoutEvents:{objc_msgSend(*(a1 + 48), "watchMaxWorkoutEvents")}];
}

@end