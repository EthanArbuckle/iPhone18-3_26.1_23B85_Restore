@interface PXStoryAssetPickerHelper
- (PXStoryAssetPickerHelper)initWithContainerAssetCollection:(id)a3 preselectedAssets:(id)a4;
- (PXStoryAssetPickerHelperDelegate)delegate;
- (void)_handlePickedAssets:(id)a3;
- (void)picker:(id)a3 didFinishPicking:(id)a4;
@end

@implementation PXStoryAssetPickerHelper

- (PXStoryAssetPickerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handlePickedAssets:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PXStoryAssetPickerHelper__handlePickedAssets___block_invoke;
  aBlock[3] = &unk_1E773E0F8;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = v5[2](v5, v4, 0);
  v7 = [(PXStoryAssetPickerHelper *)self preselectedOIDs];
  v8 = (v5)[2](v5, v4, v7);

  v9 = [(PXStoryAssetPickerHelper *)self preselectedOIDs];
  v10 = (v5)[2](v5, v9, v4);

  v11 = [(PXStoryAssetPickerHelper *)self delegate];
  [v11 storyPickerHelper:self didFinishPicking:v6 promotedAssets:v8 demotedAssets:v10];
}

id __48__PXStoryAssetPickerHelper__handlePickedAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 mutableCopy];
  v7 = v6;
  if (v5)
  {
    [v6 minusOrderedSet:v5];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    [v7 minusOrderedSet:v8];
  }

  if ([v7 count])
  {
    v9 = objc_alloc(MEMORY[0x1E69788E0]);
    v10 = [v7 array];
    v11 = [*(a1 + 32) photoLibrary];
    v12 = [MEMORY[0x1E6978630] fetchType];
    v13 = [v9 initWithOids:v10 photoLibrary:v11 fetchType:v12 fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)picker:(id)a3 didFinishPicking:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(PXStoryAssetPickerHelper *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    PXMap();
  }
}

- (PXStoryAssetPickerHelper)initWithContainerAssetCollection:(id)a3 preselectedAssets:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;

    if (v11)
    {
      v12 = [v11 photoLibrary];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v13 = [v9 firstObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v12 = [v14 photoLibrary];

  v11 = 0;
LABEL_11:

  if (!v12)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"PXStoryAssetPickerHelper.m" lineNumber:35 description:{@"Photo library couldn't be determined for %@ / %@", v10, v9}];
  }

  v15 = v10;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [v16 localIdentifier];
  if (v17)
  {
    v18 = v17;
LABEL_19:

    goto LABEL_21;
  }

  v18 = [v15 uuid];

  if (!v18)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXStoryAssetPickerHelper.m" lineNumber:37 description:{@"Collection identifier couldn't be determined for %@", v15}];
    goto LABEL_19;
  }

LABEL_21:
  v50.receiver = self;
  v50.super_class = PXStoryAssetPickerHelper;
  v19 = [(PXStoryAssetPickerHelper *)&v50 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_containerCollection, a3);
    objc_storeStrong(&v20->_photoLibrary, v12);
    v21 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibraryAndOnlyReturnsIdentifiers:v12];
    [v21 _setUsesMemoriesLayout:1];
    [v21 setMinimumSelectionLimit:1];
    [v21 setSelectionLimit:*MEMORY[0x1E6978FE8]];
    [v21 _setDisabledPrivateCapabilities:7];
    v22 = [MEMORY[0x1E6979178] assetCollectionSuggestionGroup:v18 extendedCuratedAssetsOnly:1 shouldReverseSortOrder:1];
    [v21 set_suggestionGroup:v22];

    [v21 setDisabledCapabilities:16];
    if ([v9 count] >= 1)
    {
      v45 = v21;
      v46 = v20;
      v47 = v18;
      v48 = v15;
      v49 = v12;
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v25 = 1;
      if ([v9 count])
      {
        v26 = -1;
        do
        {
          v27 = [v9 objectAtIndexedSubscript:v26 + 1];
          if (v25 && (v26 + 1) >= 2)
          {
            v28 = [v9 objectAtIndexedSubscript:v26];
            v29 = [v28 creationDate];
            if (v29 && (v30 = v29, [v27 creationDate], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31))
            {
              v32 = [v28 creationDate];
              v33 = [v27 creationDate];
              v25 = [v32 compare:v33] != 1;
            }

            else
            {
              v25 = 0;
            }
          }

          v34 = [v27 localIdentifier];
          [v23 addObject:v34];

          v35 = [v27 objectID];
          [v24 addObject:v35];

          v36 = [v9 count];
          v37 = v26 + 2;
          ++v26;
        }

        while (v37 < v36);
      }

      v38 = [v23 copy];
      v21 = v45;
      [v45 setPreselectedAssetIdentifiers:v38];

      v39 = [v24 copy];
      v20 = v46;
      preselectedOIDs = v46->_preselectedOIDs;
      v46->_preselectedOIDs = v39;

      v46->_preselectedAssetsHaveDefaultSortOrder = v25;
      v15 = v48;
      v12 = v49;
      v18 = v47;
    }

    v41 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v21];
    [(UIViewController *)v41 setDelegate:v20];
    pickerViewController = v20->_pickerViewController;
    v20->_pickerViewController = v41;
  }

  return v20;
}

@end