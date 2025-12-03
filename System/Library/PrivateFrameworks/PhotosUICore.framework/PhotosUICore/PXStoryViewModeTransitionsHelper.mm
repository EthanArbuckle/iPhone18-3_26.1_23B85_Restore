@interface PXStoryViewModeTransitionsHelper
- (PXStoryModel)model;
- (PXStoryViewModeTransitionsHelper)init;
- (PXStoryViewModeTransitionsHelper)initWithModel:(id)model;
- (PXStoryViewModeTransitionsHelperDelegate)delegate;
- (void)_configureTransition:(id)transition;
- (void)_currentTransitionDidCancel;
- (void)_currentTransitionDidFinish;
- (void)_invalidateTransition;
- (void)_invalidateTransitionCompletion;
- (void)_setNeedsUpdate;
- (void)_startTransition:(id)transition;
- (void)_updateTransition;
- (void)_updateTransitionCompletion;
- (void)invalidatePresentingGeometry;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ViewModelObservationContext == context)
  {
    if ((changeCopy & 0x10000) == 0)
    {
      goto LABEL_8;
    }

    v11 = observableCopy;
    [(PXStoryViewModeTransitionsHelper *)self _invalidateTransition];
    goto LABEL_7;
  }

  if (ViewModeTransitionObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewModeTransitionsHelper.m" lineNumber:209 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 2) != 0)
  {
    v11 = observableCopy;
    [(PXStoryViewModeTransitionsHelper *)self _invalidateTransitionCompletion];
LABEL_7:
    observableCopy = v11;
  }

LABEL_8:
}

- (void)_currentTransitionDidCancel
{
  currentViewModeTransition = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];
  -[PXStoryViewModeTransitionsHelper setPresentedViewMode:](self, "setPresentedViewMode:", [currentViewModeTransition sourceViewMode]);
  [(PXStoryViewModeTransitionsHelper *)self setCurrentViewModeTransition:0];
  [(PXStoryViewModeTransitionsHelper *)self setPendingViewModeTransition:0];
  model = [(PXStoryViewModeTransitionsHelper *)self model];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__PXStoryViewModeTransitionsHelper__currentTransitionDidCancel__block_invoke;
  v6[3] = &unk_1E77485B0;
  v7 = currentViewModeTransition;
  v5 = currentViewModeTransition;
  [model performChanges:v6];
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
  model = [(PXStoryViewModeTransitionsHelper *)self model];
  [model performChanges:&__block_literal_global_33780];

  pendingViewModeTransition = [(PXStoryViewModeTransitionsHelper *)self pendingViewModeTransition];

  if (pendingViewModeTransition)
  {
    pendingViewModeTransition2 = [(PXStoryViewModeTransitionsHelper *)self pendingViewModeTransition];
    [(PXStoryViewModeTransitionsHelper *)self _startTransition:pendingViewModeTransition2];

    [(PXStoryViewModeTransitionsHelper *)self setPendingViewModeTransition:0];
  }
}

- (void)_startTransition:(id)transition
{
  transitionCopy = transition;
  [transitionCopy registerChangeObserver:self context:ViewModeTransitionObservationContext];
  [(PXStoryViewModeTransitionsHelper *)self setCurrentViewModeTransition:transitionCopy];
  model = [(PXStoryViewModeTransitionsHelper *)self model];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PXStoryViewModeTransitionsHelper__startTransition___block_invoke;
  v7[3] = &unk_1E77485B0;
  v8 = transitionCopy;
  v6 = transitionCopy;
  [model performChanges:v7];

  [(PXStoryViewModeTransitionsHelper *)self _configureTransition:v6];
  [v6 start];
}

- (void)_updateTransitionCompletion
{
  currentViewModeTransition = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];
  if ([currentViewModeTransition isComplete])
  {
    if ([currentViewModeTransition isFinished])
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
  updater = [(PXStoryViewModeTransitionsHelper *)self updater];
  [updater setNeedsUpdateOf:sel__updateTransitionCompletion];
}

- (void)_updateTransition
{
  model = [(PXStoryViewModeTransitionsHelper *)self model];
  currentViewModeTransition = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];
  v5 = currentViewModeTransition;
  if (currentViewModeTransition)
  {
    destinationViewMode = [currentViewModeTransition destinationViewMode];
  }

  else
  {
    destinationViewMode = [(PXStoryViewModeTransitionsHelper *)self presentedViewMode];
  }

  v7 = destinationViewMode;
  viewMode = [model viewMode];
  [(PXStoryViewModeTransitionsHelper *)self setPresentedViewMode:viewMode];
  if (v7 == viewMode || ![(PXStoryViewModeTransitionsHelper *)self _isViewModeSupported:v7]|| ![(PXStoryViewModeTransitionsHelper *)self _isViewModeSupported:viewMode])
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

  lastHitClipIdentifier = 0;
  lastHitAssetReference = [model lastHitAssetReference];

  if (lastHitAssetReference)
  {
    lastHitAssetReference2 = [model lastHitAssetReference];
LABEL_9:
    lastHitClipIdentifier = [model lastHitClipIdentifier];
    goto LABEL_10;
  }

  if ([model lastHitClipIdentifier])
  {
    lastHitAssetReference2 = [model assetReferenceForClipIdentifier:{objc_msgSend(model, "lastHitClipIdentifier")}];
    if (!lastHitAssetReference2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v22 = 0;
  v19 = [model getMainVisibleClipIdentifier:&lastHitClipIdentifier assetReferece:&v22];
  lastHitAssetReference2 = v22;
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
  delegate = [(PXStoryViewModeTransitionsHelper *)self delegate];
  v12 = [delegate transitionsHelper:self timelineLayoutSnapshotForViewMode:v7];

  delegate2 = [(PXStoryViewModeTransitionsHelper *)self delegate];
  v14 = [delegate2 transitionsHelper:self timelineLayoutSnapshotForViewMode:viewMode];

  if (v7 == 2 && viewMode == 1)
  {
    v15 = [PXStoryViewModeBrowserToPlayerTransition alloc];
    v16 = [(PXStoryViewModeBrowserToPlayerTransition *)v15 initWithDestinationTimelineLayoutSnapshot:v14 assetReference:lastHitAssetReference2 trackingClipIdentifier:lastHitClipIdentifier];
LABEL_24:
    v17 = v16;
    goto LABEL_25;
  }

  if (v7 == 1 && viewMode == 2)
  {
    v18 = [PXStoryViewModePlayerToBrowserTransition alloc];
    v16 = [(PXStoryViewModePlayerToBrowserTransition *)v18 initWithSourceTimelineLayoutSnapshot:v12 assetReference:lastHitAssetReference2 trackingClipIdentifier:lastHitClipIdentifier];
    goto LABEL_24;
  }

  v17 = 0;
  if (v12 && v14)
  {
    v16 = [[PXStoryViewModeTransition alloc] initWithSourceViewMode:v7 sourceSnapshot:v12 destinationViewMode:viewMode destinationSnapshot:v14 assetReference:lastHitAssetReference2];
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
  updater = [(PXStoryViewModeTransitionsHelper *)self updater];
  [updater setNeedsUpdateOf:sel__updateTransition];
}

- (void)_configureTransition:(id)transition
{
  transitionCopy = transition;
  delegate = [(PXStoryViewModeTransitionsHelper *)self delegate];
  v6 = [delegate transitionsHelper:self regionOfInterestForTransition:transitionCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PXStoryViewModeTransitionsHelper__configureTransition___block_invoke;
  v8[3] = &unk_1E773E5B0;
  v9 = v6;
  v7 = v6;
  [transitionCopy performChanges:v8];
}

- (void)invalidatePresentingGeometry
{
  currentViewModeTransition = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];

  if (currentViewModeTransition)
  {
    currentViewModeTransition2 = [(PXStoryViewModeTransitionsHelper *)self currentViewModeTransition];
    [(PXStoryViewModeTransitionsHelper *)self _configureTransition:currentViewModeTransition2];
  }
}

- (void)_setNeedsUpdate
{
  delegate = [(PXStoryViewModeTransitionsHelper *)self delegate];
  [delegate transitionsHelperNeedsUpdate:self];
}

- (PXStoryViewModeTransitionsHelper)initWithModel:(id)model
{
  modelCopy = model;
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
    objc_storeWeak(&v5->_model, modelCopy);
    v5->_presentedViewMode = [modelCopy viewMode];
    [modelCopy registerChangeObserver:v5 context:ViewModelObservationContext];
  }

  return v5;
}

- (PXStoryViewModeTransitionsHelper)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewModeTransitionsHelper.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXStoryViewModeTransitionsHelper init]"}];

  abort();
}

@end