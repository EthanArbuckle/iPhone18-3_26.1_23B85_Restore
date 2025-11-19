@interface PXStoryViewModeTransitionsHelper
- (PXStoryModel)model;
- (PXStoryViewModeTransitionsHelper)init;
- (PXStoryViewModeTransitionsHelper)initWithModel:(id)a3;
- (PXStoryViewModeTransitionsHelperDelegate)delegate;
- (void)_configureTransition:(id)a3;
- (void)_currentTransitionDidCancel;
- (void)_currentTransitionDidFinish;
- (void)_invalidateTransition;
- (void)_invalidateTransitionCompletion;
- (void)_setNeedsUpdate;
- (void)_startTransition:(id)a3;
- (void)_updateTransition;
- (void)_updateTransitionCompletion;
- (void)invalidatePresentingGeometry;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXStoryViewModeTransitionsHelper

- (PXStoryViewModeTransitionsHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ViewModelObservationContext == a5)
  {
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    v11 = v9;
    [(PXStoryViewModeTransitionsHelper *)self _invalidateTransition];
    goto LABEL_7;
  }

  if (ViewModeTransitionObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryViewModeTransitionsHelper.m" lineNumber:209 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 2) != 0)
  {
    v11 = v9;
    [(PXStoryViewModeTransitionsHelper *)self _invalidateTransitionCompletion];
LABEL_7:
    v9 = v11;
  }

LABEL_8:
}

- (void)_currentTransitionDidCancel
{
  v3 = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];
  -[PXStoryViewModeTransitionsHelper setPresentedViewMode:](self, "setPresentedViewMode:", [v3 sourceViewMode]);
  [(PXStoryViewModeTransitionsHelper *)self setCurrentViewModeTransition:0];
  [(PXStoryViewModeTransitionsHelper *)self setPendingViewModeTransition:0];
  v4 = [(PXStoryViewModeTransitionsHelper *)self model];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PXStoryViewModeTransitionsHelper__currentTransitionDidCancel__block_invoke;
  v6[3] = &unk_1E77485B0;
  v7 = v3;
  v5 = v3;
  [v4 performChanges:v6];
}

void __63__PXStoryViewModeTransitionsHelper__currentTransitionDidCancel__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setViewMode:{objc_msgSend(v2, "sourceViewMode")}];
  [v3 setViewModeTransition:0];
}

- (void)_currentTransitionDidFinish
{
  [(PXStoryViewModeTransitionsHelper *)self setCurrentViewModeTransition:0];
  v3 = [(PXStoryViewModeTransitionsHelper *)self model];
  [v3 performChanges:&__block_literal_global_33780];

  v4 = [(PXStoryViewModeTransitionsHelper *)self pendingViewModeTransition];

  if (v4)
  {
    v5 = [(PXStoryViewModeTransitionsHelper *)self pendingViewModeTransition];
    [(PXStoryViewModeTransitionsHelper *)self _startTransition:v5];

    [(PXStoryViewModeTransitionsHelper *)self setPendingViewModeTransition:0];
  }
}

- (void)_startTransition:(id)a3
{
  v4 = a3;
  [v4 registerChangeObserver:self context:ViewModeTransitionObservationContext];
  [(PXStoryViewModeTransitionsHelper *)self setCurrentViewModeTransition:v4];
  v5 = [(PXStoryViewModeTransitionsHelper *)self model];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PXStoryViewModeTransitionsHelper__startTransition___block_invoke;
  v7[3] = &unk_1E77485B0;
  v8 = v4;
  v6 = v4;
  [v5 performChanges:v7];

  [(PXStoryViewModeTransitionsHelper *)self _configureTransition:v6];
  [v6 start];
}

- (void)_updateTransitionCompletion
{
  v3 = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];
  if ([v3 isComplete])
  {
    if ([v3 isFinished])
    {
      [(PXStoryViewModeTransitionsHelper *)self _currentTransitionDidFinish];
    }

    else
    {
      [(PXStoryViewModeTransitionsHelper *)self _currentTransitionDidCancel];
    }
  }
}

- (void)_invalidateTransitionCompletion
{
  v2 = [(PXStoryViewModeTransitionsHelper *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTransitionCompletion];
}

- (void)_updateTransition
{
  v3 = [(PXStoryViewModeTransitionsHelper *)self model];
  v4 = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 destinationViewMode];
  }

  else
  {
    v6 = [(PXStoryViewModeTransitionsHelper *)self presentedViewMode];
  }

  v7 = v6;
  v8 = [v3 viewMode];
  [(PXStoryViewModeTransitionsHelper *)self setPresentedViewMode:v8];
  if (v7 == v8 || ![(PXStoryViewModeTransitionsHelper *)self _isViewModeSupported:v7]|| ![(PXStoryViewModeTransitionsHelper *)self _isViewModeSupported:v8])
  {
    v17 = 0;
    if (!v5)
    {
      goto LABEL_26;
    }

LABEL_14:
    [(PXStoryViewModeTransitionsHelper *)self setPendingViewModeTransition:v17];
    goto LABEL_28;
  }

  v23 = 0;
  v9 = [v3 lastHitAssetReference];

  if (v9)
  {
    v10 = [v3 lastHitAssetReference];
LABEL_9:
    v23 = [v3 lastHitClipIdentifier];
    goto LABEL_10;
  }

  if ([v3 lastHitClipIdentifier])
  {
    v10 = [v3 assetReferenceForClipIdentifier:{objc_msgSend(v3, "lastHitClipIdentifier")}];
    if (!v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v22 = 0;
  v19 = [v3 getMainVisibleClipIdentifier:&v23 assetReferece:&v22];
  v10 = v22;
  if ((v19 & 1) == 0)
  {
    v20 = PLStoryGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_INFO, "Unable to find asset to track for grid transition.", v21, 2u);
    }
  }

LABEL_10:
  v11 = [(PXStoryViewModeTransitionsHelper *)self delegate];
  v12 = [v11 transitionsHelper:self timelineLayoutSnapshotForViewMode:v7];

  v13 = [(PXStoryViewModeTransitionsHelper *)self delegate];
  v14 = [v13 transitionsHelper:self timelineLayoutSnapshotForViewMode:v8];

  if (v7 == 2 && v8 == 1)
  {
    v15 = [PXStoryViewModeBrowserToPlayerTransition alloc];
    v16 = [(PXStoryViewModeBrowserToPlayerTransition *)v15 initWithDestinationTimelineLayoutSnapshot:v14 assetReference:v10 trackingClipIdentifier:v23];
LABEL_24:
    v17 = v16;
    goto LABEL_25;
  }

  if (v7 == 1 && v8 == 2)
  {
    v18 = [PXStoryViewModePlayerToBrowserTransition alloc];
    v16 = [(PXStoryViewModePlayerToBrowserTransition *)v18 initWithSourceTimelineLayoutSnapshot:v12 assetReference:v10 trackingClipIdentifier:v23];
    goto LABEL_24;
  }

  v17 = 0;
  if (v12 && v14)
  {
    v16 = [[PXStoryViewModeTransition alloc] initWithSourceViewMode:v7 sourceSnapshot:v12 destinationViewMode:v8 destinationSnapshot:v14 assetReference:v10];
    goto LABEL_24;
  }

LABEL_25:

  if (v5)
  {
    goto LABEL_14;
  }

LABEL_26:
  if (v17)
  {
    [(PXStoryViewModeTransitionsHelper *)self _startTransition:v17];
  }

LABEL_28:
}

- (void)_invalidateTransition
{
  v2 = [(PXStoryViewModeTransitionsHelper *)self updater];
  [v2 setNeedsUpdateOf:sel__updateTransition];
}

- (void)_configureTransition:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryViewModeTransitionsHelper *)self delegate];
  v6 = [v5 transitionsHelper:self regionOfInterestForTransition:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PXStoryViewModeTransitionsHelper__configureTransition___block_invoke;
  v8[3] = &unk_1E773E5B0;
  v9 = v6;
  v7 = v6;
  [v4 performChanges:v8];
}

- (void)invalidatePresentingGeometry
{
  v3 = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];

  if (v3)
  {
    v4 = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];
    [(PXStoryViewModeTransitionsHelper *)self _configureTransition:v4];
  }
}

- (void)_setNeedsUpdate
{
  v3 = [(PXStoryViewModeTransitionsHelper *)self delegate];
  [v3 transitionsHelperNeedsUpdate:self];
}

- (PXStoryViewModeTransitionsHelper)initWithModel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryViewModeTransitionsHelper;
  v5 = [(PXStoryViewModeTransitionsHelper *)&v9 init];
  if (v5)
  {
    v6 = [[off_1E7721940 alloc] initWithTarget:v5 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v5->_updater;
    v5->_updater = v6;

    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateTransitionCompletion];
    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateTransition];
    objc_storeWeak(&v5->_model, v4);
    v5->_presentedViewMode = [v4 viewMode];
    [v4 registerChangeObserver:v5 context:ViewModelObservationContext];
  }

  return v5;
}

- (PXStoryViewModeTransitionsHelper)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryViewModeTransitionsHelper.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXStoryViewModeTransitionsHelper init]"}];

  abort();
}

@end