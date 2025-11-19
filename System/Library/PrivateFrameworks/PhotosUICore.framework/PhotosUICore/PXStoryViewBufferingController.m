@interface PXStoryViewBufferingController
- (NSDictionary)totalBufferingTimeIntervalsPerReason;
- (PXStoryViewBufferingController)initWithObservableModel:(id)a3;
- (PXStoryViewBufferingController)initWithViewModel:(id)a3;
- (PXStoryViewModel)viewModel;
- (double)lastCriticalBufferingDuration;
- (double)lastNoncriticalBufferingDuration;
- (double)totalBufferingTimeInterval;
- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4;
- (void)_invalidateBufferingController;
- (void)_invalidateBufferingControllerProperties;
- (void)_invalidateMainModel;
- (void)_invalidateWantsBufferingHUDVisible;
- (void)_updateBufferingController;
- (void)_updateBufferingControllerProperties;
- (void)_updateMainModel;
- (void)_updateViewModelProperties;
- (void)_updateWantsBufferingHUDVisible;
- (void)configureUpdater:(id)a3;
- (void)handleModelChange:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setBufferingController:(id)a3;
- (void)setIsActive:(BOOL)a3;
- (void)setModel:(id)a3;
- (void)setWantsBufferingHUDVisible:(BOOL)a3;
@end

@implementation PXStoryViewBufferingController

- (PXStoryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (id)diagnosticTextForHUDType:(int64_t)a3 displaySize:(CGSize)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v6 = +[PXStorySettings sharedInstance];
  v7 = [v6 simulateSlowResourcesBuffering];

  if (v7)
  {
    [v5 appendString:@"Simulating slow assets buffering!!!\n"];
  }

  v8 = [(PXStoryViewBufferingController *)self bufferingController];
  v9 = [(PXStoryViewBufferingController *)self model];
  v10 = [v9 readinessStatus];
  if (v10 > 3)
  {
    v11 = @"??";
  }

  else
  {
    v11 = off_1E77402F0[v10];
  }

  v12 = v11;
  [v5 appendFormat:@"Readiness Status: %@\n", v12];

  if (![(PXStoryViewBufferingController *)self isActive])
  {
    v13 = @"Not active\n";
    goto LABEL_10;
  }

  if ([v8 isBuffering])
  {
    v13 = @"Spinner is visible because of: \n";
LABEL_10:
    [v5 appendString:v13];
    goto LABEL_12;
  }

  [v8 totalBufferingTimeInterval];
  [v5 appendFormat:@"Total spinning time: %.2fs\n", v14];
LABEL_12:
  v34 = v8;
  v15 = [v8 totalBufferingTimeIntervalsPerReason];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [v15 allKeys];
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v35 + 1) + 8 * i);
        v22 = PXStoryBufferingReasonsDescription([v21 unsignedIntegerValue]);
        v23 = [v15 objectForKeyedSubscript:v21];
        [v23 doubleValue];
        [v5 appendFormat:@" · %@ - %.2fs\n", v22, v24];
      }

      v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  [v5 appendString:@"\n"];
  v25 = [(PXStoryViewBufferingController *)self viewModel];
  v26 = [v25 resourcesPreloadingController];
  v27 = [(PXStoryViewBufferingController *)self model];
  v28 = [v26 resourcesPreloadingControllerForModel:v27];

  if (v28)
  {
    if (([v28 isCompleted] & 1) == 0)
    {
      v29 = [v34 bufferingReasons];
      v30 = [v29 containsIndex:2];

      if (v30)
      {
        [v5 appendString:@"Assets Buffering Details:\n"];
        v31 = [v28 diagnosticDescription];
        [v5 appendString:v31];
      }
    }
  }

  v32 = [v5 copy];

  return v32;
}

- (void)setWantsBufferingHUDVisible:(BOOL)a3
{
  if (self->_wantsBufferingHUDVisible != a3)
  {
    self->_wantsBufferingHUDVisible = a3;
    if (a3)
    {
      v5 = [(PXStoryViewBufferingController *)self viewModel];
      -[PXStoryViewBufferingController setOriginalIsHUDVisible:](self, "setOriginalIsHUDVisible:", [v5 isHUDVisible]);

      v6 = [(PXStoryViewBufferingController *)self viewModel];
      -[PXStoryViewBufferingController setOriginalHUDType:](self, "setOriginalHUDType:", [v6 diagnosticHUDType]);
    }

    [(PXStoryViewBufferingController *)self _invalidateViewModelProperties];
  }
}

- (void)setBufferingController:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_bufferingController != v5)
  {
    v8 = v5;
    v7 = [(PXStoryBufferingController *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryBufferingController *)self->_bufferingController unregisterChangeObserver:self context:BufferingControllerObservationContext];
      objc_storeStrong(&self->_bufferingController, a3);
      [(PXStoryBufferingController *)self->_bufferingController registerChangeObserver:self context:BufferingControllerObservationContext];
      [(PXStoryViewBufferingController *)self _invalidateBufferingControllerProperties];
      [(PXStoryViewBufferingController *)self _invalidateWantsBufferingHUDVisible];
      v6 = v8;
    }
  }
}

- (void)setModel:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_model != v5)
  {
    v8 = v5;
    v7 = [(PXStoryModel *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_model, a3);
      [(PXStoryViewBufferingController *)self _invalidateBufferingController];
      v6 = v8;
    }
  }
}

- (void)_updateViewModelProperties
{
  v3 = [(PXStoryViewBufferingController *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__PXStoryViewBufferingController__updateViewModelProperties__block_invoke;
  v4[3] = &unk_1E774B048;
  v4[4] = self;
  [v3 performChanges:v4];
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
    v7 = [(PXStoryViewBufferingController *)self bufferingController];
    [v7 lastCriticalBufferingDuration];
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
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateWantsBufferingHUDVisible];
}

- (void)_updateBufferingControllerProperties
{
  v3 = [(PXStoryViewBufferingController *)self bufferingController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__PXStoryViewBufferingController__updateBufferingControllerProperties__block_invoke;
  v4[3] = &unk_1E773FEC0;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __70__PXStoryViewBufferingController__updateBufferingControllerProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIsActive:{objc_msgSend(v2, "isActive")}];
}

- (void)_invalidateBufferingControllerProperties
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateBufferingControllerProperties];
}

- (void)_updateBufferingController
{
  v3 = [PXStoryBufferingController alloc];
  v5 = [(PXStoryViewBufferingController *)self model];
  v4 = [(PXStoryBufferingController *)v3 initWithModel:v5];
  [(PXStoryViewBufferingController *)self setBufferingController:v4];
}

- (void)_invalidateBufferingController
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateBufferingController];
}

- (void)_updateMainModel
{
  v4 = [(PXStoryViewBufferingController *)self viewModel];
  v3 = [v4 mainModel];
  [(PXStoryViewBufferingController *)self setModel:v3];
}

- (void)_invalidateMainModel
{
  v2 = [(PXStoryController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateMainModel];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (BufferingControllerObservationContext == a5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__PXStoryViewBufferingController_observable_didChange_context___block_invoke;
    v6[3] = &unk_1E77377C8;
    v6[4] = self;
    v6[5] = a4;
    [(PXStoryController *)self performChanges:v6];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PXStoryViewBufferingController;
    [(PXStoryController *)&v5 observable:a3 didChange:a4 context:?];
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

- (void)handleModelChange:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PXStoryViewBufferingController;
  [(PXStoryController *)&v6 handleModelChange:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PXStoryViewBufferingController_handleModelChange___block_invoke;
  v5[3] = &unk_1E77377C8;
  v5[4] = self;
  v5[5] = a3;
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
  v2 = [(PXStoryViewBufferingController *)self bufferingController];
  v3 = [v2 totalBufferingTimeIntervalsPerReason];

  return v3;
}

- (double)totalBufferingTimeInterval
{
  v2 = [(PXStoryViewBufferingController *)self bufferingController];
  [v2 totalBufferingTimeInterval];
  v4 = v3;

  return v4;
}

- (double)lastCriticalBufferingDuration
{
  v2 = [(PXStoryViewBufferingController *)self bufferingController];
  [v2 lastCriticalBufferingDuration];
  v4 = v3;

  return v4;
}

- (double)lastNoncriticalBufferingDuration
{
  v2 = [(PXStoryViewBufferingController *)self bufferingController];
  [v2 lastNoncriticalBufferingDuration];
  v4 = v3;

  return v4;
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXStoryViewBufferingController *)self _invalidateBufferingControllerProperties];
  }
}

- (void)configureUpdater:(id)a3
{
  v4.receiver = self;
  v4.super_class = PXStoryViewBufferingController;
  v3 = a3;
  [(PXStoryController *)&v4 configureUpdater:v3];
  [v3 addUpdateSelector:{sel__updateMainModel, v4.receiver, v4.super_class}];
  [v3 addUpdateSelector:sel__updateBufferingController];
  [v3 addUpdateSelector:sel__updateBufferingControllerProperties];
  [v3 addUpdateSelector:sel__updateWantsBufferingHUDVisible];
  [v3 addUpdateSelector:sel__updateViewModelProperties];
}

- (PXStoryViewBufferingController)initWithViewModel:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXStoryViewBufferingController;
  v5 = [(PXStoryController *)&v14 initWithObservableModel:v4];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_viewModel, v4);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__PXStoryViewBufferingController_initWithViewModel___block_invoke;
    v12[3] = &unk_1E774B048;
    v8 = v6;
    v13 = v8;
    [v4 performChanges:v12];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PXStoryViewBufferingController_initWithViewModel___block_invoke_2;
    v10[3] = &unk_1E77377A0;
    v11 = v8;
    [(PXStoryController *)v11 performChanges:v10];
  }

  return v6;
}

- (PXStoryViewBufferingController)initWithObservableModel:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXStoryViewBufferingController.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXStoryViewBufferingController initWithObservableModel:]"}];

  abort();
}

@end