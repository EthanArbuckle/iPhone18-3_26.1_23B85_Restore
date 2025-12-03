@interface SearchUIShowPhotosOneUpViewHandler
+ (id)matchedPersonLocalIdentifiersForCommand:(id)command;
+ (id)matchedSceneIdentifiersForCommand:(id)command andType:(int)type;
- (id)additionalActionMenuItems;
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
- (id)itemProvider;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIShowPhotosOneUpViewHandler

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  environmentCopy = environment;
  v9 = +[SearchUIPhotosOneUpController sharedController];
  rowModel = [(SearchUICommandHandler *)self rowModel];
  [v9 presentOneUpViewForRowModel:rowModel triggerEvent:event environment:environmentCopy];
}

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  environmentCopy = environment;
  v6 = +[SearchUIPhotosOneUpController sharedController];
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v8 = [v6 previewViewControllerForRowModel:rowModel environment:environmentCopy];

  return v8;
}

- (id)additionalActionMenuItems
{
  v20[1] = *MEMORY[0x1E69E9840];
  command = [(SearchUICommandHandler *)self command];
  _matchedPerson = [command _matchedPerson];
  photosIdentifier = [_matchedPerson photosIdentifier];

  if (photosIdentifier)
  {
    photosIdentifier2 = [_matchedPerson photosIdentifier];
    photosLibraryImage = [command photosLibraryImage];
    v7 = +[SearchUIPhotosUtilities personWithIdentifier:isSyndicated:](SearchUIPhotosUtilities, "personWithIdentifier:isSyndicated:", photosIdentifier2, [photosLibraryImage isSyndicated]);

    v8 = [MEMORY[0x1E69C37C0] notThisPersonLocalizedTitleForPerson:v7];
    notThisPersonSystemImage = [MEMORY[0x1E69C37C0] notThisPersonSystemImage];
    v10 = MEMORY[0x1E69DC628];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __63__SearchUIShowPhotosOneUpViewHandler_additionalActionMenuItems__block_invoke;
    v17 = &unk_1E85B3850;
    v18 = command;
    v19 = _matchedPerson;
    v11 = [v10 actionWithTitle:v8 image:notThisPersonSystemImage identifier:0 handler:&v14];
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
  command = [(SearchUICommandHandler *)self command];
  photosLibraryImage = [command photosLibraryImage];

  v4 = +[SearchUIPhotoAssetCache sharedCache];
  v5 = [v4 assetForImage:photosLibraryImage];

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

+ (id)matchedSceneIdentifiersForCommand:(id)command andType:(int)type
{
  v21 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  matchedScenes = [commandCopy matchedScenes];
  v8 = [matchedScenes countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(matchedScenes);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 sceneType] == type)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v12, "sceneIdentifier")}];
          [v6 addObject:v13];
        }
      }

      v9 = [matchedScenes countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

+ (id)matchedPersonLocalIdentifiersForCommand:(id)command
{
  v20 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v4 = objc_opt_new();
  matchedPeople = [commandCopy matchedPeople];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [matchedPeople countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(matchedPeople);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        photosIdentifier = [v10 photosIdentifier];

        if (photosIdentifier)
        {
          photosIdentifier2 = [v10 photosIdentifier];
          [v4 addObject:photosIdentifier2];
        }
      }

      v7 = [matchedPeople countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

@end