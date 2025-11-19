@interface PXCuratedLibraryFooterController
+ (int64_t)_modeForZoomLevel:(int64_t)a3;
- (BOOL)_shouldRevealPhotosFooterView;
- (BOOL)_shouldShowFooterForGridViewState;
- (BOOL)_shouldShowFooterForPresentedZoomLevel;
- (BOOL)isGridViewVisible;
- (BOOL)isPullingFooter;
- (PXCuratedLibraryFooterController)init;
- (PXCuratedLibraryFooterController)initWithGridView:(id)a3 layout:(id)a4 viewModel:(id)a5 itemsCountsController:(id)a6;
- (PXCuratedLibraryFooterControllerDelegate)delegate;
- (double)footerVisibleAmountIncludingSafeAreaInsets:(BOOL)a3;
- (id)footerViewModel;
- (id)presentingViewControllerForFooterViewModel:(id)a3;
- (void)_conditionallyRevealPhotosFooterView;
- (void)_conditionallyRevealPhotosFooterViewWithLastUserScrollTime:(double)a3;
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
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4;
- (void)photosGlobalFooterViewDidChangeHeight:(id)a3;
- (void)scrollViewControllerContentBoundsDidChange:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)setFooterFullyMasked:(BOOL)a3;
- (void)setFooterMaskVerticalOffset:(double)a3;
- (void)setFooterNeedsReveal:(BOOL)a3;
- (void)setFooterView:(id)a3;
- (void)setHasAppearedOnce:(BOOL)a3;
- (void)setIsFooterVisible:(BOOL)a3;
- (void)setWantsFooter:(BOOL)a3;
- (void)setWantsFooterMask:(BOOL)a3;
- (void)viewDidAppear;
@end

@implementation PXCuratedLibraryFooterController

- (PXCuratedLibraryFooterControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)presentingViewControllerForFooterViewModel:(id)a3
{
  v4 = [(PXCuratedLibraryFooterController *)self delegate];
  v5 = [v4 presentingViewControllerForFooterController:self];

  return v5;
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)a3
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

- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4
{
  v7 = a4;
  v5 = [(PXCuratedLibraryFooterController *)self delegate];
  v6 = [v5 presentingViewControllerForFooterController:self];

  if (v7)
  {
    [v6 presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)scrollViewControllerContentBoundsDidChange:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __79__PXCuratedLibraryFooterController_scrollViewControllerContentBoundsDidChange___block_invoke;
  v3[3] = &unk_1E773BBC8;
  v3[4] = self;
  [(PXCuratedLibraryFooterController *)self performChanges:v3];
}

- (void)scrollViewControllerDidScroll:(id)a3
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (CuratedLibraryViewModelObserverContext_132478 == a5)
  {
    if ((([(PXCuratedLibraryViewModel *)self->_viewModel hideStatusFooterInSelectMode]| 0x44) & a4) != 0)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__PXCuratedLibraryFooterController_observable_didChange_context___block_invoke;
      v12[3] = &unk_1E773BBF0;
      v12[4] = self;
      v12[5] = a4;
      [(PXCuratedLibraryFooterController *)self performChanges:v12];
    }

    if ((a4 & 0x10000000) != 0)
    {
      [(PXCuratedLibraryFooterController *)self _resetFooterViewModel];
    }
  }

  else if (operator|| == a5)
  {
    if ((a4 & 0x4001) != 0)
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
    if (CuratedLibraryFooterViewModelObserverContext != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterController.m" lineNumber:665 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((a4 & 0x40000) != 0)
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
  v3 = [(PXCuratedLibraryFooterController *)self isFooterFullyMasked];
  v4 = [(PXCuratedLibraryFooterController *)self footerMaskView];
  [v4 setHidden:v3];

  v5 = [(PXCuratedLibraryFooterController *)self footerView];
  [v5 setHidden:v3];
}

- (void)_invalidateFooterAndMaskVisibility
{
  v2 = [(PXCuratedLibraryFooterController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFooterAndMaskVisibility];
}

- (void)_updateFooterMaskViewFrame
{
  v36 = [(PXCuratedLibraryFooterController *)self footerMaskView];
  if (v36)
  {
    v3 = [(PXCuratedLibraryFooterController *)self gridView];
    v4 = [v3 scrollViewController];

    [v4 visibleRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(PXCuratedLibraryFooterController *)self styleGuide];
    [v13 secondaryToolbarPadding];
    v15 = v14;
    v17 = v16;

    v18 = v10 - (v15 + v17);
    v19 = v6 + v15;
    v38.origin.x = v6;
    v38.origin.y = v8;
    v38.size.width = v10;
    v38.size.height = v12;
    MaxY = CGRectGetMaxY(v38);
    [v4 contentInset];
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
    [v4 contentBounds];
    v27 = CGRectGetMaxY(v41);
    v28 = [(PXCuratedLibraryFooterController *)self layout];
    [v28 padding];
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
    [v36 setFrame:{v19, v31 + 1.0, v18, v26}];
    v33 = [(PXCuratedLibraryFooterController *)self footerView];
    [v33 frame];
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
  v2 = [(PXCuratedLibraryFooterController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFooterMaskViewFrame];
}

- (void)_updateFooterAlpha
{
  if (self->_needsFooterFrameChangeAnimation)
  {
    v3 = [(PXCuratedLibraryFooterController *)self footerView];
    [v3 setAlpha:0.0];

    self->_needsFooterFrameChangeAnimation = 0;
    v4 = 1.0;
    v5 = 0.4;
  }

  else
  {
    v6 = [(PXCuratedLibraryFooterController *)self viewModel];
    v7 = [v6 zoomablePhotosViewModel];
    v8 = [v7 shouldHideSurroundingContent];

    if (v8)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = 0.2;
  }

  v9 = [(PXCuratedLibraryFooterController *)self footerView];
  [v9 alpha];
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
  v2 = [(PXCuratedLibraryFooterController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFooterAlpha];
}

- (void)_updateIsFooterVisible
{
  [(PXCuratedLibraryFooterController *)self footerVisibleAmountIncludingSafeAreaInsets:1];

  [(PXCuratedLibraryFooterController *)self setIsFooterVisible:v3 > 0.0];
}

- (void)_invalidateIsFooterVisible
{
  v2 = [(PXCuratedLibraryFooterController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsFooterVisible];
}

- (void)_updateFooter
{
  isUpdatingFooter = self->_isUpdatingFooter;
  self->_isUpdatingFooter = 1;
  v4 = [(PXCuratedLibraryFooterController *)self layout];
  [v4 padding];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXCuratedLibraryFooterController *)self gridView];
  v12 = [v11 scrollViewController];

  v13 = [(PXCuratedLibraryFooterController *)self footerView];
  v14 = [(PXCuratedLibraryFooterController *)self wantsFooter];
  if (v14)
  {
    if (!v13)
    {
      reusableFooterView = self->_reusableFooterView;
      if (reusableFooterView)
      {
        [(PXPhotosGlobalFooterView *)reusableFooterView setHidden:0];
        v13 = self->_reusableFooterView;
        v16 = self->_reusableFooterView;
        self->_reusableFooterView = 0;
      }

      else
      {
        v13 = objc_alloc_init(PXPhotosGlobalFooterView);
        [(PXPhotosGlobalFooterView *)v13 setDelegate:self];
        [v12 addSubview:v13];
      }
    }

    v19 = [(PXCuratedLibraryFooterController *)self footerViewModel];
    [(PXPhotosGlobalFooterView *)v13 setViewModel:v19];

    [v4 presentedPadding];
    [v4 safeAreaInsets];
    [v12 scrollViewContentSize];
    PXEdgeInsetsInsetSizeEdges();
  }

  if (v13)
  {
    v17 = self->_reusableFooterView;
    self->_reusableFooterView = v13;
    v18 = v13;

    [(PXPhotosGlobalFooterView *)self->_reusableFooterView setHidden:1];
  }

  [v4 setPadding:{v6, v8, 0.0, v10}];
  [(PXCuratedLibraryFooterController *)self setFooterView:0];
  v20 = [(PXCuratedLibraryFooterController *)self footerMaskView];
  v21 = [(PXCuratedLibraryFooterController *)self wantsFooterMask];
  if (v14 && v21)
  {
    if (!v20)
    {
      v20 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v22 = +[PXCuratedLibrarySettings sharedInstance];
      if ([v22 exaggerateContrast])
      {
        v23 = [MEMORY[0x1E69DC888] redColor];
        v24 = [v23 colorWithAlphaComponent:0.5];
        [v20 setBackgroundColor:v24];
      }

      else
      {
        v23 = [MEMORY[0x1E69DC888] systemBackgroundColor];
        [v20 setBackgroundColor:v23];
      }

      [v20 setUserInteractionEnabled:0];
      [v12 addSubview:v20];
    }

    [(PXCuratedLibraryFooterController *)self setFooterMaskView:v20];
    [(PXCuratedLibraryFooterController *)self _updateFooterMaskViewFrame];
  }

  else
  {
    [v20 removeFromSuperview];

    [(PXCuratedLibraryFooterController *)self setFooterMaskView:0];
  }

  v25 = [(PXCuratedLibraryFooterController *)self viewModel];
  self->_presentedZoomLevel = [v25 zoomLevel];

  self->_isUpdatingFooter = isUpdatingFooter;
}

- (void)_invalidateFooter
{
  v2 = [(PXCuratedLibraryFooterController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFooter];
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
  v3 = [(PXCuratedLibraryFooterController *)self footerViewModelIfLoaded];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 mode];
    v5 = [(PXCuratedLibraryFooterController *)self viewModel];
    v6 = [v5 zoomLevel];

    v7 = [objc_opt_class() _modeForZoomLevel:v6];
    v3 = v8;
    if (v4 != v7)
    {
      [v8 setMode:?];
      [(PXCuratedLibraryFooterController *)self _invalidateFooter];
      v3 = v8;
    }
  }
}

- (void)_invalidateFooterMode
{
  v2 = [(PXCuratedLibraryFooterController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateFooterMode];
}

- (void)_updateWantsFooter
{
  if ([(PXCuratedLibraryFooterController *)self hasAppearedOnce])
  {
    v3 = [(PXCuratedLibraryFooterController *)self viewModel];
    if ([v3 enableFooter] && -[PXCuratedLibraryFooterController _shouldShowFooterForPresentedZoomLevel](self, "_shouldShowFooterForPresentedZoomLevel"))
    {
      if ([(PXCuratedLibraryFooterController *)self _shouldShowFooterForGridViewState])
      {
        goto LABEL_7;
      }

      if ([(PXCuratedLibraryFooterController *)self wantsFooter])
      {
        v6 = [v3 zoomablePhotosViewModel];
        v5 = v6;
        if (!v6)
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

        [v6 zoomState];
        v7 = BYTE8(v11);

        if (v7)
        {
LABEL_7:
          if ((PXCuratedLibraryStateIsEmptyLibrary([v3 libraryState]) & 1) == 0 && (!objc_msgSend(v3, "isSelecting") || (objc_msgSend(v3, "hideStatusFooterInSelectMode") & 1) == 0))
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
  v2 = [(PXCuratedLibraryFooterController *)self updater];
  [v2 setNeedsUpdateOf:sel__updateWantsFooter];
}

- (void)_footerHasImportantInformationDidChange
{
  v3 = [(PXCuratedLibraryFooterController *)self footerViewModel];
  v4 = [v3 hasImportantInformation];

  if (v4)
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

- (void)_conditionallyRevealPhotosFooterViewWithLastUserScrollTime:(double)a3
{
  footerAutoScrollMinimumIdleTimer = self->_footerAutoScrollMinimumIdleTimer;
  self->_footerAutoScrollMinimumIdleTimer = 0;

  if (self->_lastUserScrollTime == a3)
  {
    if ([(PXCuratedLibraryFooterController *)self _shouldRevealPhotosFooterView])
    {
      self->_footerDidAutoScroll = 1;
      v9 = [(PXCuratedLibraryFooterController *)self delegate];
      [v9 footerControllerRevealFooter:self];

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
      v6 = [(PXCuratedLibraryFooterController *)self footerViewModel];
      v7 = [v6 hasImportantInformation];

      if (v7)
      {
        v8 = [(PXCuratedLibraryFooterController *)self gridView];
        v9 = [v8 scrollViewController];
        v10 = [(PXCuratedLibraryFooterController *)self layout];
        [v10 padding];
        [v9 isScrolledAtEdge:3 tolerance:v11 + 1.0];

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
  v3 = [(PXCuratedLibraryFooterController *)self viewModel];
  v4 = [v3 specManager];
  v5 = [v4 spec];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 4)
  {
    return 1;
  }

  presentedZoomLevel = self->_presentedZoomLevel;
  if (!presentedZoomLevel)
  {
    return 1;
  }

  v8 = [(PXCuratedLibraryFooterController *)self viewModel];
  v9 = presentedZoomLevel == [v8 zoomLevel];

  return v9;
}

- (BOOL)_shouldShowFooterForGridViewState
{
  v3 = [(PXCuratedLibraryFooterController *)self viewModel];
  v4 = [v3 specManager];
  v5 = [v4 spec];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 4)
  {
    [(PXCuratedLibraryFooterController *)self footerVisibleAmountIncludingSafeAreaInsets:1];
    PXFloatGreaterThanFloat();
  }

  return 1;
}

- (BOOL)isPullingFooter
{
  v3 = [(PXCuratedLibraryFooterController *)self gridView];
  v4 = [v3 scrollViewController];

  v5 = [(PXCuratedLibraryFooterController *)self gridView];
  v6 = [v5 engine];
  v7 = [v6 scrollViewSpeedometer];

  if ([v4 isScrolledAtEdge:3 tolerance:1.0] && (objc_msgSend(v7, "lastScrollDirection"), v8 > 0.0))
  {
    v9 = [v4 isTracking];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (double)footerVisibleAmountIncludingSafeAreaInsets:(BOOL)a3
{
  v5 = [(PXCuratedLibraryFooterController *)self footerView];
  if (v5)
  {
    v6 = [(PXCuratedLibraryFooterController *)self gridView];
    [v5 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v6 scrollViewController];
    [v15 scrollViewVisibleRect];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    if (!a3)
    {
      [v6 safeAreaInsets];
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
  v2 = [(PXCuratedLibraryFooterController *)self gridView];
  v3 = [v2 window];
  v4 = v3 != 0;

  return v4;
}

- (void)viewDidAppear
{
  [(PXCuratedLibraryFooterController *)self setHasAppearedOnce:1];

  [(PXCuratedLibraryFooterController *)self _footerHasImportantInformationDidChange];
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCuratedLibraryFooterController;
  [(PXCuratedLibraryFooterController *)&v3 performChanges:a3];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXCuratedLibraryFooterController;
  [(PXCuratedLibraryFooterController *)&v4 didPerformChanges];
  v3 = [(PXCuratedLibraryFooterController *)self updater];
  [v3 updateIfNeeded];
}

- (void)setFooterFullyMasked:(BOOL)a3
{
  if (self->_footerFullyMasked != a3)
  {
    self->_footerFullyMasked = a3;
    [(PXCuratedLibraryFooterController *)self _invalidateFooterAndMaskVisibility];
  }
}

- (void)setIsFooterVisible:(BOOL)a3
{
  if (self->_isFooterVisible != a3)
  {
    self->_isFooterVisible = a3;
    v4 = [(PXCuratedLibraryFooterController *)self footerViewModel];
    v5 = v4;
    if (self->_isFooterVisible)
    {
      [v4 didShowFooter];
    }

    else
    {
      [v4 didHideFooter];
    }
  }
}

- (void)setFooterView:(id)a3
{
  v5 = a3;
  if (self->_footerView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_footerView, a3);
    [(PXCuratedLibraryFooterController *)self _invalidateIsFooterVisible];
    [(PXCuratedLibraryFooterController *)self _invalidateFooterAlpha];
    v5 = v6;
  }
}

- (void)setFooterMaskVerticalOffset:(double)a3
{
  if (self->_footerMaskVerticalOffset != a3)
  {
    self->_footerMaskVerticalOffset = a3;
    [(PXCuratedLibraryFooterController *)self _invalidateFooterMaskViewFrame];
  }
}

- (void)setWantsFooterMask:(BOOL)a3
{
  if (self->_wantsFooterMask != a3)
  {
    self->_wantsFooterMask = a3;
    [(PXCuratedLibraryFooterController *)self _invalidateFooter];
  }
}

- (void)setWantsFooter:(BOOL)a3
{
  if (self->_wantsFooter != a3)
  {
    self->_wantsFooter = a3;
    [(PXCuratedLibraryFooterController *)self _invalidateFooter];
  }
}

- (void)setFooterNeedsReveal:(BOOL)a3
{
  if (self->_footerNeedsReveal != a3)
  {
    self->_footerNeedsReveal = a3;
    [(PXCuratedLibraryFooterController *)self _invalidateWantsFooter];
  }
}

- (void)setHasAppearedOnce:(BOOL)a3
{
  if (self->_hasAppearedOnce != a3)
  {
    self->_hasAppearedOnce = a3;
    [(PXCuratedLibraryFooterController *)self _invalidateWantsFooter];
  }
}

- (id)footerViewModel
{
  footerViewModel = self->_footerViewModel;
  if (!footerViewModel)
  {
    v4 = [(PXCuratedLibraryFooterController *)self itemCountsController];
    v5 = [(PXCuratedLibraryFooterController *)self viewModel];
    v6 = [v5 cplUIStatusProvider];
    v7 = [v5 analysisStatus];
    v8 = -[PXCuratedLibraryFooterViewModel initWithItemCountsController:cplUIStatusProvider:analysisStatus:mode:viewModel:]([PXCuratedLibraryFooterViewModel alloc], "initWithItemCountsController:cplUIStatusProvider:analysisStatus:mode:viewModel:", v4, v6, v7, [objc_opt_class() _modeForZoomLevel:{objc_msgSend(v5, "zoomLevel")}], v5);
    v9 = self->_footerViewModel;
    self->_footerViewModel = v8;

    [(PXCuratedLibraryFooterViewModel *)self->_footerViewModel setPresentingDelegate:self];
    [(PXCuratedLibraryFooterViewModel *)self->_footerViewModel registerChangeObserver:self context:CuratedLibraryFooterViewModelObserverContext];

    footerViewModel = self->_footerViewModel;
  }

  return footerViewModel;
}

- (PXCuratedLibraryFooterController)initWithGridView:(id)a3 layout:(id)a4 viewModel:(id)a5 itemsCountsController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = PXCuratedLibraryFooterController;
  v15 = [(PXCuratedLibraryFooterController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_presentedZoomLevel = 0;
    objc_storeStrong(&v15->_gridView, a3);
    v17 = [(PXGView *)v16->_gridView scrollViewController];
    [v17 registerObserver:v16];
    objc_storeStrong(&v16->_layout, a4);
    objc_storeStrong(&v16->_viewModel, a5);
    [(PXCuratedLibraryViewModel *)v16->_viewModel registerChangeObserver:v16 context:CuratedLibraryViewModelObserverContext_132478];
    v18 = [(PXCuratedLibraryViewModel *)v16->_viewModel zoomablePhotosViewModel];
    [v18 registerChangeObserver:v16 context:operator||];

    v19 = [v13 styleGuide];
    styleGuide = v16->_styleGuide;
    v16->_styleGuide = v19;

    objc_storeStrong(&v16->_itemCountsController, a6);
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFooterController.m" lineNumber:70 description:{@"%s is not available as initializer", "-[PXCuratedLibraryFooterController init]"}];

  abort();
}

+ (int64_t)_modeForZoomLevel:(int64_t)a3
{
  if ((a3 - 1) < 2)
  {
    return 2;
  }

  if (a3 == 3)
  {
    return 1;
  }

  if (!a3)
  {
    v13 = v4;
    v14 = v3;
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXCuratedLibraryFooterController.m" lineNumber:280 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  return 0;
}

@end