@interface PXTilingControllerComposition
- (PXScrollController)_scrollController;
- (PXTilingControllerCompositionInput)input;
- (PXTilingControllerCompositionObserver)observer;
- (PXTilingControllerCompositionOutput)output;
- (void)_setScrollController:(id)a3;
- (void)invalidateCompositionWithContext:(id)a3;
- (void)setActive:(BOOL)a3;
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

- (void)_setScrollController:(id)a3
{
  obj = a3;
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

- (void)invalidateCompositionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(PXTilingControllerComposition *)self observer];
  [v5 setTilingControllerCompositionNeedsUpdate:self withContext:v4];
}

- (void)updateComposition
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXTilingControllerComposition.m" lineNumber:44 description:@"concrete subclass must implement"];
}

- (void)setActive:(BOOL)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      v5 = [(PXTilingControllerComposition *)self tilingControllers];
      if (![v5 count])
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"PXTilingControllerComposition.m" lineNumber:29 description:@"composition activated before it has any tiling controller"];
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = v5;
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

            v11 = [*(*(&v15 + 1) + 8 * i) scrollController];
            if (v11)
            {
              v13 = v11;
              v12 = v6;
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

      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXTilingControllerComposition.m" lineNumber:36 description:@"composition activated before any of its tiling controller has a scroll controller"];
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