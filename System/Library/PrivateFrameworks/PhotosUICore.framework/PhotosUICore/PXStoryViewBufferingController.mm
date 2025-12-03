@interface PXStoryViewBufferingController
- (NSDictionary)totalBufferingTimeIntervalsPerReason;
- (PXStoryViewBufferingController)initWithObservableModel:(id)model;
- (PXStoryViewBufferingController)initWithViewModel:(id)model;
- (PXStoryViewModel)viewModel;
- (double)lastCriticalBufferingDuration;
- (double)lastNoncriticalBufferingDuration;
- (double)totalBufferingTimeInterval;
- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size;
- (void)_invalidateBufferingController;
- (void)_invalidateBufferingControllerProperties;
- (void)_invalidateMainModel;
- (void)_invalidateWantsBufferingHUDVisible;
- (void)_updateBufferingController;
- (void)_updateBufferingControllerProperties;
- (void)_updateMainModel;
- (void)_updateViewModelProperties;
- (void)_updateWantsBufferingHUDVisible;
- (void)configureUpdater:(id)updater;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBufferingController:(id)controller;
- (void)setIsActive:(BOOL)active;
- (void)setModel:(id)model;
- (void)setWantsBufferingHUDVisible:(BOOL)visible;
@end

@implementation PXStoryViewBufferingController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (id)diagnosticTextForHUDType:(int64_t)type displaySize:(CGSize)size
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = +[PXStorySettings sharedInstance];
  simulateSlowResourcesBuffering = [v6 simulateSlowResourcesBuffering];

  if (simulateSlowResourcesBuffering)
  {
    [v5 appendString:@"Simulating slow assets buffering!!!\n"];
  }

  bufferingController = [(PXStoryViewBufferingController *)self bufferingController];
  model = [(PXStoryViewBufferingController *)self model];
  readinessStatus = [model readinessStatus];
  if (readinessStatus > 3)
  {
    v11 = @"??";
  }

  else
  {
    v11 = off_1E77402F0[readinessStatus];
  }

  v12 = v11;
  [v5 appendFormat:@"Readiness Status: %@\n", v12];

  if (![(PXStoryViewBufferingController *)self isActive])
  {
    v13 = @"Not active\n";
    goto LABEL_10;
  }

  if ([bufferingController isBuffering])
  {
    v13 = @"Spinner is visible because of: \n";
LABEL_10:
    [v5 appendString:v13];
    goto LABEL_12;
  }

  [bufferingController totalBufferingTimeInterval];
  [v5 appendFormat:@"Total spinning time: %.2fs\n", v14];
LABEL_12:
  v34 = bufferingController;
  totalBufferingTimeIntervalsPerReason = [bufferingController totalBufferingTimeIntervalsPerReason];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  allKeys = [totalBufferingTimeIntervalsPerReason allKeys];
  v17 = [allKeys countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(allKeys);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v22 = PXStoryBufferingReasonsDescription([v21 unsignedIntegerValue]);
        v23 = [totalBufferingTimeIntervalsPerReason objectForKeyedSubscript:v21];
        [v23 doubleValue];
        [v5 appendFormat:@" · %@ - %.2fs\n", v22, v24];
      }

      v18 = [allKeys countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  [v5 appendString:@"\n"];
  viewModel = [(PXStoryViewBufferingController *)self viewModel];
  resourcesPreloadingController = [viewModel resourcesPreloadingController];
  model2 = [(PXStoryViewBufferingController *)self model];
  v28 = [resourcesPreloadingController resourcesPreloadingControllerForModel:model2];

  if (v28)
  {
    if (([v28 isCompleted] & 1) == 0)
    {
      bufferingReasons = [v34 bufferingReasons];
      v30 = [bufferingReasons containsIndex:2];

      if (v30)
      {
        [v5 appendString:@"Assets Buffering Details:\n"];
        diagnosticDescription = [v28 diagnosticDescription];
        [v5 appendString:diagnosticDescription];
      }
    }
  }

  v32 = [v5 copy];

  return v32;
}

- (void)setWantsBufferingHUDVisible:(BOOL)visible
{
  if (self->_wantsBufferingHUDVisible != visible)
  {
    self->_wantsBufferingHUDVisible = visible;
    if (visible)
    {
      viewModel = [(PXStoryViewBufferingController *)self viewModel];
      -[PXStoryViewBufferingController setOriginalIsHUDVisible:](self, "setOriginalIsHUDVisible:", [viewModel isHUDVisible]);

      viewModel2 = [(PXStoryViewBufferingController *)self viewModel];
      -[PXStoryViewBufferingController setOriginalHUDType:](self, "setOriginalHUDType:", [viewModel2 diagnosticHUDType]);
    }

    [(PXStoryViewBufferingController *)self _invalidateViewModelProperties];
  }
}

- (void)setBufferingController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  if (self->_bufferingController != controllerCopy)
  {
    v8 = controllerCopy;
    v7 = [(PXStoryBufferingController *)controllerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryBufferingController *)self->_bufferingController unregisterChangeObserver:self context:BufferingControllerObservationContext];
      objc_storeStrong(&self->_bufferingController, controller);
      [(PXStoryBufferingController *)self->_bufferingController registerChangeObserver:self context:BufferingControllerObservationContext];
      [(PXStoryViewBufferingController *)self _invalidateBufferingControllerProperties];
      [(PXStoryViewBufferingController *)self _invalidateWantsBufferingHUDVisible];
      v6 = v8;
    }
  }
}

- (void)setModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_model != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(PXStoryModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_model, model);
      [(PXStoryViewBufferingController *)self _invalidateBufferingController];
      v6 = v8;
    }
  }
}

- (void)_updateViewModelProperties
{
  viewModel = [(PXStoryViewBufferingController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__PXStoryViewBufferingController__updateViewModelProperties__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [viewModel performChanges:v4];
}

void __60__PXStoryViewBufferingController__updateViewModelProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) wantsBufferingHUDVisible])
  {
    if (([v3 isHUDVisible] & 1) == 0)
    {
      [v3 setIsHUDVisible:1];
      [v3 setDiagnosticHUDType:4];
      [*(a1 + 32) setDidShowBufferingHUDAutomatically:1];
    }
  }

  else if ([*(a1 + 32) didShowBufferingHUDAutomatically])
  {
    [*(a1 + 32) setDidShowBufferingHUDAutomatically:0];
    if ([v3 isHUDVisible])
    {
      if ([v3 diagnosticHUDType] == 4)
      {
        [v3 setIsHUDVisible:{objc_msgSend(*(a1 + 32), "originalIsHUDVisible")}];
        [v3 setDiagnosticHUDType:{objc_msgSend(*(a1 + 32), "originalHUDType")}];
      }
    }
  }
}

- (void)_updateWantsBufferingHUDVisible
{
  if (PFOSVariantHasInternalUI())
  {
    bufferingController = [(PXStoryViewBufferingController *)self bufferingController];
    [bufferingController lastCriticalBufferingDuration];
    v4 = v3;
    v5 = +[PXStorySettings sharedInstance];
    [v5 bufferingHUDAutoPresentationTimeout];
    [(PXStoryViewBufferingController *)self setWantsBufferingHUDVisible:v4 >= v6];
  }

  else
  {

    [(PXStoryViewBufferingController *)self setWantsBufferingHUDVisible:0];
  }
}

- (void)_invalidateWantsBufferingHUDVisible
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateWantsBufferingHUDVisible];
}

- (void)_updateBufferingControllerProperties
{
  bufferingController = [(PXStoryViewBufferingController *)self bufferingController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__PXStoryViewBufferingController__updateBufferingControllerProperties__block_invoke;
  v4[3] = &unk_1E773FEC0;
  v4[4] = self;
  [bufferingController performChanges:v4];
}

void __70__PXStoryViewBufferingController__updateBufferingControllerProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIsActive:{objc_msgSend(v2, "isActive")}];
}

- (void)_invalidateBufferingControllerProperties
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateBufferingControllerProperties];
}

- (void)_updateBufferingController
{
  v3 = [PXStoryBufferingController alloc];
  model = [(PXStoryViewBufferingController *)self model];
  v4 = [(PXStoryBufferingController *)v3 initWithModel:model];
  [(PXStoryViewBufferingController *)self setBufferingController:v4];
}

- (void)_invalidateBufferingController
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateBufferingController];
}

- (void)_updateMainModel
{
  viewModel = [(PXStoryViewBufferingController *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryViewBufferingController *)self setModel:mainModel];
}

- (void)_invalidateMainModel
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateMainModel];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (BufferingControllerObservationContext == context)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__PXStoryViewBufferingController_observable_didChange_context___block_invoke;
    v6[3] = &unk_1E77377C8;
    v6[4] = self;
    v6[5] = change;
    [(PXStoryController *)self performChanges:v6];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PXStoryViewBufferingController;
    [(PXStoryController *)&v5 observable:observable didChange:change context:?];
  }
}

uint64_t __63__PXStoryViewBufferingController_observable_didChange_context___block_invoke(uint64_t result)
{
  if (*(result + 40))
  {
    return [*(result + 32) _invalidateWantsBufferingHUDVisible];
  }

  return result;
}

- (void)handleModelChange:(unint64_t)change
{
  v6.receiver = self;
  v6.super_class = PXStoryViewBufferingController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PXStoryViewBufferingController_handleModelChange___block_invoke;
  v5[3] = &unk_1E77377C8;
  v5[4] = self;
  v5[5] = change;
  [(PXStoryController *)self performChanges:v5];
}

uint64_t __52__PXStoryViewBufferingController_handleModelChange___block_invoke(uint64_t result)
{
  if ((*(result + 40) & 0x40) != 0)
  {
    return [*(result + 32) _invalidateMainModel];
  }

  return result;
}

- (NSDictionary)totalBufferingTimeIntervalsPerReason
{
  bufferingController = [(PXStoryViewBufferingController *)self bufferingController];
  totalBufferingTimeIntervalsPerReason = [bufferingController totalBufferingTimeIntervalsPerReason];

  return totalBufferingTimeIntervalsPerReason;
}

- (double)totalBufferingTimeInterval
{
  bufferingController = [(PXStoryViewBufferingController *)self bufferingController];
  [bufferingController totalBufferingTimeInterval];
  v4 = v3;

  return v4;
}

- (double)lastCriticalBufferingDuration
{
  bufferingController = [(PXStoryViewBufferingController *)self bufferingController];
  [bufferingController lastCriticalBufferingDuration];
  v4 = v3;

  return v4;
}

- (double)lastNoncriticalBufferingDuration
{
  bufferingController = [(PXStoryViewBufferingController *)self bufferingController];
  [bufferingController lastNoncriticalBufferingDuration];
  v4 = v3;

  return v4;
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXStoryViewBufferingController *)self _invalidateBufferingControllerProperties];
  }
}

- (void)configureUpdater:(id)updater
{
  v4.receiver = self;
  v4.super_class = PXStoryViewBufferingController;
  updaterCopy = updater;
  [(PXStoryController *)&v4 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:{sel__updateMainModel, v4.receiver, v4.super_class}];
  [updaterCopy addUpdateSelector:sel__updateBufferingController];
  [updaterCopy addUpdateSelector:sel__updateBufferingControllerProperties];
  [updaterCopy addUpdateSelector:sel__updateWantsBufferingHUDVisible];
  [updaterCopy addUpdateSelector:sel__updateViewModelProperties];
}

- (PXStoryViewBufferingController)initWithViewModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = PXStoryViewBufferingController;
  v5 = [(PXStoryController *)&v14 initWithObservableModel:modelCopy];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_viewModel, modelCopy);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__PXStoryViewBufferingController_initWithViewModel___block_invoke;
    v12[3] = &unk_1E774B048;
    v8 = v6;
    v13 = v8;
    [modelCopy performChanges:v12];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PXStoryViewBufferingController_initWithViewModel___block_invoke_2;
    v10[3] = &unk_1E77377A0;
    v11 = v8;
    [(PXStoryController *)v11 performChanges:v10];
  }

  return v6;
}

- (PXStoryViewBufferingController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewBufferingController.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXStoryViewBufferingController initWithObservableModel:]"}];

  abort();
}

@end