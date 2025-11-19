@interface SHSheetActivityItemUtilities
+ (BOOL)shouldShowHeaderSpecializationForMetadata:(id)a3;
+ (id)itemProvidersFromActivityItems:(id)a3;
+ (id)urlForActivityItem:(id)a3;
+ (void)_loadMetadataFromRemainingGroupActivityItemProviders:(id)a3 loadedMetadata:(id)a4 loadedError:(id)a5 completion:(id)a6;
+ (void)loadMetadataFromGroupActivityItemProviders:(id)a3 completion:(id)a4;
@end

@implementation SHSheetActivityItemUtilities

+ (id)urlForActivityItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = 0;
      goto LABEL_11;
    }

    v6 = MEMORY[0x1E695DFF8];
    v7 = [v3 string];
    v5 = [v6 URLWithString:v7];
  }

  v4 = [v5 scheme];

  if (v4)
  {
    v4 = v5;
  }

LABEL_11:

  return v4;
}

+ (id)itemProvidersFromActivityItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
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
            [v5 addObject:{v11, v13}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)loadMetadataFromGroupActivityItemProviders:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [v6 mutableCopy];
    v9 = [MEMORY[0x1E695DF70] array];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__SHSheetActivityItemUtilities_loadMetadataFromGroupActivityItemProviders_completion___block_invoke;
    v13[3] = &unk_1E71FB5B0;
    v14 = v7;
    [a1 _loadMetadataFromRemainingGroupActivityItemProviders:v8 loadedMetadata:v9 loadedError:0 completion:v13];

    v10 = v14;
  }

  else
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"No item providers were provided.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v11 errorWithDomain:@"com.apple.sharesheet.loadgroupactivitymetadata" code:-1 userInfo:v12];

    (*(v7 + 2))(v7, 0, v10);
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

+ (void)_loadMetadataFromRemainingGroupActivityItemProviders:(id)a3 loadedMetadata:(id)a4 loadedError:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 lastObject];
  if (v14)
  {
    [v10 removeLastObject];
    objc_initWeak(&location, a1);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __123__SHSheetActivityItemUtilities__loadMetadataFromRemainingGroupActivityItemProviders_loadedMetadata_loadedError_completion___block_invoke;
    v15[3] = &unk_1E71FB5D8;
    v16 = v11;
    v17 = v12;
    objc_copyWeak(&v20, &location);
    v18 = v10;
    v19 = v13;
    [v14 loadGroupActivityMetadataWithCompletion:v15];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v13 + 2))(v13, v11, v12);
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

+ (BOOL)shouldShowHeaderSpecializationForMetadata:(id)a3
{
  v3 = a3;
  v4 = [v3 specialization];
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
    v7 = [v3 URL];
    v8 = [v7 valueForQueryKey:@"a"];
    v9 = [v8 lowercaseString];
    v10 = [v9 isEqualToString:@"join"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end