@interface SearchUIMediaUtilities
+ (BOOL)bundleIdentifierSupportsOpenIntent:(id)a3;
+ (BOOL)bundleIdentifierSupportsPlayIntent:(id)a3;
+ (BOOL)isCurrentMedia:(id)a3;
+ (BOOL)isMediaItem:(id)a3 equalToMediaItem:(id)a4;
+ (BOOL)isNowPlayingMedia:(id)a3;
+ (id)appsThatSupportSearchIntents;
+ (id)backingItemForMediaMetadataCache;
+ (id)cardSectionsForListenToCardSection:(id)a3;
+ (id)fallbackPunchoutWithMetadata:(id)a3 forBundleIdentifier:(id)a4;
+ (id)generateAppsThatSupportSearchIntents;
+ (id)localAudioCache;
+ (id)mediaDestinationsForMediaMetadata:(id)a3;
+ (id)mediaSearchForMetadata:(id)a3;
+ (id)musicPlayer;
+ (id)musicPlayerQueue;
+ (id)musicStatusCache;
+ (id)supportedIntentsForApp:(id)a3;
+ (void)canPlayAppleMusicWithCompletionHandler:(id)a3;
+ (void)dispatchOnMusicQueueIfNecessary:(id)a3;
+ (void)getMusicUserDisclosureApprovalStatusWithCompletionHandler:(id)a3;
+ (void)initializeQueuesAndNotifications;
+ (void)pausePlayback;
+ (void)playCoreSpotlightMedia:(id)a3;
+ (void)playMedia:(id)a3;
+ (void)predictionForMediaMetadata:(id)a3 completion:(id)a4;
+ (void)prewarmMediaLibrary;
+ (void)resetMediaApps;
+ (void)resetPlayer;
+ (void)resumePlayback;
+ (void)updateBackingItemForMediaMetadata:(id)a3;
@end

@implementation SearchUIMediaUtilities

+ (id)fallbackPunchoutWithMetadata:(id)a3 forBundleIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 mediaPunchouts];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 bundleIdentifier];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

+ (id)mediaSearchForMetadata:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E696E8F0];
    v4 = a3;
    v5 = [v3 alloc];
    v6 = [v4 mediaType];
    v7 = [v4 mediaName];
    v8 = [v4 artistName];
    v9 = [v4 albumName];

    v10 = [v5 initWithMediaType:v6 sortOrder:0 mediaName:v7 artistName:v8 albumName:v9 genreNames:0 moodNames:0 releaseDate:0 reference:0 mediaIdentifier:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)bundleIdentifierSupportsPlayIntent:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() supportedIntentsForApp:v3];

  v5 = [MEMORY[0x1E696E950] description];
  v6 = [v4 containsObject:v5];

  return v6;
}

+ (BOOL)bundleIdentifierSupportsOpenIntent:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() supportedIntentsForApp:v3];

  v5 = [MEMORY[0x1E696E9C8] description];
  v6 = [v4 containsObject:v5];

  return v6;
}

+ (id)supportedIntentsForApp:(id)a3
{
  v3 = MEMORY[0x1E69635F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];

  v6 = [MEMORY[0x1E696E728] appInfoWithApplicationRecord:v5];
  v7 = [v6 supportedIntents];

  return v7;
}

+ (void)predictionForMediaMetadata:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = predictionForMediaMetadata_completion__onceToken;
  v7 = a3;
  if (v6 != -1)
  {
    +[SearchUIMediaUtilities predictionForMediaMetadata:completion:];
  }

  v8 = predictionForMediaMetadata_completion__audioAppPredictorCache;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__SearchUIMediaUtilities_predictionForMediaMetadata_completion___block_invoke_2;
  v10[3] = &unk_1E85B4538;
  v11 = v5;
  v9 = v5;
  [v8 getObjectForKey:v7 completionHandler:v10];
}

uint64_t __64__SearchUIMediaUtilities_predictionForMediaMetadata_completion___block_invoke()
{
  predictionForMediaMetadata_completion__audioAppPredictorCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)mediaDestinationsForMediaMetadata:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [a1 appsThatSupportSearchIntents];
  v7 = [v6 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v12 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v11];
        if (([v12 isHidden] & 1) == 0)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = [v4 mediaPunchouts];
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * j);
        v19 = [v18 bundleIdentifier];
        if (([v5 containsObject:v19] & 1) == 0)
        {
          v20 = [v18 bundleIdentifier];
          v21 = [SearchUIUtilities isAppInstalledWithBundleId:v20];

          if (!v21)
          {
            continue;
          }

          v19 = [v18 bundleIdentifier];
          [v5 addObject:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v15);
  }

  v22 = [v4 bundleIdentifiersToExclude];

  if (v22)
  {
    v23 = MEMORY[0x1E695DFD8];
    v24 = [v4 bundleIdentifiersToExclude];
    v25 = [v23 setWithArray:v24];
    [v5 minusSet:v25];
  }

  v26 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v27 = v5;
  v28 = [v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v36;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v35 + 1) + 8 * k);
        v33 = objc_opt_new();
        [v33 setAppBundleIdentifier:{v32, v35}];
        [v33 setMediaMetadata:v4];
        [v26 addObject:v33];
      }

      v29 = [v27 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v29);
  }

  return v26;
}

+ (id)cardSectionsForListenToCardSection:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v4 mediaMetadata];
  v7 = [a1 mediaDestinationsForMediaMetadata:v6];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = objc_opt_new();
        v14 = [v4 cardSectionId];
        [v13 setCardSectionId:v14];

        v15 = [v12 image];
        [v13 setImage:v15];

        v16 = MEMORY[0x1E69CA3A0];
        v17 = [v12 title];
        v18 = [v16 textWithString:v17];
        [v13 setLeadingText:v18];

        v19 = [v12 command];
        [v13 setCommand:v19];

        [v5 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  if ([v5 count] || (objc_msgSend(v4, "fallbackCardSection"), v20 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v20, (isKindOfClass & 1) == 0))
  {
    [v5 sortUsingComparator:&__block_literal_global_206];
  }

  else
  {
    v22 = [v4 fallbackCardSection];
    [v5 addObject:v22];
  }

  return v5;
}

uint64_t __61__SearchUIMediaUtilities_cardSectionsForListenToCardSection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 leadingText];
  v6 = [v5 text];
  v7 = [v4 leadingText];

  v8 = [v7 text];
  v9 = [v6 localizedCaseInsensitiveCompare:v8];

  return v9;
}

+ (void)initializeQueuesAndNotifications
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SearchUIMediaUtilities_initializeQueuesAndNotifications__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initializeQueuesAndNotifications_onceToken != -1)
  {
    dispatch_once(&initializeQueuesAndNotifications_onceToken, block);
  }
}

void __58__SearchUIMediaUtilities_initializeQueuesAndNotifications__block_invoke(uint64_t a1)
{
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v2 = dispatch_queue_create("searchUIMediaAppsFetchingQueue", v5);
  v3 = searchUI_mediaQueue;
  searchUI_mediaQueue = v2;

  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel_resetMediaApps name:@"com.apple.LaunchServices.applicationRegistered" object:0];
  [v4 addObserver:*(a1 + 32) selector:sel_resetMediaApps name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
}

+ (void)prewarmMediaLibrary
{
  [a1 initializeQueuesAndNotifications];

  [a1 resetMediaApps];
}

+ (id)appsThatSupportSearchIntents
{
  [a1 initializeQueuesAndNotifications];
  v3 = appsThatSupportSearch;
  if (!appsThatSupportSearch)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__6;
    v12 = __Block_byref_object_dispose__6;
    v13 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__SearchUIMediaUtilities_appsThatSupportSearchIntents__block_invoke;
    v7[3] = &unk_1E85B45A8;
    v7[4] = &v8;
    v7[5] = a1;
    dispatch_sync(searchUI_mediaQueue, v7);
    v4 = appsThatSupportSearch;
    if (!appsThatSupportSearch)
    {
      v4 = v9[5];
    }

    objc_storeStrong(&appsThatSupportSearch, v4);
    _Block_object_dispose(&v8, 8);

    v3 = appsThatSupportSearch;
  }

  v5 = [v3 copy];

  return v5;
}

uint64_t __54__SearchUIMediaUtilities_appsThatSupportSearchIntents__block_invoke(uint64_t result)
{
  if (!appsThatSupportSearch)
  {
    v2 = result;
    *(*(*(v2 + 32) + 8) + 40) = [*(result + 40) generateAppsThatSupportSearchIntents];

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

+ (void)resetMediaApps
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SearchUIMediaUtilities_resetMediaApps__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(searchUI_mediaQueue, block);
}

void __40__SearchUIMediaUtilities_resetMediaApps__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) generateAppsThatSupportSearchIntents];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__SearchUIMediaUtilities_resetMediaApps__block_invoke_2;
  v3[3] = &unk_1E85B24C8;
  v4 = v1;
  v2 = v1;
  [SearchUIUtilities dispatchMainIfNecessary:v3];
}

+ (id)generateAppsThatSupportSearchIntents
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(searchUI_mediaQueue);
  v13 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = [MEMORY[0x1E696E728] appInfoWithApplicationRecord:v6];
        v8 = [v7 supportedIntents];
        v9 = [MEMORY[0x1E696E9C8] description];
        v10 = [v8 containsObject:v9];

        if (v10)
        {
          v11 = [v6 bundleIdentifier];
          [v13 addObject:v11];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  return v13;
}

+ (id)localAudioCache
{
  if (localAudioCache_onceToken != -1)
  {
    +[SearchUIMediaUtilities localAudioCache];
  }

  v3 = localAudioCache_localAudioCache;

  return v3;
}

uint64_t __41__SearchUIMediaUtilities_localAudioCache__block_invoke()
{
  localAudioCache_localAudioCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isNowPlayingMedia:(id)a3
{
  v4 = a3;
  v5 = [a1 isCurrentMedia:v4];
  v6 = [a1 backingItemForMediaMetadataCache];
  v7 = [v6 objectForKey:v4];

  if (!v7 || _searchUIPlayState == 1)
  {
    v9 = [a1 isPlaying];
  }

  else
  {
    v8 = [a1 musicStatusCache];
    v9 = [v8 playbackState] == 1;
  }

  return v5 & v9;
}

+ (void)pausePlayback
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __39__SearchUIMediaUtilities_pausePlayback__block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  [a1 dispatchOnMusicQueueIfNecessary:v2];
}

void __39__SearchUIMediaUtilities_pausePlayback__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) musicPlayer];
  [v1 pause];
}

+ (void)resumePlayback
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __40__SearchUIMediaUtilities_resumePlayback__block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  [a1 dispatchOnMusicQueueIfNecessary:v2];
}

void __40__SearchUIMediaUtilities_resumePlayback__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) musicPlayer];
  [v1 play];
}

+ (void)playMedia:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaIdentifier];
  v6 = [v4 mediaType];
  if (v5)
  {
    v7 = v6;
    if ([a1 isCurrentMedia:v4])
    {
      v8 = [a1 isPlaying];
      if (v7 == 100)
      {
        if ((v8 & 1) == 0)
        {
          +[_TtC8SearchUI26SearchUIVoicemailUtilities resumeVoicemail];
          goto LABEL_22;
        }

LABEL_7:
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __36__SearchUIMediaUtilities_playMedia___block_invoke;
        v20[3] = &unk_1E85B3B30;
        v21 = v5;
        [_TtC8SearchUI26SearchUIVoicemailUtilities playVoicemailWithIdentifier:v21 completionHandler:v20];

        goto LABEL_22;
      }

      if ((v8 & 1) == 0)
      {
        [a1 resumePlayback];
        goto LABEL_22;
      }
    }

    else if (v7 == 100)
    {
      goto LABEL_7;
    }

    v9 = [SearchUIUtilities bundleIdentifierForApp:11];
    v10 = [SearchUIUtilities isAppInstalledWithBundleId:v9];

    if (v10)
    {
      v11 = [v4 mediaIdentifier];
      _searchUIPlayState = 1;
      if ([a1 isCoreSpotlightMedia:v11])
      {
        [a1 playCoreSpotlightMedia:v4];
      }

      else if (v7)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __36__SearchUIMediaUtilities_playMedia___block_invoke_222;
        v16[3] = &unk_1E85B45D0;
        v17 = v11;
        v18 = v4;
        v19 = a1;
        [SearchUIMusicUtilities playMusicItemWithMediaMetadata:v18 completionHandler:v16];
      }
    }

    else
    {
      v11 = objc_opt_new();
      v12 = [SearchUIUtilities bundleIdentifierForApp:11];
      [v11 setApplicationBundleIdentifier:v12];

      v13 = [SearchUICommandHandler handlerForCommand:v11 environment:0];
      if ([MEMORY[0x1E69D9240] isMacOS])
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      [v13 performCommand:v11 triggerEvent:v14 environment:0];
      v15 = SearchUIGeneralLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(SearchUIMediaUtilities *)v5 playMedia:v4, v15];
      }

      [a1 resetPlayer];
    }
  }

LABEL_22:
}

void __36__SearchUIMediaUtilities_playMedia___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SearchUIGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __36__SearchUIMediaUtilities_playMedia___block_invoke_cold_1(a1, v3, v4);
    }
  }
}

void __36__SearchUIMediaUtilities_playMedia___block_invoke_222(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SearchUIGeneralLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __36__SearchUIMediaUtilities_playMedia___block_invoke_222_cold_1(a1, v3, v4);
    }

    [*(a1 + 48) resetPlayer];
  }

  else
  {
    [*(a1 + 48) updateBackingItemForMediaMetadata:*(a1 + 40)];
  }
}

+ (void)resetPlayer
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__SearchUIMediaUtilities_resetPlayer__block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = a1;
  [a1 dispatchOnMusicQueueIfNecessary:v2];
}

void __37__SearchUIMediaUtilities_resetPlayer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsPlaying:0];
  v2 = [*(a1 + 32) musicPlayer];
  [v2 stop];

  [*(a1 + 32) setCurrentMedia:0];
  _searchUIPlayState = 0;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"SearchUIMusicDidResetNotification" object:0];
}

+ (void)playCoreSpotlightMedia:(id)a3
{
  v4 = a3;
  v5 = [v4 mediaIdentifier];
  v6 = [a1 localAudioCache];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke;
  v8[3] = &unk_1E85B4620;
  v9 = v4;
  v10 = a1;
  v7 = v4;
  [v6 getObjectForKey:v5 completionHandler:v8];
}

void __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_opt_new();
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "persistentID")}];
      v6 = [MEMORY[0x1E6970610] predicateWithValue:v5 forProperty:*MEMORY[0x1E696FA98]];
      [v4 addFilterPredicate:v6];
    }

    else
    {
      v4 = 0;
    }

    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke_2;
    v9[3] = &unk_1E85B35B0;
    v10 = v4;
    v13 = v7;
    v11 = v3;
    v12 = *(a1 + 32);
    v8 = v4;
    [v7 dispatchOnMusicQueueIfNecessary:v9];
  }
}

void __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 56) musicPlayer];
  v4 = v3;
  if (v2)
  {
    [v3 setQueueWithQuery:*(a1 + 32)];
  }

  else
  {
    [v3 setQueueWithItemCollection:*(a1 + 40)];
  }

  v5 = [*(a1 + 56) musicPlayer];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke_3;
  v8[3] = &unk_1E85B45F8;
  v7 = *(a1 + 48);
  v6 = v7;
  v9 = v7;
  [v5 prepareToPlayWithCompletionHandler:v8];
}

void __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke_4;
  v8[3] = &unk_1E85B2900;
  v9 = v3;
  v7 = *(a1 + 32);
  v5 = v7;
  v10 = v7;
  v6 = v3;
  [v4 dispatchOnMusicQueueIfNecessary:v8];
}

uint64_t __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke_4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = SearchUIGeneralLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke_4_cold_1(v2, v3);
    }

    return [*(a1 + 48) resetPlayer];
  }

  else
  {
    v5 = [*(a1 + 48) musicPlayer];
    [v5 play];

    v7 = *(a1 + 40);
    v6 = *(a1 + 48);

    return [v6 updateBackingItemForMediaMetadata:v7];
  }
}

+ (void)updateBackingItemForMediaMetadata:(id)a3
{
  v4 = a3;
  v5 = [a1 musicStatusCache];
  v6 = [v5 nowPlayingItem];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__SearchUIMediaUtilities_updateBackingItemForMediaMetadata___block_invoke;
  v9[3] = &unk_1E85B2900;
  v11 = v4;
  v12 = a1;
  v10 = v6;
  v7 = v4;
  v8 = v6;
  [SearchUIUtilities dispatchMainIfNecessary:v9];
}

void __60__SearchUIMediaUtilities_updateBackingItemForMediaMetadata___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) backingItemForMediaMetadataCache];
  v4 = v3;
  if (v2)
  {
    [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];
    v5 = 2;
  }

  else
  {
    [v3 removeObjectForKey:*(a1 + 40)];
    v5 = 0;
  }

  _searchUIPlayState = v5;
}

+ (void)getMusicUserDisclosureApprovalStatusWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (getMusicUserDisclosureApprovalStatusWithCompletionHandler__onceToken != -1)
  {
    +[SearchUIMediaUtilities getMusicUserDisclosureApprovalStatusWithCompletionHandler:];
  }

  v4 = getMusicUserDisclosureApprovalStatusWithCompletionHandler__musicDisclosureStatusCache;
  v5 = [MEMORY[0x1E695DFB0] null];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__SearchUIMediaUtilities_getMusicUserDisclosureApprovalStatusWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E85B4648;
  v8 = v3;
  v6 = v3;
  [v4 getObjectForKey:v5 completionHandler:v7];
}

uint64_t __84__SearchUIMediaUtilities_getMusicUserDisclosureApprovalStatusWithCompletionHandler___block_invoke()
{
  getMusicUserDisclosureApprovalStatusWithCompletionHandler__musicDisclosureStatusCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __84__SearchUIMediaUtilities_getMusicUserDisclosureApprovalStatusWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 BOOLValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

+ (id)musicStatusCache
{
  if (musicStatusCache_onceToken != -1)
  {
    +[SearchUIMediaUtilities musicStatusCache];
  }

  v3 = musicStatusCache_musicStatusCache;

  return v3;
}

uint64_t __42__SearchUIMediaUtilities_musicStatusCache__block_invoke()
{
  musicStatusCache_musicStatusCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)canPlayAppleMusicWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (canPlayAppleMusicWithCompletionHandler__onceToken != -1)
  {
    +[SearchUIMediaUtilities canPlayAppleMusicWithCompletionHandler:];
  }

  v4 = canPlayAppleMusicWithCompletionHandler__subscriptionStatusCache;
  v5 = [MEMORY[0x1E695DFB0] null];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__SearchUIMediaUtilities_canPlayAppleMusicWithCompletionHandler___block_invoke_2;
  v7[3] = &unk_1E85B4648;
  v8 = v3;
  v6 = v3;
  [v4 getObjectForKey:v5 completionHandler:v7];
}

uint64_t __65__SearchUIMediaUtilities_canPlayAppleMusicWithCompletionHandler___block_invoke()
{
  canPlayAppleMusicWithCompletionHandler__subscriptionStatusCache = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65__SearchUIMediaUtilities_canPlayAppleMusicWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 BOOLValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

+ (id)musicPlayerQueue
{
  if (musicPlayerQueue_onceToken != -1)
  {
    +[SearchUIMediaUtilities musicPlayerQueue];
  }

  v3 = musicPlayerQueue_musicPlayerQueue;

  return v3;
}

void __42__SearchUIMediaUtilities_musicPlayerQueue__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v0 bundleIdentifier];

  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SearchUIMusicPlayerQueueIdentifier.%@", v6];
  v2 = [v1 UTF8String];
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = dispatch_queue_create(v2, v3);
  v5 = musicPlayerQueue_musicPlayerQueue;
  musicPlayerQueue_musicPlayerQueue = v4;
}

+ (id)musicPlayer
{
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    if (musicPlayer_onceToken != -1)
    {
      +[SearchUIMediaUtilities musicPlayer];
    }

    v3 = [MEMORY[0x1E69707E8] applicationQueuePlayer];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__SearchUIMediaUtilities_musicPlayer__block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (musicPlayer_onceToken_247 != -1)
    {
      dispatch_once(&musicPlayer_onceToken_247, block);
    }

    v3 = musicPlayer_musicPlayerController;
  }

  return v3;
}

void __37__SearchUIMediaUtilities_musicPlayer__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [v2 bundleIdentifier];

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SearchUIMusicPlayerIdentifier.%@", v8];
  v4 = objc_alloc(MEMORY[0x1E69707E8]);
  v5 = [*(a1 + 32) musicPlayerQueue];
  v6 = [v4 initWithClientIdentifier:v3 queue:v5];
  v7 = musicPlayer_musicPlayerController;
  musicPlayer_musicPlayerController = v6;
}

+ (BOOL)isCurrentMedia:(id)a3
{
  v4 = a3;
  v7 = [a1 backingItemForMediaMetadataCache];
  v5 = [v7 objectForKey:v4];

  v6 = [a1 currentMedia];
  LODWORD(v7) = [v6 isEqual:v4];

  if (!v7 && v5 && _searchUIPlayState != 1)
  {
    v7 = [a1 musicStatusCache];
    v8 = [v7 nowPlayingItem];

    LOBYTE(v7) = [a1 isMediaItem:v8 equalToMediaItem:v5];
  }

  return v7;
}

+ (id)backingItemForMediaMetadataCache
{
  if (backingItemForMediaMetadataCache_onceToken != -1)
  {
    +[SearchUIMediaUtilities backingItemForMediaMetadataCache];
  }

  v3 = backingItemForMediaMetadataCache_backingItemForMediaMetadata;

  return v3;
}

uint64_t __58__SearchUIMediaUtilities_backingItemForMediaMetadataCache__block_invoke()
{
  backingItemForMediaMetadataCache_backingItemForMediaMetadata = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isMediaItem:(id)a3 equalToMediaItem:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v14 = [v5 isEqual:v6];
  }

  else
  {
    v12 = [v8 modelObject];
    v13 = [v10 modelObject];
    v14 = [v12 isEqual:v13];
  }

  return (v5 == v6) | v14 & 1;
}

+ (void)dispatchOnMusicQueueIfNecessary:(id)a3
{
  block = a3;
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    [SearchUIUtilities dispatchMainIfNecessary:block];
  }

  else
  {
    v3 = +[SearchUIMediaUtilities musicPlayerQueue];
    dispatch_async(v3, block);
  }
}

+ (void)playMedia:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "mediaType")}];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1DA169000, a3, OS_LOG_TYPE_ERROR, "Music app is not installed for media: %@ with type: %@", &v6, 0x16u);
}

void __36__SearchUIMediaUtilities_playMedia___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1DA169000, log, OS_LOG_TYPE_ERROR, "Failed to play voicemail: %@ error: %@", &v4, 0x16u);
}

void __36__SearchUIMediaUtilities_playMedia___block_invoke_222_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(*(a1 + 40), "mediaType")}];
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  _os_log_error_impl(&dword_1DA169000, a3, OS_LOG_TYPE_ERROR, "Failed to play media: %@ with type: %@ error: %@", &v7, 0x20u);
}

void __49__SearchUIMediaUtilities_playCoreSpotlightMedia___block_invoke_4_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "Music player failed to prepare with error %@", &v3, 0xCu);
}

@end