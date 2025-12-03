@interface SHSheetActivityItemUtilities
+ (BOOL)shouldShowHeaderSpecializationForMetadata:(id)metadata;
+ (id)itemProvidersFromActivityItems:(id)items;
+ (id)urlForActivityItem:(id)item;
+ (void)_loadMetadataFromRemainingGroupActivityItemProviders:(id)providers loadedMetadata:(id)metadata loadedError:(id)error completion:(id)completion;
+ (void)loadMetadataFromGroupActivityItemProviders:(id)providers completion:(id)completion;
@end

@implementation SHSheetActivityItemUtilities

+ (id)urlForActivityItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    scheme = itemCopy;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:itemCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      scheme = 0;
      goto LABEL_11;
    }

    v6 = MEMORY[0x1E695DFF8];
    string = [itemCopy string];
    v5 = [v6 URLWithString:string];
  }

  scheme = [v5 scheme];

  if (scheme)
  {
    scheme = v5;
  }

LABEL_11:

  return scheme;
}

+ (id)itemProvidersFromActivityItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = itemsCopy;
  if (itemsCopy && [itemsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [array addObject:{v11, v13}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

+ (void)loadMetadataFromGroupActivityItemProviders:(id)providers completion:(id)completion
{
  v16[1] = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  completionCopy = completion;
  if (providersCopy && [providersCopy count])
  {
    v8 = [providersCopy mutableCopy];
    array = [MEMORY[0x1E695DF70] array];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__SHSheetActivityItemUtilities_loadMetadataFromGroupActivityItemProviders_completion___block_invoke;
    v13[3] = &unk_1E71FB5B0;
    v14 = completionCopy;
    [self _loadMetadataFromRemainingGroupActivityItemProviders:v8 loadedMetadata:array loadedError:0 completion:v13];

    v10 = v14;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"No item providers were provided.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v11 errorWithDomain:@"com.apple.sharesheet.loadgroupactivitymetadata" code:-1 userInfo:v12];

    (*(completionCopy + 2))(completionCopy, 0, v10);
  }
}

void __86__SHSheetActivityItemUtilities_loadMetadataFromGroupActivityItemProviders_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A578];
      v11[0] = @"None of the given item providers could load a GroupActivity.";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      v7 = [v8 errorWithDomain:@"com.apple.sharesheet.loadgroupactivitymetadata" code:-1 userInfo:v9];
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (void)_loadMetadataFromRemainingGroupActivityItemProviders:(id)providers loadedMetadata:(id)metadata loadedError:(id)error completion:(id)completion
{
  providersCopy = providers;
  metadataCopy = metadata;
  errorCopy = error;
  completionCopy = completion;
  lastObject = [providersCopy lastObject];
  if (lastObject)
  {
    [providersCopy removeLastObject];
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __123__SHSheetActivityItemUtilities__loadMetadataFromRemainingGroupActivityItemProviders_loadedMetadata_loadedError_completion___block_invoke;
    v15[3] = &unk_1E71FB5D8;
    v16 = metadataCopy;
    v17 = errorCopy;
    objc_copyWeak(&v20, &location);
    v18 = providersCopy;
    v19 = completionCopy;
    [lastObject loadGroupActivityMetadataWithCompletion:v15];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, metadataCopy, errorCopy);
  }
}

void __123__SHSheetActivityItemUtilities__loadMetadataFromRemainingGroupActivityItemProviders_loadedMetadata_loadedError_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    [*(a1 + 32) addObject:v9];
  }

  v6 = v5;
  if (!v5)
  {
    v6 = *(a1 + 40);
  }

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _loadMetadataFromRemainingGroupActivityItemProviders:*(a1 + 48) loadedMetadata:*(a1 + 32) loadedError:v7 completion:*(a1 + 56)];
}

+ (BOOL)shouldShowHeaderSpecializationForMetadata:(id)metadata
{
  metadataCopy = metadata;
  specialization = [metadataCopy specialization];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = getLPiTunesMediaPlaylistMetadataClass_softClass;
  v16 = getLPiTunesMediaPlaylistMetadataClass_softClass;
  if (!getLPiTunesMediaPlaylistMetadataClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getLPiTunesMediaPlaylistMetadataClass_block_invoke;
    v12[3] = &unk_1E71F91F0;
    v12[4] = &v13;
    __getLPiTunesMediaPlaylistMetadataClass_block_invoke(v12);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  if (objc_opt_isKindOfClass())
  {
    v7 = [metadataCopy URL];
    v8 = [v7 valueForQueryKey:@"a"];
    lowercaseString = [v8 lowercaseString];
    v10 = [lowercaseString isEqualToString:@"join"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end