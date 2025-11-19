@interface PXMenuBuilder
+ (id)_menuWithConfiguration:(id)a3;
+ (id)defaultStoryActionsMenuWithViewModel:(id)a3;
+ (id)defaultStoryThumbnailActionsMenuWithModel:(id)a3 isFavorite:(BOOL)a4;
+ (id)menuWithTitle:(id)a3 options:(unint64_t)a4 deferredConfiguration:(id)a5;
- (PXMenuBuilder)init;
- (void)_addMenuItem:(id)a3;
- (void)addActionsMenuDurationSectionWithStoryViewModel:(id)a3;
- (void)addItemWithTitle:(id)a3 systemImageName:(id)a4 state:(int64_t)a5 options:(unint64_t)a6 handler:(id)a7;
- (void)addItemWithTitle:(id)a3 systemImageName:(id)a4 submenuConfiguration:(id)a5;
- (void)addSectionWithConfiguration:(id)a3;
- (void)addSectionWithMenu:(id)a3;
@end

@implementation PXMenuBuilder

- (void)addActionsMenuDurationSectionWithStoryViewModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A486D7B0(v4, &v8);
  if (v9)
  {
    sub_1A3C34460(&v8, v10);
    v6 = v11;
    v7 = __swift_project_boxed_opaque_existential_1(v10, v11);
    sub_1A408EA88(v7, 0, 0, v6);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {

    sub_1A486D920(&v8);
  }
}

+ (id)defaultStoryThumbnailActionsMenuWithModel:(id)a3 isFavorite:(BOOL)a4
{
  v7 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke;
  aBlock[3] = &unk_1E7736108;
  v8 = v7;
  v30 = v8;
  v9 = _Block_copy(aBlock);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_3;
  v27[3] = &unk_1E7735FF0;
  v10 = v9;
  v28 = v10;
  v11 = _Block_copy(v27);
  v12 = [v8 layoutSpec];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_4;
  v19[3] = &unk_1E77361A8;
  v26 = a4;
  v20 = v12;
  v21 = v8;
  v24 = a2;
  v25 = a1;
  v22 = v11;
  v23 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v11;
  v16 = v12;
  v17 = [PXMenuBuilder menuWithDeferredConfiguration:v19];

  return v17;
}

id __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_2;
  aBlock[3] = &unk_1E77360E0;
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = a2;
  v11 = v6;
  v7 = v5;
  v8 = _Block_copy(aBlock);

  return v8;
}

void __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_5;
  v17[3] = &unk_1E7736130;
  v18 = *(a1 + 32);
  v20 = *(a1 + 80);
  v19 = *(a1 + 48);
  [v3 addSectionWithConfiguration:v17];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_6;
  v13[3] = &unk_1E7736158;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 64);
  v6 = *(a1 + 56);
  v7 = *(a1 + 48);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  [v3 addSectionWithConfiguration:v13];
  v10 = +[PXRootSettings sharedInstance];
  LODWORD(v5) = [v10 canShowInternalUI];

  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_8;
    v11[3] = &unk_1E7736180;
    v12 = *(a1 + 48);
    [v3 addSectionWithConfiguration:v11];
  }
}

void __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_5(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) thumbnailMenuIncludesFavoriteAction])
  {
    if (*(a1 + 48))
    {
      v3 = @"InteractiveMemoryCardActionMenuItemUnavorite";
    }

    else
    {
      v3 = @"InteractiveMemoryCardActionMenuItemFavorite";
    }

    if (*(a1 + 48))
    {
      v4 = @"heart.slash";
    }

    else
    {
      v4 = @"heart";
    }

    v5 = PXLocalizedStringFromTable(v3, @"PhotosUICore");
    v6 = (*(*(a1 + 40) + 16))();
    [v9 addItemWithTitle:v5 systemImageName:v4 handler:v6];
  }

  v7 = PXLocalizedStringFromTable(@"InteractiveMemoryCardActionMenuItemChangeTitle", @"PhotosUICore");
  v8 = (*(*(a1 + 40) + 16))();
  [v9 addItemWithTitle:v7 systemImageName:@"pencil" handler:v8];
}

void __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) thumbnailMenuIncludesFeatureLessAction])
  {
    v4 = PXLocalizedStringFromTable(@"InteractiveMemoryCardActionMenuItemFeatureLess", @"PhotosUICore");
    v5 = [*(a1 + 40) currentAssetCollection];
    if ([v5 px_canPerformFeatureLessAction])
    {
      v6 = [v5 px_blockableFeatureActions];
      if ([v6 count] < 2)
      {
        v7 = *(a1 + 48);
        v8 = [v6 lastObject];
        v9 = [v8 actionType];
        v10 = (*(v7 + 16))(v7, 6, v9);
        [v3 addItemWithTitle:v4 systemImageName:@"memories.badge.minus" handler:v10];
      }

      else
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_7;
        v15[3] = &unk_1E7736068;
        v16 = v6;
        v17 = *(a1 + 48);
        [v3 addItemWithTitle:v4 systemImageName:@"memories.badge.minus" submenuConfiguration:v15];
      }
    }
  }

  v11 = PXLocalizedStringFromTable(@"InteractiveMemoryCardActionMenuItemDelete", @"PhotosUICore");
  v14 = (*(*(a1 + 56) + 16))(*(a1 + 56), 5, v12, v13);
  [v3 addItemWithTitle:v11 systemImageName:@"trash" options:1 handler:v14];
}

void __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  v5 = a2;
  v6 = v4(v3, 7);
  [v5 addItemWithTitle:@"File Radar" systemImageName:@"ant" handler:v6];

  v7 = (*(*(a1 + 32) + 16))();
  [v5 addItemWithTitle:@"Visual Diagnostics" systemImageName:@"eye" handler:v7];
}

void __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_7(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 localizedTitle];
        v11 = *(a1 + 40);
        v12 = [v9 actionType];
        v13 = (*(v11 + 16))(v11, 6, v12);
        [v3 addItemWithTitle:v10 systemImageName:0 handler:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

void __88__PXMenuBuilder_PXStoryViewModel__defaultStoryThumbnailActionsMenuWithModel_isFavorite___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) thumbnailActionPerformer];
  v7 = v6;
  v8 = *(a1 + 48);
  if (v8 > 4)
  {
    if (v8 > 6)
    {
      if (v8 == 7)
      {
        [v6 fileRadar];
      }

      else if (v8 == 8)
      {
        [v6 showVisualDiagnostics];
      }
    }

    else if (v8 == 5)
    {
      [v6 deleteMemory];
    }

    else
    {
      [v6 featureLess:*(a1 + 40)];
    }
  }

  else if (v8 > 2)
  {
    if (v8 == 3)
    {
      [v6 presentShareSheet];
    }

    else
    {
      [v6 presentTitleEditor];
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        v9 = 1;
        goto LABEL_15;
      case 2:
        v9 = 0;
LABEL_15:
        [v6 setFavorite:v9 completionHandler:0];
        break;
      case 0:
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PXMenuBuilder(PXStoryViewModel) defaultStoryThumbnailActionsMenuWithModel:isFavorite:]_block_invoke_2"];
        [v10 handleFailureInFunction:v11 file:@"PXMenuBuilder+PXStoryViewModel.m" lineNumber:165 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }
}

+ (id)defaultStoryActionsMenuWithViewModel:(id)a3
{
  v3 = a3;
  v4 = +[PXStorySettings sharedInstance];
  v5 = [v4 useCommonActionInfrastructureForActionMenu];

  if (v5)
  {
    v6 = [v3 makeDefaultActionsMenu];
  }

  else
  {
    v7 = +[PXStorySettings sharedInstance];
    v27 = [v3 viewLayoutSpec];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke;
    aBlock[3] = &unk_1E7735FC8;
    v8 = v3;
    v45 = v8;
    v9 = _Block_copy(aBlock);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_3;
    v42[3] = &unk_1E7735FF0;
    v10 = v9;
    v43 = v10;
    v11 = _Block_copy(v42);
    v12 = [v8 mainModel];
    v13 = [v12 recipeManager];
    v14 = [v8 mainConfiguration];
    v15 = [v14 assetCollection];
    v16 = [v15 px_canContainPotentiallySensitiveContent];

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_4;
    v33[3] = &unk_1E77360B8;
    v17 = v8;
    v41 = v16;
    v34 = v17;
    v35 = v12;
    v36 = v27;
    v37 = v13;
    v38 = v7;
    v39 = v11;
    v40 = v10;
    v18 = v10;
    v28 = v7;
    v19 = v13;
    v20 = v27;
    v21 = v12;
    v22 = v11;
    v23 = [PXMenuBuilder menuWithDeferredConfiguration:v33];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_9;
    v31[3] = &unk_1E774C648;
    v24 = v17;
    v32 = v24;
    v25 = [v23 onOpen:v31];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_11;
    v29[3] = &unk_1E774C648;
    v30 = v24;
    v6 = [v25 onClose:v29];
  }

  return v6;
}

id __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_2;
  aBlock[3] = &unk_1E7735FA0;
  v8 = *(a1 + 32);
  v9 = a2;
  v10 = a3;
  v5 = _Block_copy(aBlock);

  return v5;
}

void __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_5;
  v15[3] = &unk_1E7736018;
  v4 = *(a1 + 32);
  v18 = *(a1 + 72);
  v19 = *(a1 + 88);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v16 = v9;
  v17 = v8;
  [v3 addSectionWithConfiguration:v15];
  [v3 addActionsMenuDurationSectionWithStoryViewModel:*(a1 + 32)];
  v10 = +[PXRootSettings sharedInstance];
  LODWORD(v5) = [v10 canShowInternalUI];

  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_6;
    v11[3] = &unk_1E7736090;
    v12 = *(a1 + 32);
    v13 = *(a1 + 64);
    v14 = *(a1 + 80);
    [v3 addItemWithTitle:@"Internal" systemImageName:@"applelogo" submenuConfiguration:v11];
  }
}

void __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_5(uint64_t a1, void *a2)
{
  v47 = a2;
  if ([*(a1 + 32) canToggleSelectMode])
  {
    v3 = PXLocalizedStringFromTable(@"InteractiveMemoryActionMenuItemSelect", @"PhotosUICore");
    v4 = (*(*(a1 + 64) + 16))();
    [v47 addItemWithTitle:v3 systemImageName:@"checkmark.circle" handler:v4];
  }

  if (MEMORY[0x1A590D320]() && (*(a1 + 72) & 1) == 0)
  {
    v5 = PXLocalizedStringFromTable(@"InteractiveMemoryActionMenuItemShareMovie", @"PhotosUICore");
    v6 = (*(*(a1 + 64) + 16))();
    [v47 addItemWithTitle:v5 systemImageName:@"square.and.arrow.up" handler:v6];
  }

  v7 = [*(a1 + 40) currentAssetCollectionIsFavorite];
  v8 = v7 == 0;
  if (v7)
  {
    v9 = @"InteractiveMemoryActionMenuItemRemoveFromFavorites";
  }

  else
  {
    v9 = @"InteractiveMemoryActionMenuItemAddToFavorites";
  }

  if (v8)
  {
    v10 = @"heart";
  }

  else
  {
    v10 = @"heart.slash";
  }

  v11 = PXLocalizedStringFromTable(v9, @"PhotosUICore");
  v12 = (*(*(a1 + 64) + 16))();
  [v47 addItemWithTitle:v11 systemImageName:v10 handler:v12];

  if (([*(a1 + 32) allowedChromeItems] & 0x10000000) != 0)
  {
    v13 = @"InteractiveMemoryActionMenuItemEditMovieTimeline";
    goto LABEL_16;
  }

  if ([*(a1 + 48) canShowManagePhotosAction])
  {
    v13 = @"InteractiveMemoryActionMenuItemManagePhotos";
LABEL_16:
    v14 = PXLocalizedStringFromTable(v13, @"PhotosUICore");
    v15 = (*(*(a1 + 64) + 16))();
    [v47 addItemWithTitle:v14 systemImageName:@"photo.on.rectangle.angled" handler:v15];
  }

  if ([*(a1 + 32) desiredPlayState] || (objc_msgSend(*(a1 + 40), "currentChapterTitleIsVisible") & 1) == 0)
  {
    v16 = @"InteractiveMemoryActionMenuItemChangeTitle";
  }

  else
  {
    v16 = @"InteractiveMemoryActionMenuItemEditChapterTitle";
  }

  v17 = PXLocalizedStringFromTable(v16, @"PhotosUICore");
  v18 = (*(*(a1 + 64) + 16))();
  [v47 addItemWithTitle:v17 systemImageName:@"pencil" handler:v18];

  if ([*(a1 + 32) viewMode] == 1 && !objc_msgSend(*(a1 + 32), "desiredPlayState"))
  {
    v19 = [*(a1 + 40) visibleDisplayAssets];
    v20 = [v19 count];

    if (v20 == 1)
    {
      v21 = [*(a1 + 40) visibleDisplayAssets];
      v22 = [v21 firstObject];
      v23 = [*(a1 + 56) recipe];
      v24 = [v23 keyAsset];
      v25 = v22;
      v26 = v24;
      v27 = v26;
      if (v25 == v26)
      {
      }

      else
      {
        if (v25 && v26)
        {
          v28 = [v25 isContentEqualTo:v26];
          if (!v28)
          {
            v28 = [v27 isContentEqualTo:v25];
          }

          if (v28 == 2)
          {
            goto LABEL_35;
          }
        }

        else
        {
        }

        v21 = PXLocalizedStringFromTable(@"InteractiveMemoryActionMenuItemMakeKeyPhoto", @"PhotosUICore");
        v25 = (*(*(a1 + 64) + 16))();
        [v47 addItemWithTitle:v21 systemImageName:@"person.crop.rectangle.stack" handler:v25];
      }

LABEL_35:
      v29 = PXLocalizedStringFromTable(@"InteractiveMemoryActionMenuItemHideFromMemory", @"PhotosUICore");
      v30 = (*(*(a1 + 64) + 16))();
      [v47 addItemWithTitle:v29 systemImageName:@"minus.circle" handler:v30];
    }
  }

  v31 = PXLocalizedStringFromTable(@"InteractiveMemoryActionMenuItemAirPlay", @"PhotosUICore");
  v32 = (*(*(a1 + 64) + 16))();
  [v47 addItemWithTitle:v31 systemImageName:@"airplayvideo" handler:v32];

  v33 = [*(a1 + 32) shouldAutoReplayPreference];
  v34 = PXLocalizedStringFromTable(@"InteractiveMemoryActionMenuItemReplay", @"PhotosUICore");
  v35 = (*(*(a1 + 64) + 16))();
  [v47 addItemWithTitle:v34 systemImageName:@"repeat" state:v33 options:0 handler:v35];

  if ([*(a1 + 32) wantsReportConcernAction])
  {
    v36 = PXLocalizedStringFromTable(@"InteractiveMemoryActionMenuItemReportConcern", @"PhotosUICore");
    v37 = (*(*(a1 + 64) + 16))();
    [v47 addItemWithTitle:v36 systemImageName:@"exclamationmark.bubble" handler:v37];
  }

  v38 = [*(a1 + 32) viewEnvironmentModel];
  if (v38)
  {
    v39 = v38;
    v40 = [*(a1 + 32) viewEnvironmentModel];
    v41 = [v40 supportsTogglingDimming];

    if (v41)
    {
      v42 = [*(a1 + 32) viewEnvironmentModel];
      v43 = [v42 isDimmed];

      v44 = v43;
      v45 = PXLocalizedStringFromTable(@"InteractiveMemoryActionMenuItemDim", @"PhotosUICore");
      v46 = (*(*(a1 + 64) + 16))();
      [v47 addItemWithTitle:v45 systemImageName:@"circle.lefthalf.dotted.inset.half.filled.inverse" state:v44 options:0 handler:v46];
    }
  }
}

void __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_6(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] addInternalActionsTo:v3];
  if ([a1[5] isHUDEnabled])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_7;
    v4[3] = &unk_1E7736068;
    v5 = a1[4];
    v6 = a1[6];
    [v3 addItemWithTitle:@"HUD" systemImageName:@"gauge" submenuConfiguration:v4];
  }
}

void __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_7(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) isHUDVisible])
  {
    v4 = [*(a1 + 32) diagnosticHUDType];
  }

  else
  {
    v4 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_8;
  aBlock[3] = &unk_1E7736040;
  v19 = v4;
  v5 = v3;
  v17 = v5;
  v18 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  v6[2](v6, 0);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = +[PXStorySettings possibleDefaultHUDTypes];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v6[2](v6, [*(*(&v12 + 1) + 8 * v11++) integerValue]);
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v9);
  }
}

void __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_8(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[4];
  v6 = a2 - 1;
  if ((a2 - 1) >= 0x13)
  {
    v12 = @"None";
    v8 = @"None";
    v7 = @"eye.slash";
  }

  else
  {
    v12 = off_1E77401C0[v6];
    v7 = off_1E7740258[v6];
  }

  v9 = v4 == a2;
  v10 = v7;
  v11 = (*(a1[5] + 16))();
  [v5 addItemWithTitle:v12 systemImageName:v10 state:v9 options:0 handler:v11];
}

void __72__PXMenuBuilder_PXStoryViewModel__defaultStoryActionsMenuWithViewModel___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v8 = [v5 actionPerformer];
  [v8 performActionForChromeActionMenuItem:a1[5] withValue:a1[6] sender:v7 presentationSource:v6];
}

- (void)_addMenuItem:(id)a3
{
  v4 = a3;
  v5 = [(PXMenuBuilder *)self menuItems];
  [v5 addObject:v4];
}

- (void)addItemWithTitle:(id)a3 systemImageName:(id)a4 submenuConfiguration:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (a4)
  {
    a4 = [MEMORY[0x1E69DCAB8] systemImageNamed:a4];
  }

  v9 = objc_alloc_init(PXMenuBuilder);
  v8[2](v8, v9);
  v10 = MEMORY[0x1E69DCC60];
  v11 = [(PXMenuBuilder *)v9 menuItems];
  v12 = [v10 menuWithTitle:v13 image:a4 identifier:0 options:0 children:v11];
  [(PXMenuBuilder *)self _addMenuItem:v12];
}

- (void)addItemWithTitle:(id)a3 systemImageName:(id)a4 state:(int64_t)a5 options:(unint64_t)a6 handler:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a7;
  if (v11)
  {
    v13 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:v11];
  }

  else
  {
    v13 = 0;
  }

  v14 = MEMORY[0x1E69DC628];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__PXMenuBuilder_addItemWithTitle_systemImageName_state_options_handler___block_invoke;
  v24[3] = &unk_1E7742C90;
  v15 = v12;
  v25 = v15;
  v16 = [v14 actionWithTitle:v10 image:v13 identifier:0 handler:v24];
  v17 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v18 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v17];

  v19 = [v18 hasPreview];
  v20 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_FilterMenu_Shared");
  v21 = [v10 isEqualToString:v20];

  if (v19 && v21)
  {
    PXSharedLibraryUpdateActionTitleForPreview(v16);
  }

  [v16 setAttributes:(a6 >> 2) & 1 | (2 * (a6 & 1))];
  if (a5 <= 2)
  {
    [v16 setState:?];
  }

  [(PXMenuBuilder *)self _addMenuItem:v16];
}

void __72__PXMenuBuilder_addItemWithTitle_systemImageName_state_options_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 sender];
  v4 = [v3 presentationSourceItem];

  (*(v2 + 16))(v2, v5, v4);
}

- (void)addSectionWithMenu:(id)a3
{
  v4 = MEMORY[0x1E69DCC60];
  v6 = [a3 children];
  v5 = [v4 menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v6];
  [(PXMenuBuilder *)self _addMenuItem:v5];
}

- (void)addSectionWithConfiguration:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(PXMenuBuilder);
  v4[2](v4, v9);

  v5 = MEMORY[0x1E69DCC60];
  v6 = [(PXMenuBuilder *)v9 menuItems];
  v7 = [v6 copy];
  v8 = [v5 menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v7];
  [(PXMenuBuilder *)self _addMenuItem:v8];
}

- (PXMenuBuilder)init
{
  v6.receiver = self;
  v6.super_class = PXMenuBuilder;
  v2 = [(PXMenuBuilder *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    menuItems = v2->_menuItems;
    v2->_menuItems = v3;
  }

  return v2;
}

+ (id)_menuWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PXMenuBuilder);
  v3[2](v3, v4);

  v5 = MEMORY[0x1E69DCC60];
  v6 = [(PXMenuBuilder *)v4 menuItems];
  v7 = [v5 menuWithChildren:v6];

  return v7;
}

+ (id)menuWithTitle:(id)a3 options:(unint64_t)a4 deferredConfiguration:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = MEMORY[0x1E69DCC60];
  v9 = MEMORY[0x1E69DC928];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__PXMenuBuilder_menuWithTitle_options_deferredConfiguration___block_invoke;
  v16[3] = &unk_1E7739040;
  v17 = v7;
  v10 = v7;
  v11 = a3;
  v12 = [v9 elementWithProvider:v16];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v14 = [v8 menuWithTitle:v11 image:0 identifier:0 options:a4 children:v13];

  return v14;
}

void __61__PXMenuBuilder_menuWithTitle_options_deferredConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(PXMenuBuilder);
  (*(*(a1 + 32) + 16))();
  v4 = [(PXMenuBuilder *)v6 menuItems];
  v5 = [v4 copy];
  v3[2](v3, v5);
}

@end