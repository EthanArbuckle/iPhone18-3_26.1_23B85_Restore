@interface PLFigPreheatItem
- (BOOL)addImageHandler:(id)a3;
- (PLFigPreheatItem)initWithImagePath:(id)a3 format:(unsigned __int16)a4 imageType:(int64_t)a5 optimalSourcePixelSize:(CGSize)a6 options:(unsigned int)a7;
- (id)cachedImage:(BOOL *)a3;
- (id)cachedImageIfAvailable:(BOOL *)a3;
- (id)decodeSessionOptions;
- (id)initialDecodeSessionOptions;
- (id)preheatData;
- (void)_cacheImage;
- (void)_leaveWaitGroupIfNeeded;
- (void)_loadPreheatDataWithHandler:(id)a3;
- (void)cancelPreheatRequestWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)startPreheatRequestWithCompletionHandler:(id)a3;
@end

@implementation PLFigPreheatItem

- (void)cancelPreheatRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(PLFigPreheatItem *)self _cancel];
  [(PLFigPreheatItem *)self _setHasCachedImage:0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PLFigPreheatItem_cancelPreheatRequestWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v7);
  pl_dispatch_async();
}

uint64_t __62__PLFigPreheatItem_cancelPreheatRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[18])
  {
    if (v2[19])
    {
      CMPhotoDecompressionContainerCancelAsyncRequest();
      v2 = *(a1 + 32);
    }

    v2[18] = 0;
    v2 = *(a1 + 32);
  }

  v3 = v2[16];
  v2[16] = 0;

  *(*(a1 + 32) + 136) = 1;
  [*(a1 + 32) _leaveWaitGroupIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)startPreheatRequestWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(PLFigPreheatItem *)self _uncancel];
  dispatch_group_enter(self->_requestGroup);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v7);
  pl_dispatch_async();
}

void __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 128) || (*(v2 + 176) & 1) != 0 || *(v2 + 144))
  {
    dispatch_group_leave(*(v2 + 160));
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    *(v2 + 136) = 0;
    *(*(a1 + 32) + 176) = 1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_2;
    aBlock[3] = &unk_1E7574778;
    v5 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v12 = v5;
    v6 = _Block_copy(aBlock);
    v7 = *(a1 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_3;
    v9[3] = &unk_1E75747C8;
    v9[4] = v7;
    v10 = v6;
    v8 = v6;
    [v7 _loadPreheatDataWithHandler:v9];
  }
}

void __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 120));
  *(*(a1 + 32) + 176) = 0;
  [*(a1 + 32) _leaveWaitGroupIfNeeded];
  dispatch_group_leave(*(*(a1 + 32) + 160));
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6, a3);
  }
}

void __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    PFSharedFigDecodeSession();
    Container = CMPhotoDecompressionSessionCreateContainer();
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_4;
    v14 = &unk_1E75747A0;
    v5 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = v5;
    v6 = _Block_copy(&v11);
    if (Container)
    {
      v7 = PLImageManagerGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(*(a1 + 32) + 192);
        *buf = 134218242;
        v18 = Container;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unable to open Fig container, %ld, %@", buf, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) decodeSessionOptions];
      if (!CMPhotoDecompressionContainerDecodeImageForIndexAsync())
      {
LABEL_12:

        goto LABEL_13;
      }

      CFRelease(*(*(a1 + 32) + 152));
      *(*(a1 + 32) + 152) = 0;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 0, [*(a1 + 32) isCancelled]);
    goto LABEL_12;
  }

  v9 = PLImageManagerGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(*(a1 + 32) + 192);
    *buf = 138412290;
    v18 = v10;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unable to load image data, %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), 0, [*(a1 + 32) isCancelled]);
LABEL_13:
}

void __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4 != -17105 && a4 != 0)
  {
    v7 = PLImageManagerGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 192);
      *buf = 136315650;
      v11 = "[PLFigPreheatItem startPreheatRequestWithCompletionHandler:]_block_invoke_4";
      v12 = 2048;
      v13 = a4;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "CMPhoto decompression session create in %s returned %ld from %@", buf, 0x20u);
    }
  }

  v9 = *(a1 + 40);
  pl_dispatch_sync();
}

void __61__PLFigPreheatItem_startPreheatRequestWithCompletionHandler___block_invoke_47(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 144))
  {
    *(v2 + 144) = 0;
    if (*(a1 + 48) && ([*(a1 + 32) isCancelled] & 1) == 0)
    {
      v4 = DCIM_newPLImageWithCGImage();
      v5 = *(a1 + 32);
      v6 = *(v5 + 128);
      *(v5 + 128) = v4;

      v7 = *(*(a1 + 32) + 128);
      [*(a1 + 32) _setHasCachedImage:1];
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = v3;
  (*(*(a1 + 40) + 16))();
  CFRelease(*(*(a1 + 32) + 152));
  *(*(a1 + 32) + 152) = 0;
}

- (void)_leaveWaitGroupIfNeeded
{
  obj = self;
  objc_sync_enter(obj);
  waitGroup = obj->_waitGroup;
  if (waitGroup)
  {
    dispatch_group_leave(waitGroup);
    v3 = obj->_waitGroup;
    obj->_waitGroup = 0;
  }

  objc_sync_exit(obj);
}

- (id)preheatData
{
  if (self->_imagePath)
  {
    v3 = objc_alloc(MEMORY[0x1E695DEF0]);
    imagePath = self->_imagePath;
    v8 = 0;
    v5 = [v3 initWithContentsOfFile:imagePath options:2 error:&v8];
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v5;
}

- (void)_loadPreheatDataWithHandler:(id)a3
{
  v4 = a3;
  if ([(PLFigPreheatItem *)self isCancelled])
  {
    v4[2](v4, 0);
  }

  else
  {
    pl_dispatch_once();
    v5 = _loadPreheatDataWithHandler__concurrentQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__PLFigPreheatItem__loadPreheatDataWithHandler___block_invoke_2;
    v6[3] = &unk_1E7577C08;
    v6[4] = self;
    v7 = v4;
    [v5 dispatchAsync:v6];
  }
}

void __48__PLFigPreheatItem__loadPreheatDataWithHandler___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 32) preheatData];
  }

  v4 = *(a1 + 40);
  v3 = v2;
  pl_dispatch_async();
}

void __48__PLFigPreheatItem__loadPreheatDataWithHandler___block_invoke()
{
  v2 = dispatch_queue_create("com.apple.PLFigPreheatItem.loadPreheatData", MEMORY[0x1E69E96A8]);
  v0 = [[PLConcurrentQueue alloc] initWithTargetQueue:v2 width:2];
  v1 = _loadPreheatDataWithHandler__concurrentQueue;
  _loadPreheatDataWithHandler__concurrentQueue = v0;
}

- (void)_cacheImage
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_cachedImage)
  {
    v3 = objc_alloc(MEMORY[0x1E695DEF0]);
    imagePath = self->_imagePath;
    v11 = 0;
    v5 = [v3 initWithContentsOfFile:imagePath options:2 error:&v11];
    v6 = v11;
    if ([v5 length])
    {
      v7 = [(PLFigPreheatItem *)self decodeSessionOptions];
      CGImageFromImageData = PFFigCreateCGImageFromImageData();

      if (CGImageFromImageData)
      {
        v9 = PLBackendGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = self->_imagePath;
          *buf = 136315650;
          v13 = "[PLFigPreheatItem _cacheImage]";
          v14 = 2048;
          v15 = CGImageFromImageData;
          v16 = 2048;
          v17 = v10;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "PFFigCreateCGImageFromImageData %s returned %ld from %lu", buf, 0x20u);
        }

        self->_cachedImageCancelled = 0;
      }

      else
      {
        self->_cachedImageCancelled = 0;
      }

      [(PLFigPreheatItem *)self _setHasCachedImage:1];
    }
  }
}

- (id)decodeSessionOptions
{
  [(PLPreheatItem *)self optimalSourcePixelSize];
  if (v4 == 0.0 && v3 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = MEMORY[0x1E696AD98];
    [(PLPreheatItem *)self optimalSourcePixelSize];
    v8 = v7;
    [(PLPreheatItem *)self optimalSourcePixelSize];
    v10 = v9;
    [(PLPreheatItem *)self optimalSourcePixelSize];
    if (v8 <= v10)
    {
      v11 = v12;
    }

    v13 = [v6 numberWithInt:v11];
    [v5 setObject:v13 forKey:*MEMORY[0x1E6991AE0]];
  }

  return v5;
}

- (id)initialDecodeSessionOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  if ((self->_loadingOptions & 2) != 0)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6991AD8]];
  }

  return v4;
}

- (BOOL)addImageHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLFigPreheatItem.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = v5;
  pl_dispatch_async();

  return 1;
}

void __36__PLFigPreheatItem_addImageHandler___block_invoke(uint64_t a1)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__PLFigPreheatItem_addImageHandler___block_invoke_2;
  v10[3] = &unk_1E7577C08;
  v2 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v2;
  v3 = _Block_copy(v10);
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 128))
  {
    (*(v3 + 2))(v3);
  }

  else
  {
    v6 = *(v5 + 168);
    if (!v6)
    {
      v7 = dispatch_group_create();
      v8 = *(a1 + 32);
      v9 = *(v8 + 168);
      *(v8 + 168) = v7;

      dispatch_group_enter(*(*(a1 + 32) + 168));
      v5 = *(a1 + 32);
      v6 = *(v5 + 168);
    }

    dispatch_group_notify(v6, *(v5 + 120), v4);
  }
}

void __36__PLFigPreheatItem_addImageHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  v4 = *(a1 + 40);
  v3 = v2;
  pl_dispatch_async();
}

- (id)cachedImageIfAvailable:(BOOL *)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__94902;
  v15 = __Block_byref_object_dispose__94903;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(PLFigPreheatItem *)self _hasCachedImage]|| !dispatch_group_wait(self->_requestGroup, 0))
  {
    pl_dispatch_sync();
  }

  if (a3)
  {
    *a3 = *(v8 + 24);
  }

  v5 = v12[5];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);

  return v5;
}

- (id)cachedImage:(BOOL *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__94902;
  v19 = __Block_byref_object_dispose__94903;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  pl_dispatch_sync();
  if (*(v8 + 24) == 1)
  {
    dispatch_group_wait(self->_requestGroup, 0xFFFFFFFFFFFFFFFFLL);
    pl_dispatch_sync();
  }

  if (a3)
  {
    *a3 = *(v12 + 24);
  }

  v5 = v16[5];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v5;
}

void __32__PLFigPreheatItem_cachedImage___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 128) && (*(v2 + 136) & 1) == 0)
  {
    if ((*(v2 + 176) & 1) != 0 || *(v2 + 144))
    {
      *(*(a1[5] + 8) + 24) = 1;
    }

    else
    {
      [v2 _cacheImage];
    }
  }

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 128));
    *(*(a1[7] + 8) + 24) = *(a1[4] + 136);
  }
}

void __32__PLFigPreheatItem_cachedImage___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cacheImage];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 128));
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 136);
}

- (void)dealloc
{
  waitGroup = self->_waitGroup;
  if (waitGroup)
  {
    dispatch_group_leave(waitGroup);
  }

  v4.receiver = self;
  v4.super_class = PLFigPreheatItem;
  [(PLFigPreheatItem *)&v4 dealloc];
}

- (PLFigPreheatItem)initWithImagePath:(id)a3 format:(unsigned __int16)a4 imageType:(int64_t)a5 optimalSourcePixelSize:(CGSize)a6 options:(unsigned int)a7
{
  height = a6.height;
  width = a6.width;
  v13 = a3;
  v22.receiver = self;
  v22.super_class = PLFigPreheatItem;
  v14 = [(PLFigPreheatItem *)&v22 init];
  if (v14)
  {
    v15 = [v13 copy];
    imagePath = v14->_imagePath;
    v14->_imagePath = v15;

    v14->super._format = a4;
    v14->super._optimalSourcePixelSize.width = width;
    v14->super._optimalSourcePixelSize.height = height;
    v14->_loadingOptions = a7;
    v14->super._imageType = a5;
    v17 = dispatch_queue_create("PLFigPreheatItem", 0);
    queue = v14->_queue;
    v14->_queue = v17;

    v19 = dispatch_group_create();
    requestGroup = v14->_requestGroup;
    v14->_requestGroup = v19;

    v14->_requestID = 0;
  }

  return v14;
}

@end