@interface PUOneUpAccessoryViewControllersManager
- (BOOL)_isPhoneAndLandscape;
- (BOOL)photosDetailsUIViewControllerRequestDismissal:(id)a3;
- (BOOL)shouldHideNavigationBarWhenShowingAccessoryViewControllerForAssetReference:(id)a3;
- (BOOL)shouldHideStatusBarWhenShowingAccessoryViewControllerForAssetReference:(id)a3;
- (BOOL)shouldHideToolbarWhenShowingAccessoryViewControllerForAssetReference:(id)a3;
- (PUOneUpAccessoryViewControllersManager)init;
- (PUOneUpAccessoryViewControllersManager)initWithBrowsingSession:(id)a3 spec:(id)a4;
- (PUOneUpAccessoryViewControllersManagerDelegate)delegate;
- (id)_createAccessoryViewControllerForAssetReference:(id)a3;
- (id)accessoryViewControllerForAssetReference:(id)a3 createIfNeeded:(BOOL)a4;
- (id)assetReferenceForAccessoryViewController:(id)a3;
- (int64_t)_accessoryViewTypeForAsset:(id)a3;
- (int64_t)accessoryViewTypeForAsset:(id)a3;
- (void)_invalidateAccessoryViewControllersForAssetReferences:(id)a3;
- (void)photosDetailsUIViewControllerCompositionDidChange:(id)a3;
- (void)setDelegate:(id)a3;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUOneUpAccessoryViewControllersManager

- (PUOneUpAccessoryViewControllersManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v6 = a4;
  v39 = self;
  v7 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewControllers];
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44 = v7;
  v40 = v6;
  if ([v6 assetsDataSourceDidChange])
  {
    v8 = [v43 assetsDataSource];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v9 = [v7 keyEnumerator];
    v10 = [v9 allObjects];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v57;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v57 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v56 + 1) + 8 * i);
          v16 = [v8 assetReferenceForAssetReference:v15];
          v17 = [v15 asset];
          v18 = [v16 asset];
          if ([v17 isEqual:v18])
          {
            v19 = [v17 mediaSubtypes];
            if (v19 != [v18 mediaSubtypes])
            {
              [v41 addObject:v16];
            }
          }

          if (v16)
          {
            v20 = [v44 objectForKey:v15];
            [v44 setObject:v20 forKey:v16];
          }

          [v44 removeObjectForKey:v15];
        }

        v12 = [obj countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v12);
    }

    v6 = v40;
    v7 = v44;
  }

  obja = [v6 assetViewModelChangesByAssetReference];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v45 = [v7 keyEnumerator];
  v21 = [v45 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v42 = 0;
    v23 = *v53;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(v45);
        }

        v25 = *(*(&v52 + 1) + 8 * j);
        v26 = [obja objectForKeyedSubscript:v25];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v27 = v26;
        v28 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v49;
LABEL_22:
          v31 = 0;
          while (1)
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v48 + 1) + 8 * v31);
            v33 = [v32 focusValueChanged];
            if (v33)
            {
              break;
            }

            if ([v32 assetChanged])
            {
              v35 = [v41 containsObject:v25];

              if (!v35)
              {
                goto LABEL_40;
              }

              goto LABEL_32;
            }

            if (v29 == ++v31)
            {
              v29 = [v27 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v29)
              {
                goto LABEL_22;
              }

              goto LABEL_29;
            }
          }

LABEL_32:
          v34 = [v43 assetViewModelForAssetReference:v25];
          [v34 focusValue];
          if (fabs(v36) < 2.0)
          {
            v37 = v33;
          }

          else
          {
            v37 = 0;
          }

          if ((v37 & 1) == 0)
          {
            v38 = v42;
            if (!v42)
            {
              v38 = [MEMORY[0x1E695DF70] array];
            }

            v42 = v38;
            [v38 addObject:v25];
          }

          goto LABEL_39;
        }

LABEL_29:
        v34 = v27;
LABEL_39:

LABEL_40:
      }

      v22 = [v45 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v22);
  }

  else
  {
    v42 = 0;
  }

  if ([v42 count])
  {
    [(PUOneUpAccessoryViewControllersManager *)v39 _invalidateAccessoryViewControllersForAssetReferences:v42];
  }
}

- (void)photosDetailsUIViewControllerCompositionDidChange:(id)a3
{
  if (self->_delegateRespondsTo.invalidateAccessoryLayout)
  {
    v5 = [(PUOneUpAccessoryViewControllersManager *)self delegate];
    [v5 oneUpAccessoryViewControllersManagerInvalidateAccessoryLayout:self];
  }
}

- (BOOL)photosDetailsUIViewControllerRequestDismissal:(id)a3
{
  if (!self->_delegateRespondsTo.requestDismissal)
  {
    return 0;
  }

  v3 = self;
  v4 = [(PUOneUpAccessoryViewControllersManager *)self delegate];
  LOBYTE(v3) = [v4 oneUpAccessoryViewControllersManagerRequestAccessoryDismissal:v3];

  return v3;
}

- (id)_createAccessoryViewControllerForAssetReference:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 asset];
  v7 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:v6];

  v8 = 0;
  if (v7 <= 2)
  {
    if (v7 == 2)
    {
      v11 = [v5 asset];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v11 canPerformEditOperation:2])
        {
          v12 = 6;
        }

        else
        {
          v12 = 38;
        }
      }

      else
      {
        v17 = PLUIGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v18;
          *&buf[12] = 2112;
          *&buf[14] = v11;
          _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "%@: Unknown asset class: %@", buf, 0x16u);
        }

        v12 = 38;
      }

      v19 = [(PUOneUpAccessoryViewControllersManager *)self browsingSession];
      v20 = [v19 photosDetailsContext];

      v21 = [MEMORY[0x1E69C3888] photosDetailsContextForAsset:v11 parentContext:v20];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __90__PUOneUpAccessoryViewControllersManager__createAccessoryViewControllerForAssetReference___block_invoke;
      v36[3] = &unk_1E7B7CD48;
      v22 = v5;
      v37 = v22;
      [v21 performChanges:v36];
      if (!self->_delegateRespondsTo.preventRevealInMomentActionForAssetReference || (-[PUOneUpAccessoryViewControllersManager delegate](self, "delegate"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v23 oneUpAccessoryViewControllersManager:self preventRevealInMomentActionForAssetReference:v22], v23, (v24 & 1) == 0))
      {
        v12 |= 0x10uLL;
      }

      if (!self->_delegateRespondsTo.preventInternalFileRadarActionForAssetReference || (-[PUOneUpAccessoryViewControllersManager delegate](self, "delegate"), v25 = objc_claimAutoreleasedReturnValue(), v26 = [v25 oneUpAccessoryViewControllersManager:self preventInternalFileRadarActionForAssetReference:v22], v25, (v26 & 1) == 0))
      {
        v12 |= 0x40uLL;
      }

      if (self->_delegateRespondsTo.preventAlbumAttributionWidget)
      {
        v27 = [(PUOneUpAccessoryViewControllersManager *)self delegate];
        v28 = [v27 oneUpAccessoryViewControllersManager:self preventAlbumAttributionWidgetForAssetReference:v22];

        if (v28)
        {
          v12 |= 0x80uLL;
        }
      }

      v29 = [(PUOneUpAccessoryViewControllersManager *)self browsingSession];
      v30 = [v29 viewModel];
      v31 = [v30 assetViewModelForAssetReference:v22];

      v32 = objc_alloc_init(MEMORY[0x1E69C3880]);
      [v32 setOptions:v12];
      v33 = [(PUOneUpAccessoryViewControllersManager *)self unlockDeviceStatus];
      [v32 setUnlockDeviceStatus:v33];

      v34 = [(PUOneUpAccessoryViewControllersManager *)self unlockDeviceHandlerWithActionType];
      [v32 setUnlockDeviceHandlerWithActionType:v34];

      [v32 setScrollPocketsEnabled:{-[PUOneUpAccessoryViewControllersManager scrollPocketsEnabled](self, "scrollPocketsEnabled")}];
      v8 = [[PUPhotosDetailsViewController alloc] initWithContext:v21 configuration:v32 assetViewModel:v31];
      [(PXPhotosDetailsUIViewController *)v8 setDelegate:self];
    }

    else if (v7 == 1)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"PUOneUpAccessoryViewControllersManager.m" lineNumber:252 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else if (v7 == 3)
  {
    v13 = [(PUOneUpAccessoryViewControllersManager *)self browsingSession];
    v14 = [v13 viewModel];
    v15 = [v14 assetViewModelForAssetReference:v5];

    v8 = [[PUCommentsViewController alloc] initWithAssetViewModel:v15];
  }

  else if (v7 == 4)
  {
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v9 = getPUTesterSampleAccessoryViewControllerClass_softClass;
    v41 = getPUTesterSampleAccessoryViewControllerClass_softClass;
    if (!getPUTesterSampleAccessoryViewControllerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getPUTesterSampleAccessoryViewControllerClass_block_invoke;
      v43 = &unk_1E7B800F0;
      v44 = &v38;
      __getPUTesterSampleAccessoryViewControllerClass_block_invoke(buf);
      v9 = v39[3];
    }

    v10 = v9;
    _Block_object_dispose(&v38, 8);
    v8 = objc_alloc_init(v10);
  }

  return v8;
}

void __90__PUOneUpAccessoryViewControllersManager__createAccessoryViewControllerForAssetReference___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setViewSourceOrigin:1];
  v4 = [*(a1 + 32) assetCollection];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  [v3 setContainingAlbum:v5];
}

- (int64_t)_accessoryViewTypeForAsset:(id)a3
{
  v3 = a3;
  v4 = +[PUOneUpSettings sharedInstance];
  v5 = [v4 accessoryViewType];

  if ([v3 needsSensitivityProtection])
  {
    goto LABEL_2;
  }

  if (v5 != 1)
  {
    goto LABEL_13;
  }

  if ([PUCommentsViewController canShowCommentsForAsset:v3])
  {
    v5 = 3;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_2:
    v5 = 0;
  }

  else
  {
    v6 = v3;
    if ([v6 isTrashed])
    {
      v5 = 0;
    }

    else if ([v6 isRecoveredAsset])
    {
      v5 = 0;
    }

    else
    {
      v5 = 2;
    }
  }

LABEL_13:

  return v5;
}

- (void)_invalidateAccessoryViewControllersForAssetReferences:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewControllers];
        [v10 removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)assetReferenceForAccessoryViewController:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKey:v10];

        if (v11 == v4)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)accessoryViewControllerForAssetReference:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PUOneUpAccessoryViewControllersManager *)self browsingSession];
  v8 = [v7 viewModel];
  v9 = [v8 assetsDataSource];

  v29 = v9;
  v10 = [v9 assetReferenceForAssetReference:v6];

  v11 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewControllers];
  v12 = [v11 objectForKey:v10];
  if (!v12)
  {
    v26 = v4;
    v27 = self;
    v28 = v11;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = [v11 keyEnumerator];
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v12 = 0;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = [v18 asset];
          v20 = [v10 asset];
          v21 = [v19 isEqual:v20];

          if (v21)
          {
            v22 = [v29 assetReferenceForAssetReference:v18];
            v23 = [v22 isEqual:v10];

            if (v23)
            {
              v24 = [v28 objectForKey:v18];

              v12 = v24;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      v11 = v28;
    }

    else
    {
      v11 = v28;
      if (v26)
      {
        v12 = [(PUOneUpAccessoryViewControllersManager *)v27 _createAccessoryViewControllerForAssetReference:v10];
        [v28 setObject:v12 forKey:v10];
      }
    }
  }

  return v12;
}

- (BOOL)shouldHideStatusBarWhenShowingAccessoryViewControllerForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpAccessoryViewControllersManager *)self _spec];
  v6 = [v5 hideStatusBarWhenShowingAccessoryView];

  v7 = [v4 asset];

  v8 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:v7];
  if (v8 == 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v8 && v9;
}

- (BOOL)shouldHideNavigationBarWhenShowingAccessoryViewControllerForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PUOneUpAccessoryViewControllersManager *)self _spec];
  v6 = [v5 hideNavigationBarWhenShowingAccessoryView];

  v7 = [v4 asset];

  v8 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:v7];
  if (!v8)
  {
    return 0;
  }

  if (v8 == 3)
  {
    v9 = [MEMORY[0x1E69C3640] sharedInstance];
    if ([v9 enableSideCommentsInLandscape])
    {
      v6 = [(PUOneUpAccessoryViewControllersManager *)self _isPhoneAndLandscape];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)shouldHideToolbarWhenShowingAccessoryViewControllerForAssetReference:(id)a3
{
  v4 = a3;
  v5 = +[PUOneUpSettings sharedInstance];
  v6 = [v5 hideToolbarWhenShowingAccessoryView];

  v7 = [v4 asset];

  v8 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:v7];
  result = 0;
  if (v8 && v8 != 3)
  {
    if (v6)
    {
      return 1;
    }

    else
    {

      return [(PUOneUpAccessoryViewControllersManager *)self _isPhoneAndLandscape];
    }
  }

  return result;
}

- (BOOL)_isPhoneAndLandscape
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 orientation];

  if ((v6 - 1) > 3)
  {
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 windows];
    v10 = [v9 firstObject];
    v11 = [v10 windowScene];
    v12 = [v11 interfaceOrientation];

    v7 = v12 - 3;
  }

  else
  {
    v7 = v6 - 3;
  }

  return v7 < 2;
}

- (int64_t)accessoryViewTypeForAsset:(id)a3
{
  v5 = a3;
  v6 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:v5];
  v7 = v6;
  v8 = 0;
  if (v6 > 2)
  {
    if (v6 != 3)
    {
      if (v6 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }

    if (![PUCommentsViewController canShowCommentsForAsset:v5])
    {
LABEL_9:
      v8 = 0;
      goto LABEL_11;
    }

LABEL_7:
    v8 = v7;
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v6 == 1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUOneUpAccessoryViewControllersManager.m" lineNumber:86 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_11:

  return v8;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.preventRevealInMomentActionForAssetReference = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.preventInternalFileRadarActionForAssetReference = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.requestDismissal = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.invalidateAccessoryLayout = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.preventAlbumAttributionWidget = objc_opt_respondsToSelector() & 1;
  }
}

- (PUOneUpAccessoryViewControllersManager)initWithBrowsingSession:(id)a3 spec:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PUOneUpAccessoryViewControllersManager;
  v9 = [(PUOneUpAccessoryViewControllersManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_browsingSession, a3);
    v11 = [(PUBrowsingSession *)v10->_browsingSession viewModel];
    [v11 registerChangeObserver:v10];

    objc_storeStrong(&v10->__spec, a4);
    v12 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    accessoryViewControllers = v10->__accessoryViewControllers;
    v10->__accessoryViewControllers = v12;

    v10->_scrollPocketsEnabled = 1;
    [MEMORY[0x1E69C38B8] preloadResources];
  }

  return v10;
}

- (PUOneUpAccessoryViewControllersManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUOneUpAccessoryViewControllersManager.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PUOneUpAccessoryViewControllersManager init]"}];

  abort();
}

@end