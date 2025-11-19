@interface SearchUIShowPhotosOneUpViewHandler
+ (id)matchedPersonLocalIdentifiersForCommand:(id)a3;
+ (id)matchedSceneIdentifiersForCommand:(id)a3 andType:(int)a4;
- (id)additionalActionMenuItems;
- (id)createViewControllerForCommand:(id)a3 environment:(id)a4;
- (id)itemProvider;
- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5;
@end

@implementation SearchUIShowPhotosOneUpViewHandler

- (void)performCommand:(id)a3 triggerEvent:(unint64_t)a4 environment:(id)a5
{
  v7 = a5;
  v9 = +[SearchUIPhotosOneUpController sharedController];
  v8 = [(SearchUICommandHandler *)self rowModel];
  [v9 presentOneUpViewForRowModel:v8 triggerEvent:a4 environment:v7];
}

- (id)createViewControllerForCommand:(id)a3 environment:(id)a4
{
  v5 = a4;
  v6 = +[SearchUIPhotosOneUpController sharedController];
  v7 = [(SearchUICommandHandler *)self rowModel];
  v8 = [v6 previewViewControllerForRowModel:v7 environment:v5];

  return v8;
}

- (id)additionalActionMenuItems
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 _matchedPerson];
  v4 = [v3 photosIdentifier];

  if (v4)
  {
    v5 = [v3 photosIdentifier];
    v6 = [v2 photosLibraryImage];
    v7 = +[SearchUIPhotosUtilities personWithIdentifier:isSyndicated:](SearchUIPhotosUtilities, "personWithIdentifier:isSyndicated:", v5, [v6 isSyndicated]);

    v8 = [MEMORY[0x1E69C37C0] notThisPersonLocalizedTitleForPerson:v7];
    v9 = [MEMORY[0x1E69C37C0] notThisPersonSystemImage];
    v10 = MEMORY[0x1E69DC628];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __63__SearchUIShowPhotosOneUpViewHandler_additionalActionMenuItems__block_invoke;
    v17 = &unk_1E85B3850;
    v18 = v2;
    v19 = v3;
    v11 = [v10 actionWithTitle:v8 image:v9 identifier:0 handler:&v14];
    [v11 setAttributes:{2, v14, v15, v16, v17}];
    v20[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

void __63__SearchUIShowPhotosOneUpViewHandler_additionalActionMenuItems__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) photosLibraryImage];
  v3 = [(SearchUIImage *)SearchUIPhotosLibraryImage imageWithSFImage:v2];

  [v3 rejectPerson:*(a1 + 40)];
}

- (id)itemProvider
{
  v2 = [(SearchUICommandHandler *)self command];
  v3 = [v2 photosLibraryImage];

  v4 = +[SearchUIPhotoAssetCache sharedCache];
  v5 = [v4 assetForImage:v3];

  if (v5)
  {
    v6 = PUItemProviderForAsset();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)matchedSceneIdentifiersForCommand:(id)a3 andType:(int)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 matchedScenes];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 sceneType] == a4)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v12, "sceneIdentifier")}];
          [v6 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

+ (id)matchedPersonLocalIdentifiersForCommand:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 matchedPeople];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 photosIdentifier];

        if (v11)
        {
          v12 = [v10 photosIdentifier];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

@end