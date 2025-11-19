@interface PXCuratedLibraryActionManager
+ (id)actionsWithActionPerformers;
- (BOOL)canPerformActionType:(id)a3;
- (PXCuratedLibraryActionManager)init;
- (PXCuratedLibraryActionManager)initWithViewModel:(id)a3;
- (PXCuratedLibraryViewModel)viewModel;
- (id)actionPerformerForActionType:(id)a3;
- (id)actionPerformerForActionType:(id)a3 withAssetCollectionReference:(id)a4;
- (id)actionPerformerForHitTestResult:(id)a3;
- (id)actionPerformerForNavigatingToNextZoomLevelInLayout:(id)a3;
- (id)barButtonItemForActionType:(id)a3;
- (id)curationDebugPerformerAssetCollectionReference:(id)a3 diagnosticLayout:(id)a4;
- (id)ellipsisButtonActionPerformerWithAssetCollectionReference:(id)a3;
- (id)ellipsisButtonActionPerformerWithAssetCollectionReferenceProvider:(id)a3;
- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4;
- (id)showAllActionPerformerWithAssetCollectionReference:(id)a3;
- (id)tapToRadarPerformerAssetCollectionReference:(id)a3 diagnosticLayout:(id)a4;
@end

@implementation PXCuratedLibraryActionManager

- (PXCuratedLibraryViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (id)barButtonItemForActionType:(id)a3
{
  v3 = [(PXCuratedLibraryActionManager *)self actionPerformerForActionType:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 activitySystemImageName];
    if (v5)
    {
      v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:v5];
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 localizedTitleForUseCase:1];
    v9 = v8;
    v10 = MEMORY[0x1E69DC628];
    if (v6)
    {
      v11 = &stru_1F1741150;
    }

    else
    {
      v11 = v8;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__PXCuratedLibraryActionManager_barButtonItemForActionType___block_invoke;
    v14[3] = &unk_1E7743BF8;
    v15 = v4;
    v12 = [v10 actionWithTitle:v11 image:v6 identifier:0 handler:v14];
    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithPrimaryAction:v12];
    [v7 setAccessibilityLabel:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)actionPerformerForNavigatingToNextZoomLevelInLayout:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryActionManager *)self viewModel];
  v6 = [v5 zoomLevel];
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 selectionSnapshot];
  v8 = v7;
  if (v7)
  {
    [v7 firstSelectedIndexPath];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  if ((v6 - 1) > 1 || v17 == *off_1E7721F68)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v5 currentDataSource];
    v16[0] = v17;
    v16[1] = v18;
    v11 = [v10 assetCollectionReferenceAtSectionIndexPath:v16];

    v12 = [v4 spriteReferenceForObjectReference:v11];
    if (v6 == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    v14 = [[off_1E7721520 alloc] initWithControl:v13 spriteReference:v12 layout:v4 assetCollectionReference:v11];
    v9 = [(PXCuratedLibraryActionManager *)self actionPerformerForHitTestResult:v14];
  }

  return v9;
}

- (id)actionPerformerForHitTestResult:(id)a3
{
  v4 = a3;
  if (([v4 control] - 2) <= 2 && -[PXCuratedLibraryActionManager canPerformActionType:](self, "canPerformActionType:", @"PXCuratedLibraryActionNavigateToNextZoomLevel"))
  {
    v5 = [_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer alloc];
    v6 = [(PXCuratedLibraryActionManager *)self viewModel];
    v7 = [v4 layout];
    v8 = [v4 spriteReference];
    v9 = [(_PXCuratedLibraryNavigateToNextZoomLevelActionPerformer *)v5 initWithActionType:@"PXCuratedLibraryActionNavigateToNextZoomLevel" viewModel:v6 layout:v7 hitSpriteReference:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)curationDebugPerformerAssetCollectionReference:(id)a3 diagnosticLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXCuratedLibraryActionManager *)self canPerformActionType:@"PXCuratedLibraryActionCurationDebug"])
  {
    v8 = [PXCuratedLibraryCurationDebugActionPerformer alloc];
    v9 = [(PXCuratedLibraryActionManager *)self viewModel];
    v10 = [(PXCuratedLibraryCurationDebugActionPerformer *)v8 initWithViewModel:v9 assetCollectionReference:v6 diagnosticLayout:v7];

    v11 = [(PXActionManager *)self performerDelegate];
    [(PXActionPerformer *)v10 setDelegate:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tapToRadarPerformerAssetCollectionReference:(id)a3 diagnosticLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXCuratedLibraryActionManager *)self canPerformActionType:@"PXCuratedLibraryActionTapToRadar"])
  {
    v8 = [PXCuratedLibraryTapToRadarActionPerformer alloc];
    v9 = [(PXCuratedLibraryActionManager *)self viewModel];
    v10 = [(PXCuratedLibraryTapToRadarActionPerformer *)v8 initWithViewModel:v9 assetCollectionReference:v6 diagnosticLayout:v7];

    v11 = [(PXActionManager *)self performerDelegate];
    [(PXActionPerformer *)v10 setDelegate:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)showAllActionPerformerWithAssetCollectionReference:(id)a3
{
  v4 = a3;
  if ([(PXCuratedLibraryActionManager *)self canPerformActionType:@"PXCuratedLibraryActionShowAll"])
  {
    v5 = [PXCuratedLibraryShowAllActionPerformer alloc];
    v6 = [(PXCuratedLibraryActionManager *)self viewModel];
    v7 = [(PXCuratedLibraryAssetCollectionActionPerformer *)v5 initWithActionType:@"PXCuratedLibraryActionShowAll" viewModel:v6 assetCollectionReference:v4];

    v8 = [(PXActionManager *)self performerDelegate];
    [(PXActionPerformer *)v7 setDelegate:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)ellipsisButtonActionPerformerWithAssetCollectionReferenceProvider:(id)a3
{
  v4 = a3;
  if ([(PXCuratedLibraryActionManager *)self canPerformActionType:@"PXCuratedLibraryActionEllipsisButton"])
  {
    v5 = [PXCuratedLibraryEllipsisButtonActionPerformer alloc];
    v6 = [(PXCuratedLibraryActionManager *)self viewModel];
    v7 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)v5 initWithViewModel:v6 assetCollectionReferenceProvider:v4 actionManager:self];

    v8 = [(PXActionManager *)self performerDelegate];
    [(PXActionPerformer *)v7 setDelegate:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)ellipsisButtonActionPerformerWithAssetCollectionReference:(id)a3
{
  v4 = a3;
  if ([(PXCuratedLibraryActionManager *)self canPerformActionType:@"PXCuratedLibraryActionEllipsisButton"])
  {
    v5 = [PXCuratedLibraryEllipsisButtonActionPerformer alloc];
    v6 = [(PXCuratedLibraryActionManager *)self viewModel];
    v7 = [(PXCuratedLibraryEllipsisButtonActionPerformer *)v5 initWithViewModel:v6 assetCollectionReference:v4 actionManager:self];

    v8 = [(PXActionManager *)self performerDelegate];
    [(PXActionPerformer *)v7 setDelegate:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)actionPerformerForActionType:(id)a3 withAssetCollectionReference:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(PXCuratedLibraryActionManager *)self canPerformActionType:v7])
  {
    v9 = [(PXCuratedLibraryActionManager *)self assetCollectionActionPerformersByType];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (!v10)
    {
      v16 = [(PXCuratedLibraryActionManager *)self actionPerformersByType];
      v17 = [v16 objectForKeyedSubscript:v7];

      if (!v17)
      {
        v18 = [(PXCuratedLibraryActionManager *)self constructorSpecificActionPerformersByType];
        v19 = [v18 objectForKeyedSubscript:v7];

        if (v19)
        {
          v23 = [MEMORY[0x1E696AAA8] currentHandler];
          [v23 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:338 description:{@"You must use the specific action performer constructor for %@ Action type.", v7}];
        }

        else
        {
          v20 = +[PXCuratedLibraryActionManager actionsWithActionPerformers];
          v21 = [v20 containsObject:v7];

          v22 = [MEMORY[0x1E696AAA8] currentHandler];
          v23 = v22;
          if (v21)
          {
            [v22 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:342 description:{@"Unknown action type %@", v7}];
          }

          else
          {
            [v22 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:340 description:{@"The %@ action isn't currently handled by a PXCuratedLibraryActionPerformer.", v7}];
          }
        }

        abort();
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:336 description:@"You must use the -[PXCuratedLibraryActionManager actionPerformerForActionType:] constructor method for this type of action."];

      abort();
    }

    v11 = [v10 alloc];
    v12 = [(PXCuratedLibraryActionManager *)self viewModel];
    v13 = [v11 initWithActionType:v7 viewModel:v12 assetCollectionReference:v8];

    v14 = [(PXActionManager *)self performerDelegate];
    [v13 setDelegate:v14];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)actionPerformerForActionType:(id)a3
{
  v5 = a3;
  if ([(PXCuratedLibraryActionManager *)self canPerformActionType:v5])
  {
    v6 = [(PXCuratedLibraryActionManager *)self actionPerformersByType];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (!v7)
    {
      v15 = [(PXCuratedLibraryActionManager *)self assetCollectionActionPerformersByType];
      v16 = [v15 objectForKeyedSubscript:v5];

      if (!v16)
      {
        v17 = [(PXCuratedLibraryActionManager *)self constructorSpecificActionPerformersByType];
        v18 = [v17 objectForKeyedSubscript:v5];

        if (v18)
        {
          v22 = [MEMORY[0x1E696AAA8] currentHandler];
          [v22 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:317 description:{@"You must use the specific action performer constructor for %@ Action type.", v5}];
        }

        else
        {
          v19 = +[PXCuratedLibraryActionManager actionsWithActionPerformers];
          v20 = [v19 containsObject:v5];

          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          v22 = v21;
          if (v20)
          {
            [v21 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:321 description:{@"Unknown action type %@", v5}];
          }

          else
          {
            [v21 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:319 description:{@"The %@ action isn't currently handled by a PXCuratedLibraryActionPerformer.", v5}];
          }
        }

        abort();
      }

      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:315 description:@"You must use the PXCuratedLibraryAssetCollectionActionPerformer constructor method for this type of action."];

      abort();
    }

    v8 = [v7 instancesRespondToSelector:sel_initWithActionType_viewModel_];
    v9 = [v7 alloc];
    v10 = v9;
    if (v8)
    {
      v11 = [(PXCuratedLibraryActionManager *)self viewModel];
      v12 = [v10 initWithActionType:v5 viewModel:v11];
    }

    else
    {
      v12 = [v9 initWithActionType:v5];
    }

    v13 = [(PXActionManager *)self performerDelegate];
    [v12 setDelegate:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)canPerformActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXCuratedLibraryActionManager *)self viewModel];
  v6 = [v5 allowedActions];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4
{
  v5 = a3;
  v6 = [(PXCuratedLibraryActionManager *)self viewModel];
  v8 = _PXCuratedLibraryActionTitle(v5, v7, v6, 0);

  return v8;
}

- (PXCuratedLibraryActionManager)initWithViewModel:(id)a3
{
  v20[28] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXCuratedLibraryActionManager;
  v5 = [(PXCuratedLibraryActionManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewModel, v4);
    v19[0] = @"PXCuratedLibraryActionEnterSelectMode";
    v20[0] = objc_opt_class();
    v19[1] = @"PXCuratedLibraryActionCancelSelectMode";
    v20[1] = objc_opt_class();
    v19[2] = @"PXCuratedLibraryActionAllPhotosZoomIn";
    v20[2] = objc_opt_class();
    v19[3] = @"PXCuratedLibraryActionAllPhotosZoomOut";
    v20[3] = objc_opt_class();
    v19[4] = @"PXCuratedLibraryActionShowSidebar";
    v20[4] = objc_opt_class();
    v19[5] = @"PXCuratedLibraryActionSetAllLibrariesFilter";
    v20[5] = objc_opt_class();
    v19[6] = @"PXCuratedLibraryActionSetPersonalLibraryFilter";
    v20[6] = objc_opt_class();
    v19[7] = @"PXCuratedLibraryActionSetSharedLibraryFilter";
    v20[7] = objc_opt_class();
    v19[8] = @"PXCuratedLibraryActionToggleSharedLibraryBadge";
    v20[8] = objc_opt_class();
    v19[9] = @"PXCuratedLibraryActionShowFiltersMenu";
    v20[9] = objc_opt_class();
    v19[10] = @"PXCuratedLibraryActionShowFilters";
    v20[10] = objc_opt_class();
    v19[11] = @"PXCuratedLibraryActionUnfilter";
    v20[11] = objc_opt_class();
    v19[12] = @"PXCuratedLibraryActionRemoveFilters";
    v20[12] = objc_opt_class();
    v19[13] = @"PXCuratedLibraryActionToggleFavoriteFilter";
    v20[13] = objc_opt_class();
    v19[14] = @"PXCuratedLibraryActionToggleEditFilter";
    v20[14] = objc_opt_class();
    v19[15] = @"PXCuratedLibraryActionToggleImageFilter";
    v20[15] = objc_opt_class();
    v19[16] = @"PXCuratedLibraryActionToggleInUserAlbumFilter";
    v20[16] = objc_opt_class();
    v19[17] = @"PXCuratedLibraryActionToggleNotInUserAlbumFilter";
    v20[17] = objc_opt_class();
    v19[18] = @"PXCuratedLibraryActionToggleVideoFilter";
    v20[18] = objc_opt_class();
    v19[19] = @"PXCuratedLibraryActionToggleShowOnlyScreenshotFilter";
    v20[19] = objc_opt_class();
    v19[20] = @"PXCuratedLibraryActionToggleIncludeScreenshotFilter";
    v20[20] = objc_opt_class();
    v19[21] = @"PXCuratedLibraryActionToggleShowOnlySharedWithYouFilter";
    v20[21] = objc_opt_class();
    v19[22] = @"PXCuratedLibraryActionToggleIncludeSharedWithYouFilter";
    v20[22] = objc_opt_class();
    v19[23] = @"PXCuratedLibraryActionToggleShowOnlyFromMyMacFilter";
    v20[23] = objc_opt_class();
    v19[24] = @"PXCuratedLibraryActionToggleIncludeFromMyMacFilter";
    v20[24] = objc_opt_class();
    v19[25] = @"PXCuratedLibraryActionToggleLiveFilter";
    v20[25] = objc_opt_class();
    v19[26] = @"PXCuratedLibraryActionTogglePortraitFilter";
    v20[26] = objc_opt_class();
    v19[27] = @"PXCuratedLibraryActionAllPhotosToggleAspectFit";
    v20[27] = objc_opt_class();
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:28];
    actionPerformersByType = v6->_actionPerformersByType;
    v6->_actionPerformersByType = v7;

    v17[0] = @"PXCuratedLibraryActionSelectAllToggle";
    v18[0] = objc_opt_class();
    v17[1] = @"PXCuratedLibraryActionShowAll";
    v18[1] = objc_opt_class();
    v17[2] = @"PXCuratedLibraryActionShare";
    v18[2] = objc_opt_class();
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    assetCollectionActionPerformersByType = v6->_assetCollectionActionPerformersByType;
    v6->_assetCollectionActionPerformersByType = v9;

    v15[0] = @"PXCuratedLibraryActionEllipsisButton";
    v16[0] = objc_opt_class();
    v15[1] = @"PXCuratedLibraryActionTapToRadar";
    v16[1] = objc_opt_class();
    v15[2] = @"PXCuratedLibraryActionCurationDebug";
    v16[2] = objc_opt_class();
    v15[3] = @"PXCuratedLibraryActionNavigateToNextZoomLevel";
    v16[3] = objc_opt_class();
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
    constructorSpecificActionPerformersByType = v6->_constructorSpecificActionPerformersByType;
    v6->_constructorSpecificActionPerformersByType = v11;
  }

  return v6;
}

- (PXCuratedLibraryActionManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryActionManager.m" lineNumber:231 description:{@"%s is not available as initializer", "-[PXCuratedLibraryActionManager init]"}];

  abort();
}

+ (id)actionsWithActionPerformers
{
  if (actionsWithActionPerformers_onceToken != -1)
  {
    dispatch_once(&actionsWithActionPerformers_onceToken, &__block_literal_global_77350);
  }

  v3 = actionsWithActionPerformers_actionsWithPerformers;

  return v3;
}

void __60__PXCuratedLibraryActionManager_actionsWithActionPerformers__block_invoke()
{
  v4[19] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"PXCuratedLibraryActionEnterSelectMode";
  v4[1] = @"PXCuratedLibraryActionCancelSelectMode";
  v4[2] = @"PXCuratedLibraryActionAllPhotosZoomIn";
  v4[3] = @"PXCuratedLibraryActionAllPhotosZoomOut";
  v4[4] = @"PXCuratedLibraryActionSelectAllToggle";
  v4[5] = @"PXCuratedLibraryActionShowAll";
  v4[6] = @"PXCuratedLibraryActionSetAllLibrariesFilter";
  v4[7] = @"PXCuratedLibraryActionSetPersonalLibraryFilter";
  v4[8] = @"PXCuratedLibraryActionSetSharedLibraryFilter";
  v4[9] = @"PXCuratedLibraryActionToggleSharedLibraryBadge";
  v4[10] = @"PXCuratedLibraryActionEllipsisButton";
  v4[11] = @"PXCuratedLibraryActionShowFiltersMenu";
  v4[12] = @"PXCuratedLibraryActionShowFilters";
  v4[13] = @"PXCuratedLibraryActionAllPhotosToggleAspectFit";
  v4[14] = @"PXCuratedLibraryActionShowMap";
  v4[15] = @"PXCuratedLibraryActionTapToRadar";
  v4[16] = @"PXCuratedLibraryActionCurationDebug";
  v4[17] = @"PXCuratedLibraryActionNavigateToNextZoomLevel";
  v4[18] = @"PXCuratedLibraryActionShare";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:19];
  v2 = [v0 setWithArray:v1];
  v3 = actionsWithActionPerformers_actionsWithPerformers;
  actionsWithActionPerformers_actionsWithPerformers = v2;
}

@end