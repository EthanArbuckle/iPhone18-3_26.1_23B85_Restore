@interface PXStoryAssetPickerHelper
- (PXStoryAssetPickerHelper)initWithContainerAssetCollection:(id)collection preselectedAssets:(id)assets;
- (PXStoryAssetPickerHelperDelegate)delegate;
- (void)_handlePickedAssets:(id)assets;
- (void)picker:(id)picker didFinishPicking:(id)picking;
@end

@implementation PXStoryAssetPickerHelper

- (PXStoryAssetPickerHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handlePickedAssets:(id)assets
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PXStoryAssetPickerHelper__handlePickedAssets___block_invoke;
  aBlock[3] = &unk_1E773E0F8;
  aBlock[4] = self;
  assetsCopy = assets;
  v5 = _Block_copy(aBlock);
  v6 = v5[2](v5, assetsCopy, 0);
  preselectedOIDs = [(PXStoryAssetPickerHelper *)self preselectedOIDs];
  v8 = (v5)[2](v5, assetsCopy, preselectedOIDs);

  preselectedOIDs2 = [(PXStoryAssetPickerHelper *)self preselectedOIDs];
  v10 = (v5)[2](v5, preselectedOIDs2, assetsCopy);

  delegate = [(PXStoryAssetPickerHelper *)self delegate];
  [delegate storyPickerHelper:self didFinishPicking:v6 promotedAssets:v8 demotedAssets:v10];
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

- (void)picker:(id)picker didFinishPicking:(id)picking
{
  v8 = *MEMORY[0x1E69E9840];
  pickingCopy = picking;
  delegate = [(PXStoryAssetPickerHelper *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    PXMap();
  }
}

- (PXStoryAssetPickerHelper)initWithContainerAssetCollection:(id)collection preselectedAssets:(id)assets
{
  collectionCopy = collection;
  assetsCopy = assets;
  v10 = collectionCopy;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;

    if (v11)
    {
      photoLibrary = [v11 photoLibrary];
      goto LABEL_11;
    }
  }

  else
  {
  }

  firstObject = [assetsCopy firstObject];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = firstObject;
  }

  else
  {
    v14 = 0;
  }

  photoLibrary = [v14 photoLibrary];

  v11 = 0;
LABEL_11:

  if (!photoLibrary)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAssetPickerHelper.m" lineNumber:35 description:{@"Photo library couldn't be determined for %@ / %@", v10, assetsCopy}];
  }

  v15 = v10;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    currentHandler2 = v15;
  }

  else
  {
    currentHandler2 = 0;
  }

  localIdentifier = [currentHandler2 localIdentifier];
  if (localIdentifier)
  {
    uuid = localIdentifier;
LABEL_19:

    goto LABEL_21;
  }

  uuid = [v15 uuid];

  if (!uuid)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryAssetPickerHelper.m" lineNumber:37 description:{@"Collection identifier couldn't be determined for %@", v15}];
    goto LABEL_19;
  }

LABEL_21:
  v50.receiver = self;
  v50.super_class = PXStoryAssetPickerHelper;
  v19 = [(PXStoryAssetPickerHelper *)&v50 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_containerCollection, collection);
    objc_storeStrong(&v20->_photoLibrary, photoLibrary);
    v21 = [objc_alloc(MEMORY[0x1E69790E0]) initWithPhotoLibraryAndOnlyReturnsIdentifiers:photoLibrary];
    [v21 _setUsesMemoriesLayout:1];
    [v21 setMinimumSelectionLimit:1];
    [v21 setSelectionLimit:*MEMORY[0x1E6978FE8]];
    [v21 _setDisabledPrivateCapabilities:7];
    v22 = [MEMORY[0x1E6979178] assetCollectionSuggestionGroup:uuid extendedCuratedAssetsOnly:1 shouldReverseSortOrder:1];
    [v21 set_suggestionGroup:v22];

    [v21 setDisabledCapabilities:16];
    if ([assetsCopy count] >= 1)
    {
      v45 = v21;
      v46 = v20;
      v47 = uuid;
      v48 = v15;
      v49 = photoLibrary;
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v25 = 1;
      if ([assetsCopy count])
      {
        v26 = -1;
        do
        {
          v27 = [assetsCopy objectAtIndexedSubscript:v26 + 1];
          if (v25 && (v26 + 1) >= 2)
          {
            v28 = [assetsCopy objectAtIndexedSubscript:v26];
            creationDate = [v28 creationDate];
            if (creationDate && (v30 = creationDate, [v27 creationDate], v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v31))
            {
              creationDate2 = [v28 creationDate];
              creationDate3 = [v27 creationDate];
              v25 = [creationDate2 compare:creationDate3] != 1;
            }

            else
            {
              v25 = 0;
            }
          }

          localIdentifier2 = [v27 localIdentifier];
          [v23 addObject:localIdentifier2];

          objectID = [v27 objectID];
          [v24 addObject:objectID];

          v36 = [assetsCopy count];
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
      photoLibrary = v49;
      uuid = v47;
    }

    v41 = [objc_alloc(MEMORY[0x1E69790F8]) initWithConfiguration:v21];
    [(UIViewController *)v41 setDelegate:v20];
    pickerViewController = v20->_pickerViewController;
    v20->_pickerViewController = v41;
  }

  return v20;
}

@end