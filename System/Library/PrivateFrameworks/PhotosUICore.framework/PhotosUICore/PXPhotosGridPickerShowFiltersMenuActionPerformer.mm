@interface PXPhotosGridPickerShowFiltersMenuActionPerformer
+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model;
- (NSMutableArray)filterMenuItems;
- (NSMutableArray)viewOptionsMenuItems;
- (id)_filterActionTypes;
- (id)activitySystemImageName;
- (id)filterInlineMenuItems;
- (id)filterMenuSubtitle;
- (id)menuElement;
- (id)viewOptionsMenuSubtitle;
@end

@implementation PXPhotosGridPickerShowFiltersMenuActionPerformer

+ (BOOL)canPerformActionType:(id)type withViewModel:(id)model
{
  modelCopy = model;
  if ([modelCopy canFilterContent])
  {
    dataSourceManager = [modelCopy dataSourceManager];
    dataSource = [dataSourceManager dataSource];
    containerCollection = [dataSource containerCollection];

    if ([containerCollection px_isAllPhotosSmartAlbum])
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [containerCollection px_isRecentsSmartAlbum] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)viewOptionsMenuSubtitle
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  contentFilterState = [viewModel contentFilterState];
  v4 = [contentFilterState isContentFilterActive:2];

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
  v23 = *MEMORY[0x1E69E9840];
  if (viewOptionsMenuItems_onceToken_12783 != -1)
  {
    dispatch_once(&viewOptionsMenuItems_onceToken_12783, &__block_literal_global_224);
  }

  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  gridActionManager = [viewModel gridActionManager];

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v5 initWithCapacity:{objc_msgSend(viewOptionsMenuItems_viewOptionsActionTypes_12785, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = viewOptionsMenuItems_viewOptionsActionTypes_12785;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [gridActionManager actionPerformerForActionType:{v12, v18}];
        v14 = [gridActionManager canPerformActionType:v12];
        if (v13)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          menuElement = [v13 menuElement];
          if (menuElement)
          {
            [v6 addObject:menuElement];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

void __72__PXPhotosGridPickerShowFiltersMenuActionPerformer_viewOptionsMenuItems__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *off_1E77221B0;
  v3[0] = *off_1E77221A8;
  v3[1] = v0;
  v3[2] = *off_1E7722108;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3];
  v2 = viewOptionsMenuItems_viewOptionsActionTypes_12785;
  viewOptionsMenuItems_viewOptionsActionTypes_12785 = v1;
}

- (id)filterMenuSubtitle
{
  v33 = *MEMORY[0x1E69E9840];
  _filterActionTypes = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self _filterActionTypes];
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  gridActionManager = [viewModel gridActionManager];

  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = _filterActionTypes;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = 0;
    v10 = *v29;
    v11 = @"PXCuratedLibraryActionUnfilter";
    v27 = *v29;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v28 + 1) + 8 * i) != v11)
        {
          v13 = [gridActionManager actionPerformerForActionType:?];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 localizedTitleForUseCase:0];
            menuElementState = [v14 menuElementState];
            if (v15)
            {
              v17 = menuElementState == 1;
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
                v18 = v9;
                v19 = v11;
                v20 = gridActionManager;
                v21 = v7;
                v23 = v22 = v6;
                [v22 appendString:v23];

                v6 = v22;
                v7 = v21;
                gridActionManager = v20;
                v11 = v19;
                v9 = v18;
                v10 = v27;
                if (v9 > 2)
                {
                  v24 = PXLocalizedStringFromTable(@"PXContentFilterMenu_SubtitleMoreItems", @"PhotosUICore");
                  [v6 appendString:v24];

                  goto LABEL_23;
                }
              }

              ++v9;
              [v6 appendString:v15];
            }
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
  v25 = v8;

  return v8;
}

- (id)filterInlineMenuItems
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  filterMenuItems = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self filterMenuItems];
  if ([filterMenuItems count])
  {
    v5 = MEMORY[0x1E69DCC60];
    v6 = PXLocalizedStringFromTable(@"PXFilterMenuTitle", @"PhotosUICore");
    v7 = [v5 menuWithTitle:v6 image:0 identifier:@"com.apple.photos.menu.contentFilterSubmenu" options:0 children:filterMenuItems];

    filterMenuSubtitle = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self filterMenuSubtitle];
    [v7 setSubtitle:filterMenuSubtitle];

    [v3 addObject:v7];
  }

  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  contentFilterState = [viewModel contentFilterState];
  isFiltering = [contentFilterState isFiltering];

  if (isFiltering)
  {
    viewModel2 = [(PXPhotosGridActionPerformer *)self viewModel];
    gridActionManager = [viewModel2 gridActionManager];

    v14 = *off_1E77220C0;
    v15 = [gridActionManager actionPerformerForActionType:*off_1E77220C0];
    sender = [(PXActionPerformer *)self sender];
    [v15 setSender:sender];

    v17 = [gridActionManager canPerformActionType:v14];
    if (v15 && v17)
    {
      menuElement = [v15 menuElement];
      if (menuElement)
      {
        [v3 addObject:menuElement];
      }
    }
  }

  return v3;
}

- (NSMutableArray)filterMenuItems
{
  v24 = *MEMORY[0x1E69E9840];
  _filterActionTypes = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self _filterActionTypes];
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  gridActionManager = [viewModel gridActionManager];

  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_filterActionTypes, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = _filterActionTypes;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [gridActionManager actionPerformerForActionType:{v12, v19}];
        sender = [(PXActionPerformer *)self sender];
        [v13 setSender:sender];

        v15 = [gridActionManager canPerformActionType:v12];
        if (v13)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          menuElement = [v13 menuElement];
          if (menuElement)
          {
            [v6 addObject:menuElement];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)_filterActionTypes
{
  if (_filterActionTypes_onceToken != -1)
  {
    dispatch_once(&_filterActionTypes_onceToken, &__block_literal_global_12798);
  }

  v3 = _filterActionTypes_filterActionTypes;

  return v3;
}

void __70__PXPhotosGridPickerShowFiltersMenuActionPerformer__filterActionTypes__block_invoke()
{
  v5[7] = *MEMORY[0x1E69E9840];
  v0 = *off_1E7722120;
  v5[0] = *off_1E77221A0;
  v5[1] = v0;
  v1 = *off_1E7722110;
  v5[2] = *off_1E7722128;
  v5[3] = v1;
  v2 = *off_1E7722158;
  v5[4] = *off_1E7722198;
  v5[5] = v2;
  v5[6] = *off_1E7722188;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v4 = _filterActionTypes_filterActionTypes;
  _filterActionTypes_filterActionTypes = v3;
}

- (id)menuElement
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];
  sortOrderMenu = [viewOptionsModel sortOrderMenu];

  if (sortOrderMenu)
  {
    children = [sortOrderMenu children];
  }

  else
  {
    viewModel2 = [(PXPhotosGridActionPerformer *)self viewModel];
    assetCollectionActionManager = [viewModel2 assetCollectionActionManager];
    v11 = [assetCollectionActionManager standardActionForActionType:*off_1E7721DA8];

    v12 = v11;
    if (v12)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosGridPickerShowFiltersMenuActionPerformer.m" lineNumber:54 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"action", v35, px_descriptionForAssertionMessage}];
      }

      children = [v12 children];
      sortOrderMenu = v12;
    }

    else
    {
      viewModel3 = [(PXPhotosGridActionPerformer *)self viewModel];
      assetCollectionActionManager2 = [viewModel3 assetCollectionActionManager];
      v15 = [assetCollectionActionManager2 standardActionForActionType:*off_1E7721C88];

      sortOrderMenu = v15;
      if (sortOrderMenu)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          px_descriptionForAssertionMessage2 = [sortOrderMenu px_descriptionForAssertionMessage];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosGridPickerShowFiltersMenuActionPerformer.m" lineNumber:59 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"action", v39, px_descriptionForAssertionMessage2}];
        }

        children = [sortOrderMenu children];
      }

      else
      {
        children = 0;
      }
    }
  }

  if ([children count])
  {
    v16 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:children];
    [v4 addObject:v16];
  }

  filterInlineMenuItems = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self filterInlineMenuItems];
  v18 = [filterInlineMenuItems mutableCopy];

  if ([v18 count])
  {
    if ([v18 count] == 1)
    {
      [v18 firstObject];
    }

    else
    {
      [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:@"com.apple.photos.menu.contentFilterInlineSubmenu" options:1 children:v18];
    }
    v19 = ;
    [v4 addObject:v19];
  }

  viewOptionsMenuItems = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self viewOptionsMenuItems];
  if ([viewOptionsMenuItems count])
  {
    filterMenuItems = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self filterMenuItems];
    if ([filterMenuItems count])
    {
      v22 = 0;
    }

    else
    {
      v22 = [children count] == 0;
    }

    v23 = MEMORY[0x1E69DCC60];
    v24 = PXLocalizedStringFromTable(@"PXContentViewOptionsMenuTitle", @"PhotosUICore");
    v25 = [v23 menuWithTitle:v24 image:0 identifier:@"com.apple.photos.menu.contentFilterViewOptionsSubmenu" options:v22 children:viewOptionsMenuItems];

    viewOptionsMenuSubtitle = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self viewOptionsMenuSubtitle];
    [v25 setSubtitle:viewOptionsMenuSubtitle];

    [v4 addObject:v25];
  }

  v27 = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self localizedTitleForUseCase:1];
  v28 = MEMORY[0x1E69DCAB8];
  activitySystemImageName = [(PXPhotosGridPickerShowFiltersMenuActionPerformer *)self activitySystemImageName];
  v30 = [v28 systemImageNamed:activitySystemImageName];

  v31 = [MEMORY[0x1E69DCC60] menuWithTitle:v27 image:v30 identifier:0 options:0 children:v4];

  return v31;
}

- (id)activitySystemImageName
{
  viewModel = [(PXPhotosGridActionPerformer *)self viewModel];
  contentFilterState = [viewModel contentFilterState];
  if ([contentFilterState isFiltering])
  {
    v4 = @"line.horizontal.3.decrease.circle.fill";
  }

  else
  {
    v4 = @"line.horizontal.3.decrease.circle";
  }

  v5 = v4;

  return v4;
}

@end