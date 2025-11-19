@interface PUUserTransformTileViewController
- (BOOL)_shouldPreventScaledOffsetAdjustments;
- (BOOL)isZoomedIn;
- (BOOL)pointInsideContentView:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (BOOL)userTransformView:(id)a3 shouldReceiveTouchAtPoint:(CGPoint)a4;
- (CGPoint)offsetWhileApplyingInsets;
- (PUUserTransformTileLayoutInfo)userTransformTileLayoutInfo;
- (PUUserTransformTileViewController)initWithReuseIdentifier:(id)a3;
- (PUUserTransformTileViewControllerDelegate)delegate;
- (id)_userInputOriginIdentifier;
- (id)loadView;
- (int64_t)_insetModeForItemAtIndexPath:(id)a3;
- (void)_handleAssetViewModelChange:(id)a3;
- (void)_handleBrowsingViewModelChange:(id)a3;
- (void)_setMinimumScaleWhileApplyingInsets:(double)a3 animated:(BOOL)a4;
- (void)_updateAssetViewModelIsZoomedIn;
- (void)_updateAssetViewModelProperties;
- (void)_updateDisplayTileTransform;
- (void)_updateInteractionHostViewRegistration;
- (void)_updateMinimumZoomScale:(BOOL)a3;
- (void)_updateUserInteractionEnabled;
- (void)_updateUserTransformOffset:(BOOL)a3;
- (void)_updateUserTransformPadding;
- (void)_updateUserTransformView:(id)a3;
- (void)applyLayoutInfo:(id)a3;
- (void)becomeReusable;
- (void)dealloc;
- (void)didChangeAnimating;
- (void)didChangeIsOnPrimaryDisplay;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDisplayTileTransform:(id)a3;
- (void)setOffsetWhileApplyingInsets:(CGPoint)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)userTransformViewDidChangeIsZoomedIn:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
- (void)zoomInOnLocationFromProvider:(id)a3;
- (void)zoomOutAnimated:(BOOL)a3;
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

- (void)userTransformViewDidChangeIsZoomedIn:(id)a3
{
  [(PUUserTransformTileViewController *)self _updateUserTransformOffset:1];

  [(PUUserTransformTileViewController *)self _updateAssetViewModelIsZoomedIn];
}

- (BOOL)userTransformView:(id)a3 shouldReceiveTouchAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [[PUPointDisplayLocationProvider alloc] initWithPoint:v7 inCoordinateSpace:x, y];

  if (self->_delegateRespondsTo.shouldReceiveTouchAtLocationFromProvider)
  {
    v9 = [(PUUserTransformTileViewController *)self delegate];
    v10 = [v9 userTransformTileViewController:self shouldReceiveTouchAtLocationFromProvider:v8];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PUUserTransformTileViewController *)self assetViewModel];

  if (v7 == v9)
  {
    [(PUUserTransformTileViewController *)self _handleAssetViewModelChange:v6];
  }

  else
  {
    v8 = [(PUUserTransformTileViewController *)self browsingViewModel];

    if (v8 == v9)
    {
      [(PUUserTransformTileViewController *)self _handleBrowsingViewModelChange:v6];
    }
  }
}

- (BOOL)_shouldPreventScaledOffsetAdjustments
{
  if (!self->_delegateRespondsTo.shouldPreventScaledOffsetAdjustments)
  {
    return 0;
  }

  v2 = self;
  v3 = [(PUUserTransformTileViewController *)self delegate];
  LOBYTE(v2) = [v3 userTransformTileViewControllerShouldPreventScaledOffsetAdjustments:v2];

  return v2;
}

- (int64_t)_insetModeForItemAtIndexPath:(id)a3
{
  if (!self->_delegateRespondsTo.insetModeForItemAtIndexPath)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(PUUserTransformTileViewController *)self delegate];
  v6 = [v5 userTransformTileViewController:self insetModeForItemAtIndexPath:v4];

  return v6;
}

- (void)_updateAssetViewModelProperties
{
  if ([(PUTileController *)self isActive])
  {
    v3 = [(PUUserTransformTileViewController *)self assetViewModel];
    v4 = [(PUUserTransformTileViewController *)self displayTileTransform];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PUUserTransformTileViewController__updateAssetViewModelProperties__block_invoke;
    v7[3] = &unk_1E7B809F0;
    v7[4] = self;
    v8 = v3;
    v9 = v4;
    v5 = v4;
    v6 = v3;
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
    v3 = [(PUUserTransformTileViewController *)self assetViewModel];
    v4 = [(PUUserTransformTileViewController *)self userTransformView];
    v5 = [v4 hasUserZoomedIn];

    if (v5 != [v3 isZoomedIn])
    {
      if (v5)
      {
        v6 = v12;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v7 = __68__PUUserTransformTileViewController__updateAssetViewModelIsZoomedIn__block_invoke;
LABEL_7:
        v6[2] = v7;
        v6[3] = &unk_1E7B80DD0;
        v10 = v3;
        v6[4] = v10;
        [v10 performChanges:v6];

        goto LABEL_8;
      }

      v8 = [(PUUserTransformTileViewController *)self userTransformView];
      v9 = [v8 isTrackingZoomGesture];

      if ((v9 & 1) == 0)
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
  v2 = [(PUUserTransformTileViewController *)self userTransformView];
  v3 = [v2 hasUserZoomedIn];

  return v3;
}

- (void)zoomOutAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(PUUserTransformTileViewController *)self userTransformView];
  [v4 zoomOut:v3];
}

- (void)zoomInOnLocationFromProvider:(id)a3
{
  v4 = a3;
  v5 = [(PUUserTransformTileViewController *)self userTransformView];
  [v5 zoomInOnLocationFromProvider:v4];
}

- (void)_updateInteractionHostViewRegistration
{
  if ([(PUTileViewController *)self isOnPrimaryDisplay])
  {
    v4 = [(PUUserTransformTileViewController *)self assetViewModel];
    v3 = [(PUUserTransformTileViewController *)self interactionHostView];
    [v4 registerView:v3 forImageAnalysisInteractionHostMode:1];
  }
}

- (id)_userInputOriginIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PUUserTransformTileViewController *)self _identifier];
  v5 = [(PUUserTransformTileViewController *)self userTransformView];
  [v5 bounds];
  v12.width = v6;
  v12.height = v7;
  v8 = NSStringFromCGSize(v12);
  v9 = [v3 stringWithFormat:@"%@ size=%@", v4, v8];

  return v9;
}

- (void)_updateUserInteractionEnabled
{
  v3 = ![(PUTileController *)self isAnimating]&& [(PUUserTransformTileViewController *)self userInteractionEnabled];
  v4 = [(PUTileViewController *)self view];
  [v4 setUserInteractionEnabled:v3];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  if (self->_userInteractionEnabled != a3)
  {
    self->_userInteractionEnabled = a3;
    [(PUUserTransformTileViewController *)self _updateUserInteractionEnabled];
  }
}

- (BOOL)pointInsideContentView:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [[PUPointDisplayLocationProvider alloc] initWithPoint:v7 inCoordinateSpace:x, y];

  v9 = [(PUUserTransformTileViewController *)self userTransformView];
  LOBYTE(v7) = [v9 contentContainsLocationFromProvider:v8];

  return v7;
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
  v8 = [(PUUserTransformTileViewController *)self displayTileTransform];
  [v8 transformPadding];
  v4 = v3;
  v6 = v5;
  v7 = [(PUUserTransformTileViewController *)self userTransformView];
  [v7 setScrollPadding:{v4, v6}];
}

- (void)_updateUserTransformOffset:(BOOL)a3
{
  v3 = a3;
  if (![(PUUserTransformTileViewController *)self _shouldPreventScaledOffsetAdjustments])
  {
    v10 = [(PUUserTransformTileViewController *)self userTransformView];
    v5 = [(PUUserTransformTileViewController *)self browsingViewModel];
    v6 = [v10 hasUserZoomedIn];
    if (v5)
    {
      v7 = [v5 isChromeVisible];
    }

    else
    {
      v7 = 0;
    }

    if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled] && v6 != 1 && v7)
    {
      [(PUUserTransformTileViewController *)self offsetWhileApplyingInsets];
    }

    else
    {
      v8 = *MEMORY[0x1E695EFF8];
      v9 = *(MEMORY[0x1E695EFF8] + 8);
    }

    [v10 setOffset:v3 animated:{v8, v9}];
  }
}

- (void)_updateUserTransformView:(id)a3
{
  v28 = a3;
  v4 = [(PUUserTransformTileViewController *)self userTransformView];
  if (v28 && v4)
  {
    [v28 contentPixelSize];
    v6 = v5;
    v8 = v7;
    [v28 untransformedContentFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(PUUserTransformTileViewController *)self displayTileTransform];
    v18 = [(PUUserTransformTileViewController *)self assetViewModel];
    v19 = [v18 asset];
    v20 = [v19 needsSensitivityProtection];

    if (v20)
    {
      v21 = 0;
    }

    else if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
    {
      v22 = [(PUUserTransformTileViewController *)self assetViewModel];
      if ([v22 isAccessoryViewVisible])
      {
        v23 = [(PUUserTransformTileViewController *)self assetViewModel];
        [v23 contentOffsetForAccessoryFullyVisible];
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

      v27 = [MEMORY[0x1E69C3640] sharedInstance];
      [v4 setPreferToFillOnDoubleTap:{objc_msgSend(v27, "doubleTapFillsScreen")}];
    }

    else if ([v17 hasUserInput])
    {
      v21 = 7;
    }

    else
    {
      v21 = 2;
    }

    [v4 setContentPixelSize:{v6, v8}];
    [v4 setUntransformedContentFrame:{v10, v12, v14, v16}];
    [v4 setEnabledInteractions:v21];
    [(PUUserTransformTileViewController *)self _updateUserTransformOffset:0];
  }
}

- (PUUserTransformTileLayoutInfo)userTransformTileLayoutInfo
{
  v4 = [(PUTileController *)self layoutInfo];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v4 px_descriptionForAssertionMessage];
      [v6 handleFailureInMethod:a2 object:self file:@"PUUserTransformTileViewController.m" lineNumber:277 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"self.layoutInfo", v8, v9}];
    }
  }

  return v4;
}

- (void)_updateMinimumZoomScale:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUUserTransformTileViewController *)self browsingViewModel];
  v6 = 1.0;
  if (v5)
  {
    v7 = v5;
    v8 = [(PUUserTransformTileViewController *)self browsingViewModel];
    v9 = [v8 isPresentedForPreview];

    if ((v9 & 1) == 0)
    {
      v10 = [(PUUserTransformTileViewController *)self browsingViewModel];
      v11 = [v10 isChromeVisible];

      if ((v11 & 1) != 0 || (-[PUUserTransformTileViewController browsingViewModel](self, "browsingViewModel"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 lastChromeVisibilityChangeReason], v12, v13 == 2))
      {
        [(PUUserTransformTileViewController *)self minimumScaleWhileApplyingInsets];
        v6 = v14;
      }
    }
  }

  v15 = [(PUUserTransformTileViewController *)self userTransformView];
  [v15 setMinimumZoomScale:v3 animated:v6];
}

- (void)_updateDisplayTileTransform
{
  v3 = [(PUUserTransformTileViewController *)self userTransformView];
  v4 = [(PUUserTransformTileViewController *)self assetViewModel];
  v5 = [v4 modelTileTransform];

  v6 = [(PUUserTransformTileViewController *)self userTransformTileLayoutInfo];
  [v6 untransformedContentFrame];
  v8 = v7;
  v10 = v9;
  v11 = [(PUTileViewController *)self view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v16 = [(PUUserTransformTileViewController *)self assetViewModel];
  v17 = [v16 secondDisplayTileTransform];
  v18 = [PUDisplayTileTransform displayTileTransformWithModelTileTransform:v5 initialScale:v17 initialSize:1.0 displaySize:v8 secondaryDisplayTileTransform:v10, v13, v15];

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  if (v3)
  {
    [v3 userAffineTransform];
  }

  v19 = [(PUUserTransformTileViewController *)self _userInputOriginIdentifier];
  v20 = [v3 hasUserZoomedIn];
  v22[0] = v23;
  v22[1] = v24;
  v22[2] = v25;
  v21 = [v18 newDisplayTileTransformWithUserAffineTransform:v22 userInputOriginIdentifier:v19 isZoomedOut:v20 ^ 1u];
  [(PUUserTransformTileViewController *)self setDisplayTileTransform:v21];
}

- (void)_handleBrowsingViewModelChange:(id)a3
{
  if ([a3 chromeVisibilityDidChange] && !-[PUUserTransformTileViewController _shouldPreventScaledOffsetAdjustments](self, "_shouldPreventScaledOffsetAdjustments"))
  {
    [(PUUserTransformTileViewController *)self _updateMinimumZoomScale:1];

    [(PUUserTransformTileViewController *)self _updateUserTransformOffset:1];
  }
}

- (void)_setMinimumScaleWhileApplyingInsets:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_minimumScaleWhileApplyingInsets = a3;

    [(PUUserTransformTileViewController *)self _updateMinimumZoomScale:v4];
  }
}

- (void)setOffsetWhileApplyingInsets:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  p_offsetWhileApplyingInsets = &self->_offsetWhileApplyingInsets;
  if ((PXPointApproximatelyEqualToPoint() & 1) == 0)
  {
    p_offsetWhileApplyingInsets->x = x;
    p_offsetWhileApplyingInsets->y = y;

    [(PUUserTransformTileViewController *)self _updateUserTransformOffset:0];
  }
}

- (void)setDisplayTileTransform:(id)a3
{
  v5 = a3;
  if (self->_displayTileTransform != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_displayTileTransform, a3);
    [(PUUserTransformTileViewController *)self _updateAssetViewModelProperties];
    v5 = v6;
  }
}

- (void)_handleAssetViewModelChange:(id)a3
{
  v11 = a3;
  if ([v11 accessoryViewVisibilityChanged])
  {
    v4 = [(PUUserTransformTileViewController *)self assetViewModel];
    v5 = [v4 isAccessoryViewVisible];

    if (v5)
    {
      v6 = [(PUUserTransformTileViewController *)self userTransformView];
      [v6 zoomOut:0];
    }
  }

  if ([v11 accessoryViewVisibilityChanged])
  {
    v7 = [(PUUserTransformTileViewController *)self userTransformTileLayoutInfo];
    [(PUUserTransformTileViewController *)self _updateUserTransformView:v7];
  }

  if ([v11 isZoomedInChanged])
  {
    [(PUUserTransformTileViewController *)self _updateUserTransformOffset:1];
  }

  if ([v11 isFullyOutOfFocusChanged])
  {
    v8 = [(PUUserTransformTileViewController *)self assetViewModel];
    v9 = [v8 isFullyOutOfFocus];

    if (v9)
    {
      v10 = [(PUUserTransformTileViewController *)self userTransformView];
      [v10 zoomOut:0];
    }
  }
}

- (void)applyLayoutInfo:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PUUserTransformTileViewController.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"[layoutInfo isKindOfClass:[PUUserTransformTileLayoutInfo class]]"}];
  }

  v45.receiver = self;
  v45.super_class = PUUserTransformTileViewController;
  [(PUTileViewController *)&v45 applyLayoutInfo:v5];
  [(PUUserTransformTileViewController *)self _updateUserTransformView:v5];
  [(PUUserTransformTileViewController *)self _updateUserTransformPadding];
  [(PUUserTransformTileViewController *)self _updateDisplayTileTransform];
  v6 = [(PUUserTransformTileViewController *)self userTransformView];
  [v6 layoutIfNeeded];

  if (![(PUUserTransformTileViewController *)self _shouldPreventScaledOffsetAdjustments])
  {
    v7 = [v5 indexPath];
    v8 = [(PUUserTransformTileViewController *)self _insetModeForItemAtIndexPath:v7];

    if (v8 == 2)
    {
      [v5 untransformedContentFrame];
      [v5 chromeInsets];
      if ([MEMORY[0x1E69C3640] isOneUpRefreshEnabled])
      {
        v9 = [MEMORY[0x1E69C3640] sharedInstance];
        v10 = [v9 insetAllContent];

        if (v10)
        {
          v11 = [MEMORY[0x1E69C3640] sharedInstance];
          [v11 minimumMarginForInsetContent];
          PXEdgeInsetsMaxEachEdge();
        }
      }

      [v5 size];
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
        v28 = self;
        v27 = v39;
        v26 = v40;
        goto LABEL_22;
      }

      PXAffineTransformMakeFromRects();
      PXAffineTransformGetUniformScale();
      v34 = v33;
      if (self->_delegateRespondsTo.shouldAnimateMinimumScaleWhileApplyingInsets)
      {
        v35 = [(PUUserTransformTileViewController *)self delegate];
        v36 = [v35 userTransformTileViewControllerShouldAnimateMinimumScaleWhileApplyingInsets:self];
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

    v28 = self;
LABEL_22:
    [(PUUserTransformTileViewController *)v28 setOffsetWhileApplyingInsets:v26, v27];
  }
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    v13 = v5;
    v7 = [(PUUserTransformTileViewController *)self interactionHostView];
    [(PUAssetViewModel *)assetViewModel unregisterView:v7 forImageAnalysisInteractionHostMode:1];

    [(PUAssetViewModel *)self->_assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    v8 = [objc_opt_class() description];
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = [v9 UUIDString];
    v11 = [v8 stringByAppendingString:v10];

    [(PUUserTransformTileViewController *)self _setIdentifier:v11];
    [(PUUserTransformTileViewController *)self zoomOutAnimated:0];
    [(PUUserTransformTileViewController *)self setDisplayTileTransform:0];
    v12 = [(PUUserTransformTileViewController *)self userTransformTileLayoutInfo];
    [(PUUserTransformTileViewController *)self _updateUserTransformView:v12];

    [(PUUserTransformTileViewController *)self _updateInteractionHostViewRegistration];
    v5 = v13;
  }
}

- (void)setBrowsingViewModel:(id)a3
{
  v5 = a3;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != v5)
  {
    v7 = v5;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, a3);
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    [(PUUserTransformTileViewController *)self _updateMinimumZoomScale:0];
    browsingViewModel = [(PUUserTransformTileViewController *)self _updateUserTransformOffset:0];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, v5);
}

- (id)loadView
{
  v4 = [(PUUserTransformTileViewController *)self userTransformView];

  if (v4)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUUserTransformTileViewController.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"[self userTransformView] == nil"}];
  }

  v5 = [[PUUserTransformView alloc] initWithFrame:0.0, 0.0, 10.0, 10.0];
  [(PUUserTransformView *)v5 setDelegate:self];
  [(PUUserTransformTileViewController *)self _setUserTransformView:v5];
  v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
  interactionHostView = self->_interactionHostView;
  self->_interactionHostView = v6;

  [(UIView *)self->_interactionHostView setClipsToBounds:1];
  [(PUUserTransformView *)v5 setHostedView:self->_interactionHostView];
  v8 = [(PUUserTransformTileViewController *)self userTransformTileLayoutInfo];
  [(PUUserTransformTileViewController *)self _updateUserTransformView:v8];

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

- (void)setDelegate:(id)a3
{
  obj = a3;
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
  v3 = [(PUUserTransformView *)self->_userTransformView delegate];

  if (v3 == self)
  {
    [(PUUserTransformView *)self->_userTransformView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = PUUserTransformTileViewController;
  [(PUTileViewController *)&v4 dealloc];
}

- (PUUserTransformTileViewController)initWithReuseIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUUserTransformTileViewController;
  result = [(PUTileViewController *)&v4 initWithReuseIdentifier:a3];
  if (result)
  {
    result->_userInteractionEnabled = 1;
    result->_minimumScaleWhileApplyingInsets = 1.0;
  }

  return result;
}

@end