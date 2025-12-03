@interface PXPhotosBarsController
- (BOOL)_actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type;
- (BOOL)shouldUseCompactBarButtons;
- (NSString)selectModeCaptionText;
- (PLDateRangeFormatter)dateRangeFormatter;
- (PXBarsControllerDelegate)delegate;
- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory;
- (PXPhotosBarsController)init;
- (PXPhotosBarsController)initWithPhotosContentController:(id)controller;
- (PXPhotosContentController)contentController;
- (PXPresentationEnvironment)presentationEnvironment;
- (UIButton)selectModeChevronButton;
- (UILabel)selectModeCaptionLabel;
- (id)_identifierForActionType:(id)type;
- (id)_makeActionMenu;
- (id)barAppearance;
- (id)barItemIdentifiersToInvalidateForPhotosViewModelChange:(unint64_t)change;
- (id)createActionMenuController;
- (id)createAssetActionManagerForAssetReference:(id)reference;
- (id)createBarButtonItemForIdentifier:(id)identifier placement:(unint64_t)placement;
- (id)createCollaborationViewFromAssetsDataSource:(id)source;
- (id)filterButtonController;
- (id)presentationEnvironmentForActionPerformer:(id)performer;
- (id)undoManagerForActionPerformer:(id)performer;
- (int64_t)abilityToPlayMovieForAssetCollection:(id)collection;
- (void)_appIntentsAssetsActionDidFinishNotification:(id)notification;
- (void)_handleActionTypeBarButtonItem:(id)item;
- (void)_updateSelectModeCaption;
- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state;
- (void)assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection;
- (void)configureNavigationItem:(id)item withTitle:(id)title;
- (void)handleActionMenuBarButtonItem:(id)item;
- (void)handleAddButtonItem:(id)item;
- (void)handleCancelBarButtonItem:(id)item;
- (void)handleCloseButton:(id)button;
- (void)handleCurationBarButtonItem:(id)item;
- (void)handleDeselectAllBarButtonItem:(id)item;
- (void)handleDismissButton:(id)button;
- (void)handleExplicitBackButton:(id)button;
- (void)handleInfoButton:(id)button;
- (void)handleMergeDuplicatesButton:(id)button;
- (void)handleOpenInPhotosAppButton:(id)button;
- (void)handleSearchButton:(id)button;
- (void)handleSelectAllBarButtonItem:(id)item;
- (void)handleSelectBarButtonItem:(id)item;
- (void)handleToggleSidebar:(id)sidebar;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosGridActionPerformer:(id)performer contentFilterStateChanged:(id)changed;
- (void)setContentSizeCategory:(id)category;
- (void)setEndButtonSpacing:(double)spacing;
- (void)setInterButtonSpacing:(double)spacing;
- (void)setWantsToggleSidebarButton:(BOOL)button;
- (void)updateBars;
- (void)viewControllerDidChange:(id)change;
@end

@implementation PXPhotosBarsController

- (id)barItemIdentifiersToInvalidateForPhotosViewModelChange:(unint64_t)change
{
  selfCopy = self;
  PXPhotosBarsController.barItemIdentifiersToInvalidateForPhotosViewModelChange(_:)(change);

  v5 = sub_1A524CA14();

  return v5;
}

- (BOOL)shouldUseCompactBarButtons
{
  selfCopy = self;
  v3 = PXPhotosBarsController.shouldUseCompactBarButtons.getter();

  return v3 & 1;
}

- (void)handleCurationBarButtonItem:(id)item
{
  if (item)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    selfCopy2 = self;
  }

  PXPhotosBarsController.handleCurationBarButtonItem(_:)();
}

- (void)configureNavigationItem:(id)item withTitle:(id)title
{
  if (title)
  {
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  itemCopy = item;
  selfCopy = self;
  v11.value._countAndFlagsBits = v6;
  v11.value._object = v8;
  PXPhotosBarsController.configureNavigationItem(_:withTitle:)(itemCopy, v11);
}

- (PXPhotosContentController)contentController
{
  WeakRetained = objc_loadWeakRetained(&self->_contentController);

  return WeakRetained;
}

- (PXBarsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  v44[1] = *MEMORY[0x1E69E9840];
  observableCopy = observable;
  if (PXPhotosBarsControllerViewModelObserverContext == context)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __55__PXPhotosBarsController_observable_didChange_context___block_invoke;
    v40 = &unk_1E774C648;
    v11 = v10;
    v41 = v11;
    v12 = _Block_copy(&v37);
    if ((change & 2) != 0 && ((-[PXPhotosBarsController lastSelectionSnapshot](self, "lastSelectionSnapshot", v37, v38, v39, v40), (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, -[PXPhotosBarsController viewModel](self, "viewModel"), v15 = objc_claimAutoreleasedReturnValue(), [v15 selectionManager], v16 = objc_claimAutoreleasedReturnValue(), -[PXPhotosBarsController lastSelectionSnapshot](self, "lastSelectionSnapshot"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "hasAnyChangesFromSelection:", v17), v17, v16, v15, v14, v18)))
    {
      viewModel = [(PXPhotosBarsController *)self viewModel];
      selectionSnapshot = [viewModel selectionSnapshot];
      [(PXPhotosBarsController *)self setLastSelectionSnapshot:selectionSnapshot];

      v12[2](v12);
      v21 = 1;
      if ((change & 4) == 0)
      {
LABEL_16:
        if ((change & 0x100200200024) != 0)
        {
          v12[2](v12);
          v21 = 1;
        }

        if ((change & 0x84000) != 0)
        {
          [v11 addObject:*off_1E7721F38];
          v21 = 1;
        }

        v22 = [(PXPhotosBarsController *)self barItemIdentifiersToInvalidateForPhotosViewModelChange:change, v37, v38, v39, v40];
        if ([v22 count])
        {
          [v11 addObjectsFromArray:v22];
        }

        else
        {
          v30 = v21 ^ 1;
          if ((change & 0x102402002020) != 0)
          {
            v30 = 0;
          }

          if (v30)
          {
            goto LABEL_30;
          }
        }

        [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v11];
        [(PXBarsController *)self invalidateBars];
LABEL_30:

        goto LABEL_40;
      }
    }

    else
    {
      v21 = 0;
      if ((change & 4) == 0)
      {
        goto LABEL_16;
      }
    }

    [(PXBarsController *)self setWantsAnimatedBarsUpdate:1, v37, v38, v39, v40];
    goto LABEL_16;
  }

  if (PXPhotosAppGridViewModelObserverContext == context)
  {
    if ((change & 8) == 0)
    {
      goto LABEL_40;
    }

    v44[0] = *off_1E7721EB8;
    v23 = MEMORY[0x1E695DEC8];
    v24 = v44;
    goto LABEL_38;
  }

  if (PXPhotosBarsControllerSpecObserverContext == context)
  {
    if ((change & 1) == 0)
    {
      goto LABEL_40;
    }

    viewModel2 = [(PXPhotosBarsController *)self viewModel];
    specManager = [viewModel2 specManager];
    spec = [specManager spec];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    [(PXPhotosBarsController *)self setContentSizeCategory:preferredContentSizeCategory];

    [spec interButtonSpacing];
    [(PXPhotosBarsController *)self setInterButtonSpacing:?];
    [spec endButtonSpacing];
    [(PXPhotosBarsController *)self setEndButtonSpacing:?];
    -[PXPhotosBarsController setWantsToggleSidebarButton:](self, "setWantsToggleSidebarButton:", [spec wantsToggleSidebarButton]);
LABEL_35:

    goto LABEL_40;
  }

  if (PXPhotosBarsControllerAssetTypeCountObserverContext == context)
  {
    if ((change & 1) == 0)
    {
      goto LABEL_40;
    }

    v31 = *off_1E7721E98;
    v43[0] = *off_1E7721EF8;
    v43[1] = v31;
    spec = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    viewModel3 = [(PXPhotosBarsController *)self viewModel];
    wantsSelectModeCaptionInContextMenu = [viewModel3 wantsSelectModeCaptionInContextMenu];

    if (wantsSelectModeCaptionInContextMenu)
    {
      v34 = [spec arrayByAddingObject:*off_1E7721F00];

      spec = v34;
    }

    [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:spec];
    [(PXBarsController *)self invalidateBars];
    goto LABEL_35;
  }

  if (PXSharedLibraryStatusProviderObservationContext_231136 == context)
  {
    if ((change & 3) == 0)
    {
      goto LABEL_40;
    }

    v42 = *off_1E7721E00;
    v23 = MEMORY[0x1E695DEC8];
    v24 = &v42;
LABEL_38:
    v35 = [v23 arrayWithObjects:v24 count:1];
    [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v35];

LABEL_39:
    [(PXBarsController *)self invalidateBars];
    goto LABEL_40;
  }

  if (PXLibraryFilterStateObservationContext_231137 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1342 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (change)
  {
    goto LABEL_39;
  }

LABEL_40:
  [(PXBarsController *)self updateIfNeeded];
}

void __55__PXPhotosBarsController_observable_didChange_context___block_invoke(uint64_t a1)
{
  v13[20] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *off_1E7721EE8;
  v13[0] = *off_1E7721E00;
  v13[1] = v2;
  v3 = *off_1E7721E08;
  v13[2] = *off_1E7721EF8;
  v13[3] = v3;
  v4 = *off_1E7721F50;
  v13[4] = *off_1E7721F08;
  v13[5] = v4;
  v5 = *off_1E7721ED8;
  v13[6] = *off_1E7721E48;
  v13[7] = v5;
  v6 = *off_1E7721E88;
  v13[8] = *off_1E7721E80;
  v13[9] = v6;
  v7 = *off_1E7721E40;
  v13[10] = *off_1E7721E18;
  v13[11] = v7;
  v8 = *off_1E7721EA0;
  v13[12] = *off_1E7721E98;
  v13[13] = v8;
  v9 = *off_1E7721EB0;
  v13[14] = *off_1E7721EA8;
  v13[15] = v9;
  v10 = *off_1E7721EE0;
  v13[16] = *off_1E7721F00;
  v13[17] = v10;
  v11 = *off_1E7721F20;
  v13[18] = *off_1E7721F40;
  v13[19] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:20];
  [v1 addObjectsFromArray:v12];
}

- (void)assetCollectionActionPerformer:(id)performer playMovieForAssetCollection:(id)collection
{
  v24 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  viewController = [(PXBarsController *)self viewController];
  if ([viewController tryToPresentMovieForAssetCollection:collectionCopy])
  {
    goto LABEL_2;
  }

  v13 = collectionCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = v13;

    if (v14)
    {
      moviePresenter = [(PXPhotosBarsController *)self moviePresenter];
      v16 = moviePresenter;
      if (moviePresenter)
      {
        presentingViewController = [moviePresenter presentingViewController];
        if (viewController == presentingViewController)
        {

          goto LABEL_18;
        }

        if (!viewController)
        {
          goto LABEL_18;
        }
      }

      else if (!viewController)
      {
        v16 = 0;
        goto LABEL_18;
      }

      v18 = [PXMoviePresenter moviePresenterWithPresentingViewController:viewController];

      [(PXPhotosBarsController *)self setMoviePresenter:v18];
      v16 = v18;
LABEL_18:
      [v16 presentMovieViewControllerForAssetCollection:v14 keyAssetFetchResult:0 preferredTransitionType:1];

LABEL_2:
      v7 = MEMORY[0x1E6991F28];
      v8 = *MEMORY[0x1E6991E08];
      v21[0] = collectionCopy;
      v9 = *MEMORY[0x1E6991E20];
      v19 = v8;
      v20 = v9;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v21[1] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v19 count:2];
      [v7 sendEvent:@"com.apple.photos.CPAnalytics.assetCollectionMoviePlayed" withPayload:{v12, v19, v20, v21[0]}];

      goto LABEL_13;
    }
  }

  else
  {
  }

  v11 = PLGridZeroGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v23 = v13;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "Can't play movie for unexpected asset collection: %@", buf, 0xCu);
  }

LABEL_13:
}

- (int64_t)abilityToPlayMovieForAssetCollection:(id)collection
{
  collectionCopy = collection;
  viewController = [(PXBarsController *)self viewController];
  v6 = [viewController abilityToPlayMovieForAssetCollection:collectionCopy];

  if (!v6)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() & 1;
  }

  return v6;
}

- (void)photosGridActionPerformer:(id)performer contentFilterStateChanged:(id)changed
{
  changedCopy = changed;
  viewModel = [(PXPhotosBarsController *)self viewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PXPhotosBarsController_photosGridActionPerformer_contentFilterStateChanged___block_invoke;
  v8[3] = &unk_1E7748CB8;
  v9 = changedCopy;
  v7 = changedCopy;
  [viewModel performChanges:v8];
}

- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory
{
  viewModel = [(PXPhotosBarsController *)self viewModel];
  memoryAssetsActionFactory = [viewModel memoryAssetsActionFactory];

  return memoryAssetsActionFactory;
}

- (id)presentationEnvironmentForActionPerformer:(id)performer
{
  actionType = [performer actionType];
  v5 = [(PXPhotosBarsController *)self _identifierForActionType:actionType];
  v6 = [(PXBarsController *)self cachedBarButtonItemForIdentifier:v5];
  delegate = [(PXPhotosBarsController *)self delegate];
  v8 = [delegate presentationEnvironmentForPhotosBarsController:self withSourceItem:v6];
  v9 = v8;
  if (!v8)
  {
    [(PXBarsController *)self viewController];
    objc_claimAutoreleasedReturnValue();
    PXPresentationEnvironmentForSender();
  }

  v10 = v8;

  return v10;
}

- (id)undoManagerForActionPerformer:(id)performer
{
  contentController = [(PXPhotosBarsController *)self contentController];
  undoManager = [contentController undoManager];

  return undoManager;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  controllerCopy = controller;
  presentationEnvironment = [(PXPhotosBarsController *)self presentationEnvironment];
  [presentationEnvironment dismissViewController:controllerCopy animated:1 completionHandler:handlerCopy];

  return presentationEnvironment != 0;
}

- (BOOL)_actionPerformer:(id)performer presentViewController:(id)controller
{
  performerCopy = performer;
  controllerCopy = controller;
  v9 = controllerCopy;
  if (!controllerCopy)
  {
    px_isDelayingPresentation = 0;
    goto LABEL_23;
  }

  v10 = controllerCopy;
  popoverPresentationController = [v10 popoverPresentationController];
  if (popoverPresentationController)
  {
    actionType = [performerCopy actionType];
    v13 = [(PXPhotosBarsController *)self _identifierForActionType:actionType];
    v14 = v13;
    v15 = *off_1E7721F08;
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    sender = [performerCopy sender];
    if (!sender)
    {
      sender = [(PXBarsController *)self cachedBarButtonItemForIdentifier:v16];
      if (!sender)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          selectionSnapshot = [performerCopy selectionSnapshot];
          v47 = 0;
          v48 = &v47;
          v49 = 0x3032000000;
          v50 = __Block_byref_object_copy__231155;
          v51 = __Block_byref_object_dispose__231156;
          v52 = 0;
          selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __65__PXPhotosBarsController__actionPerformer_presentViewController___block_invoke;
          v42[3] = &unk_1E7748C90;
          v45 = &v47;
          v46 = a2;
          v39 = selectionSnapshot;
          v43 = v39;
          selfCopy = self;
          [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v42];

          if (v48[5])
          {
            contentController = [(PXPhotosBarsController *)self contentController];
            v28 = [contentController regionOfInterestForAssetReference:v48[5]];

            if (v28)
            {
              viewController = [(PXBarsController *)self viewController];
              view = [viewController view];

              [popoverPresentationController setSourceView:view];
              [v28 rectInCoordinateSpace:view];
              [popoverPresentationController setSourceRect:?];
            }
          }

          _Block_object_dispose(&v47, 8);
        }

        else
        {
          viewController2 = [(PXBarsController *)self viewController];
          view2 = [viewController2 view];
          [popoverPresentationController setSourceView:view2];
        }

        goto LABEL_19;
      }
    }

    v18 = sender;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v18;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v33 = objc_opt_class();
        v37 = NSStringFromClass(v33);
        px_descriptionForAssertionMessage = [v18 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1112 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"sender", v37, px_descriptionForAssertionMessage}];
      }

      [popoverPresentationController setSourceView:v18];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        viewController3 = [(PXBarsController *)self viewController];
        view3 = [viewController3 view];
        [popoverPresentationController setSourceView:view3];

        goto LABEL_18;
      }

      v18 = v18;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = objc_opt_class();
        v38 = NSStringFromClass(v34);
        px_descriptionForAssertionMessage2 = [v18 px_descriptionForAssertionMessage];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1115 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"sender", v38, px_descriptionForAssertionMessage2}];
      }

      [popoverPresentationController setBarButtonItem:v18];
    }

LABEL_18:
LABEL_19:
  }

  presentationEnvironment = [(PXPhotosBarsController *)self presentationEnvironment];
  px_isDelayingPresentation = 1;
  [presentationEnvironment presentViewController:v10 animated:1 completionHandler:0];

  presentingViewController = [v10 presentingViewController];
  if (!presentingViewController)
  {
    px_isDelayingPresentation = [v10 px_isDelayingPresentation];
  }

LABEL_23:
  return px_isDelayingPresentation;
}

void __65__PXPhotosBarsController__actionPerformer_presentViewController___block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  if (v4)
  {
    *(v3 + 40) = 0;

    *a3 = 1;
    return;
  }

  v8 = [*(a1 + 32) dataSource];
  v9 = a2[1];
  v22[0] = *a2;
  v22[1] = v9;
  v10 = [v8 objectReferenceAtIndexPath:v22];

  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = *(a1 + 56);
    v15 = *(a1 + 40);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v13 handleFailureInMethod:v14 object:v15 file:@"PXPhotosBarsController.m" lineNumber:1126 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[selectionSnapshot.dataSource objectReferenceAtIndexPath:indexPath]", v17}];
LABEL_9:

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = *(a1 + 56);
    v19 = *(a1 + 40);
    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    v21 = [v10 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:v18 object:v19 file:@"PXPhotosBarsController.m" lineNumber:1126 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[selectionSnapshot.dataSource objectReferenceAtIndexPath:indexPath]", v17, v21}];

    goto LABEL_9;
  }

LABEL_5:
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (BOOL)actionPerformer:(id)performer transitionToViewController:(id)controller transitionType:(int64_t)type
{
  performerCopy = performer;
  controllerCopy = controller;
  switch(type)
  {
    case 1:
      viewController = [(PXBarsController *)self viewController];
      navigationController = [viewController navigationController];

      v11 = navigationController != 0;
      if (navigationController)
      {
        [navigationController pushViewController:controllerCopy animated:1];
      }

      break;
    case 2:
      v11 = [(PXPhotosBarsController *)self _actionPerformer:performerCopy presentViewController:controllerCopy];
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1096 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v11 = 0;
      break;
  }

  return v11;
}

- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  performerCopy = performer;
  v10 = performerCopy;
  if (state == 10)
  {
    [(PXPhotosBarsController *)self setActiveActionPerformer:performerCopy];
    [(PXPhotosBarsController *)self setLastActionPerformer:v10];
  }

  else
  {
    activeActionPerformer = [(PXPhotosBarsController *)self activeActionPerformer];

    if (activeActionPerformer == v10)
    {
      [(PXPhotosBarsController *)self setActiveActionPerformer:0];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 shouldExitSelectModeForState:state])
    {
      lastActionPerformer = [(PXPhotosBarsController *)self lastActionPerformer];

      if (lastActionPerformer == v10)
      {
        viewModel = [(PXPhotosBarsController *)self viewModel];
        [viewModel performChanges:&__block_literal_global_517];
      }
    }
  }
}

- (void)_appIntentsAssetsActionDidFinishNotification:(id)notification
{
  v7 = *MEMORY[0x1E69E9840];
  viewModel = [(PXPhotosBarsController *)self viewModel];
  if ([viewModel isInSelectMode])
  {
    v4 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> received the 'AppIntentsAssetsActionDidFinishNotification': Will dismiss select mode", &v5, 0xCu);
    }

    [viewModel performChanges:&__block_literal_global_514_231172];
  }
}

- (void)_handleActionTypeBarButtonItem:(id)item
{
  v18 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  actionTypeByBarButtonItem = [(PXPhotosBarsController *)self actionTypeByBarButtonItem];
  v6 = [actionTypeByBarButtonItem objectForKey:itemCopy];

  if (!v6)
  {
    PXAssertGetLog();
  }

  viewModel = [(PXPhotosBarsController *)self viewModel];
  assetActionManager = [viewModel assetActionManager];

  v9 = [assetActionManager actionPerformerForActionType:v6];

  if (v9 || (-[PXPhotosBarsController viewModel](self, "viewModel"), v10 = objc_claimAutoreleasedReturnValue(), [v10 gridActionManager], v11 = objc_claimAutoreleasedReturnValue(), v10, objc_msgSend(v11, "actionPerformerForActionType:", v6), v9 = objc_claimAutoreleasedReturnValue(), v11, v9) || (-[PXPhotosBarsController viewModel](self, "viewModel"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "assetCollectionActionManager"), v13 = objc_claimAutoreleasedReturnValue(), v12, objc_msgSend(v13, "actionPerformerForActionType:", v6), v9 = objc_claimAutoreleasedReturnValue(), v13, v9))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__PXPhotosBarsController__handleActionTypeBarButtonItem___block_invoke;
    v14[3] = &unk_1E774C5C0;
    v15 = v6;
    [v9 performActionWithCompletionHandler:v14];
  }

  else
  {
    v9 = PLGridZeroGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "Missing action performer for bar button action type %{public}@", buf, 0xCu);
    }
  }
}

void __57__PXPhotosBarsController__handleActionTypeBarButtonItem___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLGridZeroGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Action failed for bar button action type %{public}@: %@", &v8, 0x16u);
    }
  }
}

- (void)handleToggleSidebar:(id)sidebar
{
  viewController = [(PXBarsController *)self viewController];
  px_splitViewController = [viewController px_splitViewController];
  [px_splitViewController toggleSidebarVisibilityAnimated];
}

- (void)handleOpenInPhotosAppButton:(id)button
{
  buttonCopy = button;
  viewModel = [(PXPhotosBarsController *)self viewModel];
  appViewModel = [viewModel appViewModel];
  openInPhotosAppButtonNavigationDestination = [appViewModel openInPhotosAppButtonNavigationDestination];

  if (openInPhotosAppButtonNavigationDestination)
  {
    if ([openInPhotosAppButtonNavigationDestination type] != 14)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1002 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    additionalAttributes = [openInPhotosAppButtonNavigationDestination additionalAttributes];
    if (additionalAttributes)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        searchText = [additionalAttributes searchText];
        v11 = PXProgrammaticNavigationURLForSearchQuery(searchText);
        PXOpenSensitiveURL(v11, 0);

        goto LABEL_9;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      px_descriptionForAssertionMessage = [additionalAttributes px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:994 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"destination.additionalAttributes", v15, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:994 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"destination.additionalAttributes", v15}];
    }

    goto LABEL_5;
  }

  v12 = PLUIGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "No navigation destination provided for the 'open in Photos app' button", buf, 2u);
  }

LABEL_9:
}

- (void)handleSearchButton:(id)button
{
  buttonCopy = button;
  delegate = [(PXPhotosBarsController *)self delegate];
  [delegate photosBarsController:self didRequestSearchWithSender:buttonCopy];
}

- (void)handleInfoButton:(id)button
{
  viewModel = [(PXPhotosBarsController *)self viewModel];
  infoActionHandler = [viewModel infoActionHandler];

  if (infoActionHandler)
  {
    viewController = [(PXBarsController *)self viewController];
    infoActionHandler[2](infoActionHandler, viewController);
  }
}

- (void)handleAddButtonItem:(id)item
{
  viewModel = [(PXPhotosBarsController *)self viewModel];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  v6 = [assetCollectionActionManager actionPerformerForActionType:*off_1E7721C30];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PXPhotosBarsController_handleAddButtonItem___block_invoke;
  v7[3] = &unk_1E774C5C0;
  v7[4] = self;
  [v6 performActionWithCompletionHandler:v7];
}

void __46__PXPhotosBarsController_handleAddButtonItem___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLUIGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"No";
    if (a2)
    {
      v7 = @"Yes";
    }

    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Add action completed with success: %@, error: %@", &v11, 0x16u);
  }

  if (a2)
  {
    v8 = [*(a1 + 32) viewModel];
    v9 = [v8 canExitSelectMode];

    if (v9)
    {
      v10 = [*(a1 + 32) viewModel];
      [v10 performChanges:&__block_literal_global_507_231185];
    }
  }
}

- (void)handleExplicitBackButton:(id)button
{
  buttonCopy = button;
  delegate = [(PXPhotosBarsController *)self delegate];
  [delegate photosBarsController:self didRequestDismissWithSender:buttonCopy];
}

- (void)handleCloseButton:(id)button
{
  buttonCopy = button;
  delegate = [(PXPhotosBarsController *)self delegate];
  [delegate photosBarsController:self didRequestDismissWithSender:buttonCopy];
}

- (void)handleDismissButton:(id)button
{
  buttonCopy = button;
  delegate = [(PXPhotosBarsController *)self delegate];
  [delegate photosBarsController:self didRequestDismissWithSender:buttonCopy];
}

- (id)_makeActionMenu
{
  v26 = *MEMORY[0x1E69E9840];
  createActionMenuController = [(PXPhotosBarsController *)self createActionMenuController];
  [(PXPhotosBarsController *)self setMenuController:createActionMenuController];

  menuController = [(PXPhotosBarsController *)self menuController];
  viewModel = [(PXPhotosBarsController *)self viewModel];
  objc_customExcludedActionTypesProvider = [viewModel objc_customExcludedActionTypesProvider];
  v7 = objc_customExcludedActionTypesProvider[2]();
  [menuController setExcludedActionTypes:v7];

  v8 = MEMORY[0x1E69DCC60];
  actions = [menuController actions];
  v10 = [v8 menuWithChildren:actions];

  presentationEnvironment = [(PXPhotosBarsController *)self presentationEnvironment];
  if (presentationEnvironment)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    appViewModel = [viewModel appViewModel];
    internalMenuProducers = [appViewModel internalMenuProducers];

    v14 = [internalMenuProducers countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        v17 = 0;
        v18 = v10;
        do
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(internalMenuProducers);
          }

          v19 = [*(*(&v21 + 1) + 8 * v17) makeInternalMenuWithPresentationEnvironment:presentationEnvironment];
          v10 = [v18 mergingWithPhotosInternalMenu:v19];

          ++v17;
          v18 = v10;
        }

        while (v15 != v17);
        v15 = [internalMenuProducers countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }
  }

  return v10;
}

- (void)handleActionMenuBarButtonItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    px_descriptionForAssertionMessage = [itemCopy px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:920 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sender", v8, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:920 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sender", v8}];
  }

LABEL_3:
  _makeActionMenu = [(PXPhotosBarsController *)self _makeActionMenu];
  [itemCopy setMenu:_makeActionMenu];
}

- (id)createActionMenuController
{
  v32[3] = *MEMORY[0x1E69E9840];
  viewModel = [(PXPhotosBarsController *)self viewModel];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  sharedInstance = [off_1E7721810 sharedInstance];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([viewModel allowsSwitchLibraryAction])
  {
    sharedLibraryStatusProvider = [(PXPhotosBarsController *)self sharedLibraryStatusProvider];
    hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

    if (hasSharedLibraryOrPreview)
    {
      v9 = *off_1E77220E0;
      v32[0] = *off_1E77220D8;
      v32[1] = v9;
      v32[2] = *off_1E77220E8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
      [v6 addObjectsFromArray:v10];
    }
  }

  if ([viewModel supportsPeopleActions])
  {
    v11 = *off_1E7721C40;
    v31[0] = *off_1E7721D10;
    v31[1] = v11;
    v31[2] = *off_1E7721CD8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    [v6 addObjectsFromArray:v12];
  }

  if ([viewModel supportsSocialGroupActions])
  {
    v30 = *off_1E7721CE0;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [v6 addObjectsFromArray:v13];
  }

  if ([viewModel allowsShowDetails] && objc_msgSend(sharedInstance, "enableDetailsMenuAction"))
  {
    [v6 addObject:*off_1E7721DB8];
  }

  v14 = +[PXLemonadeSettings sharedInstance];
  enableCollectionsSortButton = [v14 enableCollectionsSortButton];

  if ([sharedInstance enableSortAction] && (enableCollectionsSortButton & 1) == 0)
  {
    [v6 addObject:*off_1E7721DA8];
  }

  if ([viewModel allowsSlideshowAction])
  {
    [v6 addObject:*off_1E7721BA0];
    [v6 addObject:*off_1E7721B38];
  }

  if ([viewModel allowsShowMapAction])
  {
    [v6 addObject:*off_1E7721DC8];
  }

  [v6 addObject:*off_1E7721D28];
  if ([viewModel allowsFileRadarAction])
  {
    [v6 addObject:*off_1E7721A90];
  }

  if ([viewModel allowsCMMActions])
  {
    [v6 addObject:*off_1E7721CB8];
    [v6 addObject:*off_1E7721DF0];
  }

  v29 = sharedInstance;
  [v6 addObject:*off_1E7721A50];
  [v6 addObject:*off_1E7721A48];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{assetCollectionActionManager, 0}];
  gridActionManager = [viewModel gridActionManager];
  if (gridActionManager)
  {
    [v16 addObject:gridActionManager];
  }

  v18 = assetCollectionActionManager;
  assetActionManager = [viewModel assetActionManager];
  if (assetActionManager)
  {
    [v16 addObject:assetActionManager];
  }

  v20 = [[PXPhotosGridActionMenuController alloc] initWithActionManagers:v16 viewModel:viewModel];
  if ([viewModel allowsShareAllAction] && (objc_msgSend(viewModel, "wantsShareGridButtonVisible") & 1) == 0)
  {
    [v6 addObject:*off_1E77220F0];
  }

  viewController = [(PXBarsController *)self viewController];
  px_sharePresentation = [viewController px_sharePresentation];

  if (!px_sharePresentation)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:905 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  defaultActivityTypeOrder = [px_sharePresentation defaultActivityTypeOrder];
  if (!defaultActivityTypeOrder)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:907 description:{@"Invalid parameter not satisfying: %@", @"defaultActivityTypeOrder"}];
  }

  v24 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:defaultActivityTypeOrder];
  [(PXActionMenuController *)v20 setDefaultActivityTypeOrder:v24];

  [(PXPhotosGridActionMenuController *)v20 setAdditionalActionTypes:v6];

  return v20;
}

- (void)handleCancelBarButtonItem:(id)item
{
  viewModel = [(PXPhotosBarsController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_474_231205];
}

- (void)handleDeselectAllBarButtonItem:(id)item
{
  viewModel = [(PXPhotosBarsController *)self viewModel];
  selectionManager = [viewModel selectionManager];
  [selectionManager performChanges:&__block_literal_global_472_231208];
}

- (void)handleSelectAllBarButtonItem:(id)item
{
  viewModel = [(PXPhotosBarsController *)self viewModel];
  selectionManager = [viewModel selectionManager];
  [selectionManager performChanges:&__block_literal_global_470_231210];
}

- (void)handleSelectBarButtonItem:(id)item
{
  viewModel = [(PXPhotosBarsController *)self viewModel];
  [viewModel performChanges:&__block_literal_global_231212];
}

- (void)handleMergeDuplicatesButton:(id)button
{
  buttonCopy = button;
  viewModel = [(PXPhotosBarsController *)self viewModel];
  assetActionManager = [viewModel assetActionManager];

  [assetActionManager executeActionForActionType:*off_1E7721AF8 sender:buttonCopy completionHandler:0];
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.deduplicationFromAlbumSelection" withPayload:MEMORY[0x1E695E0F8]];
}

- (id)_identifierForActionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:*off_1E7721B88])
  {
    v4 = off_1E7721F08;
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([typeCopy isEqualToString:*off_1E7721A98])
  {
    v4 = off_1E7721F00;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*off_1E7721BE8] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721B50) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *off_1E7721BF8))
  {
    v4 = off_1E7721F50;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*off_1E7721A60])
  {
    v4 = off_1E7721E48;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*off_1E7721B78])
  {
    v4 = off_1E7721ED8;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*off_1E7721B48])
  {
    v4 = off_1E7721EC8;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*off_1E7721DA8] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", *off_1E77220F8))
  {
    v4 = off_1E7721E00;
    goto LABEL_9;
  }

  if ([typeCopy isEqualToString:*off_1E7721AF8])
  {
    v4 = off_1E7721E98;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)createBarButtonItemForIdentifier:(id)identifier placement:(unint64_t)placement
{
  v102 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  barButtonItemsController = [(PXPhotosBarsController *)self barButtonItemsController];
  viewModel = [(PXPhotosBarsController *)self viewModel];
  if (placement - 2 >= 3)
  {
    v6 = identifierCopy;
    v7 = viewModel;
    if (placement <= 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:470 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    goto LABEL_7;
  }

  v6 = identifierCopy;
  v7 = viewModel;
  if (MEMORY[0x1A590D320]())
  {
LABEL_7:
    wantsModernNavBarButtons = 0;
    goto LABEL_8;
  }

  if ([viewModel navBarStyle] && objc_msgSend(viewModel, "navBarStyle") != 8)
  {
    wantsModernNavBarButtons = 1;
  }

  else
  {
    wantsModernNavBarButtons = [viewModel wantsModernNavBarButtons];
  }

LABEL_8:
  v78 = *off_1E7721EE8;
  v79 = wantsModernNavBarButtons;
  if ([v6 isEqualToString:?])
  {
    if ((MEMORY[0x1A590D320]() & 1) == 0)
    {
      viewModel2 = [(PXPhotosBarsController *)self viewModel];
      if ([viewModel2 wantsAdaptiveSelectModeBarButton])
      {
        shouldUseCompactBarButtons = [(PXPhotosBarsController *)self shouldUseCompactBarButtons];

        v7 = viewModel;
        if (shouldUseCompactBarButtons)
        {
          v11 = [barButtonItemsController createBarButtonItemWithSystemIconName:@"checkmark" target:self action:sel_handleSelectBarButtonItem_ menuAction:0 accessibilityIdentifier:identifierCopy];
LABEL_13:
          barButtonItem = v11;
LABEL_14:
          v13 = 0;
          goto LABEL_15;
        }
      }

      else
      {

        v7 = viewModel;
      }
    }

    title = 0;
    v72 = 0;
    v74 = 0;
    v14 = 0;
    v75 = 0;
    v13 = 0;
    v15 = sel_handleSelectBarButtonItem_;
LABEL_26:
    v76 = 1;
    v77 = 1;
LABEL_27:
    [v7 assetActionManager];
    goto LABEL_28;
  }

  if ([v6 isEqualToString:*off_1E7721EF0])
  {
    title = 0;
    v72 = 0;
    v74 = 0;
    v14 = 0;
    v75 = 0;
    v13 = 0;
    v15 = sel_handleSelectAllBarButtonItem_;
    goto LABEL_26;
  }

  if ([v6 isEqualToString:*off_1E7721E50])
  {
    title = 0;
    v72 = 0;
    v74 = 0;
    v14 = 0;
    v75 = 0;
    v13 = 0;
    v15 = sel_handleDeselectAllBarButtonItem_;
    goto LABEL_26;
  }

  if ([v6 isEqualToString:*off_1E7721E30])
  {
    if (MEMORY[0x1A590D320]())
    {
      title = 0;
    }

    else
    {
      title = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
      v7 = viewModel;
    }

    v72 = 0;
    v74 = 0;
    v14 = 0;
    v75 = 0;
    v13 = 0;
    v15 = sel_handleCancelBarButtonItem_;
    goto LABEL_26;
  }

  if ([v6 isEqualToString:*off_1E7721EC0])
  {
    barButtonItem = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAccessibilityIdentifier:v6];
    v13 = 0;
    if (barButtonItem)
    {
      goto LABEL_49;
    }

LABEL_97:
    title = 0;
    v72 = 0;
    v74 = 0;
    v15 = 0;
    v14 = 0;
    v75 = 0;
    goto LABEL_26;
  }

  if ([v6 isEqualToString:*off_1E7721F08])
  {
    if ([v7 wantsShareGridButtonVisible] && (objc_msgSend(v7, "isInSelectMode") & 1) == 0)
    {
      v38 = off_1E77220F0;
    }

    else
    {
      v38 = off_1E7721B88;
    }

    v13 = *v38;
    title = 0;
    v15 = 0;
    v14 = 0;
    v75 = 0;
    v76 = 1;
    v77 = 0;
    v43 = 2;
    goto LABEL_85;
  }

  if ([v6 isEqualToString:*off_1E7721E10])
  {
    currentDataSource = [v7 currentDataSource];
    containerCollection = [currentDataSource containerCollection];

    px_isCloudKitSharedAlbum = [containerCollection px_isCloudKitSharedAlbum];
    v42 = off_1E7721A30;
    if (!px_isCloudKitSharedAlbum)
    {
      v42 = off_1E7721A18;
    }

    v13 = *v42;

    goto LABEL_76;
  }

  if ([v6 isEqualToString:*off_1E7721E08])
  {
    title = 0;
    v72 = 0;
    v74 = 0;
    v14 = 0;
    v75 = 0;
    v13 = 0;
    v15 = sel_handleAddButtonItem_;
    goto LABEL_26;
  }

  if (![v6 isEqualToString:*off_1E7721F50])
  {
    if ([v6 isEqualToString:*off_1E7721EC8])
    {
      v44 = off_1E7721B48;
LABEL_96:
      v13 = *v44;
      goto LABEL_97;
    }

    if ([v6 isEqualToString:*off_1E7721ED8])
    {
      v44 = off_1E7721B78;
      goto LABEL_96;
    }

    if ([v6 isEqualToString:*off_1E7721E48])
    {
      v44 = off_1E7721A60;
      goto LABEL_96;
    }

    if ([v6 isEqualToString:*off_1E7721F18])
    {
      v44 = off_1E7721BA0;
      goto LABEL_96;
    }

    if ([v6 isEqualToString:*off_1E7721E00])
    {
      if (wantsModernNavBarButtons)
      {
        title = 0;
        v15 = 0;
        v14 = 0;
        v13 = 0;
        v75 = sel_handleActionMenuBarButtonItem_;
        v72 = 0;
        v74 = 1;
        v76 = 1;
        v77 = 0;
        v79 = 1;
        goto LABEL_80;
      }

      objc_initWeak(buf, self);
      v99[0] = MEMORY[0x1E69E9820];
      v99[1] = 3221225472;
      v99[2] = __69__PXPhotosBarsController_createBarButtonItemForIdentifier_placement___block_invoke;
      v99[3] = &unk_1E7748C00;
      objc_copyWeak(&v100, buf);
      v14 = _Block_copy(v99);
      objc_destroyWeak(&v100);
      objc_destroyWeak(buf);
      title = 0;
      v77 = 0;
      v15 = 0;
      v75 = 0;
      v13 = 0;
      v79 = 0;
      v72 = 0;
      v74 = 1;
LABEL_79:
      v76 = 1;
LABEL_80:
      v7 = viewModel;
      goto LABEL_27;
    }

    if ([v6 isEqualToString:*off_1E7721F38])
    {
      viewModel3 = [(PXPhotosBarsController *)self viewModel];
      if ([viewModel3 aspectFitContent])
      {
        v46 = @"PXLibraryAllPhotosToggleSquares";
      }

      else
      {
        v46 = @"PXLibraryAllPhotosToggleFullFrames";
      }

      title = PXLocalizedStringFromTable(v46, @"PhotosUICore");

      v13 = *off_1E7722108;
      goto LABEL_77;
    }

    if ([identifierCopy isEqualToString:*off_1E7721F20])
    {
      filterButtonController = [(PXPhotosBarsController *)self filterButtonController];
      [filterButtonController invalidateButton];

      filterButtonController2 = [(PXPhotosBarsController *)self filterButtonController];
      barButtonItem = [filterButtonController2 barButtonItem];

LABEL_109:
      v49 = barButtonItem;
      goto LABEL_110;
    }

    if ([identifierCopy isEqualToString:*off_1E7721EF8])
    {
      selectModeCaptionLabel = [(PXPhotosBarsController *)self selectModeCaptionLabel];
      currentDataSource2 = [viewModel currentDataSource];
      containerCollection2 = [currentDataSource2 containerCollection];

      viewController = [(PXBarsController *)self viewController];
      px_extendedTraitCollection = [viewController px_extendedTraitCollection];
      userInterfaceIdiom = [px_extendedTraitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 2 && (([containerCollection2 px_isRecentlyDeletedSmartAlbum] & 1) != 0 || objc_msgSend(containerCollection2, "px_isRecoveredSmartAlbum")))
      {
        [selectModeCaptionLabel setNumberOfLines:1];
      }

      [(PXPhotosBarsController *)self _updateSelectModeCaption];
      barButtonItem = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:selectModeCaptionLabel];
      [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAccessibilityIdentifier:identifierCopy];
      [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setHidesSharedBackground:1];
      goto LABEL_136;
    }

    if ([identifierCopy isEqualToString:*off_1E7721F00])
    {
      v56 = MEMORY[0x1E69DCAB8];
      if (MEMORY[0x1A590D320]())
      {
        v57 = @"ellipsis";
      }

      else
      {
        v57 = @"ellipsis.circle";
      }

      selectModeCaptionLabel = [v56 systemImageNamed:v57];
      delegate = [(PXPhotosBarsController *)self delegate];
      containerCollection2 = [delegate barsControllerActionsForSelectionContextMenu:self];

      if ([viewModel wantsSelectModeCaptionInContextMenu])
      {
        selectModeCaptionText = [(PXPhotosBarsController *)self selectModeCaptionText];
      }

      else
      {
        selectModeCaptionText = &stru_1F1741150;
      }

      v61 = [MEMORY[0x1E69DCC60] menuWithTitle:selectModeCaptionText children:containerCollection2];
      barButtonItem = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:selectModeCaptionLabel menu:v61];
      currentDataSource3 = [viewModel currentDataSource];
      containerCollection3 = [currentDataSource3 containerCollection];

      if ([containerCollection3 px_isRecentlyDeletedSmartAlbum] & 1) != 0 || (objc_msgSend(containerCollection3, "px_isRecoveredSmartAlbum"))
      {
        isAnyItemSelected = 1;
      }

      else
      {
        selectionSnapshot = [viewModel selectionSnapshot];
        isAnyItemSelected = [selectionSnapshot isAnyItemSelected];
      }

      [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setEnabled:isAnyItemSelected];
      [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAccessibilityIdentifier:identifierCopy];

LABEL_135:
LABEL_136:

      goto LABEL_14;
    }

    if ([identifierCopy isEqualToString:*off_1E7721E58])
    {
      title = 0;
      v74 = 0;
      v75 = 0;
      v14 = 0;
      v13 = 0;
      v15 = sel_handleDismissButton_;
      v76 = 0;
      v77 = 1;
      v60 = @"xmark";
      goto LABEL_141;
    }

    if ([identifierCopy isEqualToString:*off_1E7721E38])
    {
      title = 0;
      v72 = 0;
      v74 = 0;
      v14 = 0;
      v75 = 0;
      v13 = 0;
      v15 = sel_handleCloseButton_;
      goto LABEL_78;
    }

    if ([identifierCopy isEqualToString:*off_1E7721E18])
    {
      v65 = off_1E7721A28;
    }

    else
    {
      if (![identifierCopy isEqualToString:*off_1E7721E40])
      {
        if ([identifierCopy isEqualToString:*off_1E7721E90])
        {
          v98.receiver = self;
          v98.super_class = PXPhotosBarsController;
          barButtonItem = [(PXBarsController *)&v98 createBarButtonItemForIdentifier:identifierCopy placement:placement];
          [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAccessibilityIdentifier:identifierCopy];
        }

        else
        {
          if (![identifierCopy isEqualToString:*off_1E7721E20])
          {
            if ([identifierCopy isEqualToString:*off_1E7721E80])
            {
              v68 = off_1E7721A90;
            }

            else
            {
              if ([identifierCopy isEqualToString:*off_1E7721E88])
              {
                title = 0;
                v74 = 0;
                v75 = 0;
                v14 = 0;
                v13 = 0;
                v15 = sel_handleInfoButton_;
                v76 = 0;
                v77 = 1;
                v60 = @"info.circle";
                goto LABEL_141;
              }

              if ([identifierCopy isEqualToString:*off_1E7721ED0])
              {
                v13 = *off_1E7721B70;
                title = 0;
                v74 = 0;
                v75 = 0;
                v15 = 0;
                v14 = 0;
                v76 = 0;
                v77 = 1;
                v60 = @"arrowshape.turn.up.left";
                goto LABEL_141;
              }

              if ([identifierCopy isEqualToString:*off_1E7721F30])
              {
                v13 = *off_1E7721BD0;
                title = 0;
                v74 = 0;
                v75 = 0;
                v15 = 0;
                v14 = 0;
                v76 = 0;
                v77 = 1;
                v60 = @"plus.bubble.tapback";
                goto LABEL_141;
              }

              if ([identifierCopy isEqualToString:*off_1E7721E98])
              {
                assetActionManager = [viewModel assetActionManager];
                v13 = *off_1E7721AF8;
                barButtonItem = [assetActionManager barButtonItemForActionType:v13];
                if ([assetActionManager canPerformActionType:v13])
                {
                  v70 = [assetActionManager shouldEnableActionType:v13 onAsset:0];
                }

                else
                {
                  v70 = 0;
                }

                [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setHidesSharedBackground:v70 ^ 1];
                [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setEnabled:v70];
                [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setTarget:self];
                [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAction:sel_handleMergeDuplicatesButton_];
                [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAccessibilityIdentifier:identifierCopy];

LABEL_15:
                v7 = viewModel;
                if (!barButtonItem)
                {
                  goto LABEL_97;
                }

LABEL_49:
                v20 = 0;
                title = 0;
                goto LABEL_65;
              }

              if ([identifierCopy isEqualToString:*off_1E7721EA0])
              {
                v68 = off_1E7721B08;
              }

              else if ([identifierCopy isEqualToString:*off_1E7721EA8])
              {
                v68 = off_1E7721B10;
              }

              else
              {
                if (![identifierCopy isEqualToString:*off_1E7721EB0])
                {
                  if ([identifierCopy isEqualToString:*off_1E7721E70])
                  {
                    if (!MEMORY[0x1A590D320]())
                    {
                      v11 = [barButtonItemsController createStandardBackButtonWithTarget:self action:sel_handleExplicitBackButton_ accessibilityIdentifier:identifierCopy];
                      goto LABEL_13;
                    }

                    v49 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:101 target:self action:sel_handleExplicitBackButton_];
                    barButtonItem = v49;
LABEL_110:
                    [(PXPhotosPlaceholderSearchBarButtonItem *)v49 setAccessibilityIdentifier:identifierCopy];
                    goto LABEL_14;
                  }

                  if ([identifierCopy isEqualToString:*off_1E7721EE0])
                  {
                    if (MEMORY[0x1A590D320]())
                    {
                      objc_initWeak(buf, self);
                      v71 = [PXPhotosPlaceholderSearchBarButtonItem alloc];
                      v95[0] = MEMORY[0x1E69E9820];
                      v95[1] = 3221225472;
                      v95[2] = __69__PXPhotosBarsController_createBarButtonItemForIdentifier_placement___block_invoke_2;
                      v95[3] = &unk_1E774C318;
                      objc_copyWeak(&v96, buf);
                      barButtonItem = [(PXPhotosPlaceholderSearchBarButtonItem *)v71 initWithAction:v95];
                      [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAccessibilityIdentifier:identifierCopy];
                      objc_destroyWeak(&v96);
                      objc_destroyWeak(buf);
                      goto LABEL_14;
                    }

                    title = 0;
                    v74 = 0;
                    v75 = 0;
                    v14 = 0;
                    v13 = 0;
                    v15 = sel_handleSearchButton_;
                    v76 = 0;
                    v77 = 1;
                    v60 = @"magnifyingglass";
                  }

                  else
                  {
                    if (![identifierCopy isEqualToString:*off_1E7721F48])
                    {
                      if (![identifierCopy isEqualToString:*off_1E7721F10])
                      {
                        if (![identifierCopy isEqualToString:*off_1E7721F40])
                        {
                          title = 0;
                          v72 = 0;
                          v74 = 0;
                          v14 = 0;
                          v75 = 0;
                          v13 = 0;
                          if ([identifierCopy isEqualToString:*off_1E7721EB8])
                          {
                            v15 = sel_handleOpenInPhotosAppButton_;
                          }

                          else
                          {
                            v15 = 0;
                          }

                          goto LABEL_78;
                        }

                        barButtonItem = [(PXPhotosBarsController *)self curationBarButtonItem];
                        goto LABEL_109;
                      }

                      selectModeCaptionLabel = [(PXPhotosBarsController *)self viewModel];
                      containerCollection2 = [selectModeCaptionLabel currentDataSource];
                      selectModeCaptionText = [(PXPhotosBarsController *)self createCollaborationViewFromAssetsDataSource:containerCollection2];
                      barButtonItem = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:selectModeCaptionText];
                      [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAccessibilityIdentifier:identifierCopy];
                      goto LABEL_135;
                    }

                    title = 0;
                    v74 = 0;
                    v75 = 0;
                    v14 = 0;
                    v13 = 0;
                    v79 = 0;
                    v15 = sel_handleToggleSidebar_;
                    v76 = 0;
                    v77 = 1;
                    v60 = @"sidebar.leading";
                  }

LABEL_141:
                  v72 = v60;
                  goto LABEL_80;
                }

                v68 = off_1E7721B18;
              }
            }

            v13 = *v68;
LABEL_76:
            title = 0;
LABEL_77:
            v72 = 0;
            v74 = 0;
            v15 = 0;
            v14 = 0;
            v75 = 0;
LABEL_78:
            v77 = 1;
            goto LABEL_79;
          }

          v97.receiver = self;
          v97.super_class = PXPhotosBarsController;
          barButtonItem = [(PXBarsController *)&v97 createBarButtonItemForIdentifier:identifierCopy placement:placement];
          [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setAccessibilityIdentifier:identifierCopy];
        }

        v79 = 0;
        goto LABEL_14;
      }

      v65 = off_1E7721CA8;
    }

    v13 = *v65;
    title = 0;
    v74 = 0;
    v75 = 0;
    v15 = 0;
    v14 = 0;
    v76 = 0;
    v77 = 1;
    v60 = @"square.and.arrow.down";
    goto LABEL_141;
  }

  v13 = *off_1E7721BF8;
  title = 0;
  v15 = 0;
  v14 = 0;
  v75 = 0;
  v76 = 1;
  v77 = 0;
  v43 = 3;
LABEL_85:
  v74 = v43;
  [v7 assetActionManager];
  v16 = LABEL_28:;
  gridActionManager = [viewModel gridActionManager];
  assetCollectionActionManager = [viewModel assetCollectionActionManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PXPhotosBarsController_createBarButtonItemForIdentifier_placement___block_invoke_3;
  aBlock[3] = &unk_1E7748C28;
  v93 = v15;
  v19 = identifierCopy;
  placementCopy = placement;
  v86 = v19;
  selfCopy = self;
  v20 = v14;
  v92 = v20;
  v13 = v13;
  v88 = v13;
  v21 = v16;
  v89 = v21;
  v22 = gridActionManager;
  v90 = v22;
  v23 = assetCollectionActionManager;
  v91 = v23;
  v24 = _Block_copy(aBlock);
  if (MEMORY[0x1A590D320]() & 1 | ((v79 & 1) == 0))
  {
LABEL_58:
    barButtonItem = v24[2](v24);
    goto LABEL_59;
  }

  if ((v77 & v76) == 1 && !title)
  {
    v25 = v24[2](v24);
    title = [v25 title];

    if (!title)
    {
      PXAssertGetLog();
    }

    v26 = v13 == 0;
    v27 = [barButtonItemsController createBarButtonItemWithTitle:? target:? action:? menuAction:? accessibilityIdentifier:?];
LABEL_38:
    barButtonItem = v27;
    if (v26)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  if (v13)
  {
    v28 = sel__handleActionTypeBarButtonItem_;
  }

  else
  {
    v28 = v15;
  }

  if (title)
  {
    v26 = v13 == 0;
    v27 = [barButtonItemsController createBarButtonItemWithTitle:title target:self action:v28 menuAction:v75 accessibilityIdentifier:v19];
    goto LABEL_38;
  }

  if ((v77 & 1) == 0)
  {
    v29 = [barButtonItemsController createBarButtonItemWithSystemItem:v74 target:self action:v28 menuAction:v75 accessibilityIdentifier:v19];
    goto LABEL_51;
  }

  if ((v76 & 1) == 0)
  {
    v29 = [barButtonItemsController createBarButtonItemWithSystemIconName:v73 target:self action:v28 menuAction:v75 accessibilityIdentifier:v19];
LABEL_51:
    barButtonItem = v29;
    title = 0;
    if (!v13)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  barButtonItem = 0;
  title = 0;
  if (!v13)
  {
    goto LABEL_58;
  }

LABEL_52:
  if ([v21 canPerformActionType:v13] & 1) != 0 || (objc_msgSend(v22, "canPerformActionType:", v13))
  {
    v30 = 1;
  }

  else
  {
    v30 = [v23 canPerformActionType:v13];
  }

  [(PXPhotosPlaceholderSearchBarButtonItem *)barButtonItem setEnabled:v30];
  actionTypeByBarButtonItem = [(PXPhotosBarsController *)self actionTypeByBarButtonItem];
  [actionTypeByBarButtonItem setObject:v13 forKey:barButtonItem];

LABEL_57:
  if (!barButtonItem)
  {
    goto LABEL_58;
  }

LABEL_59:
  v32 = [v19 isEqualToString:v78];
  if (barButtonItem)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == 1)
  {
    viewModel4 = [(PXPhotosBarsController *)self viewModel];
    currentDataSource4 = [viewModel4 currentDataSource];

    -[PXPhotosPlaceholderSearchBarButtonItem setEnabled:](barButtonItem, "setEnabled:", [currentDataSource4 containsAnyItems]);
  }

  v7 = viewModel;
LABEL_65:
  v36 = barButtonItem;

  return barButtonItem;
}

id __69__PXPhotosBarsController_createBarButtonItemForIdentifier_placement___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _makeActionMenu];

  return v2;
}

void __69__PXPhotosBarsController_createBarButtonItemForIdentifier_placement___block_invoke_2(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 handleSearchButton:v1];
}

id __69__PXPhotosBarsController_createBarButtonItemForIdentifier_placement___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 96);
    v17.receiver = *(a1 + 40);
    v17.super_class = PXPhotosBarsController;
    v4 = objc_msgSendSuper2(&v17, sel_createBarButtonItemForIdentifier_placement_, v2, v3);
    [v4 setTarget:*(a1 + 40)];
    [v4 setAction:*(a1 + 88)];
    if (v4)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (*(a1 + 80))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 96);
    v16.receiver = *(a1 + 40);
    v16.super_class = PXPhotosBarsController;
    v4 = objc_msgSendSuper2(&v16, sel_createBarButtonItemForIdentifier_placement_, v5, v6);
    [v4 _setSecondaryActionsProvider:*(a1 + 80)];
    if (v4)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (*(a1 + 48))
  {
    v7 = [*(a1 + 40) viewModel];
    v8 = [v7 selectionManager];
    v9 = [v8 selectionSnapshot];
    v10 = [v9 isAnyItemSelected];

    if ([*(a1 + 56) supportsActionType:*(a1 + 48)])
    {
      v4 = [*(a1 + 56) barButtonItemForActionType:*(a1 + 48)];
      if (![*(a1 + 40) _canDisableButtonWithIdentifier:*(a1 + 32)] || v10)
      {
        v11 = *(a1 + 56);
LABEL_20:
        v12 = [v11 canPerformActionType:*(a1 + 48)];
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    if ([*(a1 + 64) supportsActionType:*(a1 + 48)])
    {
      v4 = [*(a1 + 64) barButtonItemForActionType:*(a1 + 48)];
      if (![*(a1 + 40) _canDisableButtonWithIdentifier:*(a1 + 32)] || v10)
      {
        v11 = *(a1 + 64);
        goto LABEL_20;
      }

LABEL_21:
      v12 = 0;
LABEL_22:
      [v4 setEnabled:v12];
      if (v4)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if ([*(a1 + 72) supportsActionType:*(a1 + 48)])
    {
      v4 = [*(a1 + 72) barButtonItemForActionType:*(a1 + 48)];
      if (![*(a1 + 40) _canDisableButtonWithIdentifier:*(a1 + 32)] || v10)
      {
        v11 = *(a1 + 72);
        goto LABEL_20;
      }

      goto LABEL_21;
    }
  }

LABEL_23:
  v13 = PLGridZeroGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    *buf = 138412290;
    v19 = v14;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Couldn't create bar button item for %@", buf, 0xCu);
  }

  v4 = 0;
LABEL_26:

  return v4;
}

- (void)setWantsToggleSidebarButton:(BOOL)button
{
  if (self->_wantsToggleSidebarButton != button)
  {
    self->_wantsToggleSidebarButton = button;
    [(PXBarsController *)self invalidateBars];
  }
}

- (void)setEndButtonSpacing:(double)spacing
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_endButtonSpacing != spacing)
  {
    self->_endButtonSpacing = spacing;
    v5[0] = *off_1E7721E20;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v4];

    [(PXBarsController *)self invalidateBars];
  }
}

- (void)setInterButtonSpacing:(double)spacing
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_interButtonSpacing != spacing)
  {
    self->_interButtonSpacing = spacing;
    v5[0] = *off_1E7721E90;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v4];

    [(PXBarsController *)self invalidateBars];
  }
}

- (void)setContentSizeCategory:(id)category
{
  if (self->_contentSizeCategory != category)
  {
    [(PXBarsController *)self purgeCachedBarButtonItems];

    [(PXBarsController *)self invalidateBars];
  }
}

- (PLDateRangeFormatter)dateRangeFormatter
{
  dateRangeFormatter = self->_dateRangeFormatter;
  if (!dateRangeFormatter)
  {
    v4 = [objc_alloc(MEMORY[0x1E69BE3B8]) initWithPreset:0];
    v5 = self->_dateRangeFormatter;
    self->_dateRangeFormatter = v4;

    dateRangeFormatter = self->_dateRangeFormatter;
  }

  return dateRangeFormatter;
}

- (id)filterButtonController
{
  delegate = [(PXPhotosBarsController *)self delegate];
  v4 = [delegate filterButtonControllerForPhotosBarsController:self];

  return v4;
}

- (PXPresentationEnvironment)presentationEnvironment
{
  delegate = [(PXPhotosBarsController *)self delegate];
  v4 = [delegate presentationEnvironmentForPhotosBarsController:self withSourceItem:0];
  v5 = v4;
  if (!v4)
  {
    [(PXBarsController *)self viewController];
    objc_claimAutoreleasedReturnValue();
    PXPresentationEnvironmentForSender();
  }

  v6 = v4;

  return v6;
}

- (id)barAppearance
{
  viewController = [(PXBarsController *)self viewController];
  px_barAppearance = [viewController px_barAppearance];

  return px_barAppearance;
}

- (id)createCollaborationViewFromAssetsDataSource:(id)source
{
  containerCollection = [source containerCollection];
  if ([containerCollection px_isCloudKitSharedAlbum])
  {
    v4 = containerCollection;
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v7 = +[PXSharedCollectionsCollaborationViewManager sharedInstance];
    v6 = [v7 collaborationViewForAssetCollection:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateBars
{
  if (![(PXPhotosBarsController *)self isAllowedToUpdateBars])
  {
    return;
  }

  viewModel = [(PXPhotosBarsController *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  title = [viewModel title];

  if (title)
  {
    title2 = [viewModel title];
    if (![title2 length])
    {
      v8 = 0;
      goto LABEL_8;
    }

    title3 = [viewModel title];
  }

  else
  {
    title2 = [currentDataSource firstAssetCollection];
    title3 = [title2 localizedTitle];
  }

  v8 = title3;
LABEL_8:

  sharedLibraryStatusProvider = [(PXPhotosBarsController *)self sharedLibraryStatusProvider];
  hasSharedLibraryOrPreview = [sharedLibraryStatusProvider hasSharedLibraryOrPreview];

  filterButtonController = [(PXPhotosBarsController *)self filterButtonController];
  v78 = filterButtonController;
  if (filterButtonController && ([filterButtonController shouldHideButton] & 1) == 0)
  {
    containsAnyItems = [currentDataSource containsAnyItems];
  }

  else
  {
    containsAnyItems = 0;
  }

  viewModel2 = [(PXPhotosBarsController *)self viewModel];
  allowedChromeItems = [viewModel2 allowedChromeItems];

  v15 = MEMORY[0x1E695E0F0];
  if ((allowedChromeItems & 0x800) != 0)
  {
    v17 = PXPhotosBarsItemIdentifierProviderForModel(viewModel);
    v97 = v15;
    v98[0] = v8;
    v95 = 0;
    v96 = v15;
    v93 = 0;
    v94 = 0;
    BYTE1(v74) = containsAnyItems;
    LOBYTE(v74) = hasSharedLibraryOrPreview;
    [v17 valuesForModel:viewModel title:v98 leadingIdentifiers:&v97 trailingIdentifiers:&v96 leadingToolbarIdentifiers:&v95 centerToolbarIdentifiers:&v94 trailingToolbarIdentifiers:&v93 hasSharedLibraryOrPreview:v74 canShowSortAndFilterMenu:?];
    v18 = v98[0];

    v16 = v97;
    v15 = v96;
    v82 = v95;
    v81 = v94;
    v80 = v93;

    v8 = v18;
  }

  else
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v16 = MEMORY[0x1E695E0F0];
  }

  if (-[PXPhotosBarsController shouldHideTitleInSelectModeWithLeadingBarButtonItem](self, "shouldHideTitleInSelectModeWithLeadingBarButtonItem") && [viewModel isInSelectMode] && objc_msgSend(v16, "count"))
  {

    v8 = 0;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v16 copy];
  [(PXPhotosBarsController *)self setLeftBarButtonItemIdentifiers:v20];

  v21 = [v15 copy];
  [(PXPhotosBarsController *)self setRightBarButtonItemIdentifiers:v21];

  v22 = [v82 copy];
  [(PXPhotosBarsController *)self setLeadingToolbarItemIdentifiers:v22];

  v23 = [v81 copy];
  [(PXPhotosBarsController *)self setCenterToolbarItemIdentifiers:v23];

  v24 = [v80 copy];
  [(PXPhotosBarsController *)self setTrailingToolbarItemIdentifiers:v24];

  viewController = [(PXBarsController *)self viewController];
  [viewController setTitle:v8];

  viewController2 = [(PXBarsController *)self viewController];
  navigationItem = [viewController2 navigationItem];

  v75 = navigationItem;
  if (![viewModel navBarStyle] || objc_msgSend(viewModel, "navBarStyle") == 8 || objc_msgSend(viewModel, "navBarStyle") == 7)
  {
    [(PXPhotosBarsController *)self configureNavigationItem:navigationItem withTitle:v8];
  }

  else
  {
    [navigationItem setTitle:&stru_1F1741150];
  }

  viewController3 = [(PXBarsController *)self viewController];
  navigationItem2 = [viewController3 navigationItem];
  [navigationItem2 setBackButtonTitle:v8];

  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    viewController4 = [(PXBarsController *)self viewController];
    navigationItem3 = [viewController4 navigationItem];
    [navigationItem3 px_setBackButtonDisplayMode:2];
  }

  v76 = v16;
  if ([viewModel titleMode])
  {
    if ([viewModel isInSelectMode])
    {
      v32 = 2;
    }

    else
    {
      v32 = 3;
    }
  }

  else
  {
    v32 = 2;
  }

  viewController5 = [(PXBarsController *)self viewController];
  navigationItem4 = [viewController5 navigationItem];
  [navigationItem4 setLargeTitleDisplayMode:v32];

  viewController6 = [(PXBarsController *)self viewController];
  navigationItem5 = [viewController6 navigationItem];
  titleView = [navigationItem5 titleView];
  [titleView setHidden:v19];

  if ([viewModel wantsManualNavigationBottomBarPaletteControl])
  {
    goto LABEL_38;
  }

  navigationBarBottomPaletteContentView = [viewModel navigationBarBottomPaletteContentView];
  viewController7 = [(PXBarsController *)self viewController];
  navigationItem6 = [viewController7 navigationItem];
  navigationItem8 = navigationItem6;
  if (!navigationBarBottomPaletteContentView)
  {
    [navigationItem6 _setBottomPalette:0];
    goto LABEL_36;
  }

  _bottomPalette = [navigationItem6 _bottomPalette];
  contentView = [_bottomPalette contentView];

  if (navigationBarBottomPaletteContentView != contentView)
  {
    v44 = [[PXNavigationBarPalette alloc] initWithArrangedSubview:navigationBarBottomPaletteContentView];
    viewController8 = [(PXBarsController *)self viewController];
    navigationItem7 = [viewController8 navigationItem];
    [navigationItem7 _setBottomPalette:v44];

    [viewModel navigationBarBottomPaletteDirectionalLayoutMargins];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    viewController7 = [(PXBarsController *)self viewController];
    navigationItem8 = [viewController7 navigationItem];
    _bottomPalette2 = [navigationItem8 _bottomPalette];
    contentView2 = [_bottomPalette2 contentView];
    [contentView2 setDirectionalLayoutMargins:{v48, v50, v52, v54}];

LABEL_36:
  }

LABEL_38:
  v77 = v15;
  v79 = v8;
  v57 = currentDataSource;
  _shouldMimicSystemChromelessUsingManualScrollEdgeAppearance = [viewModel _shouldMimicSystemChromelessUsingManualScrollEdgeAppearance];
  viewController9 = [(PXBarsController *)self viewController];
  navigationItem9 = [viewController9 navigationItem];
  [navigationItem9 _setManualScrollEdgeAppearanceEnabled:_shouldMimicSystemChromelessUsingManualScrollEdgeAppearance];

  isEmbedded = [viewModel isEmbedded];
  wantsTabBarVisible = [viewModel wantsTabBarVisible];
  wantsNavbarVisible = [viewModel wantsNavbarVisible];
  if ([viewModel wantsToolbarVisible])
  {
    v64 = [viewModel toolbarStyle] == 0;
  }

  else
  {
    v64 = 0;
  }

  barAppearance = [(PXPhotosBarsController *)self barAppearance];
  if (([viewModel isAppearing] & 1) != 0 || wantsNavbarVisible == objc_msgSend(barAppearance, "prefersNavigationBarVisible") && v64 == objc_msgSend(barAppearance, "prefersToolbarVisible"))
  {
    v66 = [PXBarAnimationOptions alloc];
    v67 = 0.0;
    v68 = 0;
  }

  else
  {
    v66 = [PXBarAnimationOptions alloc];
    v67 = 0.3;
    v68 = 1;
  }

  v69 = [(PXBarAnimationOptions *)v66 initWithType:v68 duration:v67];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PXPhotosBarsController_updateBars__block_invoke;
  aBlock[3] = &unk_1E7748BD8;
  v70 = barAppearance;
  v87 = v70;
  v71 = v69;
  v88 = v71;
  v89 = wantsNavbarVisible;
  v90 = v64;
  v91 = wantsTabBarVisible;
  v92 = isEmbedded;
  v72 = _Block_copy(aBlock);
  if ([viewModel wantsImmediateBarsUpdate])
  {
    v72[2](v72);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__PXPhotosBarsController_updateBars__block_invoke_3;
    block[3] = &unk_1E774C250;
    v85 = v72;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v83.receiver = self;
  v83.super_class = PXPhotosBarsController;
  [(PXBarsController *)&v83 updateBars];
  delegate = [(PXPhotosBarsController *)self delegate];
  [delegate photosBarsControllerDidUpdateBars:self animated:{-[PXBarsController wantsAnimatedBarsUpdate](self, "wantsAnimatedBarsUpdate")}];
}

uint64_t __36__PXPhotosBarsController_updateBars__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PXPhotosBarsController_updateBars__block_invoke_2;
  v4[3] = &__block_descriptor_36_e34_v16__0___PXMutableBarAppearance__8l;
  v5 = *(a1 + 48);
  return [v2 performChangesWithAnimationOptions:v1 changes:v4];
}

void __36__PXPhotosBarsController_updateBars__block_invoke_2(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  [v3 setPrefersNavigationBarVisible:a1[32]];
  [v3 setPrefersToolbarVisible:a1[33]];
  [v3 setPrefersTabBarVisible:a1[34]];
  if ((a1[35] & 1) == 0)
  {
    [v3 setPrefersStatusBarVisible:1];
  }
}

- (id)createAssetActionManagerForAssetReference:(id)reference
{
  referenceCopy = reference;
  viewModel = [(PXPhotosBarsController *)self viewModel];
  assetActionManager = [viewModel assetActionManager];
  v7 = objc_alloc(objc_opt_class());
  dataSourceManager = [viewModel dataSourceManager];
  v9 = [v7 initWithSelectedObjectReference:referenceCopy dataSourceManager:dataSourceManager];

  [v9 setPerformerDelegate:self];

  return v9;
}

- (void)viewControllerDidChange:(id)change
{
  v29[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v28.receiver = self;
  v28.super_class = PXPhotosBarsController;
  [(PXBarsController *)&v28 viewControllerDidChange:changeCopy];
  viewController = [(PXBarsController *)self viewController];
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    viewModel = [(PXPhotosBarsController *)self viewModel];
    navBarStyle = [viewModel navBarStyle];

    if (navBarStyle > 8 || ((1 << navBarStyle) & 0x181) == 0)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v8 configureWithOpaqueBackground];
      sharedInstance = [off_1E7721810 sharedInstance];
      if ([sharedInstance colorNavbarArea])
      {
        [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.3];
      }

      else
      {
        [MEMORY[0x1E69DC888] clearColor];
      }
      v10 = ;
      [v8 setBackgroundColor:v10];

      [v8 setShadowColor:0];
      navigationItem = [viewController navigationItem];
      [navigationItem setStandardAppearance:v8];

      delegate = [(PXPhotosBarsController *)self delegate];
      [delegate photosBarsControllerDidUpdateNavigationItemAppearance:self];
    }
  }

  px_extendedTraitCollection = [viewController px_extendedTraitCollection];
  v14 = [PXPhotosBarButtonItemsController alloc];
  viewModel2 = [(PXPhotosBarsController *)self viewModel];
  v16 = [(PXPhotosBarButtonItemsController *)v14 initWithExtendedTraitCollection:px_extendedTraitCollection viewModel:viewModel2];
  barButtonItemsController = self->_barButtonItemsController;
  self->_barButtonItemsController = v16;

  horizontalSizeClassObservation = [(PXPhotosBarsController *)self horizontalSizeClassObservation];

  if (horizontalSizeClassObservation)
  {
    horizontalSizeClassObservation2 = [(PXPhotosBarsController *)self horizontalSizeClassObservation];
    [changeCopy unregisterForTraitChanges:horizontalSizeClassObservation2];

    [(PXPhotosBarsController *)self setHorizontalSizeClassObservation:0];
  }

  objc_initWeak(&location, self);
  v29[0] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __50__PXPhotosBarsController_viewControllerDidChange___block_invoke;
  v25 = &unk_1E7748B90;
  objc_copyWeak(&v26, &location);
  v21 = [viewController registerForTraitChanges:v20 withHandler:&v22];
  [(PXPhotosBarsController *)self setHorizontalSizeClassObservation:v21, v22, v23, v24, v25];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __50__PXPhotosBarsController_viewControllerDidChange___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5[0] = *off_1E7721EE8;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [WeakRetained purgeCachedBarButtonItemsForIdentifiers:v3];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 invalidateBars];
}

- (UIButton)selectModeChevronButton
{
  selectModeChevronButton = self->_selectModeChevronButton;
  if (!selectModeChevronButton)
  {
    v4 = PXPhotosBarsSelectModeChevronButton(self);
    v5 = self->_selectModeChevronButton;
    self->_selectModeChevronButton = v4;

    [(PXPhotosBarsController *)self _updateSelectModeCaption];
    selectModeChevronButton = self->_selectModeChevronButton;
  }

  return selectModeChevronButton;
}

- (UILabel)selectModeCaptionLabel
{
  selectModeCaptionLabel = self->_selectModeCaptionLabel;
  if (!selectModeCaptionLabel)
  {
    v4 = PXPhotosBarsCreateSelectModeCaptionLabel();
    v5 = self->_selectModeCaptionLabel;
    self->_selectModeCaptionLabel = v4;

    [(PXPhotosBarsController *)self _updateSelectModeCaption];
    selectModeCaptionLabel = self->_selectModeCaptionLabel;
  }

  return selectModeCaptionLabel;
}

- (void)_updateSelectModeCaption
{
  selectModeCaptionText = [(PXPhotosBarsController *)self selectModeCaptionText];
  PXPhotosBarsUpdateSelectModeCaption(selectModeCaptionText, self->_selectModeCaptionLabel, self->_selectModeChevronButton);
}

- (NSString)selectModeCaptionText
{
  viewModel = [(PXPhotosBarsController *)self viewModel];
  isInSelectMode = [viewModel isInSelectMode];
  selectionManager = [viewModel selectionManager];
  assetTypeCounter = [selectionManager assetTypeCounter];
  typedCount = [assetTypeCounter typedCount];
  v8 = PXLocalizedSelectModeCaption(isInSelectMode, typedCount, v7);

  return v8;
}

- (PXPhotosBarsController)initWithPhotosContentController:(id)controller
{
  controllerCopy = controller;
  v34.receiver = self;
  v34.super_class = PXPhotosBarsController;
  v5 = [(PXBarsController *)&v34 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentController, controllerCopy);
    viewModel = [controllerCopy viewModel];
    viewModel = v6->_viewModel;
    v6->_viewModel = viewModel;
    v9 = viewModel;

    [(PXPhotosViewModel *)v9 registerChangeObserver:v6 context:PXPhotosBarsControllerViewModelObserverContext];
    specManager = [(PXPhotosViewModel *)v9 specManager];
    [specManager registerChangeObserver:v6 context:PXPhotosBarsControllerSpecObserverContext];

    specManager2 = [(PXPhotosViewModel *)v9 specManager];
    spec = [specManager2 spec];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];
    contentSizeCategory = v6->_contentSizeCategory;
    v6->_contentSizeCategory = preferredContentSizeCategory;

    [spec interButtonSpacing];
    v6->_interButtonSpacing = v16;
    [spec endButtonSpacing];
    v6->_endButtonSpacing = v17;
    v6->_wantsToggleSidebarButton = [spec wantsToggleSidebarButton];
    gridActionManager = [(PXPhotosViewModel *)v9 gridActionManager];
    [gridActionManager setPerformerDelegate:v6];

    assetActionManager = [(PXPhotosViewModel *)v9 assetActionManager];
    [assetActionManager setPerformerDelegate:v6];

    assetCollectionActionManager = [(PXPhotosViewModel *)v9 assetCollectionActionManager];
    [assetCollectionActionManager setPerformerDelegate:v6];

    appViewModel = [(PXPhotosViewModel *)v9 appViewModel];
    appViewModel = v6->_appViewModel;
    v6->_appViewModel = appViewModel;

    [(PXPhotosAppGridViewModel *)v6->_appViewModel registerChangeObserver:v6 context:PXPhotosAppGridViewModelObserverContext];
    selectionManager = [(PXPhotosViewModel *)v9 selectionManager];
    assetTypeCounter = [selectionManager assetTypeCounter];
    assetTypeCounter = v6->_assetTypeCounter;
    v6->_assetTypeCounter = assetTypeCounter;

    [(PXAssetSelectionTypeCounter *)v6->_assetTypeCounter registerChangeObserver:v6 context:PXPhotosBarsControllerAssetTypeCountObserverContext];
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    actionTypeByBarButtonItem = v6->_actionTypeByBarButtonItem;
    v6->_actionTypeByBarButtonItem = weakToStrongObjectsMapTable;

    sharedLibraryStatusProvider = [(PXPhotosViewModel *)v9 sharedLibraryStatusProvider];
    sharedLibraryStatusProvider = v6->_sharedLibraryStatusProvider;
    v6->_sharedLibraryStatusProvider = sharedLibraryStatusProvider;

    [(PXSharedLibraryStatusProvider *)v6->_sharedLibraryStatusProvider registerChangeObserver:v6 context:PXSharedLibraryStatusProviderObservationContext_231136];
    libraryFilterState = [(PXPhotosViewModel *)v9 libraryFilterState];
    libraryFilterState = v6->_libraryFilterState;
    v6->_libraryFilterState = libraryFilterState;

    [(PXLibraryFilterState *)v6->_libraryFilterState registerChangeObserver:v6 context:PXLibraryFilterStateObservationContext_231137];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__appIntentsAssetsActionDidFinishNotification_ name:PXAppIntentsAssetsActionDidFinishNotification object:0];

    [(PXPhotosBarsController *)v6 swift_init];
  }

  return v6;
}

- (PXPhotosBarsController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:132 description:{@"%s is not available as initializer", "-[PXPhotosBarsController init]"}];

  abort();
}

@end