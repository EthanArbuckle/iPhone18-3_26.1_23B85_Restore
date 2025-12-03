@interface MTSubscriptionChangeHandler
- (id)episodesWithEffect:(unint64_t)effect fromEpisodeEffects:(id)effects;
- (unint64_t)_updateEntitledAttributes:(id)attributes subscriptionActive:(BOOL)active taskID:(id)d;
- (void)_applyEffectsOffMoC:(id)c channel:(id)channel taskID:(id)d;
- (void)_unsafeApplyDownloadEffects:(id)effects channel:(id)channel taskID:(id)d;
- (void)_unsafeSendNotificationsForNewlyEntitledEpisodes:(id)episodes latestEpisodeUUID:(id)d newlyEntitledEpisodeUUIDs:(id)ds taskID:(id)iD;
- (void)_unsafeUpdateEntitlementStateAndCheckForNewEntitlement:(id)entitlement newlyEntitledEpisodeUUIDs:(id)ds latestEpisodeDate:(double *)date latestEpisodeUUID:(id)d;
- (void)_unsafeUpdatePriceTypeAndSendNotificationsIfNeededFor:(id)for subscriptionActive:(BOOL)active episodeEffects:(id)effects taskID:(id)d;
@end

@implementation MTSubscriptionChangeHandler

- (void)_unsafeApplyDownloadEffects:(id)effects channel:(id)channel taskID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  effectsCopy = effects;
  channelCopy = channel;
  dCopy = d;
  v11 = +[PFClientUtil supportsDownloads];
  v12 = _MTLogCategoryDownload();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      v15 = 138543618;
      v16 = dCopy;
      v17 = 2114;
      v18 = effectsCopy;
      _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_INFO, "[%{public}@] Applying effects for subscription change: %{public}@", &v15, 0x16u);
    }

    [(MTSubscriptionChangeHandler *)self _applyEffectsOffMoC:effectsCopy channel:channelCopy taskID:dCopy];
  }

  else
  {
    if (v13)
    {
      v15 = 138543362;
      v16 = dCopy;
      _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_INFO, "[%{public}@] Platform does not support downloads. Effects cannot be applied.", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_applyEffectsOffMoC:(id)c channel:(id)channel taskID:(id)d
{
  v31 = *MEMORY[0x1E69E9840];
  cCopy = c;
  channelCopy = channel;
  dCopy = d;
  downloadManager = [(MTSubscriptionChangeHandler *)self downloadManager];

  if (downloadManager)
  {
    v12 = [(MTSubscriptionChangeHandler *)self episodesWithEffect:2 fromEpisodeEffects:cCopy];
    mt_uniqued = [v12 mt_uniqued];

    v14 = [(MTSubscriptionChangeHandler *)self episodesWithEffect:4 fromEpisodeEffects:cCopy];
    mt_uniqued2 = [v14 mt_uniqued];

    if (([mt_uniqued2 isSubsetOfSet:mt_uniqued] & 1) == 0)
    {
      v16 = _MTLogCategoryDownload();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8CEC000, v16, OS_LOG_TYPE_ERROR, "Potential API misuse while applying effect. Deleted episodes should be a strict superset of downloads - but an episode would be downloaded before deletion! This will be corrected, but may be a programming error elsewhere.", buf, 2u);
      }

      v17 = [mt_uniqued setByAddingObjectsFromSet:mt_uniqued2];

      mt_uniqued = v17;
    }

    downloadManager2 = [(MTSubscriptionChangeHandler *)self downloadManager];
    [downloadManager2 removeDownloadedEpisodes:mt_uniqued];

    v19 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = dCopy;
      v27 = 2114;
      v28 = mt_uniqued;
      _os_log_impl(&dword_1D8CEC000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]Removed episodes from subscription status change: %{public}@", buf, 0x16u);
    }

    downloadManager3 = [(MTSubscriptionChangeHandler *)self downloadManager];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__MTSubscriptionChangeHandler__applyEffectsOffMoC_channel_taskID___block_invoke;
    v23[3] = &unk_1E8569CE0;
    v24 = dCopy;
    [downloadManager3 addEpisodeAutoDownloads:mt_uniqued2 completion:v23];

    goto LABEL_11;
  }

  mt_uniqued = _MTLogCategoryDownload();
  if (os_log_type_enabled(mt_uniqued, OS_LOG_TYPE_ERROR))
  {
    storeId = [channelCopy storeId];
    mt_uniqued2 = [channelCopy name];
    *buf = 138543875;
    v26 = dCopy;
    v27 = 2049;
    v28 = storeId;
    v29 = 2113;
    v30 = mt_uniqued2;
    _os_log_impl(&dword_1D8CEC000, mt_uniqued, OS_LOG_TYPE_ERROR, "[%{public}@] No download manager. Failed to re-download episodes after subscription changed for channel: %{private}lld - %{private}@", buf, 0x20u);
LABEL_11:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __66__MTSubscriptionChangeHandler__applyEffectsOffMoC_channel_taskID___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v4 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]Unable to redownload episodes for subscription change: %{public}@", &v7, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)episodesWithEffect:(unint64_t)effect fromEpisodeEffects:(id)effects
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__MTSubscriptionChangeHandler_episodesWithEffect_fromEpisodeEffects___block_invoke;
  v6[3] = &__block_descriptor_40_e11__24__0_8_16l;
  v6[4] = effect;
  v4 = [effects mt_compactMap:v6];

  return v4;
}

id __69__MTSubscriptionChangeHandler_episodesWithEffect_fromEpisodeEffects___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ((*(a1 + 32) & [a3 unsignedIntegerValue]) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_unsafeUpdatePriceTypeAndSendNotificationsIfNeededFor:(id)for subscriptionActive:(BOOL)active episodeEffects:(id)effects taskID:(id)d
{
  activeCopy = active;
  v93 = *MEMORY[0x1E69E9840];
  forCopy = for;
  effectsCopy = effects;
  dCopy = d;
  v11 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v11 mainOrPrivateContext];

  v67 = [MEMORY[0x1E695DFA8] set];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v58 = forCopy;
  v12 = forCopy;
  selfCopy = self;
  podcasts = [v12 podcasts];
  v15 = [podcasts countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v80;
    selfCopy2 = self;
    v59 = *v80;
    v60 = podcasts;
    do
    {
      v18 = 0;
      v61 = v16;
      do
      {
        if (*v80 != v17)
        {
          objc_enumerationMutation(podcasts);
        }

        v63 = v18;
        v64 = *(*(&v79 + 1) + 8 * v18);
        uuid = [v64 uuid];

        if (uuid)
        {
          v20 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [v64 uuid];
            storeCollectionId = [v64 storeCollectionId];
            *buf = 138543874;
            v85 = dCopy;
            v86 = 2114;
            v87 = uuid2;
            v88 = 2048;
            v89 = storeCollectionId;
            _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating episodes in podcast: %{public}@ - %lld", buf, 0x20u);
          }

          v78 = 0;
          v23 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"MTEpisode"];
          uuid3 = [v64 uuid];
          v25 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid3];
          [v23 setPredicate:v25];

          [v23 setReturnsObjectsAsFaults:0];
          [v23 setFetchBatchSize:200];
          v77 = 0;
          v72 = v23;
          v26 = [mainOrPrivateContext executeFetchRequest:v23 error:&v77];
          v27 = v77;
          if (v27)
          {
            v28 = _MTLogCategoryDatabase();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              uuid4 = [v64 uuid];
              v16 = v61;
              storeCollectionId2 = [v64 storeCollectionId];
              *buf = 138544130;
              v85 = dCopy;
              v86 = 2114;
              v87 = uuid4;
              v88 = 2048;
              v89 = storeCollectionId2;
              v90 = 2112;
              v91 = v27;
              _os_log_impl(&dword_1D8CEC000, v28, OS_LOG_TYPE_ERROR, "[%{public}@] Fetch request for episode in podcast failed: %{public}@ - %lld - %@", buf, 0x2Au);
            }
          }

          else
          {
            v62 = v26;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            obj = v26;
            v31 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = 0;
              v34 = *v74;
              do
              {
                v35 = 0;
                v65 = v33;
                v36 = v33 + 1;
                do
                {
                  if (*v74 != v34)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v37 = *(*(&v73 + 1) + 8 * v35);
                  v38 = objc_autoreleasePoolPush();
                  v39 = _MTLogCategoryDatabase();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    uuid5 = [v37 uuid];
                    storeTrackId = [v37 storeTrackId];
                    *buf = 138543874;
                    v85 = dCopy;
                    v86 = 2114;
                    v87 = uuid5;
                    v88 = 2048;
                    v89 = storeTrackId;
                    _os_log_impl(&dword_1D8CEC000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating episode: %{public}@ - %lld", buf, 0x20u);
                  }

                  v42 = [(MTSubscriptionChangeHandler *)selfCopy _updateEntitledAttributes:v37 subscriptionActive:activeCopy taskID:dCopy];
                  if ((v42 & 8) != 0)
                  {
                    v43 = _MTLogCategoryDatabase();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      uuid6 = [v37 uuid];
                      storeTrackId2 = [v37 storeTrackId];
                      *buf = 138543874;
                      v85 = dCopy;
                      v86 = 2114;
                      v87 = uuid6;
                      v88 = 2048;
                      v89 = storeTrackId2;
                      _os_log_impl(&dword_1D8CEC000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating episode state: %{public}@ - %lld", buf, 0x20u);

                      selfCopy = selfCopy2;
                    }

                    [(MTSubscriptionChangeHandler *)selfCopy _unsafeUpdateEntitlementStateAndCheckForNewEntitlement:v37 newlyEntitledEpisodeUUIDs:v67 latestEpisodeDate:&v78 latestEpisodeUUID:0];
                    v42 &= ~8uLL;
                  }

                  uuid7 = [v37 uuid];

                  if (uuid7)
                  {
                    v47 = _MTLogCategoryDatabase();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                    {
                      uuid8 = [v37 uuid];
                      storeTrackId3 = [v37 storeTrackId];
                      *buf = 138544130;
                      v85 = dCopy;
                      v86 = 2114;
                      v87 = uuid8;
                      v88 = 2048;
                      v89 = storeTrackId3;
                      v90 = 2048;
                      v91 = v42;
                      _os_log_impl(&dword_1D8CEC000, v47, OS_LOG_TYPE_INFO, "[%{public}@] Returning resulting effects for episode (%{public}@ - %lld): %lu", buf, 0x2Au);

                      selfCopy = selfCopy2;
                    }

                    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
                    uuid9 = [v37 uuid];
                    [effectsCopy setObject:v50 forKeyedSubscript:uuid9];
                  }

                  if (!(v36 % [v72 fetchBatchSize]))
                  {
                    [mainOrPrivateContext saveInCurrentBlock];
                  }

                  objc_autoreleasePoolPop(v38);
                  ++v35;
                  ++v36;
                }

                while (v32 != v35);
                v33 = v65 + v32;
                v32 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
              }

              while (v32);
            }

            newestEpisodeByAvailabiltyTime = [v64 newestEpisodeByAvailabiltyTime];
            [newestEpisodeByAvailabiltyTime firstTimeAvailable];
            [v64 setLatestEpisodeAvailabilityTime:?];

            v53 = _MTLogCategoryDatabase();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              uuid10 = [v64 uuid];
              storeCollectionId3 = [v64 storeCollectionId];
              [v64 latestEpisodeAvailabilityTime];
              *buf = 138544130;
              v85 = dCopy;
              v86 = 2114;
              v87 = uuid10;
              v88 = 2048;
              v89 = storeCollectionId3;
              selfCopy = selfCopy2;
              v90 = 2048;
              v91 = v56;
              _os_log_impl(&dword_1D8CEC000, v53, OS_LOG_TYPE_INFO, "[%{public}@] Resolved podcasts latest episode availability for podcast (%{public}@ - %lld): %f", buf, 0x2Au);
            }

            podcasts = v60;
            v16 = v61;
            v17 = v59;
            v27 = 0;
            if (activeCopy)
            {
              [(MTSubscriptionChangeHandler *)selfCopy _unsafeSendNotificationsForNewlyEntitledEpisodes:v64 latestEpisodeUUID:0 newlyEntitledEpisodeUUIDs:v67 taskID:dCopy];
            }

            [mainOrPrivateContext saveInCurrentBlock];
            v26 = v62;
          }
        }

        v18 = v63 + 1;
      }

      while (v63 + 1 != v16);
      v16 = [podcasts countByEnumeratingWithState:&v79 objects:v92 count:16];
    }

    while (v16);
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_updateEntitledAttributes:(id)attributes subscriptionActive:(BOOL)active taskID:(id)d
{
  activeCopy = active;
  v83 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  dCopy = d;
  v9 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [attributesCopy uuid];
    *buf = 138544130;
    v70 = dCopy;
    v71 = 2112;
    v72 = uuid;
    v73 = 2048;
    storeTrackId = [attributesCopy storeTrackId];
    v75 = 1024;
    LODWORD(v76) = activeCopy;
    _os_log_impl(&dword_1D8CEC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating entitled attributes in episode: %@ - %lld. subscriptionActive: %d", buf, 0x26u);
  }

  priceType = [attributesCopy priceType];
  enclosureURL = [attributesCopy enclosureURL];
  if (!activeCopy)
  {
    [attributesCopy freeDuration];
    if (v23 > 0.0)
    {
      [attributesCopy freeDuration];
      [attributesCopy setDuration:?];
    }

    freeEnclosureURL = [attributesCopy freeEnclosureURL];
    [attributesCopy setEnclosureURL:freeEnclosureURL];

    freePriceType = [attributesCopy freePriceType];
    [attributesCopy setPriceType:freePriceType];

    freeTranscriptIdentifier = [attributesCopy freeTranscriptIdentifier];
    goto LABEL_15;
  }

  [attributesCopy entitledDuration];
  if (v13 > 0.0)
  {
    [attributesCopy entitledDuration];
    [attributesCopy setDuration:?];
  }

  entitledEnclosureURL = [attributesCopy entitledEnclosureURL];

  if (entitledEnclosureURL)
  {
    entitledEnclosureURL2 = [attributesCopy entitledEnclosureURL];
    [attributesCopy setEnclosureURL:entitledEnclosureURL2];
  }

  entitledPriceType = [attributesCopy entitledPriceType];
  [attributesCopy setPriceType:entitledPriceType];

  v17 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    entitledPriceType2 = [attributesCopy entitledPriceType];
    uuid2 = [attributesCopy uuid];
    storeTrackId2 = [attributesCopy storeTrackId];
    *buf = 138544386;
    v70 = dCopy;
    v71 = 2112;
    v72 = entitledPriceType2;
    v73 = 2112;
    storeTrackId = uuid2;
    v75 = 2048;
    v76 = storeTrackId2;
    v77 = 1024;
    LODWORD(v78) = 1;
    _os_log_impl(&dword_1D8CEC000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set priceType to entitledPriceType %@ for episode: %@ - %lld. subscriptionActive: %d", buf, 0x30u);
  }

  entitledTranscriptIdentifier = [attributesCopy entitledTranscriptIdentifier];

  if (entitledTranscriptIdentifier)
  {
    freeTranscriptIdentifier = [attributesCopy entitledTranscriptIdentifier];
LABEL_15:
    v26 = freeTranscriptIdentifier;
    [attributesCopy setTranscriptIdentifier:freeTranscriptIdentifier];
  }

  priceType2 = [attributesCopy priceType];
  v28 = [priceType isEqualToString:priceType2];

  if ((v28 & 1) == 0)
  {
    v29 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [attributesCopy uuid];
      priceType3 = [attributesCopy priceType];
      *buf = 138544130;
      v70 = dCopy;
      v71 = 2112;
      v72 = uuid3;
      v73 = 2112;
      storeTrackId = priceType;
      v75 = 2112;
      v76 = priceType3;
      _os_log_impl(&dword_1D8CEC000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Entitled state is changed for episode uuid %@ from priceType: %@ to %@", buf, 0x2Au);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [attributesCopy setPriceTypeChangedDate:?];
  }

  [attributesCopy resolveAvailabilityDate];
  assetURL = [attributesCopy assetURL];
  v33 = [assetURL length];

  if (v33)
  {
    v68 = dCopy;
    v34 = enclosureURL;
    priceType4 = [attributesCopy priceType];
    v36 = [priceType4 isEqualToString:priceType];

    entitledEnclosureURL3 = [attributesCopy entitledEnclosureURL];
    freeEnclosureURL2 = [attributesCopy freeEnclosureURL];
    v39 = [entitledEnclosureURL3 isEqualToString:freeEnclosureURL2];

    v40 = v39 | v36;
    v41 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      uuid4 = [attributesCopy uuid];
      priceType5 = [attributesCopy priceType];
      freePriceType2 = [attributesCopy freePriceType];
      v45 = NSStringFromBOOL();
      enclosureURL2 = [attributesCopy enclosureURL];
      *buf = 138544642;
      v70 = uuid4;
      v71 = 2112;
      v72 = priceType;
      v73 = 2112;
      storeTrackId = priceType5;
      v75 = 2112;
      v76 = freePriceType2;
      v77 = 2112;
      v78 = v45;
      v79 = 2112;
      v80 = enclosureURL2;
      _os_log_impl(&dword_1D8CEC000, v41, OS_LOG_TYPE_INFO, "Updating entitlement info for %{public}@. PriceType: (%@ -> %@), freePriceType: %@. Requires new media: %@. New enclosure url: %@", buf, 0x3Eu);
    }

    if (v40)
    {
      v47 = 1;
    }

    else
    {
      enclosureURL3 = [attributesCopy enclosureURL];

      if (enclosureURL3)
      {
        v47 = 7;
      }

      else
      {
        v47 = 3;
      }
    }

    enclosureURL = v34;
    dCopy = v68;
    if (!priceType)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v47 = 1;
    if (!priceType)
    {
      goto LABEL_40;
    }
  }

  priceType6 = [attributesCopy priceType];
  if (priceType6)
  {
    v50 = priceType6;
    priceType7 = [attributesCopy priceType];
    if (([priceType isEqualToString:priceType7] & 1) == 0 && enclosureURL && (objc_msgSend(attributesCopy, "enclosureURL"), (v52 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v53 = v52;
      enclosureURL4 = [attributesCopy enclosureURL];
      v55 = [enclosureURL isEqualToString:enclosureURL4];

      if ((v55 & 1) == 0)
      {
        v56 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          uuid5 = [attributesCopy uuid];
          storeTrackId3 = [attributesCopy storeTrackId];
          priceType8 = [attributesCopy priceType];
          enclosureURL5 = [attributesCopy enclosureURL];
          *buf = 138544898;
          v70 = dCopy;
          v71 = 2112;
          v72 = uuid5;
          v73 = 2048;
          storeTrackId = storeTrackId3;
          v75 = 2112;
          v76 = priceType;
          v77 = 2112;
          v78 = priceType8;
          v79 = 2112;
          v80 = enclosureURL;
          v81 = 2112;
          v82 = enclosureURL5;
          _os_log_impl(&dword_1D8CEC000, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will update entitlement state for episode %@ - %lld. oldPriceType: %@, priceType: %@, oldEnclosureUrl: %@, enclosureUrl: %@", buf, 0x48u);
        }

        v47 |= 8uLL;
        goto LABEL_43;
      }
    }

    else
    {
    }
  }

LABEL_40:
  v61 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    uuid6 = [attributesCopy uuid];
    storeTrackId4 = [attributesCopy storeTrackId];
    priceType9 = [attributesCopy priceType];
    enclosureURL6 = [attributesCopy enclosureURL];
    *buf = 138544898;
    v70 = dCopy;
    v71 = 2112;
    v72 = uuid6;
    v73 = 2048;
    storeTrackId = storeTrackId4;
    v75 = 2112;
    v76 = priceType;
    v77 = 2112;
    v78 = priceType9;
    v79 = 2112;
    v80 = enclosureURL;
    v81 = 2112;
    v82 = enclosureURL6;
    _os_log_impl(&dword_1D8CEC000, v61, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will not update entitlement state for episode %@ - %lld. oldPriceType: %@, priceType: %@, oldEnclosureUrl: %@, enclosureUrl: %@", buf, 0x48u);
  }

LABEL_43:
  v66 = *MEMORY[0x1E69E9840];
  return v47;
}

- (void)_unsafeUpdateEntitlementStateAndCheckForNewEntitlement:(id)entitlement newlyEntitledEpisodeUUIDs:(id)ds latestEpisodeDate:(double *)date latestEpisodeUUID:(id)d
{
  v33 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  dsCopy = ds;
  dCopy = d;
  isEntitled = [entitlementCopy isEntitled];
  v13 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [entitlementCopy uuid];
    v25 = 138413058;
    v26 = uuid;
    v27 = 2048;
    storeTrackId = [entitlementCopy storeTrackId];
    v29 = 2048;
    entitlementState = [entitlementCopy entitlementState];
    v31 = 1024;
    v32 = isEntitled;
    _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_DEFAULT, "[MTSubscriptionChangeHandler] Updating entitlementState for episode: %@ - %lld. oldEntitlementState: %lld, oldIsEntitled: %d", &v25, 0x26u);
  }

  [entitlementCopy updateEntitlementState];
  v15 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    uuid2 = [entitlementCopy uuid];
    storeTrackId2 = [entitlementCopy storeTrackId];
    entitlementState2 = [entitlementCopy entitlementState];
    isEntitled2 = [entitlementCopy isEntitled];
    v25 = 138413058;
    v26 = uuid2;
    v27 = 2048;
    storeTrackId = storeTrackId2;
    v29 = 2048;
    entitlementState = entitlementState2;
    v31 = 1024;
    v32 = isEntitled2;
    _os_log_impl(&dword_1D8CEC000, v15, OS_LOG_TYPE_DEFAULT, "[MTSubscriptionChangeHandler] Updated entitlementState for episode: %@ - %lld. newEntitlementState: %lld, newIsEntitled: %d", &v25, 0x26u);
  }

  if ([entitlementCopy isEntitled] && isEntitled != objc_msgSend(entitlementCopy, "isEntitled"))
  {
    uuid3 = [entitlementCopy uuid];
    [dsCopy addObject:uuid3];
  }

  [entitlementCopy pubDate];
  if (v21 > *date && [entitlementCopy isMedia])
  {
    [entitlementCopy pubDate];
    *date = v22;
    uuid4 = [entitlementCopy uuid];

    dCopy = uuid4;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_unsafeSendNotificationsForNewlyEntitledEpisodes:(id)episodes latestEpisodeUUID:(id)d newlyEntitledEpisodeUUIDs:(id)ds taskID:(id)iD
{
  v41 = *MEMORY[0x1E69E9840];
  episodesCopy = episodes;
  dCopy = d;
  iDCopy = iD;
  dsCopy = ds;
  managedObjectContext = [episodesCopy managedObjectContext];
  uuid = [episodesCopy uuid];
  v15 = [MTRecencyUtil upNextForPodcastUuid:uuid ctx:managedObjectContext];
  episodeUuid = [v15 episodeUuid];

  if (episodeUuid)
  {
    v17 = episodeUuid;
  }

  else
  {
    v17 = dCopy;
  }

  v18 = v17;
  v19 = [dsCopy containsObject:v18];

  if (v19)
  {
    v20 = [managedObjectContext objectForUuid:episodeUuid entityName:@"MTEpisode"];
    v21 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [episodesCopy uuid];
      v22 = v29 = dCopy;
      title = [episodesCopy title];
      [v20 uuid];
      v24 = v30 = iDCopy;
      title2 = [v20 title];
      *buf = 138544386;
      v32 = v30;
      v33 = 2114;
      v34 = v22;
      v35 = 2112;
      v36 = title;
      v37 = 2114;
      v38 = v24;
      v39 = 2112;
      v40 = title2;
      _os_log_impl(&dword_1D8CEC000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ - '%@' Found new smart play episode from episode entitlement changed %{public}@ - %@", buf, 0x34u);

      iDCopy = v30;
      dCopy = v29;
    }

    [v20 unsuppressAutomaticDownloadsIfNeeded];
    [v20 setIsNew:1];
    [v20 setSentNotification:0];
  }

  else
  {
    v20 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      uuid2 = [episodesCopy uuid];
      title3 = [episodesCopy title];
      *buf = 138543874;
      v32 = iDCopy;
      v33 = 2114;
      v34 = uuid2;
      v35 = 2112;
      v36 = title3;
      _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ - Skipping '%@' smart playlist episode, not found during entitlement update.", buf, 0x20u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end