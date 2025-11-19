@interface MTSubscriptionChangeHandler
- (id)episodesWithEffect:(unint64_t)a3 fromEpisodeEffects:(id)a4;
- (unint64_t)_updateEntitledAttributes:(id)a3 subscriptionActive:(BOOL)a4 taskID:(id)a5;
- (void)_applyEffectsOffMoC:(id)a3 channel:(id)a4 taskID:(id)a5;
- (void)_unsafeApplyDownloadEffects:(id)a3 channel:(id)a4 taskID:(id)a5;
- (void)_unsafeSendNotificationsForNewlyEntitledEpisodes:(id)a3 latestEpisodeUUID:(id)a4 newlyEntitledEpisodeUUIDs:(id)a5 taskID:(id)a6;
- (void)_unsafeUpdateEntitlementStateAndCheckForNewEntitlement:(id)a3 newlyEntitledEpisodeUUIDs:(id)a4 latestEpisodeDate:(double *)a5 latestEpisodeUUID:(id)a6;
- (void)_unsafeUpdatePriceTypeAndSendNotificationsIfNeededFor:(id)a3 subscriptionActive:(BOOL)a4 episodeEffects:(id)a5 taskID:(id)a6;
@end

@implementation MTSubscriptionChangeHandler

- (void)_unsafeApplyDownloadEffects:(id)a3 channel:(id)a4 taskID:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[PFClientUtil supportsDownloads];
  v12 = _MTLogCategoryDownload();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11)
  {
    if (v13)
    {
      v15 = 138543618;
      v16 = v10;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_INFO, "[%{public}@] Applying effects for subscription change: %{public}@", &v15, 0x16u);
    }

    [(MTSubscriptionChangeHandler *)self _applyEffectsOffMoC:v8 channel:v9 taskID:v10];
  }

  else
  {
    if (v13)
    {
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_INFO, "[%{public}@] Platform does not support downloads. Effects cannot be applied.", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_applyEffectsOffMoC:(id)a3 channel:(id)a4 taskID:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MTSubscriptionChangeHandler *)self downloadManager];

  if (v11)
  {
    v12 = [(MTSubscriptionChangeHandler *)self episodesWithEffect:2 fromEpisodeEffects:v8];
    v13 = [v12 mt_uniqued];

    v14 = [(MTSubscriptionChangeHandler *)self episodesWithEffect:4 fromEpisodeEffects:v8];
    v15 = [v14 mt_uniqued];

    if (([v15 isSubsetOfSet:v13] & 1) == 0)
    {
      v16 = _MTLogCategoryDownload();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8CEC000, v16, OS_LOG_TYPE_ERROR, "Potential API misuse while applying effect. Deleted episodes should be a strict superset of downloads - but an episode would be downloaded before deletion! This will be corrected, but may be a programming error elsewhere.", buf, 2u);
      }

      v17 = [v13 setByAddingObjectsFromSet:v15];

      v13 = v17;
    }

    v18 = [(MTSubscriptionChangeHandler *)self downloadManager];
    [v18 removeDownloadedEpisodes:v13];

    v19 = _MTLogCategoryDownload();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v26 = v10;
      v27 = 2114;
      v28 = v13;
      _os_log_impl(&dword_1D8CEC000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]Removed episodes from subscription status change: %{public}@", buf, 0x16u);
    }

    v20 = [(MTSubscriptionChangeHandler *)self downloadManager];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__MTSubscriptionChangeHandler__applyEffectsOffMoC_channel_taskID___block_invoke;
    v23[3] = &unk_1E8569CE0;
    v24 = v10;
    [v20 addEpisodeAutoDownloads:v15 completion:v23];

    goto LABEL_11;
  }

  v13 = _MTLogCategoryDownload();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v21 = [v9 storeId];
    v15 = [v9 name];
    *buf = 138543875;
    v26 = v10;
    v27 = 2049;
    v28 = v21;
    v29 = 2113;
    v30 = v15;
    _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] No download manager. Failed to re-download episodes after subscription changed for channel: %{private}lld - %{private}@", buf, 0x20u);
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

- (id)episodesWithEffect:(unint64_t)a3 fromEpisodeEffects:(id)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__MTSubscriptionChangeHandler_episodesWithEffect_fromEpisodeEffects___block_invoke;
  v6[3] = &__block_descriptor_40_e11__24__0_8_16l;
  v6[4] = a3;
  v4 = [a4 mt_compactMap:v6];

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

- (void)_unsafeUpdatePriceTypeAndSendNotificationsIfNeededFor:(id)a3 subscriptionActive:(BOOL)a4 episodeEffects:(id)a5 taskID:(id)a6
{
  v71 = a4;
  v93 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v70 = a5;
  v10 = a6;
  v11 = +[MTDB sharedInstance];
  v66 = [v11 mainOrPrivateContext];

  v67 = [MEMORY[0x1E695DFA8] set];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v58 = v9;
  v12 = v9;
  v13 = self;
  v14 = [v12 podcasts];
  v15 = [v14 countByEnumeratingWithState:&v79 objects:v92 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v80;
    v69 = self;
    v59 = *v80;
    v60 = v14;
    do
    {
      v18 = 0;
      v61 = v16;
      do
      {
        if (*v80 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v63 = v18;
        v64 = *(*(&v79 + 1) + 8 * v18);
        v19 = [v64 uuid];

        if (v19)
        {
          v20 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v64 uuid];
            v22 = [v64 storeCollectionId];
            *buf = 138543874;
            v85 = v10;
            v86 = 2114;
            v87 = v21;
            v88 = 2048;
            v89 = v22;
            _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating episodes in podcast: %{public}@ - %lld", buf, 0x20u);
          }

          v78 = 0;
          v23 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"MTEpisode"];
          v24 = [v64 uuid];
          v25 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v24];
          [v23 setPredicate:v25];

          [v23 setReturnsObjectsAsFaults:0];
          [v23 setFetchBatchSize:200];
          v77 = 0;
          v72 = v23;
          v26 = [v66 executeFetchRequest:v23 error:&v77];
          v27 = v77;
          if (v27)
          {
            v28 = _MTLogCategoryDatabase();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v29 = [v64 uuid];
              v16 = v61;
              v30 = [v64 storeCollectionId];
              *buf = 138544130;
              v85 = v10;
              v86 = 2114;
              v87 = v29;
              v88 = 2048;
              v89 = v30;
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
                    v40 = [v37 uuid];
                    v41 = [v37 storeTrackId];
                    *buf = 138543874;
                    v85 = v10;
                    v86 = 2114;
                    v87 = v40;
                    v88 = 2048;
                    v89 = v41;
                    _os_log_impl(&dword_1D8CEC000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating episode: %{public}@ - %lld", buf, 0x20u);
                  }

                  v42 = [(MTSubscriptionChangeHandler *)v13 _updateEntitledAttributes:v37 subscriptionActive:v71 taskID:v10];
                  if ((v42 & 8) != 0)
                  {
                    v43 = _MTLogCategoryDatabase();
                    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                    {
                      v44 = [v37 uuid];
                      v45 = [v37 storeTrackId];
                      *buf = 138543874;
                      v85 = v10;
                      v86 = 2114;
                      v87 = v44;
                      v88 = 2048;
                      v89 = v45;
                      _os_log_impl(&dword_1D8CEC000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating episode state: %{public}@ - %lld", buf, 0x20u);

                      v13 = v69;
                    }

                    [(MTSubscriptionChangeHandler *)v13 _unsafeUpdateEntitlementStateAndCheckForNewEntitlement:v37 newlyEntitledEpisodeUUIDs:v67 latestEpisodeDate:&v78 latestEpisodeUUID:0];
                    v42 &= ~8uLL;
                  }

                  v46 = [v37 uuid];

                  if (v46)
                  {
                    v47 = _MTLogCategoryDatabase();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                    {
                      v48 = [v37 uuid];
                      v49 = [v37 storeTrackId];
                      *buf = 138544130;
                      v85 = v10;
                      v86 = 2114;
                      v87 = v48;
                      v88 = 2048;
                      v89 = v49;
                      v90 = 2048;
                      v91 = v42;
                      _os_log_impl(&dword_1D8CEC000, v47, OS_LOG_TYPE_INFO, "[%{public}@] Returning resulting effects for episode (%{public}@ - %lld): %lu", buf, 0x2Au);

                      v13 = v69;
                    }

                    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
                    v51 = [v37 uuid];
                    [v70 setObject:v50 forKeyedSubscript:v51];
                  }

                  if (!(v36 % [v72 fetchBatchSize]))
                  {
                    [v66 saveInCurrentBlock];
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

            v52 = [v64 newestEpisodeByAvailabiltyTime];
            [v52 firstTimeAvailable];
            [v64 setLatestEpisodeAvailabilityTime:?];

            v53 = _MTLogCategoryDatabase();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v54 = [v64 uuid];
              v55 = [v64 storeCollectionId];
              [v64 latestEpisodeAvailabilityTime];
              *buf = 138544130;
              v85 = v10;
              v86 = 2114;
              v87 = v54;
              v88 = 2048;
              v89 = v55;
              v13 = v69;
              v90 = 2048;
              v91 = v56;
              _os_log_impl(&dword_1D8CEC000, v53, OS_LOG_TYPE_INFO, "[%{public}@] Resolved podcasts latest episode availability for podcast (%{public}@ - %lld): %f", buf, 0x2Au);
            }

            v14 = v60;
            v16 = v61;
            v17 = v59;
            v27 = 0;
            if (v71)
            {
              [(MTSubscriptionChangeHandler *)v13 _unsafeSendNotificationsForNewlyEntitledEpisodes:v64 latestEpisodeUUID:0 newlyEntitledEpisodeUUIDs:v67 taskID:v10];
            }

            [v66 saveInCurrentBlock];
            v26 = v62;
          }
        }

        v18 = v63 + 1;
      }

      while (v63 + 1 != v16);
      v16 = [v14 countByEnumeratingWithState:&v79 objects:v92 count:16];
    }

    while (v16);
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_updateEntitledAttributes:(id)a3 subscriptionActive:(BOOL)a4 taskID:(id)a5
{
  v6 = a4;
  v83 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 uuid];
    *buf = 138544130;
    v70 = v8;
    v71 = 2112;
    v72 = v10;
    v73 = 2048;
    v74 = [v7 storeTrackId];
    v75 = 1024;
    LODWORD(v76) = v6;
    _os_log_impl(&dword_1D8CEC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating entitled attributes in episode: %@ - %lld. subscriptionActive: %d", buf, 0x26u);
  }

  v11 = [v7 priceType];
  v12 = [v7 enclosureURL];
  if (!v6)
  {
    [v7 freeDuration];
    if (v23 > 0.0)
    {
      [v7 freeDuration];
      [v7 setDuration:?];
    }

    v24 = [v7 freeEnclosureURL];
    [v7 setEnclosureURL:v24];

    v25 = [v7 freePriceType];
    [v7 setPriceType:v25];

    v22 = [v7 freeTranscriptIdentifier];
    goto LABEL_15;
  }

  [v7 entitledDuration];
  if (v13 > 0.0)
  {
    [v7 entitledDuration];
    [v7 setDuration:?];
  }

  v14 = [v7 entitledEnclosureURL];

  if (v14)
  {
    v15 = [v7 entitledEnclosureURL];
    [v7 setEnclosureURL:v15];
  }

  v16 = [v7 entitledPriceType];
  [v7 setPriceType:v16];

  v17 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v7 entitledPriceType];
    v19 = [v7 uuid];
    v20 = [v7 storeTrackId];
    *buf = 138544386;
    v70 = v8;
    v71 = 2112;
    v72 = v18;
    v73 = 2112;
    v74 = v19;
    v75 = 2048;
    v76 = v20;
    v77 = 1024;
    LODWORD(v78) = 1;
    _os_log_impl(&dword_1D8CEC000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set priceType to entitledPriceType %@ for episode: %@ - %lld. subscriptionActive: %d", buf, 0x30u);
  }

  v21 = [v7 entitledTranscriptIdentifier];

  if (v21)
  {
    v22 = [v7 entitledTranscriptIdentifier];
LABEL_15:
    v26 = v22;
    [v7 setTranscriptIdentifier:v22];
  }

  v27 = [v7 priceType];
  v28 = [v11 isEqualToString:v27];

  if ((v28 & 1) == 0)
  {
    v29 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v7 uuid];
      v31 = [v7 priceType];
      *buf = 138544130;
      v70 = v8;
      v71 = 2112;
      v72 = v30;
      v73 = 2112;
      v74 = v11;
      v75 = 2112;
      v76 = v31;
      _os_log_impl(&dword_1D8CEC000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Entitled state is changed for episode uuid %@ from priceType: %@ to %@", buf, 0x2Au);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v7 setPriceTypeChangedDate:?];
  }

  [v7 resolveAvailabilityDate];
  v32 = [v7 assetURL];
  v33 = [v32 length];

  if (v33)
  {
    v68 = v8;
    v34 = v12;
    v35 = [v7 priceType];
    v36 = [v35 isEqualToString:v11];

    v37 = [v7 entitledEnclosureURL];
    v38 = [v7 freeEnclosureURL];
    v39 = [v37 isEqualToString:v38];

    v40 = v39 | v36;
    v41 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [v7 uuid];
      v43 = [v7 priceType];
      v44 = [v7 freePriceType];
      v45 = NSStringFromBOOL();
      v46 = [v7 enclosureURL];
      *buf = 138544642;
      v70 = v42;
      v71 = 2112;
      v72 = v11;
      v73 = 2112;
      v74 = v43;
      v75 = 2112;
      v76 = v44;
      v77 = 2112;
      v78 = v45;
      v79 = 2112;
      v80 = v46;
      _os_log_impl(&dword_1D8CEC000, v41, OS_LOG_TYPE_INFO, "Updating entitlement info for %{public}@. PriceType: (%@ -> %@), freePriceType: %@. Requires new media: %@. New enclosure url: %@", buf, 0x3Eu);
    }

    if (v40)
    {
      v47 = 1;
    }

    else
    {
      v48 = [v7 enclosureURL];

      if (v48)
      {
        v47 = 7;
      }

      else
      {
        v47 = 3;
      }
    }

    v12 = v34;
    v8 = v68;
    if (!v11)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v47 = 1;
    if (!v11)
    {
      goto LABEL_40;
    }
  }

  v49 = [v7 priceType];
  if (v49)
  {
    v50 = v49;
    v51 = [v7 priceType];
    if (([v11 isEqualToString:v51] & 1) == 0 && v12 && (objc_msgSend(v7, "enclosureURL"), (v52 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v53 = v52;
      v54 = [v7 enclosureURL];
      v55 = [v12 isEqualToString:v54];

      if ((v55 & 1) == 0)
      {
        v56 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = [v7 uuid];
          v58 = [v7 storeTrackId];
          v59 = [v7 priceType];
          v60 = [v7 enclosureURL];
          *buf = 138544898;
          v70 = v8;
          v71 = 2112;
          v72 = v57;
          v73 = 2048;
          v74 = v58;
          v75 = 2112;
          v76 = v11;
          v77 = 2112;
          v78 = v59;
          v79 = 2112;
          v80 = v12;
          v81 = 2112;
          v82 = v60;
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
    v62 = [v7 uuid];
    v63 = [v7 storeTrackId];
    v64 = [v7 priceType];
    v65 = [v7 enclosureURL];
    *buf = 138544898;
    v70 = v8;
    v71 = 2112;
    v72 = v62;
    v73 = 2048;
    v74 = v63;
    v75 = 2112;
    v76 = v11;
    v77 = 2112;
    v78 = v64;
    v79 = 2112;
    v80 = v12;
    v81 = 2112;
    v82 = v65;
    _os_log_impl(&dword_1D8CEC000, v61, OS_LOG_TYPE_DEFAULT, "[%{public}@] Will not update entitlement state for episode %@ - %lld. oldPriceType: %@, priceType: %@, oldEnclosureUrl: %@, enclosureUrl: %@", buf, 0x48u);
  }

LABEL_43:
  v66 = *MEMORY[0x1E69E9840];
  return v47;
}

- (void)_unsafeUpdateEntitlementStateAndCheckForNewEntitlement:(id)a3 newlyEntitledEpisodeUUIDs:(id)a4 latestEpisodeDate:(double *)a5 latestEpisodeUUID:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [v9 isEntitled];
  v13 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 uuid];
    v25 = 138413058;
    v26 = v14;
    v27 = 2048;
    v28 = [v9 storeTrackId];
    v29 = 2048;
    v30 = [v9 entitlementState];
    v31 = 1024;
    v32 = v12;
    _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_DEFAULT, "[MTSubscriptionChangeHandler] Updating entitlementState for episode: %@ - %lld. oldEntitlementState: %lld, oldIsEntitled: %d", &v25, 0x26u);
  }

  [v9 updateEntitlementState];
  v15 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v9 uuid];
    v17 = [v9 storeTrackId];
    v18 = [v9 entitlementState];
    v19 = [v9 isEntitled];
    v25 = 138413058;
    v26 = v16;
    v27 = 2048;
    v28 = v17;
    v29 = 2048;
    v30 = v18;
    v31 = 1024;
    v32 = v19;
    _os_log_impl(&dword_1D8CEC000, v15, OS_LOG_TYPE_DEFAULT, "[MTSubscriptionChangeHandler] Updated entitlementState for episode: %@ - %lld. newEntitlementState: %lld, newIsEntitled: %d", &v25, 0x26u);
  }

  if ([v9 isEntitled] && v12 != objc_msgSend(v9, "isEntitled"))
  {
    v20 = [v9 uuid];
    [v10 addObject:v20];
  }

  [v9 pubDate];
  if (v21 > *a5 && [v9 isMedia])
  {
    [v9 pubDate];
    *a5 = v22;
    v23 = [v9 uuid];

    v11 = v23;
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)_unsafeSendNotificationsForNewlyEntitledEpisodes:(id)a3 latestEpisodeUUID:(id)a4 newlyEntitledEpisodeUUIDs:(id)a5 taskID:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [v9 managedObjectContext];
  v14 = [v9 uuid];
  v15 = [MTRecencyUtil upNextForPodcastUuid:v14 ctx:v13];
  v16 = [v15 episodeUuid];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v10;
  }

  v18 = v17;
  v19 = [v12 containsObject:v18];

  if (v19)
  {
    v20 = [v13 objectForUuid:v16 entityName:@"MTEpisode"];
    v21 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [v9 uuid];
      v22 = v29 = v10;
      v23 = [v9 title];
      [v20 uuid];
      v24 = v30 = v11;
      v25 = [v20 title];
      *buf = 138544386;
      v32 = v30;
      v33 = 2114;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      v39 = 2112;
      v40 = v25;
      _os_log_impl(&dword_1D8CEC000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ - '%@' Found new smart play episode from episode entitlement changed %{public}@ - %@", buf, 0x34u);

      v11 = v30;
      v10 = v29;
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
      v26 = [v9 uuid];
      v27 = [v9 title];
      *buf = 138543874;
      v32 = v11;
      v33 = 2114;
      v34 = v26;
      v35 = 2112;
      v36 = v27;
      _os_log_impl(&dword_1D8CEC000, v20, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@ - Skipping '%@' smart playlist episode, not found during entitlement update.", buf, 0x20u);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

@end