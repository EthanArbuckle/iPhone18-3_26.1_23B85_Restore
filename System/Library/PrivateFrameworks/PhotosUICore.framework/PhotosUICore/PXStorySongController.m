@interface PXStorySongController
- (PXStoryModel)model;
- (PXStorySongController)initWithModel:(id)a3;
- (PXStorySongController)initWithObservableModel:(id)a3;
- (void)_invalidateCurrentSongResource;
- (void)_updateCurrentSongResource;
- (void)configureUpdater:(id)a3;
- (void)handleModelChange:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setCurrentSongResource:(id)a3;
- (void)setFailedAudioAssets:(id)a3;
@end

@implementation PXStorySongController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (StyleManagerContext == a5)
  {
    if ((a4 & 0x120) == 0)
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

  if (RecipeManagerContext == a5)
  {
    if ((a4 & 1) == 0)
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
  [(PXStoryController *)&v10 observable:v8 didChange:a4 context:a5];
LABEL_9:
}

- (void)handleModelChange:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PXStorySongController;
  [(PXStoryController *)&v6 handleModelChange:?];
  if ((a3 & 0x808000010200) != 0)
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
  v3 = [(PXStorySongController *)self model];
  v4 = [v3 currentStyle];
  v5 = [v4 songResource];

  if (!v5)
  {
    v6 = [v3 recipeManager];
    v7 = [v6 recipe];
    v5 = [v7 initialSongResource];
  }

  v8 = [(PXStorySongController *)self failedAudioAssets];
  v9 = [v5 px_storyResourceSongAsset];
  v10 = [v8 containsObject:v9];

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

    v14 = [v3 recipeManager];
    v15 = [v14 recipe];
    v16 = [v15 fallbackSongResource];

    v5 = v16;
  }

  if ([v3 isPresentingMusicEditor])
  {
    [v3 editorPreviewSong];
    v5 = v17 = v5;
LABEL_15:

    goto LABEL_16;
  }

  if ([v3 viewMode] == 4)
  {
    v17 = [v3 styleManager];
    v18 = [v17 selectionDataSource];
    if ([v18 numberOfStyles] >= 1)
    {
      v19 = [v18 styleInfoAtIndex:{objc_msgSend(v17, "focusedStyleIndex")}];
      v20 = [v19 songResource];

      v5 = v20;
    }

    goto LABEL_15;
  }

LABEL_16:
  [(PXStorySongController *)self setCurrentSongResource:v5];
}

- (void)_invalidateCurrentSongResource
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateCurrentSongResource];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStorySongController;
  [(PXStoryController *)&v3 performChanges:a3];
}

- (void)setFailedAudioAssets:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_failedAudioAssets != v4)
  {
    v9 = v4;
    v6 = [(NSSet *)v4 isEqual:?];
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

- (void)setCurrentSongResource:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_currentSongResource != v5 && ([(PXStorySongResource *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentSongResource, a3);
    v7 = [(PXStorySongResource *)v6 px_storyResourceSongAsset];
    v8 = PLStoryGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = PXAudioAssetDescription(v7);
      *buf = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_INFO, "current song %@", buf, 0xCu);
    }

    v10 = [(PXStorySongController *)self model];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__PXStorySongController_setCurrentSongResource___block_invoke;
    v11[3] = &unk_1E77485B0;
    v12 = v6;
    [v10 performChanges:v11];
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStorySongController;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateCurrentSongResource, v4.receiver, v4.super_class}];
}

- (PXStorySongController)initWithModel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PXStorySongController;
  v5 = [(PXStoryController *)&v12 initWithObservableModel:v4];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_model, v4);
    v6->_failedSongDelayBeforeSwitchingToFallback = 0.0;
    v7 = [v4 recipeManager];
    [v7 registerChangeObserver:v6 context:RecipeManagerContext];

    v8 = [v4 styleManager];
    [v8 registerChangeObserver:v6 context:StyleManagerContext];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__PXStorySongController_initWithModel___block_invoke;
    v10[3] = &unk_1E774AFA8;
    v11 = v6;
    [(PXStorySongController *)v11 performChanges:v10];
  }

  return v6;
}

- (PXStorySongController)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStorySongController.m" lineNumber:33 description:{@"%s is not available as initializer", "-[PXStorySongController initWithObservableModel:]"}];

  abort();
}

@end