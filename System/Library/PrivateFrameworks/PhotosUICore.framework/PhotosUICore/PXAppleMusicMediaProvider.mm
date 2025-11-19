@interface PXAppleMusicMediaProvider
+ (PXAudioAssetMediaProvider)sharedInstance;
- (BOOL)_canByPassExportRestriction;
- (PXAppleMusicMediaProvider)initWithQOSClass:(unsigned int)a3;
- (id)_avAssetWithLocalMediaURL:(id)a3 entryPoint:(id)a4 fadeOutDuration:(id *)a5 maximumDuration:(id *)a6 audioMix:(id *)a7;
- (id)_localMediaURLForAsset:(id)a3 createIntermediateDirectories:(BOOL)a4 error:(id *)a5;
- (int64_t)requestMediaForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)_handleDownloadFinishedForAsset:(id)a3 downloadLocation:(id)a4 error:(id)a5;
- (void)_queue_cancelRequest:(int64_t)a3;
- (void)_queue_deliverResultForRequest:(id)a3 localMediaURL:(id)a4 error:(id)a5;
- (void)_queue_handleDownloadFinishedForAsset:(id)a3 downloadLocation:(id)a4 error:(id)a5;
- (void)_queue_processRequest:(id)a3;
- (void)_queue_startDownloadIfNeededForRequest:(id)a3;
- (void)cancelRequest:(int64_t)a3;
@end

@implementation PXAppleMusicMediaProvider

- (id)_avAssetWithLocalMediaURL:(id)a3 entryPoint:(id)a4 fadeOutDuration:(id *)a5 maximumDuration:(id *)a6 audioMix:(id *)a7
{
  v61[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = objc_alloc(MEMORY[0x1E6988168]);
  v60 = *MEMORY[0x1E6987BB8];
  v61[0] = MEMORY[0x1E695E118];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v15 = [v13 initWithURL:v11 options:v14];

  [v12 time];
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
  if ((a6->var2 & 0x1D) == 1)
  {
    v54 = 0;
    *&end.start.value = *&a6->var0;
    end.start.epoch = a6->var3;
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
        *&end.start.value = *&a6->var0;
        end.start.epoch = a6->var3;
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

  if (PXAudioAssetEntryPointIsNull(v12))
  {
    *&end.start.value = *&a5->var0;
    end.start.epoch = a5->var3;
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
    if (!a7)
    {
      goto LABEL_41;
    }

LABEL_40:
    v35 = v23;
    *a7 = v23;
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
    v28 = [v27 firstObject];

    if (v28)
    {
      v23 = objc_alloc_init(MEMORY[0x1E6988038]);
      v29 = objc_alloc_init(MEMORY[0x1E6988040]);
      [v29 setTrackID:[v28 trackID]];
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
      v38 = [v12 fadeInKeyTimeOffsets];
      if ([v38 count])
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __107__PXAppleMusicMediaProvider__avAssetWithLocalMediaURL_entryPoint_fadeOutDuration_maximumDuration_audioMix___block_invoke;
        v44[3] = &unk_1E7736CB0;
        v45 = v12;
        v46 = v29;
        v47 = &v49;
        p_end = &end;
        [v38 enumerateObjectsUsingBlock:v44];
      }

      else
      {
        *(v50 + 6) = 1065353216;
      }

      if ((a5->var2 & 0x1D) == 1)
      {
        *&start.start.value = *&a5->var0;
        start.start.epoch = a5->var3;
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

          rhs = *a5;
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
    v28 = PLAudioPlaybackGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LODWORD(end.start.value) = 138412546;
      *(&end.start.value + 4) = v15;
      LOWORD(end.start.flags) = 2112;
      *(&end.start.flags + 2) = v39;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "Failed to create AVComposition to apply audio ramping to asset %@: %@", &end, 0x16u);
    }

    v23 = 0;
  }

  v18 = v39;
  if (a7)
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

- (void)_queue_deliverResultForRequest:(id)a3 localMediaURL:(id)a4 error:(id)a5
{
  v41[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 asset];
  v12 = [v8 signpostID];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0x1E6991F28];
    v15 = *MEMORY[0x1E6991C98];
    v40[0] = *MEMORY[0x1E6991E20];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v40[1] = *MEMORY[0x1E6991E40];
    v41[0] = v17;
    v41[1] = @"com.apple.photos.CPAnalytics.appleMusicSongDownloaded";
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    v18 = v11;
    v19 = self;
    v21 = v20 = v9;
    [v14 endSignpost:v13 forEventName:v15 withPayload:v21];

    v9 = v20;
    self = v19;
    v11 = v18;
  }

  if (v10)
  {
    v38 = *MEMORY[0x1E696AA08];
    v39 = v10;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v23 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PXAppleMusicMediaProviderErrorDomain" code:3 userInfo:v22];
    v36 = @"Error";
    v37 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v24 = [v11 loudnessMainPeak];
    if (v24)
    {
      v27 = [v11 loudnessMainValue];

      if (v27)
      {
        v34[0] = @"PeakdBFS";
        v28 = [v11 loudnessMainPeak];
        v34[1] = @"ProgramLoudnessLKFS";
        v35[0] = v28;
        v29 = [v11 loudnessMainValue];
        v35[1] = v29;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      }

      else
      {
        v24 = 0;
      }
    }

    v22 = [v8 options];
    v23 = [v22 entryPoint];
    if (v22)
    {
      [v22 fadeOutDuration];
      [v22 maximumDuration];
    }

    else
    {
      memset(v33, 0, sizeof(v33));
      memset(v32, 0, sizeof(v32));
    }

    v31 = 0;
    v26 = [(PXAppleMusicMediaProvider *)self _avAssetWithLocalMediaURL:v9 entryPoint:v23 fadeOutDuration:v33 maximumDuration:v32 audioMix:&v31];
    v25 = v31;
  }

  v30 = [v8 resultHandler];
  (v30)[2](v30, v26, v25, v24);
}

- (void)_queue_handleDownloadFinishedForAsset:(id)a3 downloadLocation:(id)a4 error:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  v24 = v10;
  if (v9)
  {
    v12 = v10;
    if (!v10)
    {
      v32 = 0;
      v13 = [(PXAppleMusicMediaProvider *)self _localMediaURLForAsset:v8 createIntermediateDirectories:1 error:&v32, 0];
      v12 = v32;
      if (v13)
      {
        v14 = [MEMORY[0x1E696AC08] defaultManager];
        v31 = v12;
        v15 = [v14 moveItemAtURL:v9 toURL:v13 error:&v31];
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
    v12 = v10;
  }

  v26 = v9;
  v17 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:v8, v24];
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
  [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:0 forKeyedSubscript:v8];
}

- (void)_handleDownloadFinishedForAsset:(id)a3 downloadLocation:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PXAppleMusicMediaProvider__handleDownloadFinishedForAsset_downloadLocation_error___block_invoke;
  block[3] = &unk_1E7748228;
  objc_copyWeak(&v19, &location);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, block);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __84__PXAppleMusicMediaProvider__handleDownloadFinishedForAsset_downloadLocation_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _queue_handleDownloadFinishedForAsset:*(a1 + 32) downloadLocation:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_queue_startDownloadIfNeededForRequest:(id)a3
{
  v37[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [(PXAppleMusicMediaProvider *)self _localMediaURLForAsset:v5 createIntermediateDirectories:0 error:0];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8];

  if (v9)
  {
    [(PXAppleMusicMediaProvider *)self _queue_deliverResultForRequest:v4 localMediaURL:v6 error:0];
  }

  else
  {
    v10 = [v4 options];
    v11 = [v10 networkAccessAllowed];

    if (v11)
    {
      v12 = [(NSMutableDictionary *)self->_queue_downloaderByAsset objectForKeyedSubscript:v5];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v22 = [v5 introPreviewURL];
        objc_initWeak(&location, self);
        v23 = [MEMORY[0x1E696AF78] sharedSession];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __68__PXAppleMusicMediaProvider__queue_startDownloadIfNeededForRequest___block_invoke;
        v30[3] = &unk_1E7736C88;
        objc_copyWeak(&v32, &location);
        v24 = v5;
        v31 = v24;
        v13 = [v23 downloadTaskWithURL:v22 completionHandler:v30];

        [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:v13 forKeyedSubscript:v24];
        [v4 setSignpostID:{objc_msgSend(MEMORY[0x1E6991F28], "startSignpost")}];

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);
      }

      v25 = [v4 requestID];
      queue_requestByID = self->_queue_requestByID;
      v27 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
      [(NSMutableDictionary *)queue_requestByID setObject:v4 forKeyedSubscript:v27];

      v28 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:v5];
      if (!v28)
      {
        v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [(NSMutableDictionary *)self->_queue_requestIDsByAsset setObject:v28 forKeyedSubscript:v5];
      }

      v29 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
      [v28 addObject:v29];

      [v13 resume];
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v15 = [v5 identifier];
      v16 = [v14 initWithFormat:@"Could not get media for song with identifier %@ because it is not local and downloading is not allowed by the request options.", v15];

      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E696A278];
      v37[0] = v16;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      v19 = [v17 initWithDomain:@"PXAppleMusicMediaProviderErrorDomain" code:2 userInfo:v18];

      v34 = @"Error";
      v35 = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v21 = [v4 resultHandler];
      (v21)[2](v21, 0, 0, v20);
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

- (void)_queue_processRequest:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 asset];
  v6 = [v4 options];
  v7 = [v6 intent];

  if (v7 == 2)
  {
    v8 = objc_alloc_init(PXMusicCuratorAudioAssetRequestOptions);
    [(PXMusicCuratorAudioAssetRequestOptions *)v8 setForceMetadataRefetch:1];
    v9 = [v5 photoLibrary];
    if (!v9)
    {
      PXAssertGetLog();
    }

    v10 = [v5 storeID];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__PXAppleMusicMediaProvider__queue_processRequest___block_invoke;
    v13[3] = &unk_1E7736C60;
    v13[4] = self;
    v14 = v5;
    v15 = v4;
    v12 = [PXMusicCurator requestAudioAssetFetchResultForAdamIDs:v11 requestOptions:v8 photoLibrary:v9 completionHandler:v13];
  }

  else
  {
    [(PXAppleMusicMediaProvider *)self _queue_startDownloadIfNeededForRequest:v4];
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

  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.plphotosctl"];

  return v4;
}

- (id)_localMediaURLForAsset:(id)a3 createIntermediateDirectories:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 bundleIdentifier];

  if ([v10 isEqualToString:@"com.apple.mobileslideshow"])
  {
    v25 = 0;
    v11 = [v8 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v25];
    v12 = v25;
    if (v11)
    {
      v13 = [v11 URLByAppendingPathComponent:v10];
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
LABEL_17:
      v16 = 0;
      if (!a5)
      {
        goto LABEL_12;
      }

LABEL_11:
      v22 = v12;
      *a5 = v12;
      goto LABEL_12;
    }
  }

  else
  {
    v13 = [v8 temporaryDirectory];
    v12 = 0;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  v14 = [v13 URLByAppendingPathComponent:@"AppleMusicMedia" isDirectory:1];
  if (v6)
  {
    v24 = v12;
    [v8 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:&v24];
    v15 = v24;

    v12 = v15;
  }

  if (v12)
  {
    v16 = 0;
  }

  else
  {
    v17 = [v7 introPreviewURL];
    v18 = [v17 lastPathComponent];
    v19 = [v18 pathExtension];

    v20 = [v7 identifier];
    v21 = [v20 stringByAppendingPathExtension:v19];

    v16 = [v14 URLByAppendingPathComponent:v21 isDirectory:0];
  }

  if (a5)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v16;
}

- (void)_queue_cancelRequest:(int64_t)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  queue_requestByID = self->_queue_requestByID;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)queue_requestByID objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_queue_requestByID;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];

    v10 = [v7 asset];
    v11 = [(NSMutableDictionary *)self->_queue_requestIDsByAsset objectForKeyedSubscript:v10];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v11 removeObject:v12];

    if (![v11 count])
    {
      v13 = [(NSMutableDictionary *)self->_queue_downloaderByAsset objectForKeyedSubscript:v10];
      v14 = v13;
      if (v13)
      {
        [v13 cancel];
      }

      [(NSMutableDictionary *)self->_queue_downloaderByAsset setObject:0 forKeyedSubscript:v10];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v18 = @"Error";
      v19[0] = v15;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v17 = [v7 resultHandler];
      (v17)[2](v17, 0, 0, v16);
    }
  }
}

- (void)cancelRequest:(int64_t)a3
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PXAppleMusicMediaProvider_cancelRequest___block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v7, &location);
  v7[1] = a3;
  dispatch_async(queue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __43__PXAppleMusicMediaProvider_cancelRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_cancelRequest:*(a1 + 40)];
}

- (int64_t)requestMediaForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v9 originalAsset];

    v9 = v12;
  }

  v13 = v9;
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v13 px_descriptionForAssertionMessage];
      [v27 handleFailureInMethod:a2 object:self file:@"PXAppleMusicMediaProvider.m" lineNumber:111 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"asset", v29, v30}];
    }
  }

  v14 = [v13 introPreviewURL];

  if (v14)
  {
    v15 = [(PXAppleMusicMediaProvider *)self _nextRequestID];
    if (!v10)
    {
      v10 = objc_alloc_init(PXAudioRequestOptions);
    }

    v16 = [[_PXAppleMusicMediaProviderRequest alloc] initWithAsset:v13 options:v10 requestID:v15 resultHandler:v11];
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
    v20 = [v13 identifier];
    v21 = [v19 initWithFormat:@"Could not find apple music preview for asset with identifier %@", v20];

    v22 = objc_alloc(MEMORY[0x1E696ABC0]);
    v37 = *MEMORY[0x1E696A278];
    v38[0] = v21;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    v24 = [v22 initWithDomain:@"PXAppleMusicMediaProviderErrorDomain" code:1 userInfo:v23];

    v35 = @"Error";
    v36 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    (*(v11 + 2))(v11, 0, 0, v25);

    v15 = 0;
  }

  return v15;
}

void __72__PXAppleMusicMediaProvider_requestMediaForAsset_options_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _queue_processRequest:*(a1 + 32)];
}

- (PXAppleMusicMediaProvider)initWithQOSClass:(unsigned int)a3
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