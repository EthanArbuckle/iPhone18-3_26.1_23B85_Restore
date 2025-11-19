@interface PXStoryDefaultSongsProducer
- (PXStoryDefaultSongsProducer)init;
- (PXStoryDefaultSongsProducer)initWithAssetContainer:(id)a3 configuration:(id)a4 curationProvider:(id)a5;
- (id)requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4;
- (void)_handleAppleMusicCapabilityStatus:(int64_t)a3 error:(id)a4 curationResult:(id)a5 resultHandler:(id)a6;
- (void)_handleMusicCurationResult:(id)a3 signpostID:(unint64_t)a4 resultHandler:(id)a5;
@end

@implementation PXStoryDefaultSongsProducer

- (void)_handleAppleMusicCapabilityStatus:(int64_t)a3 error:(id)a4 curationResult:(id)a5 resultHandler:(id)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v53 = a6;
  v10 = PLStoryGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v57 = v9;
    _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_INFO, "Received Music curation result: %@", buf, 0xCu);
  }

  v11 = [v9 error];
  v12 = [v9 songsByCategory];
  v13 = [v12 objectForKeyedSubscript:@"AppleMusicBest"];

  v14 = [v9 songsByCategory];
  v15 = [v14 objectForKeyedSubscript:@"FlexMusicBest"];

  v16 = v13;
  v17 = v16;
  if ([(PXStoryConfiguration *)self->_configuration shouldForceUsingFlexMusic])
  {
    v18 = PLStoryGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_INFO, "[LemMusic][ForceFlex] Force bestSuggestions music to Flex.", buf, 2u);
    }

    v17 = v15;
  }

  v19 = [v9 songsByCategory];
  v20 = [v19 objectForKeyedSubscript:@"FlexMusicFallback"];

  v21 = [v17 count];
  v51 = v16;
  v52 = v15;
  if (a3 == 1 && v21)
  {
    v22 = v15;

    if ([v22 count])
    {
      v23 = @"com.apple.photos.memory.interactiveMemoryMusicUsedAppleMusic";
      v20 = v22;
LABEL_22:
      v25 = v17;
      goto LABEL_23;
    }

    v31 = [v9 songsByCategory];
    v20 = [v31 objectForKeyedSubscript:@"FlexMusicFallback"];

    v23 = @"com.apple.photos.memory.interactiveMemoryMusicUsedAppleMusic";
LABEL_21:

    goto LABEL_22;
  }

  if (a3 != 1)
  {
    v24 = PLStoryGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_INFO, "Declining Apple Music curated result because Apple Music is not playable for this user.", buf, 2u);
    }
  }

  v25 = v15;

  if ([v25 count])
  {
    v23 = @"com.apple.photos.memory.interactiveMemoryMusicUsedFlexMusic";
  }

  else
  {
    v31 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(5, v11, @"No usable curation results found for Apple Music or Flex Music. Falling back to best local Flex Music track.", v26, v27, v28, v29, v30, v49);

    v32 = [v9 songsByCategory];
    v17 = [v32 objectForKeyedSubscript:@"FlexMusicFallback"];

    if (![v17 count])
    {
      v11 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(5, v31, @"Full music curation failed, and no fallback track could be found.", v33, v34, v35, v36, v37, v50);
      v23 = @"com.apple.photos.memory.interactiveMemoryMusicFellBackToLocalFlexSong";
      goto LABEL_21;
    }

    v23 = @"com.apple.photos.memory.interactiveMemoryMusicFellBackToLocalFlexSong";
    v25 = v17;
    v11 = v31;
  }

LABEL_23:
  v38 = objc_alloc(MEMORY[0x1E695DF90]);
  v54 = *MEMORY[0x1E6991E20];
  v39 = objc_opt_class();
  v40 = NSStringFromClass(v39);
  v55 = v40;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v42 = [v38 initWithDictionary:v41];

  v43 = [(PXStoryDefaultSongsProducer *)self assetContainer];
  v44 = [v43 container];

  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  [v42 setObject:v45 forKeyedSubscript:*MEMORY[0x1E6991E08]];
  [v42 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6991E28]];
  [MEMORY[0x1E6991F28] sendEvent:v23 withPayload:v42];
  v46 = [[PXStorySongsConfiguration alloc] initWithCuratedAudioAssets:v25 fallbackCuratedAssets:v20 currentAsset:0];
  v47 = [[PXStoryProducerResult alloc] initWithObject:v46];
  v48 = [(PXStoryProducerResult *)v47 error:v11];
  v53[2](v53, v48);
}

- (void)_handleMusicCurationResult:(id)a3 signpostID:(unint64_t)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  objc_initWeak(&location, self);
  v10 = [(PXStoryConfiguration *)self->_configuration appleMusicStatusProvider];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PXStoryDefaultSongsProducer__handleMusicCurationResult_signpostID_resultHandler___block_invoke;
  v13[3] = &unk_1E77476C0;
  objc_copyWeak(v16, &location);
  v16[1] = a4;
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [v10 requestStatusForCapability:1 handler:v13];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __83__PXStoryDefaultSongsProducer__handleMusicCurationResult_signpostID_resultHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = [WeakRetained log];

  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v7, OS_SIGNPOST_EVENT, v8, "StoryDefaultSongsProducerEventReceivedAppleMusicStatus", "", v10, 2u);
  }

  v9 = objc_loadWeakRetained((a1 + 48));
  [v9 _handleAppleMusicCapabilityStatus:a2 error:v5 curationResult:*(a1 + 32) resultHandler:*(a1 + 40)];
}

- (id)requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXStoryDefaultSongsProducer *)self log];
  v7 = os_signpost_id_make_with_pointer(v6, self);
  v8 = v6;
  v9 = v8;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "StoryDefaultSongsProducerResultDelivery", "", buf, 2u);
  }

  v10 = [(PXStoryDefaultSongsProducer *)self assetContainer];
  v11 = PLStoryGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v33 = v10;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEBUG, "[LemMusic] requestSongsWithOptions: assetContainer=%@", buf, 0xCu);
  }

  v12 = [v10 container];
  if (!objc_opt_class() || (objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = v12;

  if (v13)
  {
    v12 = PLStoryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v13 category];
      v24 = [v13 subcategory];
      v26 = [v13 moodKeywords];
      v14 = [v13 suggestedMood];
      v15 = [v13 meaningLabels];
      *buf = 134219266;
      v33 = v25;
      v34 = 2048;
      v35 = v24;
      v36 = 2112;
      v37 = v26;
      v38 = 2048;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "[LemMusic] Is PHMemory | category=%ld, sub-cat=%ld, moodKeywords=%@, suggestedMood=%llu, meaningLabels=%@, memory=%@", buf, 0x3Eu);
    }

    goto LABEL_12;
  }

LABEL_13:
  v16 = objc_alloc_init(PXStoryMusicCurationProviderOptions);
  [(PXStoryMusicCurationProviderOptions *)v16 addCategory:@"FlexMusicBest"];
  if ([(PXStoryConfiguration *)self->_configuration isAllowedToPlayAppleMusic]&& ![(PXStoryConfiguration *)self->_configuration shouldForceUsingFlexMusic])
  {
    [(PXStoryMusicCurationProviderOptions *)v16 addCategory:@"AppleMusicBest"];
  }

  [(PXStoryMusicCurationProviderOptions *)v16 setLogContext:[(PXStoryDefaultSongsProducer *)self logContext]];
  objc_initWeak(buf, self);
  curationProvider = self->_curationProvider;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __69__PXStoryDefaultSongsProducer_requestSongsWithOptions_resultHandler___block_invoke;
  v28[3] = &unk_1E7747698;
  v18 = v9;
  v29 = v18;
  v31[1] = v7;
  objc_copyWeak(v31, buf);
  v19 = v5;
  v30 = v19;
  v20 = [(PXStoryMusicCurationProvider *)curationProvider requestMusicCurationForAssetContainer:v10 options:v16 resultHandler:v28];
  v21 = v18;
  v22 = v21;
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *v27 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_END, v7, "StoryDefaultSongsProducerResultDelivery", "", v27, 2u);
  }

  objc_destroyWeak(v31);
  objc_destroyWeak(buf);

  return v20;
}

void __69__PXStoryDefaultSongsProducer_requestSongsWithOptions_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v5, OS_SIGNPOST_EVENT, v6, "StoryDefaultSongsProducerEventReceivedCuration", "", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleMusicCurationResult:v3 signpostID:*(a1 + 56) resultHandler:*(a1 + 40)];
}

- (PXStoryDefaultSongsProducer)initWithAssetContainer:(id)a3 configuration:(id)a4 curationProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = PXStoryDefaultSongsProducer;
  v12 = [(PXStoryDefaultSongsProducer *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetContainer, a3);
    objc_storeStrong(&v13->_configuration, a4);
    objc_storeStrong(&v13->_curationProvider, a5);
    v14 = *MEMORY[0x1E69BFF60];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = os_log_create(v14, [v16 UTF8String]);
    log = v13->_log;
    v13->_log = v17;

    px_dispatch_queue_create_serial();
  }

  return 0;
}

- (PXStoryDefaultSongsProducer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryDefaultSongsProducer.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXStoryDefaultSongsProducer init]"}];

  abort();
}

@end