@interface PUJoiningMediaProvider
- (PUJoiningMediaProvider)init;
- (id)_mediaProviderForAsset:(id)a3 requestType:(int64_t)a4;
- (int)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int)a3;
- (void)registerMediaProvider:(id)a3 forAssetClass:(Class)a4;
- (void)registerMediaProvider:(id)a3 forAssetPassingTest:(id)a4;
@end

@implementation PUJoiningMediaProvider

- (void)cancelImageRequest:(int)a3
{
  v3 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(PUJoiningMediaProvider *)self _mediaProviderByClass];
  v5 = [v4 objectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) cancelImageRequest:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:v10 requestType:4];
  v12 = [v11 requestAnimatedImageForAsset:v10 options:v9 resultHandler:v8];

  return v12;
}

- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:v15 requestType:3];
  LODWORD(a5) = [v16 requestLivePhotoForAsset:v15 targetSize:a5 contentMode:v14 options:v13 resultHandler:{width, height}];

  return a5;
}

- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:v10 requestType:2];
  v12 = [v11 requestPlayerItemForVideo:v10 options:v9 resultHandler:v8];

  return v12;
}

- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:v10 requestType:1];
  v12 = [v11 requestImageURLForAsset:v10 options:v9 resultHandler:v8];

  return v12;
}

- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:v10 requestType:1];
  v12 = [v11 requestImageDataForAsset:v10 options:v9 resultHandler:v8];

  return v12;
}

- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:v15 requestType:0];
  LODWORD(a5) = [v16 requestImageForAsset:v15 targetSize:a5 contentMode:v14 options:v13 resultHandler:{width, height}];

  return a5;
}

- (id)_mediaProviderForAsset:(id)a3 requestType:(int64_t)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = [(PUJoiningMediaProvider *)self _mediaProviderPredicateRecords];
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        v13 = [v12 predicate];
        v14 = (v13)[2](v13, v6, a4);

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v15 = [v12 mediaProvider];

      if (v15)
      {
        goto LABEL_26;
      }
    }

    else
    {
LABEL_10:
    }

    v16 = [(PUJoiningMediaProvider *)self _mediaProviderByClass];
    v15 = [v16 objectForKey:objc_opt_class()];

    if (!v15)
    {
      v17 = [(PUJoiningMediaProvider *)self _mediaProviderByClass];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = [v17 keyEnumerator];
      v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v28;
        while (2)
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v28 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v27 + 1) + 8 * i);
            if ([objc_opt_class() isSubclassOfClass:v23])
            {
              v15 = [v17 objectForKey:v23];

              if (v15)
              {
                [v17 setObject:v15 forKey:objc_opt_class()];
              }

              goto LABEL_25;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v15 = 0;
LABEL_25:
    }

LABEL_26:
    v24 = [(PUMediaProvider *)self loadingStatusManager];

    if (v24)
    {
      v25 = [(PUMediaProvider *)self loadingStatusManager];
      [v15 setLoadingStatusManager:v25];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)registerMediaProvider:(id)a3 forAssetPassingTest:(id)a4
{
  v14 = a3;
  v7 = a4;
  if (v14)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUJoiningMediaProvider.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PUJoiningMediaProvider.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];

LABEL_3:
  v8 = [[PUJoiningMediaProviderPredicateRecord alloc] initWithMediaProvider:v14 predicate:v7];
  if (!self->__mediaProviderPredicateRecords)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mediaProviderPredicateRecords = self->__mediaProviderPredicateRecords;
    self->__mediaProviderPredicateRecords = v9;
  }

  v11 = [(PUJoiningMediaProvider *)self _mediaProviderPredicateRecords];
  [v11 addObject:v8];
}

- (void)registerMediaProvider:(id)a3 forAssetClass:(Class)a4
{
  v10 = a3;
  if (v10)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUJoiningMediaProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PUJoiningMediaProvider.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"assetClass != nil"}];

LABEL_3:
  v7 = [(PUJoiningMediaProvider *)self _mediaProviderByClass];
  [v7 setObject:v10 forKey:a4];
}

- (PUJoiningMediaProvider)init
{
  v7.receiver = self;
  v7.super_class = PUJoiningMediaProvider;
  v2 = [(PUJoiningMediaProvider *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    mediaProviderByClass = v2->__mediaProviderByClass;
    v2->__mediaProviderByClass = v3;

    mediaProviderPredicateRecords = v2->__mediaProviderPredicateRecords;
    v2->__mediaProviderPredicateRecords = 0;
  }

  return v2;
}

@end