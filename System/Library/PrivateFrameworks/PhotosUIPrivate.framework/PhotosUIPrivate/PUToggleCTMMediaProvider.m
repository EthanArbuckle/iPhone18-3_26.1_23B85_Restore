@interface PUToggleCTMMediaProvider
- (PUToggleCTMMediaProvider)initWithViewModel:(id)a3 mediaProvider:(id)a4;
- (id)_imageWithSize:(CGSize)a3 string:(id)a4;
- (id)_requestOptions;
- (id)_resourceOfType:(int64_t)a3 forAsset:(id)a4;
- (int)requestAVAssetForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestAsynchronousVideoURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int)a3;
@end

@implementation PUToggleCTMMediaProvider

- (void)cancelImageRequest:(int)a3
{
  v3 = *&a3;
  [(PUMediaProvider *)self->_mediaProvider cancelImageRequest:?];
  v4 = MEMORY[0x1E69788C8];

  [v4 cancelLivePhotoRequestWithRequestID:v3];
}

- (int)requestAsynchronousVideoURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(PUMediaProvider *)self->_mediaProvider requestAsynchronousVideoURLForAsset:v8 options:v9 resultHandler:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)requestAVAssetForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(PUMediaProvider *)self->_mediaProvider requestAVAssetForVideo:v8 options:v9 resultHandler:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v37[2] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:v13]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = v13;
    v17 = [(PUToggleCTMMediaProvider *)self _ctmImageResourceForAsset:v16];
    v18 = [(PUToggleCTMMediaProvider *)self _ctmPairedVideoResourceForAsset:v16];
    v19 = [v17 privateFileURL];
    v20 = [v18 privateFileURL];
    v21 = v20;
    if (v19 && v20)
    {
      v29 = v17;
      v22 = MEMORY[0x1E69788C8];
      v37[0] = v19;
      v37[1] = v20;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      v30 = 0;
      v24 = [v22 livePhotoWithResourceFileURLs:v23 targetSize:a5 contentMode:1 skipValidation:0 prefersHDR:&v30 error:{width, height}];
      v25 = v30;

      if (v24)
      {
        v15[2](v15, v24, 0);
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

    v26 = 0;
  }

  else
  {
    v26 = [(PUMediaProvider *)self->_mediaProvider requestLivePhotoForAsset:v13 targetSize:a5 contentMode:v14 options:v15 resultHandler:width, height];
  }

  return v26;
}

- (int)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:v8]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [(PUToggleCTMMediaProvider *)self _ctmVideoResourceForAsset:v8];
    v12 = [v11 privateFileURL];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69880B0]) initWithURL:v12];
      if (v13)
      {
        v14 = v13;
        v10[2](v10, v13, 0);
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
    v15 = [(PUMediaProvider *)self->_mediaProvider requestPlayerItemForVideo:v8 options:v9 resultHandler:v10];
  }

  return v15;
}

- (int)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v27[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:v8]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = v8;
    v12 = [(PUToggleCTMMediaProvider *)self _ctmImageResourceForAsset:v11];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 privateFileURL];
      if (v14)
      {
        v26[0] = *MEMORY[0x1E6978E28];
        v15 = [v13 uniformTypeIdentifier];
        v16 = v15;
        v17 = &stru_1F2AC6818;
        if (v15)
        {
          v17 = v15;
        }

        v27[0] = v17;
        v26[1] = *MEMORY[0x1E6978E10];
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v11, "imageOrientation")}];
        v27[1] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
        v10[2](v10, v14, v19);
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
      v14 = PLOneUpGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v11;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Missing CTM resource for asset:%@", &v22, 0xCu);
      }
    }

    v20 = 0;
  }

  else
  {
    v20 = [(PUMediaProvider *)self->_mediaProvider requestImageURLForAsset:v8 options:v9 resultHandler:v10];
  }

  return v20;
}

- (int)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:v8]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = v8;
    v12 = [(PUToggleCTMMediaProvider *)self _ctmImageResourceForAsset:v11];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 privateFileURL];
      if (v14 && (v15 = objc_alloc(MEMORY[0x1E695DEF0]), -[NSObject path](v14, "path"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v15 initWithContentsOfFile:v16], v16, v17))
      {
        v18 = [v13 uniformTypeIdentifier];
        v10[2](v10, v17, v18, [v11 imageOrientation], 0);
      }

      else
      {
        v17 = PLOneUpGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 138412546;
          v22 = v13;
          v23 = 2112;
          v24 = v14;
          _os_log_impl(&dword_1B36F3000, v17, OS_LOG_TYPE_DEFAULT, "Error retrieving data for resource:%@ fileURL:%@", &v21, 0x16u);
        }
      }
    }

    else
    {
      v14 = PLOneUpGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v11;
        _os_log_impl(&dword_1B36F3000, v14, OS_LOG_TYPE_DEFAULT, "Missing CTM resource for asset:%@", &v21, 0xCu);
      }
    }

    v19 = 0;
  }

  else
  {
    v19 = [(PUMediaProvider *)self->_mediaProvider requestImageDataForAsset:v8 options:v9 resultHandler:v10];
  }

  return v19;
}

- (int)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v30 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if ([(PUToggleCTMMediaProvider *)self _shouldToggleCTMForAsset:v13])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && height > 150.0)
    {
      v16 = v13;
      v17 = [(PUToggleCTMMediaProvider *)self _ctmImageResourceForAsset:v16];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 privateFileURL];
        if (!v19 || (v20 = objc_alloc(MEMORY[0x1E69DCAB8]), [v19 path], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "initWithContentsOfFile:", v21), v21, !v22))
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error creating image for resource:%@ fileURL:%@", v18, v19];
          v23 = PLOneUpGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v22;
            _os_log_impl(&dword_1B36F3000, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v24 = [(PUToggleCTMMediaProvider *)self _imageWithSize:v22 string:width, height];
          v15[2](v15, v24, 0);

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

        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No matching CTM resource type for asset:%@", v16];
        v22 = [(PUToggleCTMMediaProvider *)self _imageWithSize:v19 string:width, height];
      }

      v15[2](v15, v22, 0);
LABEL_15:

      v25 = 0;
      goto LABEL_16;
    }
  }

  v25 = [(PUMediaProvider *)self->_mediaProvider requestImageForAsset:v13 targetSize:a5 contentMode:v14 options:v15 resultHandler:width, height];
LABEL_16:

  return v25;
}

- (id)_requestOptions
{
  v2 = objc_alloc_init(MEMORY[0x1E6978708]);
  [v2 setNetworkAccessAllowed:1];

  return v2;
}

- (id)_resourceOfType:(int64_t)a3 forAsset:(id)a4
{
  v5 = [MEMORY[0x1E69786D8] assetResourcesForAsset:a4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__PUToggleCTMMediaProvider__resourceOfType_forAsset___block_invoke;
  v9[3] = &__block_descriptor_40_e32_B32__0__PHAssetResource_8Q16_B24l;
  v9[4] = a3;
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

- (id)_imageWithSize:(CGSize)a3 string:(id)a4
{
  height = a3.height;
  width = a3.width;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__PUToggleCTMMediaProvider__imageWithSize_string___block_invoke;
  v11[3] = &unk_1E7B7C7B0;
  v12 = v6;
  v8 = v6;
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

- (PUToggleCTMMediaProvider)initWithViewModel:(id)a3 mediaProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PUToggleCTMMediaProvider;
  v9 = [(PUToggleCTMMediaProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, a3);
    objc_storeStrong(&v10->_mediaProvider, a4);
  }

  return v10;
}

@end