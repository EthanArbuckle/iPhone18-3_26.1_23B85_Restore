@interface PUOneUpAccessoryViewControllersManager
- (BOOL)_isPhoneAndLandscape;
- (BOOL)photosDetailsUIViewControllerRequestDismissal:(id)dismissal;
- (BOOL)shouldHideNavigationBarWhenShowingAccessoryViewControllerForAssetReference:(id)reference;
- (BOOL)shouldHideStatusBarWhenShowingAccessoryViewControllerForAssetReference:(id)reference;
- (BOOL)shouldHideToolbarWhenShowingAccessoryViewControllerForAssetReference:(id)reference;
- (PUOneUpAccessoryViewControllersManager)init;
- (PUOneUpAccessoryViewControllersManager)initWithBrowsingSession:(id)session spec:(id)spec;
- (PUOneUpAccessoryViewControllersManagerDelegate)delegate;
- (id)_createAccessoryViewControllerForAssetReference:(id)reference;
- (id)accessoryViewControllerForAssetReference:(id)reference createIfNeeded:(BOOL)needed;
- (id)assetReferenceForAccessoryViewController:(id)controller;
- (int64_t)_accessoryViewTypeForAsset:(id)asset;
- (int64_t)accessoryViewTypeForAsset:(id)asset;
- (void)_invalidateAccessoryViewControllersForAssetReferences:(id)references;
- (void)photosDetailsUIViewControllerCompositionDidChange:(id)change;
- (void)setDelegate:(id)delegate;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUOneUpAccessoryViewControllersManager

- (PUOneUpAccessoryViewControllersManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewModel:(id)model didChange:(id)change
{
  v63 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  changeCopy = change;
  selfCopy = self;
  _accessoryViewControllers = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewControllers];
  v41 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44 = _accessoryViewControllers;
  v40 = changeCopy;
  if ([changeCopy assetsDataSourceDidChange])
  {
    assetsDataSource = [modelCopy assetsDataSource];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    keyEnumerator = [_accessoryViewControllers keyEnumerator];
    allObjects = [keyEnumerator allObjects];

    obj = allObjects;
    v11 = [allObjects countByEnumeratingWithState:&v56 objects:v62 count:16];
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
          v16 = [assetsDataSource assetReferenceForAssetReference:v15];
          asset = [v15 asset];
          asset2 = [v16 asset];
          if ([asset isEqual:asset2])
          {
            mediaSubtypes = [asset mediaSubtypes];
            if (mediaSubtypes != [asset2 mediaSubtypes])
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

    changeCopy = v40;
    _accessoryViewControllers = v44;
  }

  obja = [changeCopy assetViewModelChangesByAssetReference];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  keyEnumerator2 = [_accessoryViewControllers keyEnumerator];
  v21 = [keyEnumerator2 countByEnumeratingWithState:&v52 objects:v61 count:16];
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
          objc_enumerationMutation(keyEnumerator2);
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
            focusValueChanged = [v32 focusValueChanged];
            if (focusValueChanged)
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
          v34 = [modelCopy assetViewModelForAssetReference:v25];
          [v34 focusValue];
          if (fabs(v36) < 2.0)
          {
            v37 = focusValueChanged;
          }

          else
          {
            v37 = 0;
          }

          if ((v37 & 1) == 0)
          {
            array = v42;
            if (!v42)
            {
              array = [MEMORY[0x1E695DF70] array];
            }

            v42 = array;
            [array addObject:v25];
          }

          goto LABEL_39;
        }

LABEL_29:
        v34 = v27;
LABEL_39:

LABEL_40:
      }

      v22 = [keyEnumerator2 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v22);
  }

  else
  {
    v42 = 0;
  }

  if ([v42 count])
  {
    [(PUOneUpAccessoryViewControllersManager *)selfCopy _invalidateAccessoryViewControllersForAssetReferences:v42];
  }
}

- (void)photosDetailsUIViewControllerCompositionDidChange:(id)change
{
  if (self->_delegateRespondsTo.invalidateAccessoryLayout)
  {
    delegate = [(PUOneUpAccessoryViewControllersManager *)self delegate];
    [delegate oneUpAccessoryViewControllersManagerInvalidateAccessoryLayout:self];
  }
}

- (BOOL)photosDetailsUIViewControllerRequestDismissal:(id)dismissal
{
  if (!self->_delegateRespondsTo.requestDismissal)
  {
    return 0;
  }

  selfCopy = self;
  delegate = [(PUOneUpAccessoryViewControllersManager *)self delegate];
  LOBYTE(selfCopy) = [delegate oneUpAccessoryViewControllersManagerRequestAccessoryDismissal:selfCopy];

  return selfCopy;
}

- (id)_createAccessoryViewControllerForAssetReference:(id)reference
{
  v45 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  asset = [referenceCopy asset];
  v7 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:asset];

  v8 = 0;
  if (v7 <= 2)
  {
    if (v7 == 2)
    {
      asset2 = [referenceCopy asset];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([asset2 canPerformEditOperation:2])
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
          *&buf[14] = asset2;
          _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_ERROR, "%@: Unknown asset class: %@", buf, 0x16u);
        }

        v12 = 38;
      }

      browsingSession = [(PUOneUpAccessoryViewControllersManager *)self browsingSession];
      photosDetailsContext = [browsingSession photosDetailsContext];

      v21 = [MEMORY[0x1E69C3888] photosDetailsContextForAsset:asset2 parentContext:photosDetailsContext];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __90__PUOneUpAccessoryViewControllersManager__createAccessoryViewControllerForAssetReference___block_invoke;
      v36[3] = &unk_1E7B7CD48;
      v22 = referenceCopy;
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
        delegate = [(PUOneUpAccessoryViewControllersManager *)self delegate];
        v28 = [delegate oneUpAccessoryViewControllersManager:self preventAlbumAttributionWidgetForAssetReference:v22];

        if (v28)
        {
          v12 |= 0x80uLL;
        }
      }

      browsingSession2 = [(PUOneUpAccessoryViewControllersManager *)self browsingSession];
      viewModel = [browsingSession2 viewModel];
      v31 = [viewModel assetViewModelForAssetReference:v22];

      v32 = objc_alloc_init(MEMORY[0x1E69C3880]);
      [v32 setOptions:v12];
      unlockDeviceStatus = [(PUOneUpAccessoryViewControllersManager *)self unlockDeviceStatus];
      [v32 setUnlockDeviceStatus:unlockDeviceStatus];

      unlockDeviceHandlerWithActionType = [(PUOneUpAccessoryViewControllersManager *)self unlockDeviceHandlerWithActionType];
      [v32 setUnlockDeviceHandlerWithActionType:unlockDeviceHandlerWithActionType];

      [v32 setScrollPocketsEnabled:{-[PUOneUpAccessoryViewControllersManager scrollPocketsEnabled](self, "scrollPocketsEnabled")}];
      v8 = [[PUPhotosDetailsViewController alloc] initWithContext:v21 configuration:v32 assetViewModel:v31];
      [(PXPhotosDetailsUIViewController *)v8 setDelegate:self];
    }

    else if (v7 == 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpAccessoryViewControllersManager.m" lineNumber:252 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else if (v7 == 3)
  {
    browsingSession3 = [(PUOneUpAccessoryViewControllersManager *)self browsingSession];
    viewModel2 = [browsingSession3 viewModel];
    v15 = [viewModel2 assetViewModelForAssetReference:referenceCopy];

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

- (int64_t)_accessoryViewTypeForAsset:(id)asset
{
  assetCopy = asset;
  v4 = +[PUOneUpSettings sharedInstance];
  accessoryViewType = [v4 accessoryViewType];

  if ([assetCopy needsSensitivityProtection])
  {
    goto LABEL_2;
  }

  if (accessoryViewType != 1)
  {
    goto LABEL_13;
  }

  if ([PUCommentsViewController canShowCommentsForAsset:assetCopy])
  {
    accessoryViewType = 3;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_2:
    accessoryViewType = 0;
  }

  else
  {
    v6 = assetCopy;
    if ([v6 isTrashed])
    {
      accessoryViewType = 0;
    }

    else if ([v6 isRecoveredAsset])
    {
      accessoryViewType = 0;
    }

    else
    {
      accessoryViewType = 2;
    }
  }

LABEL_13:

  return accessoryViewType;
}

- (void)_invalidateAccessoryViewControllersForAssetReferences:(id)references
{
  v16 = *MEMORY[0x1E69E9840];
  referencesCopy = references;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [referencesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(referencesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        _accessoryViewControllers = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewControllers];
        [_accessoryViewControllers removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [referencesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)assetReferenceForAccessoryViewController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  _accessoryViewControllers = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewControllers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [_accessoryViewControllers keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [_accessoryViewControllers objectForKey:v10];

        if (v11 == controllerCopy)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)accessoryViewControllerForAssetReference:(id)reference createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v35 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  browsingSession = [(PUOneUpAccessoryViewControllersManager *)self browsingSession];
  viewModel = [browsingSession viewModel];
  assetsDataSource = [viewModel assetsDataSource];

  v29 = assetsDataSource;
  v10 = [assetsDataSource assetReferenceForAssetReference:referenceCopy];

  _accessoryViewControllers = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewControllers];
  v12 = [_accessoryViewControllers objectForKey:v10];
  if (!v12)
  {
    v26 = neededCopy;
    selfCopy = self;
    v28 = _accessoryViewControllers;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    keyEnumerator = [_accessoryViewControllers keyEnumerator];
    v14 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(keyEnumerator);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          asset = [v18 asset];
          asset2 = [v10 asset];
          v21 = [asset isEqual:asset2];

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

        v15 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v15);
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      _accessoryViewControllers = v28;
    }

    else
    {
      _accessoryViewControllers = v28;
      if (v26)
      {
        v12 = [(PUOneUpAccessoryViewControllersManager *)selfCopy _createAccessoryViewControllerForAssetReference:v10];
        [v28 setObject:v12 forKey:v10];
      }
    }
  }

  return v12;
}

- (BOOL)shouldHideStatusBarWhenShowingAccessoryViewControllerForAssetReference:(id)reference
{
  referenceCopy = reference;
  _spec = [(PUOneUpAccessoryViewControllersManager *)self _spec];
  hideStatusBarWhenShowingAccessoryView = [_spec hideStatusBarWhenShowingAccessoryView];

  asset = [referenceCopy asset];

  v8 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:asset];
  if (v8 == 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = hideStatusBarWhenShowingAccessoryView;
  }

  return v8 && v9;
}

- (BOOL)shouldHideNavigationBarWhenShowingAccessoryViewControllerForAssetReference:(id)reference
{
  referenceCopy = reference;
  _spec = [(PUOneUpAccessoryViewControllersManager *)self _spec];
  hideNavigationBarWhenShowingAccessoryView = [_spec hideNavigationBarWhenShowingAccessoryView];

  asset = [referenceCopy asset];

  v8 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:asset];
  if (!v8)
  {
    return 0;
  }

  if (v8 == 3)
  {
    mEMORY[0x1E69C3640] = [MEMORY[0x1E69C3640] sharedInstance];
    if ([mEMORY[0x1E69C3640] enableSideCommentsInLandscape])
    {
      hideNavigationBarWhenShowingAccessoryView = [(PUOneUpAccessoryViewControllersManager *)self _isPhoneAndLandscape];
    }

    else
    {
      hideNavigationBarWhenShowingAccessoryView = 0;
    }
  }

  return hideNavigationBarWhenShowingAccessoryView;
}

- (BOOL)shouldHideToolbarWhenShowingAccessoryViewControllerForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = +[PUOneUpSettings sharedInstance];
  hideToolbarWhenShowingAccessoryView = [v5 hideToolbarWhenShowingAccessoryView];

  asset = [referenceCopy asset];

  v8 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:asset];
  result = 0;
  if (v8 && v8 != 3)
  {
    if (hideToolbarWhenShowingAccessoryView)
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 0;
  }

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  orientation = [currentDevice2 orientation];

  if ((orientation - 1) > 3)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    windows = [mEMORY[0x1E69DC668] windows];
    firstObject = [windows firstObject];
    windowScene = [firstObject windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    v7 = interfaceOrientation - 3;
  }

  else
  {
    v7 = orientation - 3;
  }

  return v7 < 2;
}

- (int64_t)accessoryViewTypeForAsset:(id)asset
{
  assetCopy = asset;
  v6 = [(PUOneUpAccessoryViewControllersManager *)self _accessoryViewTypeForAsset:assetCopy];
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

    if (![PUCommentsViewController canShowCommentsForAsset:assetCopy])
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpAccessoryViewControllersManager.m" lineNumber:86 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_11:

  return v8;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (PUOneUpAccessoryViewControllersManager)initWithBrowsingSession:(id)session spec:(id)spec
{
  sessionCopy = session;
  specCopy = spec;
  v15.receiver = self;
  v15.super_class = PUOneUpAccessoryViewControllersManager;
  v9 = [(PUOneUpAccessoryViewControllersManager *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_browsingSession, session);
    viewModel = [(PUBrowsingSession *)v10->_browsingSession viewModel];
    [viewModel registerChangeObserver:v10];

    objc_storeStrong(&v10->__spec, spec);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    accessoryViewControllers = v10->__accessoryViewControllers;
    v10->__accessoryViewControllers = strongToStrongObjectsMapTable;

    v10->_scrollPocketsEnabled = 1;
    [MEMORY[0x1E69C38B8] preloadResources];
  }

  return v10;
}

- (PUOneUpAccessoryViewControllersManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpAccessoryViewControllersManager.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PUOneUpAccessoryViewControllersManager init]"}];

  abort();
}

@end