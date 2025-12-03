@interface UIPasteboard(PhotosUICore)
+ (id)px_newPasteboardItemProviderForAsset:()PhotosUICore fileURL:utiType:;
+ (id)px_newPasteboardRepresentationForAsset:()PhotosUICore data:utiType:;
- (id)px_assets;
- (uint64_t)px_containsAssets;
@end

@implementation UIPasteboard(PhotosUICore)

- (uint64_t)px_containsAssets
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.mobileslideshow.asset.localidentifier";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = [self containsPasteboardTypes:v2];

  return v3;
}

- (id)px_assets
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [self valuesForPasteboardType:@"com.apple.mobileslideshow.asset.localidentifier" inItemSet:0];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
          if (v9)
          {
            [v2 addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v5);
  }

  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v10 = [MEMORY[0x1E6978830] fetchOptionsWithInclusiveDefaultsForPhotoLibrary:?];
  v11 = [MEMORY[0x1E6978630] fetchAssetsWithLocalIdentifiers:v2 options:v10];
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v34;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v33 + 1) + 8 * j);
        localIdentifier = [v18 localIdentifier];
        [v12 setObject:v18 forKeyedSubscript:localIdentifier];
      }

      v15 = [v13 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v15);
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = v2;
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [v12 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * k)];
        if (v26)
        {
          [v20 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v23);
  }

  return v20;
}

+ (id)px_newPasteboardItemProviderForAsset:()PhotosUICore fileURL:utiType:
{
  v7 = a4;
  v8 = MEMORY[0x1E696ACA0];
  v9 = a5;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  v12 = v7;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __83__UIPasteboard_PhotosUICore__px_newPasteboardItemProviderForAsset_fileURL_utiType___block_invoke;
  v24[3] = &unk_1E7746350;
  v25 = v12;
  [v11 registerFileRepresentationForTypeIdentifier:v9 fileOptions:0 visibility:0 loadHandler:v24];

  localIdentifier = [v10 localIdentifier];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __83__UIPasteboard_PhotosUICore__px_newPasteboardItemProviderForAsset_fileURL_utiType___block_invoke_2;
  v22 = &unk_1E7746378;
  v23 = localIdentifier;
  v14 = localIdentifier;
  [v11 registerDataRepresentationForTypeIdentifier:@"com.apple.mobileslideshow.asset.localidentifier" visibility:3 loadHandler:&v19];
  [v10 fetchPropertySetsIfNeeded];
  originalMetadataProperties = [v10 originalMetadataProperties];

  originalFilename = [originalMetadataProperties originalFilename];
  stringByDeletingPathExtension = [originalFilename stringByDeletingPathExtension];

  [v11 setSuggestedName:stringByDeletingPathExtension];

  return v11;
}

+ (id)px_newPasteboardRepresentationForAsset:()PhotosUICore data:utiType:
{
  v7 = a4;
  v8 = a5;
  localIdentifier = [a3 localIdentifier];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = v10;
  if (localIdentifier)
  {
    [v10 setObject:localIdentifier forKeyedSubscript:@"com.apple.mobileslideshow.asset.localidentifier"];
  }

  if (v7 && v8)
  {
    [v11 setObject:v7 forKeyedSubscript:v8];
  }

  return v11;
}

@end