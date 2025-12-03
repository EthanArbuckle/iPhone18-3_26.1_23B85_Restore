@interface NSItemProvider(PhotosUICore)
- (id)_px_assetResourceBagsFromUniformTypeIdentifier:()PhotosUICore atURL:;
- (id)_px_bestTypeIdentifierForItemProvider:()PhotosUICore;
- (id)_px_sharedMediaVideoComplementFromURL:()PhotosUICore;
- (uint64_t)_px_assetResourceTypeFromUniformTypeIdentifier:()PhotosUICore;
- (uint64_t)_px_isSupportedUniformTypeIdentifier:()PhotosUICore;
- (uint64_t)_px_shareMediaTypeFromUniformTypeIdentifier:()PhotosUICore;
- (void)px_createAssetWithImportSessionID:()PhotosUICore completionBlock:;
- (void)px_createStreamShareSourceWithCompletionBlock:()PhotosUICore;
@end

@implementation NSItemProvider(PhotosUICore)

- (uint64_t)_px_shareMediaTypeFromUniformTypeIdentifier:()PhotosUICore
{
  v0 = [MEMORY[0x1E69C08F0] typeWithIdentifier:?];
  if (PFIsLivePhotoBundleType())
  {
    v1 = 3;
  }

  else if ([v0 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v1 = 1;
  }

  else if ([v0 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)_px_sharedMediaVideoComplementFromURL:()PhotosUICore
{
  v3 = MEMORY[0x1E69C0918];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleAtURL:v4];

  return v5;
}

- (id)_px_assetResourceBagsFromUniformTypeIdentifier:()PhotosUICore atURL:
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E69C08F0] typeWithIdentifier:a3];
  if (PFIsLivePhotoBundleType())
  {
    v7 = [objc_alloc(MEMORY[0x1E69C0918]) initWithBundleAtURL:v5];
    v8 = MEMORY[0x1E695DFF8];
    imagePath = [(_PXAssetResourceBag *)v7 imagePath];
    v10 = [v8 fileURLWithPath:imagePath];

    v11 = MEMORY[0x1E695DFF8];
    videoPath = [(_PXAssetResourceBag *)v7 videoPath];
    v13 = [v11 fileURLWithPath:videoPath];

    v14 = [[_PXAssetResourceBag alloc] initWithResourceType:1 atURL:v10];
    v15 = [[_PXAssetResourceBag alloc] initWithResourceType:9 atURL:v13];
    v22[0] = v14;
    v22[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

LABEL_8:
    goto LABEL_9;
  }

  if ([v6 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v7 = [[_PXAssetResourceBag alloc] initWithResourceType:2 atURL:v5];
    v21 = v7;
    v17 = MEMORY[0x1E695DEC8];
    v18 = &v21;
LABEL_7:
    v16 = [v17 arrayWithObjects:v18 count:1];
    goto LABEL_8;
  }

  if ([v6 conformsToType:*MEMORY[0x1E6982E30]])
  {
    v7 = [[_PXAssetResourceBag alloc] initWithResourceType:1 atURL:v5];
    v20 = v7;
    v17 = MEMORY[0x1E695DEC8];
    v18 = &v20;
    goto LABEL_7;
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (uint64_t)_px_assetResourceTypeFromUniformTypeIdentifier:()PhotosUICore
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E6982C40] typeWithIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  if ([v4 conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v5 = 2;
  }

  else
  {
    v5 = [v4 conformsToType:*MEMORY[0x1E6982E30]];
  }

  return v5;
}

- (uint64_t)_px_isSupportedUniformTypeIdentifier:()PhotosUICore
{
  v0 = [MEMORY[0x1E69C08F0] typeWithIdentifier:?];
  if ([v0 conformsToType:*MEMORY[0x1E6982EE8]] & 1) != 0 || (objc_msgSend(v0, "conformsToType:", *MEMORY[0x1E6982E30]))
  {
    v1 = 1;
  }

  else
  {
    v1 = PFIsLivePhotoBundleType();
  }

  return v1;
}

- (id)_px_bestTypeIdentifierForItemProvider:()PhotosUICore
{
  v30 = *MEMORY[0x1E69E9840];
  [a3 registeredTypeIdentifiersWithFileOptions:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = v27 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v24 + 1) + 8 * i)];
        v10 = PFIsLivePhotoBundleType();

        if (v10)
        {
          v18 = PFCurrentPlatformLivePhotoBundleType();
          identifier = [v18 identifier];

          goto LABEL_21;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        if ([self _px_isSupportedUniformTypeIdentifier:{v16, v20}])
        {
          identifier = v16;
          goto LABEL_21;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      identifier = 0;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    identifier = 0;
  }

LABEL_21:

  return identifier;
}

- (void)px_createStreamShareSourceWithCompletionBlock:()PhotosUICore
{
  v4 = a3;
  v5 = [self _px_bestTypeIdentifierForItemProvider:self];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__NSItemProvider_PhotosUICore__px_createStreamShareSourceWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E77346A8;
  v10 = v5;
  v11 = v4;
  v9[4] = self;
  v6 = v5;
  v7 = v4;
  v8 = [self loadFileRepresentationForTypeIdentifier:v6 completionHandler:v9];
}

- (void)px_createAssetWithImportSessionID:()PhotosUICore completionBlock:
{
  v6 = a3;
  v7 = a4;
  v8 = [self _px_bestTypeIdentifierForItemProvider:self];
  v9 = +[PXDragAndDropSettings sharedInstance];
  useData = [v9 useData];

  if (useData)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke;
    v26[3] = &unk_1E772F218;
    v11 = &v27;
    v26[4] = self;
    v27 = v8;
    v12 = &v28;
    v13 = &v29;
    v28 = v6;
    v29 = v7;
    v14 = v6;
    v15 = v8;
    v16 = v7;
    v17 = [self loadDataRepresentationForTypeIdentifier:v15 completionHandler:v26];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __82__NSItemProvider_PhotosUICore__px_createAssetWithImportSessionID_completionBlock___block_invoke_194;
    v22[3] = &unk_1E772F240;
    v11 = &v25;
    v12 = &v23;
    v22[4] = self;
    v23 = v8;
    v13 = &v24;
    v24 = v6;
    v25 = v7;
    v18 = v6;
    v19 = v8;
    v20 = v7;
    v21 = [self loadFileRepresentationForTypeIdentifier:v19 completionHandler:v22];
  }
}

@end