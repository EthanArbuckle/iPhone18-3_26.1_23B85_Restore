@interface PUAccessoryTileViewController
- (BOOL)_isPhoneAndLandscape;
- (BOOL)isLocationFromProviderInContentArea:(id)area;
- (CGRect)_contentBounds;
- (CGRect)_keyboardFrame;
- (CGRect)_untransformedMasterContentFrame;
- (PUAccessoryTileViewController)initWithReuseIdentifier:(id)identifier;
- (PUAccessoryTileViewControllerDelegate)delegate;
- (UIEdgeInsets)_contentInsets;
- (id)accessoryContentViewControllerViewHostingGestureRecognizers:(id)recognizers;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_performChanges:(id)changes;
- (void)_setContentBounds:(CGRect)bounds;
- (void)_setContentInsets:(UIEdgeInsets)insets;
- (void)_setContentView:(id)view;
- (void)_setContentViewController:(id)controller;
- (void)_setKeyboardFrame:(CGRect)frame;
- (void)_setLoadedContentViewController:(id)controller;
- (void)_setMinimumVisibleHeight:(double)height;
- (void)_setNeedsUpdate;
- (void)_setUntransformedMasterContentFrame:(CGRect)frame;
- (void)_updateContentBoundsIfNeeded;
- (void)_updateContentViewControllerIfNeeded;
- (void)_updateContentViewMetricsIfNeeded;
- (void)_updateIfNeeded;
- (void)_updateLoadedContentViewControllerIfNeeded;
- (void)_updateMasterContentOffsetIfNeeded;
- (void)accessoryContentViewController:(id)controller editorHeightDidChange:(double)change;
- (void)accessoryContentViewControllerContentBoundsDidChange:(id)change;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)dealloc;
- (void)didChangeActive;
- (void)setAssetReference:(id)reference;
- (void)setAssetViewModel:(id)model;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation PUAccessoryTileViewController

- (CGRect)_keyboardFrame
{
  x = self->__keyboardFrame.origin.x;
  y = self->__keyboardFrame.origin.y;
  width = self->__keyboardFrame.size.width;
  height = self->__keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)_contentInsets
{
  top = self->__contentInsets.top;
  left = self->__contentInsets.left;
  bottom = self->__contentInsets.bottom;
  right = self->__contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)_untransformedMasterContentFrame
{
  x = self->__untransformedMasterContentFrame.origin.x;
  y = self->__untransformedMasterContentFrame.origin.y;
  width = self->__untransformedMasterContentFrame.size.width;
  height = self->__untransformedMasterContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)_contentBounds
{
  x = self->__contentBounds.origin.x;
  y = self->__contentBounds.origin.y;
  width = self->__contentBounds.size.width;
  height = self->__contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PUAccessoryTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_keyboardWillHide:(id)hide
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PUAccessoryTileViewController__keyboardWillHide___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUAccessoryTileViewController *)self _performChanges:v3];
}

uint64_t __51__PUAccessoryTileViewController__keyboardWillHide___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setKeyboardFrame:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  v2 = *(a1 + 32);

  return [v2 _setContentInsetsChangeReason:3];
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__PUAccessoryTileViewController__keyboardWillShow___block_invoke;
  v14[3] = &unk_1E7B7FF20;
  v14[4] = self;
  v14[5] = v7;
  v14[6] = v9;
  v14[7] = v11;
  v14[8] = v13;
  [(PUAccessoryTileViewController *)self _performChanges:v14];
}

uint64_t __51__PUAccessoryTileViewController__keyboardWillShow___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setKeyboardFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 _setContentInsetsChangeReason:2];
}

- (void)accessoryContentViewController:(id)controller editorHeightDidChange:(double)change
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __86__PUAccessoryTileViewController_accessoryContentViewController_editorHeightDidChange___block_invoke;
  v4[3] = &unk_1E7B7FF70;
  v4[4] = self;
  *&v4[5] = change;
  [(PUAccessoryTileViewController *)self _performChanges:v4];
}

uint64_t __86__PUAccessoryTileViewController_accessoryContentViewController_editorHeightDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setEditorHeightDelta:*(a1 + 40)];
  [*(a1 + 32) _invalidateContentViewMetrics];
  v2 = *(a1 + 32);

  return [v2 _setContentInsetsChangeReason:1];
}

- (void)accessoryContentViewControllerContentBoundsDidChange:(id)change
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __86__PUAccessoryTileViewController_accessoryContentViewControllerContentBoundsDidChange___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUAccessoryTileViewController *)self _performChanges:v3];
}

- (id)accessoryContentViewControllerViewHostingGestureRecognizers:(id)recognizers
{
  recognizersCopy = recognizers;
  if (!self->_delegateFlags.respondsToViewHostingGestureRecognizers || (-[PUAccessoryTileViewController delegate](self, "delegate"), v6 = objc_claimAutoreleasedReturnValue(), [v6 accessoryTileViewControllerViewHostingGestureRecognizers:self], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    _contentViewController = [(PUAccessoryTileViewController *)self _contentViewController];
    isViewLoaded = [_contentViewController isViewLoaded];

    if (!isViewLoaded || (-[PUAccessoryTileViewController _contentViewController](self, "_contentViewController"), v10 = objc_claimAutoreleasedReturnValue(), [v10 view], v7 = objc_claimAutoreleasedReturnValue(), v10, !v7))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUAccessoryTileViewController.m" lineNumber:592 description:@"missing viewHostingGestureRecognizers"];

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)_isPhoneAndLandscape
{
  _contentViewController = [(PUAccessoryTileViewController *)self _contentViewController];
  traitCollection = [_contentViewController traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 0;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  windows = [mEMORY[0x1E69DC668] windows];
  firstObject = [windows firstObject];
  windowScene = [firstObject windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return (interfaceOrientation - 3) < 2;
}

- (void)_updateMasterContentOffsetIfNeeded
{
  if (self->_needsUpdateFlags.masterContentOffset)
  {
    v42 = v11;
    v43 = v10;
    v44 = v9;
    v45 = v8;
    v46 = v7;
    v47 = v6;
    v48 = v5;
    v49 = v4;
    v50 = v2;
    v51 = v3;
    self->_needsUpdateFlags.masterContentOffset = 0;
    [(PUAccessoryTileViewController *)self _contentBounds];
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;
    IsEmpty = CGRectIsEmpty(v52);
    isActive = [(PUTileController *)self isActive];
    if (!IsEmpty)
    {
      v34 = *(MEMORY[0x1E695EFF8] + 8);
      v35 = *MEMORY[0x1E695EFF8];
      [(PUAccessoryTileViewController *)self _untransformedMasterContentFrame];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      MinY = CGRectGetMinY(v53);
      v54.origin.x = v20;
      v54.origin.y = v22;
      v54.size.width = v24;
      v54.size.height = v26;
      v28 = MinY - CGRectGetMaxY(v54);
      if (v28 <= 0.0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0.0;
      }

      if (isActive)
      {
        v30 = v29;
      }

      else
      {
        v30 = v34;
      }

      if (isActive == [(PUAccessoryTileViewController *)self _wasActiveOnLastMasterContentOffsetChange])
      {
        if (([(PUAccessoryTileViewController *)self _contentInsetsChangeReason]- 1) >= 3)
        {
          v31 = 2;
        }

        else
        {
          v31 = 3;
        }
      }

      else
      {
        v31 = 1;
      }

      assetViewModel = [(PUAccessoryTileViewController *)self assetViewModel];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __67__PUAccessoryTileViewController__updateMasterContentOffsetIfNeeded__block_invoke;
      v36[3] = &unk_1E7B7FF20;
      v37 = assetViewModel;
      v38 = v35;
      v39 = v30;
      v40 = v31;
      v41 = v29;
      v33 = assetViewModel;
      [v33 performChanges:v36];
    }

    [(PUAccessoryTileViewController *)self _setWasActiveOnLastMasterContentOffsetChange:!IsEmpty & isActive];
  }
}

uint64_t __67__PUAccessoryTileViewController__updateMasterContentOffsetIfNeeded__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPreferredContentOffset:*(a1 + 56) changeReason:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);

  return [v3 setContentOffsetForAccessoryFullyVisible:{0.0, v2}];
}

- (void)_updateContentBoundsIfNeeded
{
  if (self->_needsUpdateFlags.contentBounds)
  {
    self->_needsUpdateFlags.contentBounds = 0;
    _contentView = [(PUAccessoryTileViewController *)self _contentView];
    if (_contentView)
    {
      view = [(PUTileViewController *)self view];
      _loadedContentViewController = [(PUAccessoryTileViewController *)self _loadedContentViewController];
      [_loadedContentViewController contentBoundsInCoordinateSpace:view];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [view bounds];
      v25.origin.x = v14;
      v25.origin.y = v15;
      v25.size.width = v16;
      v25.size.height = v17;
      v23.origin.x = v7;
      v23.origin.y = v9;
      v23.size.width = v11;
      v23.size.height = v13;
      v24 = CGRectIntersection(v23, v25);
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
    }

    else
    {
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
    }

    [(PUAccessoryTileViewController *)self _setContentBounds:x, y, width, height];
  }
}

- (void)_updateContentViewMetricsIfNeeded
{
  if (!self->_needsUpdateFlags.contentViewMetrics)
  {
    return;
  }

  self->_needsUpdateFlags.contentViewMetrics = 0;
  _contentView = [(PUAccessoryTileViewController *)self _contentView];
  if (_contentView)
  {
    v93 = _contentView;
    view = [(PUTileViewController *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v93 setFrame:?];
    if (self->_delegateFlags.respondsToShouldUseSquareImageWhenShowingAccessoryView)
    {
      delegate = [(PUAccessoryTileViewController *)self delegate];
      v15 = [delegate accessoryTileViewControllerShouldUseSquareImageWhenShowingAccessoryView:self] ^ 1;

      _isPhoneAndLandscape = [(PUAccessoryTileViewController *)self _isPhoneAndLandscape];
      v17 = 1;
      if ((v15 & 1) == 0 && _isPhoneAndLandscape)
      {
        v88 = v7;
        v18 = v11;
        [v93 bounds];
        x = v94.origin.x;
        y = v94.origin.y;
        width = v94.size.width;
        height = v94.size.height;
        v23 = CGRectGetHeight(v94);
        PXSizeGetAspectRatio();
        if (v24 < 2.0)
        {
          v95.origin.x = x;
          v95.origin.y = y;
          v95.size.width = width;
          v95.size.height = height;
          v25 = CGRectGetWidth(v95);
          v96.origin.x = x;
          v96.origin.y = y;
          v96.size.width = width;
          v96.size.height = height;
          v23 = v25 - CGRectGetHeight(v96);
        }

        [v93 setFrame:{v23, y, width - v23, height}];
        v17 = 0;
        v11 = v18;
        v7 = v88;
      }
    }

    else
    {
      [(PUAccessoryTileViewController *)self _isPhoneAndLandscape];
      v17 = 1;
      v15 = 1;
    }

    if (self->_delegateFlags.respondsToWillHideToolbarWhenShowingAccessoryView)
    {
      delegate2 = [(PUAccessoryTileViewController *)self delegate];
      v27 = [delegate2 accessoryTileViewControllerWillHideToolbarWhenShowingAccessoryView:self];
    }

    else
    {
      v27 = 0;
    }

    _loadedContentViewController = [(PUAccessoryTileViewController *)self _loadedContentViewController];
    [_loadedContentViewController px_safeAreaInsets];
    v30 = v29;
    [_loadedContentViewController preferredContentSize];
    v32 = v31;
    v33 = v7;
    v34 = v9;
    v35 = v11;
    v36 = v13;
    if (v15)
    {
      v37 = CGRectGetHeight(*&v33);
      v38 = +[PUOneUpSettings sharedInstance];
      [v38 accessoryInitialTopPosition];
      v40 = 1.0 - v39;
      v41 = v30;
      if ((v27 & 1) == 0)
      {
        [(PUAccessoryTileViewController *)self _contentInsets];
      }

      v42 = -(v41 - v37 * v40);

      [(PUAccessoryTileViewController *)self _minimumVisibleHeight];
      if (v43 < v32)
      {
        v43 = v32;
      }

      if (v43 >= v42)
      {
        v44 = v42;
      }

      else
      {
        v44 = v43;
      }
    }

    else
    {
      v45 = CGRectGetWidth(*&v33);
      v46 = +[PUOneUpSettings sharedInstance];
      squareImageCapToHalfHeight = [v46 squareImageCapToHalfHeight];

      if (squareImageCapToHalfHeight)
      {
        v97.origin.x = v7;
        v97.origin.y = v9;
        v97.size.width = v11;
        v97.size.height = v13;
        v48 = CGRectGetHeight(v97) * 0.5;
        if (v48 < v45)
        {
          v45 = v48;
        }
      }

      v98.origin.x = v7;
      v98.origin.y = v9;
      v98.size.width = v11;
      v98.size.height = v13;
      v49 = CGRectGetHeight(v98) - v45;
      v50 = v30;
      if ((v27 & 1) == 0)
      {
        [(PUAccessoryTileViewController *)self _contentInsets];
      }

      v44 = v49 - v50;
      v42 = v44;
    }

    v51 = MEMORY[0x1E69DDCE0];
    [(PUAccessoryTileViewController *)self _editorHeightDelta];
    if (v52 != 0.0)
    {
      v53 = PXFloatEqualToFloatWithTolerance();
      [(PUAccessoryTileViewController *)self _editorHeightDelta];
      v55 = v32 + v54;
      if (v32 + v54 >= v42)
      {
        v55 = v42;
      }

      v56 = v44 + v54;
      if (v53)
      {
        v56 = v55;
      }

      if (v42 >= v56)
      {
        v44 = v56;
      }

      else
      {
        v44 = v42;
      }

      [(PUAccessoryTileViewController *)self _setEditorHeightDelta:0.0];
    }

    v91 = *(v51 + 8);
    v92 = *(v51 + 24);
    [(PUAccessoryTileViewController *)self _contentInsets];
    if (!v27)
    {
      v30 = v57;
    }

    v99.origin.x = v7;
    v99.origin.y = v9;
    v99.size.width = v11;
    v99.size.height = v13;
    rect = v13;
    v58 = v9;
    v90 = CGRectGetHeight(v99) - v30 - v44;
    [(PUAccessoryTileViewController *)self _keyboardFrame];
    v59 = v11;
    v60 = v100.origin.x;
    v61 = v7;
    v62 = v100.origin.y;
    v63 = v100.size.width;
    v64 = v100.size.height;
    if (CGRectIsNull(v100))
    {
      if (v17)
      {
        v65 = v90;
LABEL_60:
        [_loadedContentViewController setContentInsets:-[PUAccessoryTileViewController _contentInsetsChangeReason](self changeReason:{"_contentInsetsChangeReason", *&v85, *&v86), v65, v91, v30, v92}];

        _contentView = v93;
        goto LABEL_61;
      }

      if (self->_delegateFlags.respondsToWillHideNavigationBarWhenShowingAccessoryView)
      {
        delegate3 = [(PUAccessoryTileViewController *)self delegate];
        v83 = [delegate3 accessoryTileViewControllerWillHideNavigationBarWhenShowingAccessoryView:self];

        v65 = 0.0;
        if (v83)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      if (v62 < 0.0)
      {
        v62 = 0.0;
      }

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
      [view convertRect:px_firstKeyWindow fromView:{v60, v62, v63, v64}];
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v75 = v74;

      v89 = v61;
      v101.origin.x = v61;
      v85 = v59;
      v86 = v58;
      v101.origin.y = v58;
      v101.size.width = v59;
      v101.size.height = rect;
      MaxY = CGRectGetMaxY(v101);
      v102.origin.x = v69;
      v102.origin.y = v71;
      v102.size.width = v73;
      v102.size.height = v75;
      v77 = MaxY - CGRectGetMinY(v102);
      if (v30 < v77)
      {
        v30 = v77;
      }

      if (objc_opt_respondsToSelector())
      {
        [(PUAccessoryTileViewController *)self _contentInsets];
        [_loadedContentViewController setMaxVisibleContentInsetsWhenInEdit:?];
      }

      v78 = 0.0;
      if (objc_opt_respondsToSelector())
      {
        [_loadedContentViewController minimumContentSize];
        v78 = v79;
      }

      v103.origin.x = v69;
      v103.origin.y = v71;
      v103.size.width = v73;
      v103.size.height = v75;
      MinY = CGRectGetMinY(v103);
      v104.origin.x = v89;
      v104.size.width = v59;
      v104.origin.y = v58;
      v104.size.height = rect;
      v81 = MinY - CGRectGetMinY(v104) - v78;
      if (v90 < v81)
      {
        v81 = v90;
      }

      if (v81 >= 0.0)
      {
        v65 = v81;
      }

      else
      {
        v65 = 0.0;
      }

      if (v17)
      {
        goto LABEL_60;
      }
    }

    [(PUAccessoryTileViewController *)self _contentInsets:*&v85];
    v65 = v84;
    goto LABEL_60;
  }

LABEL_61:
}

- (void)_updateLoadedContentViewControllerIfNeeded
{
  if (self->_needsUpdateFlags.loadedContentViewController)
  {
    v14 = v5;
    v15 = v4;
    v16 = v2;
    v17 = v3;
    self->_needsUpdateFlags.loadedContentViewController = 0;
    if ([(PUTileViewController *)self isViewLoaded])
    {
      _contentViewController = [(PUAccessoryTileViewController *)self _contentViewController];
    }

    else
    {
      _contentViewController = 0;
    }

    assetViewModel = [(PUAccessoryTileViewController *)self assetViewModel];
    [assetViewModel focusValue];
    v10 = fabs(v9);

    if (v10 >= 1.0)
    {
      v11 = dispatch_time(0, 250000000);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __75__PUAccessoryTileViewController__updateLoadedContentViewControllerIfNeeded__block_invoke;
      v12[3] = &unk_1E7B80C38;
      v12[4] = self;
      v13 = _contentViewController;
      dispatch_after(v11, MEMORY[0x1E69E96A0], v12);
    }

    else
    {
      [(PUAccessoryTileViewController *)self _setLoadedContentViewController:_contentViewController];
    }
  }
}

- (void)_updateContentViewControllerIfNeeded
{
  if (self->_needsUpdateFlags.contentViewController)
  {
    self->_needsUpdateFlags.contentViewController = 0;
    assetReference = [(PUAccessoryTileViewController *)self assetReference];

    if (assetReference)
    {
      delegate = [(PUAccessoryTileViewController *)self delegate];
      v6 = [delegate accessoryTileViewControllerAccessoryViewController:self];
    }

    else
    {
      v6 = 0;
    }

    [(PUAccessoryTileViewController *)self _setContentViewController:v6];
  }
}

- (void)_updateIfNeeded
{
  if ([(PUAccessoryTileViewController *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PUAccessoryTileViewController *)self _updateContentViewControllerIfNeeded];
    [(PUAccessoryTileViewController *)self _updateLoadedContentViewControllerIfNeeded];
    [(PUAccessoryTileViewController *)self _updateContentViewMetricsIfNeeded];
    [(PUAccessoryTileViewController *)self _updateContentBoundsIfNeeded];
    [(PUAccessoryTileViewController *)self _updateMasterContentOffsetIfNeeded];
    [(PUAccessoryTileViewController *)self _setContentInsetsChangeReason:0];
    self->_isPerformingUpdates = isPerformingUpdates;
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates && !self->_isUpdateScheduled)
  {
    self->_isUpdateScheduled = 1;
    objc_initWeak(&location, self);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __48__PUAccessoryTileViewController__setNeedsUpdate__block_invoke;
    v2[3] = &unk_1E7B80638;
    objc_copyWeak(&v3, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v2);
    objc_destroyWeak(&v3);
    objc_destroyWeak(&location);
  }
}

void __48__PUAccessoryTileViewController__setNeedsUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleScheduledUpdate];
}

- (void)_performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = changesCopy;
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
    changesCopy = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PUAccessoryTileViewController *)self _updateIfNeeded];
    changesCopy = v6;
  }
}

- (void)_setMinimumVisibleHeight:(double)height
{
  if ((PXFloatEqualToFloatWithTolerance() & 1) == 0)
  {
    self->__minimumVisibleHeight = height;
    [(PUAccessoryTileViewController *)self _invalidateContentViewMetrics];

    [(PUAccessoryTileViewController *)self _setContentInsetsChangeReason:1];
  }
}

- (void)_setKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_keyboardFrame = &self->__keyboardFrame;
  if (!CGRectEqualToRect(frame, self->__keyboardFrame))
  {
    p_keyboardFrame->origin.x = x;
    p_keyboardFrame->origin.y = y;
    p_keyboardFrame->size.width = width;
    p_keyboardFrame->size.height = height;

    [(PUAccessoryTileViewController *)self _invalidateContentViewMetrics];
  }
}

- (void)_setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->__contentInsets.top), vceqq_f64(v4, *&self->__contentInsets.bottom)))) & 1) == 0)
  {
    self->__contentInsets = insets;
    [(PUAccessoryTileViewController *)self _invalidateContentViewMetrics];
  }
}

- (void)_setUntransformedMasterContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_untransformedMasterContentFrame = &self->__untransformedMasterContentFrame;
  if (!CGRectEqualToRect(frame, self->__untransformedMasterContentFrame))
  {
    p_untransformedMasterContentFrame->origin.x = x;
    p_untransformedMasterContentFrame->origin.y = y;
    p_untransformedMasterContentFrame->size.width = width;
    p_untransformedMasterContentFrame->size.height = height;
    [(PUAccessoryTileViewController *)self _invalidateMasterContentOffset];

    [(PUAccessoryTileViewController *)self _invalidateContentViewMetrics];
  }
}

- (void)_setContentBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  p_contentBounds = &self->__contentBounds;
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    p_contentBounds->origin.x = x;
    p_contentBounds->origin.y = y;
    p_contentBounds->size.width = width;
    p_contentBounds->size.height = height;

    [(PUAccessoryTileViewController *)self _invalidateMasterContentOffset];
  }
}

- (void)_setContentView:(id)view
{
  viewCopy = view;
  if (self->__contentView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(&self->__contentView, view);
    layer = [(UIView *)self->__contentView layer];
    [layer setAllowsGroupOpacity:0];

    [(PUAccessoryTileViewController *)self _invalidateContentViewMetrics];
    [(PUAccessoryTileViewController *)self _invalidateContentBounds];
    viewCopy = v7;
  }
}

- (void)_setLoadedContentViewController:(id)controller
{
  v30 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (self->__loadedContentViewController != controllerCopy)
  {
    if ([(PUTileViewController *)self isViewLoaded])
    {
      view = [(PUTileViewController *)self view];
    }

    else
    {
      view = 0;
    }

    loadedContentViewController = self->__loadedContentViewController;
    if (loadedContentViewController)
    {
      view2 = [(PUAccessoryContentViewController *)loadedContentViewController view];
      superview = [view2 superview];

      if (superview == view)
      {
        [(PUAccessoryContentViewController *)self->__loadedContentViewController willMoveToParentViewController:0];
        view3 = [(PUAccessoryContentViewController *)self->__loadedContentViewController view];
        [view3 removeFromSuperview];

        [(PUAccessoryContentViewController *)self->__loadedContentViewController removeFromParentViewController];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE080] object:0];

        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
      }
    }

    objc_storeStrong(&self->__loadedContentViewController, controller);
    if (self->__loadedContentViewController)
    {
      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter4 addObserver:self selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];

      delegate = [(PUAccessoryTileViewController *)self delegate];
      v17 = [delegate accessoryTileViewControllerHostViewController:self];

      if (v17 && [v17 isViewLoaded] && (objc_msgSend(v17, "view"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(view, "isDescendantOfView:", v18), v18, (v19 & 1) != 0))
      {
        [v17 addChildViewController:self->__loadedContentViewController];
        view4 = [(PUAccessoryContentViewController *)self->__loadedContentViewController view];
        if (!view)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PUAccessoryTileViewController.m" lineNumber:190 description:@"missing container view"];
        }

        [view addSubview:view4];
        layer = [view layer];
        [layer setAllowsGroupOpacity:0];

        [(PUAccessoryContentViewController *)self->__loadedContentViewController didMoveToParentViewController:v17];
      }

      else
      {
        v22 = PLUIGetLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138412802;
          selfCopy = self;
          v26 = 2112;
          v27 = v17;
          v28 = 2112;
          v29 = view;
          _os_log_impl(&dword_1B36F3000, v22, OS_LOG_TYPE_DEFAULT, "%@: hostViewController %@ doesn't contain containerView %@", &v24, 0x20u);
        }

        view4 = 0;
      }
    }

    else
    {
      view4 = 0;
    }

    [(PUAccessoryTileViewController *)self _setContentView:view4];
  }
}

- (void)_setContentViewController:(id)controller
{
  controllerCopy = controller;
  contentViewController = self->__contentViewController;
  if (contentViewController != controllerCopy)
  {
    v8 = controllerCopy;
    accessoryContentViewControllerDelegate = [(PUAccessoryContentViewController *)contentViewController accessoryContentViewControllerDelegate];

    if (accessoryContentViewControllerDelegate == self)
    {
      [(PUAccessoryContentViewController *)self->__contentViewController setAccessoryContentViewControllerDelegate:0];
    }

    objc_storeStrong(&self->__contentViewController, controller);
    [(PUAccessoryContentViewController *)self->__contentViewController setAccessoryContentViewControllerDelegate:self];
    contentViewController = [(PUAccessoryTileViewController *)self _invalidateLoadedContentViewController];
    controllerCopy = v8;
  }

  MEMORY[0x1EEE66BB8](contentViewController, controllerCopy);
}

- (BOOL)isLocationFromProviderInContentArea:(id)area
{
  areaCopy = area;
  _contentView = [(PUAccessoryTileViewController *)self _contentView];
  if (_contentView)
  {
    [areaCopy locationInView:_contentView];
    v7 = v6;
    v9 = v8;
    _loadedContentViewController = [(PUAccessoryTileViewController *)self _loadedContentViewController];
    v11 = [_loadedContentViewController contentAreaContainsPoint:_contentView inCoordinateSpace:{v7, v9}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)didChangeActive
{
  v3.receiver = self;
  v3.super_class = PUAccessoryTileViewController;
  [(PUTileController *)&v3 didChangeActive];
  [(PUAccessoryTileViewController *)self _invalidateMasterContentOffset];
}

- (void)setAssetReference:(id)reference
{
  referenceCopy = reference;
  if (self->_assetReference != referenceCopy)
  {
    v6 = referenceCopy;
    objc_storeStrong(&self->_assetReference, reference);
    [(PUAccessoryTileViewController *)self _invalidateContentViewController];
    referenceCopy = v6;
  }
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  if (self->_assetViewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAccessoryTileViewController *)self _invalidateMasterContentOffset];
    modelCopy = v6;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToViewHostingGestureRecognizers = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillHideToolbarWhenShowingAccessoryView = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToWillHideNavigationBarWhenShowingAccessoryView = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToShouldUseSquareImageWhenShowingAccessoryView = objc_opt_respondsToSelector() & 1;
  }
}

- (void)applyLayoutInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = PUAccessoryTileViewController;
  [(PUTileViewController *)&v8 applyLayoutInfo:infoCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__PUAccessoryTileViewController_applyLayoutInfo___block_invoke;
  v6[3] = &unk_1E7B80C38;
  v6[4] = self;
  v7 = infoCopy;
  v5 = infoCopy;
  [(PUAccessoryTileViewController *)self _performChanges:v6];
}

uint64_t __49__PUAccessoryTileViewController_applyLayoutInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) untransformedContentFrame];
  [v2 _setUntransformedMasterContentFrame:?];
  v3 = *(a1 + 32);
  [*(a1 + 40) contentInsets];
  [v3 _setContentInsets:?];
  v4 = *(a1 + 32);
  [*(a1 + 40) minimumVisibleHeight];

  return [v4 _setMinimumVisibleHeight:?];
}

- (void)becomeReusable
{
  v4.receiver = self;
  v4.super_class = PUAccessoryTileViewController;
  [(PUTileViewController *)&v4 becomeReusable];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__PUAccessoryTileViewController_becomeReusable__block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUAccessoryTileViewController *)self _performChanges:v3];
}

uint64_t __47__PUAccessoryTileViewController_becomeReusable__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setEditorHeightDelta:0.0];
  [*(a1 + 32) setDelegate:0];
  [*(a1 + 32) setAssetViewModel:0];
  v2 = *(a1 + 32);

  return [v2 setAssetReference:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUAccessoryTileViewController;
  [(PUTileViewController *)&v3 viewDidLoad];
  [(PUAccessoryTileViewController *)self _invalidateLoadedContentViewController];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = PUAccessoryTileViewController;
  [(PUTileViewController *)&v4 dealloc];
}

- (PUAccessoryTileViewController)initWithReuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = PUAccessoryTileViewController;
  result = [(PUTileViewController *)&v5 initWithReuseIdentifier:identifier];
  if (result)
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->__keyboardFrame.origin = *MEMORY[0x1E695F050];
    result->__keyboardFrame.size = v4;
  }

  return result;
}

@end