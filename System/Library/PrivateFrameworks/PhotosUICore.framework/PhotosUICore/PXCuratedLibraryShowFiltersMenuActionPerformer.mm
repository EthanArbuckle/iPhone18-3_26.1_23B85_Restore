@interface PXCuratedLibraryShowFiltersMenuActionPerformer
- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity;
- (NSMutableArray)filterInlineMenuItems;
- (NSMutableArray)filterMenuItems;
- (NSMutableArray)viewOptionsMenuItems;
- (NSString)filterMenuSubtitle;
- (NSString)viewOptionsMenuSubtitle;
- (id)_allFilterActionTypes;
- (id)activitySystemImageName;
- (id)menuElement;
- (id)sharedLibraryModeMenuItems;
@end

@implementation PXCuratedLibraryShowFiltersMenuActionPerformer

- (id)menuElement
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  viewOptionsModel = [viewModel viewOptionsModel];
  sortOrderMenu = [viewOptionsModel sortOrderMenu];
  children = [sortOrderMenu children];

  if ([children count])
  {
    v8 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:children];
    [v3 addObject:v8];
  }

  sharedLibraryModeMenuItems = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self sharedLibraryModeMenuItems];
  if ([sharedLibraryModeMenuItems count])
  {
    v10 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:0 options:1 children:sharedLibraryModeMenuItems];
    [v3 addObject:v10];
  }

  filterInlineMenuItems = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self filterInlineMenuItems];
  v12 = [filterInlineMenuItems mutableCopy];

  if ([v12 count])
  {
    if ([v12 count] == 1)
    {
      [v12 firstObject];
    }

    else
    {
      [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F1741150 image:0 identifier:@"com.apple.photos.menu.contentFilterInlineSubmenu" options:1 children:v12];
    }
    v13 = ;
    [v3 addObject:v13];
  }

  viewOptionsMenuItems = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self viewOptionsMenuItems];
  if ([viewOptionsMenuItems count])
  {
    v15 = MEMORY[0x1E69DCC60];
    v16 = PXLocalizedStringFromTable(@"PXContentViewOptionsMenuTitle", @"PhotosUICore");
    v17 = [v15 menuWithTitle:v16 image:0 identifier:@"com.apple.photos.menu.contentFilterViewOptionsSubmenu" options:0 children:viewOptionsMenuItems];

    viewOptionsMenuSubtitle = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self viewOptionsMenuSubtitle];
    [v17 setSubtitle:viewOptionsMenuSubtitle];

    [v3 addObject:v17];
  }

  v19 = [(PXCuratedLibraryActionPerformer *)self localizedTitleForUseCase:1];
  v20 = MEMORY[0x1E69DCAB8];
  activitySystemImageName = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self activitySystemImageName];
  v22 = [v20 systemImageNamed:activitySystemImageName];

  v23 = [MEMORY[0x1E69DCC60] menuWithTitle:v19 image:v22 identifier:0 options:0 children:v3];

  return v23;
}

- (NSString)viewOptionsMenuSubtitle
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  currentContentFilterState = [viewModel currentContentFilterState];
  v4 = [currentContentFilterState isContentFilterActive:2];

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
  v43 = *MEMORY[0x1E69E9840];
  if (viewOptionsMenuItems_onceToken != -1)
  {
    dispatch_once(&viewOptionsMenuItems_onceToken, &__block_literal_global_220);
  }

  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  actionManager = [viewModel actionManager];

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v5 initWithCapacity:{objc_msgSend(viewOptionsMenuItems_viewOptionsActionTypes, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = viewOptionsMenuItems_viewOptionsActionTypes;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [actionManager actionPerformerForActionType:v12];
        v14 = [actionManager canPerformActionType:v12];
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

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v17 = objc_alloc(MEMORY[0x1E695DF70]);
  v18 = [v17 initWithCapacity:{objc_msgSend(viewOptionsMenuItems_viewOptionsShowActionTypes, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = viewOptionsMenuItems_viewOptionsShowActionTypes;
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v33 + 1) + 8 * j);
        v25 = [actionManager actionPerformerForActionType:{v24, v33}];
        v26 = [actionManager canPerformActionType:v24];
        if (v25)
        {
          v27 = v26 == 0;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          menuElement2 = [v25 menuElement];
          if (menuElement2)
          {
            [v18 addObject:menuElement2];
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v21);
  }

  v29 = MEMORY[0x1E69DCC60];
  v30 = PXLocalizedStringFromTable(@"PXContentViewOptionsShowMenuTitle", @"PhotosUICore");
  v31 = [v29 menuWithTitle:v30 image:0 identifier:0 options:1 children:v18];
  [v6 addObject:v31];

  return v6;
}

void __70__PXCuratedLibraryShowFiltersMenuActionPerformer_viewOptionsMenuItems__block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"PXCuratedLibraryActionAllPhotosZoomIn";
  v5[1] = @"PXCuratedLibraryActionAllPhotosZoomOut";
  v5[2] = @"PXCuratedLibraryActionAllPhotosToggleAspectFit";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v1 = viewOptionsMenuItems_viewOptionsActionTypes;
  viewOptionsMenuItems_viewOptionsActionTypes = v0;

  v4[0] = @"PXCuratedLibraryActionToggleIncludeScreenshotFilter";
  v4[1] = @"PXCuratedLibraryActionToggleIncludeSharedWithYouFilter";
  v4[2] = @"PXCuratedLibraryActionToggleIncludeFromMyMacFilter";
  v4[3] = @"PXCuratedLibraryActionToggleSharedLibraryBadge";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
  v3 = viewOptionsMenuItems_viewOptionsShowActionTypes;
  viewOptionsMenuItems_viewOptionsShowActionTypes = v2;
}

- (NSString)filterMenuSubtitle
{
  v33 = *MEMORY[0x1E69E9840];
  _allFilterActionTypes = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self _allFilterActionTypes];
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  actionManager = [viewModel actionManager];

  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = _allFilterActionTypes;
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
          v13 = [actionManager actionPerformerForActionType:?];
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
                v20 = actionManager;
                v21 = v7;
                v23 = v22 = v6;
                [v22 appendString:v23];

                v6 = v22;
                v7 = v21;
                actionManager = v20;
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

- (NSMutableArray)filterInlineMenuItems
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  filterMenuItems = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self filterMenuItems];
  if ([filterMenuItems count])
  {
    v5 = MEMORY[0x1E69DCC60];
    v6 = PXLocalizedStringFromTable(@"PXFilterMenuTitle", @"PhotosUICore");
    v7 = [v5 menuWithTitle:v6 image:0 identifier:@"com.apple.photos.menu.contentFilterSubmenu" options:0 children:filterMenuItems];

    filterMenuSubtitle = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self filterMenuSubtitle];
    [v7 setSubtitle:filterMenuSubtitle];

    [v3 addObject:v7];
  }

  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  currentContentFilterState = [viewModel currentContentFilterState];
  isFiltering = [currentContentFilterState isFiltering];

  if (isFiltering)
  {
    viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
    actionManager = [viewModel2 actionManager];

    v14 = [actionManager actionPerformerForActionType:@"PXCuratedLibraryActionRemoveFilters"];
    sender = [(PXActionPerformer *)self sender];
    [v14 setSender:sender];

    v16 = [actionManager canPerformActionType:@"PXCuratedLibraryActionRemoveFilters"];
    if (v14 && v16)
    {
      menuElement = [v14 menuElement];
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
  v20 = *MEMORY[0x1E69E9840];
  if (filterMenuItems_onceToken != -1)
  {
    dispatch_once(&filterMenuItems_onceToken, &__block_literal_global_203);
  }

  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  actionManager = [viewModel actionManager];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PXCuratedLibraryShowFiltersMenuActionPerformer_filterMenuItems__block_invoke_2;
  aBlock[3] = &unk_1E7734810;
  aBlock[4] = actionManager;
  aBlock[5] = self;
  v5 = _Block_copy(aBlock);
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = filterMenuItems_filterActionTypes1;
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

id __65__PXCuratedLibraryShowFiltersMenuActionPerformer_filterMenuItems__block_invoke_2(uint64_t a1, void *a2)
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

void __65__PXCuratedLibraryShowFiltersMenuActionPerformer_filterMenuItems__block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"PXCuratedLibraryActionUnfilter";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v1 = filterMenuItems_filterActionTypes1;
  filterMenuItems_filterActionTypes1 = v0;

  v4[0] = @"PXCuratedLibraryActionToggleFavoriteFilter";
  v4[1] = @"PXCuratedLibraryActionToggleEditFilter";
  v4[2] = @"PXCuratedLibraryActionToggleImageFilter";
  v4[3] = @"PXCuratedLibraryActionToggleVideoFilter";
  v4[4] = @"PXCuratedLibraryActionToggleShowOnlyScreenshotFilter";
  v4[5] = @"PXCuratedLibraryActionToggleShowOnlySharedWithYouFilter";
  v4[6] = @"PXCuratedLibraryActionToggleShowOnlyFromMyMacFilter";
  v4[7] = @"PXCuratedLibraryActionToggleNotInUserAlbumFilter";
  v4[8] = @"PXCuratedLibraryActionToggleInUserAlbumFilter";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];
  v3 = filterMenuItems_filterActionTypes2;
  filterMenuItems_filterActionTypes2 = v2;
}

- (id)_allFilterActionTypes
{
  if (_allFilterActionTypes_onceToken != -1)
  {
    dispatch_once(&_allFilterActionTypes_onceToken, &__block_literal_global_201);
  }

  v3 = _allFilterActionTypes_allFilterActionTypes;

  return v3;
}

void __71__PXCuratedLibraryShowFiltersMenuActionPerformer__allFilterActionTypes__block_invoke()
{
  v2[10] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXCuratedLibraryActionUnfilter";
  v2[1] = @"PXCuratedLibraryActionToggleFavoriteFilter";
  v2[2] = @"PXCuratedLibraryActionToggleEditFilter";
  v2[3] = @"PXCuratedLibraryActionToggleImageFilter";
  v2[4] = @"PXCuratedLibraryActionToggleVideoFilter";
  v2[5] = @"PXCuratedLibraryActionToggleShowOnlyScreenshotFilter";
  v2[6] = @"PXCuratedLibraryActionToggleShowOnlySharedWithYouFilter";
  v2[7] = @"PXCuratedLibraryActionToggleShowOnlyFromMyMacFilter";
  v2[8] = @"PXCuratedLibraryActionToggleInUserAlbumFilter";
  v2[9] = @"PXCuratedLibraryActionToggleNotInUserAlbumFilter";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:10];
  v1 = _allFilterActionTypes_allFilterActionTypes;
  _allFilterActionTypes_allFilterActionTypes = v0;
}

- (id)sharedLibraryModeMenuItems
{
  v27 = *MEMORY[0x1E69E9840];
  if (sharedLibraryModeMenuItems_onceToken != -1)
  {
    dispatch_once(&sharedLibraryModeMenuItems_onceToken, &__block_literal_global_544);
  }

  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  actionManager = [viewModel actionManager];

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [v5 initWithCapacity:{objc_msgSend(sharedLibraryModeMenuItems_sharedLibraryModeActionTypes, "count")}];
  viewModel2 = [(PXCuratedLibraryActionPerformer *)self viewModel];
  configuration = [viewModel2 configuration];
  photoLibrary = [configuration photoLibrary];

  v10 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:photoLibrary];
  if ([v10 hasSharedLibraryOrPreview])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = sharedLibraryModeMenuItems_sharedLibraryModeActionTypes;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [actionManager actionPerformerForActionType:{v16, v22}];
          v18 = [actionManager canPerformActionType:v16];
          if (v17)
          {
            v19 = v18 == 0;
          }

          else
          {
            v19 = 1;
          }

          if (!v19)
          {
            menuElement = [v17 menuElement];
            if (menuElement)
            {
              [v6 addObject:menuElement];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }
  }

  return v6;
}

void __76__PXCuratedLibraryShowFiltersMenuActionPerformer_sharedLibraryModeMenuItems__block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"PXCuratedLibraryActionSetAllLibrariesFilter";
  v2[1] = @"PXCuratedLibraryActionSetPersonalLibraryFilter";
  v2[2] = @"PXCuratedLibraryActionSetSharedLibraryFilter";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:3];
  v1 = sharedLibraryModeMenuItems_sharedLibraryModeActionTypes;
  sharedLibraryModeMenuItems_sharedLibraryModeActionTypes = v0;
}

- (BOOL)canPerformWithActivityItems:(id)items forActivity:(id)activity
{
  activityType = [activity activityType];
  activityType2 = [(PXCuratedLibraryShowFiltersMenuActionPerformer *)self activityType];
  v8 = activityType2;
  if (activityType == activityType2)
  {

    goto LABEL_5;
  }

  v9 = [activityType isEqualToString:activityType2];

  if ((v9 & 1) == 0)
  {
    activityType = [MEMORY[0x1E696AAA8] currentHandler];
    [activityType handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryShowFiltersMenuActionPerformer.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"PXStringEqualToString(activity.activityType, self.activityType)"}];
LABEL_5:
  }

  return 1;
}

- (id)activitySystemImageName
{
  viewModel = [(PXCuratedLibraryActionPerformer *)self viewModel];
  libraryFilterState = [viewModel libraryFilterState];
  currentContentFilterState = [viewModel currentContentFilterState];
  v5 = PXContentFilterImageNameForFilterStatesAndCustomDefaultImageName(libraryFilterState, currentContentFilterState, 0);

  return v5;
}

@end