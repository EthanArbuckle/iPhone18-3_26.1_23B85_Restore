@interface PXTilingControllerComposition
- (PXScrollController)_scrollController;
- (PXTilingControllerCompositionInput)input;
- (PXTilingControllerCompositionObserver)observer;
- (PXTilingControllerCompositionOutput)output;
- (void)_setScrollController:(id)controller;
- (void)invalidateCompositionWithContext:(id)context;
- (void)setActive:(BOOL)active;
- (void)updateComposition;
@end

@implementation PXTilingControllerComposition

- (PXTilingControllerCompositionObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (PXScrollController)_scrollController
{
  WeakRetained = objc_loadWeakRetained(&self->__scrollController);

  return WeakRetained;
}

- (PXTilingControllerCompositionOutput)output
{
  WeakRetained = objc_loadWeakRetained(&self->_output);

  return WeakRetained;
}

- (PXTilingControllerCompositionInput)input
{
  WeakRetained = objc_loadWeakRetained(&self->_input);

  return WeakRetained;
}

- (void)_setScrollController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->__scrollController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->__scrollController);

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->__scrollController);
      v8 = [PXTilingControllerCompositionEngine compositionEngineForScrollController:v7 createIfNeeded:0];

      [v8 unregisterComposition:self];
    }

    v9 = objc_storeWeak(&self->__scrollController, obj);
    v10 = [PXTilingControllerCompositionEngine compositionEngineForScrollController:obj createIfNeeded:1];

    [v10 registerComposition:self];
    v5 = obj;
  }
}

- (void)invalidateCompositionWithContext:(id)context
{
  contextCopy = context;
  observer = [(PXTilingControllerComposition *)self observer];
  [observer setTilingControllerCompositionNeedsUpdate:self withContext:contextCopy];
}

- (void)updateComposition
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerComposition.m" lineNumber:44 description:@"concrete subclass must implement"];
}

- (void)setActive:(BOOL)active
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      tilingControllers = [(PXTilingControllerComposition *)self tilingControllers];
      if (![tilingControllers count])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXTilingControllerComposition.m" lineNumber:29 description:@"composition activated before it has any tiling controller"];
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = tilingControllers;
      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v16;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v6);
            }

            scrollController = [*(*(&v15 + 1) + 8 * i) scrollController];
            if (scrollController)
            {
              v13 = scrollController;
              currentHandler2 = v6;
              goto LABEL_18;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXTilingControllerComposition.m" lineNumber:36 description:@"composition activated before any of its tiling controller has a scroll controller"];
      v13 = 0;
LABEL_18:

      [(PXTilingControllerComposition *)self _setScrollController:v13];
    }

    else
    {

      [(PXTilingControllerComposition *)self _setScrollController:0];
    }
  }
}

@end