@interface PXCuratedLibraryFooterController
+ (int64_t)_modeForZoomLevel:(int64_t)level;
- (BOOL)_shouldRevealPhotosFooterView;
- (BOOL)_shouldShowFooterForGridViewState;
- (BOOL)_shouldShowFooterForPresentedZoomLevel;
- (BOOL)isGridViewVisible;
- (BOOL)isPullingFooter;
- (PXCuratedLibraryFooterController)init;
- (PXCuratedLibraryFooterController)initWithGridView:(id)view layout:(id)layout viewModel:(id)model itemsCountsController:(id)controller;
- (PXCuratedLibraryFooterControllerDelegate)delegate;
- (double)footerVisibleAmountIncludingSafeAreaInsets:(BOOL)insets;
- (id)footerViewModel;
- (id)presentingViewControllerForFooterViewModel:(id)model;
- (void)_conditionallyRevealPhotosFooterView;
- (void)_conditionallyRevealPhotosFooterViewWithLastUserScrollTime:(double)time;
- (void)_footerHasImportantInformationDidChange;
- (void)_invalidateFooter;
- (void)_invalidateFooterAlpha;
- (void)_invalidateFooterAndMaskVisibility;
- (void)_invalidateFooterMaskViewFrame;
- (void)_invalidateFooterMode;
- (void)_invalidateIsFooterVisible;
- (void)_invalidateWantsFooter;
- (void)_resetFooterViewModel;
- (void)_updateFooter;
- (void)_updateFooterAlpha;
- (void)_updateFooterAndMaskVisibility;
- (void)_updateFooterMaskViewFrame;
- (void)_updateFooterMode;
- (void)_updateIsFooterVisible;
- (void)_updateWantsFooter;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller;
- (void)photosGlobalFooterViewDidChangeHeight:(id)height;
- (void)scrollViewControllerContentBoundsDidChange:(id)change;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)setFooterFullyMasked:(BOOL)masked;
- (void)setFooterMaskVerticalOffset:(double)offset;
- (void)setFooterNeedsReveal:(BOOL)reveal;
- (void)setFooterView:(id)view;
- (void)setHasAppearedOnce:(BOOL)once;
- (void)setIsFooterVisible:(BOOL)visible;
- (void)setWantsFooter:(BOOL)footer;
- (void)setWantsFooterMask:(BOOL)mask;
- (void)viewDidAppear;
@end

@implementation PXCuratedLibraryFooterController

- (PXCuratedLibraryFooterControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentingViewControllerForFooterViewModel:(id)model
{
  delegate = [(PXCuratedLibraryFooterController *)self delegate];
  v5 = [delegate presentingViewControllerForFooterController:self];

  return v5;
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)height
{
  if (!self->_isUpdatingFooter)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __74__PXCuratedLibraryFooterController_photosGlobalFooterViewDidChangeHeight___block_invoke;
    v3[3] = &unk_1E773BBC8;
    v3[4] = self;
    [(PXCuratedLibraryFooterController *)self performChanges:v3];
  }
}

- (void)photosGlobalFooterView:(id)view presentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(PXCuratedLibraryFooterController *)self delegate];
  v6 = [delegate presentingViewControllerForFooterController:self];

  if (controllerCopy)
  {
    [v6 presentViewController:controllerCopy animated:1 completion:0];
  }

  else
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)scrollViewControllerContentBoundsDidChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__PXCuratedLibraryFooterController_scrollViewControllerContentBoundsDidChange___block_invoke;
  v3[3] = &unk_1E773BBC8;
  v3[4] = self;
  [(PXCuratedLibraryFooterController *)self performChanges:v3];
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PXCuratedLibraryFooterController_scrollViewControllerDidScroll___block_invoke;
  v3[3] = &unk_1E773BBC8;
  v3[4] = self;
  [(PXCuratedLibraryFooterController *)self performChanges:v3];
}

uint64_t __66__PXCuratedLibraryFooterController_scrollViewControllerDidScroll___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateWantsFooter];
  [*(a1 + 32) _invalidateIsFooterVisible];
  v2 = *(a1 + 32);

  return [v2 _invalidateFooterMaskViewFrame];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (CuratedLibraryViewModelObserverContext_132478 == context)
  {
    if ((([(PXCuratedLibraryViewModel *)self->_viewModel hideStatusFooterInSelectMode]| 0x44) & change) != 0)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PXCuratedLibraryFooterController_observable_didChange_context___block_invoke;
      v12[3] = &unk_1E773BBF0;
      v12[4] = self;
      v12[5] = change;
      [(PXCuratedLibraryFooterController *)self performChanges:v12];
    }

    if ((change & 0x10000000) != 0)
    {
      [(PXCuratedLibraryFooterController *)self _resetFooterViewModel];
    }
  }

  else if (operator|| == context)
  {
    if ((change & 0x4001) != 0)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __65__PXCuratedLibraryFooterController_observable_didChange_context___block_invoke_2;
      v11[3] = &unk_1E773BBC8;
      v11[4] = self;
      [(PXCuratedLibraryFooterController *)self performChanges:v11];
    }
  }

  else
  {
    if (CuratedLibraryFooterViewModelObserverContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterController.m" lineNumber:665 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((change & 0x40000) != 0)
    {
      [(PXCuratedLibraryFooterController *)self _footerHasImportantInformationDidChange];
    }
  }
}

uint64_t __65__PXCuratedLibraryFooterController_observable_didChange_context___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    [*(a1 + 32) _invalidateFooterMode];
  }

  v2 = *(a1 + 32);

  return [v2 _invalidateWantsFooter];
}

uint64_t __65__PXCuratedLibraryFooterController_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _invalidateWantsFooter];
  v2 = *(a1 + 32);

  return [v2 _invalidateFooterAlpha];
}

- (void)_updateFooterAndMaskVisibility
{
  isFooterFullyMasked = [(PXCuratedLibraryFooterController *)self isFooterFullyMasked];
  footerMaskView = [(PXCuratedLibraryFooterController *)self footerMaskView];
  [footerMaskView setHidden:isFooterFullyMasked];

  footerView = [(PXCuratedLibraryFooterController *)self footerView];
  [footerView setHidden:isFooterFullyMasked];
}

- (void)_invalidateFooterAndMaskVisibility
{
  updater = [(PXCuratedLibraryFooterController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooterAndMaskVisibility];
}

- (void)_updateFooterMaskViewFrame
{
  footerMaskView = [(PXCuratedLibraryFooterController *)self footerMaskView];
  if (footerMaskView)
  {
    gridView = [(PXCuratedLibraryFooterController *)self gridView];
    scrollViewController = [gridView scrollViewController];

    [scrollViewController visibleRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    styleGuide = [(PXCuratedLibraryFooterController *)self styleGuide];
    [styleGuide secondaryToolbarPadding];
    v15 = v14;
    v17 = v16;

    v18 = v10 - (v15 + v17);
    v19 = v6 + v15;
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    MaxY = CGRectGetMaxY(v38);
    [scrollViewController contentInset];
    v22 = MaxY - v21;
    [(PXCuratedLibraryFooterController *)self footerMaskVerticalOffset];
    v24 = v23 + v22;
    v39.origin.x = v6;
    v39.origin.y = v8;
    v39.size.width = v10;
    v39.size.height = v12;
    v25 = CGRectGetMaxY(v39);
    v40.origin.x = v19;
    v40.origin.y = v24;
    v40.size.width = v18;
    v40.size.height = v12;
    v26 = v25 - CGRectGetMinY(v40);
    [scrollViewController contentBounds];
    v27 = CGRectGetMaxY(v41);
    layout = [(PXCuratedLibraryFooterController *)self layout];
    [layout padding];
    v30 = v27 - v29;

    if (v24 >= v30)
    {
      v31 = v24;
    }

    else
    {
      v31 = v30;
    }

    v32 = v31 + 1.0;
    [footerMaskView setFrame:{v19, v31 + 1.0, v18, v26}];
    footerView = [(PXCuratedLibraryFooterController *)self footerView];
    [footerView frame];
    v35 = v34;

    [(PXCuratedLibraryFooterController *)self setFooterFullyMasked:v35 + 1.0 >= v32, v35 + 1.0];
  }

  else
  {
    [(PXCuratedLibraryFooterController *)self setFooterFullyMasked:0];
  }
}

- (void)_invalidateFooterMaskViewFrame
{
  updater = [(PXCuratedLibraryFooterController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooterMaskViewFrame];
}

- (void)_updateFooterAlpha
{
  if (self->_needsFooterFrameChangeAnimation)
  {
    footerView = [(PXCuratedLibraryFooterController *)self footerView];
    [footerView setAlpha:0.0];

    self->_needsFooterFrameChangeAnimation = 0;
    v4 = 1.0;
    v5 = 0.4;
  }

  else
  {
    viewModel = [(PXCuratedLibraryFooterController *)self viewModel];
    zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
    shouldHideSurroundingContent = [zoomablePhotosViewModel shouldHideSurroundingContent];

    if (shouldHideSurroundingContent)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = 0.2;
  }

  footerView2 = [(PXCuratedLibraryFooterController *)self footerView];
  [footerView2 alpha];
  v11 = v10;

  if (v11 != v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __54__PXCuratedLibraryFooterController__updateFooterAlpha__block_invoke;
    v12[3] = &unk_1E77498A0;
    v12[4] = self;
    *&v12[5] = v4;
    [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:v5];
  }
}

void __54__PXCuratedLibraryFooterController__updateFooterAlpha__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) footerView];
  [v2 setAlpha:v1];
}

- (void)_invalidateFooterAlpha
{
  updater = [(PXCuratedLibraryFooterController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooterAlpha];
}

- (void)_updateIsFooterVisible
{
  [(PXCuratedLibraryFooterController *)self footerVisibleAmountIncludingSafeAreaInsets:1];

  [(PXCuratedLibraryFooterController *)self setIsFooterVisible:v3 > 0.0];
}

- (void)_invalidateIsFooterVisible
{
  updater = [(PXCuratedLibraryFooterController *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsFooterVisible];
}

- (void)_updateFooter
{
  isUpdatingFooter = self->_isUpdatingFooter;
  self->_isUpdatingFooter = 1;
  layout = [(PXCuratedLibraryFooterController *)self layout];
  [layout padding];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  gridView = [(PXCuratedLibraryFooterController *)self gridView];
  scrollViewController = [gridView scrollViewController];

  footerView = [(PXCuratedLibraryFooterController *)self footerView];
  wantsFooter = [(PXCuratedLibraryFooterController *)self wantsFooter];
  if (wantsFooter)
  {
    if (!footerView)
    {
      reusableFooterView = self->_reusableFooterView;
      if (reusableFooterView)
      {
        [(PXPhotosGlobalFooterView *)reusableFooterView setHidden:0];
        footerView = self->_reusableFooterView;
        v16 = self->_reusableFooterView;
        self->_reusableFooterView = 0;
      }

      else
      {
        footerView = objc_alloc_init(PXPhotosGlobalFooterView);
        [(PXPhotosGlobalFooterView *)footerView setDelegate:self];
        [scrollViewController addSubview:footerView];
      }
    }

    footerViewModel = [(PXCuratedLibraryFooterController *)self footerViewModel];
    [(PXPhotosGlobalFooterView *)footerView setViewModel:footerViewModel];

    [layout presentedPadding];
    [layout safeAreaInsets];
    [scrollViewController scrollViewContentSize];
    PXEdgeInsetsInsetSizeEdges();
  }

  if (footerView)
  {
    v17 = self->_reusableFooterView;
    self->_reusableFooterView = footerView;
    v18 = footerView;

    [(PXPhotosGlobalFooterView *)self->_reusableFooterView setHidden:1];
  }

  [layout setPadding:{v6, v8, 0.0, v10}];
  [(PXCuratedLibraryFooterController *)self setFooterView:0];
  footerMaskView = [(PXCuratedLibraryFooterController *)self footerMaskView];
  wantsFooterMask = [(PXCuratedLibraryFooterController *)self wantsFooterMask];
  if (wantsFooter && wantsFooterMask)
  {
    if (!footerMaskView)
    {
      footerMaskView = objc_alloc_init(MEMORY[0x1E69DD250]);
      v22 = +[PXCuratedLibrarySettings sharedInstance];
      if ([v22 exaggerateContrast])
      {
        redColor = [MEMORY[0x1E69DC888] redColor];
        v24 = [redColor colorWithAlphaComponent:0.5];
        [footerMaskView setBackgroundColor:v24];
      }

      else
      {
        redColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
        [footerMaskView setBackgroundColor:redColor];
      }

      [footerMaskView setUserInteractionEnabled:0];
      [scrollViewController addSubview:footerMaskView];
    }

    [(PXCuratedLibraryFooterController *)self setFooterMaskView:footerMaskView];
    [(PXCuratedLibraryFooterController *)self _updateFooterMaskViewFrame];
  }

  else
  {
    [footerMaskView removeFromSuperview];

    [(PXCuratedLibraryFooterController *)self setFooterMaskView:0];
  }

  viewModel = [(PXCuratedLibraryFooterController *)self viewModel];
  self->_presentedZoomLevel = [viewModel zoomLevel];

  self->_isUpdatingFooter = isUpdatingFooter;
}

- (void)_invalidateFooter
{
  updater = [(PXCuratedLibraryFooterController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooter];
}

- (void)_resetFooterViewModel
{
  footerViewModel = self->_footerViewModel;
  if (footerViewModel)
  {
    [(PXCuratedLibraryFooterViewModel *)footerViewModel unregisterChangeObserver:self context:CuratedLibraryFooterViewModelObserverContext];
    v4 = self->_footerViewModel;
    self->_footerViewModel = 0;

    [(PXCuratedLibraryFooterController *)self _updateFooter];
  }
}

- (void)_updateFooterMode
{
  footerViewModelIfLoaded = [(PXCuratedLibraryFooterController *)self footerViewModelIfLoaded];
  if (footerViewModelIfLoaded)
  {
    v8 = footerViewModelIfLoaded;
    mode = [footerViewModelIfLoaded mode];
    viewModel = [(PXCuratedLibraryFooterController *)self viewModel];
    zoomLevel = [viewModel zoomLevel];

    v7 = [objc_opt_class() _modeForZoomLevel:zoomLevel];
    footerViewModelIfLoaded = v8;
    if (mode != v7)
    {
      [v8 setMode:?];
      [(PXCuratedLibraryFooterController *)self _invalidateFooter];
      footerViewModelIfLoaded = v8;
    }
  }
}

- (void)_invalidateFooterMode
{
  updater = [(PXCuratedLibraryFooterController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooterMode];
}

- (void)_updateWantsFooter
{
  if ([(PXCuratedLibraryFooterController *)self hasAppearedOnce])
  {
    viewModel = [(PXCuratedLibraryFooterController *)self viewModel];
    if ([viewModel enableFooter] && -[PXCuratedLibraryFooterController _shouldShowFooterForPresentedZoomLevel](self, "_shouldShowFooterForPresentedZoomLevel"))
    {
      if ([(PXCuratedLibraryFooterController *)self _shouldShowFooterForGridViewState])
      {
        goto LABEL_7;
      }

      if ([(PXCuratedLibraryFooterController *)self wantsFooter])
      {
        zoomablePhotosViewModel = [viewModel zoomablePhotosViewModel];
        v5 = zoomablePhotosViewModel;
        if (!zoomablePhotosViewModel)
        {
          v4 = 0;
          v14 = 0;
          v12 = 0u;
          v13 = 0u;
          v10 = 0u;
          v11 = 0u;
          v8 = 0u;
          v9 = 0u;
          goto LABEL_16;
        }

        [zoomablePhotosViewModel zoomState];
        v7 = BYTE8(v11);

        if (v7)
        {
LABEL_7:
          if ((PXCuratedLibraryStateIsEmptyLibrary([viewModel libraryState]) & 1) == 0 && (!objc_msgSend(viewModel, "isSelecting") || (objc_msgSend(viewModel, "hideStatusFooterInSelectMode") & 1) == 0))
          {
            v4 = +[PXCuratedLibrarySettings sharedInstance];
            v5 = ([v4 hideStatusFooter] ^ 1);
LABEL_16:

            goto LABEL_13;
          }
        }
      }
    }

    v5 = 0;
LABEL_13:
    [(PXCuratedLibraryFooterController *)self setWantsFooter:v5, v8, v9, v10, v11, v12, v13, v14];
  }
}

- (void)_invalidateWantsFooter
{
  updater = [(PXCuratedLibraryFooterController *)self updater];
  [updater setNeedsUpdateOf:sel__updateWantsFooter];
}

- (void)_footerHasImportantInformationDidChange
{
  footerViewModel = [(PXCuratedLibraryFooterController *)self footerViewModel];
  hasImportantInformation = [footerViewModel hasImportantInformation];

  if (hasImportantInformation)
  {

    [(PXCuratedLibraryFooterController *)self _conditionallyRevealPhotosFooterView];
  }
}

- (void)_conditionallyRevealPhotosFooterView
{
  if ([(PXCuratedLibraryFooterController *)self _shouldRevealPhotosFooterView])
  {
    v3 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "[Footer] Should auto-scroll, waiting for idle timer", &buf, 2u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PXCuratedLibraryFooterController__conditionallyRevealPhotosFooterView__block_invoke;
    v11[3] = &unk_1E773BBC8;
    v11[4] = self;
    [(PXCuratedLibraryFooterController *)self performChanges:v11];
    lastUserScrollTime = self->_lastUserScrollTime;
    objc_initWeak(&buf, self);
    v5 = MEMORY[0x1E695DFF0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__PXCuratedLibraryFooterController__conditionallyRevealPhotosFooterView__block_invoke_2;
    v8[3] = &unk_1E7747028;
    objc_copyWeak(v9, &buf);
    v9[1] = *&lastUserScrollTime;
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:2.0];
    footerAutoScrollMinimumIdleTimer = self->_footerAutoScrollMinimumIdleTimer;
    self->_footerAutoScrollMinimumIdleTimer = v6;

    objc_destroyWeak(v9);
    objc_destroyWeak(&buf);
  }
}

void __72__PXCuratedLibraryFooterController__conditionallyRevealPhotosFooterView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _conditionallyRevealPhotosFooterViewWithLastUserScrollTime:*(a1 + 40)];
}

- (void)_conditionallyRevealPhotosFooterViewWithLastUserScrollTime:(double)time
{
  footerAutoScrollMinimumIdleTimer = self->_footerAutoScrollMinimumIdleTimer;
  self->_footerAutoScrollMinimumIdleTimer = 0;

  if (self->_lastUserScrollTime == time)
  {
    if ([(PXCuratedLibraryFooterController *)self _shouldRevealPhotosFooterView])
    {
      self->_footerDidAutoScroll = 1;
      delegate = [(PXCuratedLibraryFooterController *)self delegate];
      [delegate footerControllerRevealFooter:self];

      v7 = v10;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v8 = __95__PXCuratedLibraryFooterController__conditionallyRevealPhotosFooterViewWithLastUserScrollTime___block_invoke_3;
    }

    else
    {
      v7 = v11;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v8 = __95__PXCuratedLibraryFooterController__conditionallyRevealPhotosFooterViewWithLastUserScrollTime___block_invoke_2;
    }
  }

  else
  {
    v6 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, "[Footer] Suppressing auto-scroll: user scrolled", buf, 2u);
    }

    v7 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v8 = __95__PXCuratedLibraryFooterController__conditionallyRevealPhotosFooterViewWithLastUserScrollTime___block_invoke;
  }

  v7[2] = v8;
  v7[3] = &unk_1E773BBC8;
  v7[4] = self;
  [(PXCuratedLibraryFooterController *)self performChanges:?];
}

- (BOOL)_shouldRevealPhotosFooterView
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(PXCuratedLibraryFooterController *)self isGridViewVisible])
  {
    if (self->_footerAutoScrollMinimumIdleTimer)
    {
      v3 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        v4 = "[Footer] Suppressing auto-scroll: Waiting for idle timer";
LABEL_7:
        _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, v4, &v12, 2u);
      }
    }

    else
    {
      footerViewModel = [(PXCuratedLibraryFooterController *)self footerViewModel];
      hasImportantInformation = [footerViewModel hasImportantInformation];

      if (hasImportantInformation)
      {
        gridView = [(PXCuratedLibraryFooterController *)self gridView];
        scrollViewController = [gridView scrollViewController];
        layout = [(PXCuratedLibraryFooterController *)self layout];
        [layout padding];
        [scrollViewController isScrolledAtEdge:3 tolerance:v11 + 1.0];

        [(PXCuratedLibraryFooterController *)self footerVisibleAmountIncludingSafeAreaInsets:0];
        PXFloatEqualToFloatWithTolerance();
      }

      v3 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        v4 = "[Footer] Suppressing auto-scroll: No important information";
        goto LABEL_7;
      }
    }
  }

  else
  {
    v3 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12) = 0;
      v4 = "[Footer] Suppressing auto-scroll: Not visible";
      goto LABEL_7;
    }
  }

  return 0;
}

- (BOOL)_shouldShowFooterForPresentedZoomLevel
{
  viewModel = [(PXCuratedLibraryFooterController *)self viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];

  if (userInterfaceIdiom == 4)
  {
    return 1;
  }

  presentedZoomLevel = self->_presentedZoomLevel;
  if (!presentedZoomLevel)
  {
    return 1;
  }

  viewModel2 = [(PXCuratedLibraryFooterController *)self viewModel];
  v9 = presentedZoomLevel == [viewModel2 zoomLevel];

  return v9;
}

- (BOOL)_shouldShowFooterForGridViewState
{
  viewModel = [(PXCuratedLibraryFooterController *)self viewModel];
  specManager = [viewModel specManager];
  spec = [specManager spec];
  userInterfaceIdiom = [spec userInterfaceIdiom];

  if (userInterfaceIdiom != 4)
  {
    [(PXCuratedLibraryFooterController *)self footerVisibleAmountIncludingSafeAreaInsets:1];
    PXFloatGreaterThanFloat();
  }

  return 1;
}

- (BOOL)isPullingFooter
{
  gridView = [(PXCuratedLibraryFooterController *)self gridView];
  scrollViewController = [gridView scrollViewController];

  gridView2 = [(PXCuratedLibraryFooterController *)self gridView];
  engine = [gridView2 engine];
  scrollViewSpeedometer = [engine scrollViewSpeedometer];

  if ([scrollViewController isScrolledAtEdge:3 tolerance:1.0] && (objc_msgSend(scrollViewSpeedometer, "lastScrollDirection"), v8 > 0.0))
  {
    isTracking = [scrollViewController isTracking];
  }

  else
  {
    isTracking = 0;
  }

  return isTracking;
}

- (double)footerVisibleAmountIncludingSafeAreaInsets:(BOOL)insets
{
  footerView = [(PXCuratedLibraryFooterController *)self footerView];
  if (footerView)
  {
    gridView = [(PXCuratedLibraryFooterController *)self gridView];
    [footerView frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    scrollViewController = [gridView scrollViewController];
    [scrollViewController scrollViewVisibleRect];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    if (!insets)
    {
      [gridView safeAreaInsets];
      PXEdgeInsetsInsetRect();
    }

    v37.origin.x = v17;
    v37.origin.y = v19;
    v37.size.width = v21;
    v37.size.height = v23;
    v41.origin.x = v8;
    v41.origin.y = v10;
    v41.size.width = v12;
    v41.size.height = v14;
    v38 = CGRectIntersection(v37, v41);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    IsEmpty = CGRectIsEmpty(v38);
    v29 = v14;
    v30 = v12;
    v31 = v10;
    v32 = v8;
    v33 = 0.0;
    if (!IsEmpty)
    {
      v39.origin.x = x;
      v39.origin.y = y;
      v39.size.width = width;
      v34 = v29;
      v39.size.height = height;
      v35 = CGRectGetHeight(v39);
      v40.origin.x = v32;
      v40.origin.y = v31;
      v40.size.width = v30;
      v40.size.height = v34;
      v33 = v35 / CGRectGetHeight(v40);
    }
  }

  else
  {
    v33 = 0.0;
  }

  return v33;
}

- (BOOL)isGridViewVisible
{
  gridView = [(PXCuratedLibraryFooterController *)self gridView];
  window = [gridView window];
  v4 = window != 0;

  return v4;
}

- (void)viewDidAppear
{
  [(PXCuratedLibraryFooterController *)self setHasAppearedOnce:1];

  [(PXCuratedLibraryFooterController *)self _footerHasImportantInformationDidChange];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryFooterController;
  [(PXCuratedLibraryFooterController *)&v3 performChanges:changes];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryFooterController;
  [(PXCuratedLibraryFooterController *)&v4 didPerformChanges];
  updater = [(PXCuratedLibraryFooterController *)self updater];
  [updater updateIfNeeded];
}

- (void)setFooterFullyMasked:(BOOL)masked
{
  if (self->_footerFullyMasked != masked)
  {
    self->_footerFullyMasked = masked;
    [(PXCuratedLibraryFooterController *)self _invalidateFooterAndMaskVisibility];
  }
}

- (void)setIsFooterVisible:(BOOL)visible
{
  if (self->_isFooterVisible != visible)
  {
    self->_isFooterVisible = visible;
    footerViewModel = [(PXCuratedLibraryFooterController *)self footerViewModel];
    v5 = footerViewModel;
    if (self->_isFooterVisible)
    {
      [footerViewModel didShowFooter];
    }

    else
    {
      [footerViewModel didHideFooter];
    }
  }
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  if (self->_footerView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_footerView, view);
    [(PXCuratedLibraryFooterController *)self _invalidateIsFooterVisible];
    [(PXCuratedLibraryFooterController *)self _invalidateFooterAlpha];
    viewCopy = v6;
  }
}

- (void)setFooterMaskVerticalOffset:(double)offset
{
  if (self->_footerMaskVerticalOffset != offset)
  {
    self->_footerMaskVerticalOffset = offset;
    [(PXCuratedLibraryFooterController *)self _invalidateFooterMaskViewFrame];
  }
}

- (void)setWantsFooterMask:(BOOL)mask
{
  if (self->_wantsFooterMask != mask)
  {
    self->_wantsFooterMask = mask;
    [(PXCuratedLibraryFooterController *)self _invalidateFooter];
  }
}

- (void)setWantsFooter:(BOOL)footer
{
  if (self->_wantsFooter != footer)
  {
    self->_wantsFooter = footer;
    [(PXCuratedLibraryFooterController *)self _invalidateFooter];
  }
}

- (void)setFooterNeedsReveal:(BOOL)reveal
{
  if (self->_footerNeedsReveal != reveal)
  {
    self->_footerNeedsReveal = reveal;
    [(PXCuratedLibraryFooterController *)self _invalidateWantsFooter];
  }
}

- (void)setHasAppearedOnce:(BOOL)once
{
  if (self->_hasAppearedOnce != once)
  {
    self->_hasAppearedOnce = once;
    [(PXCuratedLibraryFooterController *)self _invalidateWantsFooter];
  }
}

- (id)footerViewModel
{
  footerViewModel = self->_footerViewModel;
  if (!footerViewModel)
  {
    itemCountsController = [(PXCuratedLibraryFooterController *)self itemCountsController];
    viewModel = [(PXCuratedLibraryFooterController *)self viewModel];
    cplUIStatusProvider = [viewModel cplUIStatusProvider];
    analysisStatus = [viewModel analysisStatus];
    v8 = -[PXCuratedLibraryFooterViewModel initWithItemCountsController:cplUIStatusProvider:analysisStatus:mode:viewModel:]([PXCuratedLibraryFooterViewModel alloc], "initWithItemCountsController:cplUIStatusProvider:analysisStatus:mode:viewModel:", itemCountsController, cplUIStatusProvider, analysisStatus, [objc_opt_class() _modeForZoomLevel:{objc_msgSend(viewModel, "zoomLevel")}], viewModel);
    v9 = self->_footerViewModel;
    self->_footerViewModel = v8;

    [(PXCuratedLibraryFooterViewModel *)self->_footerViewModel setPresentingDelegate:self];
    [(PXCuratedLibraryFooterViewModel *)self->_footerViewModel registerChangeObserver:self context:CuratedLibraryFooterViewModelObserverContext];

    footerViewModel = self->_footerViewModel;
  }

  return footerViewModel;
}

- (PXCuratedLibraryFooterController)initWithGridView:(id)view layout:(id)layout viewModel:(id)model itemsCountsController:(id)controller
{
  viewCopy = view;
  layoutCopy = layout;
  modelCopy = model;
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = PXCuratedLibraryFooterController;
  v15 = [(PXCuratedLibraryFooterController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_presentedZoomLevel = 0;
    objc_storeStrong(&v15->_gridView, view);
    scrollViewController = [(PXGView *)v16->_gridView scrollViewController];
    [scrollViewController registerObserver:v16];
    objc_storeStrong(&v16->_layout, layout);
    objc_storeStrong(&v16->_viewModel, model);
    [(PXCuratedLibraryViewModel *)v16->_viewModel registerChangeObserver:v16 context:CuratedLibraryViewModelObserverContext_132478];
    zoomablePhotosViewModel = [(PXCuratedLibraryViewModel *)v16->_viewModel zoomablePhotosViewModel];
    [zoomablePhotosViewModel registerChangeObserver:v16 context:operator||];

    styleGuide = [modelCopy styleGuide];
    styleGuide = v16->_styleGuide;
    v16->_styleGuide = styleGuide;

    objc_storeStrong(&v16->_itemCountsController, controller);
    v21 = [[off_1E7721940 alloc] initWithTarget:v16];
    updater = v16->_updater;
    v16->_updater = v21;

    [(PXUpdater *)v16->_updater setNeedsUpdateSelector:sel__setNeedsUpdate];
    [(PXUpdater *)v16->_updater addUpdateSelector:sel__updateFooterMode];
    [(PXUpdater *)v16->_updater addUpdateSelector:sel__updateWantsFooter];
    [(PXUpdater *)v16->_updater addUpdateSelector:sel__updateFooter];
    [(PXUpdater *)v16->_updater addUpdateSelector:sel__updateIsFooterVisible];
    [(PXUpdater *)v16->_updater addUpdateSelector:sel__updateFooterAlpha];
    [(PXUpdater *)v16->_updater addUpdateSelector:sel__updateFooterMaskViewFrame];
    [(PXUpdater *)v16->_updater addUpdateSelector:sel__updateFooterAndMaskVisibility];
  }

  return v16;
}

- (PXCuratedLibraryFooterController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterController.m" lineNumber:70 description:{@"%s is not available as initializer", "-[PXCuratedLibraryFooterController init]"}];

  abort();
}

+ (int64_t)_modeForZoomLevel:(int64_t)level
{
  if ((level - 1) < 2)
  {
    return 2;
  }

  if (level == 3)
  {
    return 1;
  }

  if (!level)
  {
    v13 = v4;
    v14 = v3;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterController.m" lineNumber:280 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

@end