@interface PUDoubleTapZoomController
- (BOOL)shouldDoubleTapBeginAtLocationFromProvider:(id)a3;
- (PUDoubleTapZoomController)init;
- (PUDoubleTapZoomControllerDelegate)delegate;
- (UITapGestureRecognizer)doubleTapGestureRecognizer;
- (id)_userTransformViewAtLocationFromProvider:(id)a3;
- (void)_handleDoubleTapGestureRecognizer:(id)a3;
- (void)_updateGestureRecognizersIfNeeded;
- (void)invalidateViewHostingGestureRecognizers;
- (void)setDelegate:(id)a3;
@end

@implementation PUDoubleTapZoomController

- (PUDoubleTapZoomControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_userTransformViewAtLocationFromProvider:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22061;
  v16 = __Block_byref_object_dispose__22062;
  v17 = 0;
  if (self->_delegateFlags.respondsToTilingView)
  {
    v5 = [(PUDoubleTapZoomController *)self delegate];
    v6 = [v5 doubleTapZoomControllerTilingView:self];

    if (v6)
    {
      [v4 locationInView:v6];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __70__PUDoubleTapZoomController__userTransformViewAtLocationFromProvider___block_invoke;
      v11[3] = &unk_1E7B79FF8;
      v11[4] = &v12;
      [v6 enumeratePresentedTileControllersInRect:v11 usingBlock:{v7 + -1.0, v8 + -1.0, 2.0, 2.0}];
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v9;
}

void __70__PUDoubleTapZoomController__userTransformViewAtLocationFromProvider___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 userTransformView];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

- (void)_handleDoubleTapGestureRecognizer:(id)a3
{
  v5 = a3;
  if ([v5 state] == 3)
  {
    v4 = [(PUDoubleTapZoomController *)self _userTransformViewAtLocationFromProvider:v5];
    if ([v4 hasUserZoomedIn])
    {
      [v4 zoomOut:1];
    }

    else
    {
      [v4 zoomInOnLocationFromProvider:v5];
    }
  }
}

- (void)_updateGestureRecognizersIfNeeded
{
  if ([(PUDoubleTapZoomController *)self _needsUpdateGestureRecognizers])
  {
    [(PUDoubleTapZoomController *)self _setNeedsUpdateGestureRecognizers:0];
    if (self->_delegateFlags.respondsToViewHostingGestureRecognizers)
    {
      v3 = [(PUDoubleTapZoomController *)self delegate];
      v10 = [v3 doubleTapZoomControllerViewHostingGestureRecognizers:self];
    }

    else
    {
      v10 = 0;
    }

    v4 = [(PUDoubleTapZoomController *)self _doubleTapGestureRecognizer];
    if (v10)
    {
      if (!v4)
      {
        v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDoubleTapGestureRecognizer_];
        [v4 setNumberOfTapsRequired:2];
        [(PUDoubleTapZoomController *)self _setDoubleTapGestureRecognizer:v4];
        if (!self->_delegateFlags.respondsToDelegateForGestureRecognizer || (-[PUDoubleTapZoomController delegate](self, "delegate"), v5 = objc_claimAutoreleasedReturnValue(), [v5 doubleTapZoomController:self delegateForGestureRecognizer:v4], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
        {
          v6 = self;
        }

        [v4 setDelegate:v6];
      }

      v7 = [v4 view];

      if (v10 != v7)
      {
        v8 = [v4 view];
        [v8 removeGestureRecognizer:v4];

        [v10 addGestureRecognizer:v4];
      }
    }

    else if (v4)
    {
      v9 = [v4 view];
      [v9 removeGestureRecognizer:v4];

      [(PUDoubleTapZoomController *)self _setDoubleTapGestureRecognizer:0];
    }
  }
}

- (BOOL)shouldDoubleTapBeginAtLocationFromProvider:(id)a3
{
  v4 = a3;
  v5 = +[PUOneUpSettings sharedInstance];
  v6 = [v5 allowDoubleTapZoom];

  v7 = +[PUOneUpSettings sharedInstance];
  if (v6 && (!self->_delegateFlags.respondsToCanDoubleTapBeginAtLocationFromProvider || (-[PUDoubleTapZoomController delegate](self, "delegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 doubleTapZoomController:self canDoubleTapBeginAtLocationFromProvider:v4], v8, v9)))
  {
    if ([v7 doubleTapZoomAreaExcludesBackground])
    {
      v10 = [(PUDoubleTapZoomController *)self _userTransformViewAtLocationFromProvider:v4];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 contentContainsLocationFromProvider:v4];
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (UITapGestureRecognizer)doubleTapGestureRecognizer
{
  [(PUDoubleTapZoomController *)self _updateGestureRecognizersIfNeeded];

  return [(PUDoubleTapZoomController *)self _doubleTapGestureRecognizer];
}

- (void)invalidateViewHostingGestureRecognizers
{
  [(PUDoubleTapZoomController *)self _invalidateGestureRecognizers];

  [(PUDoubleTapZoomController *)self _updateGestureRecognizersIfNeeded];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToViewHostingGestureRecognizers = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToTilingView = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDelegateForGestureRecognizer = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToCanDoubleTapBeginAtLocationFromProvider = objc_opt_respondsToSelector() & 1;
    [(PUDoubleTapZoomController *)self _invalidateGestureRecognizers];
    [(PUDoubleTapZoomController *)self _updateGestureRecognizersIfNeeded];
  }
}

- (PUDoubleTapZoomController)init
{
  v3.receiver = self;
  v3.super_class = PUDoubleTapZoomController;
  result = [(PUDoubleTapZoomController *)&v3 init];
  if (result)
  {
    result->__needsUpdateGestureRecognizers = 1;
  }

  return result;
}

@end