@interface PXStoryPersistableRecipeSongResourceProducer
- (PXStoryPersistableRecipeSongResourceProducer)init;
- (PXStoryPersistableRecipeSongResourceProducer)initWithPersistableRecipe:(id)recipe configuration:(id)configuration;
- (id)requestSongResourceWithOptions:(unint64_t)options resultHandler:(id)handler;
- (void)_handleAppleMusicPlaybackStatus:(int64_t)status error:(id)error parentProgress:(id)progress options:(unint64_t)options resultHandler:(id)handler;
- (void)_handlePersistedAudioAsset:(id)asset isFinal:(BOOL)final error:(id)error options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPersistableRecipeSongResourceProducer

- (void)_handlePersistedAudioAsset:(id)asset isFinal:(BOOL)final error:(id)error options:(unint64_t)options resultHandler:(id)handler
{
  optionsCopy = options;
  finalCopy = final;
  assetCopy = asset;
  errorCopy = error;
  handlerCopy = handler;
  if (!assetCopy)
  {
    v18 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(15, errorCopy, @"Converting persisted song asset to playable audio asset failed.", v12, v13, v14, v15, v16, v21);
    v19 = [[PXStoryProducerResult alloc] initWithObject:0];
    v20 = [(PXStoryProducerResult *)v19 error:v18];
    handlerCopy[2](handlerCopy, v20);

LABEL_7:
    goto LABEL_8;
  }

  if (!finalCopy)
  {
    if ((optionsCopy & 6) != 0)
    {
      goto LABEL_9;
    }

    v18 = [[PXStoryProducerResult alloc] initWithObject:assetCopy];
    v19 = [(PXStoryProducerResult *)v18 flags:1];
    handlerCopy[2](handlerCopy, v19);
    goto LABEL_7;
  }

  v18 = [[PXStoryProducerResult alloc] initWithObject:assetCopy];
  handlerCopy[2](handlerCopy, v18);
LABEL_8:

LABEL_9:
}

- (void)_handleAppleMusicPlaybackStatus:(int64_t)status error:(id)error parentProgress:(id)progress options:(unint64_t)options resultHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  progressCopy = progress;
  handlerCopy = handler;
  v15 = self->_persistableRecipe;
  currentStyleSongAsset = [(PFStoryRecipe *)v15 currentStyleSongAsset];
  v17 = currentStyleSongAsset;
  if (status == 1)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  catalog = [(PXStoryProducerResult *)currentStyleSongAsset catalog];
  v19 = catalog;
  if (catalog == *MEMORY[0x1E69C0DC8])
  {
  }

  else
  {
    v20 = [catalog isEqualToString:?];

    if (!v20)
    {
      goto LABEL_4;
    }
  }

  v21 = PLStoryGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_ERROR, "Found an Apple Music song persisted for the current style. However, Apple Music playback is disabled for the current user, so ignoring the persisted song.", buf, 2u);
  }

LABEL_10:
  v22 = PLStoryGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v22, OS_LOG_TYPE_INFO, "No playable persisted current song found. Falling back to seed songs", buf, 2u);
  }

  if (status == 1 && ![(PXStoryConfiguration *)self->_configuration shouldForceUsingFlexMusic])
  {
    v17 = [(PFStoryRecipe *)v15 seedSongAssetForCatalog:*MEMORY[0x1E69C0DC8]];
    if (!v17)
    {
      v24 = PLStoryGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_INFO, "Apple Music is playable, but the persisted recipe does not contain an Apple Music seed song. Ignoring any flex music seed songs to allow curation to provide an Apple Music song if possible.", buf, 2u);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v17 = [(PFStoryRecipe *)v15 seedSongAssetForCatalog:*MEMORY[0x1E69C0DD0]];
    if (!v17)
    {
LABEL_23:
      v25 = PLStoryGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        diagnosticDescription = [(PFStoryRecipe *)self->_persistableRecipe diagnosticDescription];
        *buf = 138543362;
        v31 = diagnosticDescription;
        _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_INFO, "No playable current style or seed song was found in persistable recipe: %{public}@", buf, 0xCu);
      }

      [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
      v17 = [[PXStoryProducerResult alloc] initWithObject:0];
      handlerCopy[2](handlerCopy, v17);
      goto LABEL_26;
    }
  }

LABEL_17:
  objc_initWeak(buf, self);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __123__PXStoryPersistableRecipeSongResourceProducer__handleAppleMusicPlaybackStatus_error_parentProgress_options_resultHandler___block_invoke;
  v27[3] = &unk_1E77331C0;
  objc_copyWeak(v29, buf);
  v29[1] = options;
  v28 = handlerCopy;
  v23 = [PFStoryRecipe_PXStoryExtension requestAudioAssetFromRecipeAsset:v17 recipe:v15 resultHandler:v27];
  if (v23)
  {
    [progressCopy addChild:v23 withPendingUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
  }

  objc_destroyWeak(v29);
  objc_destroyWeak(buf);
LABEL_26:
}

void __123__PXStoryPersistableRecipeSongResourceProducer__handleAppleMusicPlaybackStatus_error_parentProgress_options_resultHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handlePersistedAudioAsset:v8 isFinal:a3 error:v7 options:*(a1 + 48) resultHandler:*(a1 + 32)];
}

- (id)requestSongResourceWithOptions:(unint64_t)options resultHandler:(id)handler
{
  location[3] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = self->_persistableRecipe;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  seedSongIdentifiersByCatalog = [(PFStoryRecipe *)v7 seedSongIdentifiersByCatalog];
  if (![seedSongIdentifiersByCatalog count])
  {
    currentStyleSongAsset = [(PFStoryRecipe *)v8 currentStyleSongAsset];

    if (currentStyleSongAsset)
    {
      goto LABEL_5;
    }

LABEL_8:
    v18 = PLStoryGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      diagnosticDescription = [(PFStoryRecipe *)v8 diagnosticDescription];
      LODWORD(location[0]) = 138543362;
      *(location + 4) = diagnosticDescription;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_INFO, "Persistable recipe contains no song information: %{public}@", location, 0xCu);
    }

    v20 = [[PXStoryProducerResult alloc] initWithObject:0];
    handlerCopy[2](handlerCopy, v20);

    goto LABEL_13;
  }

LABEL_5:
  currentStyle = [(PFStoryRecipe *)self->_persistableRecipe currentStyle];
  songAssetIdentifier = [currentStyle songAssetIdentifier];
  v13 = songAssetIdentifier;
  if (songAssetIdentifier == *MEMORY[0x1E69C0DC0])
  {
  }

  else
  {
    v14 = [songAssetIdentifier isEqualToString:?];

    if ((v14 & 1) == 0)
    {
      objc_initWeak(location, self);
      v15 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:0];
      [v15 setTotalUnitCount:100];
      appleMusicStatusProvider = [(PXStoryConfiguration *)self->_configuration appleMusicStatusProvider];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __93__PXStoryPersistableRecipeSongResourceProducer_requestSongResourceWithOptions_resultHandler___block_invoke;
      v25[3] = &unk_1E77476C0;
      objc_copyWeak(v28, location);
      v17 = v15;
      v26 = v17;
      v28[1] = options;
      v27 = handlerCopy;
      [appleMusicStatusProvider requestStatusForCapability:1 handler:v25];

      objc_destroyWeak(v28);
      objc_destroyWeak(location);
      goto LABEL_14;
    }
  }

  v21 = [PXStoryProducerResult alloc];
  v22 = objc_alloc_init(PXStoryNullSongResource);
  v23 = [(PXStoryProducerResult *)v21 initWithObject:v22];
  handlerCopy[2](handlerCopy, v23);

LABEL_13:
  v17 = 0;
LABEL_14:

  return v17;
}

void __93__PXStoryPersistableRecipeSongResourceProducer_requestSongResourceWithOptions_resultHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleAppleMusicPlaybackStatus:a2 error:v5 parentProgress:*(a1 + 32) options:*(a1 + 56) resultHandler:*(a1 + 40)];
}

- (PXStoryPersistableRecipeSongResourceProducer)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryPersistableRecipeSongResourceProducer.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXStoryPersistableRecipeSongResourceProducer init]"}];

  abort();
}

- (PXStoryPersistableRecipeSongResourceProducer)initWithPersistableRecipe:(id)recipe configuration:(id)configuration
{
  recipeCopy = recipe;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = PXStoryPersistableRecipeSongResourceProducer;
  v9 = [(PXStoryPersistableRecipeSongResourceProducer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistableRecipe, recipe);
    objc_storeStrong(&v10->_configuration, configuration);
  }

  return v10;
}

@end