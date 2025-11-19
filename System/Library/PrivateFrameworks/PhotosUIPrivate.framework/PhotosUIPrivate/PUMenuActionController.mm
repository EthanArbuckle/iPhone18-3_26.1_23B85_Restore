@interface PUMenuActionController
- (BOOL)assetActionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)assetActionPerformer:(id)a3 presentViewController:(id)a4;
- (NSArray)actions;
- (PUMenuActionControllerDelegate)delegate;
- (PXRegionOfInterestProvider)regionOfInterestProvider;
- (UIViewController)presentingViewController;
- (id)_contextMenuActionWithTitle:(id)a3 image:(id)a4 attributes:(unint64_t)a5 actionHandler:(id)a6;
- (id)_copyMenuElement;
- (id)contextMenuActionIfAvailableForActionType:(unint64_t)a3;
- (id)contextMenuCompactSectionElement;
- (id)debugActions;
- (id)undoManagerForAssetActionPerformer:(id)a3;
- (void)_executeActionPerformer:(id)a3;
- (void)_notifyDelegateOfAction:(id)a3;
- (void)_performFavoriteAction:(BOOL)a3;
- (void)_performSimpleActionWithType:(unint64_t)a3 completionHandler:(id)a4;
- (void)_promptTrashActionConfirmationForAsset:(id)a3 withCompletionHandler:(id)a4;
- (void)setBrowsingSession:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation PUMenuActionController

- (PUMenuActionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXRegionOfInterestProvider)regionOfInterestProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_regionOfInterestProvider);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (BOOL)assetActionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, a2, a3, a4);
  }

  return 1;
}

- (BOOL)assetActionPerformer:(id)a3 presentViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUMenuActionController *)self presentingViewController];
  if (v8)
  {
    if ([v6 actionType] == 35)
    {
      v9 = [[PUNavigationController alloc] initWithRootViewController:v7];
      [v8 presentViewController:v9 animated:1 completion:0];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v7;
        v11 = [MEMORY[0x1E69DC938] currentDevice];
        v12 = [v11 userInterfaceIdiom];

        if (v12 == 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = [v10 px_shouldForceAlertStyle];
        }

        [v10 setPreferredStyle:v13];
      }

      [v8 presentViewController:v7 animated:1 completion:0];
    }
  }

  return v8 != 0;
}

- (id)undoManagerForAssetActionPerformer:(id)a3
{
  v3 = [(PUMenuActionController *)self presentingViewController];
  v4 = [v3 undoManager];

  return v4;
}

- (void)_executeActionPerformer:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PUMenuActionController *)self _activeActionPerformer];
  v6 = [v5 state];

  if (v6 == 10 || v6 == 5)
  {
    v7 = PLOneUpGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PUMenuActionController *)self _activeActionPerformer];
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "Attempted to execute performer:%@ while an active performer is busy: %@", buf, 0x16u);
    }
  }

  else
  {
    [(PUMenuActionController *)self _setActiveActionPerformer:v4];
    [v4 setDelegate:self];
    v9 = [v4 actionType];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__PUMenuActionController__executeActionPerformer___block_invoke;
    v10[3] = &unk_1E7B809C8;
    v10[4] = self;
    v10[5] = v9;
    [v4 performWithCompletionHandler:v10];
  }
}

void __50__PUMenuActionController__executeActionPerformer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLOneUpGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_ERROR, "Error executing action: %@", &v14, 0xCu);
    }

    v6 = [*(a1 + 32) presentingViewController];
    v7 = v6;
    if (*(a1 + 40) == 33 && v6)
    {
      v8 = PULocalizedString(@"COPY_TO_PASTEBOARD_PREPARATION_ERROR_TITLE");
      v9 = PULocalizedString(@"COPY_TO_PASTEBOARD_PREPARATION_ERROR_MESSAGE");
      v10 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:v9 preferredStyle:1];
      v11 = MEMORY[0x1E69DC648];
      v12 = PULocalizedString(@"OK");
      v13 = [v11 actionWithTitle:v12 style:0 handler:&__block_literal_global_97061];
      [v10 addAction:v13];

      [v7 presentViewController:v10 animated:1 completion:0];
    }
  }

  [*(a1 + 32) _setActiveActionPerformer:0];
}

- (void)_performFavoriteAction:(BOOL)a3
{
  v3 = a3;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [(PUMenuActionController *)self browsingSession];
  v6 = [v5 viewModel];
  v7 = [v6 currentAssetReference];

  v8 = [v7 asset];
  v9 = [v7 assetCollection];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [v5 actionManager];
    if ([v11 canPerformActionType:44 onAsset:v8 inAssetCollection:v10])
    {
      v14[0] = v7;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v13 = [v11 actionPerformerForSettingFavoriteTo:v3 onAssetReferences:v12];
      [(PUMenuActionController *)self _executeActionPerformer:v13];
    }
  }
}

- (void)_promptTrashActionConfirmationForAsset:(id)a3 withCompletionHandler:(id)a4
{
  v75[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__97070;
  v73 = __Block_byref_object_dispose__97071;
  v74 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__97070;
  v67 = __Block_byref_object_dispose__97071;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__97070;
  v61 = __Block_byref_object_dispose__97071;
  v62 = 0;
  v8 = [v6 isGuestAsset];
  v9 = v8;
  if (!v8 || (v75[0] = v6, [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1], v10 = objc_claimAutoreleasedReturnValue(), v12 = (v58 + 5), v11 = v58[5], v13 = v64, v55 = v64[5], obj = v11, v14 = PXContentSyndicationRemoveConfirmationTitleAndMessageLocalizedStrings(), objc_storeStrong(v12, obj), objc_storeStrong(v13 + 5, v55), v10, (v14 & 1) == 0))
  {
    v15 = [v6 photoLibrary];
    v16 = [v15 photoLibrary];

    v17 = [objc_alloc(MEMORY[0x1E69BE898]) initWithPhotoLibrary:v16];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __87__PUMenuActionController__promptTrashActionConfirmationForAsset_withCompletionHandler___block_invoke;
    v47[3] = &unk_1E7B80958;
    v18 = v17;
    v48 = v18;
    v51 = &v69;
    v52 = &v63;
    v53 = &v57;
    v49 = v6;
    v19 = v16;
    v50 = v19;
    v54 = v9;
    [v19 performBlockAndWait:v47];
  }

  v20 = PULocalizedString(@"CANCEL");
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v70[5] message:v64[5] preferredStyle:0];
  v22 = MEMORY[0x1E69DC648];
  v23 = v58[5];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __87__PUMenuActionController__promptTrashActionConfirmationForAsset_withCompletionHandler___block_invoke_2;
  v45[3] = &unk_1E7B80980;
  v24 = v7;
  v46 = v24;
  v25 = [v22 actionWithTitle:v23 style:2 handler:v45];
  [v21 addAction:v25];

  v26 = MEMORY[0x1E69DC648];
  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __87__PUMenuActionController__promptTrashActionConfirmationForAsset_withCompletionHandler___block_invoke_3;
  v43 = &unk_1E7B80980;
  v27 = v24;
  v44 = v27;
  v28 = [v26 actionWithTitle:v20 style:1 handler:&v40];
  [v21 addAction:{v28, v40, v41, v42, v43}];

  v29 = [(PUMenuActionController *)self browsingSession];
  v30 = [v29 viewModel];
  v31 = [v30 currentAssetReference];
  v32 = [v31 pxAssetReference];

  v33 = [(PUMenuActionController *)self regionOfInterestProvider];
  v34 = [v33 regionOfInterestForAssetReference:v32];

  if (v34)
  {
    v35 = [v21 popoverPresentationController];
    v36 = [(PUMenuActionController *)self presentingViewController];
    v37 = [v36 view];
    [v35 setSourceView:v37];

    v38 = [v35 sourceView];
    [v34 rectInCoordinateSpace:v38];
    [v35 setSourceRect:?];
  }

  v39 = [(PUMenuActionController *)self presentingViewController];
  [v39 presentViewController:v21 animated:1 completion:0];

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);

  _Block_object_dispose(&v69, 8);
}

void __87__PUMenuActionController__promptTrashActionConfirmationForAsset_withCompletionHandler___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  v5 = *(a1 + 72);
  v6 = *(*(a1 + 64) + 8);
  v12 = *(v6 + 40);
  obj = v4;
  v7 = *(v5 + 8);
  v11 = *(v7 + 40);
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) pl_managedAssetFromPhotoLibrary:v2];
  v14[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v8 getDeletionWarningTitle:&obj message:&v12 buttonTitle:&v11 forAssets:v10 syndicationAssetCount:*(a1 + 80) clientName:0 style:0];
  objc_storeStrong((v3 + 40), obj);
  objc_storeStrong((v6 + 40), v12);
  objc_storeStrong((v7 + 40), v11);
}

- (void)_performSimpleActionWithType:(unint64_t)a3 completionHandler:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PUMenuActionController *)self browsingSession];
  v8 = [v7 viewModel];
  v9 = [v8 currentAssetReference];

  v10 = [v9 asset];
  v11 = [v9 assetCollection];
  v12 = v11;
  v13 = 0;
  if (v10 && v11)
  {
    v14 = [v7 actionManager];
    v21 = v10;
    v22 = v12;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v23[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    v13 = [v14 canPerformAction:a3 onAllAssetsByAssetCollection:v16];
    if (v13)
    {
      v20 = v9;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      v17 = v19 = self;
      v18 = [v14 actionPerformerForSimpleActionType:a3 onAssetReferences:v17];
      [(PUMenuActionController *)v19 _executeActionPerformer:v18];
    }
  }

  if (v6)
  {
    v6[2](v6, v13);
  }
}

- (void)_notifyDelegateOfAction:(id)a3
{
  if (self->_delegateRespondsTo.didDismissWithActionIdentifier)
  {
    v5 = a3;
    v6 = [(PUMenuActionController *)self delegate];
    [v6 menuActionController:self didDismissWithActionIdentifier:v5];
  }
}

- (id)debugActions
{
  v2 = [(PUMenuActionController *)self photosUICoreActionManager];
  v3 = [MEMORY[0x1E695DF70] array];
  if (v2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__PUMenuActionController_debugActions__block_invoke;
    v6[3] = &unk_1E7B80930;
    v7 = v2;
    v8 = v3;
    v4 = _Block_copy(v6);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C4720], 0);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C4718], 0);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C4700], 0);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C4710], 0);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C4708], 0);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C4728], 0);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C4730], 0);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C46F8], 0);
    (*(v4 + 2))(v4, *MEMORY[0x1E69C4740], 0);
  }

  return v3;
}

uint64_t __38__PUMenuActionController_debugActions__block_invoke(uint64_t a1, void *a2, int a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) canPerformActionType:v12];
  v6 = v12;
  if (v5)
  {
    v7 = [*(a1 + 32) systemImageNameForActionType:v12];
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
    v9 = [*(a1 + 32) previewActionForActionType:v12 image:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a3)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      [v9 setAttributes:v10];
    }

    [*(a1 + 40) addObject:v9];

    v6 = v12;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (NSArray)actions
{
  v96[1] = *MEMORY[0x1E69E9840];
  v89 = [(PUMenuActionController *)self browsingSession];
  v82 = [v89 actionManager];
  v3 = [v89 viewModel];
  v88 = [v3 currentAssetReference];

  v90 = [v88 asset];
  v83 = [v88 assetCollection];
  v4 = [v83 px_isMemory];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(PUMenuActionController *)self photosUICoreActionManager];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__PUMenuActionController_actions__block_invoke;
  aBlock[3] = &unk_1E7B80908;
  v7 = v6;
  v95 = v7;
  v8 = _Block_copy(aBlock);
  v87 = [(PUMenuActionController *)self contextMenuCompactSectionElement];
  if (v87)
  {
    [v5 addObject:v87];
  }

  v9 = PFIsMessagesApp();
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v8[2](v8, *MEMORY[0x1E69C4808], v5);
  }

  v86 = [(PUMenuActionController *)self _copyMenuElement];
  if (v86)
  {
    [v5 addObject:v86];
  }

  if (v7)
  {
    v8[2](v8, *MEMORY[0x1E69C4670], v5);
    v8[2](v8, *MEMORY[0x1E69C4768], v5);
    v8[2](v8, *MEMORY[0x1E69C47A8], v5);
    v11 = +[PUPhotoEditProtoSettings sharedInstance];
    v12 = [v11 showAutoEnhanceAction];

    if (v12)
    {
      v8[2](v8, *MEMORY[0x1E69C46B0], v5);
    }

    v13 = +[PUPhotoEditProtoSettings sharedInstance];
    v14 = [v13 showRotateAction];

    if (v14)
    {
      v8[2](v8, *MEMORY[0x1E69C46C8], v5);
      v8[2](v8, *MEMORY[0x1E69C46D0], v5);
    }

    if (([v7 canPerformActionType:*MEMORY[0x1E69C4748]] & 1) == 0)
    {
      v15 = *MEMORY[0x1E69C4820];
      if ([v7 canPerformActionType:*MEMORY[0x1E69C4820]])
      {
        v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
        v17 = [v7 previewActionForActionType:v15 image:v16];
        [v5 addObject:v17];
      }
    }

    if (PFIsMessagesApp())
    {
      v18 = *MEMORY[0x1E69C47C0];
      if ([v7 contextMenuCompactTopRowPositionForActionType:*MEMORY[0x1E69C47C0]] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8[2](v8, v18, v5);
      }
    }

    v19 = *MEMORY[0x1E69C4778];
    if ([v7 canPerformActionType:*MEMORY[0x1E69C4778]])
    {
      v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle"];
      v21 = [v7 previewActionForActionType:v19 image:v20];
      [v5 addObject:v21];
    }

    v8[2](v8, *MEMORY[0x1E69C4688], v5);
    v8[2](v8, *MEMORY[0x1E69C46E8], v5);
    v22 = *MEMORY[0x1E69C47A0];
    v23 = [v7 canPerformActionType:*MEMORY[0x1E69C47A0]];
    if (v90)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24 == 1)
    {
      v25 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v74 = [MEMORY[0x1E696AAA8] currentHandler];
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        v77 = [v25 px_descriptionForAssertionMessage];
        [v74 handleFailureInMethod:a2 object:self file:@"PUMenuActionController.m" lineNumber:311 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"photosUICoreActionManager", v76, v77}];
      }

      if ([v25 shouldEnableActionType:v22 onAsset:v90])
      {
        v26 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrowshape.turn.up.left"];
        v27 = [v25 previewActionForActionType:v22 image:v26];
        [v5 addObject:v27];
      }
    }

    v28 = *MEMORY[0x1E69C4630];
    if (([v7 canPerformActionType:*MEMORY[0x1E69C4630]] & (v90 != 0)) == 1)
    {
      v29 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v78 = [MEMORY[0x1E696AAA8] currentHandler];
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        v81 = [v29 px_descriptionForAssertionMessage];
        [v78 handleFailureInMethod:a2 object:self file:@"PUMenuActionController.m" lineNumber:326 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"photosUICoreActionManager", v80, v81}];
      }

      if ([v29 shouldEnableActionType:v28 onAsset:v90])
      {
        v30 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle"];
        v31 = [v29 previewActionForActionType:v28 image:v30];
        [v5 addObject:v31];
      }
    }

    v32 = *MEMORY[0x1E69C47F8];
    if ([v7 canPerformActionType:v32])
    {
      v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.rectangle.stack"];
      v34 = [v7 previewActionForActionType:v32 image:v33];

      if (v34)
      {
        [v5 addObject:v34];
      }
    }

    if (v4)
    {
      v35 = *MEMORY[0x1E69C4800];
      if ([v7 canPerformActionType:v35])
      {
        v36 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
        v37 = [v7 previewActionForActionType:v35 image:v36];

        if (v37)
        {
          [v5 addObject:v37];
        }
      }
    }

    v38 = *MEMORY[0x1E69C47D8];
    if ([v7 canPerformActionType:*MEMORY[0x1E69C47D8]])
    {
      if (!self->_delegateRespondsTo.preventRevealInMomentAction || (-[PUMenuActionController delegate](self, "delegate"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v39 menuActionControllerPreventRevealInMomentAction:self], v39, (v40 & 1) == 0))
      {
        v41 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
        v42 = [v7 previewActionForActionType:v38 image:v41];

        [v5 addObject:v42];
      }
    }

    goto LABEL_58;
  }

  PFIsMessagesApp();
  v43 = [v82 canPerformActionType:36 onAsset:v90 inAssetCollection:v83];
  v44 = v43;
  if (!self->_delegateRespondsTo.preventRevealInMomentAction)
  {
    if ((v43 & 1) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v45 = [(PUMenuActionController *)self delegate];
  v46 = [v45 menuActionControllerPreventRevealInMomentAction:self];

  if ((v46 & 1) == 0 && ((v44 ^ 1) & 1) == 0)
  {
LABEL_57:
    v32 = PULocalizedString(@"PUONEUP_QUICK_ACTION_REVEAL_IN_ALLPHOTOS");
    objc_initWeak(&location, self);
    v47 = MEMORY[0x1E69DC628];
    v48 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo.on.rectangle"];
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __33__PUMenuActionController_actions__block_invoke_2;
    v91[3] = &unk_1E7B80890;
    objc_copyWeak(&v92, &location);
    v49 = [v47 actionWithTitle:v32 image:v48 identifier:0 handler:v91];

    [v5 addObject:v49];
    objc_destroyWeak(&v92);
    objc_destroyWeak(&location);
LABEL_58:
  }

LABEL_59:
  v85 = [(PUMenuActionController *)self contextMenuActionIfAvailableForActionType:14];
  if (v85)
  {
    [v5 addObject:v85];
  }

  v50 = [(PUMenuActionController *)self contextMenuActionIfAvailableForActionType:12];
  if (v50)
  {
    [v5 addObject:v50];
  }

  if (v7)
  {
    v51 = *MEMORY[0x1E69C4770];
    if ([v7 canPerformActionType:v51])
    {
      v52 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"rectangle.stack.person.crop"];
      v53 = [v7 previewActionForActionType:v51 image:v52];

      [v5 addObject:v53];
    }

    v54 = *MEMORY[0x1E69C47E8];
    if ([v7 canPerformActionType:v54])
    {
      v55 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.square.stack"];
      v56 = [v7 previewActionForActionType:v54 image:v55];

      [v5 addObject:v56];
    }

    v57 = *MEMORY[0x1E69C4648];
    if ([v7 canPerformActionType:v57])
    {
      v58 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"photo"];
      v59 = [v7 previewActionForActionType:v57 image:v58];

      [v5 addObject:v59];
    }

    v8[2](v8, *MEMORY[0x1E69C4620], v5);
    v8[2](v8, *MEMORY[0x1E69C4628], v5);
    v8[2](v8, *MEMORY[0x1E69C4638], v5);
    v8[2](v8, *MEMORY[0x1E69C4640], v5);
    v8[2](v8, *MEMORY[0x1E69C4758], v5);
    v8[2](v8, *MEMORY[0x1E69C4750], v5);
    v8[2](v8, *MEMORY[0x1E69C4798], v5);
  }

  if ((PFIsMessagesApp() & 1) == 0)
  {
    v60 = [(PUMenuActionController *)self contextMenuActionIfAvailableForActionType:56];
    if (v60)
    {
      [v5 addObject:v60];
    }
  }

  if (v7)
  {
    v8[2](v8, *MEMORY[0x1E69C4790], v5);
    v61 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8[2](v8, *MEMORY[0x1E69C47D0], v61);
    v8[2](v8, *MEMORY[0x1E69C47B8], v61);
    if ([v61 count])
    {
      v62 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v61];
      [v5 addObject:v62];
    }

    v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v64 = *MEMORY[0x1E69C4760];
    if ([v7 canPerformActionType:v64])
    {
      (v8)[2](v8, v64, v63);
    }

    if (PFIsMessagesApp())
    {
      v65 = *MEMORY[0x1E69C4838];
      if ([v7 contextMenuCompactTopRowPositionForActionType:*MEMORY[0x1E69C4838]] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8[2](v8, v65, v5);
      }
    }

    v8[2](v8, *MEMORY[0x1E69C4788], v63);
    v8[2](v8, *MEMORY[0x1E69C4658], v63);
    v8[2](v8, *MEMORY[0x1E69C4650], v63);
    v66 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v63];
    [v5 addObject:v66];
  }

  v67 = [(PUMenuActionController *)self debugActions];
  if ([v67 count])
  {
    v68 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"apple.logo"];
    v69 = [MEMORY[0x1E69DCC60] menuWithTitle:@"Internal" image:v68 identifier:0 options:0 children:v67];
    v70 = MEMORY[0x1E69DCC60];
    v96[0] = v69;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];
    v72 = [v70 menuWithTitle:&stru_1F2AC6818 image:0 identifier:0 options:1 children:v71];
    [v5 addObject:v72];
  }

  return v5;
}

void __33__PUMenuActionController_actions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([*(a1 + 32) canPerformActionType:v10])
  {
    v6 = [*(a1 + 32) systemImageNameForActionType:v10];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v6];
    v9 = [v7 menuElementForActionType:v10 image:v8 willStartActionHandler:0 didEndActionHandler:0];

    if (v9)
    {
      [v5 addObject:v9];
    }
  }
}

void __33__PUMenuActionController_actions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performSimpleActionWithType:36 completionHandler:0];
}

- (id)contextMenuCompactSectionElement
{
  v2 = [(PUMenuActionController *)self photosUICoreActionManager];
  if (v2)
  {
    v3 = [MEMORY[0x1E69C4488] compactTopSectionMenuElementForActionManager:v2 excludedActionTypes:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_copyMenuElement
{
  v3 = [(PUMenuActionController *)self photosUICoreActionManager];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E69C4668];
    if ([v3 canPerformActionType:*MEMORY[0x1E69C4668]])
    {
      v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
      v7 = [v4 previewActionForActionType:v5 image:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = [(PUMenuActionController *)self contextMenuActionIfAvailableForActionType:33];
  }

  return v7;
}

- (id)contextMenuActionIfAvailableForActionType:(unint64_t)a3
{
  if (a3 != 2 || (-[PUMenuActionController presentingViewController](self, "presentingViewController"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 conformsToProtocol:&unk_1F2BB1570], v6, (v7 & 1) == 0))
  {
    v9 = [(PUMenuActionController *)self browsingSession];
    v10 = [v9 actionManager];

    v11 = [(PUMenuActionController *)self browsingSession];
    v12 = [v11 viewModel];
    v13 = [v12 currentAssetReference];

    v14 = [v13 asset];
    v15 = [v13 assetCollection];
    objc_initWeak(location, self);
    if (a3 <= 32)
    {
      if (a3 - 1 < 2)
      {
        v36 = PULocalizedString(@"PUONEUP_QUICK_ACTION_REMOVE_FROM_ALBUM");
        v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
        goto LABEL_36;
      }

      if (a3 - 11 < 2)
      {
        v36 = PULocalizedString(@"PUONEUP_QUICK_ACTION_RECOVER");
        v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.bin"];
        goto LABEL_36;
      }

      if (a3 - 13 < 2)
      {
        v36 = PULocalizedString(@"PUONEUP_QUICK_ACTION_RESTORE");
        v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.up.bin"];
LABEL_36:
        v20 = v16;
LABEL_42:
        v28 = 0;
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (a3 > 55)
    {
      if (a3 - 57 < 2)
      {
        v24 = [v14 mediaType];
        v25 = @"ITEM";
        if (v24 == 2)
        {
          v25 = @"VIDEO";
        }

        if (v24 == 1)
        {
          v26 = @"PHOTO";
        }

        else
        {
          v26 = v25;
        }

        v27 = [@"PUONEUP_QUICK_ACTION_SYNDICATION_REMOVE_SUGGESTION_" stringByAppendingString:v26];
        v36 = PULocalizedString(v27);

        v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
        v28 = 2;
        goto LABEL_43;
      }

      if (a3 == 56)
      {
        v29 = [v14 mediaType];
        v30 = @"ITEM";
        if (v29 == 1)
        {
          v30 = @"PHOTO";
        }

        if (v29 == 2)
        {
          v30 = @"VIDEO";
        }

        v31 = v30;
        v32 = [@"PUONEUP_QUICK_ACTION_SYNDICATION_SAVE_TO_LIBRARY_" stringByAppendingString:v31];
        v36 = PULocalizedString(v32);

        v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.down"];
        goto LABEL_41;
      }
    }

    else
    {
      switch(a3)
      {
        case '!':
          v36 = PULocalizedString(@"PUONEUP_QUICK_ACTION_COPY");
          v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"doc.on.doc"];
          goto LABEL_36;
        case '#':
          v36 = PULocalizedString(@"PUONEUP_QUICK_ACTION_SHARE");
          v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.and.arrow.up"];
          v22 = v42;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __68__PUMenuActionController_contextMenuActionIfAvailableForActionType___block_invoke;
          v42[3] = &unk_1E7B80890;
          v23 = &v43;
          objc_copyWeak(&v43, location);
          goto LABEL_38;
        case ',':
          if ([v14 isFavorite])
          {
            v17 = @"PUONEUP_QUICK_ACTION_UNFAVORITE";
          }

          else
          {
            v17 = @"PUONEUP_QUICK_ACTION_FAVORITE";
          }

          v36 = PULocalizedString(v17);
          v18 = [v14 isFavorite];
          if (v18)
          {
            v19 = @"heart.slash";
          }

          else
          {
            v19 = @"heart";
          }

          v20 = [MEMORY[0x1E69DCAB8] systemImageNamed:v19];
          v21 = v18 ^ 1;
          v22 = v39;
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __68__PUMenuActionController_contextMenuActionIfAvailableForActionType___block_invoke_2;
          v39[3] = &unk_1E7B808B8;
          v23 = &v40;
          objc_copyWeak(&v40, location);
          v41 = v21;
LABEL_38:
          v33 = _Block_copy(v22);
          objc_destroyWeak(v23);
          v28 = 0;
          if (v33)
          {
LABEL_44:
            v34 = [v10 canPerformActionType:a3 onAsset:v14 inAssetCollection:v15];
            if ((v34 & [v10 shouldEnableActionType:a3 onAsset:v14 inAssetCollection:v15]) == 1)
            {
              v8 = [(PUMenuActionController *)self _contextMenuActionWithTitle:v36 image:v20 attributes:v28 actionHandler:v33];
            }

            else
            {
              v8 = 0;
            }

            objc_destroyWeak(location);

            goto LABEL_48;
          }

LABEL_43:
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __68__PUMenuActionController_contextMenuActionIfAvailableForActionType___block_invoke_3;
          aBlock[3] = &unk_1E7B808E0;
          objc_copyWeak(v38, location);
          v38[1] = a3;
          v33 = _Block_copy(aBlock);
          objc_destroyWeak(v38);
          goto LABEL_44;
      }
    }

LABEL_40:
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [(__CFString *)v31 handleFailureInMethod:a2 object:self file:@"PUMenuActionController.m" lineNumber:170 description:@"Attempted to create an on-demand context menu action for an unsupported action type: %ld", a3];
    v36 = 0;
    v20 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v8 = 0;
LABEL_48:

  return v8;
}

void __68__PUMenuActionController_contextMenuActionIfAvailableForActionType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateOfAction:@"com.apple.mobileslideshow.PUMenuActionController.share"];
}

void __68__PUMenuActionController_contextMenuActionIfAvailableForActionType___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performFavoriteAction:*(a1 + 40)];
}

void __68__PUMenuActionController_contextMenuActionIfAvailableForActionType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performSimpleActionWithType:*(a1 + 40) completionHandler:0];
}

- (id)_contextMenuActionWithTitle:(id)a3 image:(id)a4 attributes:(unint64_t)a5 actionHandler:(id)a6
{
  v7 = [MEMORY[0x1E69DC628] actionWithTitle:a3 image:a4 identifier:0 handler:a6];
  [v7 setAttributes:a5];

  return v7;
}

- (void)setBrowsingSession:(id)a3
{
  v5 = a3;
  browsingSession = self->_browsingSession;
  p_browsingSession = &self->_browsingSession;
  if (browsingSession != v5)
  {
    v8 = v5;
    objc_storeStrong(p_browsingSession, a3);
    v5 = v8;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateRespondsTo.didDismissWithActionIdentifier = objc_opt_respondsToSelector() & 1;
    self->_delegateRespondsTo.preventRevealInMomentAction = objc_opt_respondsToSelector() & 1;
  }
}

@end