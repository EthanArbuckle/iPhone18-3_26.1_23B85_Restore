@interface TVPMediaItemLoader
+ (id)loaderForMediaItem:(id)item;
+ (id)tempDirURL;
+ (void)_mediaServicesResetDidTimeout;
+ (void)_mediaServicesWereLost:(id)lost;
+ (void)_mediaServicesWereReset:(id)reset;
+ (void)initialize;
+ (void)removeTemporaryDownloadDirectory;
- (AVURLAsset)AVAsset;
- (BOOL)_needToLoadBlockingMetadataKeys;
- (BOOL)containsStreamingAVAsset;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (NSString)description;
- (TVPContentKeySession)contentKeySession;
- (TVPMediaItemLoader)initWithMediaItem:(id)item;
- (id)_advisoryInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map withTotalCount:(unint64_t)count;
- (id)_advisoryKeyNamesWithCount:(unint64_t)count;
- (id)_avAssetOptions;
- (id)_contentKeyLoader;
- (id)_contentKeyRequestParamsFromBase64String:(id)string;
- (id)_numberValueForKey:(id)key fromMetadata:(id)metadata andKeyIdentifierMap:(id)map;
- (id)_productPlacementInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map;
- (id)_promoInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map forSkipKey:(id)key skipCounter:(unint64_t)counter;
- (id)_rollInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map forType:(unint64_t)type withTotalCount:(unint64_t)count;
- (id)_rollKeyNameFromType:(unint64_t)type;
- (id)_rollKeyNamesForType:(unint64_t)type withCount:(unint64_t)count;
- (id)_skipInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map forType:(unint64_t)type withTotalCount:(unint64_t)count;
- (id)_skipKeyNameFromType:(unint64_t)type;
- (id)_skipKeyNamesForType:(unint64_t)type withCount:(unint64_t)count;
- (id)_stringValueForKey:(id)key fromMetadata:(id)metadata andKeyIdentifierMap:(id)map;
- (id)_tomatoFreshnessFromString:(id)string;
- (id)newPlayerItem;
- (unint64_t)_rollTypeFromMetadataItemKey:(id)key;
- (void)_cleanUp;
- (void)_loadMediaItemMetadataAsynchronously;
- (void)_mediaItemPlaybackErrorDidOccur:(id)occur;
- (void)_mediaItemStopPlayback:(id)playback;
- (void)_onAssetInternalAccessQueue_updateContentKeySessionWithContentKeyLoader:(id)loader;
- (void)_registerStateMachineHandlers;
- (void)_tvpMediaServicesWereReset:(id)reset;
- (void)cleanupIfNecessary;
- (void)dealloc;
- (void)loadIfNecessary;
- (void)loadSHA1DigestWithCompletion:(id)completion;
- (void)prepareForPlaybackInitiation;
@end

@implementation TVPMediaItemLoader

+ (void)initialize
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__TVPMediaItemLoader_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken_9 != -1)
  {
    dispatch_once(&initialize_onceToken_9, block);
  }
}

void __32__TVPMediaItemLoader_initialize__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.AppleTV.playback", "TVPMediaItemLoader");
  v3 = sMediaItemLoaderLogObject;
  sMediaItemLoaderLogObject = v2;

  v4 = dispatch_queue_create("TVPMediaItemLoader static property queue", 0);
  v5 = sStaticPropertyQueue;
  sStaticPropertyQueue = v4;

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:*(a1 + 32) selector:sel__mediaServicesWereLost_ name:*MEMORY[0x277CB8098] object:0];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:*(a1 + 32) selector:sel__mediaServicesWereReset_ name:*MEMORY[0x277CB80A0] object:0];
}

+ (void)removeTemporaryDownloadDirectory
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)tempDirURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager URLsForDirectory:13 inDomains:1];
  firstObject = [v3 firstObject];
  v5 = [firstObject URLByAppendingPathComponent:@"com.apple.TVPlayback" isDirectory:1];

  return v5;
}

+ (id)loaderForMediaItem:(id)item
{
  v21 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = itemCopy;
  if (loaderForMediaItem__onceToken != -1)
  {
    +[TVPMediaItemLoader loaderForMediaItem:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  if (!itemCopy)
  {
    goto LABEL_15;
  }

LABEL_3:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allObjects = [sLoaderHashTable allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(allObjects);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      mediaItem = [v10 mediaItem];
      v12 = [mediaItem isEqualToMediaItem:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_11:
  }

  v13 = [objc_alloc(objc_opt_class()) initWithMediaItem:v4];
  [sLoaderHashTable addObject:v13];
LABEL_16:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __41__TVPMediaItemLoader_loaderForMediaItem___block_invoke()
{
  sLoaderHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];

  return MEMORY[0x2821F96F8]();
}

+ (void)_mediaServicesWereLost:(id)lost
{
  v4 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Received AVAudioSessionMediaServicesWereLostNotification", buf, 2u);
  }

  dispatch_sync(sStaticPropertyQueue, &__block_literal_global_85);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__TVPMediaItemLoader__mediaServicesWereLost___block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (void)_mediaServicesResetDidTimeout
{
  v3 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Timed out waiting for media services to reset.  Manually triggering notification", v4, 2u);
  }

  [self _mediaServicesWereReset:0];
}

+ (void)_mediaServicesWereReset:(id)reset
{
  v4 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Received AVAudioSessionMediaServicesWereResetNotification.  Will handle on next run loop to ensure audio session has a chance to configure itself", buf, 2u);
  }

  dispatch_sync(sStaticPropertyQueue, &__block_literal_global_89);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TVPMediaItemLoader__mediaServicesWereReset___block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__TVPMediaItemLoader__mediaServicesWereReset___block_invoke_2(uint64_t a1)
{
  v2 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Handling AVAudioSessionMediaServicesWereResetNotification after delay.  Notifying instances", v4, 2u);
  }

  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__mediaServicesResetDidTimeout object:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"TVPMediaItemLoaderMediaServicesWereResetNotification" object:0];
}

- (TVPMediaItemLoader)initWithMediaItem:(id)item
{
  itemCopy = item;
  v31.receiver = self;
  v31.super_class = TVPMediaItemLoader;
  v6 = [(TVPMediaItemLoader *)&v31 init];
  if (v6)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = initWithMediaItem__instanceNumber++;
    itemCopy = [v7 stringWithFormat:@"%@ %ld (%@)", v8, v9, itemCopy];
    objc_initWeak(&location, v6);
    objc_storeStrong(v6 + 2, item);
    v11 = *(v6 + 3);
    *(v6 + 3) = @"Cleaned up";

    *(v6 + 9) = 257;
    v12 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uUIDString = [v12 UUIDString];
    v14 = [uUIDString copy];
    v15 = *(v6 + 15);
    *(v6 + 15) = v14;

    v16 = dispatch_queue_create("AVAssetInternal access queue", 0);
    v17 = *(v6 + 11);
    *(v6 + 11) = v16;

    v18 = dispatch_queue_create("assetLoadContext access queue", 0);
    v19 = *(v6 + 12);
    *(v6 + 12) = v18;

    v20 = [TVPStateMachine alloc];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __40__TVPMediaItemLoader_initWithMediaItem___block_invoke;
    v28[3] = &unk_279D7BB80;
    objc_copyWeak(&v29, &location);
    v21 = [(TVPStateMachine *)v20 initWithName:itemCopy initialState:@"Cleaned up" mode:0 stateChangeHandler:v28];
    v22 = *(v6 + 9);
    *(v6 + 9) = v21;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__stopBackgroundCaching_ name:@"com.apple.TVPMediaItemLoader.TVPMediaItemLoaderStopBackgroundCaching" object:0 suspensionBehavior:4];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__mediaItemPlaybackErrorDidOccur_ name:@"TVPMediaItemPlaybackErrorDidOccurNotification" object:itemCopy];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v6 selector:sel__mediaItemStopPlayback_ name:@"TVPMediaItemStopPlaybackNotification" object:itemCopy];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v6 selector:sel__tvpMediaServicesWereReset_ name:@"TVPMediaItemLoaderMediaServicesWereResetNotification" object:0];

    [*(v6 + 9) setCallsStateChangeHandlerSynchronously:1];
    [*(v6 + 9) setLogObject:sMediaItemLoaderLogObject];
    [v6 _registerStateMachineHandlers];
    [*(v6 + 9) setShouldAcceptEvents:1];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__TVPMediaItemLoader_initWithMediaItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [WeakRetained error];
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 AVAsset];
    v14 = 138412802;
    v15 = v5;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_INFO, "State did change to %@.  error property is %@, AVAsset property is %@", &v14, 0x20u);
  }

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 setState:v5];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter removeObserver:self];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self];

  [(TVPMediaItemLoader *)self _cleanUp];
  [(TVPStateMachine *)self->_stateMachine deregisterHandlers];
  v5.receiver = self;
  v5.super_class = TVPMediaItemLoader;
  [(TVPMediaItemLoader *)&v5 dealloc];
}

- (void)loadIfNecessary
{
  refCount = [(TVPMediaItemLoader *)self refCount];
  [(TVPMediaItemLoader *)self setRefCount:refCount + 1];
  if (!refCount)
  {
    stateMachine = [(TVPMediaItemLoader *)self stateMachine];
    [stateMachine postEvent:@"Load"];
  }
}

- (void)cleanupIfNecessary
{
  if ([(TVPMediaItemLoader *)self refCount])
  {
    [(TVPMediaItemLoader *)self setRefCount:[(TVPMediaItemLoader *)self refCount]- 1];
    if (![(TVPMediaItemLoader *)self refCount])
    {
      stateMachine = [(TVPMediaItemLoader *)self stateMachine];
      [stateMachine postEvent:@"Clean up"];
    }
  }
}

- (void)prepareForPlaybackInitiation
{
  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  [stateMachine postEvent:@"Prepare for playback initiation"];
}

- (NSString)description
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  assetInternalAccessQueue = [(TVPMediaItemLoader *)self assetInternalAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__TVPMediaItemLoader_description__block_invoke;
  block[3] = &unk_279D7D9F0;
  block[4] = self;
  block[5] = &v11;
  dispatch_sync(assetInternalAccessQueue, block);

  v4 = MEMORY[0x277CCACA8];
  mediaItem = [(TVPMediaItemLoader *)self mediaItem];
  v6 = v12[5];
  state = [(TVPMediaItemLoader *)self state];
  v8 = [v4 stringWithFormat:@"TVPMediaItem: %@ AVAsset: %@ State: %@", mediaItem, v6, state];

  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __33__TVPMediaItemLoader_description__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) AVAssetInternal];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (AVURLAsset)AVAsset
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  currentState = [stateMachine currentState];

  if (([currentState isEqualToString:@"AVAsset keys loaded"] & 1) != 0 || (objc_msgSend(currentState, "isEqualToString:", @"Preparing for playback initiation") & 1) != 0 || objc_msgSend(currentState, "isEqualToString:", @"Ready for playback"))
  {
    assetInternalAccessQueue = [(TVPMediaItemLoader *)self assetInternalAccessQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__TVPMediaItemLoader_AVAsset__block_invoke;
    v8[3] = &unk_279D7D9F0;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(assetInternalAccessQueue, v8);
  }

  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __29__TVPMediaItemLoader_AVAsset__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) AVAssetInternal];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (TVPContentKeySession)contentKeySession
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  _contentKeyLoader = [(TVPMediaItemLoader *)self _contentKeyLoader];
  assetInternalAccessQueue = [(TVPMediaItemLoader *)self assetInternalAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TVPMediaItemLoader_contentKeySession__block_invoke;
  block[3] = &unk_279D7DA18;
  block[4] = self;
  v9 = _contentKeyLoader;
  v10 = &v11;
  v5 = _contentKeyLoader;
  dispatch_sync(assetInternalAccessQueue, block);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __39__TVPMediaItemLoader_contentKeySession__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onAssetInternalAccessQueue_updateContentKeySessionWithContentKeyLoader:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 64);
  v3 = (*(*(a1 + 48) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (BOOL)containsStreamingAVAsset
{
  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  currentState = [stateMachine currentState];

  if (([currentState isEqualToString:@"AVAsset keys loaded"] & 1) != 0 || (objc_msgSend(currentState, "isEqualToString:", @"Preparing for playback initiation") & 1) != 0 || objc_msgSend(currentState, "isEqualToString:", @"Ready for playback"))
  {
    aVAsset = [(TVPMediaItemLoader *)self AVAsset];
    _isStreaming = [aVAsset _isStreaming];
  }

  else
  {
    _isStreaming = 0;
  }

  return _isStreaming;
}

- (id)newPlayerItem
{
  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  currentState = [stateMachine currentState];

  if (([currentState isEqualToString:@"AVAsset keys loaded"] & 1) == 0 && (objc_msgSend(currentState, "isEqualToString:", @"Preparing for playback initiation") & 1) == 0 && !objc_msgSend(currentState, "isEqualToString:", @"Ready for playback"))
  {
    v6 = 0;
    goto LABEL_42;
  }

  v40 = currentState;
  aVAsset = [(TVPMediaItemLoader *)self AVAsset];
  v6 = [[TVPPlayerItem alloc] initWithAsset:aVAsset];
  [(TVPPlayerItem *)v6 setMediaItemLoader:self];
  mediaItem = [(TVPMediaItemLoader *)self mediaItem];
  [(TVPPlayerItem *)v6 setContinuesPlayingDuringPrerollForSeek:0];
  if ([mediaItem hasTrait:@"TVPMediaItemTraitMinimizeNetworkUsageWhilePaused"])
  {
    [(TVPPlayerItem *)v6 setPreferredForwardBufferDuration:50.0];
  }

  if (![(TVPMediaItemLoader *)self containsStreamingAVAsset])
  {
    v8 = [aVAsset tracksWithMediaType:*MEMORY[0x277CE5EA8]];
    v9 = [v8 count];

    if (!v9)
    {
      [(TVPPlayerItem *)v6 setPlaybackLikelyToKeepUpTrigger:1];
    }
  }

  v10 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataForwardPlaybackEndTime"];
  v11 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataReversePlaybackEndTime"];
  if (v10)
  {
    memset(&v42, 0, sizeof(v42));
    [v10 doubleValue];
    CMTimeMakeWithSeconds(&v42, v12, 1000000);
    v41 = v42;
    [(TVPPlayerItem *)v6 setForwardPlaybackEndTime:&v41];
  }

  if (v11)
  {
    memset(&v42, 0, sizeof(v42));
    [v11 doubleValue];
    CMTimeMakeWithSeconds(&v42, v13, 1000000);
    v41 = v42;
    [(TVPPlayerItem *)v6 setReversePlaybackEndTime:&v41];
  }

  v38 = v10;
  v14 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataAutomaticallyHandlesInterstitialEvents"];
  v15 = v14;
  if (v14)
  {
    -[TVPPlayerItem setAutomaticallyHandlesInterstitialEvents:](v6, "setAutomaticallyHandlesInterstitialEvents:", [v14 BOOLValue]);
  }

  v36 = v15;
  v16 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataTimeToPauseBuffering"];
  v17 = v16;
  if (v16)
  {
    CMTimeMakeFromDictionary(&v42, v16);
    [(TVPPlayerItem *)v6 setTimeToPauseBuffering:&v42];
  }

  v18 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataTimeToPausePlayback"];

  if (v18)
  {
    CMTimeMakeFromDictionary(&v42, v18);
    [(TVPPlayerItem *)v6 setTimeToPausePlayback:&v42];
  }

  v19 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataDateRangeCollector"];
  if (v19)
  {
    [(TVPPlayerItem *)v6 addMediaDataCollector:v19];
    [mediaItem removeMediaItemMetadataForProperty:@"TVPMediaItemMetadataDateRangeCollector"];
  }

  v34 = v19;
  v35 = v18;
  v37 = v11;
  v39 = aVAsset;
  v20 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataWebVTTStyles"];
  if (v20)
  {
    v21 = [MEMORY[0x277CE6638] textStyleRulesFromPropertyList:v20];
    [(TVPPlayerItem *)v6 setTextStyleRules:v21];
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataGaplessHeuristicInfo"];
  v24 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataGaplessEncodingDelayInFrames"];
  v25 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataGaplessEncodingDrainInFrames"];
  v26 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataGaplessDurationInFrames"];
  v27 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataGaplessLastPacketsResync"];
  if (v23)
  {
    [v22 setObject:v23 forKey:*MEMORY[0x277CE60F0]];
  }

  if (v24)
  {
    [v22 setObject:v24 forKey:*MEMORY[0x277CE60E0]];
  }

  if (v25)
  {
    [v22 setObject:v25 forKey:*MEMORY[0x277CE60E8]];
  }

  if (v26)
  {
    [v22 setObject:v26 forKey:*MEMORY[0x277CE60D8]];
  }

  if (v27)
  {
    [v22 setObject:v27 forKey:*MEMORY[0x277CE60F8]];
  }

  if ([v22 count])
  {
    [(TVPPlayerItem *)v6 setGaplessInfo:v22];
  }

  v28 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataMaxHLSVideoResolution"];
  v29 = v28;
  if (v28)
  {
    integerValue = [v28 integerValue];
    if (!integerValue)
    {
      v31 = 576.0;
      v32 = 1024.0;
      goto LABEL_40;
    }

    if (integerValue == 1)
    {
      v31 = 1080.0;
      v32 = 1920.0;
LABEL_40:
      [(TVPPlayerItem *)v6 setPreferredMaximumResolution:v32, v31];
    }
  }

  [(TVPPlayerItem *)v6 setAllowedAudioSpatializationFormats:7];

  currentState = v40;
LABEL_42:

  return v6;
}

- (void)loadSHA1DigestWithCompletion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  currentState = [stateMachine currentState];

  if (([currentState isEqualToString:@"AVAsset keys loaded"] & 1) != 0 || (objc_msgSend(currentState, "isEqualToString:", @"Preparing for playback initiation") & 1) != 0 || objc_msgSend(currentState, "isEqualToString:", @"Ready for playback"))
  {
    aVAssetInternal = [(TVPMediaItemLoader *)self AVAssetInternal];
    v17[0] = @"SHA1Digest";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__TVPMediaItemLoader_loadSHA1DigestWithCompletion___block_invoke;
    v13[3] = &unk_279D7D370;
    v14 = aVAssetInternal;
    v15 = @"SHA1Digest";
    v16 = completionCopy;
    v9 = aVAssetInternal;
    [v9 loadValuesAsynchronouslyForKeys:v8 completionHandler:v13];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__TVPMediaItemLoader_loadSHA1DigestWithCompletion___block_invoke_3;
    v11[3] = &unk_279D7BF30;
    v12 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v11);
    v9 = v12;
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
}

void __51__TVPMediaItemLoader_loadSHA1DigestWithCompletion___block_invoke(id *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TVPMediaItemLoader_loadSHA1DigestWithCompletion___block_invoke_2;
  block[3] = &unk_279D7D370;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__TVPMediaItemLoader_loadSHA1DigestWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 statusOfValueForKey:v3 error:&v8];
  v5 = v8;
  v6 = *(a1 + 48);
  if (v4 == 2)
  {
    if (v6)
    {
      v7 = [*(a1 + 32) SHA1Digest];
      (*(v6 + 16))(v6, v7, 0);
    }
  }

  else if (v6)
  {
    (*(v6 + 16))(*(a1 + 48), 0, v5);
  }
}

- (void)_registerStateMachineHandlers
{
  v64[2] = *MEMORY[0x277D85DE8];
  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  objc_initWeak(&location, self);
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke;
  v59[3] = &unk_279D7DA40;
  objc_copyWeak(&v60, &location);
  v4 = MEMORY[0x26D6B0400](v59);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2;
  v57[3] = &unk_279D7DA68;
  objc_copyWeak(&v58, &location);
  v5 = MEMORY[0x26D6B0400](v57);
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_127;
  v53[3] = &unk_279D7DB08;
  objc_copyWeak(&v56, &location);
  v6 = stateMachine;
  v54 = v6;
  v21 = v5;
  v55 = v21;
  v7 = MEMORY[0x26D6B0400](v53);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_182;
  v49[3] = &unk_279D7DB58;
  objc_copyWeak(&v52, &location);
  v8 = v6;
  v50 = v8;
  v9 = v7;
  v51 = v9;
  v10 = MEMORY[0x26D6B0400](v49);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_185;
  v46[3] = &unk_279D7CB20;
  objc_copyWeak(&v48, &location);
  v11 = v8;
  v47 = v11;
  [v11 registerHandlerForEvent:@"Load" onState:@"Cleaned up" withBlock:v46];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_3_201;
  v42[3] = &unk_279D7CD28;
  objc_copyWeak(&v45, &location);
  v20 = v4;
  v44 = v20;
  v12 = v11;
  v43 = v12;
  [v12 registerHandlerForEvent:@"Did finish preparing to load" onState:@"Preparing for loading" withBlock:v42];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_5;
  v40[3] = &unk_279D7C020;
  v22 = v10;
  v41 = v22;
  [v12 registerHandlerForEvent:@"Disk space purge did complete" onState:@"Purging disk space during initial loading if necessary" withBlock:v40];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_6;
  v38[3] = &unk_279D7BFD0;
  objc_copyWeak(&v39, &location);
  [v12 registerHandlerForEvent:@"AVAsset keys did load successfully" onState:@"Loading AVAsset keys" withBlock:v38];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_8;
  v36[3] = &unk_279D7BFD0;
  objc_copyWeak(&v37, &location);
  [v12 registerHandlerForEvent:@"AVAsset metadata did load successfully" onState:@"Loading AVAsset keys" withBlock:v36];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_9;
  v33[3] = &unk_279D7CB20;
  objc_copyWeak(&v35, &location);
  v13 = v12;
  v34 = v13;
  [v13 registerHandlerForEvent:@"Prepare for playback initiation" onState:@"AVAsset keys loaded" withBlock:v33];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_206;
  v30[3] = &unk_279D7CB20;
  objc_copyWeak(&v32, &location);
  v14 = v13;
  v31 = v14;
  [v14 registerHandlerForEvent:@"Did finish preparing for playback initiation" onState:@"Preparing for playback initiation" withBlock:v30];
  v64[0] = @"Cleaned up";
  v64[1] = @"Failed";
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
  [v14 registerHandlerForEvent:@"Failure" onStates:v15 withBlock:&__block_literal_global_210];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_5_211;
  v28[3] = &unk_279D7BFD0;
  objc_copyWeak(&v29, &location);
  [v14 registerDefaultHandlerForEvent:@"Failure" withBlock:v28];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_212;
  v25[3] = &unk_279D7BF58;
  objc_copyWeak(&v27, &location);
  v16 = v9;
  v26 = v16;
  [v14 registerHandlerForEvent:@"Media services were reset" onState:@"Waiting for media services to reset" withBlock:v25];
  v63[0] = @"Loading AVAsset keys";
  v63[1] = @"AVAsset keys loaded";
  v63[2] = @"Preparing for playback initiation";
  v63[3] = @"Ready for playback";
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
  [v14 registerHandlerForEvent:@"Media services were reset" onStates:v17 withBlock:&__block_literal_global_215];

  v62[0] = @"Cleaned up";
  v62[1] = @"Failed";
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  [v14 registerHandlerForEvent:@"Clean up" onStates:v18 withBlock:&__block_literal_global_219];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_3_220;
  v23[3] = &unk_279D7BFD0;
  objc_copyWeak(&v24, &location);
  [v14 registerDefaultHandlerForEvent:@"Clean up" withBlock:v23];
  objc_destroyWeak(&v24);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v39);

  objc_destroyWeak(&v45);
  objc_destroyWeak(&v48);

  objc_destroyWeak(&v52);
  objc_destroyWeak(&v56);

  objc_destroyWeak(&v58);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke(uint64_t a1)
{
  v2 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Content will not be cached to disk; no purge necessary", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateMachine];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_123;
  v6[3] = &unk_279D7BF80;
  objc_copyWeak(&v7, (a1 + 32));
  [v4 executeBlockAfterCurrentStateTransition:v6];

  objc_destroyWeak(&v7);
  return @"Purging disk space during initial loading if necessary";
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_123(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stateMachine];
  v5 = @"success";
  v6[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postEvent:@"Disk space purge did complete" withContext:0 userInfo:v3];

  v4 = *MEMORY[0x277D85DE8];
}

id __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [objc_opt_class() removeTemporaryDownloadDirectory];

  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [objc_opt_class() tempDirURL];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v4 URLByDeletingLastPathComponent];
  v7 = [v6 path];
  v27 = 0;
  v8 = [v5 attributesOfFileSystemForPath:v7 error:&v27];
  v9 = v27;

  if (v8)
  {
    v10 = [v8 objectForKey:*MEMORY[0x277CCA1D0]];
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v11 mediaItem];
    v13 = [v12 mediaItemMetadataForProperty:@"TVPMediaItemMetadataFileSize"];

    v14 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v10;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Free space is %@, file size is %@", buf, 0x16u);
    }

    if (v10 && v13)
    {
      v15 = [v10 unsignedLongLongValue];
      if (v15 > [v13 unsignedLongLongValue] + 524288000)
      {
        v16 = [MEMORY[0x277CCAA00] defaultManager];
        v26 = v9;
        v17 = [v16 createDirectoryAtURL:v4 withIntermediateDirectories:0 attributes:0 error:&v26];
        v18 = v26;

        if (v17)
        {
          v19 = objc_loadWeakRetained((a1 + 32));
          v20 = [v19 mediaItem];
          v21 = [v20 mediaItemURL];

          v22 = [v21 lastPathComponent];
          if ([v22 length])
          {
            v23 = [v4 URLByAppendingPathComponent:v22 isDirectory:0];
          }

          else
          {
            if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
            {
              __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_4();
            }

            v23 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
          {
            __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_3();
          }

          v23 = 0;
        }

        goto LABEL_18;
      }

      if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
      {
        __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_2();
      }
    }

    else if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
    {
      __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_1();
    }

    v23 = 0;
    v18 = v9;
LABEL_18:

    v9 = v18;
    goto LABEL_19;
  }

  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
  {
    __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_5();
  }

  v23 = 0;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_127(uint64_t a1, int a2, int a3)
{
  v55 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [*(a1 + 32) currentState];
  if (WeakRetained)
  {
    v8 = [WeakRetained mediaItem];
    v9 = [v8 mediaItemURL];
    v10 = v9;
    if (v9 && ([v9 absoluteString], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v12))
    {
      if (a3)
      {
        v13 = objc_loadWeakRetained((a1 + 48));
        v14 = [v13 mediaItem];
        v15 = [v14 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
        [v15 addStartEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysTotal];

        v16 = objc_loadWeakRetained((a1 + 48));
        v17 = [v16 mediaItem];
        v18 = [v17 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
        [v18 addStartEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysPrimary];
      }

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v20 = v19;
      v36 = [WeakRetained timingData];
      [v36 setStartTimeForLoadingAVAssetKeys:v20];
      v21 = [WeakRetained _avAssetOptions];
      v22 = [WeakRetained mediaItem];
      v23 = [v22 hasTrait:@"TVPMediaItemTraitUseTempDownload"];

      if (v23)
      {
        v24 = (*(*(a1 + 40) + 16))();
        v25 = sMediaItemLoaderLogObject;
        if (v24)
        {
          if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v24;
            _os_log_impl(&dword_26CEDD000, v25, OS_LOG_TYPE_DEFAULT, "Setting AVAsset destination URL to %@", &buf, 0xCu);
          }

          [v21 setObject:v24 forKey:*MEMORY[0x277CE6208]];
        }

        else if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
        {
          __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_127_cold_1();
        }
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v53 = 0x2020000000;
      v54 = 0;
      if (a2)
      {
        v27 = sMediaItemLoaderLogObject;
        if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *v48 = 0;
          _os_log_impl(&dword_26CEDD000, v27, OS_LOG_TYPE_DEFAULT, "Disabling AVAssetCache", v48, 2u);
        }

        [v21 removeObjectForKey:*MEMORY[0x277CE61F8]];
      }

      else
      {
        [v8 hasTrait:@"TVPMediaItemTraitRequiresAppToRunIfBackgroundedDuringPlayback"];
      }

      v28 = [WeakRetained _contentKeyLoader];
      v29 = [WeakRetained assetLoadContextAccessQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_134;
      block[3] = &unk_279D7D9F0;
      p_buf = &buf;
      v30 = WeakRetained;
      v46 = v30;
      dispatch_sync(v29, block);

      v31 = [v30 assetInternalAccessQueue];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_135;
      v37[3] = &unk_279D7DAE0;
      v43 = &buf;
      v38 = v30;
      v39 = v21;
      v40 = v10;
      v41 = *(a1 + 32);
      v42 = v28;
      v32 = v28;
      v33 = v21;
      objc_copyWeak(&v44, (a1 + 48));
      dispatch_async(v31, v37);

      objc_destroyWeak(&v44);
      _Block_object_dispose(&buf, 8);

      v7 = @"Loading AVAsset keys";
    }

    else
    {
      if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
      {
        __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_127_cold_2();
      }

      v26 = *(a1 + 32);
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_128;
      v49[3] = &unk_279D7BA58;
      objc_copyWeak(&v51, (a1 + 48));
      v50 = *(a1 + 32);
      [v26 executeBlockAfterCurrentStateTransition:v49];

      objc_destroyWeak(&v51);
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v7;
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_128(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVPlaybackErrorDomain" code:802 userInfo:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained mediaItem];
  v5 = [v4 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v5 addSingleShotEventWithName:TVPPlaybackReportingEventError value:v2];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 mediaItem];
  v8 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v8 addSingleShotEventWithName:TVPPlaybackReportingEventErrorEvent value:TVPPlaybackReportingEventLoadAVAssetKeysTotal];

  v9 = *(a1 + 32);
  v12 = @"error";
  v13[0] = v2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 postEvent:@"Failure" withContext:0 userInfo:v10];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_134(uint64_t a1)
{
  result = [*(a1 + 32) assetLoadContext];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_135(uint64_t a1)
{
  v62[2] = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v2 = [*(a1 + 32) assetLoadContextAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_3;
  block[3] = &unk_279D7D9F0;
  v53 = &v54;
  v52 = *(a1 + 32);
  dispatch_sync(v2, block);

  if (v55[3] != *(*(*(a1 + 72) + 8) + 24))
  {
    goto LABEL_46;
  }

  v3 = [*(a1 + 40) mutableCopy];
  v4 = *MEMORY[0x277CE6218];
  v62[0] = *MEMORY[0x277CE6250];
  v62[1] = v4;
  [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:2];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v5 = v48 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v6)
  {
    v7 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];
        v11 = v10 == 0;

        if (!v11)
        {
          [v3 setObject:@"OMITTED" forKey:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v6);
  }

  v12 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v3;
    _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "AVAsset options: %@", buf, 0xCu);
  }

  v13 = [*(a1 + 40) objectForKey:*MEMORY[0x277CE6290]];
  v14 = [v13 objectForKey:*MEMORY[0x277CE6288]];

  v15 = sMediaItemLoaderLogObject;
  v16 = os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v16)
    {
      *buf = 138412290;
      v60 = v14;
      v17 = "AVURLAssetiTunesStoreContentHLSAssetURLStringKey is present: %@";
      v18 = v15;
      v19 = 12;
LABEL_18:
      _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
    }
  }

  else if (v16)
  {
    *buf = 0;
    v17 = "AVURLAssetiTunesStoreContentHLSAssetURLStringKey is absent";
    v18 = v15;
    v19 = 2;
    goto LABEL_18;
  }

  v20 = [*(a1 + 32) existingAVAsset];
  if (v20)
  {
    v21 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "Using existing AVURLAsset instead of creating new one", buf, 2u);
    }

    v22 = 0;
  }

  else
  {
    v23 = [*(a1 + 40) objectForKey:*MEMORY[0x277CE6210]];
    if (v23)
    {
      v24 = sMediaItemLoaderLogObject;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [v23 unsignedLongValue];
        *buf = 134217984;
        v60 = v25;
        _os_log_impl(&dword_26CEDD000, v24, OS_LOG_TYPE_DEFAULT, "Asset will be created using download token %lu", buf, 0xCu);
      }
    }

    v26 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 48);
      *buf = 138412290;
      v60 = v27;
      _os_log_impl(&dword_26CEDD000, v26, OS_LOG_TYPE_DEFAULT, "Creating AVURLAsset for %@", buf, 0xCu);
    }

    v20 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:*(a1 + 48) options:*(a1 + 40)];
    v28 = [v20 statusOfValueForKey:@"URL" error:0];
    v29 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v60 = v28;
      _os_log_impl(&dword_26CEDD000, v29, OS_LOG_TYPE_DEFAULT, "Status of AVAsset key [URL] is %ld", buf, 0xCu);
    }

    v22 = 0;
    if (v23 && v28 == 3)
    {
      if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
      {
        __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_135_cold_1();
      }

      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVPlaybackErrorDomain" code:833 userInfo:0];
    }
  }

  if (!v20 || v22)
  {
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
    {
      __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_135_cold_2();
    }

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_143;
    v43[3] = &unk_279D7BDF0;
    v44 = v22;
    v45 = *(a1 + 32);
    v46 = *(a1 + 56);
    dispatch_async(MEMORY[0x277D85CD0], v43);

    v35 = v44;
  }

  else
  {
    v58[0] = @"tracks";
    v58[1] = @"availableMediaCharacteristicsWithMediaSelectionOptions";
    v58[2] = @"availableChapterLocales";
    v58[3] = @"duration";
    v58[4] = @"availableMetadataFormats";
    v58[5] = @"preferredSoundCheckVolumeNormalization";
    v58[6] = @"streaming";
    v58[7] = @"playable";
    v58[8] = @"availableVideoDynamicRanges";
    v58[9] = @"maximumVideoResolution";
    v58[10] = @"metadata";
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:11];
    if (!*(a1 + 64))
    {
      v31 = [v20 resourceLoader];
      v32 = *(a1 + 32);
      v33 = MEMORY[0x277D85CD0];
      v34 = MEMORY[0x277D85CD0];
      [v31 setDelegate:v32 queue:v33];
    }

    [*(a1 + 32) setAVAssetInternal:v20];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_177;
    v37[3] = &unk_279D7DAB8;
    v35 = v30;
    v38 = v35;
    v39 = v20;
    objc_copyWeak(&v42, (a1 + 80));
    v41 = *(a1 + 72);
    v40 = *(a1 + 56);
    [v39 loadValuesAsynchronouslyForKeys:v35 completionHandler:v37];

    objc_destroyWeak(&v42);
  }

LABEL_46:
  _Block_object_dispose(&v54, 8);
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) assetLoadContext];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_143(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVPlaybackErrorDomain" code:821 userInfo:0];
  }

  v4 = v3;
  v5 = [*(a1 + 40) mediaItem];
  v6 = [v5 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v6 addSingleShotEventWithName:TVPPlaybackReportingEventError value:v4];

  v7 = [*(a1 + 40) mediaItem];
  v8 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v8 addSingleShotEventWithName:TVPPlaybackReportingEventErrorEvent value:TVPPlaybackReportingEventLoadAVAssetKeysTotal];

  v9 = *(a1 + 48);
  v12 = @"error";
  v13[0] = v4;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v9 postEvent:@"Failure" withContext:0 userInfo:v10];

  v11 = *MEMORY[0x277D85DE8];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_177(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  v4 = 0;
  v5 = 0;
  if (v2)
  {
    v6 = *v29;
    *&v3 = 138412290;
    v18 = v3;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v27 = v4;
        v10 = [v9 statusOfValueForKey:v8 error:{&v27, v18}];
        v11 = v27;

        v12 = sMediaItemLoaderLogObject;
        if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v33 = v8;
          v34 = 2048;
          v35 = v10;
          _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Status of AVAsset key [%@] is %ld", buf, 0x16u);
        }

        v4 = v11;
        if (v10 == 3)
        {
          if (![MEMORY[0x277CE63D8] tvp_shouldIgnoreLoadFailureForKey:v8 error:v11 logObject:sMediaItemLoaderLogObject])
          {
            LOBYTE(v2) = 1;
            goto LABEL_19;
          }

          ++v5;
          v13 = sMediaItemLoaderLogObject;
          if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v33 = v8;
            _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring failure of non-essential key [%@]", buf, 0xCu);
          }
        }

        else if (v10 == 2)
        {
          ++v5;
        }

        ++v7;
      }

      while (v2 != v7);
      v14 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      v2 = v14;
    }

    while (v14);
  }

LABEL_19:

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_179;
  block[3] = &unk_279D7DA90;
  objc_copyWeak(v25, (a1 + 64));
  v26 = v2;
  v15 = *(a1 + 48);
  v24 = *(a1 + 56);
  v21 = v4;
  v22 = v15;
  v25[1] = v5;
  v23 = *(a1 + 32);
  v16 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v25);
  v17 = *MEMORY[0x277D85DE8];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_179(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v4 = [WeakRetained assetLoadContextAccessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_180;
    block[3] = &unk_279D7D9F0;
    v20 = buf;
    v5 = v3;
    v19 = v5;
    dispatch_sync(v4, block);

    if (*(v22 + 3) == *(*(*(a1 + 56) + 8) + 24))
    {
      if (*(a1 + 80) == 1)
      {
        v6 = *(a1 + 32);
        if (v6)
        {
          v25 = @"error";
          v26[0] = v6;
          v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
        }

        else
        {
          v7 = 0;
        }

        v12 = [v5 mediaItem];
        v13 = [v12 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
        [v13 addSingleShotEventWithName:TVPPlaybackReportingEventError value:*(a1 + 32)];

        v14 = [v5 mediaItem];
        v15 = [v14 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
        [v15 addSingleShotEventWithName:TVPPlaybackReportingEventErrorEvent value:TVPPlaybackReportingEventLoadAVAssetKeysTotal];

        [*(a1 + 40) postEvent:@"Failure" withContext:0 userInfo:v7];
        goto LABEL_17;
      }

      v11 = *(a1 + 72);
      if (v11 == [*(a1 + 48) count])
      {
        [*(a1 + 40) postEvent:@"AVAsset keys did load successfully"];
        goto LABEL_17;
      }

      v9 = sMediaItemLoaderLogObject;
      if (!os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *v17 = 0;
      v10 = "Not posting any event because AVAsset key loading is still in progress or cancelled";
    }

    else
    {
      v9 = sMediaItemLoaderLogObject;
      if (!os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        _Block_object_dispose(buf, 8);
        goto LABEL_18;
      }

      *v17 = 0;
      v10 = "AVAsset key load completion is from previous attempt, ignoring";
    }

    _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, v10, v17, 2u);
    goto LABEL_17;
  }

  v8 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Media item loader has been deallocated; ignoring AVAsset key load completion", buf, 2u);
  }

LABEL_18:

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_180(uint64_t a1)
{
  result = [*(a1 + 32) assetLoadContext];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_182(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) currentState];
  if (WeakRetained)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_183;
    block[3] = &unk_279D7DB30;
    block[4] = &v15;
    dispatch_sync(sStaticPropertyQueue, block);
    if (*(v16 + 24) == 1)
    {
      v6 = sMediaItemLoaderLogObject;
      if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "Media services are currently resetting.  Will wait until reset is complete to load AVAsset keys", v13, 2u);
      }

      [WeakRetained setDisableAVAssetCacheAfterMediaServicesReset:a2];
      v7 = [WeakRetained mediaItem];
      v8 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
      [v8 addStartEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysTotal];

      v9 = [WeakRetained mediaItem];
      v10 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
      [v10 addStartEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysPrimary];

      v11 = @"Waiting for media services to reset";
    }

    else
    {
      v11 = (*(*(a1 + 40) + 16))();
    }

    _Block_object_dispose(&v15, 8);
    v5 = v11;
  }

  return v5;
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_185(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained mediaItem];
  v4 = [v3 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v4 addStartEventWithName:TVPPlaybackReportingEventMediaItemLoaderLoad];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 mediaItem];
  v7 = [v6 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v7 addStartEventWithName:TVPPlaybackReportingEventPrepareForLoading];

  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 setCleanedUp:0];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 mediaItem];

  v11 = objc_alloc_init(TVPMediaItemTimingData);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(TVPMediaItemTimingData *)v11 setStartTimeForPreparingForLoading:?];
  v12 = objc_loadWeakRetained((a1 + 40));
  [v12 setTimingData:v11];

  if (objc_opt_respondsToSelector())
  {
    v13 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Calling prepareForLoadingWithCompletion for mediaItem %@", buf, 0xCu);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_189;
    v21[3] = &unk_279D7DBA8;
    v14 = &v22;
    v15 = v10;
    v22 = v15;
    v23 = *(a1 + 32);
    [v15 prepareForLoadingWithCompletion:v21];
  }

  else
  {
    v16 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_199;
    v19[3] = &unk_279D7BDC8;
    v14 = &v20;
    v20 = v16;
    [v20 executeBlockAfterCurrentStateTransition:v19];
  }

  v17 = *MEMORY[0x277D85DE8];
  return @"Preparing for loading";
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_189(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    *buf = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "prepareForLoadingWithCompletion callback received for mediaItem %@.  Success is %@, error is %@", buf, 0x20u);
  }

  v9 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_196;
  v12[3] = &unk_279D7DB80;
  v15 = a2;
  v13 = v5;
  v14 = v9;
  v10 = v5;
  [v9 executeBlockAfterCurrentStateTransition:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_196(uint64_t a1)
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [v3 setObject:v2 forKey:@"success"];

  [v3 tvp_setObjectIfNotNil:*(a1 + 32) forKey:@"error"];
  [*(a1 + 40) postEvent:@"Did finish preparing to load" withContext:0 userInfo:v3];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_199(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"success";
  v5[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v1 postEvent:@"Did finish preparing to load" withContext:0 userInfo:v2];

  v3 = *MEMORY[0x277D85DE8];
}

id __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_3_201(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = [WeakRetained mediaItem];
  v11 = [v10 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v11 addEndEventWithName:TVPPlaybackReportingEventPrepareForLoading];

  v12 = objc_loadWeakRetained((a1 + 48));
  v13 = [v12 timingData];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v13 setEndTimeForPreparingForLoading:?];

  v14 = [v7 objectForKey:@"success"];
  LODWORD(v11) = [v14 BOOLValue];
  v15 = [v8 currentState];

  if (v11)
  {
    v16 = (*(*(a1 + 40) + 16))();

    v15 = v16;
  }

  else
  {
    v17 = *(a1 + 32);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_4;
    v19[3] = &unk_279D7BC20;
    v20 = v7;
    v21 = *(a1 + 32);
    [v17 executeBlockAfterCurrentStateTransition:v19];
  }

  return v15;
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_4(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:@"error"];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v2)
  {
    v7 = @"error";
    v8[0] = v2;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 postEvent:@"Failure" withContext:0 userInfo:v5];
  }

  else
  {
    [v4 postEvent:@"Failure" withContext:0 userInfo:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained mediaItem];
  v15 = [v14 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v15 addEndEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysPrimary];

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 _needToLoadBlockingMetadataKeys];

  v18 = objc_loadWeakRetained((a1 + 32));
  v19 = [v18 mediaItem];
  v20 = [v19 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  v21 = v20;
  if (v17)
  {
    [v20 addStartEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysSecondary];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_7;
    v31[3] = &unk_279D7BF80;
    objc_copyWeak(&v32, (a1 + 32));
    [v9 executeBlockAfterCurrentStateTransition:v31];
    v22 = [v9 currentState];
    objc_destroyWeak(&v32);
  }

  else
  {
    [v20 addEndEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysTotal];

    v23 = objc_loadWeakRetained((a1 + 32));
    v24 = [v23 mediaItem];
    v25 = [v24 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
    [v25 addEndEventWithName:TVPPlaybackReportingEventMediaItemLoaderLoad];

    v26 = objc_loadWeakRetained((a1 + 32));
    v27 = [v26 timingData];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v27 setEndTimeForLoadingAVAssetKeys:?];

    v28 = objc_loadWeakRetained((a1 + 32));
    v29 = [v28 mediaItem];
    [v29 setMediaItemMetadata:MEMORY[0x277CBEC38] forProperty:@"TVPMediaItemMetadataHLSMetadataIsLoaded"];

    v22 = @"AVAsset keys loaded";
  }

  return v22;
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadMediaItemMetadataAsynchronously];
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained mediaItem];
  v4 = [v3 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v4 addEndEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysSecondary];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 mediaItem];
  v7 = [v6 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v7 addEndEventWithName:TVPPlaybackReportingEventLoadAVAssetKeysTotal];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 mediaItem];
  v10 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v10 addEndEventWithName:TVPPlaybackReportingEventMediaItemLoaderLoad];

  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 timingData];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v12 setEndTimeForLoadingAVAssetKeys:?];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 mediaItem];
  [v14 setMediaItemMetadata:MEMORY[0x277CBEC38] forProperty:@"TVPMediaItemMetadataHLSMetadataIsLoaded"];

  return @"AVAsset keys loaded";
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained mediaItem];
  v15 = [v14 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v15 addStartEventWithName:TVPPlaybackReportingEventPrepareForPlaybackInitiation];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 mediaItem];

  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = [v18 timingData];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v19 setStartTimeForPreparingForPlaybackInitiation:?];

  v20 = objc_loadWeakRetained((a1 + 40));
  v21 = [v20 _contentKeyLoader];

  v22 = objc_loadWeakRetained((a1 + 40));
  v23 = [v22 assetInternalAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_10;
  block[3] = &unk_279D7BA58;
  objc_copyWeak(&v37, (a1 + 40));
  v24 = v21;
  v36 = v24;
  dispatch_sync(v23, block);

  if (objc_opt_respondsToSelector())
  {
    v25 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v17;
      _os_log_impl(&dword_26CEDD000, v25, OS_LOG_TYPE_DEFAULT, "Calling prepareForPlaybackInitiationWithCompletion for mediaItem %@", buf, 0xCu);
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_204;
    v32[3] = &unk_279D7DBA8;
    v33 = v17;
    v34 = *(a1 + 32);
    [v33 prepareForPlaybackInitiationWithCompletion:v32];

    v26 = &v33;
  }

  else
  {
    v27 = *(a1 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_205;
    v30[3] = &unk_279D7BDC8;
    v31 = v27;
    [v31 executeBlockAfterCurrentStateTransition:v30];
    v26 = &v31;
  }

  objc_destroyWeak(&v37);
  v28 = *MEMORY[0x277D85DE8];
  return @"Preparing for playback initiation";
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _onAssetInternalAccessQueue_updateContentKeySessionWithContentKeyLoader:*(a1 + 32)];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_204(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = @"NO";
    v12 = 138412802;
    if (a2)
    {
      v8 = @"YES";
    }

    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "prepareForPlaybackInitiationWithCompletion callback received for mediaItem %@.  Success is %@, error is %@", &v12, 0x20u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  [v9 setObject:v10 forKey:@"success"];

  [v9 tvp_setObjectIfNotNil:v5 forKey:@"error"];
  [*(a1 + 40) postEvent:@"Did finish preparing for playback initiation" withContext:0 userInfo:v9];

  v11 = *MEMORY[0x277D85DE8];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_205(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = @"success";
  v5[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v1 postEvent:@"Did finish preparing for playback initiation" withContext:0 userInfo:v2];

  v3 = *MEMORY[0x277D85DE8];
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_206(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained mediaItem];
  v11 = [v10 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v11 addEndEventWithName:TVPPlaybackReportingEventPrepareForPlaybackInitiation];

  v12 = [v7 objectForKey:@"success"];
  LODWORD(v11) = [v12 BOOLValue];
  v13 = [v8 currentState];

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = [v14 timingData];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v15 setEndTimeForPreparingForPlaybackInitiation:?];

  if (v11)
  {

    v13 = @"Ready for playback";
  }

  else
  {
    v16 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_3_207;
    v18[3] = &unk_279D7BC20;
    v19 = v7;
    v20 = *(a1 + 32);
    [v16 executeBlockAfterCurrentStateTransition:v18];
  }

  return v13;
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_3_207(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:@"error"];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v2)
  {
    v7 = @"error";
    v8[0] = v2;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 postEvent:@"Failure" withContext:0 userInfo:v5];
  }

  else
  {
    [v4 postEvent:@"Failure" withContext:0 userInfo:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_5_211(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:@"error"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setError:v6];

  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
  {
    __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_5_211_cold_1();
  }

  v8 = sLoaderHashTable;
  v9 = objc_loadWeakRetained((a1 + 32));
  [v8 removeObject:v9];

  v10 = objc_loadWeakRetained((a1 + 32));
  [v10 _cleanUp];

  return @"Failed";
}

id __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_212(uint64_t a1)
{
  v2 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Media services were reset.  Will load AVAsset keys", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained disableAVAssetCacheAfterMediaServicesReset];
  [WeakRetained setDisableAVAssetCacheAfterMediaServicesReset:0];
  v4 = (*(*(a1 + 32) + 16))();

  return v4;
}

id __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_213(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Media services were reset while using AVFoundation objects.  Posting failure event", buf, 2u);
  }

  v19 = @"error";
  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  v5 = [v4 initWithDomain:*MEMORY[0x277CE5DC0] code:-11819 userInfo:0];
  v20[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_216;
  v15 = &unk_279D7BC20;
  v16 = v2;
  v17 = v6;
  v7 = v6;
  v8 = v2;
  [v8 executeBlockAfterCurrentStateTransition:&v12];
  v9 = [v8 currentState];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

__CFString *__51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_3_220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cleanUp];
  }

  return @"Cleaned up";
}

- (id)_contentKeyLoader
{
  mediaItem = [(TVPMediaItemLoader *)self mediaItem];
  if ([mediaItem conformsToProtocol:&unk_287E7B4E8])
  {
    mediaItem2 = [(TVPMediaItemLoader *)self mediaItem];
    v5 = [mediaItem2 hasTrait:@"TVPMediaItemTraitAirPlayedContent"];

    if ((v5 & 1) == 0)
    {
      mediaItem3 = [(TVPMediaItemLoader *)self mediaItem];
      goto LABEL_6;
    }
  }

  else
  {
  }

  mediaItem3 = 0;
LABEL_6:

  return mediaItem3;
}

- (void)_onAssetInternalAccessQueue_updateContentKeySessionWithContentKeyLoader:(id)loader
{
  loaderCopy = loader;
  v5 = loaderCopy;
  if (self->_contentKeySession)
  {
    v6 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "Content key session already exists";
      v8 = &v12;
LABEL_4:
      _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    if (!loaderCopy)
    {
      v6 = sMediaItemLoaderLogObject;
      if (!os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v13 = 0;
      v7 = "Not creating content key session because contentKeyLoader is nil";
      v8 = &v13;
      goto LABEL_4;
    }

    if (!self->_AVAssetInternal && os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
    {
      [TVPMediaItemLoader _onAssetInternalAccessQueue_updateContentKeySessionWithContentKeyLoader:];
    }

    v9 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Creating content key session", buf, 2u);
    }

    v10 = [[TVPContentKeySession alloc] initWithContentKeyLoader:v5 avAsset:self->_AVAssetInternal];
    contentKeySession = self->_contentKeySession;
    self->_contentKeySession = v10;
  }

LABEL_14:
}

- (id)_avAssetOptions
{
  v57 = *MEMORY[0x277D85DE8];
  if (_avAssetOptions_onceToken != -1)
  {
    [TVPMediaItemLoader _avAssetOptions];
  }

  mediaItem = [(TVPMediaItemLoader *)self mediaItem];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = _avAssetOptions_metadataKeysToAVAssetKeysMappings;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __37__TVPMediaItemLoader__avAssetOptions__block_invoke_2;
  v52[3] = &unk_279D7DBD0;
  v6 = mediaItem;
  v53 = v6;
  v7 = dictionary;
  v54 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v52];
  v8 = _avAssetOptions_traitsKeysToAVAssetKeysMappings;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __37__TVPMediaItemLoader__avAssetOptions__block_invoke_3;
  v49[3] = &unk_279D7DBD0;
  v9 = v6;
  v50 = v9;
  v10 = v7;
  v51 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v49];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataAVURLAssetAlternativeConfigurationOptions"];
  v13 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataServiceIdentifier"];
  v14 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStoreFrontIdentifier"];
  v15 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataRTCChildHierarchyToken"];
  v16 = sMediaItemLoaderLogObject;
  v17 = os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT);
  v45 = v14;
  if (v15)
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "Using existing RTC hierarchy token in media item loader", buf, 2u);
    }
  }

  else
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "Creating RTC hierarchy tokens in media item loader", buf, 2u);
    }

    v18 = [MEMORY[0x277D43FE0] newHierarchyTokenFromParentToken:0];
    if (v18)
    {
      v19 = [MEMORY[0x277D43FE0] newHierarchyTokenFromParentToken:v18];
      mediaItem2 = [(TVPMediaItemLoader *)self mediaItem];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __37__TVPMediaItemLoader__avAssetOptions__block_invoke_277;
      v46[3] = &unk_279D7BDF0;
      v46[4] = self;
      v47 = v18;
      v15 = v19;
      v48 = v15;
      [mediaItem2 performMediaItemMetadataTransactionWithBlock:v46];

      v14 = v45;
    }

    else
    {
      v15 = 0;
    }
  }

  v21 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v15;
    _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "RTC hierarchy token for AVAsset: %@", buf, 0xCu);
  }

  if (v12)
  {
    [v11 addEntriesFromDictionary:v12];
  }

  if (v13)
  {
    [v11 setObject:v13 forKey:*MEMORY[0x277CE61E8]];
  }

  if (v14)
  {
    [v11 setObject:v14 forKey:@"StorefrontID"];
  }

  if (v15)
  {
    [v11 setObject:v15 forKey:*MEMORY[0x277CE61D0]];
  }

  if ([v11 count])
  {
    [v10 setObject:v11 forKey:*MEMORY[0x277CE61E0]];
  }

  if ([v9 hasTrait:@"TVPMediaItemTraitOptimizeForHighLatency"])
  {
    v22 = MEMORY[0x277CBEC38];
    [v10 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CE6230]];
    [v10 setObject:v22 forKey:*MEMORY[0x277CE6258]];
  }

  if ([v9 hasTrait:@"TVPMediaItemTraitIncludeStoreCookiesInContentRequests"])
  {
    v23 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataDSID"];
    if (v23)
    {
      v24 = [MEMORY[0x277D6C478] accountWithDSID:v23];
      ams_cookies = [v24 ams_cookies];
      if (ams_cookies)
      {
        [v10 setObject:ams_cookies forKey:*MEMORY[0x277CE6218]];
      }
    }
  }

  v26 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataiTunesStoreContentInfo"];
  if (v26)
  {
    [v10 setObject:v26 forKey:*MEMORY[0x277CE6290]];
  }

  allowsCellularUsage = [(TVPMediaItemLoader *)self allowsCellularUsage];
  v28 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v29 = @"not ";
    if (allowsCellularUsage)
    {
      v29 = &stru_287E49338;
    }

    *buf = 138412290;
    v56 = v29;
    _os_log_impl(&dword_26CEDD000, v28, OS_LOG_TYPE_DEFAULT, "Cellular usage is %@allowed for this media item loader", buf, 0xCu);
  }

  if (allowsCellularUsage)
  {
    v30 = [v9 hasTrait:@"TVPMediaItemTraitCellularPlaybackProhibited"];
    v31 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v32 = @"not ";
      if (v30)
      {
        v32 = &stru_287E49338;
      }

      *buf = 138412290;
      v56 = v32;
      _os_log_impl(&dword_26CEDD000, v31, OS_LOG_TYPE_DEFAULT, "Cellular usage is %@prohibited for this media item", buf, 0xCu);
    }

    allowsCellularUsage = v30 ^ 1u;
  }

  v33 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    if (allowsCellularUsage)
    {
      v34 = @"Allowing";
    }

    else
    {
      v34 = @"Not allowing";
    }

    *buf = 138412290;
    v56 = v34;
    _os_log_impl(&dword_26CEDD000, v33, OS_LOG_TYPE_DEFAULT, "%@ cellular playback of this media item", buf, 0xCu);
  }

  v35 = [MEMORY[0x277CCABB0] numberWithBool:allowsCellularUsage];
  [v10 setObject:v35 forKey:*MEMORY[0x277CE61B8]];

  allowsConstrainedNetworkUsage = [(TVPMediaItemLoader *)self allowsConstrainedNetworkUsage];
  v37 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v38 = @"not ";
    if (allowsConstrainedNetworkUsage)
    {
      v38 = &stru_287E49338;
    }

    *buf = 138412290;
    v56 = v38;
    _os_log_impl(&dword_26CEDD000, v37, OS_LOG_TYPE_DEFAULT, "Cellular usage is %@allowed for this media item loader", buf, 0xCu);
  }

  v39 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v40 = @"Not allowing";
    if (allowsConstrainedNetworkUsage)
    {
      v40 = @"Allowing";
    }

    *buf = 138412290;
    v56 = v40;
    _os_log_impl(&dword_26CEDD000, v39, OS_LOG_TYPE_DEFAULT, "%@ constrained network playback of this media item", buf, 0xCu);
  }

  v41 = [MEMORY[0x277CCABB0] numberWithBool:allowsConstrainedNetworkUsage];
  [v10 setObject:v41 forKey:*MEMORY[0x277CE61C0]];

  v42 = v10;
  v43 = *MEMORY[0x277D85DE8];
  return v10;
}

void __37__TVPMediaItemLoader__avAssetOptions__block_invoke()
{
  v13[9] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CE6250];
  v12[0] = @"TVPMediaItemMetadataAcquisitionDictionary";
  v12[1] = @"TVPMediaItemMetadataKeyBagPathFileURL";
  v1 = *MEMORY[0x277CE6248];
  v13[0] = v0;
  v13[1] = v1;
  v2 = *MEMORY[0x277CE6280];
  v12[2] = @"TVPMediaItemMetadataAllowAppleWirelessDirectLink";
  v12[3] = @"TVPMediaItemMetadataAirPlayAuthorizationInfo";
  v3 = *MEMORY[0x277CE61B0];
  v13[2] = v2;
  v13[3] = v3;
  v4 = *MEMORY[0x277CE6268];
  v12[4] = @"TVPMediaItemMetadataSSLProperties";
  v12[5] = @"TVPMediaItemMetadataOutOfBandAlternateTracks";
  v5 = *MEMORY[0x277CE6238];
  v13[4] = v4;
  v13[5] = v5;
  v6 = *MEMORY[0x277CE6220];
  v12[6] = @"TVPMediaItemMetadataHTTPHeaders";
  v12[7] = @"TVPMediaItemMetadataDownloadToken";
  v7 = *MEMORY[0x277CE6210];
  v13[6] = v6;
  v13[7] = v7;
  v12[8] = @"TVPMediaItemMetadataDownloadDestinationURL";
  v13[8] = *MEMORY[0x277CE6208];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:9];
  v9 = _avAssetOptions_metadataKeysToAVAssetKeysMappings;
  _avAssetOptions_metadataKeysToAVAssetKeysMappings = v8;

  v10 = _avAssetOptions_traitsKeysToAVAssetKeysMappings;
  _avAssetOptions_traitsKeysToAVAssetKeysMappings = MEMORY[0x277CBEC10];

  v11 = *MEMORY[0x277D85DE8];
}

void __37__TVPMediaItemLoader__avAssetOptions__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) mediaItemMetadataForProperty:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

void __37__TVPMediaItemLoader__avAssetOptions__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([*(a1 + 32) hasTrait:a2])
  {
    [*(a1 + 40) setObject:MEMORY[0x277CBEC38] forKey:v5];
  }
}

void __37__TVPMediaItemLoader__avAssetOptions__block_invoke_277(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaItem];
  [v2 setMediaItemMetadata:*(a1 + 40) forProperty:@"TVPMediaItemMetadataRTCParentHierarchyToken"];

  v3 = [*(a1 + 32) mediaItem];
  [v3 setMediaItemMetadata:*(a1 + 48) forProperty:@"TVPMediaItemMetadataRTCChildHierarchyToken"];
}

- (void)_tvpMediaServicesWereReset:(id)reset
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "%@ received TVPMediaItemLoaderMediaServicesWereResetNotification", &v7, 0xCu);
  }

  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  [stateMachine postEvent:@"Media services were reset"];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)_needToLoadBlockingMetadataKeys
{
  v30 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  assetInternalAccessQueue = [(TVPMediaItemLoader *)self assetInternalAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__TVPMediaItemLoader__needToLoadBlockingMetadataKeys__block_invoke;
  block[3] = &unk_279D7D9F0;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(assetInternalAccessQueue, block);

  v4 = v22[5];
  if (v4 && [v4 statusOfValueForKey:@"metadata" error:0] == 2)
  {
    _metadataKeysToLoad = [(TVPMediaItemLoader *)self _metadataKeysToLoad];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    metadata = [v22[5] metadata];
    v7 = [metadata countByEnumeratingWithState:&v16 objects:v29 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(metadata);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) key];
          v11 = [_metadataKeysToLoad containsObject:v10];

          if (v11)
          {
            LODWORD(v7) = 1;
            goto LABEL_14;
          }
        }

        v7 = [metadata countByEnumeratingWithState:&v16 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v12 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = @"NO";
    if (v7)
    {
      v13 = @"YES";
    }

    *buf = 138412290;
    v28 = v13;
    _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Need to load metadata keys = %@", buf, 0xCu);
  }

  _Block_object_dispose(&v21, 8);

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __53__TVPMediaItemLoader__needToLoadBlockingMetadataKeys__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) AVAssetInternal];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_rollKeyNamesForType:(unint64_t)type withCount:(unint64_t)count
{
  if (count)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = [(TVPMediaItemLoader *)self _rollKeyNameFromType:type];
    if ([v8 length])
    {
      v9 = 0;
      do
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.start", v8, v9];
        [array addObject:v10];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.duration", v8, v9];
        [array addObject:v11];

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.skippable", v8, v9];
        [array addObject:v12];

        if ((type | 2) == 3)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.adam-id", v8, v9];
          [array addObject:v13];

          if (type == 1)
          {
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.dynamic-slot.data-set-id", v8, v9];
            [array addObject:v14];
          }
        }

        ++v9;
      }

      while (count != v9);
    }
  }

  else
  {
    array = 0;
  }

  v15 = [array copy];

  return v15;
}

- (id)_skipKeyNamesForType:(unint64_t)type withCount:(unint64_t)count
{
  if (count)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = [(TVPMediaItemLoader *)self _skipKeyNameFromType:type];
    if ([v8 length])
    {
      v9 = 0;
      do
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.start", v8, v9];
        [array addObject:v10];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.duration", v8, v9];
        [array addObject:v11];

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.target", v8, v9];
        [array addObject:v12];

        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.label", v8, v9];
        [array addObject:v13];

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.type", v8, v9];
        [array addObject:v14];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.enabled", v8, v9];
        [array addObject:v15];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.image", v8, v9];
        [array addObject:v16];

        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.image-width", v8, v9];
        [array addObject:v17];

        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.image-height", v8, v9];
        [array addObject:v18];

        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.title", v8, v9];
        [array addObject:v19];

        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.genre", v8, v9];
        [array addObject:v20];

        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.rating-display-name", v8, v9];
        [array addObject:v21];

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.rating-system", v8, v9];
        [array addObject:v22];

        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.canonical-id", v8, v9];
        [array addObject:v23];

        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.runtime", v8, v9];
        [array addObject:v24];

        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.up-next.is-added", v8, v9];
        [array addObject:v25];

        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.up-next.add-label", v8, v9];
        [array addObject:v26];

        v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.up-next.added-label", v8, v9];
        [array addObject:v27];

        ++v9;
      }

      while (count != v9);
    }
  }

  else
  {
    array = 0;
  }

  v28 = [array copy];

  return v28;
}

- (id)_advisoryKeyNamesWithCount:(unint64_t)count
{
  if (count)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.advisory-info.%lu.key", v5];
      [array addObject:v6];

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.advisory-info.%lu.value", v5];
      [array addObject:v7];

      ++v5;
    }

    while (count != v5);
  }

  else
  {
    array = 0;
  }

  v8 = [array copy];

  return v8;
}

- (id)_tomatoFreshnessFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"FRESH"] & 1) != 0 || (objc_msgSend(stringCopy, "isEqualToString:", @"Fresh"))
  {
    v4 = &unk_287E59A80;
  }

  else if (([stringCopy isEqualToString:@"CERTIFIED_FRESH"] & 1) != 0 || objc_msgSend(stringCopy, "isEqualToString:", @"CertifiedFresh"))
  {
    v4 = &unk_287E59A98;
  }

  else
  {
    v4 = &unk_287E59A68;
  }

  return v4;
}

- (id)_contentKeyRequestParamsFromBase64String:(id)string
{
  v59 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([stringCopy length])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:stringCopy options:1];
    if ([v4 length])
    {
      v56 = 0;
      v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v56];
      v6 = v56;
      if (v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v6;
          v33 = v5;
          v34 = v4;
          v35 = stringCopy;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          obj = v5;
          v7 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
          if (!v7)
          {
            goto LABEL_36;
          }

          v8 = v7;
          v9 = 0x277CBE000uLL;
          v10 = *v53;
          v36 = *v53;
          while (1)
          {
            v11 = 0;
            v38 = v8;
            do
            {
              if (*v53 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v52 + 1) + 8 * v11);
              v13 = *(v9 + 2752);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
                {
                  [(TVPMediaItemLoader *)&v44 _contentKeyRequestParamsFromBase64String:v45];
                }

                goto LABEL_34;
              }

              v14 = v12;
              v15 = [v14 tvp_stringForKey:@"uri"];
              v16 = [v14 tvp_arrayForKey:@"keyformatversion"];
              if (![v15 length])
              {
                goto LABEL_31;
              }

              v43 = v14;
              v17 = objc_alloc_init(TVPContentKeyRequestParams);
              v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v40 = v17;
              v42 = v15;
              [(TVPContentKeyRequestParams *)v17 setKeyIdentifier:v15];
              v50 = 0u;
              v51 = 0u;
              v48 = 0u;
              v49 = 0u;
              v41 = v16;
              v19 = v16;
              v20 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
              if (!v20)
              {
                goto LABEL_28;
              }

              v21 = v20;
              v22 = *v49;
              do
              {
                v23 = 0;
                do
                {
                  if (*v49 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v48 + 1) + 8 * v23);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v25 = v24;
LABEL_22:
                    v27 = v25;
                    if (v25)
                    {
                      [v18 addObject:v25];
                    }

                    goto LABEL_26;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    integerValue = [v24 integerValue];
                    if (integerValue < 1)
                    {
                      goto LABEL_26;
                    }

                    v25 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
                    goto LABEL_22;
                  }

                  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
                  {
                    [(TVPMediaItemLoader *)&v46 _contentKeyRequestParamsFromBase64String:v47];
                  }

LABEL_26:
                  ++v23;
                }

                while (v21 != v23);
                v21 = [v19 countByEnumeratingWithState:&v48 objects:v57 count:16];
              }

              while (v21);
LABEL_28:

              if ([v18 count])
              {
                [(TVPContentKeyRequestParams *)v40 setKeyFormatVersions:v18];
              }

              [v37 addObject:{v40, v32, v33, v34, v35}];

              v9 = 0x277CBE000;
              v10 = v36;
              v8 = v38;
              v15 = v42;
              v14 = v43;
              v16 = v41;
LABEL_31:

LABEL_34:
              ++v11;
            }

            while (v11 != v8);
            v8 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
            if (!v8)
            {
LABEL_36:

              v4 = v34;
              stringCopy = v35;
              v6 = v32;
              v5 = v33;
              goto LABEL_41;
            }
          }
        }

        if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
        {
          [TVPMediaItemLoader _contentKeyRequestParamsFromBase64String:];
        }
      }

      else if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_ERROR))
      {
        [TVPMediaItemLoader _contentKeyRequestParamsFromBase64String:];
      }

LABEL_41:
    }
  }

  if ([v37 count])
  {
    v28 = v37;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v30 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)_loadMediaItemMetadataAsynchronously
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  objc_initWeak(&location, self);
  assetInternalAccessQueue = [(TVPMediaItemLoader *)self assetInternalAccessQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke;
  block[3] = &unk_279D7DBF8;
  block[4] = &v37;
  objc_copyWeak(&v35, &location);
  dispatch_sync(assetInternalAccessQueue, block);

  v4 = v38[5];
  if (v4 && [v4 statusOfValueForKey:@"metadata" error:0] == 2)
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__3;
    v32[4] = __Block_byref_object_dispose__3;
    v33 = objc_opt_new();
    v5 = dispatch_group_create();
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_2;
    v29[3] = &unk_279D7DC20;
    v6 = v5;
    v30 = v6;
    v31 = v32;
    v7 = MEMORY[0x26D6B0400](v29);
    metadata = [v38[5] metadata];
    if ([metadata count])
    {
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x2020000000;
      v28[3] = 0;
      assetLoadContextAccessQueue = [(TVPMediaItemLoader *)self assetLoadContextAccessQueue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_501;
      v27[3] = &unk_279D7D9F0;
      v27[4] = self;
      v27[5] = v28;
      dispatch_sync(assetLoadContextAccessQueue, v27);

      _metadataKeysToLoad = [(TVPMediaItemLoader *)self _metadataKeysToLoad];
      v11 = sMediaItemLoaderLogObject;
      if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Loading the counts for AVAsset metadata items.", buf, 2u);
      }

      (v7)[2](v7, metadata, _metadataKeysToLoad);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_502;
      v17[3] = &unk_279D7DCC0;
      objc_copyWeak(&v25, &location);
      v22 = v32;
      v23 = &v37;
      v18 = metadata;
      v19 = _metadataKeysToLoad;
      v21 = v7;
      v20 = v6;
      v24 = v28;
      v12 = _metadataKeysToLoad;
      dispatch_group_notify(v20, MEMORY[0x277D85CD0], v17);

      objc_destroyWeak(&v25);
      _Block_object_dispose(v28, 8);
    }

    else
    {
      v15 = objc_loadWeakRetained(&location);
      stateMachine = [v15 stateMachine];
      [stateMachine postEvent:@"AVAsset metadata did load successfully"];
    }

    _Block_object_dispose(v32, 8);
  }

  else
  {
    v13 = objc_loadWeakRetained(&location);
    stateMachine2 = [v13 stateMachine];
    [stateMachine2 postEvent:@"AVAsset metadata did load successfully"];
  }

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v37, 8);
}

void __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained AVAssetInternal];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v6;
    _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Will load AVAsset metadata keys = %@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    v20 = v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 key];
        if ([v6 containsObject:v14])
        {
          v15 = [v13 identifier];

          if (v15)
          {
            dispatch_group_enter(*(a1 + 32));
            v16 = *(*(*(a1 + 40) + 8) + 40);
            v17 = [v13 identifier];
            [v16 setObject:v17 forKey:v14];

            v29 = @"value";
            v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v22[0] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_499;
            v22[1] = &unk_279D7BDF0;
            v22[2] = v13;
            v23 = v14;
            v24 = *(a1 + 32);
            [v13 loadValuesAsynchronouslyForKeys:v18 completionHandler:v21];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_499(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) statusOfValueForKey:@"value" error:0];
  v3 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = v2;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Status of AVAsset Metadata key [%@] is = %ld", &v6, 0x16u);
  }

  dispatch_group_leave(*(a1 + 48));
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_501(uint64_t a1)
{
  result = [*(a1 + 32) assetLoadContext];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_502(uint64_t a1)
{
  v139 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v72 = [WeakRetained _stringValueForKey:@"com.apple.hls.feature.adam-id" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v71 = [WeakRetained _numberValueForKey:@"com.apple.hls.up-next.start" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v70 = [WeakRetained _numberValueForKey:@"com.apple.hls.watched.time" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v69 = [WeakRetained _numberValueForKey:@"com.apple.hls.pre-roll.duration" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v68 = [WeakRetained _numberValueForKey:@"com.apple.hls.feature.duration" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v67 = [WeakRetained _stringValueForKey:@"com.apple.hls.rating-image" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v65 = [WeakRetained _stringValueForKey:@"com.apple.hls.display-ratings-overlay" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v63 = [WeakRetained _stringValueForKey:@"com.apple.hls.title" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v61 = [WeakRetained _stringValueForKey:@"com.apple.hls.episode-title" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v45 = [WeakRetained _stringValueForKey:@"com.apple.hls.description" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v43 = [WeakRetained _stringValueForKey:@"com.apple.hls.genre" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v41 = [WeakRetained _stringValueForKey:@"com.apple.hls.rating-tag" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v39 = [WeakRetained _stringValueForKey:@"com.apple.hls.rating-system" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v59 = [WeakRetained _stringValueForKey:@"com.apple.hls.photosensitivity-info.text" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v58 = [WeakRetained _stringValueForKey:@"com.apple.hls.photosensitivity-info.image" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v57 = [WeakRetained _numberValueForKey:@"com.apple.hls.photosensitivity-info.duration" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v55 = [WeakRetained _stringValueForKey:@"com.apple.hls.high-motion-info.text" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v53 = [WeakRetained _stringValueForKey:@"com.apple.hls.high-motion-info.image" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v51 = [WeakRetained _numberValueForKey:@"com.apple.hls.high-motion-info.duration" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v37 = [WeakRetained _numberValueForKey:@"com.apple.hls.cs-rating" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v35 = [WeakRetained _stringValueForKey:@"com.apple.hls.rt-rating" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v33 = [WeakRetained _numberValueForKey:@"com.apple.hls.rt-audience-score" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v31 = [WeakRetained _stringValueForKey:@"com.apple.hls.poster" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v29 = [WeakRetained _stringValueForKey:@"com.apple.hls.poster.2x3" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v27 = [WeakRetained _stringValueForKey:@"com.apple.hls.keys" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v49 = [WeakRetained _numberValueForKey:@"com.apple.amp.video.recommended.viewing-distance.ratio" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v47 = [WeakRetained _stringValueForKey:@"com.apple.hls.haptics.url" fromMetadata:*(a1 + 32) andKeyIdentifierMap:*(*(*(a1 + 64) + 8) + 40)];
  v134 = 0;
  v135 = &v134;
  v136 = 0x2020000000;
  v137 = 0;
  v130 = 0;
  v131 = &v130;
  v132 = 0x2020000000;
  v133 = 0;
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v129 = 0;
  v122 = 0;
  v123 = &v122;
  v124 = 0x2020000000;
  v125 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x2020000000;
  v121 = 0;
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_2_503;
  v117[3] = &unk_279D7DC48;
  v117[4] = WeakRetained;
  v117[5] = &v134;
  v117[6] = &v130;
  v117[7] = &v126;
  v117[8] = &v122;
  v117[9] = &v118;
  v2 = MEMORY[0x26D6B0400](v117);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v3 = [*(*(*(a1 + 72) + 8) + 40) metadata];
  v4 = [v3 countByEnumeratingWithState:&v113 objects:v138 count:16];
  if (v4)
  {
    v5 = *v114;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v114 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v113 + 1) + 8 * i);
        v8 = [v7 key];
        if ([*(a1 + 40) containsObject:v8] && objc_msgSend(v7, "statusOfValueForKey:error:", @"value", 0) == 2)
        {
          (v2)[2](v2, v7);
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v113 objects:v138 count:16];
    }

    while (v4);
  }

  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [WeakRetained _rollKeyNamesForType:1 withCount:v135[3]];
  [v9 addObjectsFromArray:v10];

  v11 = [WeakRetained _rollKeyNamesForType:2 withCount:v131[3]];
  [v9 addObjectsFromArray:v11];

  v12 = [WeakRetained _rollKeyNamesForType:3 withCount:v127[3]];
  [v9 addObjectsFromArray:v12];

  v13 = [WeakRetained _skipKeyNamesForType:1 withCount:v123[3]];
  [v9 addObjectsFromArray:v13];

  v14 = [WeakRetained _advisoryKeyNamesWithCount:v119[3]];
  [v9 addObjectsFromArray:v14];

  v15 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v15, OS_LOG_TYPE_DEFAULT, "Loading the values for AVAsset metadata items.", buf, 2u);
  }

  v16 = *(a1 + 32);
  (*(*(a1 + 56) + 16))();
  group = *(a1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_510;
  block[3] = &unk_279D7DC98;
  objc_copyWeak(&v111, (a1 + 88));
  v104 = *(a1 + 80);
  v17 = *(a1 + 32);
  v105 = *(a1 + 64);
  v106 = &v134;
  v107 = &v130;
  v108 = &v126;
  v109 = &v122;
  v110 = &v118;
  v76 = v17;
  v77 = v71;
  v78 = v70;
  v79 = v69;
  v80 = v68;
  v81 = v67;
  v82 = v58;
  v83 = v57;
  v84 = v59;
  v85 = v53;
  v86 = v51;
  v87 = v55;
  v88 = v49;
  v89 = v47;
  v90 = v72;
  v91 = v65;
  v92 = v61;
  v93 = v63;
  v94 = v45;
  v95 = v43;
  v96 = v41;
  v97 = v39;
  v98 = v37;
  v99 = v35;
  v100 = v33;
  v101 = v29;
  v102 = v31;
  v103 = v27;
  v28 = v27;
  v32 = v31;
  v30 = v29;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v64 = v63;
  v62 = v61;
  v66 = v65;
  v73 = v72;
  v48 = v47;
  v50 = v49;
  v56 = v55;
  v52 = v51;
  v54 = v53;
  v60 = v59;
  v18 = v57;
  v19 = v58;
  v20 = v67;
  v21 = v68;
  v22 = v69;
  v23 = v70;
  v24 = v71;
  dispatch_group_notify(group, MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v111);
  _Block_object_dispose(&v118, 8);
  _Block_object_dispose(&v122, 8);
  _Block_object_dispose(&v126, 8);
  _Block_object_dispose(&v130, 8);
  _Block_object_dispose(&v134, 8);

  v25 = *MEMORY[0x277D85DE8];
}

void __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_2_503(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 key];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 statusOfValueForKey:v3 error:0] == 2)
  {
    v4 = [*(a1 + 32) _rollTypeFromMetadataItemKey:v3];
    if (v4)
    {
      v5 = v4;
      v6 = [v13 tvp_numberValue];
      v7 = [v6 unsignedIntegerValue];

      switch(v5)
      {
        case 3:
          v8 = *(a1 + 56);
          break;
        case 2:
          v8 = *(a1 + 48);
          break;
        case 1:
          v8 = *(a1 + 40);
          break;
        default:
          goto LABEL_17;
      }

      *(*(v8 + 8) + 24) = v7;
    }

    else
    {
      v9 = [*(a1 + 32) _skipTypeFromMetadataItemKey:v3];
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_17;
        }

        v10 = [v13 tvp_numberValue];
        v11 = [v10 unsignedIntegerValue];
        v12 = *(a1 + 64);
      }

      else
      {
        if (![v3 hasPrefix:@"com.apple.hls.advisory-info"])
        {
          goto LABEL_17;
        }

        v10 = [v13 tvp_numberValue];
        v11 = [v10 unsignedIntegerValue];
        v12 = *(a1 + 72);
      }

      *(*(v12 + 8) + 24) = v11;
    }
  }

LABEL_17:
}

void __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_510(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 312));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *buf = 0;
    v86 = buf;
    v87 = 0x2020000000;
    v88 = 0;
    v4 = [WeakRetained assetLoadContextAccessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_2_511;
    block[3] = &unk_279D7D9F0;
    v84 = buf;
    v5 = v3;
    v83 = v5;
    dispatch_sync(v4, block);

    if (*(v86 + 3) == *(*(*(a1 + 256) + 8) + 24))
    {
      v6 = [v5 _rollInfoFromMetadata:*(a1 + 32) keyIdentifierMap:*(*(*(a1 + 264) + 8) + 40) forType:1 withTotalCount:*(*(*(a1 + 272) + 8) + 24)];
      v7 = [v5 _rollInfoFromMetadata:*(a1 + 32) keyIdentifierMap:*(*(*(a1 + 264) + 8) + 40) forType:2 withTotalCount:*(*(*(a1 + 280) + 8) + 24)];
      v59 = [v5 _rollInfoFromMetadata:*(a1 + 32) keyIdentifierMap:*(*(*(a1 + 264) + 8) + 40) forType:3 withTotalCount:*(*(*(a1 + 288) + 8) + 24)];
      v8 = [v5 _skipInfoFromMetadata:*(a1 + 32) keyIdentifierMap:*(*(*(a1 + 264) + 8) + 40) forType:1 withTotalCount:*(*(*(a1 + 296) + 8) + 24)];
      v9 = [v5 _advisoryInfoFromMetadata:*(a1 + 32) keyIdentifierMap:*(*(*(a1 + 264) + 8) + 40) withTotalCount:*(*(*(a1 + 304) + 8) + 24)];
      v10 = [v5 _productPlacementInfoFromMetadata:*(a1 + 32) keyIdentifierMap:*(*(*(a1 + 264) + 8) + 40)];
      v11 = objc_opt_new();
      [v11 addObjectsFromArray:v6];
      [v11 addObjectsFromArray:v7];
      [v11 addObjectsFromArray:v59];
      v12 = [v5 mediaItem];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_3;
      v61[3] = &unk_279D7DC70;
      v13 = v5;
      v62 = v13;
      v56 = v11;
      v63 = v56;
      v57 = v8;
      v64 = v57;
      v58 = v6;
      v14 = *(a1 + 40);
      v15 = v7;
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      *&v19 = v17;
      *(&v19 + 1) = v18;
      *&v20 = v14;
      *(&v20 + 1) = v16;
      v65 = v20;
      v66 = v19;
      v21 = v9;
      v67 = v21;
      v68 = *(a1 + 72);
      v22 = v10;
      v69 = v22;
      v23 = *(a1 + 80);
      v24 = *(a1 + 88);
      v25 = *(a1 + 96);
      v26 = *(a1 + 104);
      *&v27 = v25;
      *(&v27 + 1) = v26;
      *&v28 = v23;
      *(&v28 + 1) = v24;
      v70 = v28;
      v71 = v27;
      v29 = *(a1 + 112);
      v30 = *(a1 + 120);
      v31 = *(a1 + 128);
      v32 = *(a1 + 136);
      *&v33 = v31;
      *(&v33 + 1) = v32;
      *&v34 = v29;
      *(&v34 + 1) = v30;
      v72 = v34;
      v73 = v33;
      v35 = *(a1 + 144);
      v36 = *(a1 + 152);
      v37 = *(a1 + 160);
      v38 = *(a1 + 168);
      *&v39 = v37;
      *(&v39 + 1) = v38;
      *&v40 = v35;
      *(&v40 + 1) = v36;
      v74 = v40;
      v75 = v39;
      v41 = *(a1 + 176);
      v42 = *(a1 + 184);
      v43 = *(a1 + 192);
      v44 = *(a1 + 200);
      *&v45 = v43;
      *(&v45 + 1) = v44;
      *&v46 = v41;
      *(&v46 + 1) = v42;
      v76 = v46;
      v77 = v45;
      v47 = *(a1 + 208);
      v48 = *(a1 + 216);
      v49 = *(a1 + 224);
      v50 = *(a1 + 232);
      *&v51 = v49;
      *(&v51 + 1) = v50;
      *&v52 = v47;
      *(&v52 + 1) = v48;
      v78 = v52;
      v79 = v51;
      v80 = *(a1 + 240);
      v81 = *(a1 + 248);
      [v12 performMediaItemMetadataTransactionWithBlock:v61];

      v53 = [v13 stateMachine];
      [v53 postEvent:@"AVAsset metadata did load successfully"];
    }

    else
    {
      v55 = sMediaItemLoaderLogObject;
      if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 0;
        _os_log_impl(&dword_26CEDD000, v55, OS_LOG_TYPE_DEFAULT, "Metadata key load completion is from previous attempt, ignoring", v60, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v54 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v54, OS_LOG_TYPE_DEFAULT, "Media item loader has been deallocated; ignoring Metadata key load completion", buf, 2u);
    }
  }
}

uint64_t __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_2_511(uint64_t a1)
{
  result = [*(a1 + 32) assetLoadContext];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __58__TVPMediaItemLoader__loadMediaItemMetadataAsynchronously__block_invoke_3(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) mediaItem];
  [v2 setMediaItemMetadata:*(a1 + 40) forProperty:@"TVPMediaItemMetadataRollInfo"];

  v3 = [*(a1 + 32) mediaItem];
  [v3 setMediaItemMetadata:*(a1 + 48) forProperty:@"TVPMediaItemMetadataSkipInfo"];

  v4 = [*(a1 + 32) mediaItem];
  [v4 setMediaItemMetadata:*(a1 + 56) forProperty:@"TVPMediaItemMetadataPostPlayStartTime"];

  v5 = [*(a1 + 32) mediaItem];
  [v5 setMediaItemMetadata:*(a1 + 64) forProperty:@"TVPMediaItemMetadataWatchedTime"];

  v6 = [*(a1 + 32) mediaItem];
  [v6 setMediaItemMetadata:*(a1 + 72) forProperty:@"TVPMediaItemMetadataFeatureStartTime"];

  v7 = [*(a1 + 32) mediaItem];
  [v7 setMediaItemMetadata:*(a1 + 80) forProperty:@"TVPMediaItemMetadataFeatureDuration"];

  v8 = [*(a1 + 32) mediaItem];
  [v8 setMediaItemMetadata:*(a1 + 88) forProperty:@"TVPMediaItemMetadataAdvisoryInfo"];

  v9 = [*(a1 + 32) mediaItem];
  [v9 setMediaItemMetadata:*(a1 + 96) forProperty:@"TVPMediaItemMetadataRatingImageURL"];

  v10 = [*(a1 + 32) mediaItem];
  [v10 setMediaItemMetadata:*(a1 + 104) forProperty:@"TVPMediaItemMetadataProductPlacementInfo"];

  v11 = [*(a1 + 32) mediaItem];
  [v11 setMediaItemMetadata:*(a1 + 112) forProperty:@"TVPMediaItemMetadataPhotoSensitivityImageURL"];

  v12 = [*(a1 + 32) mediaItem];
  [v12 setMediaItemMetadata:*(a1 + 120) forProperty:@"TVPMediaItemMetadataPhotoSensitivityDuration"];

  v13 = [*(a1 + 32) mediaItem];
  [v13 setMediaItemMetadata:*(a1 + 128) forProperty:@"TVPMediaItemMetadataPhotoSensitivityDescription"];

  v14 = [*(a1 + 32) mediaItem];
  [v14 setMediaItemMetadata:*(a1 + 136) forProperty:@"TVPMediaItemMetadataHighMotionWarningImageURL"];

  v15 = [*(a1 + 32) mediaItem];
  [v15 setMediaItemMetadata:*(a1 + 144) forProperty:@"TVPMediaItemMetadataHighMotionWarningDuration"];

  v16 = [*(a1 + 32) mediaItem];
  [v16 setMediaItemMetadata:*(a1 + 152) forProperty:@"TVPMediaItemMetadataHighMotionWarningDescription"];

  v17 = [*(a1 + 32) mediaItem];
  [v17 setMediaItemMetadata:*(a1 + 160) forProperty:@"TVPMediaItemMetadataRecommendedViewingRatio"];

  v18 = [*(a1 + 32) mediaItem];
  v19 = [v18 mediaItemMetadataForProperty:@"TVPMediaItemMetadataHapticsURLString"];

  if ([v19 length])
  {
    v20 = sMediaItemLoaderLogObject;
    if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v56) = 0;
      _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "Media item metadata already contains a haptics URL string, not overriding", &v56, 2u);
    }
  }

  else
  {
    v21 = [*(a1 + 32) mediaItem];
    [v21 setMediaItemMetadata:*(a1 + 168) forProperty:@"TVPMediaItemMetadataHapticsURLString"];
  }

  v22 = [*(a1 + 32) mediaItem];
  v23 = [v22 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStoreItemIdentifier"];

  if ([v23 length])
  {
    if ([*(a1 + 176) length])
    {
      if (([v23 isEqualToString:*(a1 + 176)] & 1) == 0)
      {
        v24 = sMediaItemLoaderLogObject;
        if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 176);
          v56 = 138412546;
          v57 = v23;
          v58 = 2112;
          v59 = v25;
          _os_log_impl(&dword_26CEDD000, v24, OS_LOG_TYPE_DEFAULT, "Media item metadata and HLS store identifiers do not match. Media item:%@ HLS:%@", &v56, 0x16u);
        }
      }
    }
  }

  if ([*(a1 + 176) length])
  {
    v26 = [*(a1 + 32) mediaItem];
    [v26 setMediaItemMetadata:*(a1 + 176) forProperty:@"TVPMediaItemMetadataStoreItemIdentifier"];
  }

  if ([*(a1 + 184) length])
  {
    v27 = [*(a1 + 184) BOOLValue];
    v28 = [*(a1 + 32) mediaItem];
    v29 = [MEMORY[0x277CCABB0] numberWithBool:v27];
    [v28 setMediaItemMetadata:v29 forProperty:@"TVPMediaItemMetadataShouldDisplayRatingOverlay"];
  }

  v30 = [*(a1 + 32) mediaItem];
  v31 = [v30 mediaItemMetadataForProperty:@"TVPMediaItemMetadataMediaType"];

  if ([v31 isEqualToString:@"ATVMediaTypeTVEpisode"])
  {
    v32 = @"TVPMediaItemMetadataTitle";
  }

  else
  {
    v33 = [v31 isEqualToString:@"ATVMediaTypeTVEpisodePreview"];
    v32 = @"TVPMediaItemMetadataTitle";
    if (!v33)
    {
      goto LABEL_19;
    }
  }

  if ([*(a1 + 192) length])
  {
    v34 = [*(a1 + 32) mediaItem];
    [v34 setMediaItemMetadata:*(a1 + 192) forProperty:v32];

    v35 = @"TVPMediaItemMetadataSeriesTitle";
    v32 = v35;
  }

LABEL_19:
  if ([*(a1 + 200) length])
  {
    v36 = [*(a1 + 32) mediaItem];
    [v36 setMediaItemMetadata:*(a1 + 200) forProperty:v32];
  }

  if ([*(a1 + 208) length])
  {
    v37 = [*(a1 + 32) mediaItem];
    [v37 setMediaItemMetadata:*(a1 + 208) forProperty:@"TVPMediaItemMetadataLongDescription"];
  }

  if ([*(a1 + 216) length])
  {
    v38 = [*(a1 + 32) mediaItem];
    [v38 setMediaItemMetadata:*(a1 + 216) forProperty:@"TVPMediaItemMetadataGenre"];
  }

  if ([*(a1 + 224) length])
  {
    v39 = [*(a1 + 32) mediaItem];
    [v39 setMediaItemMetadata:*(a1 + 224) forProperty:@"TVPMediaItemMetadataContentRating"];
  }

  if ([*(a1 + 232) length])
  {
    v40 = [*(a1 + 32) mediaItem];
    [v40 setMediaItemMetadata:*(a1 + 232) forProperty:@"TVPMediaItemMetadataContentRatingSystem"];
  }

  if (*(a1 + 240))
  {
    v41 = [*(a1 + 32) mediaItem];
    [v41 setMediaItemMetadata:*(a1 + 240) forProperty:@"TVPMediaItemMetadataCommonSenseRating"];
  }

  if ([*(a1 + 248) length])
  {
    v42 = [*(a1 + 32) _tomatoFreshnessFromString:*(a1 + 248)];
    v43 = [*(a1 + 32) mediaItem];
    [v43 setMediaItemMetadata:v42 forProperty:@"TVPMediaItemMetadataTomatoFreshness"];
  }

  v44 = *(a1 + 256);
  if (v44)
  {
    [v44 doubleValue];
    if (v45 >= 0.0)
    {
      [*(a1 + 256) doubleValue];
      v47 = (v46 * 100.0);
      v48 = [*(a1 + 32) mediaItem];
      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v47];
      [v48 setMediaItemMetadata:v49 forProperty:@"TVPMediaItemMetadataTomatoPercentage"];
    }
  }

  if ([*(a1 + 264) length])
  {
    v50 = (a1 + 264);
    v51 = TVPMediaItemMetadataTallArtworkURLFormat;
LABEL_40:
    v52 = [*(a1 + 32) mediaItem];
    [v52 setMediaItemMetadata:*v50 forProperty:*v51];

    goto LABEL_41;
  }

  if ([*(a1 + 272) length])
  {
    v50 = (a1 + 272);
    v51 = TVPMediaItemMetadataArtworkURLFormat;
    goto LABEL_40;
  }

LABEL_41:
  v53 = [*(a1 + 32) _contentKeyRequestParamsFromBase64String:*(a1 + 280)];
  v54 = [*(a1 + 32) mediaItem];
  [v54 setMediaItemMetadata:v53 forProperty:@"TVPMediaItemMetadataContentKeyRequestParams"];

  v55 = *MEMORY[0x277D85DE8];
}

- (id)_rollInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map forType:(unint64_t)type withTotalCount:(unint64_t)count
{
  metadataCopy = metadata;
  mapCopy = map;
  v39 = metadataCopy;
  if (count)
  {
    v11 = [(TVPMediaItemLoader *)self _rollKeyNameFromType:type];
    if ([v11 length])
    {
      [MEMORY[0x277CBEB18] array];
      v38 = v37 = count;
      v12 = 0;
      typeCopy = type;
      do
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.start", v11, v12];
        v14 = [(TVPMediaItemLoader *)self _numberValueForKey:v13 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.duration", v11, v12];
        v16 = [(TVPMediaItemLoader *)self _numberValueForKey:v15 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

        if (v14)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = [TVPMediaItemRollInfo alloc];
          [v14 doubleValue];
          v20 = v19;
          [v16 doubleValue];
          v22 = [(TVPMediaItemRollInfo *)v18 initWithType:type start:v20 duration:v21];
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.adam-id", v11, v12];
          [(TVPMediaItemLoader *)self _numberValueForKey:v23 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];
          v24 = v11;
          v26 = v25 = self;

          v40 = v26;
          v27 = v26;
          self = v25;
          v11 = v24;
          [(TVPMediaItemRollInfo *)v22 setAdamID:v27];
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.skippable", v24, v12];
          v29 = [(TVPMediaItemLoader *)self _stringValueForKey:v28 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

          if ([v29 length])
          {
            bOOLValue = [v29 BOOLValue];
          }

          else
          {
            bOOLValue = 1;
          }

          [(TVPMediaItemRollInfo *)v22 setSkippable:bOOLValue];
          v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.dynamic-slot.data-set-id", v11, v12];
          v32 = [(TVPMediaItemLoader *)self _stringValueForKey:v31 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

          [(TVPMediaItemRollInfo *)v22 setDynamicSlotDataSetId:v32];
          [v38 addObject:v22];

          metadataCopy = v39;
          type = typeCopy;
          count = v37;
        }

        ++v12;
      }

      while (count != v12);
      v33 = v38;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = [v33 copy];

  return v34;
}

- (id)_skipInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map forType:(unint64_t)type withTotalCount:(unint64_t)count
{
  metadataCopy = metadata;
  mapCopy = map;
  if (count)
  {
    v10 = [(TVPMediaItemLoader *)self _skipKeyNameFromType:type];
    if ([v10 length])
    {
      typeCopy = type;
      array = [MEMORY[0x277CBEB18] array];
      countCopy = count;
      for (i = 0; i != v19; ++i)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.start", v10, i];
        v13 = [(TVPMediaItemLoader *)self _numberValueForKey:v12 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.duration", v10, i];
        v15 = [(TVPMediaItemLoader *)self _numberValueForKey:v14 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.target", v10, i];
        v17 = [(TVPMediaItemLoader *)self _numberValueForKey:v16 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.label", v10, i];
        v38 = [(TVPMediaItemLoader *)self _stringValueForKey:v18 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

        v19 = countCopy;
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.type", v10, i];
        v21 = [(TVPMediaItemLoader *)self _stringValueForKey:v20 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

        if (v13 && v15 && v17)
        {
          v22 = [TVPMediaItemSkipInfo alloc];
          [v13 doubleValue];
          v24 = v23;
          [v15 doubleValue];
          v26 = v25;
          [v17 doubleValue];
          v28 = [(TVPMediaItemSkipInfo *)v22 initWithType:typeCopy start:v38 duration:v21 target:v24 localizedTitle:v26 skipIntroReportingType:v27];
          v29 = [(TVPMediaItemLoader *)self _promoInfoFromMetadata:metadataCopy keyIdentifierMap:mapCopy forSkipKey:v10 skipCounter:i];
          if (v29)
          {
            [(TVPMediaItemSkipInfo *)v28 setPromoInfo:v29];
          }

          [array addObject:v28];

          v19 = countCopy;
        }
      }

      v30 = array;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = [v30 copy];

  return v31;
}

- (id)_promoInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map forSkipKey:(id)key skipCounter:(unint64_t)counter
{
  metadataCopy = metadata;
  mapCopy = map;
  keyCopy = key;
  counter = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.enabled", keyCopy, counter];
  v14 = [(TVPMediaItemLoader *)self _stringValueForKey:counter fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

  if (v14 && [v14 length] && objc_msgSend(v14, "BOOLValue"))
  {
    counter2 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.image", keyCopy, counter];
    v50 = [(TVPMediaItemLoader *)self _stringValueForKey:counter2 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    counter3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.image-width", keyCopy, counter];
    v17 = [(TVPMediaItemLoader *)self _stringValueForKey:counter3 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    v18 = 0.0;
    v19 = 0.0;
    if (v17)
    {
      [v17 floatValue];
      v19 = v20;
    }

    v48 = v17;
    counter4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.image-height", keyCopy, counter];
    v22 = [(TVPMediaItemLoader *)self _stringValueForKey:counter4 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    if (v22)
    {
      [v22 floatValue];
      v18 = v23;
    }

    v47 = v22;
    counter5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.title", keyCopy, counter];
    v49 = [(TVPMediaItemLoader *)self _stringValueForKey:counter5 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    counter6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.genre", keyCopy, counter];
    v46 = [(TVPMediaItemLoader *)self _stringValueForKey:counter6 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    counter7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.rating-display-name", keyCopy, counter];
    v45 = [(TVPMediaItemLoader *)self _stringValueForKey:counter7 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    counter8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.rating-system", keyCopy, counter];
    v44 = [(TVPMediaItemLoader *)self _stringValueForKey:counter8 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    counter9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.runtime", keyCopy, counter];
    v43 = [(TVPMediaItemLoader *)self _stringValueForKey:counter9 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    counter10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.canonical-id", keyCopy, counter];
    v41 = [(TVPMediaItemLoader *)self _stringValueForKey:counter10 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    counter11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.up-next.is-added", keyCopy, counter];
    v31 = [(TVPMediaItemLoader *)self _stringValueForKey:counter11 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    v42 = v14;
    v40 = v31;
    if (v31 && [v31 length])
    {
      bOOLValue = [v31 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    counter12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.up-next.add-label", keyCopy, counter];
    v39 = [(TVPMediaItemLoader *)self _stringValueForKey:counter12 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    counter13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.%@.%lu.promo.up-next.added-label", keyCopy, counter];
    v37 = [(TVPMediaItemLoader *)self _stringValueForKey:counter13 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

    LOBYTE(v38) = bOOLValue;
    v33 = [[TVPMediaItemPromoInfo alloc] initWithTitleImageURL:v50 originalTitleImageWidth:v49 originalTitleImageHeight:v46 title:v45 genre:v44 ratingDisplayName:v43 ratingSystem:v19 movieRuntime:v18 canonicalId:v41 isAddedToUpNext:v38 addToUpNextLabelString:v39 addedToUpNextLabelString:v37];

    v14 = v42;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_advisoryInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map withTotalCount:(unint64_t)count
{
  metadataCopy = metadata;
  mapCopy = map;
  if (count)
  {
    array = [MEMORY[0x277CBEB18] array];
    v11 = 0;
    do
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.advisory-info.%lu.value", v11];
      v13 = [(TVPMediaItemLoader *)self _stringValueForKey:v12 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.hls.advisory-info.%lu.key", v11];
      v15 = [(TVPMediaItemLoader *)self _stringValueForKey:v14 fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

      if ([v13 length])
      {
        v16 = [[TVPMediaItemAdvisoryInfo alloc] initWithRatingDescription:v13];
        if ([v15 length])
        {
          [(TVPMediaItemAdvisoryInfo *)v16 setRatingName:v15];
        }

        [array addObject:v16];
      }

      ++v11;
    }

    while (count != v11);
  }

  else
  {
    array = 0;
  }

  v17 = [array copy];

  return v17;
}

- (id)_productPlacementInfoFromMetadata:(id)metadata keyIdentifierMap:(id)map
{
  mapCopy = map;
  metadataCopy = metadata;
  v8 = [(TVPMediaItemLoader *)self _stringValueForKey:@"com.apple.hls.product-placement-info.text" fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];
  v9 = [(TVPMediaItemLoader *)self _numberValueForKey:@"com.apple.hls.product-placement-info.duration" fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];
  v10 = [(TVPMediaItemLoader *)self _stringValueForKey:@"com.apple.hls.product-placement-info.image" fromMetadata:metadataCopy andKeyIdentifierMap:mapCopy];

  v11 = [[TVPMediaItemProductPlacementInfo alloc] initWithLocalizedProductPlacementInfoString:v8 duration:v9 andImageURLStringFormat:v10];

  return v11;
}

- (id)_numberValueForKey:(id)key fromMetadata:(id)metadata andKeyIdentifierMap:(id)map
{
  metadataCopy = metadata;
  v8 = [map objectForKeyedSubscript:key];
  if (v8)
  {
    v9 = [MEMORY[0x277CE6520] metadataItemsFromArray:metadataCopy filteredByIdentifier:v8];
    firstObject = [v9 firstObject];

    tvp_numberValue = 0;
    if ([firstObject statusOfValueForKey:@"value" error:0] == 2)
    {
      tvp_numberValue = [firstObject tvp_numberValue];
    }
  }

  else
  {
    tvp_numberValue = 0;
  }

  return tvp_numberValue;
}

- (id)_stringValueForKey:(id)key fromMetadata:(id)metadata andKeyIdentifierMap:(id)map
{
  metadataCopy = metadata;
  v8 = [map objectForKeyedSubscript:key];
  if (v8)
  {
    v9 = [MEMORY[0x277CE6520] metadataItemsFromArray:metadataCopy filteredByIdentifier:v8];
    firstObject = [v9 firstObject];

    stringValue = 0;
    if ([firstObject statusOfValueForKey:@"value" error:0] == 2)
    {
      stringValue = [firstObject stringValue];
    }
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (unint64_t)_rollTypeFromMetadataItemKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"com.apple.hls.pre-roll.count"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"com.apple.hls.mid-roll.count"])
  {
    v4 = 2;
  }

  else if ([keyCopy isEqualToString:@"com.apple.hls.post-roll.count"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_rollKeyNameFromType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279D7DCE0[type - 1];
  }
}

- (id)_skipKeyNameFromType:(unint64_t)type
{
  if (type == 1)
  {
    return @"skip";
  }

  else
  {
    return 0;
  }
}

- (void)_mediaItemPlaybackErrorDidOccur:(id)occur
{
  v22[1] = *MEMORY[0x277D85DE8];
  occurCopy = occur;
  userInfo = [occurCopy userInfo];
  v6 = [userInfo objectForKey:@"TVPMediaItemPlaybackErrorKey"];

  userInfo2 = [occurCopy userInfo];

  v8 = [userInfo2 objectForKey:@"TVPMediaItemPlaybackErrorShouldStopKey"];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEB38]);
    userInfo3 = [v6 userInfo];
    v11 = [v9 initWithDictionary:userInfo3];

    [v11 setObject:v8 forKey:@"TVPMediaItemPlaybackErrorShouldStopKey"];
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    domain = [v6 domain];
    v14 = [v12 initWithDomain:domain code:objc_msgSend(v6 userInfo:{"code"), v11}];

    v6 = v14;
  }

  if (v6)
  {
    v21 = @"error";
    v22[0] = v6;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "Media item playback error did occur: %@", &v19, 0xCu);
  }

  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  [stateMachine postEvent:@"Failure" withContext:0 userInfo:v15];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_mediaItemStopPlayback:(id)playback
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277CCA9B8]);
  v17 = @"TVPMediaItemLoaderSuppressErrorAndStopKey";
  v18[0] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v6 = [v4 initWithDomain:@"TVPlaybackErrorDomain" code:819 userInfo:v5];

  v7 = sMediaItemLoaderLogObject;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    mediaItem = [(TVPMediaItemLoader *)self mediaItem];
    *buf = 138412290;
    v16 = mediaItem;
    _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Media item requested stop: %@", buf, 0xCu);
  }

  stateMachine = [(TVPMediaItemLoader *)self stateMachine];
  v13 = @"error";
  v14 = v6;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [stateMachine postEvent:@"Failure" withContext:0 userInfo:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUp
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(TVPMediaItemLoader *)self cleanedUp])
  {
    diskSpaceMonitorTimer = [(TVPMediaItemLoader *)self diskSpaceMonitorTimer];
    [diskSpaceMonitorTimer invalidate];

    [(TVPMediaItemLoader *)self setDiskSpaceMonitorTimer:0];
    assetLoadContextAccessQueue = [(TVPMediaItemLoader *)self assetLoadContextAccessQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__TVPMediaItemLoader__cleanUp__block_invoke;
    block[3] = &unk_279D7BDC8;
    block[4] = self;
    dispatch_sync(assetLoadContextAccessQueue, block);

    assetInternalAccessQueue = [(TVPMediaItemLoader *)self assetInternalAccessQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __30__TVPMediaItemLoader__cleanUp__block_invoke_2;
    v11[3] = &unk_279D7BDC8;
    v11[4] = self;
    dispatch_sync(assetInternalAccessQueue, v11);

    mediaItem = [(TVPMediaItemLoader *)self mediaItem];
    v7 = [mediaItem hasTrait:@"TVPMediaItemTraitUseTempDownload"];

    if (v7)
    {
      [objc_opt_class() removeTemporaryDownloadDirectory];
    }

    [(TVPMediaItemLoader *)self setTimingData:0];
    mediaItem2 = [(TVPMediaItemLoader *)self mediaItem];
    if (objc_opt_respondsToSelector())
    {
      v9 = sMediaItemLoaderLogObject;
      if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = mediaItem2;
        _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Calling cleanUpMediaItem for media item %@", buf, 0xCu);
      }

      [mediaItem2 cleanUpMediaItem];
    }

    [(TVPMediaItemLoader *)self setCleanedUp:1];
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __30__TVPMediaItemLoader__cleanUp__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assetLoadContext] + 1;
  v3 = *(a1 + 32);

  return [v3 setAssetLoadContext:v2];
}

void __30__TVPMediaItemLoader__cleanUp__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) AVAssetInternal];

  if (v2)
  {
    [*(a1 + 32) setContentKeySession:0];
    v3 = [*(a1 + 32) AVAssetInternal];
    v4 = [v3 resourceLoader];
    [v4 setDelegate:0 queue:0];

    v5 = *(a1 + 32);

    [v5 setAVAssetInternal:0];
  }
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  resourceCopy = resource;
  request = [resourceCopy request];
  v7 = [request URL];
  scheme = [v7 scheme];
  if ([scheme isEqualToString:@"skd"])
  {

LABEL_6:
    mediaItem = [(TVPMediaItemLoader *)self mediaItem];
    v13 = objc_opt_respondsToSelector();
    if (v13)
    {
      v15 = [[TVPSecureKeyRequest alloc] initWithAssetResourceLoadingRequest:resourceCopy];
      mediaItem2 = [(TVPMediaItemLoader *)self mediaItem];
      v17 = [mediaItem2 hasTrait:@"TVPMediaItemTraitIsRental"];

      if (v17)
      {
        mediaItem3 = [(TVPMediaItemLoader *)self mediaItem];
        v19 = [mediaItem3 mediaItemMetadataForProperty:@"TVPMediaItemMetadataRentalID"];

        [(TVPSecureKeyRequest *)v15 setRentalID:v19];
      }

      [mediaItem loadStreamingKeyForRequest:v15];
    }

    goto LABEL_11;
  }

  v9 = MEMORY[0x277CCAD10];
  request2 = [resourceCopy request];
  v11 = [v9 _protocolClassForRequest:request2];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = sMediaItemLoaderLogObject;
  v13 = 0;
  if (os_log_type_enabled(sMediaItemLoaderLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Bypassing loadStreamingKeyForRequest: since a protocol handler exists for this request", v21, 2u);
    v13 = 0;
  }

LABEL_11:

  return v13 & 1;
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_127_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_127_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_135_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_2_135_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__TVPMediaItemLoader__registerStateMachineHandlers__block_invoke_5_211_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_onAssetInternalAccessQueue_updateContentKeySessionWithContentKeyLoader:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_contentKeyRequestParamsFromBase64String:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_contentKeyRequestParamsFromBase64String:(_BYTE *)a1 .cold.2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_contentKeyRequestParamsFromBase64String:(_BYTE *)a1 .cold.3(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_contentKeyRequestParamsFromBase64String:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end