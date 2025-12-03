@interface PXCuratedLibraryFilterTipController
- (BOOL)_shouldShowFilterTip:(id)tip;
- (CGRect)_anchorViewRect;
- (PXCuratedLibraryFilterTipController)initWithViewModel:(id)model layout:(id)layout;
- (PXCuratedLibraryFilterTipControllerDelegate)delegate;
- (id)presentationControllerForTipID:(id)d;
- (id)sourceItemForTipID:(id)d;
- (void)_cancelTimerForSharedLibraryTip;
- (void)_dismissTipViewWithCompletion:(id)completion clientInitiated:(BOOL)initiated;
- (void)_presentSharedLibraryFilterTipIfPossible;
- (void)_presentTipViewController:(id)controller;
- (void)_startTimerForSharedLibraryFilterTip;
- (void)_updateControllerForSyndicatedAssetsTip;
- (void)didChangeFilterState:(id)state;
- (void)didLayoutAnchorView;
- (void)guestAssetsTracker:(id)tracker canDisplayGuestAssets:(BOOL)assets;
- (void)guestAssetsTracker:(id)tracker isDisplayingGuestAssets:(BOOL)assets;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareTipPopover:(id)popover tipID:(id)d;
- (void)setCuratedLibraryIsVisible:(BOOL)visible;
- (void)setTraitCollection:(id)collection;
- (void)tipPopoverDidDismissWithTipID:(id)d;
- (void)userDidChangeLibraryFilterState;
@end

@implementation PXCuratedLibraryFilterTipController

- (void)didLayoutAnchorView
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(PXCuratedLibraryFilterTipController *)self isPresentingTipView])
  {
    [(PXCuratedLibraryFilterTipController *)self _anchorViewRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = PLCuratedLibraryGetLog();
    v12 = v11;
    if (v10 == 0.0 && v8 == 0.0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543618;
        v18 = objc_opt_class();
        v19 = 2048;
        selfCopy2 = self;
        v13 = v18;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Obtained anchor rect with size zero", &v17, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_opt_class();
        v15 = v14;
        v24.origin.x = v4;
        v24.origin.y = v6;
        v24.size.width = v8;
        v24.size.height = v10;
        v16 = NSStringFromCGRect(v24);
        v17 = 138543874;
        v18 = v14;
        v19 = 2048;
        selfCopy2 = self;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Set new anchor rect: %@", &v17, 0x20u);
      }

      if (self->_presentedTipID)
      {
        [PXGridTipsHelper updatePopoverTip:v4 sourceRect:v6, v8, v10];
      }
    }
  }
}

- (void)_updateControllerForSyndicatedAssetsTip
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:self->_photoLibrary];
  showUnsavedSyndicatedContentInPhotosGrids = [v3 showUnsavedSyndicatedContentInPhotosGrids];
  if ([(PXCuratedLibraryFilterTipController *)self curatedLibraryIsVisible]&& showUnsavedSyndicatedContentInPhotosGrids)
  {
    v5 = +[PXGridTipsHelper syndicatedAssetsTipID];
    [(PXCuratedLibraryFilterTipController *)self _presentTipViewController:v5];

    v6 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 138543618;
      *&v15[4] = objc_opt_class();
      *&v15[12] = 2048;
      *&v15[14] = self;
      v7 = *&v15[4];
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Start tracking guest assets.", v15, 0x16u);
    }

    guestAssetTracker = [(PXCuratedLibraryFilterTipController *)self guestAssetTracker];
    [guestAssetTracker setIsActive:1];
  }

  else
  {
    v9 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 138543618;
      *&v15[4] = objc_opt_class();
      *&v15[12] = 2048;
      *&v15[14] = self;
      v10 = *&v15[4];
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Stop tracking guest assets.", v15, 0x16u);
    }

    guestAssetTracker2 = [(PXCuratedLibraryFilterTipController *)self guestAssetTracker];
    [guestAssetTracker2 setIsActive:0];

    if ([(PXCuratedLibraryFilterTipController *)self isPresentingTipView])
    {
      v12 = PLUIGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        *v15 = 138543618;
        *&v15[4] = v13;
        *&v15[12] = 2048;
        *&v15[14] = self;
        v14 = v13;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Tip view presented while conditions for presentation are not met", v15, 0x16u);
      }

      [(PXCuratedLibraryFilterTipController *)self _dismissTipViewWithCompletion:0 clientInitiated:0];
    }

    guestAssetTracker = [PXGridTipsHelper syndicatedAssetsTipID:*v15];
    [PXGridTipsHelper setTip:guestAssetTracker isPresentable:0];
  }
}

- (void)_startTimerForSharedLibraryFilterTip
{
  if ([(PXCuratedLibraryFilterTipController *)self curatedLibraryIsVisible]&& !self->_hasScheduledSharedLibraryFilterTip)
  {
    v3 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
    v4 = [(PXTipsHelper *)PXGridTipsHelper isTipInvalidated:v3];

    if (!v4)
    {
      [(PXCuratedLibraryFilterTipController *)self performSelector:sel__presentSharedLibraryFilterTipIfPossible withObject:0 afterDelay:7.0];
      self->_hasScheduledSharedLibraryFilterTip = 1;
    }
  }
}

- (PXCuratedLibraryFilterTipControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryStatusProviderObservationContext_155120 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:333 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 3) != 0)
  {
    v14 = observableCopy;
    if ([(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider hasSharedLibraryOrPreview])
    {
      [(PXCuratedLibraryFilterTipController *)self _startTimerForSharedLibraryFilterTip];
    }

    else
    {
      presentedTipID = self->_presentedTipID;
      v11 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
      LODWORD(presentedTipID) = [(NSString *)presentedTipID isEqualToString:v11];

      if (presentedTipID)
      {
        [(PXCuratedLibraryFilterTipController *)self _dismissTipViewWithCompletion:0 clientInitiated:0];
      }

      v12 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
      [PXGridTipsHelper setTip:v12 isPresentable:0];
    }

    observableCopy = v14;
  }
}

- (void)guestAssetsTracker:(id)tracker isDisplayingGuestAssets:(BOOL)assets
{
  assetsCopy = assets;
  v17 = *MEMORY[0x1E69E9840];
  v6 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = @"not";
    v11 = 138543874;
    v12 = v7;
    if (assetsCopy)
    {
      v8 = &stru_1F1741150;
    }

    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = v8;
    v9 = v7;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Invalidate TPKClientContex: Tracker is%@displaying guest assets", &v11, 0x20u);
  }

  presentedTipID = self->_presentedTipID;
  if (presentedTipID)
  {
    [PXGridTipsHelper setTip:presentedTipID isPresentable:0];
  }
}

- (void)guestAssetsTracker:(id)tracker canDisplayGuestAssets:(BOOL)assets
{
  assetsCopy = assets;
  v17 = *MEMORY[0x1E69E9840];
  v6 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = @"not";
    v11 = 138543874;
    v12 = v7;
    if (assetsCopy)
    {
      v8 = &stru_1F1741150;
    }

    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = v8;
    v9 = v7;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Invalidate TPKClientContex: Tracker can%@displaying guest assets", &v11, 0x20u);
  }

  presentedTipID = self->_presentedTipID;
  if (presentedTipID)
  {
    [PXGridTipsHelper setTip:presentedTipID isPresentable:0];
  }
}

- (void)_presentSharedLibraryFilterTipIfPossible
{
  self->_hasScheduledSharedLibraryFilterTip = 0;
  v3 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
  v4 = [(PXCuratedLibraryFilterTipController *)self _shouldShowFilterTip:v3];

  if (v4)
  {
    v5 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
    [(PXCuratedLibraryFilterTipController *)self _presentTipViewController:v5];
  }
}

- (void)_cancelTimerForSharedLibraryTip
{
  if (self->_hasScheduledSharedLibraryFilterTip)
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__presentSharedLibraryFilterTipIfPossible object:0];
    self->_hasScheduledSharedLibraryFilterTip = 0;
  }
}

- (BOOL)_shouldShowFilterTip:(id)tip
{
  v37 = *MEMORY[0x1E69E9840];
  tipCopy = tip;
  verticalSizeClass = [(UITraitCollection *)self->_traitCollection verticalSizeClass];
  delegate = [(PXCuratedLibraryFilterTipController *)self delegate];
  v7 = [delegate viewControllerToPresentTipForController:self];
  presentedViewController = [v7 presentedViewController];

  hasSharedLibraryOrPreview = 0;
  if ([(PXCuratedLibraryFilterTipController *)self curatedLibraryIsVisible]&& !presentedViewController && verticalSizeClass != UIUserInterfaceSizeClassCompact)
  {
    v10 = +[PXGridTipsHelper syndicatedAssetsTipID];
    v11 = [tipCopy isEqualToString:v10];

    if (v11)
    {
      guestAssetTracker = [(PXCuratedLibraryFilterTipController *)self guestAssetTracker];
      canDisplayGuestAssets = [guestAssetTracker canDisplayGuestAssets];

      guestAssetTracker2 = [(PXCuratedLibraryFilterTipController *)self guestAssetTracker];
      isDisplayingGuestAssets = [guestAssetTracker2 isDisplayingGuestAssets];

      v16 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138544386;
        v27 = objc_opt_class();
        v28 = 2048;
        selfCopy3 = self;
        v30 = 2112;
        v31 = tipCopy;
        v32 = 1024;
        *v33 = canDisplayGuestAssets;
        *&v33[4] = 1024;
        *&v33[6] = isDisplayingGuestAssets;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> _shouldShowFilterTip %@? canDisplayGuestAssets: %d, isDisplayingGuestAssets: %d", &v26, 0x2Cu);
      }

      hasSharedLibraryOrPreview = canDisplayGuestAssets & isDisplayingGuestAssets;
    }

    else
    {
      v17 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
      v18 = [tipCopy isEqualToString:v17];

      if (v18)
      {
        hasSharedLibraryOrPreview = [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider hasSharedLibraryOrPreview];
        v19 = PLCuratedLibraryGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138544130;
          v27 = objc_opt_class();
          v28 = 2048;
          selfCopy3 = self;
          v30 = 2112;
          v31 = tipCopy;
          v32 = 1024;
          *v33 = hasSharedLibraryOrPreview;
          _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> _shouldShowFilterTip %@? hasSharedLibraryOrPreview: %d", &v26, 0x26u);
        }
      }

      else
      {
        hasSharedLibraryOrPreview = 1;
      }
    }
  }

  v20 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = presentedViewController != 0;
    v22 = verticalSizeClass == UIUserInterfaceSizeClassCompact;
    v23 = objc_opt_class();
    v26 = 138544642;
    v24 = @"NO";
    v27 = v23;
    v28 = 2048;
    if (hasSharedLibraryOrPreview)
    {
      v24 = @"YES";
    }

    selfCopy3 = self;
    v30 = 2112;
    v31 = tipCopy;
    v32 = 2112;
    *v33 = v24;
    *&v33[8] = 1024;
    v34 = v22;
    v35 = 1024;
    v36 = v21;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> _shouldShowFilterTip %@? %@. isCompactVerticalClass: %d, isPresentingViewController: %d", &v26, 0x36u);
  }

  return hasSharedLibraryOrPreview;
}

- (CGRect)_anchorViewRect
{
  delegate = [(PXCuratedLibraryFilterTipController *)self delegate];
  delegate2 = [(PXCuratedLibraryFilterTipController *)self delegate];

  if (!delegate2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"self.delegate"}];
  }

  [delegate anchorViewRectForController:self];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  traitCollection = [(PXCuratedLibraryFilterTipController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 1)
  {
    v15 = 16.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = v7;
  v17 = v9 + v15;
  v18 = v11;
  v19 = v13;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_dismissTipViewWithCompletion:(id)completion clientInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_presentedTipID)
  {
    v8 = _Block_copy(completionCopy);
    tipDismissedCompletion = self->_tipDismissedCompletion;
    self->_tipDismissedCompletion = v8;

    [PXGridTipsHelper setTip:self->_presentedTipID isPresentable:0];
    v10 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = @"controller signal";
      v16 = 138543874;
      v17 = v11;
      if (initiatedCopy)
      {
        v12 = @"client";
      }

      v18 = 2048;
      selfCopy2 = self;
      v20 = 2112;
      v21 = v12;
      v13 = v11;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Dismissed tip view %@ initiated", &v16, 0x20u);
    }
  }

  else
  {
    v14 = PLUIGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543618;
      v17 = objc_opt_class();
      v18 = 2048;
      selfCopy2 = self;
      v15 = v17;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Attempted to dismiss tip view but view wasn't presented", &v16, 0x16u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

- (void)tipPopoverDidDismissWithTipID:(id)d
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didDismissTipForController:self];

  presentedTipID = self->_presentedTipID;
  self->_presentedTipID = 0;

  tipDismissedCompletion = self->_tipDismissedCompletion;
  if (tipDismissedCompletion)
  {
    tipDismissedCompletion[2]();
    v7 = self->_tipDismissedCompletion;
    self->_tipDismissedCompletion = 0;
  }
}

- (void)prepareTipPopover:(id)popover tipID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  popoverCopy = popover;
  delegate = [(PXCuratedLibraryFilterTipController *)self delegate];

  if (!delegate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"self.delegate"}];
  }

  delegate2 = [(PXCuratedLibraryFilterTipController *)self delegate];
  v12 = [delegate2 viewToPresentTipForController:self];
  if (!v12)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  [popoverCopy setSourceView:v12];
  [(PXCuratedLibraryFilterTipController *)self _anchorViewRect];
  [popoverCopy setSourceRect:?];
  v13 = [delegate2 passthroughViewsForTipForController:self];
  [popoverCopy setPassthroughViews:v13];

  [popoverCopy setPermittedArrowDirections:3];
  [delegate2 willPresentTipForController:self];
  objc_storeStrong(&self->_presentedTipID, d);
  v14 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v19 = objc_opt_class();
    v20 = 2048;
    selfCopy = self;
    v22 = 2112;
    v23 = dCopy;
    v15 = v19;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Presented tip with ID %@.", buf, 0x20u);
  }
}

- (id)sourceItemForTipID:(id)d
{
  delegate = [(PXCuratedLibraryFilterTipController *)self delegate];
  v5 = [delegate viewToPresentTipForController:self];

  return v5;
}

- (id)presentationControllerForTipID:(id)d
{
  dCopy = d;
  v6 = +[PXGridTipsHelper syndicatedAssetsTipID];
  if ([dCopy isEqualToString:v6])
  {
  }

  else
  {
    v7 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
    v8 = [dCopy isEqualToString:v7];

    if (!v8)
    {
      v11 = 0;
      goto LABEL_10;
    }
  }

  delegate = [(PXCuratedLibraryFilterTipController *)self delegate];

  if (!delegate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"self.delegate"}];
  }

  delegate2 = [(PXCuratedLibraryFilterTipController *)self delegate];
  v11 = [delegate2 viewControllerToPresentTipForController:self];
  if (!v11)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"presentationViewController"}];
  }

LABEL_10:

  return v11;
}

- (void)_presentTipViewController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v5 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
  if ([controllerCopy isEqualToString:v5])
  {
    curatedLibraryIsVisible = [(PXCuratedLibraryFilterTipController *)self curatedLibraryIsVisible];

    if (!curatedLibraryIsVisible)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543618;
        v15 = objc_opt_class();
        v16 = 2048;
        selfCopy4 = self;
        v8 = v15;
        v9 = "<%{public}@:%p> Attempted to present tip view but host view controller can't present";
LABEL_16:
        v12 = v7;
        v13 = OS_LOG_TYPE_ERROR;
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  if ([(PXCuratedLibraryFilterTipController *)self isPresentingTipView])
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543618;
      v15 = objc_opt_class();
      v16 = 2048;
      selfCopy4 = self;
      v8 = v15;
      v9 = "<%{public}@:%p> Attempring to present tip view but there is one already presented";
      goto LABEL_16;
    }
  }

  else
  {
    [(PXCuratedLibraryFilterTipController *)self _anchorViewRect];
    if (v11 == 0.0 || v10 == 0.0)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543618;
        v15 = objc_opt_class();
        v16 = 2048;
        selfCopy4 = self;
        v8 = v15;
        v9 = "<%{public}@:%p> Obtained anchor rect with size zero.";
        goto LABEL_16;
      }
    }

    else
    {
      if (![(PXTipsHelper *)PXGridTipsHelper isTipInvalidated:controllerCopy])
      {
        [PXGridTipsHelper setTip:controllerCopy isPresentable:1];
        goto LABEL_19;
      }

      v7 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = objc_opt_class();
        v16 = 2048;
        selfCopy4 = self;
        v8 = v15;
        v9 = "<%{public}@:%p> Not presenting tip.";
        v12 = v7;
        v13 = OS_LOG_TYPE_DEFAULT;
LABEL_17:
        _os_log_impl(&dword_1A3C1C000, v12, v13, v9, &v14, 0x16u);
      }
    }
  }

LABEL_18:

LABEL_19:
}

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_presentedTipID)
  {
    verticalSizeClass = [(UITraitCollection *)self->_traitCollection verticalSizeClass];
    if (verticalSizeClass != [(UITraitCollection *)collectionCopy verticalSizeClass]&& [(UITraitCollection *)collectionCopy verticalSizeClass]== UIUserInterfaceSizeClassCompact)
    {
      [PXGridTipsHelper setTip:self->_presentedTipID isPresentable:0];
    }
  }

  traitCollection = self->_traitCollection;
  self->_traitCollection = collectionCopy;
}

- (void)setCuratedLibraryIsVisible:(BOOL)visible
{
  if (self->_curatedLibraryIsVisible != visible)
  {
    self->_curatedLibraryIsVisible = visible;
    [(PXCuratedLibraryFilterTipController *)self _updateControllerForSyndicatedAssetsTip];
    if (self->_curatedLibraryIsVisible)
    {

      [(PXCuratedLibraryFilterTipController *)self _startTimerForSharedLibraryFilterTip];
    }

    else
    {
      v4 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
      [PXGridTipsHelper setTip:v4 isPresentable:0];

      [(PXCuratedLibraryFilterTipController *)self _cancelTimerForSharedLibraryTip];
    }
  }
}

- (void)userDidChangeLibraryFilterState
{
  v2 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
  [PXGridTipsHelper setTipActionPerformed:v2];
}

- (void)didChangeFilterState:(id)state
{
  if ([state includeSharedWithYou])
  {
    v3 = +[PXGridTipsHelper syndicatedAssetsTipID];
    [PXGridTipsHelper setTipActionPerformed:v3];
  }
}

- (PXCuratedLibraryFilterTipController)initWithViewModel:(id)model layout:(id)layout
{
  v22 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  layoutCopy = layout;
  v17.receiver = self;
  v17.super_class = PXCuratedLibraryFilterTipController;
  v8 = [(PXCuratedLibraryFilterTipController *)&v17 init];
  if (v8)
  {
    v9 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v19 = v10;
      v20 = 2048;
      v21 = v8;
      v11 = v10;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEBUG, "<%{public}@:%p> Init controller.", buf, 0x16u);
    }

    photoLibrary = [modelCopy photoLibrary];
    photoLibrary = v8->_photoLibrary;
    v8->_photoLibrary = photoLibrary;

    v14 = [[PXCuratedLibraryGuestAssetTracker alloc] initWithViewModel:modelCopy layout:layoutCopy];
    guestAssetTracker = v8->_guestAssetTracker;
    v8->_guestAssetTracker = v14;

    [(PXCuratedLibraryGuestAssetTracker *)v8->_guestAssetTracker setDelegate:v8];
    px_dispatch_queue_create_serial();
  }

  return 0;
}

@end