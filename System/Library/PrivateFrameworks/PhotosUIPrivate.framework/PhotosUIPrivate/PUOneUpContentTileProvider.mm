@interface PUOneUpContentTileProvider
- (PUOneUpContentTileProvider)initWithMediaProvider:(id)provider;
- (id)tileControllerForAsset:(id)asset viewModel:(id)model tilingView:(id)view;
- (void)registerTileControllerClassesWithTilingView:(id)view;
@end

@implementation PUOneUpContentTileProvider

- (id)tileControllerForAsset:(id)asset viewModel:(id)model tilingView:(id)view
{
  assetCopy = asset;
  modelCopy = model;
  viewCopy = view;
  v12 = viewCopy;
  if (assetCopy)
  {
    if (viewCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUOneUpContentTileProvider.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUOneUpContentTileProvider.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];

LABEL_3:
  mediaType = [assetCopy mediaType];
  playbackStyle = [assetCopy playbackStyle];
  v15 = assetCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    px_isContentPreviewable = [v15 px_isContentPreviewable];

    if (!px_isContentPreviewable)
    {
      v17 = @"PUSensitiveAssetTileViewReuseIdentifier";
LABEL_14:
      v20 = [v12 dequeueTileControllerWithReuseIdentifier:v17];
      mediaProvider = [(PUOneUpContentTileProvider *)self mediaProvider];
      [v20 setMediaProvider:mediaProvider];

      [v20 setAssetViewModel:modelCopy];
      goto LABEL_30;
    }
  }

  else
  {
  }

  if (playbackStyle == 5 || mediaType == 2)
  {
    v17 = @"PUVideoTileViewReuseIdentifier";
    goto LABEL_14;
  }

  v18 = +[PURootSettings sharedInstance];
  if ([v18 irisUIEnabled])
  {
    if ([v15 canPlayPhotoIris])
    {

      if ([v15 isAnimatedImage])
      {
        isPhotoIrisPlaceholder = 1;
        goto LABEL_18;
      }

LABEL_23:
      v24 = &PUIrisImageTileViewReuseIdentifier;
      goto LABEL_24;
    }

    isPhotoIrisPlaceholder = [v15 isPhotoIrisPlaceholder];

    if (([v15 isAnimatedImage] & 1) == 0)
    {
      if ((isPhotoIrisPlaceholder & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }
  }

  else
  {

    if (![v15 isAnimatedImage])
    {
      goto LABEL_21;
    }

    isPhotoIrisPlaceholder = 0;
  }

LABEL_18:
  v22 = +[PUOneUpSettings sharedInstance];
  allowGIFPlayback = [v22 allowGIFPlayback];

  v24 = &PUAnimatedImageTileViewReuseIdentifier;
  if ((isPhotoIrisPlaceholder & 1) == 0)
  {
    if (allowGIFPlayback)
    {
      goto LABEL_24;
    }

LABEL_21:
    v24 = &PUOneUpImageTileViewReuseIdentifier;
    goto LABEL_24;
  }

  v24 = &PUIrisImageTileViewReuseIdentifier;
LABEL_24:
  v20 = [v12 dequeueTileControllerWithReuseIdentifier:*v24];
  window = [(PUOneUpContentTileProvider *)self window];
  if (!window)
  {
    window2 = [v12 window];
    v27 = window2;
    if (window2)
    {
      window = window2;
    }

    else
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      windows = [mEMORY[0x1E69DC668] windows];
      window = [windows firstObject];
    }
  }

  mediaProvider2 = [(PUOneUpContentTileProvider *)self mediaProvider];
  [v20 setMediaProvider:mediaProvider2];

  px_imageModulationManager = [window px_imageModulationManager];
  [v20 setImageModulationManager:px_imageModulationManager];

  [v20 setAssetViewModel:modelCopy];
LABEL_30:
  [v20 setContentViewEnabled:1];

  return v20;
}

- (void)registerTileControllerClassesWithTilingView:(id)view
{
  viewCopy = view;
  [viewCopy registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUOneUpImageTileViewReuseIdentifier"];
  [viewCopy registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUVideoTileViewReuseIdentifier"];
  [viewCopy registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUIrisImageTileViewReuseIdentifier"];
  [viewCopy registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUAnimatedImageTileViewReuseIdentifier"];
  [viewCopy registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUSensitiveAssetTileViewReuseIdentifier"];
}

- (PUOneUpContentTileProvider)initWithMediaProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = PUOneUpContentTileProvider;
  v7 = [(PUOneUpContentTileProvider *)&v10 init];
  if (v7)
  {
    if (!providerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v7 file:@"PUOneUpContentTileProvider.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];
    }

    objc_storeStrong(&v7->_mediaProvider, provider);
  }

  return v7;
}

@end