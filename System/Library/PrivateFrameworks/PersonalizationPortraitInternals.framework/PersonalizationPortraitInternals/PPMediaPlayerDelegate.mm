@interface PPMediaPlayerDelegate
+ (id)bundleIdOfCurrentForegroundApp;
- (PPMediaPlayerDelegate)init;
- (PPMediaPlayerDelegate)initWithNamedEntityStore:(id)store donationDelaySeconds:(double)seconds registersResponseLoading:(BOOL)loading useNamedEntityDissector:(BOOL)dissector;
- (id)getResponse;
- (void)_donateDelayedResponse:(id)response timePlayed:(double)played bundleId:(id)id;
- (void)_registerForNowPlayingNotifications;
- (void)processResponse:(id)response;
@end

@implementation PPMediaPlayerDelegate

- (void)processResponse:(id)response
{
  v44 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = objc_opt_new();
  v7 = pp_entities_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    title = [responseCopy title];
    v24 = [title length];
    state = [responseCopy state];
    bundleID = [responseCopy bundleID];
    playerID = [responseCopy playerID];
    *buf = 134219010;
    v35 = v24;
    v36 = 1024;
    v37 = state;
    v38 = 2112;
    v39 = v6;
    v40 = 2112;
    v41 = bundleID;
    v42 = 2112;
    v43 = playerID;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPMediaPlayerDelegate: processResponse: title.length:%tu state:%d timestamp:%@ bundleId:%@ playerId:%@", buf, 0x30u);
  }

  if ([responseCopy state] != 1 || (objc_msgSend(responseCopy, "isEqualToResponse:", self->_pendingDonation) & 1) == 0)
  {
    p_pendingDonation = &self->_pendingDonation;
    v9 = self->_pendingDonation;
    v10 = self->_pendingDonationTimestamp;
    if ([responseCopy state] == 1)
    {
      objc_storeStrong(&self->_pendingDonation, response);
      v11 = v6;
    }

    else
    {
      v12 = *p_pendingDonation;
      *p_pendingDonation = 0;

      v11 = 0;
    }

    pendingDonationTimestamp = self->_pendingDonationTimestamp;
    self->_pendingDonationTimestamp = v11;

    v14 = objc_opt_new();
    [v14 timeIntervalSinceDate:v10];
    v16 = v15;

    if (v9 && v16 >= self->_donationDelaySeconds)
    {
      bundleID2 = [(PPMediaPlayerResponse *)v9 bundleID];
      if (([bundleID2 hasPrefix:@"com.apple.WebKit"] & 1) == 0 && (objc_msgSend(bundleID2, "isEqualToString:", *MEMORY[0x277D3A698]) & 1) == 0)
      {
        v18 = pp_entities_log_handle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          title2 = [(PPMediaPlayerResponse *)v9 title];
          v19 = [title2 length];
          state2 = [(PPMediaPlayerResponse *)v9 state];
          playerID2 = [(PPMediaPlayerResponse *)v9 playerID];
          *buf = 134218754;
          v35 = v19;
          v36 = 1024;
          v37 = state2;
          v38 = 2112;
          v39 = bundleID2;
          v40 = 2112;
          v41 = playerID2;
          _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPMediaPlayerDelegate: donating response: title.length:%tu state:%d bundleId:%@ playerId:%@", buf, 0x26u);
        }

        dispatchQueue = self->_dispatchQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __41__PPMediaPlayerDelegate_processResponse___block_invoke;
        block[3] = &unk_278978628;
        block[4] = self;
        v31 = v9;
        v33 = v16;
        v32 = bundleID2;
        dispatch_async(dispatchQueue, block);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)getResponse
{
  v3 = objc_opt_new();
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  Default = MRPlaybackQueueRequestCreateDefault();
  dispatchQueue = self->_dispatchQueue;
  v12 = v3;
  v13 = v4;
  MRMediaRemoteRequestNowPlayingPlaybackQueueSync();
  dispatch_group_enter(v13);
  v7 = self->_dispatchQueue;
  v8 = v12;
  v9 = v13;
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (Default)
  {
    CFRelease(Default);
  }

  v10 = v8;

  return v8;
}

void __36__PPMediaPlayerDelegate_getResponse__block_invoke(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = [v31 resolvedPlayerPath];
  v4 = [v3 player];
  v5 = [v4 displayName];
  [*(a1 + 32) setPlayerID:v5];

  v6 = [v31 resolvedPlayerPath];
  v7 = [v6 client];
  v8 = [v7 bundleIdentifier];
  [*(a1 + 32) setBundleID:v8];

  v9 = [v31 contentItems];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [v31 contentItems];
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 metadata];
    v14 = [v13 title];
    [*(a1 + 32) setTitle:v14];

    v15 = [v31 contentItems];
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v16 metadata];
    v18 = [v17 albumName];
    [*(a1 + 32) setAlbum:v18];

    v19 = [v31 contentItems];
    v20 = [v19 objectAtIndexedSubscript:0];
    v21 = [v20 metadata];
    v22 = [v21 trackArtistName];
    [*(a1 + 32) setArtist:v22];

    v23 = MEMORY[0x277CCABB0];
    v24 = [v31 contentItems];
    v25 = [v24 objectAtIndexedSubscript:0];
    v26 = [v25 metadata];
    v27 = [v23 numberWithLongLong:{objc_msgSend(v26, "iTunesStoreIdentifier")}];
    [*(a1 + 32) setStoreItemID:v27];

    v28 = [v31 contentItems];
    v29 = [v28 objectAtIndexedSubscript:0];
    v30 = [v29 metadata];
    [v30 duration];
    [*(a1 + 32) setDuration:?];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __36__PPMediaPlayerDelegate_getResponse__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setState:a2];
  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

- (void)_donateDelayedResponse:(id)response timePlayed:(double)played bundleId:(id)id
{
  v154 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  idCopy = id;
  if (responseCopy)
  {
    title = [responseCopy title];
    v11 = [title length];

    if (v11)
    {
      if ([idCopy length])
      {
        [responseCopy duration];
        v13 = fmin(played / v12, 1.0);
        if (v13 < 0.0)
        {
          v13 = 0.0;
        }

        if (v12 > 0.0)
        {
          v14 = v13;
        }

        else
        {
          v14 = 1.0;
        }

        v15 = [objc_alloc(MEMORY[0x277D3A4E0]) initWithDwellTimeSeconds:played lengthSeconds:v12 lengthCharacters:0 donationCount:0 contactHandleCount:0 flags:0];
        storeItemID = [responseCopy storeItemID];
        if (storeItemID && (v17 = storeItemID, [responseCopy storeItemID], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "longValue"), v18, v17, v19))
        {
          v20 = objc_alloc(MEMORY[0x277CCACA8]);
          storeItemID2 = [responseCopy storeItemID];
          uUIDString = [v20 initWithFormat:@"storeAdamID:%@", storeItemID2];
        }

        else
        {
          storeItemID2 = objc_opt_new();
          uUIDString = [storeItemID2 UUIDString];
        }

        v23 = uUIDString;

        v24 = objc_alloc(MEMORY[0x277D3A4D8]);
        v25 = *MEMORY[0x277D3A708];
        v26 = objc_opt_new();
        v119 = v23;
        v120 = v15;
        v27 = [v24 initWithBundleId:idCopy groupId:v25 documentId:v23 date:v26 relevanceDate:0 contactHandles:0 language:0 metadata:v15];

        v28 = objc_opt_new();
        selfCopy = self;
        useNamedEntityDissector = self->_useNamedEntityDissector;
        v30 = 0x277D3A000uLL;
        v31 = 0x277D3A000uLL;
        v129 = v28;
        if (useNamedEntityDissector)
        {
          v32 = v28;
          v33 = +[PPConfiguration sharedInstance];
          [v27 language];
          v35 = v34 = v27;
          v113 = idCopy;
          v36 = [v33 extractionAlgorithmsForBundleId:idCopy sourceLanguage:v35 conservative:1 domain:1];

          v37 = +[PPNamedEntityDissector sharedInstance];
          v117 = responseCopy;
          title2 = [responseCopy title];
          v114 = v37;
          v115 = v36;
          v116 = v34;
          v39 = [v37 entitiesInPlainText:title2 eligibleRegions:0 source:v34 cloudSync:0 algorithms:v36];

          v146 = 0u;
          v147 = 0u;
          v144 = 0u;
          v145 = 0u;
          v40 = v39;
          v123 = [v40 countByEnumeratingWithState:&v144 objects:v153 count:16];
          if (v123)
          {
            v121 = *v145;
            v125 = v40;
            do
            {
              v41 = 0;
              do
              {
                if (*v145 != v121)
                {
                  objc_enumerationMutation(v40);
                }

                v127 = v41;
                v42 = *(*(&v144 + 1) + 8 * v41);
                v140 = 0u;
                v141 = 0u;
                v142 = 0u;
                v143 = 0u;
                entities = [v42 entities];
                v44 = [entities countByEnumeratingWithState:&v140 objects:v152 count:16];
                if (v44)
                {
                  v45 = v44;
                  v46 = *v141;
                  do
                  {
                    for (i = 0; i != v45; ++i)
                    {
                      if (*v141 != v46)
                      {
                        objc_enumerationMutation(entities);
                      }

                      v48 = *(*(&v140 + 1) + 8 * i);
                      v49 = objc_autoreleasePoolPush();
                      v50 = objc_alloc(MEMORY[0x277D3A420]);
                      item = [v48 item];
                      name = [item name];
                      item2 = [v48 item];
                      bestLanguage = [item2 bestLanguage];
                      v55 = [v50 initWithName:name category:6 language:bestLanguage];

                      v56 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v55 score:v14];
                      v32 = v129;
                      [v129 addObject:v56];

                      v30 = 0x277D3A000uLL;
                      objc_autoreleasePoolPop(v49);
                    }

                    v45 = [entities countByEnumeratingWithState:&v140 objects:v152 count:16];
                  }

                  while (v45);
                }

                v40 = v125;
                v41 = v127 + 1;
              }

              while (v127 + 1 != v123);
              v123 = [v125 countByEnumeratingWithState:&v144 objects:v153 count:16];
            }

            while (v123);
          }

          responseCopy = v117;
          album = [v117 album];
          v58 = [album length];

          if (v58)
          {
            album2 = [v117 album];
            v60 = [v114 entitiesInPlainText:album2 eligibleRegions:0 source:v116 cloudSync:0 algorithms:v115];

            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v61 = v60;
            v124 = [v61 countByEnumeratingWithState:&v136 objects:v151 count:16];
            if (v124)
            {
              v122 = *v137;
              v126 = v61;
              do
              {
                v62 = 0;
                do
                {
                  if (*v137 != v122)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v128 = v62;
                  v63 = *(*(&v136 + 1) + 8 * v62);
                  v132 = 0u;
                  v133 = 0u;
                  v134 = 0u;
                  v135 = 0u;
                  entities2 = [v63 entities];
                  v65 = [entities2 countByEnumeratingWithState:&v132 objects:v150 count:16];
                  if (v65)
                  {
                    v66 = v65;
                    v67 = *v133;
                    do
                    {
                      for (j = 0; j != v66; ++j)
                      {
                        if (*v133 != v67)
                        {
                          objc_enumerationMutation(entities2);
                        }

                        v69 = *(*(&v132 + 1) + 8 * j);
                        v70 = objc_autoreleasePoolPush();
                        v71 = objc_alloc(*(v30 + 1056));
                        item3 = [v69 item];
                        name2 = [item3 name];
                        item4 = [v69 item];
                        bestLanguage2 = [item4 bestLanguage];
                        v76 = [v71 initWithName:name2 category:6 language:bestLanguage2];

                        v30 = 0x277D3A000;
                        v77 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v76 score:v14];
                        v32 = v129;
                        [v129 addObject:v77];

                        objc_autoreleasePoolPop(v70);
                      }

                      v66 = [entities2 countByEnumeratingWithState:&v132 objects:v150 count:16];
                    }

                    while (v66);
                  }

                  v61 = v126;
                  v62 = v128 + 1;
                }

                while (v128 + 1 != v124);
                v124 = [v126 countByEnumeratingWithState:&v136 objects:v151 count:16];
              }

              while (v124);
            }

            responseCopy = v117;
            v78 = selfCopy;
            idCopy = v113;
            v80 = v119;
            v79 = v120;
            v27 = v116;
            v31 = 0x277D3A000;
          }

          else
          {
            idCopy = v113;
            v79 = v120;
            v78 = selfCopy;
            v27 = v116;
            v31 = 0x277D3A000uLL;
            v61 = v40;
            v80 = v119;
          }
        }

        else
        {
          v82 = objc_alloc(MEMORY[0x277D3A420]);
          title3 = [responseCopy title];
          currentLocaleLanguageCode = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
          v85 = [v82 initWithName:title3 category:6 language:currentLocaleLanguageCode];

          v32 = v129;
          v86 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v85 score:v14];
          [v129 addObject:v86];
          album3 = [responseCopy album];
          v88 = [album3 length];

          if (v88)
          {
            v89 = objc_alloc(MEMORY[0x277D3A420]);
            album4 = [responseCopy album];
            currentLocaleLanguageCode2 = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
            v92 = [v89 initWithName:album4 category:6 language:currentLocaleLanguageCode2];

            v32 = v129;
            v93 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:v92 score:v14];
            [v129 addObject:v93];
          }

          v80 = v119;
          v79 = v120;
          v78 = selfCopy;
        }

        artist = [responseCopy artist];
        v95 = [artist length];

        if (v95)
        {
          v96 = objc_alloc(MEMORY[0x277D3A420]);
          artist2 = [responseCopy artist];
          currentLocaleLanguageCode3 = [MEMORY[0x277D3A578] currentLocaleLanguageCode];
          v99 = [v96 initWithName:artist2 category:7 language:currentLocaleLanguageCode3];

          v32 = v129;
          v100 = [objc_alloc(*(v31 + 1176)) initWithItem:v99 score:v14];
          [v129 addObject:v100];
        }

        v101 = pp_entities_log_handle();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          v102 = [v32 count];
          *buf = 134217984;
          v149 = v102;
          _os_log_impl(&dword_23224A000, v101, OS_LOG_TYPE_DEFAULT, "PPMediaPlayerDelegate: entity count: %tu", buf, 0xCu);
        }

        if ([v32 count])
        {
          namedEntityStore = v78->_namedEntityStore;
          v131 = 0;
          v104 = [(PPNamedEntityStore *)namedEntityStore donateNamedEntities:v32 source:v27 algorithm:8 cloudSync:0 sentimentScore:&v131 error:0.0];
          v105 = v131;
          if (v104)
          {
            v106 = v27;
            v107 = v78->_namedEntityStore;
            v130 = 0;
            v108 = [(PPNamedEntityStore *)v107 flushDonationsWithError:&v130];
            v109 = v130;
            if (!v108)
            {
              v110 = pp_default_log_handle();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v149 = v109;
                _os_log_impl(&dword_23224A000, v110, OS_LOG_TYPE_DEFAULT, "PPMediaPlayerDelegate: Warning: failed to flush: %@", buf, 0xCu);
              }
            }

            v111 = pp_entities_log_handle();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v111, OS_LOG_TYPE_DEFAULT, "PPMediaPlayerDelegate: completed donation.", buf, 2u);
            }

            v27 = v106;
            v32 = v129;
          }

          else
          {
            v109 = pp_entities_log_handle();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v149 = v105;
              _os_log_error_impl(&dword_23224A000, v109, OS_LOG_TYPE_ERROR, "PPMediaPlayerDelegate: failed to donate named entities: %@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        v81 = pp_entities_log_handle();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23224A000, v81, OS_LOG_TYPE_ERROR, "PPMediaPlayerDelegate: previous MRPlaybackQueue has no playerPath.bundleID", buf, 2u);
        }

        v79 = +[PPMetricsUtils loggingQueue];
        dispatch_async(v79, &__block_literal_global_23364);
      }
    }
  }

  v112 = *MEMORY[0x277D85DE8];
}

void __68__PPMediaPlayerDelegate__donateDelayedResponse_timePlayed_bundleId___block_invoke()
{
  v1 = objc_opt_new();
  [v1 setSource:19];
  [v1 setErrorMessage:@"PPMediaPlayerDelegate: previous MRPlaybackQueue has no playerPath.bundleID."];
  v0 = [MEMORY[0x277D41DA8] sharedInstance];
  [v0 trackScalarForMessage:v1];
}

- (void)_registerForNowPlayingNotifications
{
  MRMediaRemoteSetWantsNowPlayingNotifications();
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, _nowPlayingInfoCallback, *MEMORY[0x277D27BC8], 0, CFNotificationSuspensionBehaviorDrop);
  v4 = CFNotificationCenterGetLocalCenter();
  v5 = *MEMORY[0x277D27B38];

  CFNotificationCenterAddObserver(v4, self, _nowPlayingInfoCallback, v5, 0, CFNotificationSuspensionBehaviorDrop);
}

- (PPMediaPlayerDelegate)initWithNamedEntityStore:(id)store donationDelaySeconds:(double)seconds registersResponseLoading:(BOOL)loading useNamedEntityDissector:(BOOL)dissector
{
  loadingCopy = loading;
  storeCopy = store;
  if (!storeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPMediaPlayerDelegate.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"namedEntityStore"}];
  }

  v22.receiver = self;
  v22.super_class = PPMediaPlayerDelegate;
  v13 = [(PPMediaPlayerDelegate *)&v22 init];
  if (v13)
  {
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_BACKGROUND, 0);

    v16 = dispatch_queue_create("PPMediaPlayerDelegateQueue", v15);
    dispatchQueue = v13->_dispatchQueue;
    v13->_dispatchQueue = v16;

    objc_storeStrong(&v13->_namedEntityStore, store);
    v13->_donationDelaySeconds = seconds;
    v13->_useNamedEntityDissector = dissector;
    pendingDonation = v13->_pendingDonation;
    v13->_pendingDonation = 0;

    pendingDonationTimestamp = v13->_pendingDonationTimestamp;
    v13->_pendingDonationTimestamp = 0;

    if (loadingCopy)
    {
      [(PPMediaPlayerDelegate *)v13 _registerForNowPlayingNotifications];
    }
  }

  return v13;
}

- (PPMediaPlayerDelegate)init
{
  v3 = +[PPLocalNamedEntityStore defaultStore];
  if (v3)
  {
    self = [(PPMediaPlayerDelegate *)self initWithNamedEntityStore:v3 donationDelaySeconds:1 registersResponseLoading:1 useNamedEntityDissector:32.0];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)bundleIdOfCurrentForegroundApp
{
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForForegroundApp = [MEMORY[0x277CFE338] keyPathForForegroundApp];
  v4 = [userContext objectForKeyedSubscript:keyPathForForegroundApp];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end