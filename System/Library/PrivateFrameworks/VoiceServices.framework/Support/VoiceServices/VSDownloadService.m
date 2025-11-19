@interface VSDownloadService
+ (id)downloadQueue;
+ (id)inProgressDownloadVoiceKeys;
+ (void)addInProgressDownloadVoiceKey:(id)a3;
+ (void)removeInProgressDownloadVoiceKey:(id)a3;
+ (void)triggerNeuralCompiling;
- (VSDownloadService)initWithType:(unint64_t)a3;
- (VSDownloadService)initWithType:(unint64_t)a3 assetsManager:(id)a4;
- (void)cancelDownloadForAssets:(id)a3;
- (void)updateTrialVoiceResourceWithLanguage:(id)a3;
- (void)updateVoiceIfNeeded:(id)a3;
- (void)updateVoicesAndVoiceResources;
@end

@implementation VSDownloadService

- (void)cancelDownloadForAssets:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSLock *)self->_updateLock lock];
  v5 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 voiceKey];
        [VSDownloadService removeInProgressDownloadVoiceKey:v12];

        v13 = [(VSDownloadService *)self assetsManager];
        v14 = [v13 preferredDownloadForVoice:v11];

        if (v14)
        {
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = dispatch_semaphore_create(0);
  v16 = [(VSDownloadService *)self assetsManager];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__VSDownloadService_cancelDownloadForAssets___block_invoke;
  v19[3] = &unk_279E4B888;
  v20 = v15;
  v17 = v15;
  [v16 cancelDownloads:v5 completion:v19];

  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  [(NSLock *)self->_updateLock unlock];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateTrialVoiceResourceWithLanguage:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSGetLogEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v4;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_DEFAULT, "Updating VoiceResource for '%{public}@'", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277D799D8]);
  v10 = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [v6 setLanguages:v7];

  v8 = [(VSDownloadService *)self assetsManager];
  [v8 downloadVoiceResource:v6 options:0 completion:0];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateVoiceIfNeeded:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSGetLogEvent();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v45 = v4;
    _os_log_impl(&dword_2727E4000, v5, OS_LOG_TYPE_DEFAULT, "Updating target voice: %@", buf, 0xCu);
  }

  v6 = [(VSDownloadService *)self assetsManager];
  v7 = [v4 languages];
  v8 = [v7 firstObject];
  v9 = [v4 name];
  v10 = [v6 selectVoiceForLang:v8 name:v9 type:objc_msgSend(v4 gender:"type") footprint:{objc_msgSend(v4, "gender"), objc_msgSend(v4, "footprint")}];

  if (v10)
  {
    v11 = [v10 voiceData];
    v40 = [v11 footprint] == 1;
  }

  else
  {
    v40 = 1;
  }

  v12 = [v4 name];
  if (v12)
  {
    v13 = [v4 name];
    v14 = [v10 voiceData];
    v15 = [v14 name];
    v16 = [v13 isEqual:v15] ^ 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(VSDownloadService *)self preferenceInterface];
  v18 = [v17 lastTTSRequestDate];

  if (v18)
  {
    v19 = [MEMORY[0x277CBEAA8] date];
    [v19 timeIntervalSinceDate:v18];
    v21 = v20 < 604800.0;
  }

  else
  {
    v21 = 1;
  }

  v22 = [(VSDownloadService *)self serverConfig];
  v23 = [v22 shouldDelayVoiceUpdate];

  v24 = 0;
  type = self->_type;
  if (type > 1)
  {
    if (type != 2)
    {
      v26 = 0;
      if (type != 3)
      {
        goto LABEL_28;
      }

      v24 = 1;
      goto LABEL_22;
    }

    if (v40)
    {
      v26 = 1;
    }

    else
    {
      v26 = [MEMORY[0x277D799C0] isHomeHub] & v16;
    }

    v24 = [MEMORY[0x277D799C0] isWatch] ^ 1;
  }

  else
  {
    if (type)
    {
      v26 = 0;
      if (type != 1)
      {
        goto LABEL_28;
      }

      if (!v40)
      {
        v24 = 0;
        v26 = v16 | v23 ^ 1;
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if ((v40 | v16))
    {
LABEL_21:
      v24 = 0;
LABEL_22:
      v26 = 1;
      goto LABEL_28;
    }

    v24 = 0;
    v26 = (v23 ^ 1) & v21;
  }

LABEL_28:
  v27 = VSGetLogEvent();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->_type;
    *buf = 67110656;
    *v45 = v26 & 1;
    *&v45[4] = 1024;
    *&v45[6] = v24;
    v46 = 1024;
    v47 = v28;
    v48 = 1024;
    v49 = v40;
    v50 = 1024;
    v51 = v16;
    v52 = 1024;
    v53 = v21;
    v54 = 1024;
    v55 = v23;
    _os_log_impl(&dword_2727E4000, v27, OS_LOG_TYPE_DEFAULT, "Voice update decision: shouldDownload:%d, canUseBattery:%d. Reason: triggerType:%d, compactVoiceSelected:%d, mismatchedVoiceName:%d, activeSiriUser:%d, serverExperimentDelay:%d", buf, 0x2Cu);
  }

  if (v26)
  {
    v29 = [v4 voiceKey];
    [VSDownloadService addInProgressDownloadVoiceKey:v29];
    v30 = [MEMORY[0x277D79950] downloadOptionsWithBattery:v24];
    [v30 setAllowsCellularAccess:0];
    v31 = [(VSDownloadService *)self assetsManager];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __41__VSDownloadService_updateVoiceIfNeeded___block_invoke;
    v41[3] = &unk_279E4B860;
    v42 = v4;
    v43 = v29;
    v32 = v29;
    [v31 downloadVoiceAsset:v42 options:v30 progressUpdateHandler:v41];

    goto LABEL_37;
  }

  v33 = [v10 voiceData];
  if ([v33 type] != 4 || !objc_msgSend(MEMORY[0x277D79958], "isANECompilationPlatform"))
  {
LABEL_36:

    goto LABEL_37;
  }

  v34 = [v10 voiceData];
  if ([v34 isVoiceReadyToUse])
  {

    goto LABEL_36;
  }

  v36 = [MEMORY[0x277D799C0] isWatch];

  if ((v36 & 1) == 0)
  {
    v37 = VSGetLogDefault();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [v10 voiceData];
      v39 = [v38 voiceKey];
      *buf = 138412290;
      *v45 = v39;
      _os_log_impl(&dword_2727E4000, v37, OS_LOG_TYPE_DEFAULT, "Downloaded voice is not ready to use. Start ANE compiling immediately for voice: %@", buf, 0xCu);
    }

    +[VSDownloadService triggerNeuralCompiling];
  }

LABEL_37:

  v35 = *MEMORY[0x277D85DE8];
}

void __41__VSDownloadService_updateVoiceIfNeeded___block_invoke(uint64_t a1, double a2, float a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = VSGetLogDefault();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) descriptiveKey];
    v11 = 134218498;
    v12 = a3;
    v13 = 2048;
    v14 = a2;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_INFO, "Voice asset downloading progress: %.2f, remainingTime: %.2f, voice: %@", &v11, 0x20u);
  }

  if (a3 < 0.0 || a3 >= 1.0)
  {
    [VSDownloadService removeInProgressDownloadVoiceKey:*(a1 + 40)];
  }

  if (a3 >= 1.0 && [*(a1 + 32) type] == 4 && objc_msgSend(MEMORY[0x277D79958], "isANECompilationPlatform") && (objc_msgSend(MEMORY[0x277D799C0], "isWatch") & 1) == 0)
  {
    v8 = VSGetLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 32) voiceKey];
      v9 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_2727E4000, v8, OS_LOG_TYPE_DEFAULT, "Start ANE compiling immediately for voice: %@", &v11, 0xCu);
    }

    +[VSDownloadService triggerNeuralCompiling];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateVoicesAndVoiceResources
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D79998] standardInstance];
  v5 = [v4 disableAssetUpdate];

  if (v5)
  {
    v6 = VSGetLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v6, OS_LOG_TYPE_DEFAULT, "Asset update is disabled in internal settings.", buf, 2u);
    }
  }

  else
  {
    [(NSLock *)self->_updateLock lock];
    v7 = VSGetLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2727E4000, v7, OS_LOG_TYPE_DEFAULT, "Start updating voice and voice resources.", buf, 2u);
    }

    v43 = self;
    v8 = [(VSDownloadService *)self preferenceInterface];
    v9 = [v8 subscribedVoicesForClientID:0 accessoryID:0];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v54 objects:v66 count:16];
    v44 = v10;
    if (v11)
    {
      v12 = v11;
      v13 = *v55;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v55 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v54 + 1) + 8 * i);
          v16 = VSGetLogDefault();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v15 clientID];
            v18 = [v15 accessoryID];
            if (v18)
            {
              v19 = MEMORY[0x277CCACA8];
              v2 = [v15 accessoryID];
              self = [v19 stringWithFormat:@"on accessory %@", v2];
              v20 = self;
            }

            else
            {
              v20 = &stru_2881CBD18;
            }

            v21 = [v15 voice];
            *buf = 138412802;
            v61 = v17;
            v62 = 2112;
            v63 = v20;
            v64 = 2114;
            v65 = v21;
            _os_log_impl(&dword_2727E4000, v16, OS_LOG_TYPE_DEFAULT, "%@ %@ has a subscribed voice: %{public}@", buf, 0x20u);

            if (v18)
            {
            }

            v10 = v44;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v12);
    }

    v22 = [v10 valueForKey:@"voice"];
    v23 = [v22 sortedArrayUsingComparator:&__block_literal_global_40];

    v24 = [(VSDownloadService *)v43 assetsManager];
    [v24 resetCache];

    v25 = [MEMORY[0x277CBEB40] orderedSet];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v23;
    v26 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v51;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v50 + 1) + 8 * j);
          v31 = [v30 languages];
          [v25 addObjectsFromArray:v31];

          v32 = +[VSDownloadService inProgressDownloadVoiceKeys];
          v33 = [v30 voiceKey];
          v34 = [v32 containsObject:v33];

          if (v34)
          {
            v35 = VSGetLogDefault();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v30 descriptiveKey];
              *buf = 138412290;
              v61 = v36;
              _os_log_impl(&dword_2727E4000, v35, OS_LOG_TYPE_DEFAULT, "Voice download is in progress, skip new download. %@", buf, 0xCu);
            }
          }

          else
          {
            [(VSDownloadService *)v43 updateVoiceIfNeeded:v30];
          }
        }

        v27 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v27);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v25;
    v38 = [v37 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v47;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v47 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [(VSDownloadService *)v43 updateTrialVoiceResourceWithLanguage:*(*(&v46 + 1) + 8 * k)];
        }

        v39 = [v37 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v39);
    }

    [(NSLock *)v43->_updateLock unlock];
    v6 = v44;
  }

  v42 = *MEMORY[0x277D85DE8];
}

uint64_t __50__VSDownloadService_updateVoicesAndVoiceResources__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if ([a2 type])
  {
    v5 = [v4 type] == 0;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (VSDownloadService)initWithType:(unint64_t)a3 assetsManager:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = VSDownloadService;
  v8 = [(VSDownloadService *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    updateLock = v9->_updateLock;
    v9->_updateLock = v10;

    objc_storeStrong(&v9->_assetsManager, a4);
    v12 = +[VSSiriServerConfiguration defaultConfig];
    serverConfig = v9->_serverConfig;
    v9->_serverConfig = v12;

    v14 = [MEMORY[0x277D79978] defaultInstance];
    preferenceInterface = v9->_preferenceInterface;
    v9->_preferenceInterface = v14;
  }

  return v9;
}

- (VSDownloadService)initWithType:(unint64_t)a3
{
  v5 = [MEMORY[0x277D79950] sharedManager];
  v6 = [(VSDownloadService *)self initWithType:a3 assetsManager:v5];

  return v6;
}

+ (void)triggerNeuralCompiling
{
  if ([MEMORY[0x277D79930] useSiriTTSService])
  {
    v2 = "com.apple.sirittsd.neuralCompiling";
    v3 = &__block_literal_global_55;
  }

  else
  {
    v2 = "com.apple.voiced.neural-compiling";
    v3 = &__block_literal_global_59;
  }

  MEMORY[0x2822053C8](v2, v3);
}

void __43__VSDownloadService_triggerNeuralCompiling__block_invoke_57(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Triggered 'com.apple.voiced.neural-compiling' with error %d", v5, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __43__VSDownloadService_triggerNeuralCompiling__block_invoke(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = VSGetLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5[0] = 67109120;
      v5[1] = a2;
      _os_log_error_impl(&dword_2727E4000, v3, OS_LOG_TYPE_ERROR, "Triggered 'com.apple.sirittsd.neuralCompiling' with error %d", v5, 8u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)removeInProgressDownloadVoiceKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&__inProgressDownloadVoiceKeysLock);
  v5 = [a1 inProgressDownloadVoiceKeys];
  [v5 removeObject:v4];

  pthread_mutex_unlock(&__inProgressDownloadVoiceKeysLock);
}

+ (void)addInProgressDownloadVoiceKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&__inProgressDownloadVoiceKeysLock);
  v5 = [a1 inProgressDownloadVoiceKeys];
  [v5 addObject:v4];

  pthread_mutex_unlock(&__inProgressDownloadVoiceKeysLock);
}

+ (id)inProgressDownloadVoiceKeys
{
  if (inProgressDownloadVoiceKeys_onceToken != -1)
  {
    dispatch_once(&inProgressDownloadVoiceKeys_onceToken, &__block_literal_global_25);
  }

  v3 = inProgressDownloadVoiceKeys___inProgressDownloads;

  return v3;
}

uint64_t __48__VSDownloadService_inProgressDownloadVoiceKeys__block_invoke()
{
  inProgressDownloadVoiceKeys___inProgressDownloads = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

+ (id)downloadQueue
{
  if (downloadQueue_onceToken != -1)
  {
    dispatch_once(&downloadQueue_onceToken, &__block_literal_global_2013);
  }

  v3 = downloadQueue_downloadQueue;

  return v3;
}

void __34__VSDownloadService_downloadQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.voiced.downloadQueue", v2);
  v1 = downloadQueue_downloadQueue;
  downloadQueue_downloadQueue = v0;
}

@end