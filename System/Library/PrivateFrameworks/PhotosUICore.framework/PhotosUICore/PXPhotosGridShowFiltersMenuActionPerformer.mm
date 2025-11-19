@interface PXPhotosGridShowFiltersMenuActionPerformer
+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4;
- (NSMutableArray)filterMenuItems;
- (NSMutableArray)viewOptionsMenuItems;
- (id)_allFilterActionTypes;
- (id)activitySystemImageName;
- (id)feedbackMenuItems;
- (id)filterInlineMenuItems;
- (id)filterMenuSubtitle;
- (id)menuElement;
- (id)viewOptionsMenuSubtitle;
@end

@implementation PXPhotosGridShowFiltersMenuActionPerformer

+ (BOOL)canPerformActionType:(id)a3 withViewModel:(id)a4
{
  v4 = a4;
  if ([v4 canFilterContent])
  {
    v5 = [v4 dataSourceManager];
    v6 = [v5 dataSource];
    v7 = [v6 containerCollection];

    if ([v7 px_isAllPhotosSmartAlbum])
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [v7 px_isRecentsSmartAlbum] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)menuElement
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v5 = [(PXPhotosGridActionPerformer *)self viewModel];
  v6 = [v5 viewOptionsModel];
  v7 = [v6 sortOrderMenu];

  if (v7)
  {
    v8 = [v7 children];
    goto LABEL_14;
  }

  v9 = [(PXPhotosGridActionPerformer *)self viewModel];
  v10 = [v9 assetCollectionActionManager];
  v11 = [v10 standardActionForActionType:*off_1E7721DA8];

  v12 = v11;
  if (!v12)
  {
    v17 = [(PXPhotosGridActionPerformer *)self viewModel];
    v18 = [v17 assetCollectionActionManager];
    v19 = [v18 standardActionForActionType:*off_1E7721C88];

    v20 = v19;
    if (v20)
    {
      v13 = v20;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        v21 = objc_opt_class();
        v16 = NSStringFromClass(v21);
        v22 = [v13 px_descriptionForAssertionMessage];
        [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShowFiltersMenuActionPerformer.m" lineNumber:272 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"action", v16, v22}];
LABEL_33:

        v7 = v13;
        goto LABEL_34;
      }
    }

    else
    {
      v23 = [(PXPhotosGridActionPerformer *)self viewModel];
      v24 = [v23 gridActionManager];
      v25 = [v24 standardActionForActionType:*off_1E77220C8];

      v13 = v25;
      if (!v13)
      {
        v7 = 0;
        goto LABEL_12;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = [MEMORY[0x1E696AAA8] currentHandler];
        v47 = objc_opt_class();
        v16 = NSStringFromClass(v47);
        v22 = [v13 px_descriptionForAssertionMessage];
        [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShowFiltersMenuActionPerformer.m" lineNumber:276 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"action", v16, v22}];
        goto LABEL_33;
      }
    }

    v7 = v13;
LABEL_12:

    goto LABEL_13;
  }

  objc_opt_class();
  v7 = v12;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v12 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosGridShowFiltersMenuActionPerformer.m" lineNumber:269 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"action", v15, v16}];
    v7 = v12;
LABEL_34:

    goto LABEL_12;
  }

LABEL_13:
  v8 = [v7 children];

LABEL_14:
  if ([v8 count])
  {
    v26 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v8];
    v27 = [v26 displayPreferences];
    [v27 setMaximumNumberOfTitleLines:3];

    [v4 addObject:v26];
  }

  v28 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self filterInlineMenuItems];
  v29 = [v28 mutableCopy];

  if ([v29 count])
  {
    if ([v29 count] == 1)
    {
      [v29 firstObject];
    }

    else
    {
      [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:@"com.apple.photos.menu.contentFilterInlineSubmenu" options:1 children:v29];
    }
    v30 = ;
    [v4 addObject:v30];
  }

  v31 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self viewOptionsMenuItems];
  if ([v31 count])
  {
    v32 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self filterMenuItems];
    if ([v32 count])
    {
      v33 = 0;
    }

    else
    {
      v33 = [v8 count] == 0;
    }

    v34 = MEMORY[0x1E69DCC60];
    v35 = PXLocalizedStringFromTable(@"PXContentViewOptionsMenuTitle", @"PhotosUICore");
    v36 = [v34 menuWithTitle:v35 image:0 identifier:@"com.apple.photos.menu.contentFilterViewOptionsSubmenu" options:v33 children:v31];

    v37 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self viewOptionsMenuSubtitle];
    [v36 setSubtitle:v37];

    [v4 addObject:v36];
  }

  v38 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self feedbackMenuItems];
  v39 = [v38 mutableCopy];

  if ([v39 count])
  {
    v40 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:v39];
    [v4 addObject:v40];
  }

  v41 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self localizedTitleForUseCase:1];
  v42 = MEMORY[0x1E69DCAB8];
  v43 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self activitySystemImageName];
  v44 = [v42 systemImageNamed:v43];

  v45 = [MEMORY[0x1E69DCC60] menuWithTitle:v41 image:v44 identifier:0 options:0 children:v4];

  return v45;
}

- (id)feedbackMenuItems
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosGridActionPerformer *)self viewModel];
  v4 = [v3 contentFilterState];
  v5 = [v4 isSearchResultsFilterButton];

  if (!v5)
  {
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_10;
  }

  v6 = [(PXPhotosGridActionPerformer *)self viewModel];
  v7 = [v6 gridActionManager];

  v8 = [(PXPhotosGridActionPerformer *)self viewModel];
  v9 = [v8 viewOptionsModel];
  v10 = [v9 centralizedFeedbackMode];

  if (v10 == 2)
  {
    v11 = [v7 standardActionForActionType:*off_1E77221B8];
    v15 = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  }

  else
  {
    if (v10 != 1)
    {
      v13 = MEMORY[0x1E695E0F0];
      goto LABEL_9;
    }

    v11 = [v7 standardActionForActionType:*off_1E77221C8];
    v16[0] = v11;
    v12 = [v7 standardActionForActionType:*off_1E77221C0];
    v16[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  }

LABEL_9:
LABEL_10:

  return v13;
}

- (id)viewOptionsMenuSubtitle
{
  v2 = [(PXPhotosGridActionPerformer *)self viewModel];
  v3 = [v2 contentFilterState];
  v4 = [v3 isContentFilterActive:2];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = PXLocalizedStringFromTable(@"PXContentViewOptionsMenuSubtitleHiddenScreenshots", @"PhotosUICore");
  }

  return v5;
}

- (NSMutableArray)viewOptionsMenuItems
{
  if (viewOptionsMenuItems_onceToken_67609 != -1)
  {
    dispatch_once(&viewOptionsMenuItems_onceToken_67609, &__block_literal_global_207_67610);
  }

  v3 = [(PXPhotosGridActionPerformer *)self viewModel];
  v4 = [v3 gridActionManager];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PXPhotosGridShowFiltersMenuActionPerformer_viewOptionsMenuItems__block_invoke_2;
  aBlock[3] = &unk_1E7734840;
  aBlock[4] = v4;
  v5 = v4;
  _Block_copy(aBlock);
  PXMap();
}

void __66__PXPhotosGridShowFiltersMenuActionPerformer_viewOptionsMenuItems__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = *off_1E77221B0;
  v8[0] = *off_1E77221A8;
  v8[1] = v0;
  v8[2] = *off_1E7722108;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v2 = viewOptionsMenuItems_viewOptionsActionTypes_67611;
  viewOptionsMenuItems_viewOptionsActionTypes_67611 = v1;

  v3 = *off_1E7722138;
  v7[0] = *off_1E7722148;
  v7[1] = v3;
  v4 = *off_1E7722118;
  v7[2] = *off_1E7722140;
  v7[3] = v4;
  v7[4] = *off_1E7722168;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v6 = viewOptionsMenuItems_viewOptionsShowActionTypes_67613;
  viewOptionsMenuItems_viewOptionsShowActionTypes_67613 = v5;
}

- (id)filterMenuSubtitle
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self _allFilterActionTypes];
  v4 = [(PXPhotosGridActionPerformer *)self viewModel];
  v5 = [v4 gridActionManager];

  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v30;
    v11 = *off_1E77221A0;
    while (2)
    {
      v12 = 0;
      v28 = v8;
      do
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v29 + 1) + 8 * v12) != v11)
        {
          v13 = [v5 actionPerformerForActionType:?];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 localizedTitleForUseCase:0];
            v16 = [v14 menuElementState];
            if (v15)
            {
              v17 = v16 == 1;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              if (v9 >= 1)
              {
                PXLocalizedStringFromTable(@"PXContentFilterMenu_SubtitleFilterTitlesSeperator", @"PhotosUICore");
                v18 = v11;
                v19 = v10;
                v20 = v9;
                v21 = v5;
                v22 = v7;
                v24 = v23 = v6;
                [v23 appendString:v24];

                v6 = v23;
                v7 = v22;
                v5 = v21;
                v9 = v20;
                v10 = v19;
                v11 = v18;
                v8 = v28;
                if (v9 > 2)
                {
                  v25 = PXLocalizedStringFromTable(@"PXContentFilterMenu_SubtitleMoreItems", @"PhotosUICore");
                  [v6 appendString:v25];

                  goto LABEL_23;
                }
              }

              ++v9;
              [v6 appendString:v15];
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v8 != v12);
      v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    if (v9 < 1)
    {
      v8 = 0;
      goto LABEL_25;
    }

LABEL_23:
    v8 = v6;
  }

  else
  {
  }

LABEL_25:
  v26 = v8;

  return v8;
}

- (id)filterInlineMenuItems
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v4 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self filterMenuItems];
  if ([v4 count])
  {
    v5 = MEMORY[0x1E69DCC60];
    v6 = PXLocalizedStringFromTable(@"PXFilterMenuTitle", @"PhotosUICore");
    v7 = [v5 menuWithTitle:v6 image:0 identifier:@"com.apple.photos.menu.contentFilterSubmenu" options:0 children:v4];

    v8 = [(PXPhotosGridShowFiltersMenuActionPerformer *)self filterMenuSubtitle];
    [v7 setSubtitle:v8];

    [v3 addObject:v7];
  }

  v9 = [(PXPhotosGridActionPerformer *)self viewModel];
  v10 = [v9 contentFilterState];
  v11 = [v10 isFiltering];

  if (v11)
  {
    v12 = [(PXPhotosGridActionPerformer *)self viewModel];
    v13 = [v12 gridActionManager];

    v14 = *off_1E77220C0;
    v15 = [v13 actionPerformerForActionType:*off_1E77220C0];
    v16 = [(PXActionPerformer *)self sender];
    [v15 setSender:v16];

    v17 = [v13 canPerformActionType:v14];
    if (v15 && v17)
    {
      v18 = [v15 menuElement];
      if (v18)
      {
        [v3 addObject:v18];
      }
    }
  }

  return v3;
}

- (NSMutableArray)filterMenuItems
{
  v20 = *MEMORY[0x1E69E9840];
  if (filterMenuItems_onceToken_67628 != -1)
  {
    dispatch_once(&filterMenuItems_onceToken_67628, &__block_literal_global_189);
  }

  v3 = [(PXPhotosGridActionPerformer *)self viewModel];
  v4 = [v3 gridActionManager];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__PXPhotosGridShowFiltersMenuActionPerformer_filterMenuItems__block_invoke_2;
  aBlock[3] = &unk_1E7734810;
  aBlock[4] = v4;
  aBlock[5] = self;
  v5 = _Block_copy(aBlock);
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = filterMenuItems_filterActionTypes1_67629;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = v5[2](v5, *(*(&v14 + 1) + 8 * i));
        if (v12)
        {
          [v6 addObject:{v12, v14}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  PXMap();
}

id __61__PXPhotosGridShowFiltersMenuActionPerformer_filterMenuItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 actionPerformerForActionType:v4];
  v6 = [*(a1 + 40) sender];
  [v5 setSender:v6];

  v7 = [*(a1 + 32) canPerformActionType:v4];
  v8 = 0;
  if (v5 && v7)
  {
    v8 = [v5 menuElement];
  }

  return v8;
}

void __61__PXPhotosGridShowFiltersMenuActionPerformer_filterMenuItems__block_invoke()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = *off_1E77221A0;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v1 = filterMenuItems_filterActionTypes1_67629;
  filterMenuItems_filterActionTypes1_67629 = v0;

  v2 = *off_1E7722110;
  v9[0] = *off_1E7722120;
  v9[1] = v2;
  v3 = *off_1E7722198;
  v9[2] = *off_1E7722128;
  v9[3] = v3;
  v4 = *off_1E7722180;
  v9[4] = *off_1E7722188;
  v9[5] = v4;
  v5 = *off_1E7722190;
  v9[6] = *off_1E7722170;
  v9[7] = v5;
  v6 = *off_1E7722130;
  v9[8] = *off_1E7722158;
  v9[9] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:10];
  v8 = filterMenuItems_filterActionTypes2_67630;
  filterMenuItems_filterActionTypes2_67630 = v7;
}

- (id)_allFilterActionTypes
{
  if (_allFilterActionTypes_onceToken_67631 != -1)
  {
    dispatch_once(&_allFilterActionTypes_onceToken_67631, &__block_literal_global_67632);
  }

  v3 = _allFilterActionTypes_allFilterActionTypes_67633;

  return v3;
}

void __67__PXPhotosGridShowFiltersMenuActionPerformer__allFilterActionTypes__block_invoke()
{
  v7[11] = *MEMORY[0x1E69E9840];
  v0 = *off_1E7722120;
  v7[0] = *off_1E77221A0;
  v7[1] = v0;
  v1 = *off_1E7722128;
  v7[2] = *off_1E7722110;
  v7[3] = v1;
  v2 = *off_1E7722188;
  v7[4] = *off_1E7722198;
  v7[5] = v2;
  v3 = *off_1E7722170;
  v7[6] = *off_1E7722180;
  v7[7] = v3;
  v4 = *off_1E7722158;
  v7[8] = *off_1E7722190;
  v7[9] = v4;
  v7[10] = *off_1E7722130;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:11];
  v6 = _allFilterActionTypes_allFilterActionTypes_67633;
  _allFilterActionTypes_allFilterActionTypes_67633 = v5;
}

- (id)activitySystemImageName
{
  v2 = [(PXPhotosGridActionPerformer *)self viewModel];
  v3 = [v2 contentFilterState];
  v4 = PXContentFilterImageNameForFilterStateAndCustomDefaultImageName(v3, 0);

  return v4;
}

@end