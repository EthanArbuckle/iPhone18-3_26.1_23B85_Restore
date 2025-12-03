@interface PUJoiningMediaProvider
- (PUJoiningMediaProvider)init;
- (id)_mediaProviderForAsset:(id)asset requestType:(int64_t)type;
- (int)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int)request;
- (void)registerMediaProvider:(id)provider forAssetClass:(Class)class;
- (void)registerMediaProvider:(id)provider forAssetPassingTest:(id)test;
@end

@implementation PUJoiningMediaProvider

- (void)cancelImageRequest:(int)request
{
  v3 = *&request;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _mediaProviderByClass = [(PUJoiningMediaProvider *)self _mediaProviderByClass];
  objectEnumerator = [_mediaProviderByClass objectEnumerator];

  v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v10 + 1) + 8 * v9++) cancelImageRequest:v3];
      }

      while (v7 != v9);
      v7 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int)requestAnimatedImageForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v11 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy requestType:4];
  v12 = [v11 requestAnimatedImageForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  return v12;
}

- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v16 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy requestType:3];
  LODWORD(mode) = [v16 requestLivePhotoForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:{width, height}];

  return mode;
}

- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  videoCopy = video;
  v11 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:videoCopy requestType:2];
  v12 = [v11 requestPlayerItemForVideo:videoCopy options:optionsCopy resultHandler:handlerCopy];

  return v12;
}

- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v11 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy requestType:1];
  v12 = [v11 requestImageURLForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  return v12;
}

- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v11 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy requestType:1];
  v12 = [v11 requestImageDataForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];

  return v12;
}

- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  v16 = [(PUJoiningMediaProvider *)self _mediaProviderForAsset:assetCopy requestType:0];
  LODWORD(mode) = [v16 requestImageForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:{width, height}];

  return mode;
}

- (id)_mediaProviderForAsset:(id)asset requestType:(int64_t)type
{
  v37 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (assetCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    _mediaProviderPredicateRecords = [(PUJoiningMediaProvider *)self _mediaProviderPredicateRecords];
    v8 = [_mediaProviderPredicateRecords countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(_mediaProviderPredicateRecords);
        }

        v12 = *(*(&v31 + 1) + 8 * v11);
        predicate = [v12 predicate];
        v14 = (predicate)[2](predicate, assetCopy, type);

        if (v14)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [_mediaProviderPredicateRecords countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      mediaProvider = [v12 mediaProvider];

      if (mediaProvider)
      {
        goto LABEL_26;
      }
    }

    else
    {
LABEL_10:
    }

    _mediaProviderByClass = [(PUJoiningMediaProvider *)self _mediaProviderByClass];
    mediaProvider = [_mediaProviderByClass objectForKey:objc_opt_class()];

    if (!mediaProvider)
    {
      _mediaProviderByClass2 = [(PUJoiningMediaProvider *)self _mediaProviderByClass];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      keyEnumerator = [_mediaProviderByClass2 keyEnumerator];
      v19 = [keyEnumerator countByEnumeratingWithState:&v27 objects:v35 count:16];
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
              objc_enumerationMutation(keyEnumerator);
            }

            v23 = *(*(&v27 + 1) + 8 * i);
            if ([objc_opt_class() isSubclassOfClass:v23])
            {
              mediaProvider = [_mediaProviderByClass2 objectForKey:v23];

              if (mediaProvider)
              {
                [_mediaProviderByClass2 setObject:mediaProvider forKey:objc_opt_class()];
              }

              goto LABEL_25;
            }
          }

          v20 = [keyEnumerator countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      mediaProvider = 0;
LABEL_25:
    }

LABEL_26:
    loadingStatusManager = [(PUMediaProvider *)self loadingStatusManager];

    if (loadingStatusManager)
    {
      loadingStatusManager2 = [(PUMediaProvider *)self loadingStatusManager];
      [mediaProvider setLoadingStatusManager:loadingStatusManager2];
    }
  }

  else
  {
    mediaProvider = 0;
  }

  return mediaProvider;
}

- (void)registerMediaProvider:(id)provider forAssetPassingTest:(id)test
{
  providerCopy = provider;
  testCopy = test;
  if (providerCopy)
  {
    if (testCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUJoiningMediaProvider.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

    if (testCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUJoiningMediaProvider.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"predicate != nil"}];

LABEL_3:
  v8 = [[PUJoiningMediaProviderPredicateRecord alloc] initWithMediaProvider:providerCopy predicate:testCopy];
  if (!self->__mediaProviderPredicateRecords)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mediaProviderPredicateRecords = self->__mediaProviderPredicateRecords;
    self->__mediaProviderPredicateRecords = v9;
  }

  _mediaProviderPredicateRecords = [(PUJoiningMediaProvider *)self _mediaProviderPredicateRecords];
  [_mediaProviderPredicateRecords addObject:v8];
}

- (void)registerMediaProvider:(id)provider forAssetClass:(Class)class
{
  providerCopy = provider;
  if (providerCopy)
  {
    if (class)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUJoiningMediaProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];

    if (class)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUJoiningMediaProvider.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"assetClass != nil"}];

LABEL_3:
  _mediaProviderByClass = [(PUJoiningMediaProvider *)self _mediaProviderByClass];
  [_mediaProviderByClass setObject:providerCopy forKey:class];
}

- (PUJoiningMediaProvider)init
{
  v7.receiver = self;
  v7.super_class = PUJoiningMediaProvider;
  v2 = [(PUJoiningMediaProvider *)&v7 init];
  if (v2)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    mediaProviderByClass = v2->__mediaProviderByClass;
    v2->__mediaProviderByClass = strongToStrongObjectsMapTable;

    mediaProviderPredicateRecords = v2->__mediaProviderPredicateRecords;
    v2->__mediaProviderPredicateRecords = 0;
  }

  return v2;
}

@end