@interface PUToggleCTMMediaProvider
- (PUToggleCTMMediaProvider)initWithViewModel:(id)model mediaProvider:(id)provider;
- (id)_imageWithSize:(CGSize)size string:(id)string;
- (id)_requestOptions;
- (id)_resourceOfType:(int64_t)type forAsset:(id)asset;
- (int)requestAVAssetForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (int)requestAsynchronousVideoURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler;
- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler;
- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler;
- (void)cancelImageRequest:(int)request;
@end

@implementation PUToggleCTMMediaProvider

- (void)cancelImageRequest:(int)request
{
  v3 = *&request;
  [(PUMediaProvider *)self->_mediaProvider cancelImageRequest:?];
  v4 = MEMORY[0x1E69788C8];

  [v4 cancelLivePhotoRequestWithRequestID:v3];
}

- (int)requestAsynchronousVideoURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(PUMediaProvider *)self->_mediaProvider requestAsynchronousVideoURLForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)requestAVAssetForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  videoCopy = video;
  optionsCopy = options;
  handlerCopy = handler;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(PUMediaProvider *)self->_mediaProvider requestAVAssetForVideo:videoCopy options:optionsCopy resultHandler:handlerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)requestLivePhotoForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v37[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:assetCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = assetCopy;
    v17 = [(PUToggleCTMMediaProvider *)self _ctmImageResourceForAsset:v16];
    v18 = [(PUToggleCTMMediaProvider *)self _ctmPairedVideoResourceForAsset:v16];
    privateFileURL = [v17 privateFileURL];
    privateFileURL2 = [v18 privateFileURL];
    v21 = privateFileURL2;
    if (privateFileURL && privateFileURL2)
    {
      v29 = v17;
      v22 = MEMORY[0x1E69788C8];
      v37[0] = privateFileURL;
      v37[1] = privateFileURL2;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      v30 = 0;
      v24 = [v22 livePhotoWithResourceFileURLs:v23 targetSize:mode contentMode:1 skipValidation:0 prefersHDR:&v30 error:{width, height}];
      v25 = v30;

      if (v24)
      {
        handlerCopy[2](handlerCopy, v24, 0);
        v17 = v29;
      }

      else
      {
        log = PLOneUpGetLog();
        v17 = v29;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v32 = v29;
          v33 = 2112;
          v34 = v18;
          v35 = 2112;
          v36 = v25;
          _os_log_impl(&dword_1B36F3000, log, OS_LOG_TYPE_DEFAULT, "Error creating live photo from resources image:%@ video:%@ error:%@", buf, 0x20u);
        }
      }
    }

    else
    {
      v25 = PLOneUpGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = v17;
        v33 = 2112;
        v34 = v18;
        _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "Error creating live photo from resources, missing file URLs for: image:%@ video:%@", buf, 0x16u);
      }
    }

    height = 0;
  }

  else
  {
    height = [(PUMediaProvider *)self->_mediaProvider requestLivePhotoForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:width, height];
  }

  return height;
}

- (int)requestPlayerItemForVideo:(id)video options:(id)options resultHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  videoCopy = video;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:videoCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [(PUToggleCTMMediaProvider *)self _ctmVideoResourceForAsset:videoCopy];
    privateFileURL = [v11 privateFileURL];
    if (privateFileURL)
    {
      v13 = [objc_alloc(MEMORY[0x1E69880B0]) initWithURL:privateFileURL];
      if (v13)
      {
        v14 = v13;
        handlerCopy[2](handlerCopy, v13, 0);
      }

      else
      {
        v16 = PLOneUpGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 138412290;
          v19 = v11;
          _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Error creating playerItem for resource:%@", &v18, 0xCu);
        }

        v14 = 0;
      }
    }

    else
    {
      v14 = PLOneUpGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v11;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "No private file url for resource:%@", &v18, 0xCu);
      }
    }

    v15 = 0;
  }

  else
  {
    v15 = [(PUMediaProvider *)self->_mediaProvider requestPlayerItemForVideo:videoCopy options:optionsCopy resultHandler:handlerCopy];
  }

  return v15;
}

- (int)requestImageURLForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  v27[2] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:assetCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = assetCopy;
    v12 = [(PUToggleCTMMediaProvider *)self _ctmImageResourceForAsset:v11];
    v13 = v12;
    if (v12)
    {
      privateFileURL = [v12 privateFileURL];
      if (privateFileURL)
      {
        v26[0] = *MEMORY[0x1E6978E28];
        uniformTypeIdentifier = [v13 uniformTypeIdentifier];
        v16 = uniformTypeIdentifier;
        v17 = &stru_1F2AC6818;
        if (uniformTypeIdentifier)
        {
          v17 = uniformTypeIdentifier;
        }

        v27[0] = v17;
        v26[1] = *MEMORY[0x1E6978E10];
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "imageOrientation")}];
        v27[1] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
        handlerCopy[2](handlerCopy, privateFileURL, v19);
      }

      else
      {
        v16 = PLOneUpGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412546;
          v23 = v13;
          v24 = 2112;
          v25 = 0;
          _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "Error retrieving fileURL for resource:%@ fileURL:%@", &v22, 0x16u);
        }
      }
    }

    else
    {
      privateFileURL = PLOneUpGetLog();
      if (os_log_type_enabled(privateFileURL, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v11;
        _os_log_impl(&dword_1B36F3000, privateFileURL, OS_LOG_TYPE_DEFAULT, "Missing CTM resource for asset:%@", &v22, 0xCu);
      }
    }

    v20 = 0;
  }

  else
  {
    v20 = [(PUMediaProvider *)self->_mediaProvider requestImageURLForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];
  }

  return v20;
}

- (int)requestImageDataForAsset:(id)asset options:(id)options resultHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:assetCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = assetCopy;
    v12 = [(PUToggleCTMMediaProvider *)self _ctmImageResourceForAsset:v11];
    v13 = v12;
    if (v12)
    {
      privateFileURL = [v12 privateFileURL];
      if (privateFileURL && (v15 = objc_alloc(MEMORY[0x1E695DEF0]), -[NSObject path](privateFileURL, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v15 initWithContentsOfFile:v16], v16, v17))
      {
        uniformTypeIdentifier = [v13 uniformTypeIdentifier];
        handlerCopy[2](handlerCopy, v17, uniformTypeIdentifier, [v11 imageOrientation], 0);
      }

      else
      {
        v17 = PLOneUpGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          v22 = v13;
          v23 = 2112;
          v24 = privateFileURL;
          _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "Error retrieving data for resource:%@ fileURL:%@", &v21, 0x16u);
        }
      }
    }

    else
    {
      privateFileURL = PLOneUpGetLog();
      if (os_log_type_enabled(privateFileURL, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v11;
        _os_log_impl(&dword_1B36F3000, privateFileURL, OS_LOG_TYPE_DEFAULT, "Missing CTM resource for asset:%@", &v21, 0xCu);
      }
    }

    v19 = 0;
  }

  else
  {
    v19 = [(PUMediaProvider *)self->_mediaProvider requestImageDataForAsset:assetCopy options:optionsCopy resultHandler:handlerCopy];
  }

  return v19;
}

- (int)requestImageForAsset:(id)asset targetSize:(CGSize)size contentMode:(int64_t)mode options:(id)options resultHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v30 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:assetCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && height > 150.0)
    {
      v16 = assetCopy;
      v17 = [(PUToggleCTMMediaProvider *)self _ctmImageResourceForAsset:v16];
      v18 = v17;
      if (v17)
      {
        privateFileURL = [v17 privateFileURL];
        if (!privateFileURL || (v20 = objc_alloc(MEMORY[0x1E69DCAB8]), [privateFileURL path], v21 = objc_claimAutoreleasedReturnValue(), height2 = objc_msgSend(v20, "initWithContentsOfFile:", v21), v21, !height2))
        {
          height2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating image for resource:%@ fileURL:%@", v18, privateFileURL];
          v23 = PLOneUpGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = height2;
            _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          height = [(PUToggleCTMMediaProvider *)self _imageWithSize:height2 string:width, height];
          handlerCopy[2](handlerCopy, height, 0);

          goto LABEL_15;
        }
      }

      else
      {
        v26 = PLOneUpGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v16;
          _os_log_impl(&dword_1B36F3000, v26, OS_LOG_TYPE_DEFAULT, "Missing CTM resource for asset:%@", buf, 0xCu);
        }

        privateFileURL = [MEMORY[0x1E696AEC0] stringWithFormat:@"No matching CTM resource type for asset:%@", v16];
        height2 = [(PUToggleCTMMediaProvider *)self _imageWithSize:privateFileURL string:width, height];
      }

      handlerCopy[2](handlerCopy, height2, 0);
LABEL_15:

      height3 = 0;
      goto LABEL_16;
    }
  }

  height3 = [(PUMediaProvider *)self->_mediaProvider requestImageForAsset:assetCopy targetSize:mode contentMode:optionsCopy options:handlerCopy resultHandler:width, height];
LABEL_16:

  return height3;
}

- (id)_requestOptions
{
  v2 = objc_alloc_init(MEMORY[0x1E6978708]);
  [v2 setNetworkAccessAllowed:1];

  return v2;
}

- (id)_resourceOfType:(int64_t)type forAsset:(id)asset
{
  v5 = [MEMORY[0x1E69786D8] assetResourcesForAsset:asset];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PUToggleCTMMediaProvider__resourceOfType_forAsset___block_invoke;
  v9[3] = &__block_descriptor_40_e32_B32__0__PHAssetResource_8Q16_B24l;
  v9[4] = type;
  v6 = [v5 indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (id)_imageWithSize:(CGSize)size string:(id)string
{
  height = size.height;
  width = size.width;
  stringCopy = string;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__PUToggleCTMMediaProvider__imageWithSize_string___block_invoke;
  v11[3] = &unk_1E7B7C7B0;
  v12 = stringCopy;
  v8 = stringCopy;
  v9 = [v7 imageWithActions:v11];

  return v9;
}

void __50__PUToggleCTMMediaProvider__imageWithSize_string___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 format];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14 = *MEMORY[0x1E69DB648];
  v12 = [MEMORY[0x1E69DB878] systemFontOfSize:28.0];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  [v2 drawInRect:v13 withAttributes:{v5, v7, v9, v11}];
}

- (PUToggleCTMMediaProvider)initWithViewModel:(id)model mediaProvider:(id)provider
{
  modelCopy = model;
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = PUToggleCTMMediaProvider;
  v9 = [(PUToggleCTMMediaProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    objc_storeStrong(&v10->_mediaProvider, provider);
  }

  return v10;
}

@end