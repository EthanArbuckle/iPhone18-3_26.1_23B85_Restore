@interface TVPDownload
+ (void)initialize;
- (BOOL)_anyDelegateRespondsToProcessFinishedDownload;
- (TVPDownload)initWithMediaItem:(id)item downloadSession:(id)session existingDownloadTask:(id)task;
- (TVPDownloadSession)downloadSession;
- (double)progress;
- (id)_legibleInterstitialDownloadCriteriaForSubtitleLanguages:(id)languages includeSDH:(BOOL)h;
- (id)_variantQualifiersForCurrentSettingsUsingMultichannelAudio:(BOOL)audio;
- (id)descriptionForState:(int64_t)state;
- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadToURL:(id)l;
- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadVariants:(id)variants;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_addMediaSelectionOptionsIfNotAlreadyAdded:(id)added toMediaSelections:(id)selections forMediaSelectionGroup:(id)group baseMediaSelection:(id)selection;
- (void)_downloadProgressDidChange;
- (void)_mediaItemLoaderStateDidChangeTo:(id)to;
- (void)_processFinishedDownloadWithCompletion:(id)completion;
- (void)_registerStateMachineHandlers;
- (void)addDelegate:(id)delegate;
- (void)cancel;
- (void)dealloc;
- (void)failWithError:(id)error;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeDelegate:(id)delegate;
- (void)start;
@end

@implementation TVPDownload

+ (void)initialize
{
  if (initialize_onceToken_3 != -1)
  {
    +[TVPDownload initialize];
  }
}

uint64_t __25__TVPDownload_initialize__block_invoke()
{
  sLogObject_2 = os_log_create("com.apple.AppleTV.playback", "TVPDownload");

  return MEMORY[0x2821F96F8]();
}

- (TVPDownload)initWithMediaItem:(id)item downloadSession:(id)session existingDownloadTask:(id)task
{
  v33 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  sessionCopy = session;
  taskCopy = task;
  v30.receiver = self;
  v30.super_class = TVPDownload;
  v12 = [(TVPDownload *)&v30 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_mediaItem, item);
    objc_storeWeak(&v13->_downloadSession, sessionCopy);
    v13->_state = 0;
    objc_storeStrong(&v13->_downloadTask, task);
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    delegates = v13->_delegates;
    v13->_delegates = weakObjectsPointerArray;

    v16 = *MEMORY[0x277D767B0];
    v13->_downloadInitiationBackgroundTask = *MEMORY[0x277D767B0];
    v13->_downloadTerminationBackgroundTask = v16;
    *&v13->_includeDefaultAudioOption = 16843009;
    downloadTask = v13->_downloadTask;
    if (downloadTask)
    {
      [sessionCopy registerDownloadTask:downloadTask forDownload:v13];
      [(AVAssetDownloadTask *)v13->_downloadTask addObserver:v13 forKeyPath:@"progress.fractionCompleted" options:0 context:__DownloadTaskProgressKVOContext];
      v13->_addedProgressObserver = 1;
    }

    v18 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      state = v13->_state;
      v20 = v18;
      v21 = [(TVPDownload *)v13 descriptionForState:state];
      *buf = 138412290;
      v32 = v21;
      _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "Setting state to %@", buf, 0xCu);
    }

    v22 = objc_alloc(MEMORY[0x277CCAB68]);
    v23 = objc_opt_class();
    v24 = initWithMediaItem_downloadSession_existingDownloadTask__instanceNumber++;
    v25 = [v22 initWithFormat:@"%@ %ld", v23, v24];
    v26 = [[TVPStateMachine alloc] initWithName:v25 initialState:@"Not started" mode:0];
    stateMachine = v13->_stateMachine;
    v13->_stateMachine = v26;

    [(TVPStateMachine *)v13->_stateMachine setLogObject:sLogObject_2];
    [(TVPDownload *)v13 _registerStateMachineHandlers];
    [(TVPStateMachine *)v13->_stateMachine setShouldAcceptEvents:1];
  }

  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)dealloc
{
  if (self->_addedProgressObserver)
  {
    downloadTask = self->_downloadTask;
    if (downloadTask)
    {
      [(AVAssetDownloadTask *)downloadTask removeObserver:self forKeyPath:@"progress.fractionCompleted" context:__DownloadTaskProgressKVOContext];
    }
  }

  v4.receiver = self;
  v4.super_class = TVPDownload;
  [(TVPDownload *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (__TVPMediaItemLoaderStateKVOContext == context)
  {
    v14 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    [(TVPDownload *)self _mediaItemLoaderStateDidChangeTo:v14];
  }

  else if (__DownloadTaskProgressKVOContext == context)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__TVPDownload_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v16[3] = &unk_279D7BDC8;
    v16[4] = self;
    TVPPerformBlockOnMainThreadIfNeeded(v16);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = TVPDownload;
    [(TVPDownload *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)addDelegate:(id)delegate
{
  if (delegate)
  {
    delegateCopy = delegate;
    delegates = [(TVPDownload *)self delegates];
    [delegates addPointer:delegateCopy];
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    delegates = [(TVPDownload *)self delegates];
    v5 = [delegates count];

    if (v5)
    {
      v6 = 0;
      while (1)
      {
        delegates2 = [(TVPDownload *)self delegates];
        v8 = [delegates2 pointerAtIndex:v6];

        if (v8 == delegateCopy)
        {
          break;
        }

        ++v6;
        delegates3 = [(TVPDownload *)self delegates];
        v10 = [delegates3 count];

        if (v6 >= v10)
        {
          goto LABEL_8;
        }
      }

      delegates4 = [(TVPDownload *)self delegates];
      [delegates4 removePointerAtIndex:v6];
    }
  }

LABEL_8:
}

- (double)progress
{
  stateMachine = [(TVPDownload *)self stateMachine];
  currentState = [stateMachine currentState];
  v5 = [currentState isEqualToString:@"Downloading"];

  if (v5)
  {
    downloadTask = [(TVPDownload *)self downloadTask];
    progress = [downloadTask progress];
    [progress fractionCompleted];
    v9 = v8;

    return v9;
  }

  stateMachine2 = [(TVPDownload *)self stateMachine];
  currentState2 = [stateMachine2 currentState];
  v13 = [currentState2 isEqualToString:@"Terminating"];

  if (v13)
  {

    [(TVPDownload *)self lastDownloadProgressFractionCompleted];
  }

  else
  {
    stateMachine3 = [(TVPDownload *)self stateMachine];
    currentState3 = [stateMachine3 currentState];
    if ([currentState3 isEqualToString:@"Download complete"])
    {
    }

    else
    {
      stateMachine4 = [(TVPDownload *)self stateMachine];
      currentState4 = [stateMachine4 currentState];
      v18 = [currentState4 isEqualToString:@"Processing finished download"];

      result = 0.0;
      if (!v18)
      {
        return result;
      }
    }

    return 1.0;
  }

  return result;
}

- (void)start
{
  startError = [(TVPDownload *)self startError];

  if (startError)
  {
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      [TVPDownload start];
    }

    stateMachine = [(TVPDownload *)self stateMachine];
    startError2 = [(TVPDownload *)self startError];
    [stateMachine postEvent:@"Error did occur" withContext:startError2];
  }

  else
  {
    stateMachine2 = [(TVPDownload *)self stateMachine];
    [stateMachine2 postEvent:@"Start"];
  }
}

- (void)cancel
{
  stateMachine = [(TVPDownload *)self stateMachine];
  [stateMachine postEvent:@"Cancel"];
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  stateMachine = [(TVPDownload *)self stateMachine];
  [stateMachine postEvent:@"Error did occur" withContext:errorCopy];
}

- (id)descriptionForState:(int64_t)state
{
  if (state > 6)
  {
    return 0;
  }

  else
  {
    return off_279D7C040[state];
  }
}

- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadToURL:(id)l
{
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  taskCopy = task;
  lCopy = l;
  v11 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    mediaItem = [(TVPDownload *)self mediaItem];
    v23 = 138412802;
    v24 = taskCopy;
    v25 = 2112;
    v26 = mediaItem;
    v27 = 2112;
    v28 = lCopy;
    _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Task [%@] for media item [%@] will download to [%@]", &v23, 0x20u);
  }

  delegates = [(TVPDownload *)self delegates];
  v15 = [delegates count];

  if (v15)
  {
    v16 = 0;
    do
    {
      delegates2 = [(TVPDownload *)self delegates];
      v18 = [delegates2 pointerAtIndex:v16];

      if (v18)
      {
        v19 = v18;
        if (objc_opt_respondsToSelector())
        {
          [v19 download:self willDownloadToURL:lCopy];
        }
      }

      ++v16;
      delegates3 = [(TVPDownload *)self delegates];
      v21 = [delegates3 count];
    }

    while (v16 < v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session assetDownloadTask:(id)task willDownloadVariants:(id)variants
{
  taskCopy = task;
  variantsCopy = variants;
  v9 = dispatch_queue_create("com.apple.tv AVAssetVariant logging queue", 0);
  v10 = [taskCopy description];
  mediaItem = [(TVPDownload *)self mediaItem];
  v12 = [mediaItem description];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__TVPDownload_URLSession_assetDownloadTask_willDownloadVariants___block_invoke;
  block[3] = &unk_279D7BDF0;
  v13 = v10;
  v25 = v13;
  v14 = v12;
  v26 = v14;
  v15 = variantsCopy;
  v27 = v15;
  dispatch_async(v9, block);
  delegates = [(TVPDownload *)self delegates];
  v17 = [delegates count];

  if (v17)
  {
    v18 = 0;
    do
    {
      delegates2 = [(TVPDownload *)self delegates];
      v20 = [delegates2 pointerAtIndex:v18];

      if (v20)
      {
        v21 = v20;
        if (objc_opt_respondsToSelector())
        {
          [v21 download:self willDownloadVariants:v15];
        }
      }

      ++v18;
      delegates3 = [(TVPDownload *)self delegates];
      v23 = [delegates3 count];
    }

    while (v18 < v23);
  }
}

void __65__TVPDownload_URLSession_assetDownloadTask_willDownloadVariants___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Download task [%@] for media item [%@] will download variants %@", &v7, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  downloadTerminationBackgroundTask = [(TVPDownload *)self downloadTerminationBackgroundTask];
  if (downloadTerminationBackgroundTask == *MEMORY[0x277D767B0])
  {
    v10 = downloadTerminationBackgroundTask;
    v11 = MEMORY[0x277CCACA8];
    stateMachine = [(TVPDownload *)self stateMachine];
    name = [stateMachine name];
    v14 = [v11 stringWithFormat:@"Download termination [%@]", name];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __52__TVPDownload_URLSession_task_didCompleteWithError___block_invoke;
    v23[3] = &unk_279D7BDC8;
    v23[4] = self;
    v16 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:v14 expirationHandler:v23];

    v17 = sLogObject_2;
    if (v16 == v10)
    {
      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
      {
        [TVPDownload URLSession:task:didCompleteWithError:];
      }
    }

    else if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v25 = v16;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "Beginning download termination background task with identifier %lu, name: %@", buf, 0x16u);
    }

    [(TVPDownload *)self setDownloadTerminationBackgroundTask:v16];
  }

  else if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
  {
    [TVPDownload URLSession:task:didCompleteWithError:];
  }

  v18 = sLogObject_2;
  if (errorCopy)
  {
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      mediaItem = [(TVPDownload *)self mediaItem];
      *buf = 138412802;
      v25 = taskCopy;
      v26 = 2112;
      v27 = mediaItem;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_error_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_ERROR, "Task [%@] for media item [%@] did complete with error: %@", buf, 0x20u);
LABEL_15:
    }
  }

  else if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    mediaItem = [(TVPDownload *)self mediaItem];
    *buf = 138412546;
    v25 = taskCopy;
    v26 = 2112;
    v27 = mediaItem;
    _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "Task [%@] for media item [%@] did complete download task successfully", buf, 0x16u);
    goto LABEL_15;
  }

  stateMachine2 = [(TVPDownload *)self stateMachine];
  [stateMachine2 postEvent:@"Download task did complete" withContext:errorCopy];

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __52__TVPDownload_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) downloadTerminationBackgroundTask];
  v3 = *MEMORY[0x277D767B0];
  if (result != *MEMORY[0x277D767B0])
  {
    v4 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      __52__TVPDownload_URLSession_task_didCompleteWithError___block_invoke_cold_1(v1, v4);
    }

    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 endBackgroundTask:{objc_msgSend(*v1, "downloadTerminationBackgroundTask")}];

    return [*v1 setDownloadTerminationBackgroundTask:v3];
  }

  return result;
}

- (void)_downloadProgressDidChange
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  downloadTask = [a2 downloadTask];
  progress = [downloadTask progress];
  [progress fractionCompleted];
  v8 = 134217984;
  v9 = v6 * 100.0;
  _os_log_debug_impl(&dword_26CEDD000, selfCopy, OS_LOG_TYPE_DEBUG, "Download progress did change to %.2f%%", &v8, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_mediaItemLoaderStateDidChangeTo:(id)to
{
  toCopy = to;
  if ([toCopy isEqualToString:0x287E4F0D8])
  {
    stateMachine = [(TVPDownload *)self stateMachine];
    [stateMachine postEvent:@"AVAsset keys did load"];
  }

  else
  {
    if (![toCopy isEqualToString:0x287E4AA38])
    {
      goto LABEL_6;
    }

    stateMachine = [(TVPDownload *)self stateMachine];
    mediaItemLoader = [(TVPDownload *)self mediaItemLoader];
    error = [mediaItemLoader error];
    [stateMachine postEvent:@"Error did occur" withContext:error];
  }

LABEL_6:
}

- (void)_addMediaSelectionOptionsIfNotAlreadyAdded:(id)added toMediaSelections:(id)selections forMediaSelectionGroup:(id)group baseMediaSelection:(id)selection
{
  v38 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  selectionsCopy = selections;
  groupCopy = group;
  selectionCopy = selection;
  obj = addedCopy;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [addedCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v26 = *v33;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * v13);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v15 = selectionsCopy;
        v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v29;
LABEL_8:
          v19 = 0;
          while (1)
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [*(*(&v28 + 1) + 8 * v19) selectedMediaOptionInMediaSelectionGroup:groupCopy];
            v21 = [v14 isEqual:v20];

            if (v21)
            {
              break;
            }

            if (v17 == ++v19)
            {
              v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v17)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:

          v22 = [selectionCopy mutableCopy];
          [v22 selectMediaOption:v14 inMediaSelectionGroup:groupCopy];
          [v15 addObject:v22];
          v15 = v22;
        }

        ++v13;
      }

      while (v13 != v12);
      v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_variantQualifiersForCurrentSettingsUsingMultichannelAudio:(BOOL)audio
{
  audioCopy = audio;
  v75[2] = *MEMORY[0x277D85DE8];
  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (audioCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x277CE6458] predicateForChannelCount:2 operatorType:v5];
  maximumPresentationWidth = [(TVPDownload *)self maximumPresentationWidth];

  if (maximumPresentationWidth)
  {
    v8 = MEMORY[0x277CE6458];
    maximumPresentationWidth2 = [(TVPDownload *)self maximumPresentationWidth];
    [maximumPresentationWidth2 doubleValue];
    v10 = [v8 predicateForPresentationWidth:0 operatorType:?];

    v11 = MEMORY[0x277CCA920];
    v75[0] = v6;
    v75[1] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
    v13 = [v11 andPredicateWithSubpredicates:v12];

    v6 = v13;
  }

  if (![(TVPDownload *)self preferMostCompatibleRendition])
  {
    v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"videoAttributes.videoRange == %@", *MEMORY[0x277CE63A0]];
    v15 = MEMORY[0x277CCA920];
    v74[0] = v14;
    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ IN videoAttributes.codecTypes", &unk_287E596C0];
    v74[1] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
    v18 = [v15 andPredicateWithSubpredicates:v17];

    v19 = MEMORY[0x277CCA920];
    v73[0] = v6;
    v73[1] = v18;
    v63 = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    v21 = [v19 andPredicateWithSubpredicates:v20];

    v22 = MEMORY[0x277CCA920];
    v72[0] = v6;
    v72[1] = v14;
    v64 = v14;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
    v24 = [v22 andPredicateWithSubpredicates:v23];

    maximumAverageBitrateForHDR = [(TVPDownload *)self maximumAverageBitrateForHDR];

    if (maximumAverageBitrateForHDR)
    {
      v26 = MEMORY[0x277CCAC30];
      maximumAverageBitrateForHDR2 = [(TVPDownload *)self maximumAverageBitrateForHDR];
      v28 = [v26 predicateWithFormat:@"averageBitRate < %@", maximumAverageBitrateForHDR2];

      v29 = MEMORY[0x277CCA920];
      v71[0] = v21;
      v71[1] = v28;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
      v31 = [v29 andPredicateWithSubpredicates:v30];

      v32 = MEMORY[0x277CCA920];
      v70[0] = v24;
      v70[1] = v28;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
      v34 = [v32 andPredicateWithSubpredicates:v33];

      v24 = v34;
      v21 = v31;
    }

    v35 = [MEMORY[0x277CE6458] assetVariantQualifierWithPredicate:v21];
    [v65 addObject:v35];

    v36 = [MEMORY[0x277CE6458] assetVariantQualifierWithPredicate:v24];
    [v65 addObject:v36];

    v37 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ IN videoAttributes.codecTypes", &unk_287E596D8];
    v38 = MEMORY[0x277CCA920];
    v69[0] = v6;
    v69[1] = v37;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
    v40 = [v38 andPredicateWithSubpredicates:v39];

    maximumAverageBitrateForSDRHEVC = [(TVPDownload *)self maximumAverageBitrateForSDRHEVC];

    if (maximumAverageBitrateForSDRHEVC)
    {
      v42 = MEMORY[0x277CCAC30];
      maximumAverageBitrateForSDRHEVC2 = [(TVPDownload *)self maximumAverageBitrateForSDRHEVC];
      v44 = [v42 predicateWithFormat:@"averageBitRate < %@", maximumAverageBitrateForSDRHEVC2];

      v45 = MEMORY[0x277CCA920];
      v68[0] = v40;
      v68[1] = v44;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
      v47 = [v45 andPredicateWithSubpredicates:v46];

      v40 = v47;
    }

    v48 = [MEMORY[0x277CE6458] assetVariantQualifierWithPredicate:v40];
    [v65 addObject:v48];
  }

  v49 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ IN videoAttributes.codecTypes", &unk_287E596F0];
  v50 = MEMORY[0x277CCA920];
  v67[0] = v6;
  v67[1] = v49;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v52 = [v50 andPredicateWithSubpredicates:v51];

  maximumAverageBitrateForAVC = [(TVPDownload *)self maximumAverageBitrateForAVC];

  if (maximumAverageBitrateForAVC)
  {
    v54 = MEMORY[0x277CCAC30];
    maximumAverageBitrateForAVC2 = [(TVPDownload *)self maximumAverageBitrateForAVC];
    v56 = [v54 predicateWithFormat:@"averageBitRate < %@", maximumAverageBitrateForAVC2];

    v57 = MEMORY[0x277CCA920];
    v66[0] = v52;
    v66[1] = v56;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:2];
    v59 = [v57 andPredicateWithSubpredicates:v58];

    v52 = v59;
  }

  v60 = [MEMORY[0x277CE6458] assetVariantQualifierWithPredicate:v52];
  [v65 addObject:v60];

  v61 = *MEMORY[0x277D85DE8];

  return v65;
}

- (BOOL)_anyDelegateRespondsToProcessFinishedDownload
{
  delegates = [(TVPDownload *)self delegates];
  v4 = [delegates count];

  v5 = 0;
  if (v4)
  {
    v6 = 0;
    do
    {
      delegates2 = [(TVPDownload *)self delegates];
      v8 = [delegates2 pointerAtIndex:v6];

      if (v8)
      {
        v5 |= objc_opt_respondsToSelector();
      }

      ++v6;
      delegates3 = [(TVPDownload *)self delegates];
      v10 = [delegates3 count];
    }

    while (v6 < v10);
  }

  return v5 & 1;
}

- (void)_processFinishedDownloadWithCompletion:(id)completion
{
  completionCopy = completion;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = 0;
  v4 = dispatch_group_create();
  for (i = 0; ; ++i)
  {
    delegates = [(TVPDownload *)self delegates];
    v7 = [delegates count];

    if (i >= v7)
    {
      break;
    }

    delegates2 = [(TVPDownload *)self delegates];
    v9 = [delegates2 pointerAtIndex:i];

    if (v9)
    {
      v10 = v9;
      if (objc_opt_respondsToSelector())
      {
        dispatch_group_enter(v4);
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __54__TVPDownload__processFinishedDownloadWithCompletion___block_invoke;
        v16[3] = &unk_279D7BE18;
        v18 = v19;
        v17 = v4;
        [v10 download:self processFinishedDownloadWithCompletion:v16];
      }
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TVPDownload__processFinishedDownloadWithCompletion___block_invoke_2;
  block[3] = &unk_279D7BE40;
  v14 = completionCopy;
  v15 = v19;
  v11 = completionCopy;
  dispatch_group_notify(v4, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v19, 8);
}

void __54__TVPDownload__processFinishedDownloadWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

uint64_t __54__TVPDownload__processFinishedDownloadWithCompletion___block_invoke_2(uint64_t result)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    v2 = *(*(*(result + 40) + 8) + 40);
    v3 = sLogObject_2;
    v4 = os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (v4)
      {
        v5 = *(*(*(v1 + 40) + 8) + 40);
        v10 = 138412290;
        v11 = v5;
        v6 = "Processed finished download with error %@";
        v7 = v3;
        v8 = 12;
LABEL_7:
        _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, v6, &v10, v8);
      }
    }

    else if (v4)
    {
      LOWORD(v10) = 0;
      v6 = "Processed finished download successfully";
      v7 = v3;
      v8 = 2;
      goto LABEL_7;
    }

    result = (*(*(v1 + 32) + 16))(*(v1 + 32), *(*(*(v1 + 40) + 8) + 40));
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_legibleInterstitialDownloadCriteriaForSubtitleLanguages:(id)languages includeSDH:(BOOL)h
{
  hCopy = h;
  v46[1] = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc(MEMORY[0x277CE65E8]);
  v8 = *MEMORY[0x277CE5E28];
  v46[0] = *MEMORY[0x277CE5E28];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
  v10 = [v7 initWithPremiumMediaCharacteristics:v9 preferredLanguages:0 preferredMediaCharacteristics:0];

  v33 = v10;
  [v6 addObject:v10];
  v11 = MEMORY[0x277CE5E00];
  v12 = MEMORY[0x277CE5E38];
  if (hCopy)
  {
    v13 = objc_alloc(MEMORY[0x277CE65E8]);
    v14 = *v11;
    v45[0] = v8;
    v45[1] = v14;
    v45[2] = *v12;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
    v16 = [v13 initWithPremiumMediaCharacteristics:v15 preferredLanguages:0 preferredMediaCharacteristics:0];

    [v6 addObject:v16];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = languagesCopy;
  v17 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  v18 = 0x277CE6000uLL;
  if (v17)
  {
    v19 = v17;
    v20 = *v38;
    v21 = *v12;
    v34 = *v12;
    v35 = *v11;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v38 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        v24 = objc_alloc(*(v18 + 1512));
        v43 = v23;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
        v26 = [v24 initWithPreferredLanguages:v25 preferredMediaCharacteristics:0];

        [v6 addObject:v26];
        if (hCopy)
        {
          v27 = objc_alloc(*(v18 + 1512));
          v42 = v23;
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
          v41[0] = v35;
          v41[1] = v34;
          v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
          v30 = [v27 initWithPreferredLanguages:v28 preferredMediaCharacteristics:v29];

          v18 = 0x277CE6000;
          [v6 addObject:v30];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v19);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_registerStateMachineHandlers
{
  v42[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  stateMachine = [(TVPDownload *)self stateMachine];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke;
  v36[3] = &unk_279D7BE90;
  objc_copyWeak(&v37, &location);
  v4 = MEMORY[0x26D6B0400](v36);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2;
  v33[3] = &unk_279D7BEE0;
  objc_copyWeak(&v35, &location);
  v5 = v4;
  v34 = v5;
  v6 = MEMORY[0x26D6B0400](v33);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_123;
  v30[3] = &unk_279D7BF58;
  objc_copyWeak(&v32, &location);
  v15 = v5;
  v31 = v15;
  [stateMachine registerHandlerForEvent:@"Start" onState:@"Not started" withBlock:v30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_139;
  v28[3] = &unk_279D7BFD0;
  objc_copyWeak(&v29, &location);
  [stateMachine registerHandlerForEvent:@"AVAsset keys did load" onState:@"Waiting for AVAsset keys to load" withBlock:v28];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_195;
  v26[3] = &unk_279D7BFD0;
  objc_copyWeak(&v27, &location);
  [stateMachine registerHandlerForEvent:@"Key fetch attempt complete" onState:@"Fetching playback keys" withBlock:v26];
  v42[0] = @"Waiting for AVAsset keys to load";
  v42[1] = @"Fetching playback keys";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  [stateMachine registerHandlerForEvent:@"Download task did complete" onStates:v7 withBlock:&__block_literal_global_225];

  v41[0] = @"Not started";
  v41[1] = @"Downloading";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_227;
  v23[3] = &unk_279D7BF58;
  objc_copyWeak(&v25, &location);
  v9 = v6;
  v24 = v9;
  [stateMachine registerHandlerForEvent:@"Download task did complete" onStates:v8 withBlock:v23];

  [stateMachine registerHandlerForEvent:@"Download task did complete" onState:@"Terminating" withBlock:&__block_literal_global_231];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_233;
  v21[3] = &unk_279D7C020;
  v10 = v9;
  v22 = v10;
  [stateMachine registerHandlerForEvent:@"Did process finished download" onState:@"Processing finished download" withBlock:v21];
  v40[0] = @"Cancel";
  v40[1] = @"Error did occur";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v39[0] = @"Not started";
  v39[1] = @"Waiting for AVAsset keys to load";
  v39[2] = @"Fetching playback keys";
  v39[3] = @"Downloading";
  v39[4] = @"Processing finished download";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:5];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_4_235;
  v19[3] = &unk_279D7BFD0;
  objc_copyWeak(&v20, &location);
  [stateMachine registerHandlerForEvents:v11 onStates:v12 withBlock:v19];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_238;
  v16[3] = &unk_279D7BF58;
  objc_copyWeak(&v18, &location);
  v13 = v10;
  v17 = v13;
  [stateMachine registerHandlerForEvent:@"Termination delay did finish" onState:@"Terminating" withBlock:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&v29);

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [WeakRetained descriptionForState:a2];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Setting state to %@", buf, 0xCu);
  }

  [WeakRetained setState:a2];
  v7 = [WeakRetained stateMachine];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_115;
  v9[3] = &unk_279D7BE68;
  v9[4] = WeakRetained;
  v9[5] = a2;
  [v7 executeBlockAfterCurrentStateTransition:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke_115(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  v3 = [v2 count];

  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = [*(a1 + 32) delegates];
      v6 = [v5 pointerAtIndex:v4];

      if (v6)
      {
        v7 = v6;
        if (objc_opt_respondsToSelector())
        {
          [v7 download:*(a1 + 32) didChangeStateTo:*(a1 + 40)];
        }
      }

      ++v4;
      v8 = [*(a1 + 32) delegates];
      v9 = [v8 count];
    }

    while (v4 < v9);
  }
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2 != 5)
  {
    v6 = a2 == 4;
    v7 = 0;
    goto LABEL_8;
  }

  v8 = [WeakRetained error];
  v9 = [v8 domain];
  if ([v9 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v10 = [v5 error];
    v11 = [v10 code];

    if (v11 == -999)
    {
      v7 = 0;
      v6 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v5 error];
  v6 = 2;
LABEL_8:
  v12 = [v5 reportingSession];

  if (!v12)
  {
    v13 = [TVPReportingSession alloc];
    v14 = [v5 mediaItem];
    v15 = [(TVPReportingSession *)v13 initWithMediaItem:v14];
    [v5 setReportingSession:v15];
  }

  v16 = [v5 reportingSession];
  [v16 reportDownloadFinishedWithResult:v6 error:v7];

  if ([v5 addedProgressObserver])
  {
    v17 = [v5 downloadTask];
    [v17 removeObserver:v5 forKeyPath:@"progress.fractionCompleted" context:__DownloadTaskProgressKVOContext];

    [v5 setAddedProgressObserver:0];
  }

  [v5 setDownloadTask:0];
  [v5 setLastDownloadProgressFractionCompleted:0.0];
  if ([v5 addedMediaItemLoaderStateObserver])
  {
    v18 = [v5 mediaItemLoader];
    [v18 removeObserver:v5 forKeyPath:@"state" context:__TVPMediaItemLoaderStateKVOContext];

    [v5 setAddedMediaItemLoaderStateObserver:0];
  }

  v19 = [v5 mediaItemLoader];
  [v19 cleanupIfNecessary];

  [v5 setMediaItemLoader:0];
  v20 = [v5 downloadSession];
  [v20 unregisterDownloadTaskForDownload:v5];

  [v5 setStorageSettingsImageData:0];
  v21 = [v5 stateMachine];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_3;
  v22[3] = &unk_279D7BEB8;
  v23 = *(a1 + 32);
  v24 = a2;
  v22[4] = v5;
  [v21 executeBlockAfterCurrentStateTransition:v22];
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke_3(void *a1)
{
  v2 = a1[6];
  (*(a1[5] + 16))();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_4;
  block[3] = &unk_279D7BDC8;
  block[4] = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __44__TVPDownload__registerStateMachineHandlers__block_invoke_4(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) downloadInitiationBackgroundTask];
  v3 = *MEMORY[0x277D767B0];
  if (v2 != *MEMORY[0x277D767B0])
  {
    v4 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v15 = 134217984;
      v16 = [v5 downloadInitiationBackgroundTask];
      _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "Ending download initiation background task with identifier %lu", &v15, 0xCu);
    }

    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 endBackgroundTask:{objc_msgSend(*(a1 + 32), "downloadInitiationBackgroundTask")}];

    [*(a1 + 32) setDownloadInitiationBackgroundTask:v3];
  }

  result = [*(a1 + 32) downloadTerminationBackgroundTask];
  if (result != v3)
  {
    v9 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v10 downloadTerminationBackgroundTask];
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Ending download termination background task with identifier %lu", &v15, 0xCu);
    }

    v13 = [MEMORY[0x277D75128] sharedApplication];
    [v13 endBackgroundTask:{objc_msgSend(*(a1 + 32), "downloadTerminationBackgroundTask")}];

    result = [*(a1 + 32) setDownloadTerminationBackgroundTask:v3];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

__CFString *__44__TVPDownload__registerStateMachineHandlers__block_invoke_123(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained downloadTask];

  if (v5)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_136;
    v37[3] = &unk_279D7BF30;
    v38 = *(a1 + 32);
    [v3 executeBlockAfterCurrentStateTransition:v37];
    v6 = [WeakRetained downloadTask];
    v7 = [v6 state];

    if (v7 == 1)
    {
      v8 = sLogObject_2;
      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Download task already exists but is suspended.  Resuming", buf, 2u);
      }

      v9 = [WeakRetained downloadTask];
      [v9 resume];
    }

    else
    {
      v19 = [WeakRetained downloadTask];
      v20 = [v19 state];

      if (v20 == 3)
      {
        v21 = sLogObject_2;
        if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "Calling URLSession:task:didCompleteWithError: since download task is already completed", buf, 2u);
        }

        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_137;
        v36[3] = &unk_279D7BDC8;
        v36[4] = WeakRetained;
        [v3 executeBlockAfterCurrentStateTransition:v36];
      }
    }

    v22 = @"Downloading";
    v23 = v38;
  }

  else
  {
    v10 = [WeakRetained downloadInitiationBackgroundTask];
    if (v10 == *MEMORY[0x277D767B0])
    {
      v11 = v10;
      v12 = MEMORY[0x277CCACA8];
      v13 = [WeakRetained stateMachine];
      v14 = [v13 name];
      v15 = [v12 stringWithFormat:@"Download initiation [%@]", v14];

      v16 = [MEMORY[0x277D75128] sharedApplication];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_127;
      v47[3] = &unk_279D7BDC8;
      v47[4] = WeakRetained;
      v17 = [v16 beginBackgroundTaskWithName:v15 expirationHandler:v47];

      v18 = sLogObject_2;
      if (v17 == v11)
      {
        if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
        {
          __44__TVPDownload__registerStateMachineHandlers__block_invoke_123_cold_2();
        }
      }

      else if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v49 = v17;
        v50 = 2112;
        v51 = v15;
        _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Beginning download initiation background task with identifier %lu, name: %@", buf, 0x16u);
      }

      [WeakRetained setDownloadInitiationBackgroundTask:v17];
    }

    else if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      __44__TVPDownload__registerStateMachineHandlers__block_invoke_123_cold_1();
    }

    v24 = [TVPReportingSession alloc];
    v25 = [WeakRetained mediaItem];
    v26 = [(TVPReportingSession *)v24 initWithMediaItem:v25];
    [WeakRetained setReportingSession:v26];

    v27 = [WeakRetained mediaItem];
    v23 = [TVPMediaItemLoader loaderForMediaItem:v27];

    if (v23)
    {
      v28 = [WeakRetained downloadTask];
      v29 = [v28 URLAsset];
      [v23 setExistingAVAsset:v29];

      [v23 setAllowsCellularUsage:{objc_msgSend(WeakRetained, "allowCellularUsage")}];
      [WeakRetained setMediaItemLoader:v23];
      [v23 addObserver:WeakRetained forKeyPath:@"state" options:1 context:__TVPMediaItemLoaderStateKVOContext];
      [WeakRetained setAddedMediaItemLoaderStateObserver:1];
      if ([WeakRetained performKeyFetchOnly])
      {
        v30 = 6;
      }

      else
      {
        v30 = 1;
      }

      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_129;
      v44[3] = &unk_279D7BF08;
      v45 = *(a1 + 32);
      v46 = v30;
      [v3 executeBlockAfterCurrentStateTransition:v44];
      [v23 loadIfNecessary];
      v31 = [v23 state];
      if (([v31 isEqualToString:0x287E4F0D8] & 1) != 0 || (objc_msgSend(v31, "isEqualToString:", 0x287E4F0F8) & 1) != 0 || objc_msgSend(v31, "isEqualToString:", 0x287E4F118))
      {
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_130;
        v42[3] = &unk_279D7BDC8;
        v43 = v3;
        [v43 executeBlockAfterCurrentStateTransition:v42];
      }

      v32 = v45;
    }

    else
    {
      if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
      {
        __44__TVPDownload__registerStateMachineHandlers__block_invoke_123_cold_3();
      }

      v33 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TVPlaybackErrorDomain" code:802 userInfo:0];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_135;
      v39[3] = &unk_279D7BC20;
      v40 = v3;
      v41 = v33;
      v32 = v33;
      [v40 executeBlockAfterCurrentStateTransition:v39];
    }

    v22 = @"Waiting for AVAsset keys to load";
  }

  v34 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_127(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(a1 + 32) downloadInitiationBackgroundTask];
  v3 = *MEMORY[0x277D767B0];
  if (result != *MEMORY[0x277D767B0])
  {
    v4 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_127_cold_1(v1, v4);
    }

    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 endBackgroundTask:{objc_msgSend(*v1, "downloadInitiationBackgroundTask")}];

    return [*v1 setDownloadInitiationBackgroundTask:v3];
  }

  return result;
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke_137(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = [v2 downloadSession];
  v3 = [v7 downloadSession];
  v4 = [*(a1 + 32) downloadTask];
  v5 = [*(a1 + 32) downloadTask];
  v6 = [v5 error];
  [v2 URLSession:v3 task:v4 didCompleteWithError:v6];
}

__CFString *__44__TVPDownload__registerStateMachineHandlers__block_invoke_2_139(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v35 = a3;
  v34 = a4;
  v33 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained mediaItemLoader];
  v12 = [v11 AVAsset];

  v13 = [v12 tvp_maximumVideoRange];
  v14 = [v12 tvp_maximumVideoResolution];
  v15 = [WeakRetained delegates];
  v16 = [v15 count];

  if (v16)
  {
    v17 = 0;
    do
    {
      v18 = [WeakRetained delegates];
      v19 = [v18 pointerAtIndex:v17];

      if (v19)
      {
        v20 = v19;
        if (objc_opt_respondsToSelector())
        {
          [v20 download:WeakRetained didDetermineMaximumResolution:v14 maximumVideoRange:v13];
        }
      }

      ++v17;
      v21 = [WeakRetained delegates];
      v22 = [v21 count];
    }

    while (v17 < v22);
  }

  v23 = [WeakRetained mediaItem];
  v24 = [v23 mediaItemMetadataForProperty:@"TVPMediaItemMetadataContentKeyRequestParams"];

  v25 = [WeakRetained mediaItemLoader];
  v26 = [v25 contentKeySession];

  if ([v24 count] && (objc_msgSend(WeakRetained, "mediaItem"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "conformsToProtocol:", &unk_287E7B4E8), v27, v28))
  {
    v29 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v29, OS_LOG_TYPE_DEFAULT, "Key params are available, will attempt to prefetch playback keys prior to starting download task", buf, 2u);
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_192;
    v38[3] = &unk_279D7BFA8;
    v39 = v26;
    v40 = v24;
    objc_copyWeak(&v41, (a1 + 32));
    [v9 executeBlockAfterCurrentStateTransition:v38];
    v30 = &v39;
    objc_destroyWeak(&v41);
  }

  else
  {
    v31 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v31, OS_LOG_TYPE_DEFAULT, "No key params are available, will not prefetch playback keys prior to starting download task", buf, 2u);
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_194;
    v36[3] = &unk_279D7BDC8;
    v30 = &v37;
    v37 = v9;
    [v37 executeBlockAfterCurrentStateTransition:v36];
  }

  return @"Fetching playback keys";
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke_192(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_193;
  v3[3] = &unk_279D7BF80;
  objc_copyWeak(&v4, (a1 + 48));
  [v1 fetchOfflineKeysForParams:v2 completion:v3];
  objc_destroyWeak(&v4);
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_193(uint64_t a1)
{
  v2 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Finished key prefetch attempt", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateMachine];
  [v4 postEvent:@"Key fetch attempt complete"];
}

__CFString *__44__TVPDownload__registerStateMachineHandlers__block_invoke_2_195(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v342[2] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v258 = WeakRetained;
  if ([WeakRetained performKeyFetchOnly])
  {
    v14 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Skipping actual download since performKeyFetchOnly is YES", buf, 2u);
    }

    v317[0] = MEMORY[0x277D85DD0];
    v317[1] = 3221225472;
    v317[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_196;
    v317[3] = &unk_279D7BDC8;
    v318 = v9;
    [v318 executeBlockAfterCurrentStateTransition:v317];
    v15 = v318;
    v16 = WeakRetained;
    goto LABEL_234;
  }

  v249 = v12;
  v245 = v10;
  v17 = [WeakRetained mediaItemLoader];
  v18 = [v17 AVAsset];

  v238 = *MEMORY[0x277CE5DE0];
  v19 = [v18 tvp_mediaSelectionGroupForMediaCharacteristic:?];
  v239 = *MEMORY[0x277CE5E30];
  v20 = [v18 tvp_mediaSelectionGroupForMediaCharacteristic:?];
  v264 = v19;
  v21 = [v19 options];
  v22 = MEMORY[0x277CE6510];
  v23 = *MEMORY[0x277CE5E28];
  v265 = *MEMORY[0x277CE5E20];
  v342[0] = *MEMORY[0x277CE5E20];
  v342[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v342 count:2];
  v247 = v21;
  v246 = [v22 mediaSelectionOptionsFromArray:v21 withMediaCharacteristics:v24];

  v248 = v18;
  v257 = [v18 preferredMediaSelection];
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = [WeakRetained preferredAudioLanguageCodes];
  v250 = [v26 mutableCopy];

  v27 = MAAudibleMediaCopyPreferredCharacteristics();
  v240 = [(__CFArray *)v27 containsObject:*MEMORY[0x277CD5600]];
  v251 = 1;
  v28 = MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(kMACaptionAppearanceDomainUser);
  if (([(__CFArray *)v28 containsObject:*MEMORY[0x277CD55F8]]& 1) == 0)
  {
    v251 = [(__CFArray *)v28 containsObject:*MEMORY[0x277CD5608]];
  }

  v243 = v28;
  v256 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v29 = [v258 mediaItemLoader];
  v30 = [v29 containsStreamingAVAsset];

  v241 = v11;
  v242 = v9;
  v254 = v20;
  v259 = v25;
  v244 = v27;
  if (!v30)
  {
    v44 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v44, OS_LOG_TYPE_DEFAULT, "Will download all media selections since download is CRABS", buf, 2u);
    }

    v45 = MEMORY[0x277CBEBF8];
    v10 = v245;
    v12 = v249;
    goto LABEL_188;
  }

  v31 = 0x277CBE000uLL;
  if (!v257)
  {
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
    {
      __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_195_cold_1();
    }

    v46 = MEMORY[0x277CBEBF8];
    goto LABEL_178;
  }

  v32 = v258;
  v33 = v250;
  if ([v258 includeDefaultAudioOption])
  {
    v34 = sLogObject_2;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v34, OS_LOG_TYPE_DEFAULT, "Including default audio option due to user preference", buf, 2u);
    }

    [v25 addObject:v257];
    v32 = v258;
  }

  if ([v32 includeOriginalAudio])
  {
    v35 = sLogObject_2;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v35, OS_LOG_TYPE_DEFAULT, "Including original audio due to user preference", buf, 2u);
    }

    v36 = MEMORY[0x277CE6510];
    v341 = *MEMORY[0x277CE5E08];
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v341 count:1];
    v38 = [v36 mediaSelectionOptionsFromArray:v246 withoutMediaCharacteristics:v37];

    v32 = v258;
    [v258 _addMediaSelectionOptionsIfNotAlreadyAdded:v38 toMediaSelections:v25 forMediaSelectionGroup:v264 baseMediaSelection:v257];
  }

  if ([v32 includeDeviceLanguageAudio])
  {
    v39 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v40 = [v39 firstObject];

    if (v40)
    {
      if (!v250)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v41 = [v33 containsObject:v40];
      v42 = sLogObject_2;
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (v41)
      {
        if (v43)
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v42, OS_LOG_TYPE_DEFAULT, "Device language already exists in preferred audio language codes", buf, 2u);
        }
      }

      else
      {
        if (v43)
        {
          *buf = 138412290;
          v340 = v40;
          _os_log_impl(&dword_26CEDD000, v42, OS_LOG_TYPE_DEFAULT, "Adding device language to preferred audio language codes: %@", buf, 0xCu);
        }

        [v33 insertObject:v40 atIndex:0];
      }
    }
  }

  v47 = sLogObject_2;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v340 = v33;
    _os_log_impl(&dword_26CEDD000, v47, OS_LOG_TYPE_DEFAULT, "Preferred audio language codes: %@", buf, 0xCu);
  }

  v250 = v33;
  if ([v33 count])
  {
    v48 = MEMORY[0x277CE6510];
    v338 = v265;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v338 count:1];
    v50 = [v48 mediaSelectionOptionsFromArray:v247 withMediaCharacteristics:v49];

    v315 = 0u;
    v316 = 0u;
    v313 = 0u;
    v314 = 0u;
    v51 = v33;
    v52 = [v51 countByEnumeratingWithState:&v313 objects:v337 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v314;
      v55 = *MEMORY[0x277CE5E08];
      do
      {
        for (i = 0; i != v53; ++i)
        {
          if (*v314 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v57 = MEMORY[0x277CE6510];
          v336 = *(*(&v313 + 1) + 8 * i);
          v58 = [*(v31 + 2656) arrayWithObjects:&v336 count:1];
          v59 = [v57 mediaSelectionOptionsFromArray:v50 filteredAndSortedAccordingToPreferredLanguages:v58];

          v60 = MEMORY[0x277CE6510];
          v335 = v55;
          v61 = [*(v31 + 2656) arrayWithObjects:&v335 count:1];
          v62 = [v60 mediaSelectionOptionsFromArray:v59 withoutMediaCharacteristics:v61];

          v63 = [v62 firstObject];
          v64 = v63;
          if (v63)
          {
            v334 = v63;
            v65 = [*(v31 + 2656) arrayWithObjects:&v334 count:1];
            [v258 _addMediaSelectionOptionsIfNotAlreadyAdded:v65 toMediaSelections:v259 forMediaSelectionGroup:v264 baseMediaSelection:v257];

            v31 = 0x277CBE000;
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v313 objects:v337 count:16];
      }

      while (v53);
    }

    v20 = v254;
    v25 = v259;
  }

  if (![v25 count])
  {
    v66 = sLogObject_2;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v66, OS_LOG_TYPE_DEFAULT, "Including default audio option since none of user's preferred audio languages could be found", buf, 2u);
    }

    [v25 addObject:v257];
  }

  if (v240)
  {
    v67 = sLogObject_2;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v67, OS_LOG_TYPE_DEFAULT, "Audio descriptions accessibility pref is enabled", buf, 2u);
    }

    v68 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v309 = 0u;
    v310 = 0u;
    v311 = 0u;
    v312 = 0u;
    v69 = v25;
    v70 = [v69 countByEnumeratingWithState:&v309 objects:v333 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v310;
      do
      {
        for (j = 0; j != v71; ++j)
        {
          if (*v310 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = [*(*(&v309 + 1) + 8 * j) selectedMediaOptionInMediaSelectionGroup:v264];
          v75 = [v74 extendedLanguageTag];

          if (v75)
          {
            [v68 addObject:v75];
          }
        }

        v71 = [v69 countByEnumeratingWithState:&v309 objects:v333 count:16];
      }

      while (v71);
    }

    v76 = MEMORY[0x277CE6510];
    v332 = v265;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:&v332 count:1];
    v78 = [v76 mediaSelectionOptionsFromArray:v247 withMediaCharacteristics:v77];

    v79 = MEMORY[0x277CE6510];
    v80 = [v68 allObjects];
    v266 = v78;
    v81 = [v79 mediaSelectionOptionsFromArray:v78 filteredAndSortedAccordingToPreferredLanguages:v80];

    v82 = MEMORY[0x277CE6510];
    v331 = *MEMORY[0x277CE5E08];
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v331 count:1];
    v84 = [v82 mediaSelectionOptionsFromArray:v81 withMediaCharacteristics:v83];

    v307 = 0u;
    v308 = 0u;
    v305 = 0u;
    v306 = 0u;
    v85 = v84;
    v86 = [v85 countByEnumeratingWithState:&v305 objects:v330 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v306;
      do
      {
        for (k = 0; k != v87; ++k)
        {
          if (*v306 != v88)
          {
            objc_enumerationMutation(v85);
          }

          v90 = *(*(&v305 + 1) + 8 * k);
          v91 = [v69 firstObject];
          v92 = [v91 mutableCopy];

          [v92 selectMediaOption:v90 inMediaSelectionGroup:v264];
          [v69 addObject:v92];
        }

        v87 = [v85 countByEnumeratingWithState:&v305 objects:v330 count:16];
      }

      while (v87);
    }

    v20 = v254;
    v25 = v259;
    v31 = 0x277CBE000uLL;
  }

  v93 = [v20 options];
  v237 = v93;
  if ([v258 includesAllSubtitles])
  {
    v94 = sLogObject_2;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v94, OS_LOG_TYPE_DEFAULT, "Including all subtitles", buf, 2u);
    }

    v95 = v93;
    goto LABEL_170;
  }

  v262 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v96 = MEMORY[0x277CE6510];
  v329 = *MEMORY[0x277CE5DF8];
  v97 = [*(v31 + 2656) arrayWithObjects:&v329 count:1];
  v236 = [v96 mediaSelectionOptionsFromArray:v93 withoutMediaCharacteristics:v97];

  v303 = 0u;
  v304 = 0u;
  v301 = 0u;
  v302 = 0u;
  v98 = v93;
  v99 = [v98 countByEnumeratingWithState:&v301 objects:v328 count:16];
  if (v99)
  {
    v100 = v99;
    v101 = *v302;
    v102 = *MEMORY[0x277CE5E58];
    do
    {
      for (m = 0; m != v100; ++m)
      {
        if (*v302 != v101)
        {
          objc_enumerationMutation(v98);
        }

        v104 = *(*(&v301 + 1) + 8 * m);
        v105 = [v104 mediaType];
        v106 = [v105 isEqualToString:v102];

        if (v106)
        {
          [v262 addObject:v104];
        }
      }

      v100 = [v98 countByEnumeratingWithState:&v301 objects:v328 count:16];
    }

    while (v100);
  }

  v299 = 0u;
  v300 = 0u;
  v297 = 0u;
  v298 = 0u;
  v25 = v259;
  v107 = v259;
  v108 = [v107 countByEnumeratingWithState:&v297 objects:v327 count:16];
  if (v108)
  {
    v109 = v108;
    v110 = *v298;
    do
    {
      for (n = 0; n != v109; ++n)
      {
        if (*v298 != v110)
        {
          objc_enumerationMutation(v107);
        }

        v112 = [*(*(&v297 + 1) + 8 * n) selectedMediaOptionInMediaSelectionGroup:v264];
        v113 = [v112 associatedMediaSelectionOptionInMediaSelectionGroup:v20];
        if (v113)
        {
          [v262 addObject:v113];
        }

        v114 = [v112 extendedLanguageTag];
        if (v114)
        {
          [v256 addObject:v114];
        }
      }

      v109 = [v107 countByEnumeratingWithState:&v297 objects:v327 count:16];
    }

    while (v109);
  }

  if ([v250 count])
  {
    [v256 addObjectsFromArray:v250];
  }

  v115 = sLogObject_2;
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v340 = v256;
    _os_log_impl(&dword_26CEDD000, v115, OS_LOG_TYPE_DEFAULT, "Will look for subtitles that match preferred audio languages and audio languages being downloaded: %@", buf, 0xCu);
  }

  v116 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v293 = 0u;
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v117 = v246;
  v118 = [v117 countByEnumeratingWithState:&v293 objects:v326 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v294;
    do
    {
      for (ii = 0; ii != v119; ++ii)
      {
        if (*v294 != v120)
        {
          objc_enumerationMutation(v117);
        }

        v122 = [*(*(&v293 + 1) + 8 * ii) extendedLanguageTag];
        if (v122)
        {
          [v116 addObject:v122];
        }
      }

      v119 = [v117 countByEnumeratingWithState:&v293 objects:v326 count:16];
    }

    while (v119);
  }

  v123 = sLogObject_2;
  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v340 = v116;
    _os_log_impl(&dword_26CEDD000, v123, OS_LOG_TYPE_DEFAULT, "Will look for subtitles that match original audio language: %@", buf, 0xCu);
  }

  v124 = [v116 allObjects];
  [v256 addObjectsFromArray:v124];

  v125 = [MEMORY[0x277CBEAF8] preferredLanguages];
  if (v125)
  {
    v126 = sLogObject_2;
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v340 = v125;
      _os_log_impl(&dword_26CEDD000, v126, OS_LOG_TYPE_DEFAULT, "Will look for subtitles that match device languages: %@", buf, 0xCu);
    }

    [v256 addObjectsFromArray:v125];
  }

  v127 = [v258 preferredSubtitleLanguageCodes];

  if (v127)
  {
    v128 = sLogObject_2;
    if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
    {
      v129 = [v258 preferredSubtitleLanguageCodes];
      *buf = 138412290;
      v340 = v129;
      _os_log_impl(&dword_26CEDD000, v128, OS_LOG_TYPE_DEFAULT, "Will look for subtitles that match user's preferred subtitle languages: %@", buf, 0xCu);
    }

    v130 = [v258 preferredSubtitleLanguageCodes];
    [v256 addObjectsFromArray:v130];
  }

  if ([v256 containsObject:@"yue"])
  {
    [v256 addObject:@"yue-Hant"];
  }

  v235 = v116;
  v131 = sLogObject_2;
  if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v340 = v256;
    _os_log_impl(&dword_26CEDD000, v131, OS_LOG_TYPE_DEFAULT, "Final list of preferred subtitle languages: %@", buf, 0xCu);
  }

  v234 = v125;

  v132 = MEMORY[0x277CE6510];
  v133 = [v256 allObjects];
  v134 = [v132 mediaSelectionOptionsFromArray:v236 filteredAndSortedAccordingToPreferredLanguages:v133];

  v135 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v136 = sLogObject_2;
  if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
  {
    v137 = @"NO";
    if (v251)
    {
      v137 = @"YES";
    }

    *buf = 138412290;
    v340 = v137;
    _os_log_impl(&dword_26CEDD000, v136, OS_LOG_TYPE_DEFAULT, "Will prefer SDH subtitles: %@", buf, 0xCu);
  }

  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  v138 = v134;
  v260 = [v138 countByEnumeratingWithState:&v289 objects:v325 count:16];
  if (v260)
  {
    v139 = *v290;
    v140 = *MEMORY[0x277CE5E90];
    v252 = v138;
    v253 = v135;
    v255 = *v290;
    do
    {
      for (jj = 0; jj != v260; ++jj)
      {
        if (*v290 != v139)
        {
          objc_enumerationMutation(v138);
        }

        v142 = *(*(&v289 + 1) + 8 * jj);
        v143 = [v142 extendedLanguageTag];
        if (!v143)
        {
          goto LABEL_167;
        }

        v267 = v143;
        v144 = [v135 containsObject:v143];
        v143 = v267;
        if (v144)
        {
          goto LABEL_167;
        }

        v145 = [v142 mediaType];
        v146 = [v145 isEqualToString:v140];

        v143 = v267;
        v139 = v255;
        if (!v146)
        {
          goto LABEL_167;
        }

        v287 = 0u;
        v288 = 0u;
        v285 = 0u;
        v286 = 0u;
        v147 = v138;
        v148 = [v147 countByEnumeratingWithState:&v285 objects:v324 count:16];
        if (!v148)
        {
LABEL_147:

LABEL_163:
          [v262 addObject:v142];
          v135 = v253;
          v20 = v254;
          v25 = v259;
          v139 = v255;
          goto LABEL_166;
        }

        v149 = v148;
        v150 = *v286;
LABEL_137:
        v151 = 0;
        while (1)
        {
          if (*v286 != v150)
          {
            objc_enumerationMutation(v147);
          }

          v152 = *(*(&v285 + 1) + 8 * v151);
          if (v152 == v142)
          {
            goto LABEL_145;
          }

          v153 = [*(*(&v285 + 1) + 8 * v151) mediaType];
          v154 = [v153 isEqualToString:v140];

          if (!v154)
          {
            goto LABEL_145;
          }

          v155 = [v152 extendedLanguageTag];
          v156 = v155;
          if (v155)
          {
            if ([v155 isEqualToString:v267])
            {
              break;
            }
          }

LABEL_145:
          if (v149 == ++v151)
          {
            v149 = [v147 countByEnumeratingWithState:&v285 objects:v324 count:16];
            if (v149)
            {
              goto LABEL_137;
            }

            goto LABEL_147;
          }
        }

        v157 = v152;

        if (!v157)
        {
          goto LABEL_163;
        }

        v135 = v253;
        v20 = v254;
        v25 = v259;
        v139 = v255;
        if ([v142 tvp_isSDHSubtitle] && (objc_msgSend(v157, "tvp_isSDHSubtitle") & 1) != 0 || (objc_msgSend(v142, "tvp_isSDHSubtitle") & 1) == 0 && (objc_msgSend(v157, "tvp_isSDHSubtitle") & 1) == 0)
        {
          [v262 addObject:v142];
          [v262 addObject:v157];
        }

        else
        {
          if ([v142 tvp_isSDHSubtitle])
          {
            v158 = v142;
          }

          else
          {
            v158 = v157;
          }

          v159 = v158;
          if ([v142 tvp_isSDHSubtitle])
          {
            v160 = v157;
          }

          else
          {
            v160 = v142;
          }

          v161 = v160;
          v162 = v161;
          if (v251)
          {
            v163 = v159;
          }

          else
          {
            v163 = v161;
          }

          [v262 addObject:v163];
        }

LABEL_166:
        [v135 addObject:v267];
        v143 = v267;
        v138 = v252;
LABEL_167:
      }

      v260 = [v138 countByEnumeratingWithState:&v289 objects:v325 count:16];
    }

    while (v260);
  }

  v95 = [v262 allObjects];

LABEL_170:
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v164 = v95;
  v165 = [v164 countByEnumeratingWithState:&v281 objects:v323 count:16];
  if (v165)
  {
    v166 = v165;
    v167 = *v282;
    do
    {
      for (kk = 0; kk != v166; ++kk)
      {
        if (*v282 != v167)
        {
          objc_enumerationMutation(v164);
        }

        v169 = *(*(&v281 + 1) + 8 * kk);
        v170 = [v25 firstObject];
        v171 = [v170 mutableCopy];

        [v171 selectMediaOption:v169 inMediaSelectionGroup:v20];
        [v25 addObject:v171];
      }

      v166 = [v164 countByEnumeratingWithState:&v281 objects:v323 count:16];
    }

    while (v166);
  }

  v46 = v25;
LABEL_178:
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v45 = v46;
  v172 = [v45 countByEnumeratingWithState:&v277 objects:v322 count:16];
  if (v172)
  {
    v173 = v172;
    v174 = *v278;
    do
    {
      for (mm = 0; mm != v173; ++mm)
      {
        if (*v278 != v174)
        {
          objc_enumerationMutation(v45);
        }

        v176 = *(*(&v277 + 1) + 8 * mm);
        v177 = sLogObject_2;
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          v178 = [v176 tvp_description];
          *buf = 138412290;
          v340 = v178;
          _os_log_impl(&dword_26CEDD000, v177, OS_LOG_TYPE_DEFAULT, "Will download media selection: %@", buf, 0xCu);
        }
      }

      v173 = [v45 countByEnumeratingWithState:&v277 objects:v322 count:16];
    }

    while (v173);
  }

  v11 = v241;
  v9 = v242;
  v10 = v245;
  v12 = v249;
LABEL_188:
  v179 = [v258 downloadTask];

  if (v179)
  {
    v180 = sLogObject_2;
    v181 = v259;
    if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
    {
      __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_195_cold_2();
    }

    v182 = v258;
  }

  else
  {
    v183 = [v258 mediaItem];
    v184 = [v183 mediaItemMetadataForProperty:@"TVPMediaItemMetadataTitle"];

    v261 = v184;
    v185 = [MEMORY[0x277CE63E0] downloadConfigurationWithAsset:v248 title:v184];
    v186 = [v258 storageSettingsImageData];
    [v185 setArtworkData:v186];

    v182 = v258;
    v263 = v185;
    if (_os_feature_enabled_impl())
    {
      v187 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v188 = [v187 BOOLForKey:@"DisableInterstitials"];

      if ((v188 & 1) == 0)
      {
        [v185 setDownloadsInterstitialAssets:1];
        v189 = [v258 _audibleInterstitialDownloadCriteriaForPreferredAudioLanguages:v250 includeOriginalAudio:objc_msgSend(v258 audioDescriptionsEnabled:{"includeOriginalAudio"), v240}];
        v190 = sLogObject_2;
        if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v190, OS_LOG_TYPE_DEFAULT, "Setting audible interstitial media selection criteria to:", buf, 2u);
        }

        v275 = 0u;
        v276 = 0u;
        v273 = 0u;
        v274 = 0u;
        v191 = v189;
        v192 = [v191 countByEnumeratingWithState:&v273 objects:v321 count:16];
        if (v192)
        {
          v193 = v192;
          v194 = *v274;
          do
          {
            for (nn = 0; nn != v193; ++nn)
            {
              if (*v274 != v194)
              {
                objc_enumerationMutation(v191);
              }

              v196 = *(*(&v273 + 1) + 8 * nn);
              v197 = sLogObject_2;
              if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v340 = v196;
                _os_log_impl(&dword_26CEDD000, v197, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }
            }

            v193 = [v191 countByEnumeratingWithState:&v273 objects:v321 count:16];
          }

          while (v193);
        }

        if (v191)
        {
          [v263 setInterstitialMediaSelectionCriteria:v191 forMediaCharacteristic:v238];
        }

        v198 = [v256 allObjects];
        v199 = [v258 _legibleInterstitialDownloadCriteriaForSubtitleLanguages:v198 includeSDH:v251];

        v200 = sLogObject_2;
        if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v200, OS_LOG_TYPE_DEFAULT, "Setting legible interstitial media selection criteria to:", buf, 2u);
        }

        v271 = 0u;
        v272 = 0u;
        v269 = 0u;
        v270 = 0u;
        v201 = v199;
        v202 = [v201 countByEnumeratingWithState:&v269 objects:v320 count:16];
        if (v202)
        {
          v203 = v202;
          v204 = *v270;
          do
          {
            for (i1 = 0; i1 != v203; ++i1)
            {
              if (*v270 != v204)
              {
                objc_enumerationMutation(v201);
              }

              v206 = *(*(&v269 + 1) + 8 * i1);
              v207 = sLogObject_2;
              if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v340 = v206;
                _os_log_impl(&dword_26CEDD000, v207, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }
            }

            v203 = [v201 countByEnumeratingWithState:&v269 objects:v320 count:16];
          }

          while (v203);
        }

        v185 = v263;
        if (v201)
        {
          [v263 setInterstitialMediaSelectionCriteria:v201 forMediaCharacteristic:v239];
        }

        v10 = v245;
        v182 = v258;
        v20 = v254;
      }
    }

    v208 = [v182 mediaItemLoader];
    v209 = [v208 containsStreamingAVAsset];

    if (v209)
    {
      v210 = [v182 _variantQualifiersForCurrentSettingsUsingMultichannelAudio:0];
      v211 = [v185 primaryContentConfiguration];
      [v211 setMediaSelections:v45];

      v212 = [v185 primaryContentConfiguration];
      [v212 setVariantQualifiers:v210];

      v213 = [v182 _variantQualifiersForCurrentSettingsUsingMultichannelAudio:1];
      v214 = objc_alloc_init(MEMORY[0x277CE63E8]);
      [v214 setMediaSelections:v45];
      [v214 setVariantQualifiers:v213];
      v319 = v214;
      v215 = [MEMORY[0x277CBEA60] arrayWithObjects:&v319 count:1];
      [v185 setAuxiliaryContentConfigurations:v215];
    }

    v216 = [v182 downloadSession];
    v217 = [v216 assetDownloadTaskWithConfiguration:v185];

    [v182 setStorageSettingsImageData:0];
    v218 = sLogObject_2;
    if (os_log_type_enabled(v218, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v340 = v217;
      _os_log_impl(&dword_26CEDD000, v218, OS_LOG_TYPE_DEFAULT, "Created download task %@", buf, 0xCu);
    }

    v219 = [v182 downloadSession];
    [v219 registerDownloadTask:v217 forDownload:v182];

    [v182 setDownloadTask:v217];
    [v217 addObserver:v182 forKeyPath:@"progress.fractionCompleted" options:0 context:__DownloadTaskProgressKVOContext];
    [v182 setAddedProgressObserver:1];
    v220 = [v182 delegates];
    v221 = [v220 count];

    if (v221)
    {
      v222 = 0;
      do
      {
        v223 = [v182 delegates];
        v224 = [v223 pointerAtIndex:v222];

        if (v224)
        {
          v225 = v224;
          if (objc_opt_respondsToSelector())
          {
            v226 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v217, "taskIdentifier")}];
            [v225 download:v182 didReceiveTaskIdentifier:v226];
          }
        }

        ++v222;
        v227 = [v182 delegates];
        v228 = [v227 count];
      }

      while (v222 < v228);
    }

    v11 = v241;
    v9 = v242;
    v12 = v249;
    v181 = v259;
    v180 = v261;
  }

  [v182 downloadTask];
  v229 = v16 = v182;
  [v229 resume];

  v230 = MEMORY[0x277D85CD0];
  v231 = MEMORY[0x277D85CD0];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_222;
  block[3] = &unk_279D7BDC8;
  block[4] = v16;
  dispatch_async(v230, block);

  v15 = v248;
LABEL_234:

  v232 = *MEMORY[0x277D85DE8];
  return @"Downloading";
}

uint64_t __44__TVPDownload__registerStateMachineHandlers__block_invoke_222(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) downloadInitiationBackgroundTask];
  v3 = *MEMORY[0x277D767B0];
  if (result != *MEMORY[0x277D767B0])
  {
    v4 = sLogObject_2;
    if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v9 = 134217984;
      v10 = [v5 downloadInitiationBackgroundTask];
      _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "Ending download initiation background task with identifier %lu", &v9, 0xCu);
    }

    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 endBackgroundTask:{objc_msgSend(*(a1 + 32), "downloadInitiationBackgroundTask")}];

    result = [*(a1 + 32) setDownloadInitiationBackgroundTask:v3];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

id __44__TVPDownload__registerStateMachineHandlers__block_invoke_223(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_ERROR))
  {
    __44__TVPDownload__registerStateMachineHandlers__block_invoke_223_cold_1();
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __44__TVPDownload__registerStateMachineHandlers__block_invoke_226;
  v14 = &unk_279D7BC20;
  v15 = v5;
  v16 = v6;
  v7 = v6;
  v8 = v5;
  [v8 executeBlockAfterCurrentStateTransition:&v11];
  v9 = [v8 currentState];

  return v9;
}

__CFString *__44__TVPDownload__registerStateMachineHandlers__block_invoke_2_227(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v11;
  v14 = [v9 currentState];
  if (v13)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_4_229;
    v17[3] = &unk_279D7BC20;
    v18 = v9;
    v19 = v13;
    [v18 executeBlockAfterCurrentStateTransition:v17];

    WeakRetained = v18;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if ([WeakRetained _anyDelegateRespondsToProcessFinishedDownload])
    {

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_3_228;
      v20[3] = &unk_279D7BFF8;
      objc_copyWeak(&v21, (a1 + 40));
      [WeakRetained _processFinishedDownloadWithCompletion:v20];
      objc_destroyWeak(&v21);
      v14 = @"Processing finished download";
    }

    else
    {
      (*(*(a1 + 32) + 16))();

      v14 = @"Download complete";
    }
  }

  return v14;
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke_3_228(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateMachine];
  [v4 postEvent:@"Did process finished download" withContext:v3];
}

id __44__TVPDownload__registerStateMachineHandlers__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sLogObject_2;
  if (os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Task is now completed.  Delaying failure to give task a chance to clean up", buf, 2u);
  }

  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_232;
  block[3] = &unk_279D7BDC8;
  v9 = v2;
  v5 = v2;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
  v6 = [v5 currentState];

  return v6;
}

__CFString *__44__TVPDownload__registerStateMachineHandlers__block_invoke_2_233(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 currentState];
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_3_234;
    v10[3] = &unk_279D7BC20;
    v11 = v6;
    v12 = v7;
    [v11 executeBlockAfterCurrentStateTransition:v10];
  }

  else
  {
    (*(*(a1 + 32) + 16))();

    v8 = @"Download complete";
  }

  return v8;
}

__CFString *__44__TVPDownload__registerStateMachineHandlers__block_invoke_4_235(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setError:v7];

  v9 = [WeakRetained downloadTask];

  if (v9)
  {
    v10 = [WeakRetained downloadTask];
    v11 = [v10 state];

    v12 = sLogObject_2;
    v13 = os_log_type_enabled(sLogObject_2, OS_LOG_TYPE_DEFAULT);
    if (v11 == 3)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Task exists and is completed.  Delaying download termination to give task a chance to clean up", buf, 2u);
      }

      v14 = dispatch_time(0, 500000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_236;
      block[3] = &unk_279D7BDC8;
      v20 = v6;
      dispatch_after(v14, MEMORY[0x277D85CD0], block);
      v15 = v20;
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Task exists but is not completed.  Cancelling task and waiting for didCompleteWithError", buf, 2u);
      }

      v15 = [WeakRetained downloadTask];
      [v15 cancel];
    }
  }

  else
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__TVPDownload__registerStateMachineHandlers__block_invoke_237;
    v17[3] = &unk_279D7BDC8;
    v18 = v6;
    [v18 executeBlockAfterCurrentStateTransition:v17];
    v15 = v18;
  }

  return @"Terminating";
}

__CFString *__44__TVPDownload__registerStateMachineHandlers__block_invoke_2_238(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = @"Failed";
  }

  else
  {
    v4 = @"Cancelled";
  }

  (*(*(a1 + 32) + 16))();

  return v4;
}

- (TVPDownloadSession)downloadSession
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadSession);

  return WeakRetained;
}

void __52__TVPDownload_URLSession_task_didCompleteWithError___block_invoke_cold_1(void **a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  [v2 downloadTerminationBackgroundTask];
  OUTLINED_FUNCTION_2(&dword_26CEDD000, v4, v5, "Download termination background task with identifier %lu expired.  This is not expected to ever happen.  Ending background task", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

void __44__TVPDownload__registerStateMachineHandlers__block_invoke_2_127_cold_1(void **a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  [v2 downloadInitiationBackgroundTask];
  OUTLINED_FUNCTION_2(&dword_26CEDD000, v4, v5, "Download initiation background task with identifier %lu expired.  Ending background task", v6, v7, v8, v9, 0);

  v10 = *MEMORY[0x277D85DE8];
}

@end