@interface PXAlbumActionMenuBuilder
+ (NSArray)internalActionTypes;
+ (NSArray)primaryActionTypes;
+ (NSArray)secondaryActionTypes;
+ (id)_createMenuWithActionManager:(id)manager actionTypes:(id)types overrideActions:(id)actions;
+ (id)contextMenuWithActionManager:(id)manager overrideActions:(id)actions;
@end

@implementation PXAlbumActionMenuBuilder

+ (id)_createMenuWithActionManager:(id)manager actionTypes:(id)types overrideActions:(id)actions
{
  v26 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  typesCopy = types;
  actionsCopy = actions;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = typesCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [actionsCopy objectForKeyedSubscript:{v16, v21}];
        if (v17)
        {
          [array addObject:v17];
        }

        else
        {
          v18 = [managerCopy standardActionForActionType:v16];
          if (v18)
          {
            [array addObject:v18];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  if ([array count])
  {
    v19 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F2B87EE0 image:0 identifier:0 options:1 children:array];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)contextMenuWithActionManager:(id)manager overrideActions:(id)actions
{
  managerCopy = manager;
  actionsCopy = actions;
  if (managerCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __73__PXAlbumActionMenuBuilder_contextMenuWithActionManager_overrideActions___block_invoke;
    v19 = &unk_1E7BB8808;
    selfCopy = self;
    v20 = managerCopy;
    v21 = actionsCopy;
    v9 = array;
    v22 = v9;
    v10 = _Block_copy(&v16);
    primaryActionTypes = [self primaryActionTypes];
    v10[2](v10, primaryActionTypes);

    secondaryActionTypes = [self secondaryActionTypes];
    v10[2](v10, secondaryActionTypes);

    internalActionTypes = [self internalActionTypes];
    v10[2](v10, internalActionTypes);

    if ([v9 count])
    {
      v14 = [MEMORY[0x1E69DCC60] menuWithChildren:v9];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __73__PXAlbumActionMenuBuilder_contextMenuWithActionManager_overrideActions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 56) _createMenuWithActionManager:*(a1 + 32) actionTypes:a2 overrideActions:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 48) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (NSArray)internalActionTypes
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = @"PXAssetCollectionActionTypeFileRadar";
  v4[1] = @"PXAssetCollectionActionTypeCopyInternalURL";
  v4[2] = @"PXAssetCollectionActionTypeDebugCuration";
  v4[3] = @"PXAssetCollectionActionTypeStoryDemo";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

+ (NSArray)secondaryActionTypes
{
  v4[8] = *MEMORY[0x1E69E9840];
  v4[0] = @"PXAssetCollectionActionTypeCustomize";
  v4[1] = @"PXAssetCollectionActionTypeMoveOut";
  v4[2] = @"PXAssetCollectionActionTypeToggleFavorite";
  v4[3] = @"PXAssetCollectionActionTypeRemoveSharingSuggestion";
  v4[4] = @"PXAssetCollectionActionTypeBlockMemory";
  v4[5] = @"PXAssetCollectionActionTypeDelete";
  v4[6] = @"PXAssetCollectionActionTypeDeleteMemory";
  v4[7] = @"PXAssetCollectionActionTypeTrashMomentShare";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];

  return v2;
}

+ (NSArray)primaryActionTypes
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = @"PXAssetCollectionActionTypeShare";
  v4[1] = @"PXAssetCollectionActionTypeMoveToSharedLibrary";
  v4[2] = @"PXAssetCollectionActionTypeAddFrom";
  v4[3] = @"PXAssetCollectionActionTypeShowMap";
  v4[4] = @"PXAssetCollectionActionTypeCopyLink";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];

  return v2;
}

@end