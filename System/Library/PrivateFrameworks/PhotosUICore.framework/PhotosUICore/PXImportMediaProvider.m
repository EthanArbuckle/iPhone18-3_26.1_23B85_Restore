@interface PXImportMediaProvider
- (BOOL)thumbnailExistsForModel:(id)a3;
- (BOOL)thumbnailExistsForModel:(id)a3 atSize:(unint64_t)a4;
- (CGSize)gridItemSize;
- (PXImportImageCache)imageCache;
- (PXImportMediaProvider)initWithImageFormat:(unsigned __int16)a3;
- (double)idleTimeOut;
- (id)_newPlaceholderImageForItemWithExtension:(id)a3 size:(CGSize)a4;
- (id)_placeholderExtensionForItem:(id)a3;
- (id)_placeholderForItem:(id)a3 size:(unint64_t)a4;
- (id)cachedImageForModel:(id)a3 atSize:(unint64_t)a4;
- (int64_t)imageOfSize:(unint64_t)a3 forModel:(id)a4 localCacheOnly:(BOOL)a5 priority:(unsigned __int8)a6 completion:(id)a7;
- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageForImportItem:(id)a3 ofSize:(unint64_t)a4 priority:(unsigned __int8)a5 completion:(id)a6;
- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int64_t)a3;
- (void)performIdleProcessingIfNecessary;
- (void)ppt_sendMediaProviderDidProcessAsset:(id)a3;
- (void)sendMediaProviderThumbnailingBecameIdle;
@end

@implementation PXImportMediaProvider

- (void)sendMediaProviderThumbnailingBecameIdle
{
  v3 = +[PXImportSettings sharedInstance];
  v4 = [v3 lazyLoadAllAssets];

  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__PXImportMediaProvider_sendMediaProviderThumbnailingBecameIdle__block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

void __64__PXImportMediaProvider_sendMediaProviderThumbnailingBecameIdle__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"PXImportMediaProviderThumbnailingBecameIdleNotification" object:*(a1 + 32) userInfo:0];
}

- (void)ppt_sendMediaProviderDidProcessAsset:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PXImportMediaProvider_ppt_sendMediaProviderDidProcessAsset___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__PXImportMediaProvider_ppt_sendMediaProviderDidProcessAsset___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"PXImportMediaProviderDidProcessAssetNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (id)_placeholderForItem:(id)a3 size:(unint64_t)a4
{
  v6 = [(PXImportMediaProvider *)self _placeholderExtensionForItem:a3];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v8 = [(PXImportMediaProvider *)self extensionPlaceholderCachesByRequestSize];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [v9 objectForKey:v6];
  v11 = v10;
  if (a4 == 3)
  {
    v12 = 320.0;
    v13 = 320.0;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(PXImportMediaProvider *)self gridItemSize];
    v12 = v14;
    v13 = v15;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  [v11 size];
  if (v17 == v12 && v16 == v13)
  {
    v19 = v11;
    goto LABEL_16;
  }

LABEL_9:
  v19 = [(PXImportMediaProvider *)self _newPlaceholderImageForItemWithExtension:v6 size:v12, v13];

  if (v19)
  {
    if (!self->_extensionPlaceholderCachesByRequestSize)
    {
      v20 = [MEMORY[0x1E695DF90] dictionary];
      extensionPlaceholderCachesByRequestSize = self->_extensionPlaceholderCachesByRequestSize;
      self->_extensionPlaceholderCachesByRequestSize = v20;
    }

    v22 = [(PXImportMediaProvider *)self extensionPlaceholderCachesByRequestSize];
    v23 = [v22 objectForKeyedSubscript:v7];

    if (!v23)
    {
      v23 = objc_opt_new();
      v24 = [(PXImportMediaProvider *)self extensionPlaceholderCachesByRequestSize];
      [v24 setObject:v23 forKeyedSubscript:v7];
    }

    [v23 setObject:v19 forKey:v6];
    v9 = v23;
  }

LABEL_16:

  return v19;
}

- (CGSize)gridItemSize
{
  v2 = 160.0;
  v3 = 160.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_placeholderExtensionForItem:(id)a3
{
  v3 = a3;
  if ([v3 isJpegPlusRAW])
  {
    v4 = @"RAW+JPG";
  }

  else if ([v3 isRAW])
  {
    v4 = @"RAW";
  }

  else
  {
    v4 = [v3 fileExtension];
  }

  return v4;
}

- (id)_newPlaceholderImageForItemWithExtension:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v41[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v17 = 0;
  }

  else
  {
    v9 = v6;
    v10 = [(__CFString *)v9 isEqualToString:@"RAW+JPG"];
    if (v10)
    {

      v9 = @"RAW";
    }

    PLGenericImageNameForExtension();
    v11 = 0;
    v12 = 0;
    v13 = v12;
    if (v10)
    {

      v13 = @"RAW+JPG";
    }

    v14 = PLPhotoLibraryServicesFrameworkBundle();
    v39 = v11;
    if (height <= 160.0)
    {
      v15 = [MEMORY[0x1E69DCAB8] imageNamed:v11 inBundle:v14];
      v16 = 10.0;
    }

    else
    {
      v15 = 0;
      v16 = 28.0;
    }

    v18 = MEMORY[0x1E695F058];
    if (v13)
    {
      v19 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:v16];
      v20 = *MEMORY[0x1E69DB648];
      v41[0] = v19;
      v21 = *MEMORY[0x1E69DB650];
      v40[0] = v20;
      v40[1] = v21;
      v22 = [MEMORY[0x1E69DC888] systemMidGrayColor];
      v41[1] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];

      [(__CFString *)v13 sizeWithAttributes:v23];
      v38 = v24;
      v26 = v25;
    }

    else
    {
      v19 = 0;
      v23 = 0;
      v26 = *(MEMORY[0x1E695F058] + 24);
      v38 = *(MEMORY[0x1E695F058] + 16);
    }

    [v15 size];
    v28 = v27;
    v30 = v29;
    v31 = (height - (v26 + v29)) * 0.5;
    v42.width = width;
    v42.height = height;
    UIGraphicsBeginImageContextWithOptions(v42, 0, 0.0);
    v33 = *v18;
    v32 = v18[1];
    v34 = [MEMORY[0x1E69DC888] clearColor];
    [v34 set];

    v43.origin.x = v33;
    v43.origin.y = v32;
    v43.size.width = width;
    v43.size.height = height;
    UIRectFill(v43);
    if (v15)
    {
      v35 = [MEMORY[0x1E69DC888] systemMidGrayColor];
      [v35 setFill];

      v36 = [v15 imageWithRenderingMode:2];

      [v36 drawInRect:{round((width - v28) * 0.5), v31, v28, v30}];
    }

    if (v13)
    {
      [(__CFString *)v13 drawInRect:v23 withAttributes:round((width - v38) * 0.5), v30 + v31, v38, v26];
    }

    v17 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v17;
}

- (double)idleTimeOut
{
  v2 = [(PXImportMediaProvider *)self hasBeenIdle];
  result = 0.05;
  if (!v2)
  {
    return 5.0;
  }

  return result;
}

- (void)performIdleProcessingIfNecessary
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PXImportMediaProvider_performIdleProcessingIfNecessary__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __57__PXImportMediaProvider_performIdleProcessingIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  if (!v3 || v3 == v2[8])
  {
    [v2 setHasBeenIdle:1];
    v2 = *(a1 + 32);
  }

  result = [v2 sendMediaProviderThumbnailingBecameIdle];
  *(*(a1 + 32) + 64) = *(*(a1 + 32) + 56);
  return result;
}

- (id)cachedImageForModel:(id)a3 atSize:(unint64_t)a4
{
  v10 = 0;
  v6 = a3;
  v7 = [(PXImportMediaProvider *)self imageCache];
  v8 = [v7 imageForModel:v6 ofSize:a4 allowLowerResolutions:0 foundSize:&v10];

  return v8;
}

- (BOOL)thumbnailExistsForModel:(id)a3
{
  v8 = 0;
  v4 = a3;
  v5 = [(PXImportMediaProvider *)self imageCache];
  v6 = [v5 imageForModel:v4 ofSize:3 allowLowerResolutions:1 foundSize:&v8];

  return v6 != 0;
}

- (BOOL)thumbnailExistsForModel:(id)a3 atSize:(unint64_t)a4
{
  v10 = 0;
  v6 = a3;
  v7 = [(PXImportMediaProvider *)self imageCache];
  v8 = [v7 imageForModel:v6 ofSize:a4 allowLowerResolutions:0 foundSize:&v10];

  LOBYTE(a4) = v10 == a4;
  return a4;
}

- (int64_t)requestImageForImportItem:(id)a3 ofSize:(unint64_t)a4 priority:(unsigned __int8)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  if ([v10 isDeleted])
  {
    v12 = 1;
  }

  else
  {
    v13 = [v10 deleteSession];
    v12 = v13 != 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__PXImportMediaProvider_requestImageForImportItem_ofSize_priority_completion___block_invoke;
  v17[3] = &unk_1E772F828;
  v18 = v11;
  v14 = v11;
  v15 = [(PXImportMediaProvider *)self imageOfSize:a4 forModel:v10 localCacheOnly:v12 priority:v7 completion:v17];

  return v15;
}

void __78__PXImportMediaProvider_requestImageForImportItem_ofSize_priority_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__PXImportMediaProvider_requestImageForImportItem_ofSize_priority_completion___block_invoke_2;
  v10[3] = &unk_1E772F738;
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = a3;
  v14 = a4;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

- (int64_t)imageOfSize:(unint64_t)a3 forModel:(id)a4 localCacheOnly:(BOOL)a5 priority:(unsigned __int8)a6 completion:(id)a7
{
  v8 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a7;
  v13 = [(PXImportMediaProvider *)self nextRequestID];
  v14 = _importMediaProviderLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v19 = PXImportImageRequestSizeDebugDescription(a3);
    v20 = [v11 importAsset];
    v21 = [v20 fileName];
    *buf = 136316418;
    v29 = "[PXImportMediaProvider imageOfSize:forModel:localCacheOnly:priority:completion:]";
    v30 = 2112;
    v31 = v11;
    v32 = 2114;
    v33 = v19;
    v34 = 1024;
    v35 = v8;
    v36 = 2048;
    v37 = v13;
    v38 = 2112;
    v39 = v21;
    _os_log_debug_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEBUG, "%s: %@ size = %{public}@ fastpath = %d (entry). Request ID = %lu for %@", buf, 0x3Au);
  }

  v15 = [(PXImportMediaProvider *)self imageCache];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke;
  v22[3] = &unk_1E772F800;
  v27 = v8;
  v22[4] = self;
  v23 = v11;
  v24 = v12;
  v25 = a3;
  v26 = v13;
  v16 = v12;
  v17 = v11;
  [v15 imageForModel:v17 ofSize:a3 allowLowerResolutions:1 completion:v22];

  return v13;
}

void __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_2;
  v10[3] = &unk_1E772F7D8;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v14 = *(a1 + 56);
  v15 = a3;
  v17 = *(a1 + 72);
  v12 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v13 = v7;
  v16 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_2(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_performIdleProcessingIfNecessary object:0];
  v2 = *(a1 + 32);
  [v2 idleTimeOut];
  [v2 performSelector:sel_performIdleProcessingIfNecessary withObject:0 afterDelay:?];
  v3 = *(a1 + 40);
  if (v3 && *(a1 + 64) == *(a1 + 72) || (*(a1 + 88) & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 48) isDeleted] ^ 1;
    v3 = *(a1 + 40);
  }

  v5 = v3;
  v6 = [*(a1 + 48) importAsset];
  v7 = v5;
  if (!v5)
  {
    v7 = [*(a1 + 32) _placeholderForItem:v6 size:*(a1 + 64)];
    v8 = _importMediaProviderLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v33 = *(a1 + 48);
      *buf = 136315650;
      v54 = "[PXImportMediaProvider imageOfSize:forModel:localCacheOnly:priority:completion:]_block_invoke_2";
      v55 = 2112;
      v56 = v33;
      v57 = 2112;
      v58 = v7;
      _os_log_debug_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "%s:ImageRequest: using placeholder thumbnail....%@ (uiimge=%@)", buf, 0x20u);
    }
  }

  v9 = +[PXImportSettings sharedInstance];
  v10 = [v9 loadActualThumbnails];

  if ((v10 & 1) == 0)
  {
    [v6 loadMetadataAsync:0];
    v4 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_61;
  aBlock[3] = &unk_1E772F738;
  v50 = *(a1 + 56);
  v11 = v7;
  v12 = *(a1 + 72);
  v49 = v11;
  v51 = v12;
  v52 = v5 == 0;
  v13 = _Block_copy(aBlock);
  if (v4)
  {
    v14 = [[PXImportThumbnailLoadingRequest alloc] initWithImportItem:*(a1 + 48) requestID:*(a1 + 80) requestSize:*(a1 + 64) completionBlock:*(a1 + 56)];
    v15 = [*(a1 + 48) assetDataRequestForRequestSize:*(a1 + 64)];
    if (v15)
    {
      [(PXImportThumbnailLoadingRequest *)v14 setAssetDataRequest:v15];
      [*(a1 + 48) addThumbnailRequest:v14];
      v16 = [*(a1 + 48) thumbnailRequestsForRequestSize:*(a1 + 64)];
      v17 = _importMediaProviderLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 80);
        v40 = *(a1 + 48);
        v35 = [v16 count];
        v36 = *(a1 + 64);
        *buf = 136316162;
        v54 = "[PXImportMediaProvider imageOfSize:forModel:localCacheOnly:priority:completion:]_block_invoke_2";
        v55 = 2048;
        v56 = v34;
        v57 = 2112;
        v58 = v40;
        v59 = 2048;
        v60 = v35;
        v61 = 2048;
        v62 = v36;
        _os_log_debug_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEBUG, "%s: Reusing existing asset data request for request %lu for %@. Now at %lu thumbnail requests for size %lu.", buf, 0x34u);
      }

      v13[2](v13);
      goto LABEL_27;
    }

    [*(a1 + 48) addThumbnailRequest:v14];
    v18 = *(a1 + 64) - 1;
    if (v18 > 2)
    {
      v19 = 160;
    }

    else
    {
      v19 = qword_1A5381E98[v18];
    }

    v20 = +[PXImportSettings sharedInstance];
    v21 = [v20 loadRetinaThumbnails];

    if (v21)
    {
      v22 = [MEMORY[0x1E69DCEB0] px_mainScreen];
      [v22 scale];
      v24 = v23;

      v19 = (v24 * v19);
    }

    objc_initWeak(&location, *(a1 + 32));
    objc_initWeak(&from, *(a1 + 48));
    ++*(*(a1 + 32) + 56);
    v25 = _importMediaProviderLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v37 = *(a1 + 80);
      v38 = *(a1 + 48);
      v39 = *(*(a1 + 32) + 56);
      *buf = 136316162;
      v54 = "[PXImportMediaProvider imageOfSize:forModel:localCacheOnly:priority:completion:]_block_invoke";
      v55 = 2048;
      v56 = v37;
      v57 = 2048;
      v58 = v19;
      v59 = 2112;
      v60 = v38;
      v61 = 2048;
      v62 = v39;
      _os_log_debug_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEBUG, "%s:ImageRequest: Sending request (%lu) of size %lu for %@(inflight %lu)", buf, 0x34u);
    }

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [*(a1 + 48) setImageProcessingStartTime:?];
    v26 = *(a1 + 64) == 3;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_66;
    v41[3] = &unk_1E772F7B0;
    objc_copyWeak(&v44, &from);
    objc_copyWeak(v45, &location);
    v27 = *(a1 + 80);
    v45[1] = *(a1 + 64);
    v45[2] = v27;
    v28 = v6;
    v29 = *(a1 + 32);
    v42 = v28;
    v43 = v29;
    v30 = [v28 thumbnailForSize:v19 priority:v26 atEnd:v41];
    [(PXImportThumbnailLoadingRequest *)v14 setAssetDataRequest:v30];
    v31 = [*(a1 + 32) thumbnailRequestsByID];
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 80)];
    [v31 setObject:v14 forKeyedSubscript:v32];

    [*(a1 + 48) setAssetDataRequest:v30 forRequestSize:*(a1 + 64)];
    objc_destroyWeak(v45);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  if (v13)
  {
    v13[2](v13);
  }

LABEL_27:
}

uint64_t __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_61(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      return (*(result + 16))(result, v3, *(a1 + 48), *(a1 + 56));
    }
  }

  return result;
}

void __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_66(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E69DCAB8] imageWithCGImage:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = objc_loadWeakRetained((a1 + 56));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_2_67;
  block[3] = &unk_1E772F788;
  block[4] = v11;
  v17 = WeakRetained;
  v23 = *(a1 + 64);
  v18 = v7;
  v19 = v8;
  v20 = *(a1 + 32);
  v21 = v9;
  v22 = *(a1 + 40);
  v12 = v9;
  v13 = v8;
  v14 = v7;
  v15 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_2_67(uint64_t a1)
{
  v94 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = [v2 thumbnailRequestsForRequestSize:*(a1 + 88)];
      v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v75 objects:v93 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v76;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v76 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v75 + 1) + 8 * i);
            v11 = [v10 assetDataRequest];
            v12 = *(a1 + 48);

            if (v11 == v12)
            {
              [v4 addObject:v10];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v75 objects:v93 count:16];
        }

        while (v7);
      }

      v57 = v5;
      v59 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = v4;
      v13 = [obj countByEnumeratingWithState:&v71 objects:v92 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v72;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v72 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v71 + 1) + 8 * j);
            v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "requestID")}];
            [v59 addObject:v19];

            v20 = [*(a1 + 32) thumbnailRequestsByID];
            v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "requestID")}];
            v22 = [v20 objectForKeyedSubscript:v21];
            v23 = v22 != 0;

            v15 |= v23;
            v24 = [*(a1 + 32) thumbnailRequestsByID];
            v25 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v18, "requestID")}];
            [v24 setObject:0 forKeyedSubscript:v25];

            [*(a1 + 40) removeThumbnailRequest:v18];
          }

          v14 = [obj countByEnumeratingWithState:&v71 objects:v92 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      [*(a1 + 40) removeAssetDataRequestForRequestSize:*(a1 + 88)];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [*(a1 + 40) setImageProcessingEndTime:?];
      --*(*(a1 + 32) + 56);
      v26 = _importMediaProviderLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v47 = *(a1 + 96);
        v48 = *(a1 + 40);
        v49 = *(*(a1 + 32) + 56);
        *buf = 136316162;
        v83 = "[PXImportMediaProvider imageOfSize:forModel:localCacheOnly:priority:completion:]_block_invoke_2";
        v84 = 2048;
        v85 = v47;
        v86 = 2112;
        v87 = v48;
        v88 = 2048;
        v89 = v49;
        v90 = 2112;
        v91 = v59;
        _os_log_debug_impl(&dword_1A3C1C000, v26, OS_LOG_TYPE_DEBUG, "%s:ImageRequest: Completed request %lu for %@(inflight %lu). Finished thumbnail request IDs: %@", buf, 0x34u);
      }

      if (*(a1 + 56))
      {
        v27 = _importMediaProviderLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v50 = [*(a1 + 64) fileName];
          v51 = *(a1 + 56);
          *buf = 138412546;
          v83 = v50;
          v84 = 2112;
          v85 = v51;
          _os_log_error_impl(&dword_1A3C1C000, v27, OS_LOG_TYPE_ERROR, "ImageRequest error for import asset (%@): %@", buf, 0x16u);
        }

        [*(a1 + 40) setThumbnailError:*(a1 + 56)];
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v28 = obj;
        v29 = [v28 countByEnumeratingWithState:&v67 objects:v81 count:16];
        v30 = v57;
        if (v29)
        {
          v31 = v29;
          v32 = *v68;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v68 != v32)
              {
                objc_enumerationMutation(v28);
              }

              v34 = [*(*(&v67 + 1) + 8 * k) completionBlock];
              v34[2](v34, 0, *(a1 + 88), 0);
            }

            v31 = [v28 countByEnumeratingWithState:&v67 objects:v81 count:16];
          }

          while (v31);
        }
      }

      else
      {
        if (*(a1 + 72))
        {
          if ((v15 & 1) == 0)
          {
            v35 = _importMediaProviderLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v54 = *(a1 + 96);
              v55 = *(a1 + 40);
              v56 = *(*(a1 + 32) + 56);
              *buf = 136315906;
              v83 = "[PXImportMediaProvider imageOfSize:forModel:localCacheOnly:priority:completion:]_block_invoke";
              v84 = 2048;
              v85 = v54;
              v86 = 2112;
              v87 = v55;
              v88 = 2048;
              v89 = v56;
              _os_log_debug_impl(&dword_1A3C1C000, v35, OS_LOG_TYPE_DEBUG, "%s:ImageRequest: Received image for CANCELLED request %lu for %@(inflight %lu)", buf, 0x2Au);
            }
          }

          v36 = *(a1 + 88);
          if (v36)
          {
            v30 = v57;
            if (v36 == 3)
            {
              [*(a1 + 72) size];
              [*(a1 + 40) setLargeThumbnailSize:?];
            }
          }

          else
          {
            [*(a1 + 72) size];
            [*(a1 + 40) setThumbnailSize:?];
            v30 = v57;
          }

          v40 = PXImportIdentifierGenerator(*(a1 + 40), *(a1 + 88));
          v41 = [*(a1 + 32) imageCache];
          v42 = *(a1 + 72);
          v60[0] = MEMORY[0x1E69E9820];
          v60[1] = 3221225472;
          v60[2] = __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_70;
          v60[3] = &unk_1E772FD10;
          v61 = *(a1 + 40);
          v62 = v40;
          v63 = obj;
          v43 = *(a1 + 72);
          v44 = *(a1 + 88);
          v45 = *(a1 + 32);
          v64 = v43;
          v65 = v45;
          v66 = v44;
          v28 = v40;
          [v41 setImage:v42 forIdentifier:v28 completion:v60];

          v39 = v61;
        }

        else
        {
          v37 = _importMediaProviderLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v52 = PXImportImageRequestSizeDebugDescription(*(a1 + 88));
            v53 = [*(a1 + 64) fileName];
            *buf = 138543618;
            v83 = v52;
            v84 = 2112;
            v85 = v53;
            _os_log_error_impl(&dword_1A3C1C000, v37, OS_LOG_TYPE_ERROR, "Both image and error were nil while fetching %{public}@-sized image for asset: %@", buf, 0x16u);
          }

          v30 = v57;
          if (*(a1 + 88))
          {
            goto LABEL_50;
          }

          v38 = MEMORY[0x1E696ABC0];
          v79 = *MEMORY[0x1E696A578];
          v80 = @"Null image response";
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
          v39 = [v38 errorWithDomain:@"com.apple.mobileslideshow.import" code:0 userInfo:v28];
          [*(a1 + 40) setThumbnailError:v39];
        }
      }

LABEL_50:
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_performIdleProcessingIfNecessary object:0];
      v46 = *(a1 + 32);
      [*(a1 + 80) idleTimeOut];
      [v46 performSelector:sel_performIdleProcessingIfNecessary withObject:0 afterDelay:?];
    }
  }
}

void __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_70(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_2_71;
  v9[3] = &unk_1E772FD10;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v8 = *(a1 + 72);
  v12 = *(a1 + 64);
  v13 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_2_71(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = _importMediaProviderLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    *buf = 138412290;
    v31 = v19;
    _os_log_debug_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEBUG, "ImageRequest messaging model with changes: %@", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_72;
  v24[3] = &unk_1E772F760;
  v25 = v3;
  v26 = *(a1 + 40);
  [v25 performChanges:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 48);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v20 + 1) + 8 * v8) completionBlock];
        v9[2](v9, *(a1 + 56), *(a1 + 72), 0);

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v6);
  }

  v10 = *(a1 + 64);
  v27[0] = @"duration";
  v11 = MEMORY[0x1E696AD98];
  [*(a1 + 32) imageProcessingEndTime];
  v13 = v12;
  [*(a1 + 32) imageProcessingStartTime];
  v15 = [v11 numberWithDouble:v13 - v14];
  v28[0] = v15;
  v27[1] = @"filename";
  v16 = [*(a1 + 32) fileName];
  v28[1] = v16;
  v27[2] = @"isLastDisplayItem";
  if (*(*(a1 + 64) + 56))
  {
    v17 = MEMORY[0x1E695E110];
  }

  else
  {
    v17 = MEMORY[0x1E695E118];
  }

  v28[2] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:{3, v20}];
  [v10 ppt_sendMediaProviderDidProcessAsset:v18];
}

void __81__PXImportMediaProvider_imageOfSize_forModel_localCacheOnly_priority_completion___block_invoke_72(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 importAsset];
  [v5 setDuplicate:{objc_msgSend(v4, "isDuplicate")}];

  [v5 addImageRepresentation:*(a1 + 40)];
}

- (PXImportImageCache)imageCache
{
  imageCache = self->_imageCache;
  if (!imageCache)
  {
    v4 = +[PXImportImageCache sharedInstance];
    v5 = self->_imageCache;
    self->_imageCache = v4;

    [(PXImportImageCache *)self->_imageCache configureWithFormat:[(PXImportMediaProvider *)self thumbnailImageFormat]];
    imageCache = self->_imageCache;
  }

  return imageCache;
}

- (void)cancelImageRequest:(int64_t)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(PXImportMediaProvider *)self thumbnailRequestsByID];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = _importMediaProviderLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v7 importItem];
      *buf = 136315650;
      v27 = "[PXImportMediaProvider cancelImageRequest:]";
      v28 = 2048;
      v29 = a3;
      v30 = 2112;
      v31 = v18;
      _os_log_debug_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEBUG, "%s: Cancel request %lu for %@", buf, 0x20u);
    }

    v9 = [v7 importItem];
    v10 = [v7 requestSize];
    [v9 removeThumbnailRequest:v7];
    v11 = [v7 assetDataRequest];
    v12 = _importMediaProviderLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v25 = [v7 importItem];
      v19 = [v25 importAsset];
      v20 = [v19 fileName];
      *buf = 138412546;
      v27 = v20;
      v28 = 2048;
      v29 = v11;
      _os_log_debug_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEBUG, "*THUMBNAIL* CANCELING: %@ <%p>", buf, 0x16u);
    }

    v13 = [v9 thumbnailRequestsForRequestSize:{objc_msgSend(v7, "requestSize")}];
    if (![v13 count] && (objc_msgSend(v11, "isCanceled") & 1) == 0)
    {
      v14 = _importMediaProviderLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v24 = [v7 importItem];
        *buf = 136315650;
        v27 = "[PXImportMediaProvider cancelImageRequest:]";
        v28 = 2048;
        v29 = a3;
        v30 = 2112;
        v31 = v24;
        _os_log_debug_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_DEBUG, "%s: 0 thumbnail requests remaining after %lu was cancelled. Actually cancelling asset data request for %@", buf, 0x20u);
      }

      [v9 removeAssetDataRequestForRequestSize:v10];
      [v11 cancel];
    }

    v15 = [(PXImportMediaProvider *)self thumbnailRequestsByID];
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v15 setObject:0 forKeyedSubscript:v16];

    v17 = _importMediaProviderLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = [(PXImportMediaProvider *)self thumbnailRequestsByID];
      v22 = [v21 count];
      imageRequestsInflight = self->_imageRequestsInflight;
      *buf = 134218240;
      v27 = v22;
      v28 = 2048;
      v29 = imageRequestsInflight;
      _os_log_debug_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEBUG, "Number of thumbnail requests remaining: %lu. Num in-flight with backend: %ld", buf, 0x16u);
    }
  }
}

- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v5 = a5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__PXImportMediaProvider_requestAnimatedImageForAsset_options_resultHandler___block_invoke;
  block[3] = &unk_1E774C250;
  v9 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  return 0;
}

- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  v7 = a7;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PXImportMediaProvider_requestLivePhotoForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  block[3] = &unk_1E774C250;
  v11 = v7;
  v8 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  return 0;
}

- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v30[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(PXImportMediaProvider *)self nextRequestID];
  v29 = *MEMORY[0x1E6978E70];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v30[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];

  v13 = v8;
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = objc_opt_class();
    v25 = NSStringFromClass(v26);
    v27 = [v13 px_descriptionForAssertionMessage];
    [v23 handleFailureInMethod:a2 object:self file:@"PXImportMediaProvider.m" lineNumber:148 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v25, v27}];
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [v23 handleFailureInMethod:a2 object:self file:@"PXImportMediaProvider.m" lineNumber:148 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v25}];
  }

LABEL_3:
  v14 = [v13 importAsset];
  v15 = [v13 importAsset];
  v16 = [v15 securityScopedURL];

  if ([v14 isMovie])
  {
    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E69880B0]) initWithURL:v16];
      v18 = v12;
      v19 = v9;
      v20 = v17;
      px_dispatch_on_main_queue();
    }
  }

  v21 = v12;
  v22 = v9;
  px_dispatch_on_main_queue();
}

- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v31[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(PXImportMediaProvider *)self nextRequestID];
  v11 = v8;
  if (!v11)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    [v21 handleFailureInMethod:a2 object:self file:@"PXImportMediaProvider.m" lineNumber:135 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v23}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    v23 = NSStringFromClass(v24);
    v25 = [v11 px_descriptionForAssertionMessage];
    [v21 handleFailureInMethod:a2 object:self file:@"PXImportMediaProvider.m" lineNumber:135 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v23, v25}];

    goto LABEL_6;
  }

LABEL_3:
  v30[0] = *MEMORY[0x1E6978E70];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v31[0] = v12;
  v30[1] = *MEMORY[0x1E6978E28];
  v13 = [v11 uniformTypeIdentifier];
  v31[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v15 = [v11 importAsset];
  v16 = [v15 securityScopedURL];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PXImportMediaProvider_requestImageURLForAsset_options_resultHandler___block_invoke;
  block[3] = &unk_1E774A0E0;
  v28 = v14;
  v29 = v9;
  v27 = v16;
  v17 = v14;
  v18 = v16;
  v19 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  return v10;
}

- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v39[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(PXImportMediaProvider *)self nextRequestID];
  v11 = v8;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = objc_opt_class();
    v29 = NSStringFromClass(v30);
    v31 = [v11 px_descriptionForAssertionMessage];
    [v27 handleFailureInMethod:a2 object:self file:@"PXImportMediaProvider.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v29, v31}];
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    [v27 handleFailureInMethod:a2 object:self file:@"PXImportMediaProvider.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v29}];
  }

LABEL_3:
  v12 = [v11 importAsset];
  v13 = [v12 metadata];
  v14 = [v13 orientation];

  v38 = *MEMORY[0x1E6978E70];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v39[0] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];

  v17 = [v11 importAsset];
  v18 = [v17 securityScopedURL];

  if (v18)
  {
    v19 = [v11 uniformTypeIdentifier];
    v20 = [v16 px_dictionaryBySettingObject:v19 forKey:*MEMORY[0x1E6978E28]];

    v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v18];
    v16 = v20;
  }

  else
  {
    v21 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PXImportMediaProvider_requestImageDataForAsset_options_resultHandler___block_invoke;
  block[3] = &unk_1E7743030;
  v36 = v9;
  v37 = v14;
  v33 = v21;
  v34 = v11;
  v35 = v16;
  v22 = v16;
  v23 = v11;
  v24 = v21;
  v25 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  return v10;
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v15 = v12;
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = objc_opt_class();
    v22 = NSStringFromClass(v23);
    v24 = [v15 px_descriptionForAssertionMessage];
    [v20 handleFailureInMethod:a2 object:self file:@"PXImportMediaProvider.m" lineNumber:99 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v22, v24}];
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:self file:@"PXImportMediaProvider.m" lineNumber:99 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v22}];
  }

LABEL_3:
  if (height <= 192.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = 3;
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __93__PXImportMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v25[3] = &unk_1E772F710;
  v26 = v14;
  v27 = &v28;
  v17 = v14;
  v18 = [(PXImportMediaProvider *)self requestImageForImportItem:v15 ofSize:v16 completion:v25];
  v29[3] = v18;
  _Block_object_dispose(&v28, 8);

  return v18;
}

void __93__PXImportMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  px_dispatch_on_main_queue();
}

void __93__PXImportMediaProvider_requestCGImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E6978E70];
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 48) + 8) + 24)];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  if (*(a1 + 56) == 1)
  {
    v4 = [v3 px_dictionaryBySettingObject:MEMORY[0x1E695E118] forKey:*off_1E77220B0];

    v3 = v4;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) CGImage], 0, v3);
}

- (int64_t)requestImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__PXImportMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke;
  v17[3] = &unk_1E7743A58;
  v18 = v13;
  v14 = v13;
  v15 = [(PXImportMediaProvider *)self requestCGImageForAsset:a3 targetSize:a5 contentMode:a6 options:v17 resultHandler:width, height];

  return v15;
}

void __91__PXImportMediaProvider_requestImageForAsset_targetSize_contentMode_options_resultHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if (a2)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a2 imageOrientation:a3];
  }

  else
  {
    v7 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (PXImportMediaProvider)initWithImageFormat:(unsigned __int16)a3
{
  v9.receiver = self;
  v9.super_class = PXImportMediaProvider;
  v4 = [(PXImportMediaProvider *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_thumbnailImageFormat = a3;
    v6 = [MEMORY[0x1E695DF90] dictionary];
    thumbnailRequestsByID = v5->_thumbnailRequestsByID;
    v5->_thumbnailRequestsByID = v6;

    atomic_store(1u, &v5->_nextRequestID);
    v5->_lastRequestsInflight = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

@end