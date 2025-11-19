@interface PUOneUpContentTileProvider
- (PUOneUpContentTileProvider)initWithMediaProvider:(id)a3;
- (id)tileControllerForAsset:(id)a3 viewModel:(id)a4 tilingView:(id)a5;
- (void)registerTileControllerClassesWithTilingView:(id)a3;
@end

@implementation PUOneUpContentTileProvider

- (id)tileControllerForAsset:(id)a3 viewModel:(id)a4 tilingView:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PUOneUpContentTileProvider.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v34 = [MEMORY[0x1E696AAA8] currentHandler];
  [v34 handleFailureInMethod:a2 object:self file:@"PUOneUpContentTileProvider.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];

LABEL_3:
  v13 = [v9 mediaType];
  v14 = [v9 playbackStyle];
  v15 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v15 px_isContentPreviewable];

    if (!v16)
    {
      v17 = @"PUSensitiveAssetTileViewReuseIdentifier";
LABEL_14:
      v20 = [v12 dequeueTileControllerWithReuseIdentifier:v17];
      v21 = [(PUOneUpContentTileProvider *)self mediaProvider];
      [v20 setMediaProvider:v21];

      [v20 setAssetViewModel:v10];
      goto LABEL_30;
    }
  }

  else
  {
  }

  if (v14 == 5 || v13 == 2)
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
        v19 = 1;
        goto LABEL_18;
      }

LABEL_23:
      v24 = &PUIrisImageTileViewReuseIdentifier;
      goto LABEL_24;
    }

    v19 = [v15 isPhotoIrisPlaceholder];

    if (([v15 isAnimatedImage] & 1) == 0)
    {
      if ((v19 & 1) == 0)
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

    v19 = 0;
  }

LABEL_18:
  v22 = +[PUOneUpSettings sharedInstance];
  v23 = [v22 allowGIFPlayback];

  v24 = &PUAnimatedImageTileViewReuseIdentifier;
  if ((v19 & 1) == 0)
  {
    if (v23)
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
  v25 = [(PUOneUpContentTileProvider *)self window];
  if (!v25)
  {
    v26 = [v12 window];
    v27 = v26;
    if (v26)
    {
      v25 = v26;
    }

    else
    {
      v28 = [MEMORY[0x1E69DC668] sharedApplication];
      v29 = [v28 windows];
      v25 = [v29 firstObject];
    }
  }

  v30 = [(PUOneUpContentTileProvider *)self mediaProvider];
  [v20 setMediaProvider:v30];

  v31 = [v25 px_imageModulationManager];
  [v20 setImageModulationManager:v31];

  [v20 setAssetViewModel:v10];
LABEL_30:
  [v20 setContentViewEnabled:1];

  return v20;
}

- (void)registerTileControllerClassesWithTilingView:(id)a3
{
  v3 = a3;
  [v3 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUOneUpImageTileViewReuseIdentifier"];
  [v3 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUVideoTileViewReuseIdentifier"];
  [v3 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUIrisImageTileViewReuseIdentifier"];
  [v3 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUAnimatedImageTileViewReuseIdentifier"];
  [v3 registerTileControllerClass:objc_opt_class() forReuseIdentifier:@"PUSensitiveAssetTileViewReuseIdentifier"];
}

- (PUOneUpContentTileProvider)initWithMediaProvider:(id)a3
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PUOneUpContentTileProvider;
  v7 = [(PUOneUpContentTileProvider *)&v10 init];
  if (v7)
  {
    if (!v6)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:v7 file:@"PUOneUpContentTileProvider.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"mediaProvider != nil"}];
    }

    objc_storeStrong(&v7->_mediaProvider, a3);
  }

  return v7;
}

@end