@interface PXStoryMuteStateController
- (PXStoryMuteStateController)initWithObservableModel:(id)a3;
- (PXStoryMuteStateController)initWithViewModel:(id)a3 volumeController:(id)a4 userDefaults:(id)a5;
- (PXStoryViewModel)viewModel;
- (void)_invalidateMainModel;
- (void)_saveMutedStatePreference;
- (void)_updateMainModel;
- (void)configureUpdater:(id)a3;
- (void)handleModelChange:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setMainModel:(id)a3;
@end

@implementation PXStoryMuteStateController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (VolumeControllerObservationContext == a5)
  {
    if (a4)
    {
      v13 = MEMORY[0x1E696AD98];
      v14 = [(PXStoryMuteStateController *)self volumeController];
      v9 = [v13 numberWithBool:{objc_msgSend(v14, "isInSilentMode")}];

      if ((a4 & 2) == 0)
      {
        if (!v9)
        {
          goto LABEL_15;
        }

        v15 = 3;
LABEL_14:
        v16 = [(PXStoryMuteStateController *)self viewModel];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __59__PXStoryMuteStateController_observable_didChange_context___block_invoke;
        v19[3] = &unk_1E77306F0;
        v20 = v9;
        v21 = v15;
        v17 = v9;
        [v16 performChanges:v19];

        goto LABEL_15;
      }
    }

    else
    {
      if ((a4 & 2) == 0)
      {
        goto LABEL_15;
      }

      v9 = 0;
    }

    v9 = MEMORY[0x1E695E110];
    v15 = 2;
    goto LABEL_14;
  }

  if (MainModelObservationContext == a5)
  {
    if ((a4 & 0x800000000000) != 0)
    {
      v10 = [(PXStoryMuteStateController *)self mainModel];
      v11 = [v10 editorPreviewSong];

      if (v11)
      {
        v12 = [(PXStoryMuteStateController *)self viewModel];
        [v12 performChanges:&__block_literal_global_17];
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PXStoryMuteStateController;
    [(PXStoryController *)&v18 observable:v8 didChange:a4 context:a5];
  }

LABEL_15:
}

void __59__PXStoryMuteStateController_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setMuted:objc_msgSend(v3 reason:{"BOOLValue"), *(a1 + 40)}];
}

- (void)handleModelChange:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PXStoryMuteStateController;
  [(PXStoryController *)&v8 handleModelChange:?];
  if ((a3 & 0x400000000000000) != 0)
  {
    v5 = [(PXStoryMuteStateController *)self viewModel];
    v6 = [v5 lastMutedChangeReason];

    if (v6 <= 4 && ((1 << v6) & 0x16) != 0)
    {
      [(PXStoryMuteStateController *)self _saveMutedStatePreference];
    }
  }

  if ((a3 & 0x40) != 0)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__PXStoryMuteStateController_handleModelChange___block_invoke;
    v7[3] = &unk_1E774AFA8;
    v7[4] = self;
    [(PXStoryController *)self performChanges:v7];
  }
}

- (void)_updateMainModel
{
  v4 = [(PXStoryMuteStateController *)self viewModel];
  v3 = [v4 mainModel];
  [(PXStoryMuteStateController *)self setMainModel:v3];
}

- (void)_invalidateMainModel
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainModel];
}

- (void)_saveMutedStatePreference
{
  v3 = [(PXStoryMuteStateController *)self viewModel];
  v4 = [v3 isMuted];

  v5 = [(PXStoryMuteStateController *)self volumeController];
  v6 = [v5 isInSilentMode];

  if (v4 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  }

  v7 = [(PXStoryMuteStateController *)self userDefaults];
  [v7 setPersistedValue:v8 forKey:@"PXStoryPlaybackMutedStatePreference"];
}

- (void)setMainModel:(id)a3
{
  v5 = a3;
  mainModel = self->_mainModel;
  if (mainModel != v5)
  {
    v7 = v5;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:MainModelObservationContext];
    objc_storeStrong(&self->_mainModel, a3);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext];
    v5 = v7;
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryMuteStateController;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateMainModel, v4.receiver, v4.super_class}];
}

- (PXStoryMuteStateController)initWithViewModel:(id)a3 volumeController:(id)a4 userDefaults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PXStoryMuteStateController;
  v11 = [(PXStoryController *)&v19 initWithObservableModel:v8];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_viewModel, v8);
    objc_storeStrong(&v12->_volumeController, a4);
    [(PXVolumeController *)v12->_volumeController registerChangeObserver:v12 context:VolumeControllerObservationContext];
    objc_storeStrong(&v12->_userDefaults, a5);
    v13 = [(PXStoryMuteStateController *)v12 userDefaults];
    v14 = [v13 persistedValueForKey:@"PXStoryPlaybackMutedStatePreference"];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;

      if (v15)
      {
        v16 = v15;
        if (![v15 BOOLValue])
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    v15 = 0;
    v16 = 0;
    if (![(PXVolumeController *)v12->_volumeController isInSilentMode])
    {
LABEL_10:
      [(PXStoryMuteStateController *)v12 _updateMainModel];

      goto LABEL_11;
    }

LABEL_9:
    WeakRetained = objc_loadWeakRetained(&v12->_viewModel);
    [WeakRetained performChanges:&__block_literal_global_33190];

    v16 = v15;
    goto LABEL_10;
  }

LABEL_11:

  return v12;
}

void __78__PXStoryMuteStateController_initWithViewModel_volumeController_userDefaults___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setMuted:1 reason:5];
  [v2 temporarilyShowMuteToggleButtonWhenChromeIsHidden];
}

- (PXStoryMuteStateController)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryMuteStateController.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXStoryMuteStateController initWithObservableModel:]"}];

  abort();
}

@end