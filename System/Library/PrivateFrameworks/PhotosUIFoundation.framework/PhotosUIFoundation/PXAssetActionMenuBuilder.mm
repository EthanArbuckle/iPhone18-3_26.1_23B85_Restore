@interface PXAssetActionMenuBuilder
+ (id)_actionTypesGroupedBySectionForActionManager:(id)a3 excludedActionTypes:(id)a4;
+ (id)_buildCompactTopSectionForActionManager:(id)a3 excludedActionTypes:(id)a4;
+ (id)_contextMenuTopRowActionsForManager:(id)a3 excludedActionTypes:(id)a4;
+ (id)_internalActionTypesForActionManager:(id)a3;
+ (id)menuElementsForActionManager:(id)a3 excludedActionTypes:(id)a4;
+ (id)pxMenuElementsForActionManager:(id)a3 excludedActionTypes:(id)a4 handler:(id)a5;
@end

@implementation PXAssetActionMenuBuilder

+ (id)_internalActionTypesForActionManager:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PXAssetActionMenuBuilder__internalActionTypesForActionManager___block_invoke;
  v10[3] = &unk_1E7BB6350;
  v11 = v3;
  v5 = v4;
  v12 = v5;
  v6 = v3;
  v7 = _Block_copy(v10);
  v7[2](v7, @"PXAssetActionTypeInternalContentSyndicationPromoteToGuest");
  v7[2](v7, @"PXAssetActionTypeInternalContentSyndicationFileRadar");
  v7[2](v7, @"PXAssetActionTypeInternalAssetDetails");
  v7[2](v7, @"PXAssetActionTypeInternalAssetSearchDetails");
  v7[2](v7, @"PXAssetActionTypeInternalAssetSearchContextualVideoThumbnails");
  v7[2](v7, @"PXAssetActionTypeInternalCopyURL");
  v7[2](v7, @"PXAssetActionTypeInternalFileRadarForSharedLibrary");
  v7[2](v7, @"PXAssetActionTypeInternalAlchemist");
  v7[2](v7, @"PXAssetActionTypeInternalToggleStacks");
  v8 = v5;

  return v5;
}

void __65__PXAssetActionMenuBuilder__internalActionTypesForActionManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) canPerformActionType:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

+ (id)_actionTypesGroupedBySectionForActionManager:(id)a3 excludedActionTypes:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__PXAssetActionMenuBuilder__actionTypesGroupedBySectionForActionManager_excludedActionTypes___block_invoke;
  aBlock[3] = &unk_1E7BB6328;
  v8 = v6;
  v27 = v8;
  v9 = v5;
  v28 = v9;
  v10 = _Block_copy(aBlock);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v9;
    v13 = [v12 selectionManager];
    v14 = [v13 dataSourceManager];
    v15 = [v14 dataSource];

    v16 = [v15 containerCollection];
    LODWORD(v14) = [v16 px_isRecentlyDeletedSmartAlbum];

    if (v14)
    {
      v10[2](v10, @"PXAssetActionTypeDelete", v11);
      v10[2](v10, @"PXAssetActionTypeRestore", v11);
      v30[0] = v11;
      v17 = v30;
LABEL_6:
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      goto LABEL_21;
    }

    v18 = [v15 containerCollection];
    v19 = [v18 px_isRecoveredSmartAlbum];

    if (v19)
    {
      v10[2](v10, @"PXAssetActionTypeDelete", v11);
      v10[2](v10, @"PXAssetActionTypeRecover", v11);
      v29 = v11;
      v17 = &v29;
      goto LABEL_6;
    }
  }

  v10[2](v10, @"PXAssetActionTypeCopy", v11);
  v10[2](v10, @"PXAssetActionTypeShare", v11);
  v10[2](v10, @"PXAssetActionTypeToggleFavorite", v11);
  v10[2](v10, @"PXAssetActionTypeDuplicate", v11);
  v10[2](v10, @"PXAssetActionTypeHide", v11);
  v10[2](v10, @"PXAssetActionTypeShowInLibrary", v11);
  v10[2](v10, @"PXAssetActionTypeSlideshow", v11);
  v10[2](v10, @"PXAssetActionTypePlayMovie", v11);
  v10[2](v10, @"PXAssetActionTypeCompositeVideo", v11);
  v10[2](v10, @"PXAssetActionTypeSyndicationSaveToLibrary", v11);
  if ([v11 count])
  {
    [v7 addObject:v11];
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[2](v10, @"PXAssetActionTypeAddToAlbum", v12);
  v10[2](v10, @"PXAssetActionTypeAddToLastUsedAlbum", v12);
  v10[2](v10, @"PXAssetActionTypeAddToSharedCollection", v12);
  v10[2](v10, @"PXAssetActionTypeAddToStreamSharedAlbum", v12);
  v10[2](v10, @"PXAssetActionTypeMoveToSharedLibrary", v12);
  v10[2](v10, @"PXAssetActionTypeMoveToPersonalLibrary", v12);
  v10[2](v10, @"PXAssetActionTypeRemoveSharingSuggestion", v12);
  if ([v12 count])
  {
    [v7 addObject:v12];
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[2](v10, @"PXAssetActionTypeSaveVideoFrame", v15);
  v10[2](v10, @"PXAssetActionTypeCopyAdjustments", v15);
  v10[2](v10, @"PXAssetActionTypePasteAdjustments", v15);
  v10[2](v10, @"PXAssetActionTypeRevertAdjustments", v15);
  if ([v15 count])
  {
    [v7 addObject:v15];
  }

  v25 = v8;
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[2](v10, @"PXAssetActionTypeEditDateTime", v21);
  v10[2](v10, @"PXAssetActionTypeEditLocation", v21);
  if ([v21 count])
  {
    [v7 addObject:v21];
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[2](v10, @"PXAssetActionTypeInternalAddStacks", v22);
  v10[2](v10, @"PXAssetActionTypeInternalRemoveStacks", v22);
  if ([v22 count])
  {
    [v7 addObject:v22];
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10[2](v10, @"PXAssetActionTypeRemove", v23);
  v10[2](v10, @"PXAssetActionTypeTrash", v23);
  v10[2](v10, @"PXAssetActionTypeRemoveFromFeaturedPhotos", v23);
  v10[2](v10, @"PXAssetActionTypeFeatureLess", v23);
  v10[2](v10, @"PXAssetActionTypeNotThisPerson", v23);
  v10[2](v10, @"PXAssetActionTypeClearRecentlyViewed", v23);
  v10[2](v10, @"PXAssetActionTypeClearRecentlyShared", v23);
  if ([v23 count])
  {
    [v7 addObject:v23];
  }

  v20 = v7;

  v8 = v25;
LABEL_21:

  return v20;
}

void __93__PXAssetActionMenuBuilder__actionTypesGroupedBySectionForActionManager_excludedActionTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0 && objc_msgSend(*(a1 + 40), "canPerformActionType:", v6))
  {
    [v5 addObject:v6];
  }
}

+ (id)_contextMenuTopRowActionsForManager:(id)a3 excludedActionTypes:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _actionTypesGroupedBySectionForActionManager:v6 excludedActionTypes:a4];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addObjectsFromArray:*(*(&v39 + 1) + 8 * i)];
      }

      v11 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  v32 = v9;

  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&stru_1F2B87EE0, &stru_1F2B87EE0, 0}];
  v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{&unk_1F2BAC838, &unk_1F2BAC838, 0}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v35 + 1) + 8 * j);
        v20 = [v6 contextMenuCompactTopRowPriorityForActionType:v19];
        if (v20)
        {
          v21 = v20;
          v22 = [v6 contextMenuCompactTopRowPositionForActionType:v19];
          if (v22 <= 2)
          {
            v23 = v22;
            v24 = [v34 objectAtIndexedSubscript:v22];
            v25 = [v24 integerValue];

            if (v21 > v25)
            {
              [v33 setObject:v19 atIndexedSubscript:v23];
              v26 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
              [v34 setObject:v26 atIndexedSubscript:v23];
            }
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v16);
  }

  v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (k = 0; k != 3; ++k)
  {
    v29 = [v33 objectAtIndexedSubscript:k];
    if ([v29 length])
    {
      [v27 addObject:v29];
    }
  }

  v30 = [v27 copy];

  return v30;
}

+ (id)_buildCompactTopSectionForActionManager:(id)a3 excludedActionTypes:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _contextMenuTopRowActionsForManager:v6 excludedActionTypes:a4];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v6 systemImageNameForActionType:v13];
        v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:v14];
        v16 = [v6 previewActionForActionType:v13 image:v15];

        if ([v13 isEqualToString:@"PXAssetActionTypeTrash"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 copy];
            [v17 setAttributes:2];

            v16 = v17;
          }
        }

        [v8 addObject:v16];
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v18 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2B87EE0 image:0 identifier:0 options:1 children:v8];
    [v18 setPreferredElementSize:1];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)pxMenuElementsForActionManager:(id)a3 excludedActionTypes:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x1E695DF70];
  v11 = a4;
  v12 = [v10 array];
  v13 = [a1 _actionTypesGroupedBySectionForActionManager:v8 excludedActionTypes:v11];

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __87__PXAssetActionMenuBuilder_pxMenuElementsForActionManager_excludedActionTypes_handler___block_invoke;
  v28 = &unk_1E7BB6300;
  v14 = v12;
  v29 = v14;
  v15 = v8;
  v30 = v15;
  v16 = v9;
  v32 = v16;
  v17 = v13;
  v31 = v17;
  [v17 enumerateObjectsUsingBlock:&v25];
  if (PXCanShowInternalUI())
  {
    v18 = objc_opt_new();
    [v14 addObject:{v18, v25, v26, v27, v28, v29, v30}];

    v19 = [a1 _internalActionTypesForActionManager:v15];
    v20 = [v15 actionItemsForActionTypes:v19 handler:v16];
    v21 = [PXActionMenu menuWithTitle:@" Internal" childElements:v20];
    [v14 addObject:v21];
  }

  v22 = v31;
  v23 = v14;

  return v14;
}

void __87__PXAssetActionMenuBuilder_pxMenuElementsForActionManager_excludedActionTypes_handler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) actionItemsForActionTypes:a2 handler:*(a1 + 56)];
  [v5 addObjectsFromArray:v6];

  if (a3 + 1 < [*(a1 + 48) count])
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_new();
    [v7 addObject:v8];
  }
}

+ (id)menuElementsForActionManager:(id)a3 excludedActionTypes:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = v7;
  v9 = [a1 _buildCompactTopSectionForActionManager:v6 excludedActionTypes:v7];
  if (v9)
  {
    [v8 addObject:v9];
  }

  v26 = v9;
  v25 = [a1 _contextMenuTopRowActionsForManager:v6 excludedActionTypes:v27];
  v10 = [MEMORY[0x1E695DFD8] setWithArray:?];
  [a1 _actionTypesGroupedBySectionForActionManager:v6 excludedActionTypes:v27];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v31)
  {
    v29 = v8;
    v30 = *v38;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        if ([v12 count])
        {
          v32 = i;
          v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v12, "count")}];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v14 = v12;
          v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v34;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v34 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v33 + 1) + 8 * j);
                if (([v10 containsObject:v19] & 1) == 0)
                {
                  v20 = [v6 systemImageNameForActionType:v19];
                  v21 = [MEMORY[0x1E69DCAB8] systemImageNamed:v20];
                  v22 = [v6 previewActionForActionType:v19 image:v21];

                  [v13 addObject:v22];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v16);
          }

          v23 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2B87EE0 image:0 identifier:0 options:1 children:v13];
          v8 = v29;
          [v29 addObject:v23];

          i = v32;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v31);
  }

  return v8;
}

@end