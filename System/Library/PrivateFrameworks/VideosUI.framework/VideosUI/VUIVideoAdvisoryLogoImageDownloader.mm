@interface VUIVideoAdvisoryLogoImageDownloader
- (void)cleanupImageProxies;
- (void)downloadImageWithURL:(id)a3 imageInfo:(id)a4 completion:(id)a5;
- (void)downloadImagesWithAdvisoryImageInfo:(id)a3 photoSensitivityImageInfo:(id)a4 highMotionWarningImageInfo:(id)a5 completion:(id)a6;
@end

@implementation VUIVideoAdvisoryLogoImageDownloader

- (void)downloadImageWithURL:(id)a3 imageInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length])
  {
    v11 = [v9 width];
    v12 = [v9 height];
    v13 = objc_alloc(MEMORY[0x1E69D5978]);
    v14 = [v9 format];
    v15 = [v13 initUrlWithProperties:v8 imageSize:0 focusSizeIncrease:v14 cropCode:v11 urlFormat:v12, 0.0];

    v16 = [MEMORY[0x1E69D5988] imageURLWithDescription:v15];
    v17 = objc_alloc(MEMORY[0x1E69D5958]);
    v18 = [MEMORY[0x1E69D5980] sharedInstance];
    v19 = [v17 initWithObject:v16 imageLoader:v18 groupType:0];

    if (v19)
    {
      v20 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];

      if (v20)
      {
        v21 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
        if ([v21 isEqual:v19])
        {
          v22 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
          v23 = [v22 isLoading];

          if (v23)
          {
            goto LABEL_10;
          }
        }

        else
        {
        }

        v24 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
        [v24 cancel];

        v25 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
        [v25 setCompletionHandler:0];

        [(VUIVideoAdvisoryLogoImageDownloader *)self setRatingImageProxy:0];
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __81__VUIVideoAdvisoryLogoImageDownloader_downloadImageWithURL_imageInfo_completion___block_invoke;
      v26[3] = &unk_1E8732A50;
      v27 = v10;
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

- (void)downloadImagesWithAdvisoryImageInfo:(id)a3 photoSensitivityImageInfo:(id)a4 highMotionWarningImageInfo:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v34 = a5;
  v33 = a6;
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
  v13 = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke(v12, v10);
  v14 = v13;
  if (v13)
  {
    v15 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];

    if (v15)
    {
      v16 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
      if ([v16 isEqual:v14])
      {
        v17 = [(VUIVideoAdvisoryLogoImageDownloader *)self ratingImageProxy];
        v18 = [v17 isLoading];

        if (v18)
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

  v20 = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke(v13, v11);
  v21 = v20;
  if (v20)
  {
    v22 = [(VUIVideoAdvisoryLogoImageDownloader *)self photoSensitivityImageProxy];

    if (v22)
    {
      v23 = [(VUIVideoAdvisoryLogoImageDownloader *)self photoSensitivityImageProxy];
      if ([v23 isEqual:v21])
      {
        v24 = [(VUIVideoAdvisoryLogoImageDownloader *)self photoSensitivityImageProxy];
        v25 = [v24 isLoading];

        if (v25)
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

  v27 = __139__VUIVideoAdvisoryLogoImageDownloader_downloadImagesWithAdvisoryImageInfo_photoSensitivityImageInfo_highMotionWarningImageInfo_completion___block_invoke(v20, v34);
  if (v27)
  {
    v28 = [(VUIVideoAdvisoryLogoImageDownloader *)self highMotionWarningImageProxy];

    if (v28)
    {
      v29 = [(VUIVideoAdvisoryLogoImageDownloader *)self highMotionWarningImageProxy];
      if ([v29 isEqual:v21])
      {
        v30 = [(VUIVideoAdvisoryLogoImageDownloader *)self highMotionWarningImageProxy];
        v31 = [v30 isLoading];

        if (v31)
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
  v36 = v33;
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