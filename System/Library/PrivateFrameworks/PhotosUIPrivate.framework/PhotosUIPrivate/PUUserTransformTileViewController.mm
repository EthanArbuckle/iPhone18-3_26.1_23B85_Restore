@interface PUUserTransformTileViewController
- (BOOL)_shouldPreventScaledOffsetAdjustments;
- (BOOL)isZoomedIn;
- (BOOL)pointInsideContentView:(CGPoint)view inCoordinateSpace:(id)space;
- (BOOL)userTransformView:(id)view shouldReceiveTouchAtPoint:(CGPoint)point;
- (CGPoint)offsetWhileApplyingInsets;
- (PUUserTransformTileLayoutInfo)userTransformTileLayoutInfo;
- (PUUserTransformTileViewController)initWithReuseIdentifier:(id)identifier;
- (PUUserTransformTileViewControllerDelegate)delegate;
- (id)_userInputOriginIdentifier;
- (id)loadView;
- (int64_t)_insetModeForItemAtIndexPath:(id)path;
- (void)_handleAssetViewModelChange:(id)change;
- (void)_handleBrowsingViewModelChange:(id)change;
- (void)_setMinimumScaleWhileApplyingInsets:(double)insets animated:(BOOL)animated;
- (void)_updateAssetViewModelIsZoomedIn;
- (void)_updateAssetViewModelProperties;
- (void)_updateDisplayTileTransform;
- (void)_updateInteractionHostViewRegistration;
- (void)_updateMinimumZoomScale:(BOOL)scale;
- (void)_updateUserInteractionEnabled;
- (void)_updateUserTransformOffset:(BOOL)offset;
- (void)_updateUserTransformPadding;
- (void)_updateUserTransformView:(id)view;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)dealloc;
- (void)didChangeAnimating;
- (void)didChangeIsOnPrimaryDisplay;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)setDelegate:(id)delegate;
- (void)setDisplayTileTransform:(id)transform;
- (void)setOffsetWhileApplyingInsets:(CGPoint)insets;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)userTransformViewDidChangeIsZoomedIn:(id)in;
- (void)viewModel:(id)model didChange:(id)change;
- (void)zoomInOnLocationFromProvider:(id)provider;
- (void)zoomOutAnimated:(BOOL)animated;
@end

@implementation PUUserTransformTileViewController

- (CGPoint)offsetWhileApplyingInsets
{
  x = self->_offsetWhileApplyingInsets.x;
  y = self->_offsetWhileApplyingInsets.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PUUserTransformTileViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userTransformViewDidChangeIsZoomedIn:(id)in
{
  [(PUUserTransformTileViewController *)self _updateUserTransformOffset:1];

  [(PUUserTransformTileViewController *)self _updateAssetViewModelIsZoomedIn];
}

- (BOOL)userTransformView:(id)view shouldReceiveTouchAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v8 = [[PUPointDisplayLocationProvider alloc] initWithPoint:viewCopy inCoordinateSpace:x, y];

  if (self->_delegateRespondsTo.shouldReceiveTouchAtLocationFromProvider)
  {
    delegate = [(PUUserTransformTileViewController *)self delegate];
    v10 = [delegate userTransformTileViewController:self shouldReceiveTouchAtLocationFromProvider:v8];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  assetViewModel = [(PUUserTransformTileViewController *)self assetViewModel];

  if (assetViewModel == modelCopy)
  {
    [(PUUserTransformTileViewController *)self _handleAssetViewModelChange:changeCopy];
  }

  else
  {
    browsingViewModel = [(PUUserTransformTileViewController *)self browsingViewModel];

    if (browsingViewModel == modelCopy)
    {
      [(PUUserTransformTileViewController *)self _handleBrowsingViewModelChange:changeCopy];
    }
  }
}

- (BOOL)_shouldPreventScaledOffsetAdjustments
{
  if (!self->_delegateRespondsTo.shouldPreventScaledOffsetAdjustments)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PUUserTransformTileViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate userTransformTileViewControllerShouldPreventScaledOffsetAdjustments:selfCopy];

  return selfCopy;
}

- (int64_t)_insetModeForItemAtIndexPath:(id)path
{
  if (!self->_delegateRespondsTo.insetModeForItemAtIndexPath)
  {
    return 0;
  }

  pathCopy = path;
  delegate = [(PUUserTransformTileViewController *)self delegate];
  v6 = [delegate userTransformTileViewController:self insetModeForItemAtIndexPath:pathCopy];

  return v6;
}

- (void)_updateAssetViewModelProperties
{
  if ([(PUTileController *)self isActive])
  {
    assetViewModel = [(PUUserTransformTileViewController *)self assetViewModel];
    displayTileTransform = [(PUUserTransformTileViewController *)self displayTileTransform];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PUUserTransformTileViewController__updateAssetViewModelProperties__block_invoke;
    v7[3] = &unk_1E7B809F0;
    v7[4] = self;
    v8 = assetViewModel;
    v9 = displayTileTransform;
    v5 = displayTileTransform;
    v6 = assetViewModel;
    [v6 performChanges:v7];
  }
}

void __68__PUUserTransformTileViewController__updateAssetViewModelProperties__block_invoke(id *a1)
{
  [a1[4] _updateAssetViewModelIsZoomedIn];
  v2 = [a1[4] userTransformView];
  [a1[5] setUserTransformingTile:{objc_msgSend(v2, "isUserInteracting")}];

  v3 = [a1[6] modelTileTransform];
  [a1[5] setModelTileTransform:v3];
}

- (void)_updateAssetViewModelIsZoomedIn
{
  if ([(PUTileController *)self isActive])
  {
    assetViewModel = [(PUUserTransformTileViewController *)self assetViewModel];
    userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
    hasUserZoomedIn = [userTransformView hasUserZoomedIn];

    if (hasUserZoomedIn != [assetViewModel isZoomedIn])
    {
      if (hasUserZoomedIn)
      {
        v6 = v12;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v7 = __68__PUUserTransformTileViewController__updateAssetViewModelIsZoomedIn__block_invoke;
LABEL_7:
        v6[2] = v7;
        v6[3] = &unk_1E7B80DD0;
        v10 = assetViewModel;
        v6[4] = v10;
        [v10 performChanges:v6];

        goto LABEL_8;
      }

      userTransformView2 = [(PUUserTransformTileViewController *)self userTransformView];
      isTrackingZoomGesture = [userTransformView2 isTrackingZoomGesture];

      if ((isTrackingZoomGesture & 1) == 0)
      {
        v6 = v11;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v7 = __68__PUUserTransformTileViewController__updateAssetViewModelIsZoomedIn__block_invoke_2;
        goto LABEL_7;
      }
    }

LABEL_8:
  }
}

- (BOOL)isZoomedIn
{
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  hasUserZoomedIn = [userTransformView hasUserZoomedIn];

  return hasUserZoomedIn;
}

- (void)zoomOutAnimated:(BOOL)animated
{
  animatedCopy = animated;
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  [userTransformView zoomOut:animatedCopy];
}

- (void)zoomInOnLocationFromProvider:(id)provider
{
  providerCopy = provider;
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  [userTransformView zoomInOnLocationFromProvider:providerCopy];
}

- (void)_updateInteractionHostViewRegistration
{
  if ([(PUTileViewController *)self isOnPrimaryDisplay])
  {
    assetViewModel = [(PUUserTransformTileViewController *)self assetViewModel];
    interactionHostView = [(PUUserTransformTileViewController *)self interactionHostView];
    [assetViewModel registerView:interactionHostView forImageAnalysisInteractionHostMode:1];
  }
}

- (id)_userInputOriginIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  _identifier = [(PUUserTransformTileViewController *)self _identifier];
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  [userTransformView bounds];
  v12.width = v6;
  v12.height = v7;
  v8 = NSStringFromCGSize(v12);
  v9 = [v3 stringWithFormat:@"%@ size=%@", _identifier, v8];

  return v9;
}

- (void)_updateUserInteractionEnabled
{
  v3 = ![(PUTileController *)self isAnimating]&& [(PUUserTransformTileViewController *)self userInteractionEnabled];
  view = [(PUTileViewController *)self view];
  [view setUserInteractionEnabled:v3];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  if (self->_userInteractionEnabled != enabled)
  {
    self->_userInteractionEnabled = enabled;
    [(PUUserTransformTileViewController *)self _updateUserInteractionEnabled];
  }
}

- (BOOL)pointInsideContentView:(CGPoint)view inCoordinateSpace:(id)space
{
  y = view.y;
  x = view.x;
  spaceCopy = space;
  v8 = [[PUPointDisplayLocationProvider alloc] initWithPoint:spaceCopy inCoordinateSpace:x, y];

  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  LOBYTE(spaceCopy) = [userTransformView contentContainsLocationFromProvider:v8];

  return spaceCopy;
}

- (void)didChangeIsOnPrimaryDisplay
{
  v3.receiver = self;
  v3.super_class = PUUserTransformTileViewController;
  [(PUTileViewController *)&v3 didChangeIsOnPrimaryDisplay];
  [(PUUserTransformTileViewController *)self _updateInteractionHostViewRegistration];
}

- (void)didChangeAnimating
{
  v3.receiver = self;
  v3.super_class = PUUserTransformTileViewController;
  [(PUTileController *)&v3 didChangeAnimating];
  [(PUUserTransformTileViewController *)self _updateUserInteractionEnabled];
}

- (void)_updateUserTransformPadding
{
  displayTileTransform = [(PUUserTransformTileViewController *)self displayTileTransform];
  [displayTileTransform transformPadding];
  v4 = v3;
  v6 = v5;
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  [userTransformView setScrollPadding:{v4, v6}];
}

- (void)_updateUserTransformOffset:(BOOL)offset
{
  offsetCopy = offset;
  if (![(PUUserTransformTileViewController *)self _shouldPreventScaledOffsetAdjustments])
  {
    userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
    browsingViewModel = [(PUUserTransformTileViewController *)self browsingViewModel];
    hasUserZoomedIn = [userTransformView hasUserZoomedIn];
    if (browsingViewModel)
    {
      isChromeVisible = [browsingViewModel isChromeVisible];
    }

    else
    {
      isChromeVisible = 0;
    }

    if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled] && hasUserZoomedIn != 1 && isChromeVisible)
    {
      [(PUUserTransformTileViewController *)self offsetWhileApplyingInsets];
    }

    else
    {
      v8 = *MEMORY[0x1E695EFF8];
      v9 = *(MEMORY[0x1E695EFF8] + 8);
    }

    [userTransformView setOffset:offsetCopy animated:{v8, v9}];
  }
}

- (void)_updateUserTransformView:(id)view
{
  viewCopy = view;
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  if (viewCopy && userTransformView)
  {
    [viewCopy contentPixelSize];
    v6 = v5;
    v8 = v7;
    [viewCopy untransformedContentFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    displayTileTransform = [(PUUserTransformTileViewController *)self displayTileTransform];
    assetViewModel = [(PUUserTransformTileViewController *)self assetViewModel];
    asset = [assetViewModel asset];
    needsSensitivityProtection = [asset needsSensitivityProtection];

    if (needsSensitivityProtection)
    {
      v21 = 0;
    }

    else if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
    {
      assetViewModel2 = [(PUUserTransformTileViewController *)self assetViewModel];
      if ([assetViewModel2 isAccessoryViewVisible])
      {
        assetViewModel3 = [(PUUserTransformTileViewController *)self assetViewModel];
        [assetViewModel3 contentOffsetForAccessoryFullyVisible];
        if (v25 == *(MEMORY[0x1E695EFF8] + 8) && v24 == *MEMORY[0x1E695EFF8])
        {
          v21 = 7;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 7;
      }

      mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
      [userTransformView setPreferToFillOnDoubleTap:{objc_msgSend(mEMORY[0x1E69C3640], "doubleTapFillsScreen")}];
    }

    else if ([displayTileTransform hasUserInput])
    {
      v21 = 7;
    }

    else
    {
      v21 = 2;
    }

    [userTransformView setContentPixelSize:{v6, v8}];
    [userTransformView setUntransformedContentFrame:{v10, v12, v14, v16}];
    [userTransformView setEnabledInteractions:v21];
    [(PUUserTransformTileViewController *)self _updateUserTransformOffset:0];
  }
}

- (PUUserTransformTileLayoutInfo)userTransformTileLayoutInfo
{
  layoutInfo = [(PUTileController *)self layoutInfo];
  if (layoutInfo)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      px_descriptionForAssertionMessage = [layoutInfo px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformTileViewController.m" lineNumber:277 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.layoutInfo", v8, px_descriptionForAssertionMessage}];
    }
  }

  return layoutInfo;
}

- (void)_updateMinimumZoomScale:(BOOL)scale
{
  scaleCopy = scale;
  browsingViewModel = [(PUUserTransformTileViewController *)self browsingViewModel];
  v6 = 1.0;
  if (browsingViewModel)
  {
    v7 = browsingViewModel;
    browsingViewModel2 = [(PUUserTransformTileViewController *)self browsingViewModel];
    isPresentedForPreview = [browsingViewModel2 isPresentedForPreview];

    if ((isPresentedForPreview & 1) == 0)
    {
      browsingViewModel3 = [(PUUserTransformTileViewController *)self browsingViewModel];
      isChromeVisible = [browsingViewModel3 isChromeVisible];

      if ((isChromeVisible & 1) != 0 || (-[PUUserTransformTileViewController browsingViewModel](self, "browsingViewModel"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 lastChromeVisibilityChangeReason], v12, v13 == 2))
      {
        [(PUUserTransformTileViewController *)self minimumScaleWhileApplyingInsets];
        v6 = v14;
      }
    }
  }

  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  [userTransformView setMinimumZoomScale:scaleCopy animated:v6];
}

- (void)_updateDisplayTileTransform
{
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  assetViewModel = [(PUUserTransformTileViewController *)self assetViewModel];
  modelTileTransform = [assetViewModel modelTileTransform];

  userTransformTileLayoutInfo = [(PUUserTransformTileViewController *)self userTransformTileLayoutInfo];
  [userTransformTileLayoutInfo untransformedContentFrame];
  v8 = v7;
  v10 = v9;
  view = [(PUTileViewController *)self view];
  [view bounds];
  v13 = v12;
  v15 = v14;
  assetViewModel2 = [(PUUserTransformTileViewController *)self assetViewModel];
  secondDisplayTileTransform = [assetViewModel2 secondDisplayTileTransform];
  v18 = [PUDisplayTileTransform displayTileTransformWithModelTileTransform:modelTileTransform initialScale:secondDisplayTileTransform initialSize:1.0 displaySize:v8 secondaryDisplayTileTransform:v10, v13, v15];

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (userTransformView)
  {
    [userTransformView userAffineTransform];
  }

  _userInputOriginIdentifier = [(PUUserTransformTileViewController *)self _userInputOriginIdentifier];
  hasUserZoomedIn = [userTransformView hasUserZoomedIn];
  v22[0] = v23;
  v22[1] = v24;
  v22[2] = v25;
  v21 = [v18 newDisplayTileTransformWithUserAffineTransform:v22 userInputOriginIdentifier:_userInputOriginIdentifier isZoomedOut:hasUserZoomedIn ^ 1u];
  [(PUUserTransformTileViewController *)self setDisplayTileTransform:v21];
}

- (void)_handleBrowsingViewModelChange:(id)change
{
  if ([change chromeVisibilityDidChange] && !-[PUUserTransformTileViewController _shouldPreventScaledOffsetAdjustments](self, "_shouldPreventScaledOffsetAdjustments"))
  {
    [(PUUserTransformTileViewController *)self _updateMinimumZoomScale:1];

    [(PUUserTransformTileViewController *)self _updateUserTransformOffset:1];
  }
}

- (void)_setMinimumScaleWhileApplyingInsets:(double)insets animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_minimumScaleWhileApplyingInsets = insets;

    [(PUUserTransformTileViewController *)self _updateMinimumZoomScale:animatedCopy];
  }
}

- (void)setOffsetWhileApplyingInsets:(CGPoint)insets
{
  y = insets.y;
  x = insets.x;
  p_offsetWhileApplyingInsets = &self->_offsetWhileApplyingInsets;
  if ((PXPointApproximatelyEqualToPoint() & 1) == 0)
  {
    p_offsetWhileApplyingInsets->x = x;
    p_offsetWhileApplyingInsets->y = y;

    [(PUUserTransformTileViewController *)self _updateUserTransformOffset:0];
  }
}

- (void)setDisplayTileTransform:(id)transform
{
  transformCopy = transform;
  if (self->_displayTileTransform != transformCopy)
  {
    v6 = transformCopy;
    objc_storeStrong(&self->_displayTileTransform, transform);
    [(PUUserTransformTileViewController *)self _updateAssetViewModelProperties];
    transformCopy = v6;
  }
}

- (void)_handleAssetViewModelChange:(id)change
{
  changeCopy = change;
  if ([changeCopy accessoryViewVisibilityChanged])
  {
    assetViewModel = [(PUUserTransformTileViewController *)self assetViewModel];
    isAccessoryViewVisible = [assetViewModel isAccessoryViewVisible];

    if (isAccessoryViewVisible)
    {
      userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
      [userTransformView zoomOut:0];
    }
  }

  if ([changeCopy accessoryViewVisibilityChanged])
  {
    userTransformTileLayoutInfo = [(PUUserTransformTileViewController *)self userTransformTileLayoutInfo];
    [(PUUserTransformTileViewController *)self _updateUserTransformView:userTransformTileLayoutInfo];
  }

  if ([changeCopy isZoomedInChanged])
  {
    [(PUUserTransformTileViewController *)self _updateUserTransformOffset:1];
  }

  if ([changeCopy isFullyOutOfFocusChanged])
  {
    assetViewModel2 = [(PUUserTransformTileViewController *)self assetViewModel];
    isFullyOutOfFocus = [assetViewModel2 isFullyOutOfFocus];

    if (isFullyOutOfFocus)
    {
      userTransformView2 = [(PUUserTransformTileViewController *)self userTransformView];
      [userTransformView2 zoomOut:0];
    }
  }
}

- (void)applyLayoutInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformTileViewController.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"[layoutInfo isKindOfClass:[PUUserTransformTileLayoutInfo class]]"}];
  }

  v45.receiver = self;
  v45.super_class = PUUserTransformTileViewController;
  [(PUTileViewController *)&v45 applyLayoutInfo:infoCopy];
  [(PUUserTransformTileViewController *)self _updateUserTransformView:infoCopy];
  [(PUUserTransformTileViewController *)self _updateUserTransformPadding];
  [(PUUserTransformTileViewController *)self _updateDisplayTileTransform];
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];
  [userTransformView layoutIfNeeded];

  if (![(PUUserTransformTileViewController *)self _shouldPreventScaledOffsetAdjustments])
  {
    indexPath = [infoCopy indexPath];
    v8 = [(PUUserTransformTileViewController *)self _insetModeForItemAtIndexPath:indexPath];

    if (v8 == 2)
    {
      [infoCopy untransformedContentFrame];
      [infoCopy chromeInsets];
      if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
      {
        mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
        insetAllContent = [mEMORY[0x1E69C3640] insetAllContent];

        if (insetAllContent)
        {
          mEMORY[0x1E69C3640]2 = [MEMORY[0x1E69C3640] sharedInstance];
          [mEMORY[0x1E69C3640]2 minimumMarginForInsetContent];
          PXEdgeInsetsMaxEachEdge();
        }
      }

      [infoCopy size];
      v39 = *(MEMORY[0x1E695EFF8] + 8);
      v40 = *MEMORY[0x1E695EFF8];
      PXRectWithOriginAndSize();
      PXEdgeInsetsInsetRect();
      rect = v12;
      v41 = v13;
      v15 = v14;
      v17 = v16;
      PXSizeGetAspectRatio();
      PFSizeWithAspectRatioFittingSize();
      PXRectGetCenter();
      PXRectWithCenterAndSize();
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      MinX = CGRectGetMinX(v46);
      v47.origin.x = rect;
      v47.origin.y = v41;
      v42 = v15;
      v43 = v17;
      v47.size.width = v15;
      v47.size.height = v17;
      if (MinX >= CGRectGetMinX(v47))
      {
        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        MaxX = CGRectGetMaxX(v49);
        v50.size.height = v17;
        v50.origin.x = rect;
        v50.origin.y = v41;
        v50.size.width = v15;
        if (MaxX <= CGRectGetMaxX(v50))
        {
          v23 = y;
          v24 = height;
          v25 = width;
        }

        else
        {
          v51.size.height = v17;
          v51.origin.x = rect;
          v51.origin.y = v41;
          v51.size.width = v15;
          v38 = CGRectGetMaxX(v51);
          v52.origin.x = x;
          v23 = y;
          v52.origin.y = y;
          v25 = width;
          v52.size.width = width;
          v24 = height;
          v52.size.height = height;
          x = v38 - CGRectGetWidth(v52);
        }
      }

      else
      {
        v23 = y;
        v24 = height;
        v25 = width;
        v48.size.height = v43;
        v48.origin.x = rect;
        v48.origin.y = v41;
        v48.size.width = v42;
        x = CGRectGetMinX(v48);
      }

      v53.origin.x = x;
      v53.origin.y = v23;
      v30 = v25;
      v53.size.width = v25;
      v53.size.height = v24;
      MinY = CGRectGetMinY(v53);
      v54.size.height = v43;
      v54.origin.x = rect;
      v54.origin.y = v41;
      v54.size.width = v42;
      if (MinY >= CGRectGetMinY(v54))
      {
        v56.origin.x = x;
        v56.origin.y = v23;
        v56.size.width = v30;
        v56.size.height = v24;
        MaxY = CGRectGetMaxY(v56);
        v57.size.height = v43;
        v57.origin.x = rect;
        v57.origin.y = v41;
        v57.size.width = v42;
        if (MaxY > CGRectGetMaxY(v57))
        {
          v58.size.height = v43;
          v58.origin.x = rect;
          v58.origin.y = v41;
          v58.size.width = v42;
          CGRectGetMaxY(v58);
          v59.origin.x = x;
          v59.origin.y = v23;
          v59.size.width = v30;
          v59.size.height = v24;
          CGRectGetHeight(v59);
        }
      }

      else
      {
        v55.size.height = v43;
        v55.origin.x = rect;
        v55.origin.y = v41;
        v55.size.width = v42;
        CGRectGetMinY(v55);
      }

      if (PXSizeIsEmpty() & 1) != 0 || (PXSizeIsEmpty())
      {
        [(PUUserTransformTileViewController *)self setMinimumScaleWhileApplyingInsets:1.0];
        selfCopy2 = self;
        v27 = v39;
        v26 = v40;
        goto LABEL_22;
      }

      PXAffineTransformMakeFromRects();
      PXAffineTransformGetUniformScale();
      v34 = v33;
      if (self->_delegateRespondsTo.shouldAnimateMinimumScaleWhileApplyingInsets)
      {
        delegate = [(PUUserTransformTileViewController *)self delegate];
        v36 = [delegate userTransformTileViewControllerShouldAnimateMinimumScaleWhileApplyingInsets:self];
      }

      else
      {
        v36 = 0;
      }

      [(PUUserTransformTileViewController *)self _setMinimumScaleWhileApplyingInsets:v36 animated:v34];
      PXRectGetCenter();
      PXRectGetCenter();
      PXPointSubtract();
    }

    else
    {
      [(PUUserTransformTileViewController *)self setMinimumScaleWhileApplyingInsets:1.0];
      v26 = *MEMORY[0x1E695EFF8];
      v27 = *(MEMORY[0x1E695EFF8] + 8);
    }

    selfCopy2 = self;
LABEL_22:
    [(PUUserTransformTileViewController *)selfCopy2 setOffsetWhileApplyingInsets:v26, v27];
  }
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    v13 = modelCopy;
    interactionHostView = [(PUUserTransformTileViewController *)self interactionHostView];
    [(PUAssetViewModel *)assetViewModel unregisterView:interactionHostView forImageAnalysisInteractionHostMode:1];

    [(PUAssetViewModel *)self->_assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    v8 = [objc_opt_class() description];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v11 = [v8 stringByAppendingString:uUIDString];

    [(PUUserTransformTileViewController *)self _setIdentifier:v11];
    [(PUUserTransformTileViewController *)self zoomOutAnimated:0];
    [(PUUserTransformTileViewController *)self setDisplayTileTransform:0];
    userTransformTileLayoutInfo = [(PUUserTransformTileViewController *)self userTransformTileLayoutInfo];
    [(PUUserTransformTileViewController *)self _updateUserTransformView:userTransformTileLayoutInfo];

    [(PUUserTransformTileViewController *)self _updateInteractionHostViewRegistration];
    modelCopy = v13;
  }
}

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, model);
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    [(PUUserTransformTileViewController *)self _updateMinimumZoomScale:0];
    browsingViewModel = [(PUUserTransformTileViewController *)self _updateUserTransformOffset:0];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, modelCopy);
}

- (id)loadView
{
  userTransformView = [(PUUserTransformTileViewController *)self userTransformView];

  if (userTransformView)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUUserTransformTileViewController.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"[self userTransformView] == nil"}];
  }

  v5 = [[PUUserTransformView alloc] initWithFrame:0.0, 0.0, 10.0, 10.0];
  [(PUUserTransformView *)v5 setDelegate:self];
  [(PUUserTransformTileViewController *)self _setUserTransformView:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  interactionHostView = self->_interactionHostView;
  self->_interactionHostView = v6;

  [(UIView *)self->_interactionHostView setClipsToBounds:1];
  [(PUUserTransformView *)v5 setHostedView:self->_interactionHostView];
  userTransformTileLayoutInfo = [(PUUserTransformTileViewController *)self userTransformTileLayoutInfo];
  [(PUUserTransformTileViewController *)self _updateUserTransformView:userTransformTileLayoutInfo];

  [(PUUserTransformTileViewController *)self _updateMinimumZoomScale:0];
  [(PUUserTransformTileViewController *)self _updateInteractionHostViewRegistration];

  return v5;
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUUserTransformTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUUserTransformTileViewController *)self setBrowsingViewModel:0];
  [(PUUserTransformTileViewController *)self setAssetViewModel:0];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->didChangeIsUserInteracting = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->shouldReceiveTouchAtLocationFromProvider = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->shouldAnimateMinimumScaleWhileApplyingInsets = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->insetModeForItemAtIndexPath = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->shouldPreventScaledOffsetAdjustments = objc_opt_respondsToSelector() & 1;
  }
}

- (void)dealloc
{
  delegate = [(PUUserTransformView *)self->_userTransformView delegate];

  if (delegate == self)
  {
    [(PUUserTransformView *)self->_userTransformView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = PUUserTransformTileViewController;
  [(PUTileViewController *)&v4 dealloc];
}

- (PUUserTransformTileViewController)initWithReuseIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = PUUserTransformTileViewController;
  result = [(PUTileViewController *)&v4 initWithReuseIdentifier:identifier];
  if (result)
  {
    result->_userInteractionEnabled = 1;
    result->_minimumScaleWhileApplyingInsets = 1.0;
  }

  return result;
}

@end