@interface PXCuratedLibraryFilterTipController
- (BOOL)_shouldShowFilterTip:(id)a3;
- (CGRect)_anchorViewRect;
- (PXCuratedLibraryFilterTipController)initWithViewModel:(id)a3 layout:(id)a4;
- (PXCuratedLibraryFilterTipControllerDelegate)delegate;
- (id)presentationControllerForTipID:(id)a3;
- (id)sourceItemForTipID:(id)a3;
- (void)_cancelTimerForSharedLibraryTip;
- (void)_dismissTipViewWithCompletion:(id)a3 clientInitiated:(BOOL)a4;
- (void)_presentSharedLibraryFilterTipIfPossible;
- (void)_presentTipViewController:(id)a3;
- (void)_startTimerForSharedLibraryFilterTip;
- (void)_updateControllerForSyndicatedAssetsTip;
- (void)didChangeFilterState:(id)a3;
- (void)didLayoutAnchorView;
- (void)guestAssetsTracker:(id)a3 canDisplayGuestAssets:(BOOL)a4;
- (void)guestAssetsTracker:(id)a3 isDisplayingGuestAssets:(BOOL)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareTipPopover:(id)a3 tipID:(id)a4;
- (void)setCuratedLibraryIsVisible:(BOOL)a3;
- (void)setTraitCollection:(id)a3;
- (void)tipPopoverDidDismissWithTipID:(id)a3;
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
        v20 = self;
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
        v20 = self;
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
  v4 = [v3 showUnsavedSyndicatedContentInPhotosGrids];
  if ([(PXCuratedLibraryFilterTipController *)self curatedLibraryIsVisible]&& v4)
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

    v8 = [(PXCuratedLibraryFilterTipController *)self guestAssetTracker];
    [v8 setIsActive:1];
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

    v11 = [(PXCuratedLibraryFilterTipController *)self guestAssetTracker];
    [v11 setIsActive:0];

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

    v8 = [PXGridTipsHelper syndicatedAssetsTipID:*v15];
    [PXGridTipsHelper setTip:v8 isPresentable:0];
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryStatusProviderObservationContext_155120 != a5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:333 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 3) != 0)
  {
    v14 = v9;
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

    v9 = v14;
  }
}

- (void)guestAssetsTracker:(id)a3 isDisplayingGuestAssets:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = @"not";
    v11 = 138543874;
    v12 = v7;
    if (v4)
    {
      v8 = &stru_1F1741150;
    }

    v13 = 2048;
    v14 = self;
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

- (void)guestAssetsTracker:(id)a3 canDisplayGuestAssets:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = @"not";
    v11 = 138543874;
    v12 = v7;
    if (v4)
    {
      v8 = &stru_1F1741150;
    }

    v13 = 2048;
    v14 = self;
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

- (BOOL)_shouldShowFilterTip:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UITraitCollection *)self->_traitCollection verticalSizeClass];
  v6 = [(PXCuratedLibraryFilterTipController *)self delegate];
  v7 = [v6 viewControllerToPresentTipForController:self];
  v8 = [v7 presentedViewController];

  v9 = 0;
  if ([(PXCuratedLibraryFilterTipController *)self curatedLibraryIsVisible]&& !v8 && v5 != UIUserInterfaceSizeClassCompact)
  {
    v10 = +[PXGridTipsHelper syndicatedAssetsTipID];
    v11 = [v4 isEqualToString:v10];

    if (v11)
    {
      v12 = [(PXCuratedLibraryFilterTipController *)self guestAssetTracker];
      v13 = [v12 canDisplayGuestAssets];

      v14 = [(PXCuratedLibraryFilterTipController *)self guestAssetTracker];
      v15 = [v14 isDisplayingGuestAssets];

      v16 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138544386;
        v27 = objc_opt_class();
        v28 = 2048;
        v29 = self;
        v30 = 2112;
        v31 = v4;
        v32 = 1024;
        *v33 = v13;
        *&v33[4] = 1024;
        *&v33[6] = v15;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> _shouldShowFilterTip %@? canDisplayGuestAssets: %d, isDisplayingGuestAssets: %d", &v26, 0x2Cu);
      }

      v9 = v13 & v15;
    }

    else
    {
      v17 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
      v18 = [v4 isEqualToString:v17];

      if (v18)
      {
        v9 = [(PXSharedLibraryStatusProvider *)self->_sharedLibraryStatusProvider hasSharedLibraryOrPreview];
        v19 = PLCuratedLibraryGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v26 = 138544130;
          v27 = objc_opt_class();
          v28 = 2048;
          v29 = self;
          v30 = 2112;
          v31 = v4;
          v32 = 1024;
          *v33 = v9;
          _os_log_impl(&dword_1A3C1C000, v19, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> _shouldShowFilterTip %@? hasSharedLibraryOrPreview: %d", &v26, 0x26u);
        }
      }

      else
      {
        v9 = 1;
      }
    }
  }

  v20 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v8 != 0;
    v22 = v5 == UIUserInterfaceSizeClassCompact;
    v23 = objc_opt_class();
    v26 = 138544642;
    v24 = @"NO";
    v27 = v23;
    v28 = 2048;
    if (v9)
    {
      v24 = @"YES";
    }

    v29 = self;
    v30 = 2112;
    v31 = v4;
    v32 = 2112;
    *v33 = v24;
    *&v33[8] = 1024;
    v34 = v22;
    v35 = 1024;
    v36 = v21;
    _os_log_impl(&dword_1A3C1C000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> _shouldShowFilterTip %@? %@. isCompactVerticalClass: %d, isPresentingViewController: %d", &v26, 0x36u);
  }

  return v9;
}

- (CGRect)_anchorViewRect
{
  v4 = [(PXCuratedLibraryFilterTipController *)self delegate];
  v5 = [(PXCuratedLibraryFilterTipController *)self delegate];

  if (!v5)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"self.delegate"}];
  }

  [v4 anchorViewRectForController:self];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(PXCuratedLibraryFilterTipController *)self traitCollection];
  if ([v14 horizontalSizeClass] == 1)
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

- (void)_dismissTipViewWithCompletion:(id)a3 clientInitiated:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (self->_presentedTipID)
  {
    v8 = _Block_copy(v6);
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
      if (v4)
      {
        v12 = @"client";
      }

      v18 = 2048;
      v19 = self;
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
      v19 = self;
      v15 = v17;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "<%{public}@:%p> Attempted to dismiss tip view but view wasn't presented", &v16, 0x16u);
    }

    if (v7)
    {
      v7[2](v7);
    }
  }
}

- (void)tipPopoverDidDismissWithTipID:(id)a3
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

- (void)prepareTipPopover:(id)a3 tipID:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [(PXCuratedLibraryFilterTipController *)self delegate];

  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:200 description:{@"Invalid parameter not satisfying: %@", @"self.delegate"}];
  }

  v11 = [(PXCuratedLibraryFilterTipController *)self delegate];
  v12 = [v11 viewToPresentTipForController:self];
  if (!v12)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  [v9 setSourceView:v12];
  [(PXCuratedLibraryFilterTipController *)self _anchorViewRect];
  [v9 setSourceRect:?];
  v13 = [v11 passthroughViewsForTipForController:self];
  [v9 setPassthroughViews:v13];

  [v9 setPermittedArrowDirections:3];
  [v11 willPresentTipForController:self];
  objc_storeStrong(&self->_presentedTipID, a4);
  v14 = PLCuratedLibraryGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v19 = objc_opt_class();
    v20 = 2048;
    v21 = self;
    v22 = 2112;
    v23 = v8;
    v15 = v19;
    _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p> Presented tip with ID %@.", buf, 0x20u);
  }
}

- (id)sourceItemForTipID:(id)a3
{
  v4 = [(PXCuratedLibraryFilterTipController *)self delegate];
  v5 = [v4 viewToPresentTipForController:self];

  return v5;
}

- (id)presentationControllerForTipID:(id)a3
{
  v5 = a3;
  v6 = +[PXGridTipsHelper syndicatedAssetsTipID];
  if ([v5 isEqualToString:v6])
  {
  }

  else
  {
    v7 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
    v8 = [v5 isEqualToString:v7];

    if (!v8)
    {
      v11 = 0;
      goto LABEL_10;
    }
  }

  v9 = [(PXCuratedLibraryFilterTipController *)self delegate];

  if (!v9)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"self.delegate"}];
  }

  v10 = [(PXCuratedLibraryFilterTipController *)self delegate];
  v11 = [v10 viewControllerToPresentTipForController:self];
  if (!v11)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryFilterTipController.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"presentationViewController"}];
  }

LABEL_10:

  return v11;
}

- (void)_presentTipViewController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PXGridTipsHelper curatedLibrarySwitchTipID];
  if ([v4 isEqualToString:v5])
  {
    v6 = [(PXCuratedLibraryFilterTipController *)self curatedLibraryIsVisible];

    if (!v6)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543618;
        v15 = objc_opt_class();
        v16 = 2048;
        v17 = self;
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
      v17 = self;
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
        v17 = self;
        v8 = v15;
        v9 = "<%{public}@:%p> Obtained anchor rect with size zero.";
        goto LABEL_16;
      }
    }

    else
    {
      if (![(PXTipsHelper *)PXGridTipsHelper isTipInvalidated:v4])
      {
        [PXGridTipsHelper setTip:v4 isPresentable:1];
        goto LABEL_19;
      }

      v7 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543618;
        v15 = objc_opt_class();
        v16 = 2048;
        v17 = self;
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

- (void)setTraitCollection:(id)a3
{
  v4 = a3;
  if (self->_presentedTipID)
  {
    v5 = [(UITraitCollection *)self->_traitCollection verticalSizeClass];
    if (v5 != [(UITraitCollection *)v4 verticalSizeClass]&& [(UITraitCollection *)v4 verticalSizeClass]== UIUserInterfaceSizeClassCompact)
    {
      [PXGridTipsHelper setTip:self->_presentedTipID isPresentable:0];
    }
  }

  traitCollection = self->_traitCollection;
  self->_traitCollection = v4;
}

- (void)setCuratedLibraryIsVisible:(BOOL)a3
{
  if (self->_curatedLibraryIsVisible != a3)
  {
    self->_curatedLibraryIsVisible = a3;
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

- (void)didChangeFilterState:(id)a3
{
  if ([a3 includeSharedWithYou])
  {
    v3 = +[PXGridTipsHelper syndicatedAssetsTipID];
    [PXGridTipsHelper setTipActionPerformed:v3];
  }
}

- (PXCuratedLibraryFilterTipController)initWithViewModel:(id)a3 layout:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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

    v12 = [v6 photoLibrary];
    photoLibrary = v8->_photoLibrary;
    v8->_photoLibrary = v12;

    v14 = [[PXCuratedLibraryGuestAssetTracker alloc] initWithViewModel:v6 layout:v7];
    guestAssetTracker = v8->_guestAssetTracker;
    v8->_guestAssetTracker = v14;

    [(PXCuratedLibraryGuestAssetTracker *)v8->_guestAssetTracker setDelegate:v8];
    px_dispatch_queue_create_serial();
  }

  return 0;
}

@end