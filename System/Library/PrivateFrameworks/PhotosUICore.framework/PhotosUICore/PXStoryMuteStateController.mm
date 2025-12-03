@interface PXStoryMuteStateController
- (PXStoryMuteStateController)initWithObservableModel:(id)model;
- (PXStoryMuteStateController)initWithViewModel:(id)model volumeController:(id)controller userDefaults:(id)defaults;
- (PXStoryViewModel)viewModel;
- (void)_invalidateMainModel;
- (void)_saveMutedStatePreference;
- (void)_updateMainModel;
- (void)configureUpdater:(id)updater;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setMainModel:(id)model;
@end

@implementation PXStoryMuteStateController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (VolumeControllerObservationContext == context)
  {
    if (change)
    {
      v13 = MEMORY[0x1E696AD98];
      volumeController = [(PXStoryMuteStateController *)self volumeController];
      v9 = [v13 numberWithBool:{objc_msgSend(volumeController, "isInSilentMode")}];

      if ((change & 2) == 0)
      {
        if (!v9)
        {
          goto LABEL_15;
        }

        v15 = 3;
LABEL_14:
        viewModel = [(PXStoryMuteStateController *)self viewModel];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __59__PXStoryMuteStateController_observable_didChange_context___block_invoke;
        v19[3] = &unk_1E77306F0;
        v20 = v9;
        v21 = v15;
        v17 = v9;
        [viewModel performChanges:v19];

        goto LABEL_15;
      }
    }

    else
    {
      if ((change & 2) == 0)
      {
        goto LABEL_15;
      }

      v9 = 0;
    }

    v9 = MEMORY[0x1E695E110];
    v15 = 2;
    goto LABEL_14;
  }

  if (MainModelObservationContext == context)
  {
    if ((change & 0x800000000000) != 0)
    {
      mainModel = [(PXStoryMuteStateController *)self mainModel];
      editorPreviewSong = [mainModel editorPreviewSong];

      if (editorPreviewSong)
      {
        viewModel2 = [(PXStoryMuteStateController *)self viewModel];
        [viewModel2 performChanges:&__block_literal_global_17];
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PXStoryMuteStateController;
    [(PXStoryController *)&v18 observable:observableCopy didChange:change context:context];
  }

LABEL_15:
}

void __59__PXStoryMuteStateController_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setMuted:objc_msgSend(v3 reason:{"BOOLValue"), *(a1 + 40)}];
}

- (void)handleModelChange:(unint64_t)change
{
  v8.receiver = self;
  v8.super_class = PXStoryMuteStateController;
  [(PXStoryController *)&v8 handleModelChange:?];
  if ((change & 0x400000000000000) != 0)
  {
    viewModel = [(PXStoryMuteStateController *)self viewModel];
    lastMutedChangeReason = [viewModel lastMutedChangeReason];

    if (lastMutedChangeReason <= 4 && ((1 << lastMutedChangeReason) & 0x16) != 0)
    {
      [(PXStoryMuteStateController *)self _saveMutedStatePreference];
    }
  }

  if ((change & 0x40) != 0)
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
  viewModel = [(PXStoryMuteStateController *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryMuteStateController *)self setMainModel:mainModel];
}

- (void)_invalidateMainModel
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainModel];
}

- (void)_saveMutedStatePreference
{
  viewModel = [(PXStoryMuteStateController *)self viewModel];
  isMuted = [viewModel isMuted];

  volumeController = [(PXStoryMuteStateController *)self volumeController];
  isInSilentMode = [volumeController isInSilentMode];

  if (isMuted == isInSilentMode)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:isMuted];
  }

  userDefaults = [(PXStoryMuteStateController *)self userDefaults];
  [userDefaults setPersistedValue:v8 forKey:@"PXStoryPlaybackMutedStatePreference"];
}

- (void)setMainModel:(id)model
{
  modelCopy = model;
  mainModel = self->_mainModel;
  if (mainModel != modelCopy)
  {
    v7 = modelCopy;
    [(PXStoryModel *)mainModel unregisterChangeObserver:self context:MainModelObservationContext];
    objc_storeStrong(&self->_mainModel, model);
    [(PXStoryModel *)self->_mainModel registerChangeObserver:self context:MainModelObservationContext];
    modelCopy = v7;
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryMuteStateController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateMainModel, v4.receiver, v4.super_class}];
}

- (PXStoryMuteStateController)initWithViewModel:(id)model volumeController:(id)controller userDefaults:(id)defaults
{
  modelCopy = model;
  controllerCopy = controller;
  defaultsCopy = defaults;
  v19.receiver = self;
  v19.super_class = PXStoryMuteStateController;
  v11 = [(PXStoryController *)&v19 initWithObservableModel:modelCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_viewModel, modelCopy);
    objc_storeStrong(&v12->_volumeController, controller);
    [(PXVolumeController *)v12->_volumeController registerChangeObserver:v12 context:VolumeControllerObservationContext];
    objc_storeStrong(&v12->_userDefaults, defaults);
    userDefaults = [(PXStoryMuteStateController *)v12 userDefaults];
    v14 = [userDefaults persistedValueForKey:@"PXStoryPlaybackMutedStatePreference"];

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

- (PXStoryMuteStateController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMuteStateController.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXStoryMuteStateController initWithObservableModel:]"}];

  abort();
}

@end