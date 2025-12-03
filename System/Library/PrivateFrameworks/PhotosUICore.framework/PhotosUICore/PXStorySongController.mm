@interface PXStorySongController
- (PXStoryModel)model;
- (PXStorySongController)initWithModel:(id)model;
- (PXStorySongController)initWithObservableModel:(id)model;
- (void)_invalidateCurrentSongResource;
- (void)_updateCurrentSongResource;
- (void)configureUpdater:(id)updater;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setCurrentSongResource:(id)resource;
- (void)setFailedAudioAssets:(id)assets;
@end

@implementation PXStorySongController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (StyleManagerContext == context)
  {
    if ((change & 0x120) == 0)
    {
      goto LABEL_9;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PXStorySongController_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E774AFA8;
    v12[4] = self;
    v9 = v12;
LABEL_8:
    [(PXStorySongController *)self performChanges:v9];
    goto LABEL_9;
  }

  if (RecipeManagerContext == context)
  {
    if ((change & 1) == 0)
    {
      goto LABEL_9;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PXStorySongController_observable_didChange_context___block_invoke_2;
    v11[3] = &unk_1E774AFA8;
    v11[4] = self;
    v9 = v11;
    goto LABEL_8;
  }

  v10.receiver = self;
  v10.super_class = PXStorySongController;
  [(PXStoryController *)&v10 observable:observableCopy didChange:change context:context];
LABEL_9:
}

- (void)handleModelChange:(unint64_t)change
{
  v6.receiver = self;
  v6.super_class = PXStorySongController;
  [(PXStoryController *)&v6 handleModelChange:?];
  if ((change & 0x808000010200) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__PXStorySongController_handleModelChange___block_invoke;
    v5[3] = &unk_1E774AFA8;
    v5[4] = self;
    [(PXStorySongController *)self performChanges:v5];
  }
}

- (void)_updateCurrentSongResource
{
  model = [(PXStorySongController *)self model];
  currentStyle = [model currentStyle];
  songResource = [currentStyle songResource];

  if (!songResource)
  {
    recipeManager = [model recipeManager];
    recipe = [recipeManager recipe];
    songResource = [recipe initialSongResource];
  }

  failedAudioAssets = [(PXStorySongController *)self failedAudioAssets];
  px_storyResourceSongAsset = [songResource px_storyResourceSongAsset];
  v10 = [failedAudioAssets containsObject:px_storyResourceSongAsset];

  if (v10)
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Current song resource has failed. Falling back to fallback song resource.", v21, 2u);
    }

    [(PXStorySongController *)self failedSongDelayBeforeSwitchingToFallback];
    if (v12 > 0.0)
    {
      v13 = v12;
      [(PXStorySongController *)self setFailedSongDelayBeforeSwitchingToFallback:0.0];
      [MEMORY[0x1E696AF00] sleepForTimeInterval:v13];
    }

    recipeManager2 = [model recipeManager];
    recipe2 = [recipeManager2 recipe];
    fallbackSongResource = [recipe2 fallbackSongResource];

    songResource = fallbackSongResource;
  }

  if ([model isPresentingMusicEditor])
  {
    [model editorPreviewSong];
    songResource = styleManager = songResource;
LABEL_15:

    goto LABEL_16;
  }

  if ([model viewMode] == 4)
  {
    styleManager = [model styleManager];
    selectionDataSource = [styleManager selectionDataSource];
    if ([selectionDataSource numberOfStyles] >= 1)
    {
      v19 = [selectionDataSource styleInfoAtIndex:{objc_msgSend(styleManager, "focusedStyleIndex")}];
      songResource2 = [v19 songResource];

      songResource = songResource2;
    }

    goto LABEL_15;
  }

LABEL_16:
  [(PXStorySongController *)self setCurrentSongResource:songResource];
}

- (void)_invalidateCurrentSongResource
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateCurrentSongResource];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXStorySongController;
  [(PXStoryController *)&v3 performChanges:changes];
}

- (void)setFailedAudioAssets:(id)assets
{
  assetsCopy = assets;
  v5 = assetsCopy;
  if (self->_failedAudioAssets != assetsCopy)
  {
    v9 = assetsCopy;
    v6 = [(NSSet *)assetsCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSSet *)v9 copy];
      failedAudioAssets = self->_failedAudioAssets;
      self->_failedAudioAssets = v7;

      [(PXStorySongController *)self _invalidateCurrentSongResource];
      v5 = v9;
    }
  }
}

- (void)setCurrentSongResource:(id)resource
{
  v15 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  v6 = resourceCopy;
  if (self->_currentSongResource != resourceCopy && ([(PXStorySongResource *)resourceCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentSongResource, resource);
    px_storyResourceSongAsset = [(PXStorySongResource *)v6 px_storyResourceSongAsset];
    v8 = PLStoryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = PXAudioAssetDescription(px_storyResourceSongAsset);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "current song %@", buf, 0xCu);
    }

    model = [(PXStorySongController *)self model];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__PXStorySongController_setCurrentSongResource___block_invoke;
    v11[3] = &unk_1E77485B0;
    v12 = v6;
    [model performChanges:v11];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStorySongController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateCurrentSongResource, v4.receiver, v4.super_class}];
}

- (PXStorySongController)initWithModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PXStorySongController;
  v5 = [(PXStoryController *)&v12 initWithObservableModel:modelCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_model, modelCopy);
    v6->_failedSongDelayBeforeSwitchingToFallback = 0.0;
    recipeManager = [modelCopy recipeManager];
    [recipeManager registerChangeObserver:v6 context:RecipeManagerContext];

    styleManager = [modelCopy styleManager];
    [styleManager registerChangeObserver:v6 context:StyleManagerContext];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PXStorySongController_initWithModel___block_invoke;
    v10[3] = &unk_1E774AFA8;
    v11 = v6;
    [(PXStorySongController *)v11 performChanges:v10];
  }

  return v6;
}

- (PXStorySongController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorySongController.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXStorySongController initWithObservableModel:]"}];

  abort();
}

@end