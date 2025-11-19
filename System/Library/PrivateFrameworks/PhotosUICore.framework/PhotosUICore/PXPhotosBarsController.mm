@interface PXPhotosBarsController
- (BOOL)_actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5;
- (BOOL)shouldUseCompactBarButtons;
- (NSString)selectModeCaptionText;
- (PLDateRangeFormatter)dateRangeFormatter;
- (PXBarsControllerDelegate)delegate;
- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory;
- (PXPhotosBarsController)init;
- (PXPhotosBarsController)initWithPhotosContentController:(id)a3;
- (PXPhotosContentController)contentController;
- (PXPresentationEnvironment)presentationEnvironment;
- (UIButton)selectModeChevronButton;
- (UILabel)selectModeCaptionLabel;
- (id)_identifierForActionType:(id)a3;
- (id)_makeActionMenu;
- (id)barAppearance;
- (id)barItemIdentifiersToInvalidateForPhotosViewModelChange:(unint64_t)a3;
- (id)createActionMenuController;
- (id)createAssetActionManagerForAssetReference:(id)a3;
- (id)createBarButtonItemForIdentifier:(id)a3 placement:(unint64_t)a4;
- (id)createCollaborationViewFromAssetsDataSource:(id)a3;
- (id)filterButtonController;
- (id)presentationEnvironmentForActionPerformer:(id)a3;
- (id)undoManagerForActionPerformer:(id)a3;
- (int64_t)abilityToPlayMovieForAssetCollection:(id)a3;
- (void)_appIntentsAssetsActionDidFinishNotification:(id)a3;
- (void)_handleActionTypeBarButtonItem:(id)a3;
- (void)_updateSelectModeCaption;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4;
- (void)configureNavigationItem:(id)a3 withTitle:(id)a4;
- (void)handleActionMenuBarButtonItem:(id)a3;
- (void)handleAddButtonItem:(id)a3;
- (void)handleCancelBarButtonItem:(id)a3;
- (void)handleCloseButton:(id)a3;
- (void)handleCurationBarButtonItem:(id)a3;
- (void)handleDeselectAllBarButtonItem:(id)a3;
- (void)handleDismissButton:(id)a3;
- (void)handleExplicitBackButton:(id)a3;
- (void)handleInfoButton:(id)a3;
- (void)handleMergeDuplicatesButton:(id)a3;
- (void)handleOpenInPhotosAppButton:(id)a3;
- (void)handleSearchButton:(id)a3;
- (void)handleSelectAllBarButtonItem:(id)a3;
- (void)handleSelectBarButtonItem:(id)a3;
- (void)handleToggleSidebar:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosGridActionPerformer:(id)a3 contentFilterStateChanged:(id)a4;
- (void)setContentSizeCategory:(id)a3;
- (void)setEndButtonSpacing:(double)a3;
- (void)setInterButtonSpacing:(double)a3;
- (void)setWantsToggleSidebarButton:(BOOL)a3;
- (void)updateBars;
- (void)viewControllerDidChange:(id)a3;
@end

@implementation PXPhotosBarsController

- (id)barItemIdentifiersToInvalidateForPhotosViewModelChange:(unint64_t)a3
{
  v4 = self;
  PXPhotosBarsController.barItemIdentifiersToInvalidateForPhotosViewModelChange(_:)(a3);

  v5 = sub_1A524CA14();

  return v5;
}

- (BOOL)shouldUseCompactBarButtons
{
  v2 = self;
  v3 = PXPhotosBarsController.shouldUseCompactBarButtons.getter();

  return v3 & 1;
}

- (void)handleCurationBarButtonItem:(id)a3
{
  if (a3)
  {
    v3 = self;
    swift_unknownObjectRetain();
    sub_1A524E0B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    v4 = self;
  }

  PXPhotosBarsController.handleCurationBarButtonItem(_:)();
}

- (void)configureNavigationItem:(id)a3 withTitle:(id)a4
{
  if (a4)
  {
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  v11.value._countAndFlagsBits = v6;
  v11.value._object = v8;
  PXPhotosBarsController.configureNavigationItem(_:withTitle:)(v9, v11);
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v44[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (PXPhotosBarsControllerViewModelObserverContext == a5)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __55__PXPhotosBarsController_observable_didChange_context___block_invoke;
    v40 = &unk_1E774C648;
    v11 = v10;
    v41 = v11;
    v12 = _Block_copy(&v37);
    if ((a4 & 2) != 0 && ((-[PXPhotosBarsController lastSelectionSnapshot](self, "lastSelectionSnapshot", v37, v38, v39, v40), (v13 = objc_claimAutoreleasedReturnValue()) == 0) || (v14 = v13, -[PXPhotosBarsController viewModel](self, "viewModel"), v15 = objc_claimAutoreleasedReturnValue(), [v15 selectionManager], v16 = objc_claimAutoreleasedReturnValue(), -[PXPhotosBarsController lastSelectionSnapshot](self, "lastSelectionSnapshot"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "hasAnyChangesFromSelection:", v17), v17, v16, v15, v14, v18)))
    {
      v19 = [(PXPhotosBarsController *)self viewModel];
      v20 = [v19 selectionSnapshot];
      [(PXPhotosBarsController *)self setLastSelectionSnapshot:v20];

      v12[2](v12);
      v21 = 1;
      if ((a4 & 4) == 0)
      {
LABEL_16:
        if ((a4 & 0x100200200024) != 0)
        {
          v12[2](v12);
          v21 = 1;
        }

        if ((a4 & 0x84000) != 0)
        {
          [v11 addObject:*off_1E7721F38];
          v21 = 1;
        }

        v22 = [(PXPhotosBarsController *)self barItemIdentifiersToInvalidateForPhotosViewModelChange:a4, v37, v38, v39, v40];
        if ([v22 count])
        {
          [v11 addObjectsFromArray:v22];
        }

        else
        {
          v30 = v21 ^ 1;
          if ((a4 & 0x102402002020) != 0)
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
      if ((a4 & 4) == 0)
      {
        goto LABEL_16;
      }
    }

    [(PXBarsController *)self setWantsAnimatedBarsUpdate:1, v37, v38, v39, v40];
    goto LABEL_16;
  }

  if (PXPhotosAppGridViewModelObserverContext == a5)
  {
    if ((a4 & 8) == 0)
    {
      goto LABEL_40;
    }

    v44[0] = *off_1E7721EB8;
    v23 = MEMORY[0x1E695DEC8];
    v24 = v44;
    goto LABEL_38;
  }

  if (PXPhotosBarsControllerSpecObserverContext == a5)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_40;
    }

    v25 = [(PXPhotosBarsController *)self viewModel];
    v26 = [v25 specManager];
    v27 = [v26 spec];

    v28 = [MEMORY[0x1E69DC668] sharedApplication];
    v29 = [v28 preferredContentSizeCategory];
    [(PXPhotosBarsController *)self setContentSizeCategory:v29];

    [v27 interButtonSpacing];
    [(PXPhotosBarsController *)self setInterButtonSpacing:?];
    [v27 endButtonSpacing];
    [(PXPhotosBarsController *)self setEndButtonSpacing:?];
    -[PXPhotosBarsController setWantsToggleSidebarButton:](self, "setWantsToggleSidebarButton:", [v27 wantsToggleSidebarButton]);
LABEL_35:

    goto LABEL_40;
  }

  if (PXPhotosBarsControllerAssetTypeCountObserverContext == a5)
  {
    if ((a4 & 1) == 0)
    {
      goto LABEL_40;
    }

    v31 = *off_1E7721E98;
    v43[0] = *off_1E7721EF8;
    v43[1] = v31;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v32 = [(PXPhotosBarsController *)self viewModel];
    v33 = [v32 wantsSelectModeCaptionInContextMenu];

    if (v33)
    {
      v34 = [v27 arrayByAddingObject:*off_1E7721F00];

      v27 = v34;
    }

    [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v27];
    [(PXBarsController *)self invalidateBars];
    goto LABEL_35;
  }

  if (PXSharedLibraryStatusProviderObservationContext_231136 == a5)
  {
    if ((a4 & 3) == 0)
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

  if (PXLibraryFilterStateObservationContext_231137 != a5)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1342 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (a4)
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

- (void)assetCollectionActionPerformer:(id)a3 playMovieForAssetCollection:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXBarsController *)self viewController];
  if ([v6 tryToPresentMovieForAssetCollection:v5])
  {
    goto LABEL_2;
  }

  v13 = v5;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = v13;

    if (v14)
    {
      v15 = [(PXPhotosBarsController *)self moviePresenter];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 presentingViewController];
        if (v6 == v17)
        {

          goto LABEL_18;
        }

        if (!v6)
        {
          goto LABEL_18;
        }
      }

      else if (!v6)
      {
        v16 = 0;
        goto LABEL_18;
      }

      v18 = [PXMoviePresenter moviePresenterWithPresentingViewController:v6];

      [(PXPhotosBarsController *)self setMoviePresenter:v18];
      v16 = v18;
LABEL_18:
      [v16 presentMovieViewControllerForAssetCollection:v14 keyAssetFetchResult:0 preferredTransitionType:1];

LABEL_2:
      v7 = MEMORY[0x1E6991F28];
      v8 = *MEMORY[0x1E6991E08];
      v21[0] = v5;
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

- (int64_t)abilityToPlayMovieForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXBarsController *)self viewController];
  v6 = [v5 abilityToPlayMovieForAssetCollection:v4];

  if (!v6)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass() & 1;
  }

  return v6;
}

- (void)photosGridActionPerformer:(id)a3 contentFilterStateChanged:(id)a4
{
  v5 = a4;
  v6 = [(PXPhotosBarsController *)self viewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__PXPhotosBarsController_photosGridActionPerformer_contentFilterStateChanged___block_invoke;
  v8[3] = &unk_1E7748CB8;
  v9 = v5;
  v7 = v5;
  [v6 performChanges:v8];
}

- (PXMemoryAssetsActionFactory)memoryAssetsActionFactory
{
  v2 = [(PXPhotosBarsController *)self viewModel];
  v3 = [v2 memoryAssetsActionFactory];

  return v3;
}

- (id)presentationEnvironmentForActionPerformer:(id)a3
{
  v4 = [a3 actionType];
  v5 = [(PXPhotosBarsController *)self _identifierForActionType:v4];
  v6 = [(PXBarsController *)self cachedBarButtonItemForIdentifier:v5];
  v7 = [(PXPhotosBarsController *)self delegate];
  v8 = [v7 presentationEnvironmentForPhotosBarsController:self withSourceItem:v6];
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

- (id)undoManagerForActionPerformer:(id)a3
{
  v3 = [(PXPhotosBarsController *)self contentController];
  v4 = [v3 undoManager];

  return v4;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PXPhotosBarsController *)self presentationEnvironment];
  [v9 dismissViewController:v8 animated:1 completionHandler:v7];

  return v9 != 0;
}

- (BOOL)_actionPerformer:(id)a3 presentViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v8)
  {
    v19 = 0;
    goto LABEL_23;
  }

  v10 = v8;
  v11 = [v10 popoverPresentationController];
  if (v11)
  {
    v12 = [v7 actionType];
    v13 = [(PXPhotosBarsController *)self _identifierForActionType:v12];
    v14 = v13;
    v15 = *off_1E7721F08;
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = [v7 sender];
    if (!v17)
    {
      v17 = [(PXBarsController *)self cachedBarButtonItemForIdentifier:v16];
      if (!v17)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [v7 selectionSnapshot];
          v47 = 0;
          v48 = &v47;
          v49 = 0x3032000000;
          v50 = __Block_byref_object_copy__231155;
          v51 = __Block_byref_object_dispose__231156;
          v52 = 0;
          v26 = [v25 selectedIndexPaths];
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __65__PXPhotosBarsController__actionPerformer_presentViewController___block_invoke;
          v42[3] = &unk_1E7748C90;
          v45 = &v47;
          v46 = a2;
          v39 = v25;
          v43 = v39;
          v44 = self;
          [v26 enumerateItemIndexPathsUsingBlock:v42];

          if (v48[5])
          {
            v27 = [(PXPhotosBarsController *)self contentController];
            v28 = [v27 regionOfInterestForAssetReference:v48[5]];

            if (v28)
            {
              v29 = [(PXBarsController *)self viewController];
              v30 = [v29 view];

              [v11 setSourceView:v30];
              [v28 rectInCoordinateSpace:v30];
              [v11 setSourceRect:?];
            }
          }

          _Block_object_dispose(&v47, 8);
        }

        else
        {
          v31 = [(PXBarsController *)self viewController];
          v32 = [v31 view];
          [v11 setSourceView:v32];
        }

        goto LABEL_19;
      }
    }

    v18 = v17;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v18;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v40 = [MEMORY[0x1E696AAA8] currentHandler];
        v33 = objc_opt_class();
        v37 = NSStringFromClass(v33);
        v35 = [v18 px_descriptionForAssertionMessage];
        [v40 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1112 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"sender", v37, v35}];
      }

      [v11 setSourceView:v18];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = [(PXBarsController *)self viewController];
        v21 = [v20 view];
        [v11 setSourceView:v21];

        goto LABEL_18;
      }

      v18 = v18;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v41 = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = objc_opt_class();
        v38 = NSStringFromClass(v34);
        v36 = [v18 px_descriptionForAssertionMessage];
        [v41 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1115 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"sender", v38, v36}];
      }

      [v11 setBarButtonItem:v18];
    }

LABEL_18:
LABEL_19:
  }

  v22 = [(PXPhotosBarsController *)self presentationEnvironment];
  v19 = 1;
  [v22 presentViewController:v10 animated:1 completionHandler:0];

  v23 = [v10 presentingViewController];
  if (!v23)
  {
    v19 = [v10 px_isDelayingPresentation];
  }

LABEL_23:
  return v19;
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

- (BOOL)actionPerformer:(id)a3 transitionToViewController:(id)a4 transitionType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  switch(a5)
  {
    case 1:
      v12 = [(PXBarsController *)self viewController];
      v13 = [v12 navigationController];

      v11 = v13 != 0;
      if (v13)
      {
        [v13 pushViewController:v10 animated:1];
      }

      break;
    case 2:
      v11 = [(PXPhotosBarsController *)self _actionPerformer:v9 presentViewController:v10];
      break;
    case 0:
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1096 description:@"Code which should be unreachable has been reached"];

      abort();
    default:
      v11 = 0;
      break;
  }

  return v11;
}

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  v6 = a3;
  v10 = v6;
  if (a4 == 10)
  {
    [(PXPhotosBarsController *)self setActiveActionPerformer:v6];
    [(PXPhotosBarsController *)self setLastActionPerformer:v10];
  }

  else
  {
    v7 = [(PXPhotosBarsController *)self activeActionPerformer];

    if (v7 == v10)
    {
      [(PXPhotosBarsController *)self setActiveActionPerformer:0];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v10 shouldExitSelectModeForState:a4])
    {
      v8 = [(PXPhotosBarsController *)self lastActionPerformer];

      if (v8 == v10)
      {
        v9 = [(PXPhotosBarsController *)self viewModel];
        [v9 performChanges:&__block_literal_global_517];
      }
    }
  }
}

- (void)_appIntentsAssetsActionDidFinishNotification:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosBarsController *)self viewModel];
  if ([v3 isInSelectMode])
  {
    v4 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = objc_opt_class();
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "<%{public}@> received the 'AppIntentsAssetsActionDidFinishNotification': Will dismiss select mode", &v5, 0xCu);
    }

    [v3 performChanges:&__block_literal_global_514_231172];
  }
}

- (void)_handleActionTypeBarButtonItem:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotosBarsController *)self actionTypeByBarButtonItem];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    PXAssertGetLog();
  }

  v7 = [(PXPhotosBarsController *)self viewModel];
  v8 = [v7 assetActionManager];

  v9 = [v8 actionPerformerForActionType:v6];

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

- (void)handleToggleSidebar:(id)a3
{
  v4 = [(PXBarsController *)self viewController];
  v3 = [v4 px_splitViewController];
  [v3 toggleSidebarVisibilityAnimated];
}

- (void)handleOpenInPhotosAppButton:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotosBarsController *)self viewModel];
  v7 = [v6 appViewModel];
  v8 = [v7 openInPhotosAppButtonNavigationDestination];

  if (v8)
  {
    if ([v8 type] != 14)
    {
      v18 = [MEMORY[0x1E696AAA8] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:1002 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = [v8 additionalAttributes];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        v10 = [v9 searchText];
        v11 = PXProgrammaticNavigationURLForSearchQuery(v10);
        PXOpenSensitiveURL(v11, 0);

        goto LABEL_9;
      }

      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = objc_opt_class();
      v15 = NSStringFromClass(v16);
      v17 = [v9 px_descriptionForAssertionMessage];
      [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:994 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"destination.additionalAttributes", v15, v17}];
    }

    else
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:994 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"destination.additionalAttributes", v15}];
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

- (void)handleSearchButton:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosBarsController *)self delegate];
  [v5 photosBarsController:self didRequestSearchWithSender:v4];
}

- (void)handleInfoButton:(id)a3
{
  v4 = [(PXPhotosBarsController *)self viewModel];
  v6 = [v4 infoActionHandler];

  if (v6)
  {
    v5 = [(PXBarsController *)self viewController];
    v6[2](v6, v5);
  }
}

- (void)handleAddButtonItem:(id)a3
{
  v4 = [(PXPhotosBarsController *)self viewModel];
  v5 = [v4 assetCollectionActionManager];
  v6 = [v5 actionPerformerForActionType:*off_1E7721C30];

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

- (void)handleExplicitBackButton:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosBarsController *)self delegate];
  [v5 photosBarsController:self didRequestDismissWithSender:v4];
}

- (void)handleCloseButton:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosBarsController *)self delegate];
  [v5 photosBarsController:self didRequestDismissWithSender:v4];
}

- (void)handleDismissButton:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosBarsController *)self delegate];
  [v5 photosBarsController:self didRequestDismissWithSender:v4];
}

- (id)_makeActionMenu
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosBarsController *)self createActionMenuController];
  [(PXPhotosBarsController *)self setMenuController:v3];

  v4 = [(PXPhotosBarsController *)self menuController];
  v5 = [(PXPhotosBarsController *)self viewModel];
  v6 = [v5 objc_customExcludedActionTypesProvider];
  v7 = v6[2]();
  [v4 setExcludedActionTypes:v7];

  v8 = MEMORY[0x1E69DCC60];
  v9 = [v4 actions];
  v10 = [v8 menuWithChildren:v9];

  v11 = [(PXPhotosBarsController *)self presentationEnvironment];
  if (v11)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v5 appViewModel];
    v13 = [v12 internalMenuProducers];

    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v13);
          }

          v19 = [*(*(&v21 + 1) + 8 * v17) makeInternalMenuWithPresentationEnvironment:v11];
          v10 = [v18 mergingWithPhotosInternalMenu:v19];

          ++v17;
          v18 = v10;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v15);
    }
  }

  return v10;
}

- (void)handleActionMenuBarButtonItem:(id)a3
{
  v11 = a3;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = objc_opt_class();
    v8 = NSStringFromClass(v9);
    v10 = [v11 px_descriptionForAssertionMessage];
    [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:920 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"sender", v8, v10}];
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:920 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"sender", v8}];
  }

LABEL_3:
  v5 = [(PXPhotosBarsController *)self _makeActionMenu];
  [v11 setMenu:v5];
}

- (id)createActionMenuController
{
  v32[3] = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosBarsController *)self viewModel];
  v4 = [v3 assetCollectionActionManager];
  v5 = [off_1E7721810 sharedInstance];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v3 allowsSwitchLibraryAction])
  {
    v7 = [(PXPhotosBarsController *)self sharedLibraryStatusProvider];
    v8 = [v7 hasSharedLibraryOrPreview];

    if (v8)
    {
      v9 = *off_1E77220E0;
      v32[0] = *off_1E77220D8;
      v32[1] = v9;
      v32[2] = *off_1E77220E8;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
      [v6 addObjectsFromArray:v10];
    }
  }

  if ([v3 supportsPeopleActions])
  {
    v11 = *off_1E7721C40;
    v31[0] = *off_1E7721D10;
    v31[1] = v11;
    v31[2] = *off_1E7721CD8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    [v6 addObjectsFromArray:v12];
  }

  if ([v3 supportsSocialGroupActions])
  {
    v30 = *off_1E7721CE0;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [v6 addObjectsFromArray:v13];
  }

  if ([v3 allowsShowDetails] && objc_msgSend(v5, "enableDetailsMenuAction"))
  {
    [v6 addObject:*off_1E7721DB8];
  }

  v14 = +[PXLemonadeSettings sharedInstance];
  v15 = [v14 enableCollectionsSortButton];

  if ([v5 enableSortAction] && (v15 & 1) == 0)
  {
    [v6 addObject:*off_1E7721DA8];
  }

  if ([v3 allowsSlideshowAction])
  {
    [v6 addObject:*off_1E7721BA0];
    [v6 addObject:*off_1E7721B38];
  }

  if ([v3 allowsShowMapAction])
  {
    [v6 addObject:*off_1E7721DC8];
  }

  [v6 addObject:*off_1E7721D28];
  if ([v3 allowsFileRadarAction])
  {
    [v6 addObject:*off_1E7721A90];
  }

  if ([v3 allowsCMMActions])
  {
    [v6 addObject:*off_1E7721CB8];
    [v6 addObject:*off_1E7721DF0];
  }

  v29 = v5;
  [v6 addObject:*off_1E7721A50];
  [v6 addObject:*off_1E7721A48];
  v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v4, 0}];
  v17 = [v3 gridActionManager];
  if (v17)
  {
    [v16 addObject:v17];
  }

  v18 = v4;
  v19 = [v3 assetActionManager];
  if (v19)
  {
    [v16 addObject:v19];
  }

  v20 = [[PXPhotosGridActionMenuController alloc] initWithActionManagers:v16 viewModel:v3];
  if ([v3 allowsShareAllAction] && (objc_msgSend(v3, "wantsShareGridButtonVisible") & 1) == 0)
  {
    [v6 addObject:*off_1E77220F0];
  }

  v21 = [(PXBarsController *)self viewController];
  v22 = [v21 px_sharePresentation];

  if (!v22)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:905 description:{@"Invalid parameter not satisfying: %@", @"sharePresentation"}];
  }

  v23 = [v22 defaultActivityTypeOrder];
  if (!v23)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:907 description:{@"Invalid parameter not satisfying: %@", @"defaultActivityTypeOrder"}];
  }

  v24 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v23];
  [(PXActionMenuController *)v20 setDefaultActivityTypeOrder:v24];

  [(PXPhotosGridActionMenuController *)v20 setAdditionalActionTypes:v6];

  return v20;
}

- (void)handleCancelBarButtonItem:(id)a3
{
  v3 = [(PXPhotosBarsController *)self viewModel];
  [v3 performChanges:&__block_literal_global_474_231205];
}

- (void)handleDeselectAllBarButtonItem:(id)a3
{
  v4 = [(PXPhotosBarsController *)self viewModel];
  v3 = [v4 selectionManager];
  [v3 performChanges:&__block_literal_global_472_231208];
}

- (void)handleSelectAllBarButtonItem:(id)a3
{
  v4 = [(PXPhotosBarsController *)self viewModel];
  v3 = [v4 selectionManager];
  [v3 performChanges:&__block_literal_global_470_231210];
}

- (void)handleSelectBarButtonItem:(id)a3
{
  v3 = [(PXPhotosBarsController *)self viewModel];
  [v3 performChanges:&__block_literal_global_231212];
}

- (void)handleMergeDuplicatesButton:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosBarsController *)self viewModel];
  v6 = [v5 assetActionManager];

  [v6 executeActionForActionType:*off_1E7721AF8 sender:v4 completionHandler:0];
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.deduplicationFromAlbumSelection" withPayload:MEMORY[0x1E695E0F8]];
}

- (id)_identifierForActionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*off_1E7721B88])
  {
    v4 = off_1E7721F08;
LABEL_9:
    v5 = *v4;
    goto LABEL_10;
  }

  if ([v3 isEqualToString:*off_1E7721A98])
  {
    v4 = off_1E7721F00;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*off_1E7721BE8] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *off_1E7721B50) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *off_1E7721BF8))
  {
    v4 = off_1E7721F50;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*off_1E7721A60])
  {
    v4 = off_1E7721E48;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*off_1E7721B78])
  {
    v4 = off_1E7721ED8;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*off_1E7721B48])
  {
    v4 = off_1E7721EC8;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*off_1E7721DA8] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *off_1E77220F8))
  {
    v4 = off_1E7721E00;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:*off_1E7721AF8])
  {
    v4 = off_1E7721E98;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)createBarButtonItemForIdentifier:(id)a3 placement:(unint64_t)a4
{
  v102 = *MEMORY[0x1E69E9840];
  v83 = a3;
  v80 = [(PXPhotosBarsController *)self barButtonItemsController];
  v84 = [(PXPhotosBarsController *)self viewModel];
  if (a4 - 2 >= 3)
  {
    v6 = v83;
    v7 = v84;
    if (a4 <= 1)
    {
      v67 = [MEMORY[0x1E696AAA8] currentHandler];
      [v67 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:470 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    goto LABEL_7;
  }

  v6 = v83;
  v7 = v84;
  if (MEMORY[0x1A590D320]())
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if ([v84 navBarStyle] && objc_msgSend(v84, "navBarStyle") != 8)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v84 wantsModernNavBarButtons];
  }

LABEL_8:
  v78 = *off_1E7721EE8;
  v79 = v8;
  if ([v6 isEqualToString:?])
  {
    if ((MEMORY[0x1A590D320]() & 1) == 0)
    {
      v9 = [(PXPhotosBarsController *)self viewModel];
      if ([v9 wantsAdaptiveSelectModeBarButton])
      {
        v10 = [(PXPhotosBarsController *)self shouldUseCompactBarButtons];

        v7 = v84;
        if (v10)
        {
          v11 = [v80 createBarButtonItemWithSystemIconName:@"checkmark" target:self action:sel_handleSelectBarButtonItem_ menuAction:0 accessibilityIdentifier:v83];
LABEL_13:
          v12 = v11;
LABEL_14:
          v13 = 0;
          goto LABEL_15;
        }
      }

      else
      {

        v7 = v84;
      }
    }

    v81 = 0;
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
    v81 = 0;
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
    v81 = 0;
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
      v81 = 0;
    }

    else
    {
      v81 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
      v7 = v84;
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
    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAccessibilityIdentifier:v6];
    v13 = 0;
    if (v12)
    {
      goto LABEL_49;
    }

LABEL_97:
    v81 = 0;
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
    v81 = 0;
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
    v39 = [v7 currentDataSource];
    v40 = [v39 containerCollection];

    v41 = [v40 px_isCloudKitSharedAlbum];
    v42 = off_1E7721A30;
    if (!v41)
    {
      v42 = off_1E7721A18;
    }

    v13 = *v42;

    goto LABEL_76;
  }

  if ([v6 isEqualToString:*off_1E7721E08])
  {
    v81 = 0;
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
      if (v8)
      {
        v81 = 0;
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
      v81 = 0;
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
      v7 = v84;
      goto LABEL_27;
    }

    if ([v6 isEqualToString:*off_1E7721F38])
    {
      v45 = [(PXPhotosBarsController *)self viewModel];
      if ([v45 aspectFitContent])
      {
        v46 = @"PXLibraryAllPhotosToggleSquares";
      }

      else
      {
        v46 = @"PXLibraryAllPhotosToggleFullFrames";
      }

      v81 = PXLocalizedStringFromTable(v46, @"PhotosUICore");

      v13 = *off_1E7722108;
      goto LABEL_77;
    }

    if ([v83 isEqualToString:*off_1E7721F20])
    {
      v47 = [(PXPhotosBarsController *)self filterButtonController];
      [v47 invalidateButton];

      v48 = [(PXPhotosBarsController *)self filterButtonController];
      v12 = [v48 barButtonItem];

LABEL_109:
      v49 = v12;
      goto LABEL_110;
    }

    if ([v83 isEqualToString:*off_1E7721EF8])
    {
      v50 = [(PXPhotosBarsController *)self selectModeCaptionLabel];
      v51 = [v84 currentDataSource];
      v52 = [v51 containerCollection];

      v53 = [(PXBarsController *)self viewController];
      v54 = [v53 px_extendedTraitCollection];
      v55 = [v54 userInterfaceIdiom];

      if (v55 == 2 && (([v52 px_isRecentlyDeletedSmartAlbum] & 1) != 0 || objc_msgSend(v52, "px_isRecoveredSmartAlbum")))
      {
        [v50 setNumberOfLines:1];
      }

      [(PXPhotosBarsController *)self _updateSelectModeCaption];
      v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v50];
      [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAccessibilityIdentifier:v83];
      [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setHidesSharedBackground:1];
      goto LABEL_136;
    }

    if ([v83 isEqualToString:*off_1E7721F00])
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

      v50 = [v56 systemImageNamed:v57];
      v58 = [(PXPhotosBarsController *)self delegate];
      v52 = [v58 barsControllerActionsForSelectionContextMenu:self];

      if ([v84 wantsSelectModeCaptionInContextMenu])
      {
        v59 = [(PXPhotosBarsController *)self selectModeCaptionText];
      }

      else
      {
        v59 = &stru_1F1741150;
      }

      v61 = [MEMORY[0x1E69DCC60] menuWithTitle:v59 children:v52];
      v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v50 menu:v61];
      v62 = [v84 currentDataSource];
      v63 = [v62 containerCollection];

      if ([v63 px_isRecentlyDeletedSmartAlbum] & 1) != 0 || (objc_msgSend(v63, "px_isRecoveredSmartAlbum"))
      {
        v64 = 1;
      }

      else
      {
        v66 = [v84 selectionSnapshot];
        v64 = [v66 isAnyItemSelected];
      }

      [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setEnabled:v64];
      [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAccessibilityIdentifier:v83];

LABEL_135:
LABEL_136:

      goto LABEL_14;
    }

    if ([v83 isEqualToString:*off_1E7721E58])
    {
      v81 = 0;
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

    if ([v83 isEqualToString:*off_1E7721E38])
    {
      v81 = 0;
      v72 = 0;
      v74 = 0;
      v14 = 0;
      v75 = 0;
      v13 = 0;
      v15 = sel_handleCloseButton_;
      goto LABEL_78;
    }

    if ([v83 isEqualToString:*off_1E7721E18])
    {
      v65 = off_1E7721A28;
    }

    else
    {
      if (![v83 isEqualToString:*off_1E7721E40])
      {
        if ([v83 isEqualToString:*off_1E7721E90])
        {
          v98.receiver = self;
          v98.super_class = PXPhotosBarsController;
          v12 = [(PXBarsController *)&v98 createBarButtonItemForIdentifier:v83 placement:a4];
          [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAccessibilityIdentifier:v83];
        }

        else
        {
          if (![v83 isEqualToString:*off_1E7721E20])
          {
            if ([v83 isEqualToString:*off_1E7721E80])
            {
              v68 = off_1E7721A90;
            }

            else
            {
              if ([v83 isEqualToString:*off_1E7721E88])
              {
                v81 = 0;
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

              if ([v83 isEqualToString:*off_1E7721ED0])
              {
                v13 = *off_1E7721B70;
                v81 = 0;
                v74 = 0;
                v75 = 0;
                v15 = 0;
                v14 = 0;
                v76 = 0;
                v77 = 1;
                v60 = @"arrowshape.turn.up.left";
                goto LABEL_141;
              }

              if ([v83 isEqualToString:*off_1E7721F30])
              {
                v13 = *off_1E7721BD0;
                v81 = 0;
                v74 = 0;
                v75 = 0;
                v15 = 0;
                v14 = 0;
                v76 = 0;
                v77 = 1;
                v60 = @"plus.bubble.tapback";
                goto LABEL_141;
              }

              if ([v83 isEqualToString:*off_1E7721E98])
              {
                v69 = [v84 assetActionManager];
                v13 = *off_1E7721AF8;
                v12 = [v69 barButtonItemForActionType:v13];
                if ([v69 canPerformActionType:v13])
                {
                  v70 = [v69 shouldEnableActionType:v13 onAsset:0];
                }

                else
                {
                  v70 = 0;
                }

                [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setHidesSharedBackground:v70 ^ 1];
                [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setEnabled:v70];
                [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setTarget:self];
                [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAction:sel_handleMergeDuplicatesButton_];
                [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAccessibilityIdentifier:v83];

LABEL_15:
                v7 = v84;
                if (!v12)
                {
                  goto LABEL_97;
                }

LABEL_49:
                v20 = 0;
                v81 = 0;
                goto LABEL_65;
              }

              if ([v83 isEqualToString:*off_1E7721EA0])
              {
                v68 = off_1E7721B08;
              }

              else if ([v83 isEqualToString:*off_1E7721EA8])
              {
                v68 = off_1E7721B10;
              }

              else
              {
                if (![v83 isEqualToString:*off_1E7721EB0])
                {
                  if ([v83 isEqualToString:*off_1E7721E70])
                  {
                    if (!MEMORY[0x1A590D320]())
                    {
                      v11 = [v80 createStandardBackButtonWithTarget:self action:sel_handleExplicitBackButton_ accessibilityIdentifier:v83];
                      goto LABEL_13;
                    }

                    v49 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:101 target:self action:sel_handleExplicitBackButton_];
                    v12 = v49;
LABEL_110:
                    [(PXPhotosPlaceholderSearchBarButtonItem *)v49 setAccessibilityIdentifier:v83];
                    goto LABEL_14;
                  }

                  if ([v83 isEqualToString:*off_1E7721EE0])
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
                      v12 = [(PXPhotosPlaceholderSearchBarButtonItem *)v71 initWithAction:v95];
                      [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAccessibilityIdentifier:v83];
                      objc_destroyWeak(&v96);
                      objc_destroyWeak(buf);
                      goto LABEL_14;
                    }

                    v81 = 0;
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
                    if (![v83 isEqualToString:*off_1E7721F48])
                    {
                      if (![v83 isEqualToString:*off_1E7721F10])
                      {
                        if (![v83 isEqualToString:*off_1E7721F40])
                        {
                          v81 = 0;
                          v72 = 0;
                          v74 = 0;
                          v14 = 0;
                          v75 = 0;
                          v13 = 0;
                          if ([v83 isEqualToString:*off_1E7721EB8])
                          {
                            v15 = sel_handleOpenInPhotosAppButton_;
                          }

                          else
                          {
                            v15 = 0;
                          }

                          goto LABEL_78;
                        }

                        v12 = [(PXPhotosBarsController *)self curationBarButtonItem];
                        goto LABEL_109;
                      }

                      v50 = [(PXPhotosBarsController *)self viewModel];
                      v52 = [v50 currentDataSource];
                      v59 = [(PXPhotosBarsController *)self createCollaborationViewFromAssetsDataSource:v52];
                      v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v59];
                      [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAccessibilityIdentifier:v83];
                      goto LABEL_135;
                    }

                    v81 = 0;
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
            v81 = 0;
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
          v12 = [(PXBarsController *)&v97 createBarButtonItemForIdentifier:v83 placement:a4];
          [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setAccessibilityIdentifier:v83];
        }

        v79 = 0;
        goto LABEL_14;
      }

      v65 = off_1E7721CA8;
    }

    v13 = *v65;
    v81 = 0;
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
  v81 = 0;
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
  v17 = [v84 gridActionManager];
  v18 = [v84 assetCollectionActionManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PXPhotosBarsController_createBarButtonItemForIdentifier_placement___block_invoke_3;
  aBlock[3] = &unk_1E7748C28;
  v93 = v15;
  v19 = v83;
  v94 = a4;
  v86 = v19;
  v87 = self;
  v20 = v14;
  v92 = v20;
  v13 = v13;
  v88 = v13;
  v21 = v16;
  v89 = v21;
  v22 = v17;
  v90 = v22;
  v23 = v18;
  v91 = v23;
  v24 = _Block_copy(aBlock);
  if (MEMORY[0x1A590D320]() & 1 | ((v79 & 1) == 0))
  {
LABEL_58:
    v12 = v24[2](v24);
    goto LABEL_59;
  }

  if ((v77 & v76) == 1 && !v81)
  {
    v25 = v24[2](v24);
    v81 = [v25 title];

    if (!v81)
    {
      PXAssertGetLog();
    }

    v26 = v13 == 0;
    v27 = [v80 createBarButtonItemWithTitle:? target:? action:? menuAction:? accessibilityIdentifier:?];
LABEL_38:
    v12 = v27;
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

  if (v81)
  {
    v26 = v13 == 0;
    v27 = [v80 createBarButtonItemWithTitle:v81 target:self action:v28 menuAction:v75 accessibilityIdentifier:v19];
    goto LABEL_38;
  }

  if ((v77 & 1) == 0)
  {
    v29 = [v80 createBarButtonItemWithSystemItem:v74 target:self action:v28 menuAction:v75 accessibilityIdentifier:v19];
    goto LABEL_51;
  }

  if ((v76 & 1) == 0)
  {
    v29 = [v80 createBarButtonItemWithSystemIconName:v73 target:self action:v28 menuAction:v75 accessibilityIdentifier:v19];
LABEL_51:
    v12 = v29;
    v81 = 0;
    if (!v13)
    {
      goto LABEL_57;
    }

    goto LABEL_52;
  }

  v12 = 0;
  v81 = 0;
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

  [(PXPhotosPlaceholderSearchBarButtonItem *)v12 setEnabled:v30];
  v31 = [(PXPhotosBarsController *)self actionTypeByBarButtonItem];
  [v31 setObject:v13 forKey:v12];

LABEL_57:
  if (!v12)
  {
    goto LABEL_58;
  }

LABEL_59:
  v32 = [v19 isEqualToString:v78];
  if (v12)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33 == 1)
  {
    v34 = [(PXPhotosBarsController *)self viewModel];
    v35 = [v34 currentDataSource];

    -[PXPhotosPlaceholderSearchBarButtonItem setEnabled:](v12, "setEnabled:", [v35 containsAnyItems]);
  }

  v7 = v84;
LABEL_65:
  v36 = v12;

  return v12;
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

- (void)setWantsToggleSidebarButton:(BOOL)a3
{
  if (self->_wantsToggleSidebarButton != a3)
  {
    self->_wantsToggleSidebarButton = a3;
    [(PXBarsController *)self invalidateBars];
  }
}

- (void)setEndButtonSpacing:(double)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_endButtonSpacing != a3)
  {
    self->_endButtonSpacing = a3;
    v5[0] = *off_1E7721E20;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v4];

    [(PXBarsController *)self invalidateBars];
  }
}

- (void)setInterButtonSpacing:(double)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (self->_interButtonSpacing != a3)
  {
    self->_interButtonSpacing = a3;
    v5[0] = *off_1E7721E90;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    [(PXBarsController *)self purgeCachedBarButtonItemsForIdentifiers:v4];

    [(PXBarsController *)self invalidateBars];
  }
}

- (void)setContentSizeCategory:(id)a3
{
  if (self->_contentSizeCategory != a3)
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
  v3 = [(PXPhotosBarsController *)self delegate];
  v4 = [v3 filterButtonControllerForPhotosBarsController:self];

  return v4;
}

- (PXPresentationEnvironment)presentationEnvironment
{
  v3 = [(PXPhotosBarsController *)self delegate];
  v4 = [v3 presentationEnvironmentForPhotosBarsController:self withSourceItem:0];
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
  v2 = [(PXBarsController *)self viewController];
  v3 = [v2 px_barAppearance];

  return v3;
}

- (id)createCollaborationViewFromAssetsDataSource:(id)a3
{
  v3 = [a3 containerCollection];
  if ([v3 px_isCloudKitSharedAlbum])
  {
    v4 = v3;
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

  v3 = [(PXPhotosBarsController *)self viewModel];
  v4 = [v3 currentDataSource];
  v5 = [v3 title];

  if (v5)
  {
    v6 = [v3 title];
    if (![v6 length])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = [v3 title];
  }

  else
  {
    v6 = [v4 firstAssetCollection];
    v7 = [v6 localizedTitle];
  }

  v8 = v7;
LABEL_8:

  v9 = [(PXPhotosBarsController *)self sharedLibraryStatusProvider];
  v10 = [v9 hasSharedLibraryOrPreview];

  v11 = [(PXPhotosBarsController *)self filterButtonController];
  v78 = v11;
  if (v11 && ([v11 shouldHideButton] & 1) == 0)
  {
    v12 = [v4 containsAnyItems];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(PXPhotosBarsController *)self viewModel];
  v14 = [v13 allowedChromeItems];

  v15 = MEMORY[0x1E695E0F0];
  if ((v14 & 0x800) != 0)
  {
    v17 = PXPhotosBarsItemIdentifierProviderForModel(v3);
    v97 = v15;
    v98[0] = v8;
    v95 = 0;
    v96 = v15;
    v93 = 0;
    v94 = 0;
    BYTE1(v74) = v12;
    LOBYTE(v74) = v10;
    [v17 valuesForModel:v3 title:v98 leadingIdentifiers:&v97 trailingIdentifiers:&v96 leadingToolbarIdentifiers:&v95 centerToolbarIdentifiers:&v94 trailingToolbarIdentifiers:&v93 hasSharedLibraryOrPreview:v74 canShowSortAndFilterMenu:?];
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

  if (-[PXPhotosBarsController shouldHideTitleInSelectModeWithLeadingBarButtonItem](self, "shouldHideTitleInSelectModeWithLeadingBarButtonItem") && [v3 isInSelectMode] && objc_msgSend(v16, "count"))
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

  v25 = [(PXBarsController *)self viewController];
  [v25 setTitle:v8];

  v26 = [(PXBarsController *)self viewController];
  v27 = [v26 navigationItem];

  v75 = v27;
  if (![v3 navBarStyle] || objc_msgSend(v3, "navBarStyle") == 8 || objc_msgSend(v3, "navBarStyle") == 7)
  {
    [(PXPhotosBarsController *)self configureNavigationItem:v27 withTitle:v8];
  }

  else
  {
    [v27 setTitle:&stru_1F1741150];
  }

  v28 = [(PXBarsController *)self viewController];
  v29 = [v28 navigationItem];
  [v29 setBackButtonTitle:v8];

  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v30 = [(PXBarsController *)self viewController];
    v31 = [v30 navigationItem];
    [v31 px_setBackButtonDisplayMode:2];
  }

  v76 = v16;
  if ([v3 titleMode])
  {
    if ([v3 isInSelectMode])
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

  v33 = [(PXBarsController *)self viewController];
  v34 = [v33 navigationItem];
  [v34 setLargeTitleDisplayMode:v32];

  v35 = [(PXBarsController *)self viewController];
  v36 = [v35 navigationItem];
  v37 = [v36 titleView];
  [v37 setHidden:v19];

  if ([v3 wantsManualNavigationBottomBarPaletteControl])
  {
    goto LABEL_38;
  }

  v38 = [v3 navigationBarBottomPaletteContentView];
  v39 = [(PXBarsController *)self viewController];
  v40 = [v39 navigationItem];
  v41 = v40;
  if (!v38)
  {
    [v40 _setBottomPalette:0];
    goto LABEL_36;
  }

  v42 = [v40 _bottomPalette];
  v43 = [v42 contentView];

  if (v38 != v43)
  {
    v44 = [[PXNavigationBarPalette alloc] initWithArrangedSubview:v38];
    v45 = [(PXBarsController *)self viewController];
    v46 = [v45 navigationItem];
    [v46 _setBottomPalette:v44];

    [v3 navigationBarBottomPaletteDirectionalLayoutMargins];
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v39 = [(PXBarsController *)self viewController];
    v41 = [v39 navigationItem];
    v55 = [v41 _bottomPalette];
    v56 = [v55 contentView];
    [v56 setDirectionalLayoutMargins:{v48, v50, v52, v54}];

LABEL_36:
  }

LABEL_38:
  v77 = v15;
  v79 = v8;
  v57 = v4;
  v58 = [v3 _shouldMimicSystemChromelessUsingManualScrollEdgeAppearance];
  v59 = [(PXBarsController *)self viewController];
  v60 = [v59 navigationItem];
  [v60 _setManualScrollEdgeAppearanceEnabled:v58];

  v61 = [v3 isEmbedded];
  v62 = [v3 wantsTabBarVisible];
  v63 = [v3 wantsNavbarVisible];
  if ([v3 wantsToolbarVisible])
  {
    v64 = [v3 toolbarStyle] == 0;
  }

  else
  {
    v64 = 0;
  }

  v65 = [(PXPhotosBarsController *)self barAppearance];
  if (([v3 isAppearing] & 1) != 0 || v63 == objc_msgSend(v65, "prefersNavigationBarVisible") && v64 == objc_msgSend(v65, "prefersToolbarVisible"))
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
  v70 = v65;
  v87 = v70;
  v71 = v69;
  v88 = v71;
  v89 = v63;
  v90 = v64;
  v91 = v62;
  v92 = v61;
  v72 = _Block_copy(aBlock);
  if ([v3 wantsImmediateBarsUpdate])
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
  v73 = [(PXPhotosBarsController *)self delegate];
  [v73 photosBarsControllerDidUpdateBars:self animated:{-[PXBarsController wantsAnimatedBarsUpdate](self, "wantsAnimatedBarsUpdate")}];
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

- (id)createAssetActionManagerForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosBarsController *)self viewModel];
  v6 = [v5 assetActionManager];
  v7 = objc_alloc(objc_opt_class());
  v8 = [v5 dataSourceManager];
  v9 = [v7 initWithSelectedObjectReference:v4 dataSourceManager:v8];

  [v9 setPerformerDelegate:self];

  return v9;
}

- (void)viewControllerDidChange:(id)a3
{
  v29[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PXPhotosBarsController;
  [(PXBarsController *)&v28 viewControllerDidChange:v4];
  v5 = [(PXBarsController *)self viewController];
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    v6 = [(PXPhotosBarsController *)self viewModel];
    v7 = [v6 navBarStyle];

    if (v7 > 8 || ((1 << v7) & 0x181) == 0)
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
      [v8 configureWithOpaqueBackground];
      v9 = [off_1E7721810 sharedInstance];
      if ([v9 colorNavbarArea])
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
      v11 = [v5 navigationItem];
      [v11 setStandardAppearance:v8];

      v12 = [(PXPhotosBarsController *)self delegate];
      [v12 photosBarsControllerDidUpdateNavigationItemAppearance:self];
    }
  }

  v13 = [v5 px_extendedTraitCollection];
  v14 = [PXPhotosBarButtonItemsController alloc];
  v15 = [(PXPhotosBarsController *)self viewModel];
  v16 = [(PXPhotosBarButtonItemsController *)v14 initWithExtendedTraitCollection:v13 viewModel:v15];
  barButtonItemsController = self->_barButtonItemsController;
  self->_barButtonItemsController = v16;

  v18 = [(PXPhotosBarsController *)self horizontalSizeClassObservation];

  if (v18)
  {
    v19 = [(PXPhotosBarsController *)self horizontalSizeClassObservation];
    [v4 unregisterForTraitChanges:v19];

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
  v21 = [v5 registerForTraitChanges:v20 withHandler:&v22];
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
  v3 = [(PXPhotosBarsController *)self selectModeCaptionText];
  PXPhotosBarsUpdateSelectModeCaption(v3, self->_selectModeCaptionLabel, self->_selectModeChevronButton);
}

- (NSString)selectModeCaptionText
{
  v2 = [(PXPhotosBarsController *)self viewModel];
  v3 = [v2 isInSelectMode];
  v4 = [v2 selectionManager];
  v5 = [v4 assetTypeCounter];
  v6 = [v5 typedCount];
  v8 = PXLocalizedSelectModeCaption(v3, v6, v7);

  return v8;
}

- (PXPhotosBarsController)initWithPhotosContentController:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PXPhotosBarsController;
  v5 = [(PXBarsController *)&v34 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_contentController, v4);
    v7 = [v4 viewModel];
    viewModel = v6->_viewModel;
    v6->_viewModel = v7;
    v9 = v7;

    [(PXPhotosViewModel *)v9 registerChangeObserver:v6 context:PXPhotosBarsControllerViewModelObserverContext];
    v10 = [(PXPhotosViewModel *)v9 specManager];
    [v10 registerChangeObserver:v6 context:PXPhotosBarsControllerSpecObserverContext];

    v11 = [(PXPhotosViewModel *)v9 specManager];
    v12 = [v11 spec];

    v13 = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = [v13 preferredContentSizeCategory];
    contentSizeCategory = v6->_contentSizeCategory;
    v6->_contentSizeCategory = v14;

    [v12 interButtonSpacing];
    v6->_interButtonSpacing = v16;
    [v12 endButtonSpacing];
    v6->_endButtonSpacing = v17;
    v6->_wantsToggleSidebarButton = [v12 wantsToggleSidebarButton];
    v18 = [(PXPhotosViewModel *)v9 gridActionManager];
    [v18 setPerformerDelegate:v6];

    v19 = [(PXPhotosViewModel *)v9 assetActionManager];
    [v19 setPerformerDelegate:v6];

    v20 = [(PXPhotosViewModel *)v9 assetCollectionActionManager];
    [v20 setPerformerDelegate:v6];

    v21 = [(PXPhotosViewModel *)v9 appViewModel];
    appViewModel = v6->_appViewModel;
    v6->_appViewModel = v21;

    [(PXPhotosAppGridViewModel *)v6->_appViewModel registerChangeObserver:v6 context:PXPhotosAppGridViewModelObserverContext];
    v23 = [(PXPhotosViewModel *)v9 selectionManager];
    v24 = [v23 assetTypeCounter];
    assetTypeCounter = v6->_assetTypeCounter;
    v6->_assetTypeCounter = v24;

    [(PXAssetSelectionTypeCounter *)v6->_assetTypeCounter registerChangeObserver:v6 context:PXPhotosBarsControllerAssetTypeCountObserverContext];
    v26 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    actionTypeByBarButtonItem = v6->_actionTypeByBarButtonItem;
    v6->_actionTypeByBarButtonItem = v26;

    v28 = [(PXPhotosViewModel *)v9 sharedLibraryStatusProvider];
    sharedLibraryStatusProvider = v6->_sharedLibraryStatusProvider;
    v6->_sharedLibraryStatusProvider = v28;

    [(PXSharedLibraryStatusProvider *)v6->_sharedLibraryStatusProvider registerChangeObserver:v6 context:PXSharedLibraryStatusProviderObservationContext_231136];
    v30 = [(PXPhotosViewModel *)v9 libraryFilterState];
    libraryFilterState = v6->_libraryFilterState;
    v6->_libraryFilterState = v30;

    [(PXLibraryFilterState *)v6->_libraryFilterState registerChangeObserver:v6 context:PXLibraryFilterStateObservationContext_231137];
    v32 = [MEMORY[0x1E696AD88] defaultCenter];
    [v32 addObserver:v6 selector:sel__appIntentsAssetsActionDidFinishNotification_ name:PXAppIntentsAssetsActionDidFinishNotification object:0];

    [(PXPhotosBarsController *)v6 swift_init];
  }

  return v6;
}

- (PXPhotosBarsController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosBarsController.m" lineNumber:132 description:{@"%s is not available as initializer", "-[PXPhotosBarsController init]"}];

  abort();
}

@end