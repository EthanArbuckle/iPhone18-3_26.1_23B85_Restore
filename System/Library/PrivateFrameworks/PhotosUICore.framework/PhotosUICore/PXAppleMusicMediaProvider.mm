@interface PXAppleMusicMediaProvider
+ (PXAudioAssetMediaProvider)sharedInstance;
- (BOOL)_canByPassExportRestriction;
- (PXAppleMusicMediaProvider)initWithQOSClass:(unsigned int)class;
- (id)_avAssetWithLocalMediaURL:(id)l entryPoint:(id)point fadeOutDuration:(id *)duration maximumDuration:(id *)maximumDuration audioMix:(id *)mix;
- (id)_localMediaURLForAsset:(id)asset createIntermediateDirectories:(BOOL)directories error:(id *)error;
- (int64_t)requestMediaForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (void)_handleDownloadFinishedForAsset:(id)asset downloadLocation:(id)location error:(id)error;
- (void)_queue_cancelRequest:(int64_t)request;
- (void)_queue_deliverResultForRequest:(id)request localMediaURL:(id)l error:(id)error;
- (void)_queue_handleDownloadFinishedForAsset:(id)asset downloadLocation:(id)location error:(id)error;
- (void)_queue_processRequest:(id)request;
- (void)_queue_startDownloadIfNeededForRequest:(id)request;
- (void)cancelRequest:(int64_t)request;
@end

@implementation PXAppleMusicMediaProvider

- (id)_avAssetWithLocalMediaURL:(id)l entryPoint:(id)point fadeOutDuration:(id *)duration maximumDuration:(id *)maximumDuration audioMix:(id *)mix
{
  v61[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  pointCopy = point;
  v13 = objc_alloc(MEMORY[0x1E6988168]);
  v60 = *MEMORY[0x1E6987BB8];
  v61[0] = MEMORY[0x1E695E118];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v15 = [v13 initWithURL:lCopy options:v14];

  [pointCopy time];
  memset(&v56, 0, sizeof(v56));
  CMTimeMakeWithSeconds(&v56, v16, PXAudioDefaultCMTimeScale);
  memset(&v55, 0, sizeof(v55));
  if (v15)
  {
    [v15 duration];
  }

  else
  {
    memset(&end, 0, 24);
  }

  start.start = v56;
  CMTimeRangeFromTimeToTime(&v55, &start.start, &end.start);
  if ((maximumDuration->var2 & 0x1D) == 1)
  {
    v54 = 0;
    *&end.start.value = *&maximumDuration->var0;
    end.start.epoch = maximumDuration->var3;
    v17 = [v15 px_assetByClampingToDuration:&end error:&v54];
    v18 = v54;

    if (v17)
    {
      v19 = 0;
      v15 = v17;
    }

    else
    {
      v20 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *&end.start.value = *&maximumDuration->var0;
        end.start.epoch = maximumDuration->var3;
        Seconds = CMTimeGetSeconds(&end.start);
        LODWORD(end.start.value) = 134218498;
        *(&end.start.value + 4) = Seconds;
        LOWORD(end.start.flags) = 2112;
        *(&end.start.flags + 2) = 0;
        HIWORD(end.start.epoch) = 2112;
        end.duration.value = v18;
        _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_ERROR, "Failed to trim asset to duration %.2fs asset for asset %@: %@", &end, 0x20u);
      }

      v15 = 0;
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  if (PXAudioAssetEntryPointIsNull(pointCopy))
  {
    *&end.start.value = *&duration->var0;
    end.start.epoch = duration->var3;
    *&start.start.value = *MEMORY[0x1E6960CC0];
    start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    v22 = CMTimeCompare(&end.start, &start.start) < 1;
  }

  else
  {
    v22 = 0;
  }

  if ((v19 | v22))
  {
    v23 = 0;
    if (!mix)
    {
      goto LABEL_41;
    }

LABEL_40:
    v35 = v23;
    *mix = v23;
    goto LABEL_41;
  }

  v24 = objc_alloc_init(MEMORY[0x1E6988048]);
  v53 = v18;
  end = v55;
  v25 = MEMORY[0x1E6960CC0];
  *&start.start.value = *MEMORY[0x1E6960CC0];
  start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
  v26 = [MEMORY[0x1E69C0708] insertTimeRange:&end ofAsset:v15 atTime:&start intoMutableComposition:v24 error:&v53];
  v39 = v53;

  if (v26)
  {
    v27 = [v24 tracksWithMediaType:*MEMORY[0x1E69875A0]];
    firstObject = [v27 firstObject];

    if (firstObject)
    {
      v23 = objc_alloc_init(MEMORY[0x1E6988038]);
      v29 = objc_alloc_init(MEMORY[0x1E6988040]);
      [v29 setTrackID:[firstObject trackID]];
      v49 = 0;
      v50 = &v49;
      v51 = 0x2020000000;
      v52 = 0;
      end.start.value = 0;
      *&end.start.timescale = &end;
      end.start.epoch = 0x3810000000;
      end.duration.value = &unk_1A561E057;
      *&end.duration.timescale = *&v25->value;
      epoch = v25->epoch;
      fadeInKeyTimeOffsets = [pointCopy fadeInKeyTimeOffsets];
      if ([fadeInKeyTimeOffsets count])
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __107__PXAppleMusicMediaProvider__avAssetWithLocalMediaURL_entryPoint_fadeOutDuration_maximumDuration_audioMix___block_invoke;
        v44[3] = &unk_1E7736CB0;
        v45 = pointCopy;
        v46 = v29;
        v47 = &v49;
        p_end = &end;
        [fadeInKeyTimeOffsets enumerateObjectsUsingBlock:v44];
      }

      else
      {
        *(v50 + 6) = 1065353216;
      }

      if ((duration->var2 & 0x1D) == 1)
      {
        *&start.start.value = *&duration->var0;
        start.start.epoch = duration->var3;
        time2 = *v25;
        if (CMTimeCompare(&start.start, &time2) >= 1)
        {
          memset(&time2, 0, sizeof(time2));
          v30 = *&end.start.timescale;
          if (v24)
          {
            [v24 duration];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          rhs = *duration;
          CMTimeSubtract(&start.start, &lhs, &rhs);
          lhs = *(v30 + 32);
          CMTimeMaximum(&time2, &lhs, &start.start);
          v31 = *(v50 + 6);
          if (v24)
          {
            [v24 duration];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          rhs = time2;
          CMTimeRangeFromTimeToTime(&start, &rhs, &lhs);
          LODWORD(v32) = v31;
          [v29 setVolumeRampFromStartVolume:&start toEndVolume:v32 timeRange:0.0];
        }
      }

      v57 = v29;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
      [v23 setInputParameters:v33];

      _Block_object_dispose(&end, 8);
      _Block_object_dispose(&v49, 8);
    }

    else
    {
      v29 = PLAudioPlaybackGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LODWORD(end.start.value) = 138412546;
        *(&end.start.value + 4) = v15;
        LOWORD(end.start.flags) = 2112;
        *(&end.start.flags + 2) = v39;
        _os_log_impl(&dword_1A3C1C000, v29, OS_LOG_TYPE_ERROR, "Failed to find audio track for apply audio ramping to asset %@: %@", &end, 0x16u);
      }

      v23 = 0;
    }

    v34 = [v24 copy];
    v15 = v34;
  }

  else
  {
    firstObject = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      LODWORD(end.start.value) = 138412546;
      *(&end.start.value + 4) = v15;
      LOWORD(end.start.flags) = 2112;
      *(&end.start.flags + 2) = v39;
      _os_log_impl(&dword_1A3C1C000, firstObject, OS_LOG_TYPE_ERROR, "Failed to create AVComposition to apply audio ramping to asset %@: %@", &end, 0x16u);
    }

    v23 = 0;
  }

  v18 = v39;
  if (mix)
  {
    goto LABEL_40;
  }

LABEL_41:
  v36 = v15;

  return v36;
}

double __107__PXAppleMusicMediaProvider__avAssetWithLocalMediaURL_entryPoint_fadeOutDuration_maximumDuration_audioMix___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 doubleValue];
  [v3 fadeInGainAtOffset:?];
  v6 = v5;
  memset(&v16, 0, sizeof(v16));
  [v4 doubleValue];
  v8 = v7;

  CMTimeMakeWithSeconds(&v16, v8, PXAudioDefaultCMTimeScale);
  v9 = a1[5];
  LODWORD(v8) = *(*(a1[6] + 8) + 24);
  start = *(*(a1[7] + 8) + 32);
  v13 = v16;
  CMTimeRangeFromTimeToTime(&v15, &start, &v13);
  LODWORD(v10) = LODWORD(v8);
  LODWORD(v11) = v6;
  [v9 setVolumeRampFromStartVolume:&v15 toEndVolume:v10 timeRange:v11];
  result = *&v16.value;
  *(*(a1[7] + 8) + 32) = v16;
  *(*(a1[6] + 8) + 24) = v6;
  return result;
}

- (void)_queue_deliverResultForRequest:(id)request localMediaURL:(id)l error:(id)error
{
  v41[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  lCopy = l;
  errorCopy = error;
  asset = [requestCopy asset];
  signpostID = [requestCopy signpostID];
  if (signpostID)
  {
    v13 = signpostID;
    v14 = MEMORY[0x1E6991F28];
    v15 = *MEMORY[0x1E6991C98];
    v40[0] = *MEMORY[0x1E6991E20];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v40[1] = *MEMORY[0x1E6991E40];
    v41[0] = v17;
    v41[1] = @"com.apple.photos.CPAnalytics.appleMusicSongDownloaded";
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v18 = asset;
    selfCopy = self;
    v21 = v20 = lCopy;
    [v14 endSignpost:v13 forEventName:v15 withPayload:v21];

    lCopy = v20;
    self = selfCopy;
    asset = v18;
  }

  if (errorCopy)
  {
    v38 = *MEMORY[0x1E696AA08];
    v39 = errorCopy;
    options = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    entryPoint = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PXAppleMusicMediaProviderErrorDomain" code:3 userInfo:options];
    v36 = @"Error";
    v37 = entryPoint;
    loudnessMainPeak = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v25 = 0;
    v26 = 0;
  }

  else
  {
    loudnessMainPeak = [asset loudnessMainPeak];
    if (loudnessMainPeak)
    {
      loudnessMainValue = [asset loudnessMainValue];

      if (loudnessMainValue)
      {
        v34[0] = @"PeakdBFS";
        loudnessMainPeak2 = [asset loudnessMainPeak];
        v34[1] = @"ProgramLoudnessLKFS";
        v35[0] = loudnessMainPeak2;
        loudnessMainValue2 = [asset loudnessMainValue];
        v35[1] = loudnessMainValue2;
        loudnessMainPeak = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      }

      else
      {
        loudnessMainPeak = 0;
      }
    }

    options = [requestCopy options];
    entryPoint = [options entryPoint];
    if (options)
    {
      [options fadeOutDuration];
      [options maximumDuration];
    }

    else
    {
      memset(v33, 0, sizeof(v33));
      memset(v32, 0, sizeof(v32));
    }

    v31 = 0;
    v26 = [(PXAppleMusicMediaProvider *)self _avAssetWithLocalMediaURL:lCopy entryPoint:entryPoint fadeOutDuration:v33 maximumDuration:v32 audioMix:&v31];
    v25 = v31;
  }

  resultHandler = [requestCopy resultHandler];
  (resultHandler)[2](resultHandler, v26, v25, loudnessMainPeak);
}

- (void)_queue_handleDownloadFinishedForAsset:(id)asset downloadLocation:(id)location error:(id)error
{
  v34 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  locationCopy = location;
  errorCopy = error;
  v11 = 0;
  v24 = errorCopy;
  if (locationCopy)
  {
    v12 = errorCopy;
    if (!errorCopy)
    {
      v32 = 0;
      v13 = [(PXAppleMusicMediaProvider *)self _localMediaURLForAsset:assetCopy createIntermediateDirectories:1 error:&v32, 0];
      v12 = v32;
      if (v13)
      {
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v31 = v12;
        v15 = [defaultManager moveItemAtURL:locationCopy toURL:v13 error:&v31];
        v16 = v31;

        if (v15)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }

        v12 = v16;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v12 = errorCopy;
  }

  v26 = locationCopy;
  v17 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:assetCopy, v24];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * i);
        v23 = [(NSMutableDictionary *)self->_queue_requestByID objectForKeyedSubscript:v22];
        [(NSMutableDictionary *)self->_queue_requestByID setObject:0 forKeyedSubscript:v22];
        [(PXAppleMusicMediaProvider *)self _queue_deliverResultForRequest:v23 localMediaURL:v11 error:v12];
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v19);
  }

  [v17 removeAllObjects];
  [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:0 forKeyedSubscript:assetCopy];
}

- (void)_handleDownloadFinishedForAsset:(id)asset downloadLocation:(id)location error:(id)error
{
  assetCopy = asset;
  locationCopy = location;
  errorCopy = error;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PXAppleMusicMediaProvider__handleDownloadFinishedForAsset_downloadLocation_error___block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v19, &location);
  v16 = assetCopy;
  v17 = locationCopy;
  v18 = errorCopy;
  v12 = errorCopy;
  v13 = locationCopy;
  v14 = assetCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __84__PXAppleMusicMediaProvider__handleDownloadFinishedForAsset_downloadLocation_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _queue_handleDownloadFinishedForAsset:*(a1 + 32) downloadLocation:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_queue_startDownloadIfNeededForRequest:(id)request
{
  v37[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  asset = [requestCopy asset];
  v6 = [(PXAppleMusicMediaProvider *)self _localMediaURLForAsset:asset createIntermediateDirectories:0 error:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v6 path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (v9)
  {
    [(PXAppleMusicMediaProvider *)self _queue_deliverResultForRequest:requestCopy localMediaURL:v6 error:0];
  }

  else
  {
    options = [requestCopy options];
    networkAccessAllowed = [options networkAccessAllowed];

    if (networkAccessAllowed)
    {
      v12 = [(NSMutableDictionary *)self->_queue_downloaderByAsset objectForKeyedSubscript:asset];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        introPreviewURL = [asset introPreviewURL];
        objc_initWeak(&location, self);
        mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __68__PXAppleMusicMediaProvider__queue_startDownloadIfNeededForRequest___block_invoke;
        v30[3] = &unk_1E7736C88;
        objc_copyWeak(&v32, &location);
        v24 = asset;
        v31 = v24;
        v13 = [mEMORY[0x1E696AF78] downloadTaskWithURL:introPreviewURL completionHandler:v30];

        [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:v13 forKeyedSubscript:v24];
        [requestCopy setSignpostID:{objc_msgSend(MEMORY[0x1E6991F28], "startSignpost")}];

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }

      requestID = [requestCopy requestID];
      queue_requestByID = self->_queue_requestByID;
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:requestID];
      [(NSMutableDictionary *)queue_requestByID setObject:requestCopy forKeyedSubscript:v27];

      v28 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:asset];
      if (!v28)
      {
        v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [(NSMutableDictionary *)self->_queue_requestIDsByAsset setObject:v28 forKeyedSubscript:asset];
      }

      v29 = [MEMORY[0x1E696AD98] numberWithInteger:requestID];
      [v28 addObject:v29];

      [v13 resume];
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      identifier = [asset identifier];
      v16 = [v14 initWithFormat:@"Could not get media for song with identifier %@ because it is not local and downloading is not allowed by the request options.", identifier];

      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E696A278];
      v37[0] = v16;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v19 = [v17 initWithDomain:@"PXAppleMusicMediaProviderErrorDomain" code:2 userInfo:v18];

      v34 = @"Error";
      v35 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      resultHandler = [requestCopy resultHandler];
      (resultHandler)[2](resultHandler, 0, 0, v20);
    }
  }
}

void __68__PXAppleMusicMediaProvider__queue_startDownloadIfNeededForRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleDownloadFinishedForAsset:*(a1 + 32) downloadLocation:v7 error:v6];
}

- (void)_queue_processRequest:(id)request
{
  v16[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  asset = [requestCopy asset];
  options = [requestCopy options];
  intent = [options intent];

  if (intent == 2)
  {
    v8 = objc_alloc_init(PXMusicCuratorAudioAssetRequestOptions);
    [(PXMusicCuratorAudioAssetRequestOptions *)v8 setForceMetadataRefetch:1];
    photoLibrary = [asset photoLibrary];
    if (!photoLibrary)
    {
      PXAssertGetLog();
    }

    storeID = [asset storeID];
    v16[0] = storeID;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__PXAppleMusicMediaProvider__queue_processRequest___block_invoke;
    v13[3] = &unk_1E7736C60;
    v13[4] = self;
    v14 = asset;
    v15 = requestCopy;
    v12 = [PXMusicCurator requestAudioAssetFetchResultForAdamIDs:v11 requestOptions:v8 photoLibrary:photoLibrary completionHandler:v13];
  }

  else
  {
    [(PXAppleMusicMediaProvider *)self _queue_startDownloadIfNeededForRequest:requestCopy];
  }
}

void __51__PXAppleMusicMediaProvider__queue_processRequest___block_invoke(id *a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 firstObject];
  if ([v3 flags] & 2) != 0 || (objc_msgSend(a1[4], "_canByPassExportRestriction"))
  {
    [a1[4] _queue_startDownloadIfNeededForRequest:a1[6]];
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [a1[5] identifier];
    v6 = [v4 initWithFormat:@"Asset can't be shared, identifier %@", v5];

    v7 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E696A278];
    v15[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v7 initWithDomain:@"PXAppleMusicMediaProviderErrorDomain" code:4 userInfo:v8];

    v12 = @"Error";
    v13 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v11 = [a1[6] resultHandler];
    (v11)[2](v11, 0, 0, v10);
  }
}

- (BOOL)_canByPassExportRestriction
{
  if (!PFOSVariantHasInternalUI() || !_os_feature_enabled_impl())
  {
    return 0;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [bundleIdentifier isEqualToString:@"com.apple.plphotosctl"];

  return v4;
}

- (id)_localMediaURLForAsset:(id)asset createIntermediateDirectories:(BOOL)directories error:(id *)error
{
  directoriesCopy = directories;
  assetCopy = asset;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.mobileslideshow"])
  {
    v25 = 0;
    v11 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v25];
    v12 = v25;
    if (v11)
    {
      temporaryDirectory = [v11 URLByAppendingPathComponent:bundleIdentifier];
    }

    else
    {
      temporaryDirectory = 0;
    }

    if (!temporaryDirectory)
    {
LABEL_17:
      v16 = 0;
      if (!error)
      {
        goto LABEL_12;
      }

LABEL_11:
      v22 = v12;
      *error = v12;
      goto LABEL_12;
    }
  }

  else
  {
    temporaryDirectory = [defaultManager temporaryDirectory];
    v12 = 0;
    if (!temporaryDirectory)
    {
      goto LABEL_17;
    }
  }

  v14 = [temporaryDirectory URLByAppendingPathComponent:@"AppleMusicMedia" isDirectory:1];
  if (directoriesCopy)
  {
    v24 = v12;
    [defaultManager createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v24];
    v15 = v24;

    v12 = v15;
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
    introPreviewURL = [assetCopy introPreviewURL];
    lastPathComponent = [introPreviewURL lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];

    identifier = [assetCopy identifier];
    v21 = [identifier stringByAppendingPathExtension:pathExtension];

    v16 = [v14 URLByAppendingPathComponent:v21 isDirectory:0];
  }

  if (error)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v16;
}

- (void)_queue_cancelRequest:(int64_t)request
{
  v19[1] = *MEMORY[0x1E69E9840];
  queue_requestByID = self->_queue_requestByID;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)queue_requestByID objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_queue_requestByID;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:request];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    asset = [v7 asset];
    v11 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:asset];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:request];
    [v11 removeObject:v12];

    if (![v11 count])
    {
      v13 = [(NSMutableDictionary *)self->_queue_downloaderByAsset objectForKeyedSubscript:asset];
      v14 = v13;
      if (v13)
      {
        [v13 cancel];
      }

      [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:0 forKeyedSubscript:asset];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v18 = @"Error";
      v19[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      resultHandler = [v7 resultHandler];
      (resultHandler)[2](resultHandler, 0, 0, v16);
    }
  }
}

- (void)cancelRequest:(int64_t)request
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PXAppleMusicMediaProvider_cancelRequest___block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v7, &location);
  v7[1] = request;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __43__PXAppleMusicMediaProvider_cancelRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_cancelRequest:*(a1 + 40)];
}

- (int64_t)requestMediaForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  v38[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    originalAsset = [assetCopy originalAsset];

    assetCopy = originalAsset;
  }

  v13 = assetCopy;
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      px_descriptionForAssertionMessage = [v13 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicMediaProvider.m" lineNumber:111 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"asset", v29, px_descriptionForAssertionMessage}];
    }
  }

  introPreviewURL = [v13 introPreviewURL];

  if (introPreviewURL)
  {
    _nextRequestID = [(PXAppleMusicMediaProvider *)self _nextRequestID];
    if (!optionsCopy)
    {
      optionsCopy = objc_alloc_init(PXAudioRequestOptions);
    }

    v16 = [[_PXAppleMusicMediaProviderRequest alloc] initWithAsset:v13 options:optionsCopy requestID:_nextRequestID resultHandler:handlerCopy];
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__PXAppleMusicMediaProvider_requestMediaForAsset_options_resultHandler___block_invoke;
    block[3] = &unk_1E774B248;
    objc_copyWeak(&v33, &location);
    v32 = v16;
    v18 = v16;
    dispatch_async(queue, block);

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    identifier = [v13 identifier];
    v21 = [v19 initWithFormat:@"Could not find apple music preview for asset with identifier %@", identifier];

    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E696A278];
    v38[0] = v21;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v24 = [v22 initWithDomain:@"PXAppleMusicMediaProviderErrorDomain" code:1 userInfo:v23];

    v35 = @"Error";
    v36 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v25);

    _nextRequestID = 0;
  }

  return _nextRequestID;
}

void __72__PXAppleMusicMediaProvider_requestMediaForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_processRequest:*(a1 + 32)];
}

- (PXAppleMusicMediaProvider)initWithQOSClass:(unsigned int)class
{
  v4.receiver = self;
  v4.super_class = PXAppleMusicMediaProvider;
  if ([(PXAppleMusicMediaProvider *)&v4 init])
  {
    px_dispatch_queue_create_serial();
  }

  return 0;
}

+ (PXAudioAssetMediaProvider)sharedInstance
{
  if (sharedInstance_onceToken_89252 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_89252, &__block_literal_global_89253);
  }

  v3 = sharedInstance_sharedProvider;

  return v3;
}

void __43__PXAppleMusicMediaProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXAppleMusicMediaProvider);
  v1 = sharedInstance_sharedProvider;
  sharedInstance_sharedProvider = v0;
}

@end