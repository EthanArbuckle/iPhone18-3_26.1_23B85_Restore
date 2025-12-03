@interface ISWrappedMemoriesAppleMusicPlayer
+ (BOOL)isFeatureEnabled;
- (ISWrappedMemoriesAppleMusicPlayer)initWithPlayerItem:(id)item queue:(id)queue;
- (id)appleMusicPlayer;
- (void)_modifyAudioSessionToMixWithOthers;
- (void)_waitForAssetLoadingIfNeccesary;
- (void)dealloc;
- (void)pause;
- (void)playWithCompletionHandler:(id)handler;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)stop;
@end

@implementation ISWrappedMemoriesAppleMusicPlayer

- (void)playWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[ISWrappedMemoriesAppleMusicPlayer isFeatureEnabled])
  {
    [(ISWrappedMemoriesAppleMusicPlayer *)self _modifyAudioSessionToMixWithOthers];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__ISWrappedMemoriesAppleMusicPlayer_playWithCompletionHandler___block_invoke;
    v5[3] = &unk_279A298D8;
    v5[4] = self;
    objc_copyWeak(&v7, &location);
    v6 = handlerCopy;
    [(ISWrappedMemoriesAppleMusicPlayer *)self prepareWithCompletionHandler:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __63__ISWrappedMemoriesAppleMusicPlayer_playWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1 + 32) + 40), a2);
  if (v4)
  {
    v5 = ISGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_error_impl(&dword_25E667000, v5, OS_LOG_TYPE_ERROR, "Apple Music Stopped prepareWithCompletionHandler failed. error=%@", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained appleMusicPlayerQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__ISWrappedMemoriesAppleMusicPlayer_playWithCompletionHandler___block_invoke_13;
    v13[3] = &unk_279A2A3C0;
    v8 = &v14;
    objc_copyWeak(&v14, (a1 + 48));
    v9 = v13;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained appleMusicPlayerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__ISWrappedMemoriesAppleMusicPlayer_playWithCompletionHandler___block_invoke_2;
    block[3] = &unk_279A2A3C0;
    v8 = &v16;
    objc_copyWeak(&v16, (a1 + 48));
    v9 = block;
  }

  dispatch_async(v7, v9);

  objc_destroyWeak(v8);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v4 == 0, v10, v11);

  v12 = *MEMORY[0x277D85DE8];
}

void __63__ISWrappedMemoriesAppleMusicPlayer_playWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained appleMusicPlayer];
  [v1 play];
}

void __63__ISWrappedMemoriesAppleMusicPlayer_playWithCompletionHandler___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained appleMusicPlayer];
  [v1 stop];
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if (+[ISWrappedMemoriesAppleMusicPlayer isFeatureEnabled])
  {
    appleMusicPlayerQueue = [(ISWrappedMemoriesAppleMusicPlayer *)self appleMusicPlayerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ISWrappedMemoriesAppleMusicPlayer_prepareWithCompletionHandler___block_invoke;
    block[3] = &unk_279A2A158;
    objc_copyWeak(&v8, &location);
    v7 = handlerCopy;
    dispatch_async(appleMusicPlayerQueue, block);

    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

void __66__ISWrappedMemoriesAppleMusicPlayer_prepareWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CD5680];
    v9 = 0;
LABEL_6:
    v10 = [v7 errorWithDomain:v8 code:v9 userInfo:0];
    (*(v6 + 16))(v6, v10);

    goto LABEL_7;
  }

  [WeakRetained _waitForAssetLoadingIfNeccesary];
  v4 = [v3 adamID];

  if (!v4)
  {
    v6 = *(a1 + 32);
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CD5680];
    v9 = 4;
    goto LABEL_6;
  }

  v5 = [v3 appleMusicPlayer];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__ISWrappedMemoriesAppleMusicPlayer_prepareWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_279A298B0;
  v12 = *(a1 + 32);
  [v5 prepareToPlayWithCompletionHandler:v11];

LABEL_7:
}

- (void)_waitForAssetLoadingIfNeccesary
{
  if ([(ISWrappedMemoriesAppleMusicPlayer *)self isLoadingAsset])
  {
    isLoadingAssetSemaphore = [(ISWrappedMemoriesAppleMusicPlayer *)self isLoadingAssetSemaphore];

    if (isLoadingAssetSemaphore)
    {
      dsema = [(ISWrappedMemoriesAppleMusicPlayer *)self isLoadingAssetSemaphore];
      v4 = dispatch_time(0, -1);
      dispatch_semaphore_wait(dsema, v4);
    }
  }
}

- (void)_modifyAudioSessionToMixWithOthers
{
  v12 = *MEMORY[0x277D85DE8];
  if (+[ISWrappedMemoriesAppleMusicPlayer isFeatureEnabled])
  {
    v2 = +[ISWrappedAVAudioSession sharedVideoPlaybackInstance];
    category = [v2 category];
    mode = [v2 mode];
    v9 = 0;
    v5 = [v2 setCategory:category mode:mode routeSharingPolicy:0 options:1 error:&v9];
    v6 = v9;
    if ((v5 & 1) == 0)
    {
      v7 = ISGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v6;
        _os_log_error_impl(&dword_25E667000, v7, OS_LOG_TYPE_ERROR, "ISWrappedMemoriesAppleMusicPlayer Failed to set MixWithOthers video playback audio session option. %@", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  if (+[ISWrappedMemoriesAppleMusicPlayer isFeatureEnabled])
  {
    appleMusicPlayerQueue = self->_appleMusicPlayerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__ISWrappedMemoriesAppleMusicPlayer_stop__block_invoke;
    block[3] = &unk_279A2A180;
    block[4] = self;
    dispatch_async(appleMusicPlayerQueue, block);
  }
}

void __41__ISWrappedMemoriesAppleMusicPlayer_stop__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) appleMusicPlayer];
  [v1 stop];
}

- (void)pause
{
  if (+[ISWrappedMemoriesAppleMusicPlayer isFeatureEnabled])
  {
    appleMusicPlayerQueue = self->_appleMusicPlayerQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ISWrappedMemoriesAppleMusicPlayer_pause__block_invoke;
    block[3] = &unk_279A2A180;
    block[4] = self;
    dispatch_async(appleMusicPlayerQueue, block);
  }
}

void __42__ISWrappedMemoriesAppleMusicPlayer_pause__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) appleMusicPlayer];
  [v1 pause];
}

- (id)appleMusicPlayer
{
  if (+[ISWrappedMemoriesAppleMusicPlayer isFeatureEnabled])
  {
    applicationQueuePlayer = [MEMORY[0x277CD5FB8] applicationQueuePlayer];
  }

  else
  {
    applicationQueuePlayer = 0;
  }

  return applicationQueuePlayer;
}

- (void)dealloc
{
  adamID = self->_adamID;
  self->_adamID = 0;

  isLoadingAssetSemaphore = self->_isLoadingAssetSemaphore;
  if (isLoadingAssetSemaphore)
  {
    dispatch_semaphore_signal(isLoadingAssetSemaphore);
  }

  v5.receiver = self;
  v5.super_class = ISWrappedMemoriesAppleMusicPlayer;
  [(ISWrappedMemoriesAppleMusicPlayer *)&v5 dealloc];
}

- (ISWrappedMemoriesAppleMusicPlayer)initWithPlayerItem:(id)item queue:(id)queue
{
  itemCopy = item;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = ISWrappedMemoriesAppleMusicPlayer;
  v8 = [(ISWrappedMemoriesAppleMusicPlayer *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appleMusicPlayerQueue, queue);
    if (itemCopy)
    {
      if (+[ISWrappedMemoriesAppleMusicPlayer isFeatureEnabled])
      {
        asset = [itemCopy asset];
        if (asset)
        {
          v11 = dispatch_semaphore_create(0);
          isLoadingAssetSemaphore = v9->_isLoadingAssetSemaphore;
          v9->_isLoadingAssetSemaphore = v11;

          v9->_isLoadingAsset = 1;
          v13 = *MEMORY[0x277CE5DE0];
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __62__ISWrappedMemoriesAppleMusicPlayer_initWithPlayerItem_queue___block_invoke;
          v15[3] = &unk_279A29888;
          v16 = v9;
          [asset loadMediaSelectionGroupForMediaCharacteristic:v13 completionHandler:v15];
        }
      }
    }
  }

  return v9;
}

void __62__ISWrappedMemoriesAppleMusicPlayer_initWithPlayerItem_queue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v27 = a2;
  v26 = a3;
  v28 = a1;
  objc_initWeak(&location, *(a1 + 32));
  if (v27)
  {
    objc_storeStrong((*(a1 + 32) + 24), a2);
    [v27 options];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    obj = v45 = 0u;
    v6 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (!v6)
    {
      goto LABEL_29;
    }

    v29 = *v45;
    v36 = *MEMORY[0x277CE5FD0];
    v35 = *MEMORY[0x277CE5FD8];
    while (1)
    {
      v7 = 0;
      v30 = v6;
      do
      {
        if (*v45 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v44 + 1) + 8 * v7);
        v8 = [v32 commonMetadata];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v40 objects:v52 count:16];
        v31 = v7;
        if (v10)
        {
          v34 = 0;
          v11 = 0;
          v12 = *v41;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v41 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [*(*(&v40 + 1) + 8 * i) mutableCopy];
              v15 = [v14 key];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v17 = [v14 key];
                v18 = [v14 stringValue];
                if ([v17 isEqualToString:v36])
                {
                  v19 = v18;

                  v11 = v19;
                }

                if ([v17 isEqualToString:v35] && objc_msgSend(v18, "length") && -[NSObject count](obj, "count") >= 2)
                {
                  v20 = v32;

                  v34 = v20;
                }
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v10);

          if (v11)
          {
            v21 = v34;
            if (!v34)
            {
              goto LABEL_27;
            }

            objc_storeStrong((*(v28 + 32) + 16), v11);
            objc_storeStrong((*(v28 + 32) + 32), v34);
            v51 = v11;
            v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
            v23 = *(*(v28 + 32) + 48);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __62__ISWrappedMemoriesAppleMusicPlayer_initWithPlayerItem_queue___block_invoke_2;
            block[3] = &unk_279A2A1A8;
            objc_copyWeak(&v39, &location);
            v38 = v22;
            v24 = v22;
            dispatch_async(v23, block);

            objc_destroyWeak(&v39);
          }

          v21 = v34;
        }

        else
        {

          v11 = 0;
          v21 = 0;
        }

LABEL_27:

        v7 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v6 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (!v6)
      {
LABEL_29:

        goto LABEL_32;
      }
    }
  }

  obj = ISGetLog();
  if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v50 = v26;
    _os_log_error_impl(&dword_25E667000, obj, OS_LOG_TYPE_ERROR, "ISWrappedMemoriesAppleMusicPlayer  loadMediaSelectionGroupForMediaCharacteristic. error=%@", buf, 0xCu);
  }

LABEL_32:

  *(*(v28 + 32) + 8) = 0;
  dispatch_semaphore_signal(*(*(v28 + 32) + 56));
  objc_destroyWeak(&location);

  v25 = *MEMORY[0x277D85DE8];
}

void __62__ISWrappedMemoriesAppleMusicPlayer_initWithPlayerItem_queue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained appleMusicPlayer];
  [v4 setQueueWithStoreIDs:v2];

  v6 = objc_loadWeakRetained((a1 + 40));
  v5 = [v6 appleMusicPlayer];
  [v5 setRepeatMode:1];
}

+ (BOOL)isFeatureEnabled
{
  v2 = +[ISPlayerSettings sharedInstance];
  if ([v2 playAppleMusicWithMemoriesExports])
  {
    v3 = _os_feature_enabled_impl();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end