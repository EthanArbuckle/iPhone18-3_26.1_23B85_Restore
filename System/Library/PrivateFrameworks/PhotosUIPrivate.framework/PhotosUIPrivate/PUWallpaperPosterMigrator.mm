@interface PUWallpaperPosterMigrator
- (PUWallpaperPosterMigrator)initWithAssetDirectory:(id)a3 configurationType:(unint64_t)a4;
- (void)_handleLoadedConfiguration:(id)a3 scale:(double)a4 completionBlock:(id)a5;
- (void)_handleSegmentationItem:(id)a3 imageSize:(CGSize)a4 scale:(double)a5 options:(id)a6 error:(id)a7 completionBlock:(id)a8;
- (void)attemptMigrationWithCompletionBlock:(id)a3;
@end

@implementation PUWallpaperPosterMigrator

- (void)_handleSegmentationItem:(id)a3 imageSize:(CGSize)a4 scale:(double)a5 options:(id)a6 error:(id)a7 completionBlock:(id)a8
{
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  if (v12)
  {
    v16 = [objc_alloc(MEMORY[0x1E69BDEA0]) initWithSegmentationItem:v12];
    [v16 setResponseQueue:MEMORY[0x1E69E96A0]];
    v17 = [objc_alloc(MEMORY[0x1E69B3C00]) initWithLevel:0];
    [v16 setPriority:v17];

    if (PFPosterWantsLowLuminanceContent())
    {
      if ([(PUWallpaperPosterMigrator *)self configurationType]== 1)
      {
        v18 = 1351;
      }

      else
      {
        v18 = 1347;
      }
    }

    else
    {
      v18 = 1347;
    }

    if ([MEMORY[0x1E69C0938] deviceSupportsLandscapeConfiguration])
    {
      v18 |= 0x20uLL;
    }

    [v16 setLayerStackOptions:v18];
    if ([v13 supportsCropping])
    {
      [v13 cropRect];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
    }

    else
    {
      v21 = *MEMORY[0x1E695F058];
      v23 = *(MEMORY[0x1E695F058] + 8);
      v25 = *(MEMORY[0x1E695F058] + 16);
      v27 = *(MEMORY[0x1E695F058] + 24);
    }

    v64.origin.x = v21;
    v64.origin.y = v23;
    v64.size.width = v25;
    v64.size.height = v27;
    if (!CGRectIsEmpty(v64))
    {
      v65.origin.x = v21;
      v65.origin.y = v23;
      v65.size.width = v25;
      v65.size.height = v27;
      if (!CGRectIsInfinite(v65))
      {
        PXRectScale();
        v29 = v28;
        v31 = v30;
        PXRectWithOriginAndSize();
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        PXRectFlippedVertically();
        v68.origin.x = v33;
        v68.origin.y = v35;
        v68.size.width = v37;
        v68.size.height = v39;
        v67 = CGRectIntersection(v66, v68);
        v40 = vabdd_f64(v67.size.height, v31);
        if (vabdd_f64(v67.size.width, v29) < 1.0 && v40 < 1.0)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __99__PUWallpaperPosterMigrator__handleSegmentationItem_imageSize_scale_options_error_completionBlock___block_invoke;
          aBlock[3] = &__block_descriptor_64_e56___PFPosterOrientedLayout_16__0__PFPosterOrientedLayout_8l;
          v60 = v67;
          v42 = _Block_copy(aBlock);
          v43 = [MEMORY[0x1E69BDF40] effectiveLayoutForSegmentationItem:v12 editConfiguration:0 layerStackOptions:v18];
          v51 = objc_alloc(MEMORY[0x1E69C0800]);
          v54 = v43;
          [v43 portraitLayout];
          v53 = v52 = v42;
          v44 = v42 + 2;
          v45 = (v42[2])(v42, v53);
          v46 = [v43 landscapeLayout];
          v47 = v42;
          v48 = v46;
          v49 = (*v44)(v47);
          v50 = [v51 initWithPortraitLayout:v45 landscapeLayout:v49];
          [v16 setLayout:v50];

          [v16 setUpdateClockZPosition:1];
        }
      }
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __99__PUWallpaperPosterMigrator__handleSegmentationItem_imageSize_scale_options_error_completionBlock___block_invoke_2;
    v55[3] = &unk_1E7B80520;
    v56 = v13;
    v58 = v15;
    v57 = v12;
    [v16 submit:v55];
  }

  else
  {
    v19 = PLWallpaperGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v62 = v14;
      _os_log_impl(&dword_1B36F3000, v19, OS_LOG_TYPE_ERROR, "Loading segmentation item failed during migration: %{public}@", buf, 0xCu);
    }

    (*(v15 + 2))(v15, 0, 0, v14);
  }
}

id __99__PUWallpaperPosterMigrator__handleSegmentationItem_imageSize_scale_options_error_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 deviceResolution];
  PXSizeGetAspectRatio();
  PXRectWithAspectRatioFittingRect();
  v3 = [v2 layoutByUpdatingVisibleFrame:?];

  return v3;
}

void __99__PUWallpaperPosterMigrator__handleSegmentationItem_imageSize_scale_options_error_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [a2 result:&v9];
  v4 = v9;
  v5 = PLWallpaperGetLog();
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v3 statistics];
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEFAULT, "Segmentation stats: %{public}@", buf, 0xCu);
    }

    v6 = [v3 compoundLayerStack];
    v8 = -[NSObject compoundLayerStackByUpdatingParallaxDisabled:](v6, "compoundLayerStackByUpdatingParallaxDisabled:", [*(a1 + 32) parallaxEnabled] ^ 1);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Segmentation failed during migration: %{public}@", buf, 0xCu);
    }

    v8 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_handleLoadedConfiguration:(id)a3 scale:(double)a4 completionBlock:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 wallpaperOriginalImage];
  v11 = [v10 CGImage];

  Width = CGImageGetWidth(v11);
  Height = CGImageGetHeight(v11);
  if (v11 && (v14 = Width, v15 = Height, (PXSizeIsEmpty() & 1) == 0))
  {
    v17 = [[PUWallpaperPosterLegacyAsset alloc] initWithProxyImage:v11];
    v18 = [objc_alloc(MEMORY[0x1E69BDF40]) initWithParallaxAsset:v17];
    objc_initWeak(buf, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__PUWallpaperPosterMigrator__handleLoadedConfiguration_scale_completionBlock___block_invoke;
    v19[3] = &unk_1E7B7A9C8;
    objc_copyWeak(v22, buf);
    v22[1] = *&v14;
    v22[2] = *&v15;
    v22[3] = *&a4;
    v20 = v8;
    v21 = v9;
    [v18 loadSegmentationItemWithCompletion:v19];

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v16 = PLWallpaperGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v8;
      _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_ERROR, "Failed to load original image during poster migration: %{public}@", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PUWallpaperPosterErrorDomain" code:-111 userInfo:0];
    (*(v9 + 2))(v9, 0, 0, v17);
  }
}

void __78__PUWallpaperPosterMigrator__handleLoadedConfiguration_scale_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = *(a1 + 72);
  v8 = [*(a1 + 32) wallpaperOptions];
  [WeakRetained _handleSegmentationItem:v6 imageSize:v8 scale:v5 options:*(a1 + 40) error:*(a1 + 56) completionBlock:{*(a1 + 64), v7}];
}

- (void)attemptMigrationWithCompletionBlock:(id)a3
{
  v5 = a3;
  v6 = [(PUWallpaperPosterMigrator *)self configurationType];
  objc_initWeak(&location, self);
  v7 = [(PUWallpaperPosterMigrator *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PUWallpaperPosterMigrator_attemptMigrationWithCompletionBlock___block_invoke;
  v9[3] = &unk_1E7B7A9A0;
  v11[1] = a2;
  v11[2] = v6;
  v9[4] = self;
  objc_copyWeak(v11, &location);
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __65__PUWallpaperPosterMigrator_attemptMigrationWithCompletionBlock___block_invoke(uint64_t a1)
{
  if (!dlopen([@"/System/Library/PrivateFrameworks/PaperBoardUI.framework/PaperBoardUI" fileSystemRepresentation], 4))
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUWallpaperPosterMigrator.m" lineNumber:96 description:@"No PaperBoardUI!"];
  }

  v2 = objc_alloc_init(NSClassFromString(&cfstr_Pbuiwallpaperc.isa));
  v3 = *(a1 + 64);
  v9 = v2;
  switch(v3)
  {
    case 1:
      v5 = [v2 lockScreenWallpaperConfigurationIncludingValuesForTypes:18];
      goto LABEL_9;
    case 2:
      v5 = [v2 homeScreenWallpaperConfigurationIncludingValuesForTypes:18];
LABEL_9:
      v4 = v5;
      goto LABEL_10;
    case 0:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PUWallpaperPosterMigrator.m" lineNumber:108 description:@"Code which should be unreachable has been reached"];

      abort();
  }

  v4 = 0;
LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v9 wallpaperScale];
  [WeakRetained _handleLoadedConfiguration:v4 scale:*(a1 + 40) completionBlock:?];
}

- (PUWallpaperPosterMigrator)initWithAssetDirectory:(id)a3 configurationType:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = PUWallpaperPosterMigrator;
  v8 = [(PUWallpaperPosterMigrator *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_assetDirectory, a3);
    v9->_configurationType = a4;
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("com.apple.photos.poster-migration", v10);
    queue = v9->_queue;
    v9->_queue = v11;
  }

  return v9;
}

@end