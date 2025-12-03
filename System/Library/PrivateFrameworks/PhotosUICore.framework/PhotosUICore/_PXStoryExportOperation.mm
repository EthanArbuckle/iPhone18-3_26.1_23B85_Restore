@interface _PXStoryExportOperation
+ (id)_metadataItemWithKey:(id)key value:(id)value;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)exportDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)outroDuration;
- (BOOL)_waitForStoryStateWhileExportingCanContinueByWatchingChanges:(unint64_t)changes timeout:(id *)timeout verificationBlock:(id)block;
- (BOOL)_waitWhileExportingCanContinueForSemaphore:(id)semaphore timeout:(id *)timeout;
- (BOOL)engine:(id)engine shouldRenderLayout:(id)layout sprites:(id)sprites;
- (BOOL)hasAudioForExport;
- (BOOL)hasExtraAudioTrackWithoutMusic;
- (BOOL)isCancelled;
- (BOOL)isHUDVisible;
- (BOOL)shouldContinueExporting;
- (NSError)error;
- (PXAudioCueSource)audioCueSource;
- (PXMediaProvider)storyQueue_mediaProvider;
- (PXStoryStyle)exportedStyle;
- (_PXStoryExportOperation)initWithURL:(id)l configuration:(id)configuration qualityOfService:(int64_t)service initialSongResource:(id)resource progressHandler:(id)handler;
- (id)_audibleVideoHilightsInStory;
- (id)_storyQueue_createStoryModel;
- (id)_videoOutputSettings;
- (id)appleMusicAsset;
- (id)collectAnalyticsForExportBegin;
- (id)diagnosticCueStringForSize:(CGSize)size withIndicatorTime:(id *)time rangeIndicatorTimeRange:(id *)range;
- (id)diagnosticHUDContentProviderForType:(int64_t)type;
- (id)pixelBufferAttributes;
- (int64_t)cuesVersion;
- (int64_t)diagnosticHUDType;
- (int64_t)status;
- (void)_addAudioAssetsForVideoHilightsToAudioCompositionBuilder:(id)builder;
- (void)_addAudioInputToAssetWriter:(id)writer;
- (void)_addMetadataToAssetWriter:(id)writer;
- (void)_addSongAssetToAudioCompositionBuilder:(id)builder;
- (void)_addVideoInputToAssetWriter:(id)writer;
- (void)_advanceLayoutToStoryTime:(id *)time;
- (void)_audioWriteQueue_cancelAudioExport;
- (void)_audioWriteQueue_exportAudioWithInput:(id)input audioMixOutput:(id)output completionHandler:(id)handler;
- (void)_audioWriteQueue_setupAudioReaderWithAudioExportComposition:(id)composition audioMix:(id)mix audioMixWithoutMusic:(id)music;
- (void)_checkForDriftFromCurrentTime:(id *)time;
- (void)_exportDefaultAudioTrackWithCompletionHandler:(id)handler;
- (void)_exportVideo;
- (void)_exportWithoutMusicAudioTrackWithCompletionHandler:(id)handler;
- (void)_finishWriting;
- (void)_handleMediaRequestCompletedForSongAsset:(id)asset avAsset:(id)avAsset audioMix:(id)mix info:(id)info audioCompositionBuilder:(id)builder;
- (void)_initializeProgress;
- (void)_preloadStoryResourcesAndWaitForBuffering;
- (void)_setError:(id)error;
- (void)_setExportDuration:(id *)duration;
- (void)_setExportedStyle:(id)style;
- (void)_setHasAudioForExport:(BOOL)export;
- (void)_setOutroDuration:(id *)duration;
- (void)_setStatus:(int64_t)status;
- (void)_setupAudioExporting;
- (void)_setupStoryLayout;
- (void)_setupStoryModel;
- (void)_setupWriter;
- (void)_signalSemaphoresForFailedExport;
- (void)_storyQueue_advanceLayoutToStoryTime:(id *)time;
- (void)_storyQueue_checkForDriftFromCurrentTime:(id *)time;
- (void)_storyQueue_processRenderedLayoutPixelBuffer:(__CVBuffer *)buffer;
- (void)_videoWriterQueue_writeVideoWithPixelBuffer:(__CVBuffer *)buffer forStoryTime:(id *)time;
- (void)_writeVideoWithPixelBuffer:(__CVBuffer *)buffer forStoryTime:(id *)time;
- (void)cancel;
- (void)collectAnalyticsForExportEnd:(id)end;
- (void)dealloc;
- (void)engineSetNeedsUpdate:(id)update;
- (void)main;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setVideoQueue_firstWrittenStoryTime:(id *)time;
@end

@implementation _PXStoryExportOperation

- (void)setVideoQueue_firstWrittenStoryTime:(id *)time
{
  var3 = time->var3;
  *&self->_videoQueue_firstWrittenStoryTime.value = *&time->var0;
  self->_videoQueue_firstWrittenStoryTime.epoch = var3;
}

- (BOOL)_waitWhileExportingCanContinueForSemaphore:(id)semaphore timeout:(id *)timeout
{
  semaphoreCopy = semaphore;
  memset(&v13, 0, sizeof(v13));
  CMTimeMakeWithSeconds(&v13, 0.5, 600);
  v12 = **&MEMORY[0x1E6960CC0];
  while (1)
  {
    v7 = dispatch_time(0, 500000000);
    v8 = dispatch_semaphore_wait(semaphoreCopy, v7);
    if (!v8)
    {
      break;
    }

    if (![(_PXStoryExportOperation *)self shouldContinueExporting])
    {
      break;
    }

    if ((timeout->var2 & 0x1D) == 1)
    {
      lhs = v12;
      v10 = v13;
      CMTimeAdd(&v12, &lhs, &v10);
      lhs = v12;
      v10 = *timeout;
      if ((CMTimeCompare(&lhs, &v10) & 0x80000000) == 0)
      {
        break;
      }
    }
  }

  return v8 == 0;
}

- (id)diagnosticHUDContentProviderForType:(int64_t)type
{
  storyQueue_storyModel = [(_PXStoryExportOperation *)self storyQueue_storyModel];
  v5 = [storyQueue_storyModel diagnosticHUDContentProviderForType:type];

  return v5;
}

- (int64_t)diagnosticHUDType
{
  v2 = +[PXStorySettings sharedInstance];
  exportHUDType = [v2 exportHUDType];

  return exportHUDType;
}

- (BOOL)isHUDVisible
{
  v2 = +[PXStorySettings sharedInstance];
  v3 = [v2 exportHUDType] != 0;

  return v3;
}

- (void)collectAnalyticsForExportEnd:(id)end
{
  endCopy = end;
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___PXStoryExportOperation_collectAnalyticsForExportEnd___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = endCopy;
  v6 = endCopy;
  dispatch_sync(storyQueue, v7);
}

- (id)collectAnalyticsForExportBegin
{
  configuration = [(_PXStoryExportOperation *)self configuration];
  v3 = [PXStoryExportManager collectAnalyticsForExportBeginWithConfiguration:configuration];

  return v3;
}

- (id)diagnosticCueStringForSize:(CGSize)size withIndicatorTime:(id *)time rangeIndicatorTimeRange:(id *)range
{
  v8 = [(_PXStoryExportOperation *)self storyQueue:size.width];
  dispatch_assert_queue_V2(v8);

  audioCueSource = [(_PXStoryExportOperation *)self audioCueSource];
  [(_PXStoryExportOperation *)self currentTime];
  CMTimeMakeWithSeconds(&duration, 3.0, PXAudioDefaultCMTimeScale);
  CMTimeRangeMake(&v16, v14, &duration);
  v10 = *&time->var0;
  duration.epoch = time->var3;
  v11 = *&range->var0.var3;
  v14[0] = *&range->var0.var0;
  v14[1] = v11;
  v14[2] = *&range->var1.var1;
  *&duration.value = v10;
  v12 = [audioCueSource diagnosticStringForTimeRange:&v16 indicatorTime:&duration rangeIndicatorTimeRange:v14 stringLength:50];

  return v12;
}

- (int64_t)cuesVersion
{
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  return 0;
}

- (PXAudioCueSource)audioCueSource
{
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  storyQueue_storyModel = [(_PXStoryExportOperation *)self storyQueue_storyModel];
  currentStyle = [storyQueue_storyModel currentStyle];
  cueSource = [currentStyle cueSource];

  return cueSource;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)currentTime
{
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  storyQueue_pacingController = [(_PXStoryExportOperation *)self storyQueue_pacingController];
  timeSource = [storyQueue_pacingController timeSource];
  v7 = timeSource;
  if (timeSource)
  {
    [timeSource currentTime];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (void)engineSetNeedsUpdate:(id)update
{
  updateCopy = update;
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  if (self->_storyQueue_isWaitingForResources)
  {
    [updateCopy updateIfNeeded];
  }
}

- (BOOL)engine:(id)engine shouldRenderLayout:(id)layout sprites:(id)sprites
{
  engineCopy = engine;
  layoutCopy = layout;
  spritesCopy = sprites;
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  storyQueue_engine = [(_PXStoryExportOperation *)self storyQueue_engine];
  entityManager = [storyQueue_engine entityManager];
  loadingStatus = [entityManager loadingStatus];

  states = [loadingStatus states];
  [layoutCopy visibleRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __61___PXStoryExportOperation_engine_shouldRenderLayout_sprites___block_invoke;
  v33[3] = &unk_1E7742430;
  v37 = states;
  v38 = a2;
  v33[4] = self;
  v36 = &v39;
  v25 = loadingStatus;
  v34 = v25;
  v26 = layoutCopy;
  v35 = v26;
  [spritesCopy enumerateSpritesInRect:v33 usingBlock:{v18, v20, v22, v24}];
  v27 = *(v40 + 24);
  self->_storyQueue_isWaitingForResources = v27;
  if ((v27 & 1) == 0)
  {
    v28 = self->_frequentSignpostLog;
    v29 = v28;
    frequentSignpostID = self->_frequentSignpostID;
    if (frequentSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *v32 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v29, OS_SIGNPOST_INTERVAL_END, frequentSignpostID, "StoryExportLayoutRenderLoadingSpriteContent", "", v32, 2u);
    }
  }

  _Block_object_dispose(&v39, 8);
  return v27 ^ 1;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [(_PXStoryExportOperation *)self progressHandler:path];

  if (v7)
  {
    progressHandler = [(_PXStoryExportOperation *)self progressHandler];
    progress = [(_PXStoryExportOperation *)self progress];
    progressHandler[2](progressHandler, progress);
  }
}

- (void)_initializeProgress
{
  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  progress = self->_progress;
  self->_progress = v3;

  objc_initWeak(&location, self);
  [(NSProgress *)self->_progress setCancellable:1];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __46___PXStoryExportOperation__initializeProgress__block_invoke;
  v8 = &unk_1E774C318;
  objc_copyWeak(&v9, &location);
  [(NSProgress *)self->_progress setCancellationHandler:&v5];
  [(NSProgress *)self->_progress addObserver:self forKeyPath:@"fractionCompleted" options:0 context:0, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_audioWriteQueue_cancelAudioExport
{
  audioQueue = [(_PXStoryExportOperation *)self audioQueue];
  dispatch_assert_queue_V2(audioQueue);

  audioQueue_audioWriterDefaultTrack = [(_PXStoryExportOperation *)self audioQueue_audioWriterDefaultTrack];
  [audioQueue_audioWriterDefaultTrack markAsFinished];

  audioQueue_audioWriterWithoutMusicTrack = [(_PXStoryExportOperation *)self audioQueue_audioWriterWithoutMusicTrack];

  if (audioQueue_audioWriterWithoutMusicTrack)
  {
    audioQueue_audioWriterWithoutMusicTrack2 = [(_PXStoryExportOperation *)self audioQueue_audioWriterWithoutMusicTrack];
    [audioQueue_audioWriterWithoutMusicTrack2 markAsFinished];
  }

  audioQueue_assetReader = [(_PXStoryExportOperation *)self audioQueue_assetReader];
  [audioQueue_assetReader cancelReading];
}

- (void)_audioWriteQueue_exportAudioWithInput:(id)input audioMixOutput:(id)output completionHandler:(id)handler
{
  inputCopy = input;
  outputCopy = output;
  handlerCopy = handler;
  audioQueue = [(_PXStoryExportOperation *)self audioQueue];
  dispatch_assert_queue_V2(audioQueue);

  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    audioQueue_assetReader = [(_PXStoryExportOperation *)self audioQueue_assetReader];
    memset(&v44, 0, sizeof(v44));
    [(_PXStoryExportOperation *)self exportDuration];
    if ([inputCopy isReadyForMoreMediaData])
    {
      v40 = inputCopy;
      while (1)
      {
        v13 = objc_autoreleasePoolPush();
        copyNextSampleBuffer = [outputCopy copyNextSampleBuffer];
        if (!copyNextSampleBuffer)
        {
          break;
        }

        v15 = copyNextSampleBuffer;
        memset(&v43, 0, sizeof(v43));
        CMSampleBufferGetPresentationTimeStamp(&v43, copyNextSampleBuffer);
        time1 = v43;
        time2 = v44;
        v16 = CMTimeCompare(&time1, &time2);
        if (v16 < 0 && ([inputCopy appendSampleBuffer:v15] & 1) == 0)
        {
          [(_PXStoryExportOperation *)self assetWriter];
          v17 = outputCopy;
          v18 = handlerCopy;
          v20 = v19 = audioQueue_assetReader;
          error = [v20 error];
          v27 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, error, @"failed to write audio sample", v22, v23, v24, v25, v26, v39);
          [(_PXStoryExportOperation *)self _setError:v27];

          audioQueue_assetReader = v19;
          handlerCopy = v18;
          outputCopy = v17;
          inputCopy = v40;
        }

        CFRelease(v15);
        shouldContinueExporting = [(_PXStoryExportOperation *)self shouldContinueExporting];
        if ((v16 & 0x80000000) == 0 || !shouldContinueExporting)
        {
          goto LABEL_16;
        }

        objc_autoreleasePoolPop(v13);
        if (([inputCopy isReadyForMoreMediaData] & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if ([audioQueue_assetReader status] == 3)
      {
        error2 = [audioQueue_assetReader error];
        v35 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, error2, @"failed to read audio sample", v30, v31, v32, v33, v34, v39);
        [(_PXStoryExportOperation *)self _setError:v35];
      }

      [(_PXStoryExportOperation *)self shouldContinueExporting];
LABEL_16:
      [inputCopy markAsFinished];
      handlerCopy[2](handlerCopy);
      v36 = self->_signpostLog;
      v37 = v36;
      signpostID = self->_signpostID;
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
      {
        LOWORD(v43.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v37, OS_SIGNPOST_INTERVAL_END, signpostID, "StoryExportAudio", "", &v43, 2u);
      }

      objc_autoreleasePoolPop(v13);
    }

LABEL_20:
  }

  else
  {
    [(_PXStoryExportOperation *)self _audioWriteQueue_cancelAudioExport];
    handlerCopy[2](handlerCopy);
  }
}

- (void)_exportWithoutMusicAudioTrackWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = self->_signpostLog;
  v6 = v5;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "StoryExportAudio", "exporting audio %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__194246;
  v24 = __Block_byref_object_dispose__194247;
  v25 = 0;
  audioQueue = [(_PXStoryExportOperation *)self audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78___PXStoryExportOperation__exportWithoutMusicAudioTrackWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &buf;
  dispatch_sync(audioQueue, block);

  inited = objc_initWeak(&location, self);
  v11 = *(*(&buf + 1) + 40);
  v12 = inited;
  audioQueue2 = [(_PXStoryExportOperation *)self audioQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78___PXStoryExportOperation__exportWithoutMusicAudioTrackWithCompletionHandler___block_invoke_2;
  v15[3] = &unk_1E7742408;
  objc_copyWeak(&v18, &location);
  p_buf = &buf;
  v14 = handlerCopy;
  v16 = v14;
  [v11 requestMediaDataWhenReadyOnQueue:audioQueue2 usingBlock:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

- (void)_exportDefaultAudioTrackWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = self->_signpostLog;
  v6 = v5;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "StoryExportAudio", "exporting audio %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__194246;
  v24 = __Block_byref_object_dispose__194247;
  v25 = 0;
  audioQueue = [(_PXStoryExportOperation *)self audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___PXStoryExportOperation__exportDefaultAudioTrackWithCompletionHandler___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &buf;
  dispatch_sync(audioQueue, block);

  inited = objc_initWeak(&location, self);
  v11 = *(*(&buf + 1) + 40);
  v12 = inited;
  audioQueue2 = [(_PXStoryExportOperation *)self audioQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73___PXStoryExportOperation__exportDefaultAudioTrackWithCompletionHandler___block_invoke_2;
  v15[3] = &unk_1E7742408;
  objc_copyWeak(&v18, &location);
  p_buf = &buf;
  v14 = handlerCopy;
  v16 = v14;
  [v11 requestMediaDataWhenReadyOnQueue:audioQueue2 usingBlock:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

- (void)_addAudioInputToAssetWriter:(id)writer
{
  v74[3] = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v5 = *MEMORY[0x1E6958300];
  v73[0] = *MEMORY[0x1E69582B0];
  v73[1] = v5;
  v74[0] = &unk_1F190D558;
  v74[1] = &unk_1F190D540;
  v73[2] = *MEMORY[0x1E6958348];
  v74[2] = &unk_1F190D570;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:3];
  v7 = objc_alloc(MEMORY[0x1E6987EE0]);
  v8 = *MEMORY[0x1E69875A0];
  v9 = [v7 initWithMediaType:*MEMORY[0x1E69875A0] outputSettings:v6];
  [v9 setExpectsMediaDataInRealTime:0];
  v10 = *MEMORY[0x1E69878A8];
  v11 = [_PXStoryExportOperation _metadataItemWithKey:*MEMORY[0x1E69878A8] value:@"Music And Voice"];
  v72 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
  [v9 setMetadata:v12];

  audioQueue = [(_PXStoryExportOperation *)self audioQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___PXStoryExportOperation__addAudioInputToAssetWriter___block_invoke;
  block[3] = &unk_1E774C620;
  block[4] = self;
  v14 = v9;
  v69 = v14;
  dispatch_sync(audioQueue, block);

  if (([writerCopy canAddInput:v14] & 1) == 0)
  {
    v21 = PXStoryErrorCreateWithCodeDebugFormat(10, @"Cannot add audio input for Default Track", v15, v16, v17, v18, v19, v20, v58);
    [(_PXStoryExportOperation *)self _setError:v21];
  }

  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    [writerCopy addInput:v14];
  }

  if ([(_PXStoryExportOperation *)self hasExtraAudioTrackWithoutMusic])
  {
    v64 = v6;
    v59 = [objc_alloc(MEMORY[0x1E6987EE0]) initWithMediaType:v8 outputSettings:v6];
    [v59 setExpectsMediaDataInRealTime:0];
    appleMusicAsset = [(_PXStoryExportOperation *)self appleMusicAsset];
    identifier = [appleMusicAsset identifier];

    appleMusicAsset2 = [(_PXStoryExportOperation *)self appleMusicAsset];
    artistName = [appleMusicAsset2 artistName];

    appleMusicAsset3 = [(_PXStoryExportOperation *)self appleMusicAsset];
    albumTitle = [appleMusicAsset3 albumTitle];

    appleMusicAsset4 = [(_PXStoryExportOperation *)self appleMusicAsset];
    [appleMusicAsset4 title];
    v30 = v29 = writerCopy;

    v31 = [_PXStoryExportOperation _metadataItemWithKey:v10 value:@"No Music Just Voice"];
    v71[0] = v31;
    v63 = identifier;
    v32 = [_PXStoryExportOperation _metadataItemWithKey:*MEMORY[0x1E69878A0] value:identifier];
    v71[1] = v32;
    v62 = artistName;
    v33 = [_PXStoryExportOperation _metadataItemWithKey:*MEMORY[0x1E6987870] value:artistName];
    v71[2] = v33;
    v61 = albumTitle;
    v34 = [_PXStoryExportOperation _metadataItemWithKey:*MEMORY[0x1E6987868] value:albumTitle];
    v71[3] = v34;
    v60 = v30;
    v35 = v30;
    writerCopy = v29;
    v36 = [_PXStoryExportOperation _metadataItemWithKey:*MEMORY[0x1E6987900] value:v35];
    v71[4] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:5];
    [v59 setMetadata:v37];

    audioQueue2 = [(_PXStoryExportOperation *)self audioQueue];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __55___PXStoryExportOperation__addAudioInputToAssetWriter___block_invoke_2;
    v66[3] = &unk_1E774C620;
    v66[4] = self;
    v39 = v59;
    v67 = v39;
    dispatch_sync(audioQueue2, v66);

    if (([v29 canAddInput:v39] & 1) == 0)
    {
      v46 = PXStoryErrorCreateWithCodeDebugFormat(10, @"Cannot add audio input for No Music Track", v40, v41, v42, v43, v44, v45, v58);
      [(_PXStoryExportOperation *)self _setError:v46];
    }

    if ([(_PXStoryExportOperation *)self shouldContinueExporting])
    {
      [v29 addInput:v39];
    }

    v47 = MEMORY[0x1E6987EF0];
    v70[0] = v14;
    v70[1] = v39;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v49 = [v47 assetWriterInputGroupWithInputs:v48 defaultInput:v14];

    v6 = v64;
    if (([writerCopy canAddInputGroup:v49] & 1) == 0)
    {
      v56 = PXStoryErrorCreateWithCodeDebugFormat(10, @"Cannot add audio inputs", v50, v51, v52, v53, v54, v55, v58);
      [(_PXStoryExportOperation *)self _setError:v56];
    }

    if ([(_PXStoryExportOperation *)self shouldContinueExporting])
    {
      [writerCopy addInputGroup:v49];
    }
  }

  else
  {
    audioQueue3 = [(_PXStoryExportOperation *)self audioQueue];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __55___PXStoryExportOperation__addAudioInputToAssetWriter___block_invoke_3;
    v65[3] = &unk_1E774C648;
    v65[4] = self;
    dispatch_sync(audioQueue3, v65);
  }
}

- (void)_audioWriteQueue_setupAudioReaderWithAudioExportComposition:(id)composition audioMix:(id)mix audioMixWithoutMusic:(id)music
{
  v61 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  mixCopy = mix;
  musicCopy = music;
  audioQueue = [(_PXStoryExportOperation *)self audioQueue];
  dispatch_assert_queue_V2(audioQueue);

  v12 = self->_signpostLog;
  v13 = v12;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    *buf = 138543362;
    v60 = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "StoryExportRequestSetupAudio", "requesting music asset for %{public}@", buf, 0xCu);
  }

  v56 = 0;
  v16 = [objc_alloc(MEMORY[0x1E6987E78]) initWithAsset:compositionCopy error:&v56];
  v22 = v56;
  if (v16)
  {
    v55 = musicCopy;
    [(_PXStoryExportOperation *)self setAudioQueue_assetReader:v16];
    v23 = [compositionCopy tracksWithMediaType:*MEMORY[0x1E69875A0]];
    v24 = *MEMORY[0x1E6958300];
    v57[0] = *MEMORY[0x1E69582B0];
    v57[1] = v24;
    v58[0] = &unk_1F190D528;
    v58[1] = &unk_1F190D540;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];
    v26 = [objc_alloc(MEMORY[0x1E6987E80]) initWithAudioTracks:v23 audioSettings:v25];
    [v26 setAudioMix:mixCopy];
    [v26 setAlwaysCopiesSampleData:0];
    v54 = mixCopy;
    if ([v16 canAddOutput:v26])
    {
      [v16 addOutput:v26];
      [(_PXStoryExportOperation *)self setAudioQueue_audioMixOutput:v26];
    }

    else
    {
      v32 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v22, @"cannot add audio mix to asset reader", v27, v28, v29, v30, v31, v53);
      [(_PXStoryExportOperation *)self _setError:v32];
    }

    if ([(_PXStoryExportOperation *)self hasExtraAudioTrackWithoutMusic])
    {
      v33 = [objc_alloc(MEMORY[0x1E6987E80]) initWithAudioTracks:v23 audioSettings:v25];
      [v33 setAudioMix:musicCopy];
      [v33 setAlwaysCopiesSampleData:0];
      if ([v16 canAddOutput:v33])
      {
        [v16 addOutput:v33];
        [(_PXStoryExportOperation *)self setAudioQueue_audioMixOutputWithoutMusic:v33];
      }

      else
      {
        v39 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v22, @"cannot add audio mix to asset reader", v34, v35, v36, v37, v38, v53);
        [(_PXStoryExportOperation *)self _setError:v39];
      }
    }

    audioQueue_assetReader = [(_PXStoryExportOperation *)self audioQueue_assetReader];
    startReading = [audioQueue_assetReader startReading];

    if ((startReading & 1) == 0)
    {
      audioQueue_assetReader2 = [(_PXStoryExportOperation *)self audioQueue_assetReader];
      error = [audioQueue_assetReader2 error];
      v49 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, error, @"failed to read from audio asset", v44, v45, v46, v47, v48, v53);
      [(_PXStoryExportOperation *)self _setError:v49];
    }

    v50 = self->_signpostLog;
    v51 = v50;
    v52 = self->_signpostID;
    if (v52 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v52, "StoryExportRequestSetupAudio", "", buf, 2u);
    }

    [(_PXStoryExportOperation *)self _setHasAudioForExport:1];
    mixCopy = v54;
    musicCopy = v55;
  }

  else
  {
    v23 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v22, @"cannot create audio reader", v17, v18, v19, v20, v21, v53);
    [(_PXStoryExportOperation *)self _setError:v23];
  }
}

- (id)_audibleVideoHilightsInStory
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55___PXStoryExportOperation__audibleVideoHilightsInStory__block_invoke;
  block[3] = &unk_1E7749FF8;
  block[4] = self;
  v12 = a2;
  v6 = v4;
  v11 = v6;
  dispatch_sync(storyQueue, block);

  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)_addAudioAssetsForVideoHilightsToAudioCompositionBuilder:(id)builder
{
  v48 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  _audibleVideoHilightsInStory = [(_PXStoryExportOperation *)self _audibleVideoHilightsInStory];
  if ([_audibleVideoHilightsInStory count])
  {
    defaultManager = [MEMORY[0x1E6978860] defaultManager];
    memset(&v46, 0, sizeof(v46));
    CMTimeMakeWithSeconds(&v46, 30.0, 600);
    v4 = objc_alloc_init(PXVideoRequestOptions);
    v5 = +[PXStorySettings sharedInstance];
    PXSetupPXVideoRequestOptionsForDeliveryQuality(v4, [v5 exportVideoQuality]);

    [(PXVideoRequestOptions *)v4 setNetworkAccessAllowed:1];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = _audibleVideoHilightsInStory;
    v26 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v26)
    {
      v25 = *v43;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * v6);
        if (v7)
        {
          [*(*(&v42 + 1) + 8 * v6) loadingVideoTimeRange];
        }

        else
        {
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
        }

        v36 = v39;
        v37 = v40;
        v38 = v41;
        [(PXVideoRequestOptions *)v4 setTimeRange:&v36];
        *&v39 = 0;
        *(&v39 + 1) = &v39;
        *&v40 = 0x2020000000;
        BYTE8(v40) = 0;
        v8 = dispatch_semaphore_create(0);
        asset = [v7 asset];
        photoKitRequestOptions = [(PXVideoRequestOptions *)v4 photoKitRequestOptions];
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __84___PXStoryExportOperation__addAudioAssetsForVideoHilightsToAudioCompositionBuilder___block_invoke;
        v32[3] = &unk_1E77423B8;
        v32[4] = self;
        v32[5] = v7;
        v33 = builderCopy;
        v35 = &v39;
        v11 = v8;
        v34 = v11;
        v12 = [defaultManager requestAVAssetForVideo:asset options:photoKitRequestOptions resultHandler:v32];

        v36 = *&v46.value;
        *&v37 = v46.epoch;
        if (![(_PXStoryExportOperation *)self _waitWhileExportingCanContinueForSemaphore:v11 timeout:&v36])
        {
          audioQueue = [(_PXStoryExportOperation *)self audioQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __84___PXStoryExportOperation__addAudioAssetsForVideoHilightsToAudioCompositionBuilder___block_invoke_406;
          block[3] = &unk_1E7749A28;
          v31 = &v39;
          v30 = v11;
          dispatch_sync(audioQueue, block);

          [defaultManager cancelImageRequest:v12];
          if (![(_PXStoryExportOperation *)self isCancelled])
          {
            asset2 = [v7 asset];
            v21 = PXStoryErrorCreateWithCodeDebugFormat(10, @"Timed out waiting for asset %@", v15, v16, v17, v18, v19, v20, asset2);
            [(_PXStoryExportOperation *)self _setError:v21];
          }
        }

        shouldContinueExporting = [(_PXStoryExportOperation *)self shouldContinueExporting];

        _Block_object_dispose(&v39, 8);
        if (!shouldContinueExporting)
        {
          break;
        }

        if (v26 == ++v6)
        {
          v26 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v26)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

- (void)_handleMediaRequestCompletedForSongAsset:(id)asset avAsset:(id)avAsset audioMix:(id)mix info:(id)info audioCompositionBuilder:(id)builder
{
  assetCopy = asset;
  avAssetCopy = avAsset;
  mixCopy = mix;
  infoCopy = info;
  builderCopy = builder;
  audioQueue = [(_PXStoryExportOperation *)self audioQueue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __114___PXStoryExportOperation__handleMediaRequestCompletedForSongAsset_avAsset_audioMix_info_audioCompositionBuilder___block_invoke;
  v23[3] = &unk_1E7742390;
  v24 = avAssetCopy;
  selfCopy = self;
  v26 = infoCopy;
  v27 = assetCopy;
  v28 = builderCopy;
  v29 = mixCopy;
  v18 = mixCopy;
  v19 = builderCopy;
  v20 = assetCopy;
  v21 = infoCopy;
  v22 = avAssetCopy;
  dispatch_sync(audioQueue, v23);
}

- (void)_addSongAssetToAudioCompositionBuilder:(id)builder
{
  v35 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  v6 = self->_signpostLog;
  v7 = v6;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "StoryExportRequestMusicAsset", "requesting music asset for %{public}@", &buf, 0xCu);
  }

  v10 = dispatch_semaphore_create(0);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__194246;
  v33 = __Block_byref_object_dispose__194247;
  v34 = 0;
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___PXStoryExportOperation__addSongAssetToAudioCompositionBuilder___block_invoke;
  block[3] = &unk_1E7742368;
  block[4] = self;
  p_buf = &buf;
  v24 = &v26;
  v25 = a2;
  v12 = builderCopy;
  v21 = v12;
  v13 = v10;
  v22 = v13;
  dispatch_sync(storyQueue, block);

  if (v27[3])
  {
    memset(&v19, 0, sizeof(v19));
    CMTimeMakeWithSeconds(&v19, 120.0, 600);
    v18 = v19;
    if (![(_PXStoryExportOperation *)self _waitWhileExportingCanContinueForSemaphore:v13 timeout:&v18])
    {
      [*(*(&buf + 1) + 40) cancelRequest:v27[3]];
      v14 = dispatch_time(0, 1000000000);
      dispatch_semaphore_wait(v13, v14);
    }
  }

  v15 = self->_signpostLog;
  v16 = v15;
  v17 = self->_signpostID;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v19.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_END, v17, "StoryExportRequestMusicAsset", "", &v19, 2u);
  }

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v26, 8);
}

- (void)_setupAudioExporting
{
  v3 = [PXStoryExportAudioCompositionBuilder alloc];
  [(_PXStoryExportOperation *)self exportDuration];
  [(_PXStoryExportOperation *)self outroDuration];
  v4 = [(PXStoryExportAudioCompositionBuilder *)v3 initWithMaximumDuration:v10 outroDuration:v9];
  [(_PXStoryExportOperation *)self _addSongAssetToAudioCompositionBuilder:v4];
  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    [(_PXStoryExportOperation *)self _addAudioAssetsForVideoHilightsToAudioCompositionBuilder:v4];
  }

  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    audioQueue = [(_PXStoryExportOperation *)self audioQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47___PXStoryExportOperation__setupAudioExporting__block_invoke;
    v6[3] = &unk_1E774C620;
    v7 = v4;
    selfCopy = self;
    dispatch_sync(audioQueue, v6);
  }
}

- (void)_storyQueue_checkForDriftFromCurrentTime:(id *)time
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_storyQueue_hasEncounteredDriftError)
  {
    v12 = 0uLL;
    storyQueue_storyModel = [(_PXStoryExportOperation *)self storyQueue_storyModel];
    v6 = storyQueue_storyModel;
    if (storyQueue_storyModel)
    {
      [storyQueue_storyModel nominalPlaybackTime];
    }

    else
    {
      v12 = 0uLL;
    }

    *&time.value = v12;
    time.epoch = 0;
    *&v11.value = *&time->var0;
    v11.epoch = time->var3;
    Seconds = CMTimeGetSeconds(&time);
    time = v11;
    if (vabdd_f64(Seconds, CMTimeGetSeconds(&time)) > 0.5)
    {
      self->_storyQueue_hasEncounteredDriftError = 1;
      v8 = PLStoryGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        time = *time;
        v9 = CMTimeGetSeconds(&time);
        *&time.value = v12;
        time.epoch = 0;
        v10 = CMTimeGetSeconds(&time);
        LODWORD(time.value) = 134218754;
        *(&time.value + 4) = 0x3FE0000000000000;
        LOWORD(time.flags) = 2048;
        *(&time.flags + 2) = v9;
        HIWORD(time.epoch) = 2048;
        v14 = v10;
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_FAULT, "Unexpected drift (>%.2fs) between export current time (%.2fs) and story model nominal playback time (%.2fs) during export operation %@", &time, 0x2Au);
      }
    }
  }
}

- (void)_checkForDriftFromCurrentTime:(id *)time
{
  objc_initWeak(&location, self);
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___PXStoryExportOperation__checkForDriftFromCurrentTime___block_invoke;
  block[3] = &unk_1E7747EF8;
  objc_copyWeak(&v7, &location);
  v8 = *time;
  dispatch_async(storyQueue, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)_exportVideo
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = self->_signpostLog;
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    LODWORD(buf.value) = 138543362;
    *(&buf.value + 4) = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "StoryExportVideo", "exporting video %{public}@", &buf, 0xCu);
  }

  objc_initWeak(&location, self);
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39___PXStoryExportOperation__exportVideo__block_invoke;
  block[3] = &unk_1E774B248;
  block[4] = self;
  objc_copyWeak(&v40, &location);
  dispatch_sync(storyQueue, block);

  memset(&v38, 0, sizeof(v38));
  [(_PXStoryExportOperation *)self exportDuration];
  v37.epoch = 0;
  *&v37.value = PXStoryTimeZero;
  configuration = [(_PXStoryExportOperation *)self configuration];
  videoOptions = [configuration videoOptions];
  CMTimeMake(&buf, 1, [videoOptions frameRate]);
  v36 = buf;

  memset(&buf, 0, sizeof(buf));
  Seconds = CMTimeGetSeconds(&buf);
  buf = v36;
  v11 = CMTimeGetSeconds(&buf);
  v12 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  progress = [(_PXStoryExportOperation *)self progress];
  [progress addChild:v12 withPendingUnitCount:70];

  v14 = 0;
  v15 = Seconds / v11;
  v16 = vcvtps_s32_f32(v15);
  do
  {
    if (![(_PXStoryExportOperation *)self shouldContinueExporting])
    {
      break;
    }

    buf = v37;
    time2 = v38;
    if ((CMTimeCompare(&buf, &time2) & 0x80000000) == 0)
    {
      break;
    }

    v17 = objc_autoreleasePoolPush();
    buf = v37;
    [(_PXStoryExportOperation *)self _advanceLayoutToStoryTime:&buf];
    layoutCompleteSemaphore = [(_PXStoryExportOperation *)self layoutCompleteSemaphore];
    v19 = dispatch_time(0, 30000000000);
    v20 = dispatch_semaphore_wait(layoutCompleteSemaphore, v19);

    if (v20)
    {
      buf = v37;
      *&v21 = CMTimeGetSeconds(&buf);
      v28 = PXStoryErrorCreateWithCodeDebugFormat(10, @"timed out waiting for layout to complete at time %f", v22, v23, v24, v25, v26, v27, v21);
      [(_PXStoryExportOperation *)self _setError:v28];
    }

    else
    {
      completedWritingVideoFrameSemaphore = [(_PXStoryExportOperation *)self completedWritingVideoFrameSemaphore];
      dispatch_semaphore_wait(completedWritingVideoFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);

      buf = v37;
      time2 = v36;
      CMTimeAdd(&v35, &buf, &time2);
      v37 = v35;
      ++v14;
      [v12 setCompletedUnitCount:(100 * v14 / v16)];
      if (__ROR8__(0x888888888888888 - 0x1111111111111111 * v14, 1) <= 0x888888888888888uLL)
      {
        buf = v37;
        [(_PXStoryExportOperation *)self _checkForDriftFromCurrentTime:&buf];
      }
    }

    objc_autoreleasePoolPop(v17);
  }

  while (!v20);
  videoWriterQueue = [(_PXStoryExportOperation *)self videoWriterQueue];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __39___PXStoryExportOperation__exportVideo__block_invoke_3;
  v34[3] = &unk_1E774C648;
  v34[4] = self;
  dispatch_sync(videoWriterQueue, v34);

  v31 = self->_signpostLog;
  v32 = v31;
  v33 = self->_signpostID;
  if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v32, OS_SIGNPOST_INTERVAL_END, v33, "StoryExportVideo", "", &buf, 2u);
  }

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

- (void)_videoWriterQueue_writeVideoWithPixelBuffer:(__CVBuffer *)buffer forStoryTime:(id *)time
{
  v33 = *MEMORY[0x1E69E9840];
  videoWriterQueue = [(_PXStoryExportOperation *)self videoWriterQueue];
  dispatch_assert_queue_V2(videoWriterQueue);

  v8 = self->_frequentSignpostLog;
  v9 = v8;
  frequentSignpostID = self->_frequentSignpostID;
  if (frequentSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    time = *time;
    Seconds = CMTimeGetSeconds(&time);
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    LODWORD(time.value) = 134218242;
    *(&time.value + 4) = Seconds;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, frequentSignpostID, "StoryExportWriteVideoFrame", "append video frame at %f for export %{public}@", &time, 0x16u);
  }

  videoWriterQueue_pixelBufferWriter = [(_PXStoryExportOperation *)self videoWriterQueue_pixelBufferWriter];
  assetWriterInput = [videoWriterQueue_pixelBufferWriter assetWriterInput];

  if (([assetWriterInput isReadyForMoreMediaData] & 1) == 0)
  {
    do
    {
      if (![(_PXStoryExportOperation *)self shouldContinueExporting])
      {
        break;
      }

      [MEMORY[0x1E696AF00] sleepForTimeInterval:0.01];
    }

    while (![assetWriterInput isReadyForMoreMediaData]);
  }

  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    [(_PXStoryExportOperation *)self videoQueue_firstWrittenStoryTime];
    if ((time.flags & 1) == 0)
    {
      time = *time;
      [(_PXStoryExportOperation *)self setVideoQueue_firstWrittenStoryTime:&time];
    }

    [(_PXStoryExportOperation *)self videoQueue_firstWrittenStoryTime];
    time = *time;
    rhs = *v29;
    CMTimeSubtract(&v30, &time, &rhs);
    videoWriterQueue_pixelBufferWriter2 = [(_PXStoryExportOperation *)self videoWriterQueue_pixelBufferWriter];
    time = v30;
    v16 = [videoWriterQueue_pixelBufferWriter2 appendPixelBuffer:buffer withPresentationTime:&time];

    if ((v16 & 1) == 0)
    {
      assetWriter = [(_PXStoryExportOperation *)self assetWriter];
      error = [assetWriter error];
      v24 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, error, @"failed to write sample with assetWriterAdapter", v19, v20, v21, v22, v23, *v29);
      [(_PXStoryExportOperation *)self _setError:v24];
    }
  }

  completedWritingVideoFrameSemaphore = [(_PXStoryExportOperation *)self completedWritingVideoFrameSemaphore];
  dispatch_semaphore_signal(completedWritingVideoFrameSemaphore);

  v26 = self->_frequentSignpostLog;
  v27 = v26;
  v28 = self->_frequentSignpostID;
  if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    LOWORD(time.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v27, OS_SIGNPOST_INTERVAL_END, v28, "StoryExportWriteVideoFrame", "", &time, 2u);
  }
}

- (void)_writeVideoWithPixelBuffer:(__CVBuffer *)buffer forStoryTime:(id *)time
{
  CVPixelBufferRetain(buffer);
  objc_initWeak(&location, self);
  videoWriterQueue = [(_PXStoryExportOperation *)self videoWriterQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___PXStoryExportOperation__writeVideoWithPixelBuffer_forStoryTime___block_invoke;
  v8[3] = &unk_1E77422F0;
  objc_copyWeak(v9, &location);
  v9[1] = buffer;
  v10 = *time;
  dispatch_async(videoWriterQueue, v8);

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

- (id)pixelBufferAttributes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  videoOptions = [(_PXStoryExportOperation *)self videoOptions];
  [videoOptions resolutionInPixels];
  v6 = v5;
  v8 = v7;

  [v3 setObject:&unk_1F190D510 forKeyedSubscript:*MEMORY[0x1E6966130]];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6966208]];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69660B8]];

  [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6966100]];
  [v3 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:*MEMORY[0x1E69660D8]];
  v11 = [v3 copy];

  return v11;
}

- (id)_videoOutputSettings
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  videoOptions = [(_PXStoryExportOperation *)self videoOptions];
  [videoOptions resolutionInPixels];
  v6 = v5;
  v8 = v7;

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6987E08]];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6987D70]];

  videoOptions2 = [(_PXStoryExportOperation *)self videoOptions];
  codec = [videoOptions2 codec];

  if (codec == 1)
  {
    currentDeviceHEVCCapabilities = [MEMORY[0x1E69C0700] currentDeviceHEVCCapabilities];
    v14 = *MEMORY[0x1E6987CB0];
    if (currentDeviceHEVCCapabilities)
    {
      v16 = MEMORY[0x1E6987CF0];
    }

    else
    {
      v16 = MEMORY[0x1E6987CE8];
    }

    v13 = *v16;
  }

  else
  {
    if (codec)
    {
      goto LABEL_9;
    }

    v13 = *MEMORY[0x1E6987CE8];
    v14 = *MEMORY[0x1E6987CB0];
  }

  [v3 setObject:v13 forKeyedSubscript:v14];
LABEL_9:
  videoOptions3 = [(_PXStoryExportOperation *)self videoOptions];
  averageBitratePerSecond = [videoOptions3 averageBitratePerSecond];

  if (averageBitratePerSecond)
  {
    v22 = *MEMORY[0x1E6987C60];
    v23[0] = averageBitratePerSecond;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x1E6987D30]];
  }

  v20 = [v3 copy];

  return v20;
}

- (void)_addVideoInputToAssetWriter:(id)writer
{
  writerCopy = writer;
  _videoOutputSettings = [(_PXStoryExportOperation *)self _videoOutputSettings];
  v6 = objc_alloc(MEMORY[0x1E6987EE0]);
  v7 = [v6 initWithMediaType:*MEMORY[0x1E6987608] outputSettings:_videoOutputSettings];
  [v7 setExpectsMediaDataInRealTime:0];
  pixelBufferAttributes = [(_PXStoryExportOperation *)self pixelBufferAttributes];
  v9 = [objc_alloc(MEMORY[0x1E6987F08]) initWithAssetWriterInput:v7 sourcePixelBufferAttributes:pixelBufferAttributes];
  videoWriterQueue = [(_PXStoryExportOperation *)self videoWriterQueue];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __55___PXStoryExportOperation__addVideoInputToAssetWriter___block_invoke;
  v22 = &unk_1E774C620;
  selfCopy = self;
  v24 = v9;
  v11 = v9;
  dispatch_sync(videoWriterQueue, &v19);

  if (([writerCopy canAddInput:v7] & 1) == 0)
  {
    v18 = PXStoryErrorCreateWithCodeDebugFormat(10, @"Cannot add video input", v12, v13, v14, v15, v16, v17, v19);
    [(_PXStoryExportOperation *)self _setError:v18];
  }

  if ([(_PXStoryExportOperation *)self shouldContinueExporting:v19])
  {
    [writerCopy addInput:v7];
  }
}

- (void)_storyQueue_processRenderedLayoutPixelBuffer:(__CVBuffer *)buffer
{
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  layoutCompleteSemaphore = [(_PXStoryExportOperation *)self layoutCompleteSemaphore];
  dispatch_semaphore_signal(layoutCompleteSemaphore);

  v7 = self->_frequentSignpostLog;
  v8 = v7;
  frequentSignpostID = self->_frequentSignpostID;
  if (frequentSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v12[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_END, frequentSignpostID, "StoryExportLayoutRenderVideoFrame", "", v12, 2u);
  }

  storyQueue_pacingController = [(_PXStoryExportOperation *)self storyQueue_pacingController];
  timeSource = [storyQueue_pacingController timeSource];

  if (timeSource)
  {
    [timeSource currentTime];
  }

  else
  {
    memset(v12, 0, 24);
  }

  [(_PXStoryExportOperation *)self _writeVideoWithPixelBuffer:buffer forStoryTime:v12];
}

- (void)_storyQueue_advanceLayoutToStoryTime:(id *)time
{
  v22 = *MEMORY[0x1E69E9840];
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  storyQueue_pacingController = [(_PXStoryExportOperation *)self storyQueue_pacingController];
  timeSource = [storyQueue_pacingController timeSource];
  v8 = timeSource;
  memset(&v19, 0, sizeof(v19));
  if (timeSource)
  {
    [timeSource currentTime];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  lhs = *time;
  rhs = v18;
  CMTimeSubtract(&v19, &lhs, &rhs);
  if (([storyQueue_pacingController canChangePlaybackTime] & 1) == 0)
  {
    PXAssertGetLog();
  }

  lhs = v19;
  [v8 incrementByTime:{&lhs, *&v18.value, v18.epoch}];
  storyQueue_engine = [(_PXStoryExportOperation *)self storyQueue_engine];
  layout = [storyQueue_engine layout];
  [layout setNeedsUpdate];

  storyQueue_engine2 = [(_PXStoryExportOperation *)self storyQueue_engine];
  displayLink = [storyQueue_engine2 displayLink];

  lhs = v19;
  rhs = v19;
  v18 = **&MEMORY[0x1E6960CC0];
  if (!CMTimeCompare(&rhs, &v18))
  {
    CMTimeMake(&lhs, 1, 600);
  }

  rhs = lhs;
  [displayLink incrementTargetTimeWithInterval:CMTimeGetSeconds(&rhs)];
  v13 = self->_frequentSignpostLog;
  v14 = v13;
  frequentSignpostID = self->_frequentSignpostID;
  if (frequentSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    LODWORD(rhs.value) = 138543362;
    *(&rhs.value + 4) = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, frequentSignpostID, "StoryExportLayoutRenderLoadingSpriteContent", "loading layout sprites for export %{public}@", &rhs, 0xCu);
  }

  storyQueue_engine3 = [(_PXStoryExportOperation *)self storyQueue_engine];
  [storyQueue_engine3 updateIfNeeded];
}

- (void)_advanceLayoutToStoryTime:(id *)time
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = self->_frequentSignpostLog;
  v6 = v5;
  frequentSignpostID = self->_frequentSignpostID;
  if (frequentSignpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    time = *time;
    Seconds = CMTimeGetSeconds(&time);
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    LODWORD(time.value) = 134218242;
    *(&time.value + 4) = Seconds;
    LOWORD(time.flags) = 2114;
    *(&time.flags + 2) = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, frequentSignpostID, "StoryExportLayoutRenderVideoFrame", "request layout render at %f for export %{public}@", &time, 0x16u);
  }

  objc_initWeak(&time, self);
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53___PXStoryExportOperation__advanceLayoutToStoryTime___block_invoke;
  v11[3] = &unk_1E7747EF8;
  objc_copyWeak(&v12, &time);
  v13 = *&time->var0;
  var3 = time->var3;
  dispatch_async(storyQueue, v11);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&time);
}

- (id)_storyQueue_createStoryModel
{
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  configuration = [(_PXStoryExportOperation *)self configuration];
  storyConfiguration = [configuration storyConfiguration];
  storyQueue2 = [(_PXStoryExportOperation *)self storyQueue];
  v7 = [storyConfiguration copyWithStoryQueue:storyQueue2];

  v8 = os_log_create(*MEMORY[0x1E69BFF60], "Export");
  [v7 setLog:v8];

  [v7 setOptions:1];
  configuration2 = [(_PXStoryExportOperation *)self configuration];
  extendedTraitCollection = [configuration2 extendedTraitCollection];

  timelineProducer = [v7 timelineProducer];
  v12 = timelineProducer;
  if (timelineProducer)
  {
    v13 = timelineProducer;
  }

  else
  {
    v13 = PXStoryTimelineProducerCreateDefault();
  }

  v14 = v13;

  v15 = [[PXStoryRecipeManager alloc] initWithConfiguration:v7];
  v16 = [[PXStoryResourcesDataSourceManager alloc] initWithRecipeManager:v15];
  v17 = [PXStoryStyleManager alloc];
  errorReporter = [v7 errorReporter];
  v19 = [(PXStoryStyleManager *)v17 initWithRecipeManager:v15 errorReporter:errorReporter];

  v20 = [[PXStoryTimelineSpecManager alloc] initWithExtendedTraitCollection:extendedTraitCollection configuration:v7];
  v21 = [PXStoryTimelineManager timelineManagerWithTimelineProducer:v14 resourcesDataSourceManager:v16 styleManager:v19 specManager:v20 configuration:v7 loadingCoordinator:0 paperTrailOptions:0];
  v22 = -[PXStoryLayoutSpecManager initWithExtendedTraitCollection:options:storyConfigurationOptions:]([PXStoryLayoutSpecManager alloc], "initWithExtendedTraitCollection:options:storyConfigurationOptions:", extendedTraitCollection, 0, [v7 options]);
  v23 = [[PXStoryModel alloc] initWithTimelineManager:v21 layoutSpecManager:v22 configuration:v7];

  return v23;
}

- (void)_setupStoryLayout
{
  videoWriterQueue = [(_PXStoryExportOperation *)self videoWriterQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44___PXStoryExportOperation__setupStoryLayout__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_sync(videoWriterQueue, block);

  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    storyQueue = [(_PXStoryExportOperation *)self storyQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44___PXStoryExportOperation__setupStoryLayout__block_invoke_3;
    v6[3] = &unk_1E77498A0;
    v6[4] = self;
    v6[5] = a2;
    dispatch_sync(storyQueue, v6);
  }
}

- (PXMediaProvider)storyQueue_mediaProvider
{
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  storyQueue_mediaProvider = self->_storyQueue_mediaProvider;
  if (!storyQueue_mediaProvider)
  {
    configuration = [(_PXStoryExportOperation *)self configuration];
    storyConfiguration = [configuration storyConfiguration];

    mediaProvider = [storyConfiguration mediaProvider];
    v8 = self->_storyQueue_mediaProvider;
    self->_storyQueue_mediaProvider = mediaProvider;

    storyQueue_mediaProvider = self->_storyQueue_mediaProvider;
  }

  return storyQueue_mediaProvider;
}

- (BOOL)_waitForStoryStateWhileExportingCanContinueByWatchingChanges:(unint64_t)changes timeout:(id *)timeout verificationBlock:(id)block
{
  blockCopy = block;
  v9 = dispatch_semaphore_create(0);
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__194246;
  v32[4] = __Block_byref_object_dispose__194247;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114___PXStoryExportOperation__waitForStoryStateWhileExportingCanContinueByWatchingChanges_timeout_verificationBlock___block_invoke;
  block[3] = &unk_1E7742258;
  v27 = v32;
  block[4] = self;
  changesCopy = changes;
  v11 = storyQueue;
  v24 = v11;
  v12 = blockCopy;
  v26 = v12;
  v28 = v30;
  v13 = v9;
  v25 = v13;
  dispatch_sync(v11, block);
  v22 = *timeout;
  LOBYTE(timeout) = [(_PXStoryExportOperation *)self _waitWhileExportingCanContinueForSemaphore:v13 timeout:&v22];
  storyQueue2 = [(_PXStoryExportOperation *)self storyQueue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __114___PXStoryExportOperation__waitForStoryStateWhileExportingCanContinueByWatchingChanges_timeout_verificationBlock___block_invoke_3;
  v17[3] = &unk_1E7742280;
  timeoutCopy = timeout;
  v19 = v32;
  v20 = v30;
  v18 = v13;
  v15 = v13;
  dispatch_sync(storyQueue2, v17);

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  return timeout;
}

- (void)_preloadStoryResourcesAndWaitForBuffering
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = self->_signpostLog;
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "StoryExportRequestPreloadStoryResources", "preload story resources for export %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__194246;
  v35 = __Block_byref_object_dispose__194247;
  v36 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__194246;
  v30[4] = __Block_byref_object_dispose__194247;
  v31 = 0;
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke;
  block[3] = &unk_1E7746888;
  block[4] = self;
  block[5] = &buf;
  block[6] = v30;
  dispatch_sync(storyQueue, block);

  v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
  progress = [(_PXStoryExportOperation *)self progress];
  [progress addChild:v8 withPendingUnitCount:30];

  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__194246;
  v27[4] = __Block_byref_object_dispose__194247;
  v28 = 0;
  storyQueue2 = [(_PXStoryExportOperation *)self storyQueue];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_4;
  v21[3] = &unk_1E77421C0;
  v24 = v27;
  p_buf = &buf;
  v26 = 7;
  v11 = v8;
  v22 = v11;
  selfCopy = self;
  dispatch_sync(storyQueue2, v21);

  *v19 = *MEMORY[0x1E6960C88];
  v20 = *(MEMORY[0x1E6960C88] + 16);
  [(_PXStoryExportOperation *)self _waitForStoryStateWhileExportingCanContinueByWatchingChanges:0x200000 timeout:v19 verificationBlock:&__block_literal_global_331_194429];
  storyQueue3 = [(_PXStoryExportOperation *)self storyQueue];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_7;
  v18[3] = &unk_1E7742208;
  v18[4] = v27;
  v18[5] = &buf;
  v18[6] = v30;
  dispatch_sync(storyQueue3, v18);

  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    storyQueue4 = [(_PXStoryExportOperation *)self storyQueue];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68___PXStoryExportOperation__preloadStoryResourcesAndWaitForBuffering__block_invoke_10;
    v17[3] = &unk_1E774C648;
    v17[4] = self;
    dispatch_sync(storyQueue4, v17);
  }

  v14 = self->_signpostLog;
  v15 = v14;
  v16 = self->_signpostID;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *v19 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, OS_SIGNPOST_INTERVAL_END, v16, "StoryExportRequestPreloadStoryResources", "", v19, 2u);
  }

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(&buf, 8);
}

- (void)_setupStoryModel
{
  storyQueue = [(_PXStoryExportOperation *)self storyQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43___PXStoryExportOperation__setupStoryModel__block_invoke;
  v5[3] = &unk_1E77498A0;
  v5[4] = self;
  v5[5] = a2;
  dispatch_sync(storyQueue, v5);
}

- (void)_finishWriting
{
  if ([(_PXStoryExportOperation *)self isCancelled])
  {
    assetWriter = [(_PXStoryExportOperation *)self assetWriter];
    [assetWriter cancelWriting];
  }

  else
  {
    v4 = dispatch_semaphore_create(0);
    assetWriter2 = [(_PXStoryExportOperation *)self assetWriter];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41___PXStoryExportOperation__finishWriting__block_invoke;
    v17[3] = &unk_1E774C648;
    v18 = v4;
    assetWriter = v4;
    [assetWriter2 finishWritingWithCompletionHandler:v17];

    dispatch_semaphore_wait(assetWriter, 0xFFFFFFFFFFFFFFFFLL);
  }

  error = [(_PXStoryExportOperation *)self error];
  if (!error)
  {
    assetWriter3 = [(_PXStoryExportOperation *)self assetWriter];
    status = [assetWriter3 status];

    if (status != 3)
    {
      return;
    }

    error = [(_PXStoryExportOperation *)self assetWriter];
    v6Error = [error error];
    v15 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, v6Error, @"failed to finish writing asset", v10, v11, v12, v13, v14, v16);
    [(_PXStoryExportOperation *)self _setError:v15];
  }
}

- (void)_addMetadataToAssetWriter:(id)writer
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6988050];
  writerCopy = writer;
  v6 = objc_alloc_init(v4);
  [v6 setKeySpace:*MEMORY[0x1E6987850]];
  [v6 setKey:*MEMORY[0x1E69878C0]];
  [v6 setValue:@"Memories"];
  if ([(_PXStoryExportOperation *)self hasExtraAudioTrackWithoutMusic])
  {
    v7 = objc_alloc_init(MEMORY[0x1E6988050]);
    quickTimeUserDataMultitrackMemoryMovieType = [MEMORY[0x1E69C0720] quickTimeUserDataMultitrackMemoryMovieType];
    [v7 setIdentifier:quickTimeUserDataMultitrackMemoryMovieType];

    [v7 setKeySpace:*MEMORY[0x1E6987858]];
    v11 = 0;
    [v7 setDataType:*MEMORY[0x1E6960260]];
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:&v11 length:4];
    [v7 setValue:v9];

    v13[0] = v6;
    v13[1] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    [writerCopy setMetadata:v10];
  }

  else
  {
    v12 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [writerCopy setMetadata:v7];
  }
}

- (void)_setupWriter
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = self->_signpostLog;
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    *buf = 138543362;
    *&buf[4] = uniqueIdentifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "StoryExportRequestSetupVideoWriter", "begin video writer setup for export %{public}@", buf, 0xCu);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  destinationURL = [(_PXStoryExportOperation *)self destinationURL];
  path = [destinationURL path];
  v10 = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    destinationURL2 = [(_PXStoryExportOperation *)self destinationURL];
    v28 = 0;
    [defaultManager2 removeItemAtURL:destinationURL2 error:&v28];
    error = v28;

    if (error)
    {
      [(_PXStoryExportOperation *)self _setError:error];
      goto LABEL_23;
    }
  }

  v14 = objc_alloc(MEMORY[0x1E6987ED8]);
  destinationURL3 = [(_PXStoryExportOperation *)self destinationURL];
  v16 = *MEMORY[0x1E69874C0];
  v27 = 0;
  v17 = [v14 initWithURL:destinationURL3 fileType:v16 error:&v27];
  error = v27;

  if (error)
  {
    goto LABEL_8;
  }

  [(_PXStoryExportOperation *)self setAssetWriter:v17];
  [(_PXStoryExportOperation *)self _addVideoInputToAssetWriter:v17];
  if (![(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    goto LABEL_18;
  }

  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    [(_PXStoryExportOperation *)self _addMetadataToAssetWriter:v17];
  }

  if ([(_PXStoryExportOperation *)self hasAudioForExport])
  {
    [(_PXStoryExportOperation *)self _addAudioInputToAssetWriter:v17];
  }

  if ([(_PXStoryExportOperation *)self shouldContinueExporting])
  {
    if ([v17 startWriting])
    {
      assetWriter = [(_PXStoryExportOperation *)self assetWriter];
      *buf = *MEMORY[0x1E6960CC0];
      v30 = *(MEMORY[0x1E6960CC0] + 16);
      [assetWriter startSessionAtSourceTime:buf];
      error = 0;
      goto LABEL_9;
    }

    error = [v17 error];
    if (error)
    {
LABEL_8:
      assetWriter = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(10, error, @"Failed to setup asset writer", v18, v19, v20, v21, v22, v27);
      [(_PXStoryExportOperation *)self _setError:assetWriter];
LABEL_9:
    }
  }

  else
  {
LABEL_18:
    error = 0;
  }

  v24 = self->_signpostLog;
  v25 = v24;
  v26 = self->_signpostID;
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v25, OS_SIGNPOST_INTERVAL_END, v26, "StoryExportRequestSetupVideoWriter", "", buf, 2u);
  }

LABEL_23:
}

- (void)main
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_signpostLog;
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    uniqueIdentifier = [(_PXStoryExportOperation *)self uniqueIdentifier];
    destinationURL = [(_PXStoryExportOperation *)self destinationURL];
    *buf = 138543618;
    *&buf[4] = uniqueIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = destinationURL;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "StoryExportRequest", "beginning story export %{public}@ to %@", buf, 0x16u);
  }

  [(_PXStoryExportOperation *)self collectAnalyticsForExportBegin];
  objc_claimAutoreleasedReturnValue();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v14 = __Block_byref_object_copy__194246;
  v15 = __Block_byref_object_dispose__194247;
  v16 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __31___PXStoryExportOperation_main__block_invoke;
  v11 = &unk_1E774BD00;
  v12 = buf;
  px_dispatch_on_main_queue();
}

- (void)_signalSemaphoresForFailedExport
{
  layoutCompleteSemaphore = [(_PXStoryExportOperation *)self layoutCompleteSemaphore];
  dispatch_semaphore_signal(layoutCompleteSemaphore);

  completedWritingVideoFrameSemaphore = [(_PXStoryExportOperation *)self completedWritingVideoFrameSemaphore];
  dispatch_semaphore_signal(completedWritingVideoFrameSemaphore);
}

- (void)_setExportedStyle:(id)style
{
  styleCopy = style;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45___PXStoryExportOperation__setExportedStyle___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = styleCopy;
  v6 = styleCopy;
  dispatch_sync(stateQueue, v7);
}

- (PXStoryStyle)exportedStyle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__194246;
  v10 = __Block_byref_object_dispose__194247;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40___PXStoryExportOperation_exportedStyle__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setOutroDuration:(id *)duration
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45___PXStoryExportOperation__setOutroDuration___block_invoke;
  v4[3] = &unk_1E7749770;
  v4[4] = self;
  v5 = *duration;
  dispatch_sync(stateQueue, v4);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)outroDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A561E057;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v12 = 0;
  v13 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40___PXStoryExportOperation_outroDuration__block_invoke;
  v6[3] = &unk_1E77477B8;
  v6[5] = &v7;
  v6[6] = a3;
  v6[4] = self;
  dispatch_sync(stateQueue, v6);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

- (void)_setExportDuration:(id *)duration
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46___PXStoryExportOperation__setExportDuration___block_invoke;
  v4[3] = &unk_1E7749770;
  v4[4] = self;
  v5 = *duration;
  dispatch_sync(stateQueue, v4);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)exportDuration
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3810000000;
  v10 = &unk_1A561E057;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v12 = 0;
  v13 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41___PXStoryExportOperation_exportDuration__block_invoke;
  v6[3] = &unk_1E77477B8;
  v6[5] = &v7;
  v6[6] = a3;
  v6[4] = self;
  dispatch_sync(stateQueue, v6);
  *retstr = *(v8 + 4);
  _Block_object_dispose(&v7, 8);
  return result;
}

- (BOOL)hasExtraAudioTrackWithoutMusic
{
  appleMusicAsset = [(_PXStoryExportOperation *)self appleMusicAsset];
  v3 = appleMusicAsset != 0;

  return v3;
}

- (id)appleMusicAsset
{
  if (+[PXStorySettings isAppleMusicSharingEnabled]&& ([(_PXStoryExportOperation *)self initialSongResource], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    initialSongResource = [(_PXStoryExportOperation *)self initialSongResource];
  }

  else
  {
    initialSongResource = 0;
  }

  return initialSongResource;
}

- (void)_setHasAudioForExport:(BOOL)export
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49___PXStoryExportOperation__setHasAudioForExport___block_invoke;
  v4[3] = &unk_1E7749428;
  v4[4] = self;
  exportCopy = export;
  dispatch_sync(stateQueue, v4);
}

- (BOOL)hasAudioForExport
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44___PXStoryExportOperation_hasAudioForExport__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)status
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33___PXStoryExportOperation_status__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setStatus:(int64_t)status
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38___PXStoryExportOperation__setStatus___block_invoke;
  v4[3] = &unk_1E77498A0;
  v4[4] = self;
  v4[5] = status;
  dispatch_sync(stateQueue, v4);
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__194246;
  v10 = __Block_byref_object_dispose__194247;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32___PXStoryExportOperation_error__block_invoke;
  v5[3] = &unk_1E7749A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setError:(id)error
{
  errorCopy = error;
  stateQueue = self->_stateQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __37___PXStoryExportOperation__setError___block_invoke;
  v10 = &unk_1E774C620;
  selfCopy = self;
  v12 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(stateQueue, &v7);
  if (v6)
  {
    [(_PXStoryExportOperation *)self _signalSemaphoresForFailedExport:v7];
  }
}

- (BOOL)shouldContinueExporting
{
  error = [(_PXStoryExportOperation *)self error];
  if (error)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![(_PXStoryExportOperation *)self isCancelled];
  }

  return v4;
}

- (BOOL)isCancelled
{
  v3.receiver = self;
  v3.super_class = _PXStoryExportOperation;
  return [(_PXStoryExportOperation *)&v3 isCancelled];
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = _PXStoryExportOperation;
  [(_PXStoryExportOperation *)&v5 cancel];
  progress = [(_PXStoryExportOperation *)self progress];
  [progress setCancellationHandler:0];

  progress2 = [(_PXStoryExportOperation *)self progress];
  [progress2 cancel];

  [(_PXStoryExportOperation *)self _signalSemaphoresForFailedExport];
}

- (void)dealloc
{
  progress = self->_progress;
  if (progress)
  {
    [(NSProgress *)progress removeObserver:self forKeyPath:@"fractionCompleted"];
  }

  v4.receiver = self;
  v4.super_class = _PXStoryExportOperation;
  [(_PXStoryExportOperation *)&v4 dealloc];
}

- (_PXStoryExportOperation)initWithURL:(id)l configuration:(id)configuration qualityOfService:(int64_t)service initialSongResource:(id)resource progressHandler:(id)handler
{
  lCopy = l;
  configurationCopy = configuration;
  resourceCopy = resource;
  handlerCopy = handler;
  v28.receiver = self;
  v28.super_class = _PXStoryExportOperation;
  v17 = [(_PXStoryExportOperation *)&v28 init];
  if (v17)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v20 = *(v17 + 47);
    *(v17 + 47) = uUIDString;

    objc_storeStrong(v17 + 49, l);
    objc_storeStrong(v17 + 48, configuration);
    v21 = _Block_copy(handlerCopy);
    v22 = *(v17 + 53);
    *(v17 + 53) = v21;

    videoOptions = [configurationCopy videoOptions];
    v24 = *(v17 + 51);
    *(v17 + 51) = videoOptions;

    objc_storeStrong(v17 + 52, resource);
    v25 = dispatch_queue_create("com.apple.exportOperation.externalStateQueue", 0);
    v26 = *(v17 + 31);
    *(v17 + 31) = v25;

    *(v17 + 32) = 0;
    *(v17 + 284) = 0;
    *(v17 + 292) = 0;
    *(v17 + 276) = 0;
    [v17 setQualityOfService:service];
    px_dispatch_qos_from_nsqualityofservice();
  }

  return 0;
}

+ (id)_metadataItemWithKey:(id)key value:(id)value
{
  v5 = MEMORY[0x1E6988050];
  valueCopy = value;
  keyCopy = key;
  v8 = objc_alloc_init(v5);
  [v8 setKeySpace:*MEMORY[0x1E6987850]];
  [v8 setKey:keyCopy];

  [v8 setValue:valueCopy];

  return v8;
}

@end