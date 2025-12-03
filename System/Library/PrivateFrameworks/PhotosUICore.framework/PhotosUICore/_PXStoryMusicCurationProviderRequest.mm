@interface _PXStoryMusicCurationProviderRequest
- (_PXStoryMusicCurationProviderRequest)init;
- (_PXStoryMusicCurationProviderRequest)initWithAssetContainer:(id)container options:(id)options recentlyUsedFlexSongIDs:(id)ds recentlyUsedAppleMusicSongIDs:(id)iDs completion:(id)completion;
- (void)_handleCurationResult:(id)result;
- (void)appendResultHandler:(id)handler;
- (void)start;
@end

@implementation _PXStoryMusicCurationProviderRequest

- (void)_handleCurationResult:(id)result
{
  resultCopy = result;
  resultHandlers = self->_resultHandlers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62___PXStoryMusicCurationProviderRequest__handleCurationResult___block_invoke;
  v7[3] = &unk_1E772DAE0;
  v8 = resultCopy;
  v6 = resultCopy;
  [(NSMutableArray *)resultHandlers enumerateObjectsUsingBlock:v7];
  (*(self->_completionHandler + 2))();
}

- (void)start
{
  v79 = *MEMORY[0x1E69E9840];
  if (self->_hasStarted)
  {
    return;
  }

  self->_hasStarted = 1;
  options = [(_PXStoryMusicCurationProviderRequest *)self options];
  categories = [options categories];

  if ([categories count])
  {
    PXExists();
  }

  options2 = [(_PXStoryMusicCurationProviderRequest *)self options];
  logContext = [options2 logContext];

  assetContainer = [(_PXStoryMusicCurationProviderRequest *)self assetContainer];
  v6 = PLStoryGetLog();
  v7 = os_signpost_id_make_with_pointer(v6, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      identifier = [assetContainer identifier];
      options3 = [(_PXStoryMusicCurationProviderRequest *)self options];
      categories2 = [options3 categories];
      recentlyUsedAppleMusicSongIDs = [(_PXStoryMusicCurationProviderRequest *)self recentlyUsedAppleMusicSongIDs];
      recentlyUsedFlexSongIDs = [(_PXStoryMusicCurationProviderRequest *)self recentlyUsedFlexSongIDs];
      *buf = 134219522;
      *&buf[4] = logContext;
      *&buf[12] = 2114;
      *&buf[14] = identifier;
      *&buf[22] = 1026;
      *v76 = 1;
      *&v76[4] = 1026;
      *&v76[6] = 1;
      *&v76[10] = 2114;
      *&v76[12] = categories2;
      *&v76[20] = 2114;
      *&v76[22] = recentlyUsedAppleMusicSongIDs;
      v77 = 2114;
      v78 = recentlyUsedFlexSongIDs;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PXStoryMusicCurationProviderRequest", "Context=%{signpost.telemetry:string2}lu AssetContainer=%{signpost.description:attribute,public}@ WantsAppleMusic=%{signpost.description:attribute,public}d WantsFlexMusic=%{signpost.description:attribute,public}d Categories=%{signpost.description:attribute,public}@ RecentlyUsedAppleMusicSongIDs=%{signpost.description:attribute,public}@ RecentlyUsedFlexMusicSongIDs=%{signpost.description:attribute,public}@ ", buf, 0x40u);
    }
  }

  v13 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
  v14 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *v76 = __Block_byref_object_copy__3748;
  *&v76[8] = __Block_byref_object_dispose__3749;
  *&v76[16] = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__3748;
  v69 = __Block_byref_object_dispose__3749;
  v70 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__3748;
  v63 = __Block_byref_object_dispose__3749;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__3748;
  v57 = __Block_byref_object_dispose__3749;
  v58 = 0;
  dispatch_group_enter(v14);
  recentlyUsedAppleMusicSongIDs2 = [(_PXStoryMusicCurationProviderRequest *)self recentlyUsedAppleMusicSongIDs];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __45___PXStoryMusicCurationProviderRequest_start__block_invoke_284;
  v49[3] = &unk_1E772DA90;
  v51 = buf;
  v52 = &v65;
  v50 = v14;
  v16 = [PXMusicCurator requestAppleMusicCurationForAssetContainer:assetContainer recentlyUsedAdamIDs:recentlyUsedAppleMusicSongIDs2 resultHandler:v49];

  [v13 px_appendChild:v16 withPendingUnitCount:50];
  v17 = [PXMusicCurator bestLocallyAvailableAudioAssetForAssetContainer:assetContainer];
  dispatch_group_enter(v14);
  recentlyUsedFlexSongIDs2 = [(_PXStoryMusicCurationProviderRequest *)self recentlyUsedFlexSongIDs];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __45___PXStoryMusicCurationProviderRequest_start__block_invoke_2_286;
  v45[3] = &unk_1E772DAB8;
  v47 = &v59;
  v48 = &v53;
  v46 = v14;
  v19 = [PXMusicCurator requestFlexMusicCurationForAssetContainer:assetContainer recentlyUsedFlexSongIDs:recentlyUsedFlexSongIDs2 resultHandler:v45];

  [v13 px_appendChild:v19 withPendingUnitCount:50];
  progress = [(_PXStoryMusicCurationProviderRequest *)self progress];
  progress2 = [(_PXStoryMusicCurationProviderRequest *)self progress];
  [progress addChild:v13 withPendingUnitCount:{objc_msgSend(progress2, "totalUnitCount")}];

  v22 = dispatch_time(0, 30000000000);
  v23 = dispatch_group_wait(v14, v22);
  v24 = v23;
  v25 = v66[5];
  if (v25 || (v25 = v54[5]) != 0)
  {
    v26 = v25;
    if (v24)
    {
LABEL_10:
      v27 = PLStoryGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [assetContainer identifier];
        *v71 = 138412546;
        v72 = identifier2;
        v73 = 2112;
        v74 = v26;
        _os_log_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, "[MemoriesMusic] (PXMusicCurationManager) Music curation for asset container (%@) timed out with error %@", v71, 0x16u);
      }

      v34 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(5, v26, @"Music curation timed out.", v29, v30, v31, v32, v33, v41);

      v26 = v34;
    }
  }

  else
  {
    v26 = 0;
    if (v23)
    {
      goto LABEL_10;
    }
  }

  v35 = [PXMusicCurationConcreteResult alloc];
  v36 = [(PXMusicCurationConcreteResult *)v35 initWithAppleMusicCuration:*(*&buf[8] + 40) flexMusicCuration:v60[5] fallbackAsset:v17 requestedCategories:categories error:v26];
  v37 = PLStoryGetLog();
  v38 = os_signpost_id_make_with_pointer(v37, self);
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v39 = v38;
    if (os_signpost_enabled(v37))
    {
      v40 = [(PXMusicCurationConcreteResult *)v36 description];
      *v71 = 134218242;
      v72 = logContext;
      v73 = 2114;
      v74 = v40;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v37, OS_SIGNPOST_INTERVAL_END, v39, "PXStoryMusicCurationProviderRequest", "Context=%{signpost.telemetry:string2}lu Result=%{signpost.description:attribute,public}@", v71, 0x16u);
    }
  }

  [(_PXStoryMusicCurationProviderRequest *)self _handleCurationResult:v36];
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(buf, 8);
}

- (void)appendResultHandler:(id)handler
{
  resultHandlers = self->_resultHandlers;
  v5 = [handler copy];
  v4 = _Block_copy(v5);
  [(NSMutableArray *)resultHandlers addObject:v4];
}

- (_PXStoryMusicCurationProviderRequest)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPhotoKitMusicCurationProvider.m" lineNumber:348 description:{@"%s is not available as initializer", "-[_PXStoryMusicCurationProviderRequest init]"}];

  abort();
}

- (_PXStoryMusicCurationProviderRequest)initWithAssetContainer:(id)container options:(id)options recentlyUsedFlexSongIDs:(id)ds recentlyUsedAppleMusicSongIDs:(id)iDs completion:(id)completion
{
  containerCopy = container;
  optionsCopy = options;
  dsCopy = ds;
  iDsCopy = iDs;
  completionCopy = completion;
  v33.receiver = self;
  v33.super_class = _PXStoryMusicCurationProviderRequest;
  v18 = [(_PXStoryMusicCurationProviderRequest *)&v33 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_assetContainer, container);
    v20 = [optionsCopy copy];
    options = v19->_options;
    v19->_options = v20;

    v22 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    progress = v19->_progress;
    v19->_progress = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resultHandlers = v19->_resultHandlers;
    v19->_resultHandlers = v24;

    v26 = [dsCopy copy];
    recentlyUsedFlexSongIDs = v19->_recentlyUsedFlexSongIDs;
    v19->_recentlyUsedFlexSongIDs = v26;

    v28 = [iDsCopy copy];
    recentlyUsedAppleMusicSongIDs = v19->_recentlyUsedAppleMusicSongIDs;
    v19->_recentlyUsedAppleMusicSongIDs = v28;

    v30 = [completionCopy copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v30;
  }

  return v19;
}

@end