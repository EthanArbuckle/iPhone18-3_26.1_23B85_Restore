@interface VUIVideoAdvisoryLogoImageDownloader
- (void)cleanupImageProxies;
- (void)downloadImageWithURL:(id)l imageInfo:(id)info completion:(id)completion;
- (void)downloadImagesWithAdvisoryImageInfo:(id)info photoSensitivityImageInfo:(id)imageInfo highMotionWarningImageInfo:(id)warningImageInfo completion:(id)completion;
@end

@implementation VUIVideoAdvisoryLogoImageDownloader

- (void)downloadImageWithURL:(id)l imageInfo:(id)info completion:(id)completion
{
  lCopy = l;
  infoCopy = info;
  completionCopy = completion;
  if ([lCopy length])
  {
    width = [infoCopy width];
    height = [infoCopy height];
    v13 = objc_alloc(MEMORY[0x1E69D5978]);
    format = [infoCopy format];
    v15 = [v13 initUrlWithProperties:lCopy imageSize:0 focusSizeIncrease:format cropCode:width urlFormat:height, 0.0];

    v16 = [MEMORY[0x1E69D5988] imageURLWithDescription:v15];
    v17 = objc_alloc(MEMORY[0x1E69D5958]);
    mEMORY[0x1E69D5980] = [MEMORY[0x1E69D5980] sharedInstance];
    v19 = [v17 initWithObject:v16 imageLoader:mEMORY[0x1E69D5980] groupType:0];

    if (v19)
    {
      ratingImageProxy = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];

      if (ratingImageProxy)
      {
        ratingImageProxy2 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
        if ([ratingImageProxy2 isEqual:v19])
        {
          ratingImageProxy3 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
          isLoading = [ratingImageProxy3 isLoading];

          if (isLoading)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }

        ratingImageProxy4 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
        [ratingImageProxy4 cancel];

        ratingImageProxy5 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
        [ratingImageProxy5 setCompletionHandler:0];

        [(VUIVideoAdvisoryLogoImageDownloader *)self setRatingImageProxy:0];
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __81__VUIVideoAdvisoryLogoImageDownloader_downloadImageWithURL_imageInfo_completion___block_invoke;
      v26[3] = &unk_1E8732A50;
      v27 = completionCopy;
      [v19 setCompletionHandler:v26];
      [(VUIVideoAdvisoryLogoImageDownloader *)self setRatingImageProxy:v19];
      [v19 load];
    }

LABEL_10:
  }
}

void __81__VUIVideoAdvisoryLogoImageDownloader_downloadImageWithURL_imageInfo_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = [v6 uiImage];

  if (v7 && a4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v9 = __81__VUIVideoAdvisoryLogoImageDownloader_downloadImageWithURL_imageInfo_completion___block_invoke_2;
    v10 = &unk_1E872DC10;
    v12 = *(a1 + 32);
    v11 = v6;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v9(v8);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v8);
    }
  }
}

void __81__VUIVideoAdvisoryLogoImageDownloader_downloadImageWithURL_imageInfo_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) uiImage];
    (*(v1 + 16))(v1, v2);
  }
}

- (void)downloadImagesWithAdvisoryImageInfo:(id)info photoSensitivityImageInfo:(id)imageInfo highMotionWarningImageInfo:(id)warningImageInfo completion:(id)completion
{
  infoCopy = info;
  imageInfoCopy = imageInfo;
  warningImageInfoCopy = warningImageInfo;
  completionCopy = completion;
  v12 = dispatch_group_create();
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__12;
  v55[4] = __Block_byref_object_dispose__12;
  v56 = 0;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x3032000000;
  v53[3] = __Block_byref_object_copy__12;
  v53[4] = __Block_byref_object_dispose__12;
  v54 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__12;
  v51[4] = __Block_byref_object_dispose__12;
  v52 = 0;
  v13 = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke(v12, infoCopy);
  v14 = v13;
  if (v13)
  {
    ratingImageProxy = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];

    if (ratingImageProxy)
    {
      ratingImageProxy2 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
      if ([ratingImageProxy2 isEqual:v14])
      {
        ratingImageProxy3 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
        isLoading = [ratingImageProxy3 isLoading];

        if (isLoading)
        {
          goto LABEL_25;
        }
      }

      else
      {
      }
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke_33;
    v48[3] = &unk_1E8732A78;
    v19 = v12;
    v49 = v19;
    v50 = v55;
    [v14 setCompletionHandler:v48];
    [(VUIVideoAdvisoryLogoImageDownloader *)self setRatingImageProxy:v14];
    dispatch_group_enter(v19);
    [v14 load];
  }

  v20 = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke(v13, imageInfoCopy);
  v21 = v20;
  if (v20)
  {
    photoSensitivityImageProxy = [(VUIVideoAdvisoryLogoImageDownloader *)self photoSensitivityImageProxy];

    if (photoSensitivityImageProxy)
    {
      photoSensitivityImageProxy2 = [(VUIVideoAdvisoryLogoImageDownloader *)self photoSensitivityImageProxy];
      if ([photoSensitivityImageProxy2 isEqual:v21])
      {
        photoSensitivityImageProxy3 = [(VUIVideoAdvisoryLogoImageDownloader *)self photoSensitivityImageProxy];
        isLoading2 = [photoSensitivityImageProxy3 isLoading];

        if (isLoading2)
        {
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke_2;
    v45[3] = &unk_1E8732A78;
    v26 = v12;
    v46 = v26;
    v47 = v53;
    [v21 setCompletionHandler:v45];
    [(VUIVideoAdvisoryLogoImageDownloader *)self setPhotoSensitivityImageProxy:v21];
    dispatch_group_enter(v26);
    [v21 load];
  }

  v27 = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke(v20, warningImageInfoCopy);
  if (v27)
  {
    highMotionWarningImageProxy = [(VUIVideoAdvisoryLogoImageDownloader *)self highMotionWarningImageProxy];

    if (highMotionWarningImageProxy)
    {
      highMotionWarningImageProxy2 = [(VUIVideoAdvisoryLogoImageDownloader *)self highMotionWarningImageProxy];
      if ([highMotionWarningImageProxy2 isEqual:v21])
      {
        highMotionWarningImageProxy3 = [(VUIVideoAdvisoryLogoImageDownloader *)self highMotionWarningImageProxy];
        isLoading3 = [highMotionWarningImageProxy3 isLoading];

        if (isLoading3)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke_3;
    v42[3] = &unk_1E8732A78;
    v32 = v12;
    v43 = v32;
    v44 = v51;
    [v27 setCompletionHandler:v42];
    [(VUIVideoAdvisoryLogoImageDownloader *)self setHighMotionWarningImageProxy:v27];
    dispatch_group_enter(v32);
    [v27 load];
  }

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke_4;
  block[3] = &unk_1E8732AA0;
  objc_copyWeak(&v40, &location);
  v36 = completionCopy;
  v37 = v55;
  v38 = v53;
  v39 = v51;
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
LABEL_23:

LABEL_24:
LABEL_25:

  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v53, 8);

  _Block_object_dispose(v55, 8);
}

id __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 imageURL];
  if ([v3 length])
  {
    v4 = [v2 width];
    v5 = [v2 height];
    v6 = objc_alloc(MEMORY[0x1E69D5978]);
    v7 = [v2 format];
    v8 = [v6 initUrlWithProperties:v3 imageSize:0 focusSizeIncrease:v7 cropCode:v4 urlFormat:v5, 0.0];

    v9 = [MEMORY[0x1E69D5988] imageURLWithDescription:v8];
    v10 = objc_alloc(MEMORY[0x1E69D5958]);
    v11 = [MEMORY[0x1E69D5980] sharedInstance];
    v12 = [v10 initWithObject:v9 imageLoader:v11 groupType:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke_33(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  dispatch_group_leave(*(a1 + 32));
  v7 = [v8 uiImage];

  if (v7 && a4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  dispatch_group_leave(*(a1 + 32));
  v7 = [v8 uiImage];

  if (v7 && a4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v8 = a2;
  dispatch_group_leave(*(a1 + 32));
  v7 = [v8 uiImage];

  if (v7 && a4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained cleanupImageProxies];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) uiImage];
    v4 = [*(*(*(a1 + 48) + 8) + 40) uiImage];
    v5 = [*(*(*(a1 + 56) + 8) + 40) uiImage];
    (*(v2 + 16))(v2, v3, v4, v5);
  }
}

- (void)cleanupImageProxies
{
  [(VUIVideoAdvisoryLogoImageDownloader *)self setRatingImageProxy:0];
  [(VUIVideoAdvisoryLogoImageDownloader *)self setPhotoSensitivityImageProxy:0];

  [(VUIVideoAdvisoryLogoImageDownloader *)self setHighMotionWarningImageProxy:0];
}

@end