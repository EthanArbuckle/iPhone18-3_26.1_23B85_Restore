@interface PUBarsController
- (BOOL)isLocationFromProviderInBarsArea:(id)area;
- (PUBarsController)init;
- (PUBarsController)initWithViewController:(id)controller delegate:(id)delegate;
- (PUBarsControllerDelegate)delegate;
- (UIEdgeInsets)contentGuideInsets;
- (UIViewController)viewController;
- (void)_invalidateGestureRecognizers;
- (void)_reenableUpdateBars;
- (void)_setNeedsUpdate;
- (void)_updateBars;
- (void)_updateGestureRecognizers;
- (void)_updateNowIfNeeded;
- (void)disableUpdateBarsForDuration:(double)duration;
- (void)invalidateBars;
- (void)invalidateContentGuideInsets;
- (void)setContentGuideInsets:(UIEdgeInsets)insets;
- (void)updateIfNeeded;
@end

@implementation PUBarsController

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (PUBarsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentGuideInsets
{
  top = self->_contentGuideInsets.top;
  left = self->_contentGuideInsets.left;
  bottom = self->_contentGuideInsets.bottom;
  right = self->_contentGuideInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_reenableUpdateBars
{
  v3 = [(PUBarsController *)self updateBarsDisabledCount]- 1;
  [(PUBarsController *)self setUpdateBarsDisabledCount:v3];
  if (!v3)
  {

    [(PUBarsController *)self invalidateBars];
  }
}

- (void)disableUpdateBarsForDuration:(double)duration
{
  [(PUBarsController *)self setUpdateBarsDisabledCount:[(PUBarsController *)self updateBarsDisabledCount]+ 1];
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, (duration * 1000000000.0));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PUBarsController_disableUpdateBarsForDuration___block_invoke;
  v6[3] = &unk_1E7B80638;
  objc_copyWeak(&v7, &location);
  dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __49__PUBarsController_disableUpdateBarsForDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reenableUpdateBars];
}

- (void)_updateNowIfNeeded
{
  [(PUBarsController *)self setUpdateScheduled:0];
  updater = [(PUBarsController *)self updater];
  [updater updateIfNeeded];
}

- (void)_setNeedsUpdate
{
  if (![(PUBarsController *)self updateScheduled])
  {
    [(PUBarsController *)self setUpdateScheduled:1];
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __35__PUBarsController__setNeedsUpdate__block_invoke;
    v3[3] = &unk_1E7B80638;
    objc_copyWeak(&v4, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v3);
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __35__PUBarsController__setNeedsUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateNowIfNeeded];
}

- (void)invalidateContentGuideInsets
{
  updater = [(PUBarsController *)self updater];
  [updater setNeedsUpdateOf:sel_updateContentGuideInsets];
}

- (void)_updateGestureRecognizers
{
  if (self->_delegateFlags.respondsToViewHostingGestureRecognizers)
  {
    delegate = [(PUBarsController *)self delegate];
    v4 = [delegate barsControllerViewHostingGestureRecognizers:self];
  }

  else
  {
    v4 = 0;
  }

  [(PUBarsController *)self updateGestureRecognizersWithHostingView:v4];
}

- (void)_invalidateGestureRecognizers
{
  updater = [(PUBarsController *)self updater];
  [updater setNeedsUpdateOf:sel__updateGestureRecognizers];
}

- (void)_updateBars
{
  if (![(PUBarsController *)self _isUpdateBarsDisabled])
  {

    [(PUBarsController *)self updateBars];
  }
}

- (void)invalidateBars
{
  updater = [(PUBarsController *)self updater];
  [updater setNeedsUpdateOf:sel__updateBars];
}

- (BOOL)isLocationFromProviderInBarsArea:(id)area
{
  areaCopy = area;
  viewController = [(PUBarsController *)self viewController];
  if ([viewController px_isVisible])
  {
    [(PUBarsController *)self contentGuideInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = +[PUOneUpSettings sharedInstance];
    [v14 barsAreaVerticalOutset];
    v16 = v15;

    v17 = v7 + v16;
    v18 = v11 + v16;
    view = [viewController view];
    [view bounds];
    v21 = v9 + v20;
    v23 = v17 + v22;
    v25 = v24 - (v9 + v13);
    v27 = v26 - (v17 + v18);
    [areaCopy locationInView:view];
    v32.x = v28;
    v32.y = v29;
    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v25;
    v33.size.height = v27;
    v30 = !CGRectContainsPoint(v33, v32);
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  return v30;
}

- (void)updateIfNeeded
{
  updater = [(PUBarsController *)self updater];
  [updater updateIfNeeded];
}

- (void)setContentGuideInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentGuideInsets.top), vceqq_f64(v4, *&self->_contentGuideInsets.bottom)))) & 1) == 0)
  {
    self->_contentGuideInsets = insets;
    if (self->_delegateFlags.respondsToContentGuideInsetsDidChange)
    {
      delegate = [(PUBarsController *)self delegate];
      [delegate barsControllerContentGuideInsetsDidChange:self];
    }
  }
}

- (PUBarsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUBarsController.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PUBarsController init]"}];

  abort();
}

- (PUBarsController)initWithViewController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PUBarsController;
  v8 = [(PUBarsController *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69C4600]) initWithTarget:v8 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v8->_updater;
    v8->_updater = v9;

    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateGestureRecognizers needsUpdate:1];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel_updateContentGuideInsets needsUpdate:1];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateBars needsUpdate:1];
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v8->_delegateFlags.respondsToViewHostingGestureRecognizers = objc_opt_respondsToSelector() & 1;
    v8->_delegateFlags.respondsToContentGuideInsetsDidChange = objc_opt_respondsToSelector() & 1;
    objc_storeWeak(&v8->_viewController, controllerCopy);
  }

  return v8;
}

@end