@interface POUtilities
+ (BOOL)errorIsApplicationRequiresPreflight:(id)a3;
+ (BOOL)errorIsNoNetwork:(id)a3;
+ (BOOL)isPodcastsNowPlaying;
+ (_MRSystemAppPlaybackQueue)createPlaybackQueueFromRequestIdentifiers:(id)a3 startPlaying:(BOOL)a4 assetInfo:(id)a5 isSiriRequest:(BOOL)a6 requesterSharedUserId:(id)a7 sharedUserIdFromPlayableITunesAccount:(id)a8;
+ (id)commandStatusForRemoteStatus:(unsigned int)a3 error:(id)a4 isRemoteStorePlayback:(BOOL)a5;
+ (id)identifierFromDomainObject:(id)a3;
+ (id)typeFromDomainObject:(id)a3;
+ (void)modifyContextForAirplay:(id)a3 andPlayLocally:(id)a4 completion:(id)a5;
+ (void)performPodcastsPlaybackRequestWithIdentifier:(id)a3 assetInfo:(id)a4 hashedRouteUIDs:(id)a5 decodedRouteUIDs:(id)a6 originatingOutputDeviceUID:(id)a7 startPlaying:(BOOL)a8 requesterSharedUserId:(id)a9 sharedUserIdFromPlayableITunesAccount:(id)a10 context:(id)a11 allowsFallback:(BOOL)a12 completion:(id)a13;
+ (void)setPlaybackRate:(float)a3 failureErrorCode:(int64_t)a4 completion:(id)a5;
@end

@implementation POUtilities

+ (id)identifierFromDomainObject:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 lastPathComponent];

  return v4;
}

+ (id)typeFromDomainObject:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 host];

  return v4;
}

+ (void)performPodcastsPlaybackRequestWithIdentifier:(id)a3 assetInfo:(id)a4 hashedRouteUIDs:(id)a5 decodedRouteUIDs:(id)a6 originatingOutputDeviceUID:(id)a7 startPlaying:(BOOL)a8 requesterSharedUserId:(id)a9 sharedUserIdFromPlayableITunesAccount:(id)a10 context:(id)a11 allowsFallback:(BOOL)a12 completion:(id)a13
{
  v57 = a8;
  v86 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v61 = a4;
  v18 = a5;
  v19 = a6;
  v60 = a7;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a13;
  if ([v17 length])
  {
    v55 = v23;
    v58 = v21;
    v59 = v20;
    v24 = v19;
    if ([v18 count] || objc_msgSend(v19, "count") && objc_msgSend(v60, "length") || (+[PODataSource sharedInstance](PODataSource, "sharedInstance"), v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "isPodcastsInstalled"), v52, (v53 & 1) != 0))
    {
      POLogInitIfNeeded();
      if (POLogContextCommand)
      {
        v25 = POLogContextCommand;
      }

      else
      {
        v25 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        [v18 componentsJoinedByString:{@", "}];
        v28 = v27 = v18;
        v29 = [v19 componentsJoinedByString:{@", "}];
        *buf = 138413058;
        v79 = v17;
        v80 = 2112;
        v81 = v28;
        v82 = 2112;
        v83 = v29;
        v84 = 2112;
        v85 = v60;
        v24 = v19;
        _os_log_impl(&dword_25E9F0000, v26, OS_LOG_TYPE_DEFAULT, "Will be setting playbackQueue using MediaRemote to %@ with routeUIDs %@ decodedRouteUIDs %@ originatingOutputDeviceUID %@", buf, 0x2Au);

        v18 = v27;
      }

      v77 = v17;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
      v31 = [a1 createPlaybackQueueFromRequestIdentifiers:v30 startPlaying:v57 assetInfo:v61 isSiriRequest:v22 != 0 requesterSharedUserId:v20 sharedUserIdFromPlayableITunesAccount:v58];

      v32 = v18;
      v33 = v17;
      v34 = v24;
      v35 = v22;
      v36 = [[MTMPCAssistantGenericPlaybackQueue alloc] initWithContextID:v22 playbackQueueRef:v31];
      v37 = [MEMORY[0x277D27850] podcastsApplicationDestination];
      [v37 setSingleGroup:1];
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke;
      v62[3] = &unk_279A44AB0;
      v74 = a1;
      v63 = v37;
      v64 = v32;
      v65 = v34;
      v38 = v60;
      v66 = v60;
      v23 = v55;
      v73 = v55;
      v67 = v36;
      v75 = a12;
      v68 = v33;
      v76 = v57;
      v69 = v61;
      v70 = v35;
      v71 = v59;
      v72 = v58;
      v39 = v36;
      v22 = v35;
      v24 = v34;
      v17 = v33;
      v18 = v32;
      v40 = v39;
      v41 = v37;
      MPAssistantWatchGetCurrentAudioRoutingInfo(v62);

      v21 = v58;
      v20 = v59;
    }

    else
    {
      v54 = [MEMORY[0x277CCA9B8] errorWithDomain:@"POUtilitiesErrorDomain" code:103 userInfo:0];
      v23 = v55;
      (v55)[2](v55, 2, v54);

      v38 = v60;
      v21 = v58;
    }
  }

  else
  {
    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v42 = POLogContextCommand;
    }

    else
    {
      v42 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [POUtilities performPodcastsPlaybackRequestWithIdentifier:v42 assetInfo:v43 hashedRouteUIDs:v44 decodedRouteUIDs:v45 originatingOutputDeviceUID:v46 startPlaying:v47 requesterSharedUserId:v48 sharedUserIdFromPlayableITunesAccount:v49 context:? allowsFallback:? completion:?];
    }

    v50 = [MEMORY[0x277CCA9B8] errorWithDomain:@"POUtilitiesErrorDomain" code:102 userInfo:0];
    (*(v23 + 2))(v23, 2, v50);

    v24 = v19;
    v38 = v60;
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = (a1 + 120);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v21 = *(a1 + 120);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_2;
  v22[3] = &unk_279A44A88;
  v9 = *(a1 + 112);
  v10 = *(a1 + 64);
  v27 = *(a1 + 128);
  *&v11 = v9;
  *(&v11 + 1) = *v4;
  v20 = v11;
  v12 = *(a1 + 72);
  v28 = *(a1 + 129);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v10;
  *(&v16 + 1) = v12;
  v23 = v16;
  v24 = v15;
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v26 = v20;
  v25 = v19;
  [v21 _resolveWithDestination:v5 hashedRouteIdentifiers:v6 decodedRouteIdentifiers:v7 originatingOutputDeviceUID:v8 localPlaybackPermitted:1 audioRoutingInfo:a2 completion:v22];
}

void __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v26 = *MEMORY[0x277D27CD8];
  v27[0] = &unk_2870B6B90;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v5 = objc_alloc_init(MEMORY[0x277D27828]);
  v6 = *(a1 + 32);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23;
  v17[3] = &unk_279A44A60;
  v7 = *(a1 + 80);
  v24 = *(a1 + 96);
  v18 = v3;
  v8 = *(a1 + 88);
  v22 = v7;
  v23 = v8;
  v9 = *(a1 + 40);
  v25 = *(a1 + 97);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v19 = v14;
  v20 = v13;
  v21 = *(a1 + 72);
  v15 = v3;
  [v5 sendPlaybackQueueWithResult:v6 toDestination:v15 withOptions:v4 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 returnStatuses];
    v6 = [v5 firstObject];
    v7 = [v6 unsignedIntValue];

    v8 = [v4 error];
    POLogInitIfNeeded();
    v9 = MEMORY[0x277D86220];
    if (POLogContextCommand)
    {
      v10 = POLogContextCommand;
    }

    else
    {
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v8 localizedDescription];
      *buf = 138412290;
      *v55 = v12;
      _os_log_impl(&dword_25E9F0000, v11, OS_LOG_TYPE_DEFAULT, "sendPlaybackQueueWithResult Error: %@", buf, 0xCu);
    }

    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v13 = POLogContextCommand;
    }

    else
    {
      v13 = v9;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v55 = v7;
      _os_log_impl(&dword_25E9F0000, v13, OS_LOG_TYPE_DEFAULT, "sendPlaybackQueueWithResult Status: %d", buf, 8u);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v14 = [v8 underlyingErrors];
    v15 = [(MTMPCAssistantGenericPlaybackQueue *)v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v51;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v51 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([POUtilities errorIsNoNetwork:*(*(&v50 + 1) + 8 * i)])
          {
            POLogInitIfNeeded();
            if (POLogContextCommand)
            {
              v26 = POLogContextCommand;
            }

            else
            {
              v26 = MEMORY[0x277D86220];
            }

            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
            }

            v34 = *(*(a1 + 80) + 16);
            goto LABEL_63;
          }
        }

        v16 = [(MTMPCAssistantGenericPlaybackQueue *)v14 countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v19 = v7;
    v20 = MEMORY[0x277D86220];
    if (*(a1 + 96) == 1)
    {
      v21 = [*(a1 + 32) outputDeviceUIDs];
      if ([v21 count])
      {

        if ((v19 - 1) <= 1)
        {
          POLogInitIfNeeded();
          if (POLogContextCommand)
          {
            v22 = POLogContextCommand;
          }

          else
          {
            v22 = v20;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *v55 = v19;
            _os_log_impl(&dword_25E9F0000, v22, OS_LOG_TYPE_DEFAULT, "Falling back to airplay after status: %d", buf, 8u);
          }

          v23 = *(a1 + 88);
          v58 = *(a1 + 40);
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
          v25 = [v23 createPlaybackQueueFromRequestIdentifiers:v24 startPlaying:*(a1 + 97) assetInfo:*(a1 + 48) isSiriRequest:*(a1 + 56) != 0 requesterSharedUserId:*(a1 + 64) sharedUserIdFromPlayableITunesAccount:*(a1 + 72)];

          v14 = [[MTMPCAssistantGenericPlaybackQueue alloc] initWithContextID:*(a1 + 56) playbackQueueRef:v25];
          [*(a1 + 88) modifyContextForAirplay:*(a1 + 32) andPlayLocally:v14 completion:*(a1 + 80)];
          goto LABEL_64;
        }
      }

      else
      {
      }
    }

    if (!*(a1 + 80))
    {
LABEL_65:

      goto LABEL_66;
    }

    v43 = [v8 domain];
    if ([v43 isEqualToString:*MEMORY[0x277D277F8]])
    {
      v44 = [v8 code];
    }

    else
    {
      v44 = 0;
    }

    v45 = [v8 domain];
    if ([v45 isEqualToString:*MEMORY[0x277D277F0]])
    {
      v46 = [v8 code];
    }

    else
    {
      v46 = 0;
    }

    POLogInitIfNeeded();
    if (POLogContextCommand)
    {
      v47 = POLogContextCommand;
    }

    else
    {
      v47 = v20;
    }

    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *v55 = v19;
      *&v55[4] = 2048;
      *&v55[6] = v44;
      v56 = 2048;
      v57 = v46;
      _os_log_impl(&dword_25E9F0000, v47, OS_LOG_TYPE_DEFAULT, "Completed sendPlaybackQueueWithResult with MR status: %d, remote error: %ld, assistant error: %ld", buf, 0x1Cu);
    }

    if (v8 && (MPCAssistantErrorIsInformational() & 1) == 0)
    {
      v14 = v8;
      POLogInitIfNeeded();
      if (POLogContextCommand)
      {
        v48 = POLogContextCommand;
      }

      else
      {
        v48 = v20;
      }

      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23_cold_2(v14, v48);
      }
    }

    else
    {
      v14 = 0;
    }

    v34 = *(*(a1 + 80) + 16);
LABEL_63:
    v34();
LABEL_64:

    goto LABEL_65;
  }

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v35 = POLogContextCommand;
  }

  else
  {
    v35 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23_cold_3(v35, v36, v37, v38, v39, v40, v41, v42);
  }

  (*(*(a1 + 80) + 16))();
LABEL_66:

  v49 = *MEMORY[0x277D85DE8];
}

+ (void)modifyContextForAirplay:(id)a3 andPlayLocally:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = modifyContextForAirplay_andPlayLocally_completion__onceToken;
  v10 = a3;
  if (v9 != -1)
  {
    +[POUtilities modifyContextForAirplay:andPlayLocally:completion:];
  }

  v11 = modifyContextForAirplay_andPlayLocally_completion__assistantContext;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke_2;
  v14[3] = &unk_279A44B00;
  v15 = v7;
  v16 = v8;
  v12 = v7;
  v13 = v8;
  [v11 modifySystemMusicContextForDestination:v10 completion:v14];
}

uint64_t __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke()
{
  modifyContextForAirplay_andPlayLocally_completion__assistantContext = objc_alloc_init(MEMORY[0x277D27848]);

  return MEMORY[0x2821F96F8]();
}

void __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 2, v3);
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D27828]);
    v6 = objc_alloc(MEMORY[0x277D27878]);
    v7 = [v6 initWithAppBundleID:*MEMORY[0x277D3DCE0] playerID:@"Podcasts" origin:0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke_3;
    v9[3] = &unk_279A44AD8;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    [v5 sendPlaybackQueue:v8 toDestination:v7 completion:v9];
  }
}

void __65__POUtilities_modifyContextForAirplay_andPlayLocally_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 firstObject];
  v7 = [v6 unsignedIntValue];

  v8 = [v5 domain];
  if ([v8 isEqualToString:*MEMORY[0x277D277F8]])
  {
    v9 = [v5 code];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 domain];
  if ([v10 isEqualToString:*MEMORY[0x277D277F0]])
  {
    v11 = [v5 code];
  }

  else
  {
    v11 = 0;
  }

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v12 = POLogContextCommand;
  }

  else
  {
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109632;
    v15[1] = v7;
    v16 = 2048;
    v17 = v9;
    v18 = 2048;
    v19 = v11;
    _os_log_impl(&dword_25E9F0000, v12, OS_LOG_TYPE_DEFAULT, "Completed Airplay fallback with MR status: %d, remote error: %ld, assistant error: %ld", v15, 0x1Cu);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v7, v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (_MRSystemAppPlaybackQueue)createPlaybackQueueFromRequestIdentifiers:(id)a3 startPlaying:(BOOL)a4 assetInfo:(id)a5 isSiriRequest:(BOOL)a6 requesterSharedUserId:(id)a7 sharedUserIdFromPlayableITunesAccount:(id)a8
{
  v9 = a6;
  v12 = a7;
  v13 = a8;
  v14 = *MEMORY[0x277CBECE8];
  v15 = a5;
  v16 = a3;
  v17 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

  v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v19 = v18;
  if (v12)
  {
    [v18 setObject:v12 forKey:@"requesterUserId"];
  }

  if (v13)
  {
    [v19 setObject:v13 forKey:@"sharedUserId"];
  }

  MRSystemAppPlaybackQueueSetUserInfo();
  MRSystemAppPlaybackQueueSetTracklistShuffleMode();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetSiriAssetInfo();

  if (v9)
  {
    MRSystemAppPlaybackQueueSetFeatureName();
  }

  return v17;
}

+ (id)commandStatusForRemoteStatus:(unsigned int)a3 error:(id)a4 isRemoteStorePlayback:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [v7 domain];
  if ([v8 isEqualToString:*MEMORY[0x277D277F8]])
  {
    v9 = [v7 code];
  }

  else
  {
    v10 = [v7 domain];
    if ([v10 isEqualToString:@"POUtilitiesMRSendCommandErrorDomain"])
    {
      v9 = [v7 code];
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = [v7 domain];
  if ([v11 isEqualToString:*MEMORY[0x277D277F0]])
  {
    v12 = [v7 code];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 domain];
  if ([v13 isEqualToString:@"POUtilitiesErrorDomain"])
  {
    v14 = [v7 code];
  }

  else
  {
    v14 = 0;
  }

  if (v9)
  {
    v15 = objc_alloc(MEMORY[0x277D47208]);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"MediaRemote error code %ld", v9];
    v17 = [v15 initWithReason:v16];

    goto LABEL_52;
  }

  if (a3 > 9)
  {
    if (a3 == 20)
    {
      v18 = MEMORY[0x277D48688];
      goto LABEL_28;
    }

    if (a3 == 10)
    {
      v18 = MEMORY[0x277D485D0];
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_29;
  }

  if (a3 != 1)
  {
LABEL_23:
    if (v5)
    {
      v19 = *MEMORY[0x277D48680];
    }

    else
    {
      v19 = -1;
    }

    goto LABEL_29;
  }

  if (v5)
  {
    v18 = MEMORY[0x277D48658];
LABEL_28:
    v19 = *v18;
    goto LABEL_29;
  }

  v25 = +[PODataSource sharedInstance];
  v26 = [v25 podcastCollections];
  v27 = [v26 count];
  v28 = MEMORY[0x277D485E0];
  if (!v27)
  {
    v28 = MEMORY[0x277D485F8];
  }

  v19 = *v28;

LABEL_29:
  if (v14 > 103)
  {
    if (v14 == 104)
    {
      v20 = MEMORY[0x277D485A8];
    }

    else
    {
      if (v14 != 105)
      {
        goto LABEL_39;
      }

      v20 = MEMORY[0x277D485A0];
    }
  }

  else if (v14 == 101)
  {
    v20 = MEMORY[0x277D48628];
  }

  else
  {
    if (v14 != 103)
    {
      goto LABEL_39;
    }

    v20 = MEMORY[0x277D485D8];
  }

  v19 = *v20;
LABEL_39:
  if (v19)
  {
    if (v12 != 1)
    {
      goto LABEL_47;
    }

    v21 = MEMORY[0x277D485A0];
  }

  else if (v12 == 6)
  {
    v21 = MEMORY[0x277D48668];
  }

  else
  {
    if (v12 != 7)
    {
LABEL_49:
      v22 = MEMORY[0x277D47218];
      goto LABEL_50;
    }

    v21 = MEMORY[0x277D48670];
  }

  v19 = *v21;
  if (!*v21)
  {
    goto LABEL_49;
  }

LABEL_47:
  v22 = MEMORY[0x277D47208];
  if (v19 == -1)
  {
LABEL_50:
    v23 = objc_alloc_init(v22);
    goto LABEL_51;
  }

  v23 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:v19];
LABEL_51:
  v17 = v23;
LABEL_52:

  return v17;
}

+ (BOOL)isPodcastsNowPlaying
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  v5 = MEMORY[0x277D85DD0];
  v6 = v2;
  MRMediaRemoteGetNowPlayingClient();

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = [v8[5] isEqual:{@"com.apple.podcasts", v5, 3221225472, __35__POUtilities_isPodcastsNowPlaying__block_invoke, &unk_279A44B28}];

  _Block_object_dispose(&v7, 8);
  return v3;
}

void __35__POUtilities_isPodcastsNowPlaying__block_invoke(uint64_t a1)
{
  v8 = MRNowPlayingClientCopyBundleIdentifierHierarchy();
  v2 = MRNowPlayingClientGetParentAppBundleIdentifier();
  if ([v8 count])
  {
    v3 = [v8 lastObject];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v2;
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)setPlaybackRate:(float)a3 failureErrorCode:(int64_t)a4 completion:(id)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a5;
  v16[0] = *MEMORY[0x277D27D60];
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v16[1] = *MEMORY[0x277D27D10];
  v17[0] = v8;
  v17[1] = MEMORY[0x277CBEC38];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  POLogInitIfNeeded();
  if (POLogContextCommand)
  {
    v10 = POLogContextCommand;
  }

  else
  {
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v15 = a3;
    _os_log_impl(&dword_25E9F0000, v10, OS_LOG_TYPE_INFO, "Will be setting currentPlaybackRate using MediaRemote to %f", buf, 0xCu);
  }

  v11 = dispatch_get_global_queue(0, 0);
  v12 = v6;
  MRMediaRemoteSendCommandWithReply();

  v13 = *MEMORY[0x277D85DE8];
}

void __59__POUtilities_setPlaybackRate_failureErrorCode_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (!v4)
  {

LABEL_26:
    v7 = objc_alloc_init(MEMORY[0x277D47218]);
    goto LABEL_27;
  }

  v6 = v4;
  v7 = 0;
  v8 = *v21;
  v9 = MEMORY[0x277D86220];
  *&v5 = 67109120;
  v19 = v5;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v21 != v8)
    {
      objc_enumerationMutation(v3);
    }

    v11 = [*(*(&v20 + 1) + 8 * v10) integerValue];
    v12 = v11;
    if (v11)
    {
      v13 = v11 == 3;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      POLogInitIfNeeded();
      if (POLogContextCommand)
      {
        v14 = POLogContextCommand;
      }

      else
      {
        v14 = v9;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = v19;
        v25 = v12;
        _os_log_error_impl(&dword_25E9F0000, v14, OS_LOG_TYPE_ERROR, "MediaRemote command failed with status %u", buf, 8u);
      }

      v15 = [objc_alloc(MEMORY[0x277D47208]) initWithErrorCode:*(a1 + 40)];

      v7 = v15;
    }

    if (v12 != 3 && v12 != 0)
    {
      break;
    }

    if (v6 == ++v10)
    {
      v6 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_27:
  v17 = *(a1 + 32);
  if (v17)
  {
    (*(v17 + 16))(v17, v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (BOOL)errorIsNoNetwork:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:@"MTSetPlaybackQueueUtilErrorDomain"])
  {
    v5 = [v3 code] == -433001;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)errorIsApplicationRequiresPreflight:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277D277F8]])
  {
    v5 = [v3 code] == 15;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __237__POUtilities_performPodcastsPlaybackRequestWithIdentifier_assetInfo_hashedRouteUIDs_decodedRouteUIDs_originatingOutputDeviceUID_startPlaying_requesterSharedUserId_sharedUserIdFromPlayableITunesAccount_context_allowsFallback_completion___block_invoke_23_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25E9F0000, a2, OS_LOG_TYPE_ERROR, "sendPlaybackQueueWithResult encountered error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end