@interface PXStoryPersistableRecipeSongResourceProducer
- (PXStoryPersistableRecipeSongResourceProducer)init;
- (PXStoryPersistableRecipeSongResourceProducer)initWithPersistableRecipe:(id)a3 configuration:(id)a4;
- (id)requestSongResourceWithOptions:(unint64_t)a3 resultHandler:(id)a4;
- (void)_handleAppleMusicPlaybackStatus:(int64_t)a3 error:(id)a4 parentProgress:(id)a5 options:(unint64_t)a6 resultHandler:(id)a7;
- (void)_handlePersistedAudioAsset:(id)a3 isFinal:(BOOL)a4 error:(id)a5 options:(unint64_t)a6 resultHandler:(id)a7;
@end

@implementation PXStoryPersistableRecipeSongResourceProducer

- (void)_handlePersistedAudioAsset:(id)a3 isFinal:(BOOL)a4 error:(id)a5 options:(unint64_t)a6 resultHandler:(id)a7
{
  v8 = a6;
  v10 = a4;
  v22 = a3;
  v11 = a5;
  v17 = a7;
  if (!v22)
  {
    v18 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugFormat(15, v11, @"Converting persisted song asset to playable audio asset failed.", v12, v13, v14, v15, v16, v21);
    v19 = [[PXStoryProducerResult alloc] initWithObject:0];
    v20 = [(PXStoryProducerResult *)v19 error:v18];
    v17[2](v17, v20);

LABEL_7:
    goto LABEL_8;
  }

  if (!v10)
  {
    if ((v8 & 6) != 0)
    {
      goto LABEL_9;
    }

    v18 = [[PXStoryProducerResult alloc] initWithObject:v22];
    v19 = [(PXStoryProducerResult *)v18 flags:1];
    v17[2](v17, v19);
    goto LABEL_7;
  }

  v18 = [[PXStoryProducerResult alloc] initWithObject:v22];
  v17[2](v17, v18);
LABEL_8:

LABEL_9:
}

- (void)_handleAppleMusicPlaybackStatus:(int64_t)a3 error:(id)a4 parentProgress:(id)a5 options:(unint64_t)a6 resultHandler:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = self->_persistableRecipe;
  v16 = [(PFStoryRecipe *)v15 currentStyleSongAsset];
  v17 = v16;
  if (a3 == 1)
  {
LABEL_4:
    if (v17)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v18 = [(PXStoryProducerResult *)v16 catalog];
  v19 = v18;
  if (v18 == *MEMORY[0x1E69C0DC8])
  {
  }

  else
  {
    v20 = [v18 isEqualToString:?];

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

  if (a3 == 1 && ![(PXStoryConfiguration *)self->_configuration shouldForceUsingFlexMusic])
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
        v26 = [(PFStoryRecipe *)self->_persistableRecipe diagnosticDescription];
        *buf = 138543362;
        v31 = v26;
        _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_INFO, "No playable current style or seed song was found in persistable recipe: %{public}@", buf, 0xCu);
      }

      [v13 setCompletedUnitCount:{objc_msgSend(v13, "totalUnitCount")}];
      v17 = [[PXStoryProducerResult alloc] initWithObject:0];
      v14[2](v14, v17);
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
  v29[1] = a6;
  v28 = v14;
  v23 = [PFStoryRecipe_PXStoryExtension requestAudioAssetFromRecipeAsset:v17 recipe:v15 resultHandler:v27];
  if (v23)
  {
    [v13 addChild:v23 withPendingUnitCount:{objc_msgSend(v13, "totalUnitCount")}];
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

- (id)requestSongResourceWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  location[3] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = self->_persistableRecipe;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = [(PFStoryRecipe *)v7 seedSongIdentifiersByCatalog];
  if (![v9 count])
  {
    v10 = [(PFStoryRecipe *)v8 currentStyleSongAsset];

    if (v10)
    {
      goto LABEL_5;
    }

LABEL_8:
    v18 = PLStoryGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(PFStoryRecipe *)v8 diagnosticDescription];
      LODWORD(location[0]) = 138543362;
      *(location + 4) = v19;
      _os_log_impl(&dword_1A3C1C000, v18, OS_LOG_TYPE_INFO, "Persistable recipe contains no song information: %{public}@", location, 0xCu);
    }

    v20 = [[PXStoryProducerResult alloc] initWithObject:0];
    v6[2](v6, v20);

    goto LABEL_13;
  }

LABEL_5:
  v11 = [(PFStoryRecipe *)self->_persistableRecipe currentStyle];
  v12 = [v11 songAssetIdentifier];
  v13 = v12;
  if (v12 == *MEMORY[0x1E69C0DC0])
  {
  }

  else
  {
    v14 = [v12 isEqualToString:?];

    if ((v14 & 1) == 0)
    {
      objc_initWeak(location, self);
      v15 = [objc_alloc(MEMORY[0x1E696AE38]) initWithParent:0 userInfo:0];
      [v15 setTotalUnitCount:100];
      v16 = [(PXStoryConfiguration *)self->_configuration appleMusicStatusProvider];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __93__PXStoryPersistableRecipeSongResourceProducer_requestSongResourceWithOptions_resultHandler___block_invoke;
      v25[3] = &unk_1E77476C0;
      objc_copyWeak(v28, location);
      v17 = v15;
      v26 = v17;
      v28[1] = a3;
      v27 = v6;
      [v16 requestStatusForCapability:1 handler:v25];

      objc_destroyWeak(v28);
      objc_destroyWeak(location);
      goto LABEL_14;
    }
  }

  v21 = [PXStoryProducerResult alloc];
  v22 = objc_alloc_init(PXStoryNullSongResource);
  v23 = [(PXStoryProducerResult *)v21 initWithObject:v22];
  v6[2](v6, v23);

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPersistableRecipeSongResourceProducer.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXStoryPersistableRecipeSongResourceProducer init]"}];

  abort();
}

- (PXStoryPersistableRecipeSongResourceProducer)initWithPersistableRecipe:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXStoryPersistableRecipeSongResourceProducer;
  v9 = [(PXStoryPersistableRecipeSongResourceProducer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistableRecipe, a3);
    objc_storeStrong(&v10->_configuration, a4);
  }

  return v10;
}

@end