@interface PXPhotosGridFooterPresentation
- (BOOL)_shouldAutoRevealFooterView;
- (PXPhotosGridFooterPresentation)init;
- (PXPhotosGridFooterPresentation)initWithViewModel:(id)a3 gridView:(id)a4 layout:(id)a5;
- (PXPhotosGridFooterPresentationDelegate)delegate;
- (UIEdgeInsets)footerMaskPadding;
- (double)_footerVisibleAmountIncludingSafeAreaInsets:(BOOL)a3;
- (void)_conditionallyAutoRevealFooterView;
- (void)_conditionallyAutoRevealFooterViewWithLastUserScrollTime:(double)a3;
- (void)_updateFooterAndMaskVisibility;
- (void)_updateFooterMaskPadding;
- (void)_updateFooterMaskViewFrame;
- (void)_updateFooterMaskViewOrder;
- (void)_updateFooterView;
- (void)_updateWantsFooter;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4;
- (void)photosGlobalFooterViewDidChangeHeight:(id)a3;
- (void)photosGlobalFooterViewDidMoveToWindow:(id)a3;
- (void)setFooterFullyMasked:(BOOL)a3;
- (void)setShouldAutoReveal:(BOOL)a3;
- (void)setWantsFooter:(BOOL)a3;
- (void)viewDidAppear;
- (void)viewDidScrollToInitialPosition;
- (void)viewWillAppear;
@end

@implementation PXPhotosGridFooterPresentation

- (UIEdgeInsets)footerMaskPadding
{
  top = self->_footerMaskPadding.top;
  left = self->_footerMaskPadding.left;
  bottom = self->_footerMaskPadding.bottom;
  right = self->_footerMaskPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXPhotosGridFooterPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photosGlobalFooterViewDidMoveToWindow:(id)a3
{
  [(PXPhotosGridFooterPresentation *)self _updateFooterMaskViewOrder];

  [(PXPhotosGridFooterPresentation *)self _updateFooterMaskViewFrame];
}

- (void)photosGlobalFooterViewDidChangeHeight:(id)a3
{
  v4 = [(PXPhotosLayout *)self->_layout createAnchorForVisibleArea];
  v5 = [v4 autoInvalidate];

  [(PXPhotosLayout *)self->_layout invalidateFooterSize];

  [(PXPhotosGridFooterPresentation *)self _updateFooterMaskViewFrame];
}

- (void)photosGlobalFooterView:(id)a3 presentViewController:(id)a4
{
  v7 = a4;
  v5 = [(PXPhotosGridFooterPresentation *)self delegate];
  v6 = v5;
  if (v7)
  {
    [v5 footerPresentation:self presentViewController:v7];
  }

  else
  {
    [v5 dismissPresentedViewControllerForFooterPresentation:self];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXPhotosViewModelObserverContext_219777 == a5)
  {
    block[9] = v5;
    block[10] = v6;
    if ([(PXPhotosViewModel *)self->_viewModel hideFooterInSelectMode])
    {
      v9 = 4;
    }

    else
    {
      v9 = 0;
    }

    if (((v9 | 0x41) & a4) != 0)
    {
      [(PXPhotosGridFooterPresentation *)self _updateWantsFooter];
    }

    if (((v9 | 0xC0) & a4) != 0)
    {
      [(PXPhotosGridFooterPresentation *)self _conditionallyAutoRevealFooterView];
    }

    if (((v9 | 0x100000000000) & a4) != 0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__PXPhotosGridFooterPresentation_observable_didChange_context___block_invoke;
      block[3] = &unk_1E774C648;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_updateFooterAndMaskVisibility
{
  v3 = [(PXPhotosGridFooterPresentation *)self isFooterFullyMasked];
  v4 = [(PXPhotosGridFooterPresentation *)self footerMaskView];
  [v4 setHidden:v3];

  v5 = [(PXPhotosLayout *)self->_layout footerView];
  [v5 setHidden:v3];
}

- (void)_updateFooterMaskViewFrame
{
  v31 = [(PXPhotosGridFooterPresentation *)self footerMaskView];
  if (v31)
  {
    v3 = [(PXGView *)self->_gridView scrollViewController];
    [v3 visibleRect];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(PXPhotosGridFooterPresentation *)self footerMaskPadding];
    v13 = v12;
    v16 = v9 - (v14 + v15);
    v17 = v5 + v14;
    v33.origin.x = v5;
    v33.origin.y = v7;
    v33.size.width = v9;
    v33.size.height = v11;
    MaxY = CGRectGetMaxY(v33);
    [v3 contentInset];
    v20 = v13 + MaxY - v19;
    v34.origin.x = v5;
    v34.origin.y = v7;
    v34.size.width = v9;
    v34.size.height = v11;
    v21 = CGRectGetMaxY(v34);
    v35.origin.x = v17;
    v35.origin.y = v20;
    v35.size.width = v16;
    v35.size.height = v11;
    [v31 setFrame:{v17, v20, v16, v21 - CGRectGetMinY(v35)}];
    v22 = [(PXPhotosLayout *)self->_layout footerView];
    [v22 convertPoint:v31 toView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v24 = v23;
    v25 = [v22 window];
    v26 = v25 == 0;

    v27 = v24 + 1.0;
    if (v24 + 1.0 >= 0.0 && ([v3 isManuallyChanging] & 1) == 0)
    {
      v28 = [v22 window];
      v29 = [v31 window];
      if (v28 == v29)
      {
        v30 = [v22 window];
        v26 = v30 != 0;
      }

      else
      {
        v26 = 0;
      }
    }

    [(PXPhotosGridFooterPresentation *)self setFooterFullyMasked:v26, v27];
  }

  else
  {
    [(PXPhotosGridFooterPresentation *)self setFooterFullyMasked:0];
  }
}

- (void)_updateFooterMaskViewOrder
{
  v4 = [(PXPhotosGridFooterPresentation *)self footerMaskView];
  v2 = [v4 window];

  if (v2)
  {
    v3 = [v4 superview];
    [v3 bringSubviewToFront:v4];
  }
}

- (void)_updateFooterMaskPadding
{
  v3 = [(PXPhotosGridFooterPresentation *)self delegate];
  [v3 maskPaddingForFooterPresentation:self];
  [(PXPhotosGridFooterPresentation *)self setFooterMaskPadding:?];
}

- (void)_updateFooterView
{
  v4 = [(PXPhotosLayout *)self->_layout footerView];
  v5 = v4 == 0;
  if (!v4)
  {
    if (![(PXPhotosGridFooterPresentation *)self wantsFooter])
    {
      v5 = 0;
      obj = 0;
      goto LABEL_13;
    }

    reusableFooterView = self->_reusableFooterView;
    if (reusableFooterView)
    {
      v7 = reusableFooterView;
    }

    else
    {
      v7 = objc_alloc_init(PXPhotosGlobalFooterView);
      v14 = [(PXPhotosViewModel *)self->_viewModel footerViewModel];
      [(PXPhotosGlobalFooterView *)v7 setViewModel:v14];

      [(PXPhotosGlobalFooterView *)v7 setDelegate:self];
    }

    obj = v7;
    goto LABEL_11;
  }

  obj = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [obj px_descriptionForAssertionMessage];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterPresentation.m" lineNumber:274 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"_layout.footerView", v17, v18}];
  }

  if (![(PXPhotosGridFooterPresentation *)self wantsFooter])
  {
    objc_storeStrong(&self->_reusableFooterView, obj);
    v7 = 0;
LABEL_11:
    [(PXPhotosLayout *)self->_layout setFooterView:v7];
    goto LABEL_13;
  }

  v5 = 1;
LABEL_13:
  v8 = [(PXPhotosGridFooterPresentation *)self footerMaskView];
  v9 = [(PXPhotosGridFooterPresentation *)self wantsFooterMask];
  if (v5 && v9)
  {
    if (!v8)
    {
      v10 = objc_alloc_init(_PXPhotosGridFooterMaskView);
      [(_PXPhotosGridFooterMaskView *)v10 setDelegate:self];
      gridView = self->_gridView;
      v8 = v10;
      v12 = [(PXGView *)gridView backgroundColor];
      [(_PXPhotosGridFooterMaskView *)v8 setBackgroundColor:v12];

      [(_PXPhotosGridFooterMaskView *)v8 setUserInteractionEnabled:0];
      v13 = [(PXGView *)self->_gridView scrollViewController];
      [v13 addSubview:v8];
    }

    [(PXPhotosGridFooterPresentation *)self setFooterMaskView:v8];
    [(PXPhotosGridFooterPresentation *)self _updateFooterMaskPadding];
    [(PXPhotosGridFooterPresentation *)self _updateFooterMaskViewFrame];
  }

  else
  {
    [(_PXPhotosGridFooterMaskView *)v8 removeFromSuperview];

    [(PXPhotosGridFooterPresentation *)self setFooterMaskView:0];
  }
}

- (void)_updateWantsFooter
{
  v3 = [(PXPhotosViewModel *)self->_viewModel wantsFooterVisibleImmediately];
  v4 = v3;
  if (self->_hasAppearedOnce || v3)
  {
    if ([(PXPhotosViewModel *)self->_viewModel wantsFooterVisible]&& ((self->_hasReachedInitialPosition | v4) & 1) != 0 && (![(PXPhotosViewModel *)self->_viewModel isInSelectMode]|| ([(PXPhotosViewModel *)self->_viewModel hideFooterInSelectMode]& 1) == 0))
    {
      if (([(PXPhotosViewModel *)self->_viewModel wantsFooterVisibleWhenEmpty]& 1) != 0)
      {
        v5 = 1;
      }

      else
      {
        v6 = [(PXPhotosViewModel *)self->_viewModel currentDataSource];
        v5 = [v6 totalNumberOfItems] > 0;
      }
    }

    else
    {
      v5 = 0;
    }

    [(PXPhotosGridFooterPresentation *)self setWantsFooter:v5];
  }
}

- (void)_conditionallyAutoRevealFooterView
{
  if ([(PXPhotosGridFooterPresentation *)self _shouldAutoRevealFooterView])
  {
    v3 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEBUG, "[GZFooter] Should auto-reveal, waiting for idle timer", buf, 2u);
    }

    [(PXPhotosGridFooterPresentation *)self setShouldAutoReveal:1];
    lastUserScrollTime = self->_lastUserScrollTime;
    objc_initWeak(buf, self);
    v5 = MEMORY[0x1E695DFF0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68__PXPhotosGridFooterPresentation__conditionallyAutoRevealFooterView__block_invoke;
    v8[3] = &unk_1E7747028;
    objc_copyWeak(v9, buf);
    v9[1] = *&lastUserScrollTime;
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:2.0];
    autoRevealMinimumIdleTimer = self->_autoRevealMinimumIdleTimer;
    self->_autoRevealMinimumIdleTimer = v6;

    objc_destroyWeak(v9);
    objc_destroyWeak(buf);
  }
}

void __68__PXPhotosGridFooterPresentation__conditionallyAutoRevealFooterView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _conditionallyAutoRevealFooterViewWithLastUserScrollTime:*(a1 + 40)];
}

- (void)_conditionallyAutoRevealFooterViewWithLastUserScrollTime:(double)a3
{
  autoRevealMinimumIdleTimer = self->_autoRevealMinimumIdleTimer;
  self->_autoRevealMinimumIdleTimer = 0;

  if (self->_lastUserScrollTime == a3)
  {
    if ([(PXPhotosGridFooterPresentation *)self _shouldAutoRevealFooterView])
    {
      self->_didAutoReveal = 1;
      v9 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "[GZFooter] Performing auto-reveal", v10, 2u);
      }

      v6 = [(PXGView *)self->_gridView scrollViewController];
      [v6 scrollToEdge:3 animated:1];
    }

    else
    {
      v6 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v7 = "[GZFooter] Suppressing auto-reveal: conditions changed";
        v8 = buf;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v12 = 0;
      v7 = "[GZFooter] Suppressing auto-reveal: user scrolled";
      v8 = &v12;
LABEL_10:
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEBUG, v7, v8, 2u);
    }
  }

  [(PXPhotosGridFooterPresentation *)self setShouldAutoReveal:0];
}

- (BOOL)_shouldAutoRevealFooterView
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(PXGView *)self->_gridView window];

  if (v3)
  {
    if (self->_autoRevealMinimumIdleTimer)
    {
      v4 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        v5 = "[GZFooter] Suppressing auto-reveal: Waiting for idle timer";
LABEL_11:
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEBUG, v5, &v10, 2u);
      }
    }

    else
    {
      if (([(PXPhotosViewModel *)self->_viewModel footerHasImportantInformation]& 1) != 0)
      {
        v6 = [(PXGView *)self->_gridView scrollViewController];
        v7 = [(PXPhotosLayout *)self->_layout footerView];
        [v7 bounds];
        [v6 isScrolledAtEdge:3 tolerance:v8 + 1.0];

        [(PXPhotosGridFooterPresentation *)self _footerVisibleAmountIncludingSafeAreaInsets:0];
        PXFloatEqualToFloatWithTolerance();
      }

      v4 = PLUserStatusUIGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v10) = 0;
        v5 = "[GZFooter] Suppressing auto-reveal: No important information";
        goto LABEL_11;
      }
    }
  }

  else
  {
    v4 = PLUserStatusUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v10) = 0;
      v5 = "[GZFooter] Suppressing auto-reveal: Not visible";
      goto LABEL_11;
    }
  }

  return 0;
}

- (double)_footerVisibleAmountIncludingSafeAreaInsets:(BOOL)a3
{
  v6 = [(PXPhotosLayout *)self->_layout footerView];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = [MEMORY[0x1E696AAA8] currentHandler];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = [v6 px_descriptionForAssertionMessage];
      [v36 handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterPresentation.m" lineNumber:147 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"_layout.footerView", v38, v39}];
    }

    v7 = [(PXGView *)self->_gridView scrollViewController];
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [v7 scrollView];
    [v6 convertRect:v16 toView:{v9, v11, v13, v15}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v41.origin.x = v18;
    v41.origin.y = v20;
    v41.size.width = v22;
    v41.size.height = v24;
    Height = CGRectGetHeight(v41);
    v26 = 0.0;
    if (Height > 0.0)
    {
      v40 = Height;
      [v7 scrollViewVisibleRect];
      if (!a3)
      {
        [(PXGView *)self->_gridView safeAreaInsets];
        PXEdgeInsetsInsetRect();
      }

      v44.origin.x = v18;
      v44.origin.y = v20;
      v44.size.width = v22;
      v44.size.height = v24;
      v42 = CGRectIntersection(*&v27, v44);
      x = v42.origin.x;
      y = v42.origin.y;
      width = v42.size.width;
      v34 = v42.size.height;
      if (!CGRectIsEmpty(v42))
      {
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = v34;
        v26 = CGRectGetHeight(v43) / v40;
      }
    }
  }

  else
  {
    v26 = 0.0;
  }

  return v26;
}

- (void)setFooterFullyMasked:(BOOL)a3
{
  if (self->_footerFullyMasked != a3)
  {
    self->_footerFullyMasked = a3;
    [(PXPhotosGridFooterPresentation *)self _updateFooterAndMaskVisibility];
  }
}

- (void)setWantsFooter:(BOOL)a3
{
  if (self->_wantsFooter != a3)
  {
    self->_wantsFooter = a3;
    [(PXPhotosGridFooterPresentation *)self _updateFooterView];
  }
}

- (void)setShouldAutoReveal:(BOOL)a3
{
  if (self->_shouldAutoReveal != a3)
  {
    self->_shouldAutoReveal = a3;
    [(PXPhotosGridFooterPresentation *)self _updateWantsFooter];
  }
}

- (void)viewDidScrollToInitialPosition
{
  self->_hasReachedInitialPosition = 1;
  [(PXPhotosGridFooterPresentation *)self _updateWantsFooter];

  [(PXPhotosGridFooterPresentation *)self _updateFooterMaskViewFrame];
}

- (void)viewDidAppear
{
  self->_hasAppearedOnce = 1;
  [(PXPhotosGridFooterPresentation *)self _updateWantsFooter];

  [(PXPhotosGridFooterPresentation *)self _updateFooterMaskViewFrame];
}

- (void)viewWillAppear
{
  [(PXPhotosGridFooterPresentation *)self _updateWantsFooter];

  [(PXPhotosGridFooterPresentation *)self _updateFooterMaskViewFrame];
}

- (PXPhotosGridFooterPresentation)initWithViewModel:(id)a3 gridView:(id)a4 layout:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterPresentation.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"gridView"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterPresentation.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterPresentation.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"layout"}];

LABEL_4:
  v20.receiver = self;
  v20.super_class = PXPhotosGridFooterPresentation;
  v13 = [(PXPhotosGridFooterPresentation *)&v20 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_gridView, a4);
    v15 = [(PXGView *)v14->_gridView scrollViewController];
    [v15 registerObserver:v14];
    objc_storeStrong(&v14->_layout, a5);
    objc_storeStrong(&v14->_viewModel, a3);
    [(PXPhotosViewModel *)v14->_viewModel registerChangeObserver:v14 context:PXPhotosViewModelObserverContext_219777];
  }

  return v14;
}

- (PXPhotosGridFooterPresentation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosGridFooterPresentation.m" lineNumber:71 description:{@"%s is not available as initializer", "-[PXPhotosGridFooterPresentation init]"}];

  abort();
}

@end