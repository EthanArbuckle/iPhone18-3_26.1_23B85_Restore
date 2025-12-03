@interface PXContentSyndicationPhotoKitAssetGroup
- (PXContentSyndicationPhotoKitAssetGroup)initWithAssets:(id)assets;
@end

@implementation PXContentSyndicationPhotoKitAssetGroup

- (PXContentSyndicationPhotoKitAssetGroup)initWithAssets:(id)assets
{
  v54 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v5 = assetsCopy;
  if (assetsCopy && [assetsCopy count])
  {
    v51.receiver = self;
    v51.super_class = PXContentSyndicationPhotoKitAssetGroup;
    v6 = [(PXContentSyndicationPhotoKitAssetGroup *)&v51 init];
    v7 = v6;
    if (v6)
    {
      v40 = v6;
      v8 = [v5 count];
      v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v41 = v5;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v48;
        v43 = *v48;
        do
        {
          v15 = 0;
          v45 = v13;
          do
          {
            if (*v48 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v47 + 1) + 8 * v15);
            [v9 addObject:v16];
            if ([v16 px_isSyndicatedAsset])
            {
              [v16 fetchPropertySetsIfNeeded];
              curationProperties = [v16 curationProperties];
              syndicationIdentifier = [curationProperties syndicationIdentifier];

              if (!syndicationIdentifier)
              {
                PXAssertGetLog();
              }

              [v46 addObject:syndicationIdentifier];
              if ([v16 px_isUnsavedSyndicatedAsset])
              {
                v19 = v11;
                v20 = v9;
                v21 = v10;
                [v44 addObject:v16];
                v22 = MEMORY[0x1E6978630];
                v52 = syndicationIdentifier;
                v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
                mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
                librarySpecificFetchOptions = [mEMORY[0x1E69789A8] librarySpecificFetchOptions];
                v26 = [v22 fetchAssetsWithSyndicationIdentifiers:v23 options:librarySpecificFetchOptions];

                firstObject = [v26 firstObject];
                if ([firstObject sourceType] == 8)
                {
                  [v42 addObject:firstObject];
                }

                v10 = v21;
                v9 = v20;
                v11 = v19;
                v14 = v43;
                v13 = v45;
              }
            }

            else
            {
              [v10 addObject:v16];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v13);
      }

      v28 = [v9 copy];
      v7 = v40;
      originalAssets = v40->_originalAssets;
      v40->_originalAssets = v28;

      v30 = [v10 copy];
      userLibraryAssets = v40->_userLibraryAssets;
      v40->_userLibraryAssets = v30;

      v32 = [v44 copy];
      unsavedSyndicatedAssets = v40->_unsavedSyndicatedAssets;
      v40->_unsavedSyndicatedAssets = v32;

      v34 = [v42 copy];
      unsavedCMMSyndicatedAssets = v40->_unsavedCMMSyndicatedAssets;
      v40->_unsavedCMMSyndicatedAssets = v34;

      v36 = [v46 copy];
      syndicationIdentifiers = v40->_syndicationIdentifiers;
      v40->_syndicationIdentifiers = v36;

      v5 = v41;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end