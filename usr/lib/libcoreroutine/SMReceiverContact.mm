@interface SMReceiverContact
@end

@implementation SMReceiverContact

void __74__SMReceiverContact_RTCoreDataTransformable__createWithReceiverContactMO___block_invoke(uint64_t a1)
{
  v28 = objc_alloc(MEMORY[0x277D4AB48]);
  v32 = [*(a1 + 32) identifier];
  v27 = [*(a1 + 32) syncDate];
  v2 = MEMORY[0x277D4AA70];
  v31 = [*(a1 + 32) phoneCache];
  v26 = [v2 createWithManagedObject:v31];
  v3 = MEMORY[0x277D4AA70];
  v30 = [*(a1 + 32) watchCache];
  v25 = [v3 createWithManagedObject:v30];
  v4 = MEMORY[0x277D4AB58];
  v29 = [*(a1 + 32) sessionStatus];
  v24 = [v4 createWithManagedObject:v29];
  v23 = [*(a1 + 32) allowReadToken];
  v22 = [*(a1 + 32) safetyCacheKey];
  v21 = [*(a1 + 32) shareURL];
  v20 = [*(a1 + 32) participantID];
  v5 = [*(a1 + 32) sharingInvitationData];
  v18 = [*(a1 + 32) numCacheDownloads];
  v19 = [*(a1 + 32) numSuccessfulCacheDownloads];
  v6 = [*(a1 + 32) maxPhoneCacheSize];
  v7 = [*(a1 + 32) maxWatchCacheSize];
  v8 = [*(a1 + 32) maxLocationsInPhoneCacheTrace];
  v9 = [*(a1 + 32) maxLocationsInWatchCacheTrace];
  [*(a1 + 32) timeTillCacheRelease];
  v11 = v10;
  [*(a1 + 32) timeTillFirstSuccessfulCacheDownload];
  v13 = v12;
  v17 = [*(a1 + 32) sessionUUID];
  v14 = [v28 initWithIdentifier:v32 syncDate:v27 phoneCache:v26 watchCache:v25 sessionStatus:v24 allowReadToken:v23 safetyCacheKey:v11 shareURL:v13 participantID:v22 sharingInvitationData:v21 numCacheDownloads:v20 numSuccessfulCacheDownloads:v5 maxPhoneCacheSize:v18 maxWatchCacheSize:v19 maxLocationsInPhoneCacheTrace:v6 maxLocationsInWatchCacheTrace:v7 timeTillCacheRelease:v8 timeTillFirstSuccessfulCacheDownload:v9 sessionID:v17 firstDetailViewSessionState:objc_msgSend(*(a1 + 32) lastDetailViewSessionState:"firstDetailViewSessionState") phoneMaxWorkoutEvents:objc_msgSend(*(a1 + 32) watchMaxWorkoutEvents:{"lastDetailViewSessionState"), objc_msgSend(*(a1 + 32), "phoneMaxWorkoutEvents"), objc_msgSend(*(a1 + 32), "watchMaxWorkoutEvents")}];
  v15 = *(*(a1 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

@end