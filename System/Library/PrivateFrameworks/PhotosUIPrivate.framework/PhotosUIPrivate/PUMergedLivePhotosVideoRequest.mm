@interface PUMergedLivePhotosVideoRequest
- (NSError)error;
- (PUMergedLivePhotosVideo)mergedVideo;
- (PUMergedLivePhotosVideoRequest)init;
- (PUMergedLivePhotosVideoRequest)initWithAssetReference:(id)a3 dataSource:(id)a4 dataCache:(id)a5;
- (id)_workQueue_fetchMergeableAssets;
- (int64_t)state;
- (void)_stateQueue_signalStateChange;
- (void)_workQueue_finishWithMergedVideo:(id)a3 error:(id)a4;
- (void)_workQueue_generateVideoUsingAssets:(id)a3;
- (void)_workQueue_handleGeneratorDidChangeState;
- (void)_workQueue_start;
- (void)cancel;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)start;
@end

@implementation PUMergedLivePhotosVideoRequest

- (PUMergedLivePhotosVideoRequest)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUMergedLivePhotosVideoRequest.m" lineNumber:223 description:{@"%s is not available as initializer", "-[PUMergedLivePhotosVideoRequest init]"}];

  abort();
}

- (void)_stateQueue_signalStateChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PUMergedLivePhotosVideoRequest__stateQueue_signalStateChange__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __63__PUMergedLivePhotosVideoRequest__stateQueue_signalStateChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__PUMergedLivePhotosVideoRequest__stateQueue_signalStateChange__block_invoke_2;
  v3[3] = &unk_1E7B806B0;
  v3[4] = v1;
  return [v1 performChanges:v3];
}

- (void)_workQueue_finishWithMergedVideo:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__PUMergedLivePhotosVideoRequest__workQueue_finishWithMergedVideo_error___block_invoke;
  block[3] = &unk_1E7B809F0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(stateQueue, block);
}

uint64_t __73__PUMergedLivePhotosVideoRequest__workQueue_finishWithMergedVideo_error___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 128) == 1)
  {
    v2 = result;
    objc_storeStrong((v1 + 136), *(result + 40));
    objc_storeStrong((*(v2 + 32) + 144), *(v2 + 48));
    v3 = 3;
    if (*(v2 + 48))
    {
      v3 = 4;
    }

    *(*(v2 + 32) + 128) = v3;
    v4 = PLLivePhotoPlaybackGetLog();
    v5 = v4;
    v6 = *(*(v2 + 32) + 96);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v5, OS_SIGNPOST_INTERVAL_END, v6, "LivePhotoRequestProcessing", "", v7, 2u);
    }

    return [*(v2 + 32) _stateQueue_signalStateChange];
  }

  return result;
}

- (void)_workQueue_handleGeneratorDidChangeState
{
  v5 = self->_workQueue_generator;
  if ([(PUCompositeVideoGenerator *)v5 state]== 2)
  {
    v3 = [(PUCompositeVideoGenerator *)v5 playbackVideo];
    v4 = [(PUCompositeVideoGenerator *)v5 error];
    [(PUMergedLivePhotosVideoRequest *)self _workQueue_finishWithMergedVideo:v3 error:v4];
  }
}

- (void)_workQueue_generateVideoUsingAssets:(id)a3
{
  v6 = a3;
  if ([(PUMergedLivePhotosVideoRequest *)self state]== 1)
  {
    if ([v6 count])
    {
      v4 = [[PUCompositeVideoGenerator alloc] initWithAssets:v6 outputType:0 onlyAllowOverlappingAssets:1 dataCache:self->_dataCache];
      [(PUCompositeVideoGenerator *)v4 registerChangeObserver:self context:GeneratorContext];
      [(PUCompositeVideoGenerator *)v4 start];
      workQueue_generator = self->_workQueue_generator;
      self->_workQueue_generator = v4;
    }

    else
    {
      [(PUMergedLivePhotosVideoRequest *)self _workQueue_finishWithMergedVideo:0 error:0];
    }
  }
}

- (id)_workQueue_fetchMergeableAssets
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(PUMergedLivePhotosVideoRequest *)self assetsDataSource];
  v4 = [(PUMergedLivePhotosVideoRequest *)self assetReference];
  v5 = [v4 asset];
  if ([v5 playbackStyle] == 3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v4 asset];
    [v6 fetchPropertySetsIfNeeded];
    v7 = PLLivePhotoPlaybackGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v6 localIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_DEBUG, "Determining mergeable assets from %@", &buf, 0xCu);
    }

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, 0}];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    v10 = [v4 indexPath];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __65__PUMergedLivePhotosVideoRequest__workQueue_fetchMergeableAssets__block_invoke;
    v14[3] = &unk_1E7B73E90;
    v15 = v3;
    p_buf = &buf;
    v11 = v9;
    v16 = v11;
    [v15 enumerateIndexPathsStartingAtIndexPath:v10 reverseDirection:0 usingBlock:v14];

    v12 = [v11 copy];
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

void __65__PUMergedLivePhotosVideoRequest__workQueue_fetchMergeableAssets__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) assetReferenceAtIndexPath:a2];
  v6 = *(*(a1 + 48) + 8);
  v9 = *(v6 + 40);
  v7 = (v6 + 40);
  v8 = v9;
  if (v9)
  {
    v10 = [v8 asset];
    v11 = [v5 asset];
    v12 = PLLivePhotoPlaybackGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v10 uuid];
      v14 = [v11 uuid];
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEBUG, "\tComparing last asset (%@) and candidate asset (%@)", &v16, 0x16u);
    }

    if ([PUCompositeVideoGenerator canMergeAsset:v10 withConsecutiveAsset:v11])
    {
      v15 = PLLivePhotoPlaybackGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEBUG, "\t\tTheir durations overlap", &v16, 2u);
      }

      [*(a1 + 40) addObject:v11];
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
    }

    else
    {
      *a3 = 1;
    }
  }

  else
  {
    objc_storeStrong(v7, v5);
  }
}

- (void)_workQueue_start
{
  if ([(PUMergedLivePhotosVideoRequest *)self state]== 1)
  {
    v3 = [(PUMergedLivePhotosVideoRequest *)self _workQueue_fetchMergeableAssets];
    [(PUMergedLivePhotosVideoRequest *)self _workQueue_generateVideoUsingAssets:v3];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 1) != 0 && GeneratorContext == a5)
  {
    v11[3] = v5;
    v11[4] = v6;
    objc_initWeak(v11, self);
    workQueue = self->_workQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PUMergedLivePhotosVideoRequest_observable_didChange_context___block_invoke;
    v9[3] = &unk_1E7B80638;
    objc_copyWeak(&v10, v11);
    dispatch_async(workQueue, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(v11);
  }
}

void __63__PUMergedLivePhotosVideoRequest_observable_didChange_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workQueue_handleGeneratorDidChangeState];
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PUMergedLivePhotosVideoRequest_error__block_invoke;
  v5[3] = &unk_1E7B800C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (PUMergedLivePhotosVideo)mergedVideo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__PUMergedLivePhotosVideoRequest_mergedVideo__block_invoke;
  v5[3] = &unk_1E7B800C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__PUMergedLivePhotosVideoRequest_state__block_invoke;
  v5[3] = &unk_1E7B800C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)cancel
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PUMergedLivePhotosVideoRequest_cancel__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_barrier_async(stateQueue, block);
}

uint64_t __40__PUMergedLivePhotosVideoRequest_cancel__block_invoke(uint64_t result)
{
  v3 = *(result + 32);
  if (*(v3 + 128) == 1)
  {
    v9 = v1;
    v10 = v2;
    v4 = result;
    *(v3 + 128) = 2;
    v5 = PLLivePhotoPlaybackGetLog();
    v6 = v5;
    v7 = *(*(v4 + 32) + 96);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_END, v7, "LivePhotoRequestProcessing", "", v8, 2u);
    }

    return [*(v4 + 32) _stateQueue_signalStateChange];
  }

  return result;
}

- (void)start
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PUMergedLivePhotosVideoRequest_start__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_barrier_async(stateQueue, block);
}

void __39__PUMergedLivePhotosVideoRequest_start__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 128))
  {
    v12 = v1;
    v13 = v2;
    *(v3 + 128) = 1;
    v5 = PLLivePhotoPlaybackGetLog();
    v6 = v5;
    v7 = *(*(a1 + 32) + 96);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "LivePhotoRequestProcessing", "", buf, 2u);
    }

    [*(a1 + 32) _stateQueue_signalStateChange];
    objc_initWeak(buf, *(a1 + 32));
    v8 = *(*(a1 + 32) + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PUMergedLivePhotosVideoRequest_start__block_invoke_201;
    block[3] = &unk_1E7B80638;
    objc_copyWeak(&v10, buf);
    dispatch_async(v8, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __39__PUMergedLivePhotosVideoRequest_start__block_invoke_201(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _workQueue_start];
}

- (PUMergedLivePhotosVideoRequest)initWithAssetReference:(id)a3 dataSource:(id)a4 dataCache:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26.receiver = self;
  v26.super_class = PUMergedLivePhotosVideoRequest;
  v13 = [(PUMergedLivePhotosVideoRequest *)&v26 init];
  if (v13)
  {
    if (v10)
    {
      if (v11)
      {
LABEL_4:
        objc_storeStrong(&v13->_assetReference, a3);
        objc_storeStrong(&v13->_assetsDataSource, a4);
        objc_storeStrong(&v13->_dataCache, a5);
        v14 = PLLivePhotoPlaybackGetLog();
        v13->_requestLogID = os_signpost_id_generate(v14);

        v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
        v16 = dispatch_queue_create("com.apple.photos.merged-live-photos-video-request.work", v15);
        workQueue = v13->_workQueue;
        v13->_workQueue = v16;

        workQueue_generator = v13->_workQueue_generator;
        v13->_workQueue_generator = 0;

        v19 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INITIATED, 0);
        v20 = dispatch_queue_create("com.apple.photos.merged-live-photos-video-request.state", v19);
        stateQueue = v13->_stateQueue;
        v13->_stateQueue = v20;

        v13->_stateQueue_state = 0;
        stateQueue_mergedVideo = v13->_stateQueue_mergedVideo;
        v13->_stateQueue_mergedVideo = 0;

        goto LABEL_5;
      }
    }

    else
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:v13 file:@"PUMergedLivePhotosVideoRequest.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"assetReference"}];

      if (v11)
      {
        goto LABEL_4;
      }
    }

    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:v13 file:@"PUMergedLivePhotosVideoRequest.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"dataSource"}];

    goto LABEL_4;
  }

LABEL_5:

  return v13;
}

@end