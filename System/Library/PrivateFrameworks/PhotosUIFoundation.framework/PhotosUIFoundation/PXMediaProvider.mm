@interface PXMediaProvider
+ (OS_dispatch_queue)preheatQueue;
- (CGSize)masterThumbnailSize;
- (NSArray)availableThumbnailSizes;
- (id)thumbnailDataForAsset:(id)a3 targetSize:(CGSize)a4 onlyFromCache:(BOOL)a5 outDataSpec:(PXMediaProviderThumbnailDataSpec *)a6;
- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7;
- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (int64_t)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5;
- (void)cancelImageRequest:(int64_t)a3;
@end

@implementation PXMediaProvider

+ (OS_dispatch_queue)preheatQueue
{
  if (preheatQueue_onceToken != -1)
  {
    dispatch_once(&preheatQueue_onceToken, &__block_literal_global_17855);
  }

  v3 = preheatQueue_sharedPreheatQueue;

  return v3;
}

void __43__PXMediaProvider_Preheating__preheatQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);
  attr = dispatch_queue_attr_make_initially_inactive(v1);

  v2 = dispatch_queue_create("com.apple.photos.mediaProvider.shared-preheat-queue", attr);
  v3 = preheatQueue_sharedPreheatQueue;
  preheatQueue_sharedPreheatQueue = v2;

  v4 = +[PXPreloadScheduler sharedScheduler];
  [v4 scheduleMainQueueTask:&__block_literal_global_3];
}

- (NSArray)availableThumbnailSizes
{
  v3 = self->_availableThumbnailSizes;
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__PXMediaProvider_availableThumbnailSizes__block_invoke;
    v8[3] = &unk_1E7BB7A60;
    v9 = v4;
    v5 = v4;
    [(PXMediaProvider *)self enumerateAvailableThumbnailDataFormats:v8];
    v3 = [v5 copy];
    availableThumbnailSizes = self->_availableThumbnailSizes;
    self->_availableThumbnailSizes = v3;
  }

  return v3;
}

void __42__PXMediaProvider_availableThumbnailSizes__block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  LOWORD(a3) = *(a2 + 16);
  v4 = *&a3;
  LOWORD(a4) = *(a2 + 18);
  v5 = *&a4;
  v6 = round(v4 * 0.75);
  v7 = round(v5 * 0.75);
  if (!*(a2 + 20))
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E696B098] valueWithCGSize:{v4, v5, v7, v6}];
  [v8 addObject:v9];
}

- (void)cancelImageRequest:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:99 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider cancelImageRequest:]", v7}];

  abort();
}

- (CGSize)masterThumbnailSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)thumbnailDataForAsset:(id)a3 targetSize:(CGSize)a4 onlyFromCache:(BOOL)a5 outDataSpec:(PXMediaProviderThumbnailDataSpec *)a6
{
  v8 = a3;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:65 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider thumbnailDataForAsset:targetSize:onlyFromCache:outDataSpec:]", v11}];

  abort();
}

- (int64_t)requestStreamForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:60 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider requestStreamForVideo:options:resultHandler:]", v14}];

  abort();
}

- (int64_t)requestURLForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:55 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider requestURLForVideo:options:resultHandler:]", v14}];

  abort();
}

- (int64_t)requestAnimatedImageForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:50 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider requestAnimatedImageForAsset:options:resultHandler:]", v14}];

  abort();
}

- (int64_t)requestLivePhotoForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v14 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:45 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider requestLivePhotoForAsset:targetSize:contentMode:options:resultHandler:]", v16}];

  abort();
}

- (int64_t)requestPlayerItemForVideo:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:40 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider requestPlayerItemForVideo:options:resultHandler:]", v14}];

  abort();
}

- (int64_t)requestImageURLForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:35 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider requestImageURLForAsset:options:resultHandler:]", v14}];

  abort();
}

- (int64_t)requestImageDataForAsset:(id)a3 options:(id)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [v12 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:30 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider requestImageDataForAsset:options:resultHandler:]", v14}];

  abort();
}

- (int64_t)requestCGImageForAsset:(id)a3 targetSize:(CGSize)a4 contentMode:(int64_t)a5 options:(id)a6 resultHandler:(id)a7
{
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v14 handleFailureInMethod:a2 object:self file:@"PXMediaProvider.m" lineNumber:25 description:{@"Method %s is a responsibility of subclass %@", "-[PXMediaProvider requestCGImageForAsset:targetSize:contentMode:options:resultHandler:]", v16}];

  abort();
}

@end