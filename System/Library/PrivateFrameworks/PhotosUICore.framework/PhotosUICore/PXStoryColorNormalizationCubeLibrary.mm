@interface PXStoryColorNormalizationCubeLibrary
+ (PXStoryColorNormalizationCubeLibrary)sharedInstance;
- (BOOL)_isRequestActive:(int64_t)a3;
- (PXStoryColorNormalizationCubeLibrary)init;
- (PXStoryColorNormalizationCubeLibrary)initWithColorSpace:(CGColorSpace *)a3;
- (int64_t)requestColorCubeForAssetNormalization:(id)a3 completionHandler:(id)a4;
- (void)_cacheColorCube:(id)a3 forAssetNormalization:(id)a4;
- (void)_queue_performRequestWithID:(int64_t)a3 forAssetNormalization:(id)a4 completionHandler:(id)a5;
- (void)cancelRequest:(int64_t)a3;
- (void)dealloc;
@end

@implementation PXStoryColorNormalizationCubeLibrary

- (void)_queue_performRequestWithID:(int64_t)a3 forAssetNormalization:(id)a4 completionHandler:(id)a5
{
  v15 = a4;
  v9 = a5;
  if ([(PXStoryColorNormalizationCubeLibrary *)self _isRequestActive:a3])
  {
    v10 = [PXStoryColorNormalizationAdjustment colorCubeForNormalization:v15 targetColorSpace:self->_colorspace];
    if (!v10)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXStoryColorNormalizationCubeLibrary.m" lineNumber:150 description:{@"Unable to create colorCubeData for assetNormalization:%@", v15}];
    }

    v11 = [[off_1E77216F8 alloc] initWithData:v10 edgeSize:self->_cubeEdgeSize pixelFormat:70];
    if (!v11)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryColorNormalizationCubeLibrary _queue_performRequestWithID:forAssetNormalization:completionHandler:]"];
      [v13 handleFailureInFunction:v14 file:@"PXStoryColorNormalizationCubeLibrary.m" lineNumber:153 description:{@"Unable to create cube for %@ data:%@", v15, v10}];
    }

    [(PXStoryColorNormalizationCubeLibrary *)self _cacheColorCube:v11 forAssetNormalization:v15];
    v9[2](v9, v11, 2, a3);
  }
}

- (void)_cacheColorCube:(id)a3 forAssetNormalization:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_lock_aliveCubesByAssetNormalization setObject:v7 forKey:v6];
  [(NSCache *)self->_lock_cubeByAssetNormalization setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_isRequestActive:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(a3) = [(NSMutableIndexSet *)self->_lock_activeRequests containsIndex:a3];
  os_unfair_lock_unlock(&self->_lock);
  return a3;
}

- (int64_t)requestColorCubeForAssetNormalization:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  add = atomic_fetch_add(_makeNextTextureRequestID_lastRequestID, 1u);
  [(NSMutableIndexSet *)self->_lock_activeRequests addIndex:add];
  if (v6)
  {
    v9 = [(NSCache *)self->_lock_cubeByAssetNormalization objectForKey:v6];
    if (!v9)
    {
      v9 = [(NSMapTable *)self->_lock_aliveCubesByAssetNormalization objectForKey:v6];
      if (v9)
      {
        [(NSCache *)self->_lock_cubeByAssetNormalization setObject:v9 forKey:v6];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  v7[2](v7, v9, v11, add);
  if ((v11 & 1) == 0)
  {
    objc_initWeak(&location, self);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__PXStoryColorNormalizationCubeLibrary_requestColorCubeForAssetNormalization_completionHandler___block_invoke;
    block[3] = &unk_1E7743E48;
    objc_copyWeak(v17, &location);
    v17[1] = add;
    v15 = v6;
    v16 = v7;
    dispatch_async(queue, block);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  return add;
}

void __96__PXStoryColorNormalizationCubeLibrary_requestColorCubeForAssetNormalization_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _queue_performRequestWithID:*(a1 + 56) forAssetNormalization:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)cancelRequest:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableIndexSet *)self->_lock_activeRequests removeIndex:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorspace);
  v3.receiver = self;
  v3.super_class = PXStoryColorNormalizationCubeLibrary;
  [(PXStoryColorNormalizationCubeLibrary *)&v3 dealloc];
}

- (PXStoryColorNormalizationCubeLibrary)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryColorNormalizationCubeLibrary.m" lineNumber:78 description:{@"%s is not available as initializer", "-[PXStoryColorNormalizationCubeLibrary init]"}];

  abort();
}

- (PXStoryColorNormalizationCubeLibrary)initWithColorSpace:(CGColorSpace *)a3
{
  v18.receiver = self;
  v18.super_class = PXStoryColorNormalizationCubeLibrary;
  v4 = [(PXStoryColorNormalizationCubeLibrary *)&v18 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_DEFAULT, 0);
    v8 = dispatch_queue_create("com.apple.photos.color-normalization-cube-library", v7);
    queue = v5->_queue;
    v5->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    lock_activeRequests = v5->_lock_activeRequests;
    v5->_lock_activeRequests = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    lock_cubeByAssetNormalization = v5->_lock_cubeByAssetNormalization;
    v5->_lock_cubeByAssetNormalization = v12;

    [(NSCache *)v5->_lock_cubeByAssetNormalization setCountLimit:150];
    v14 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    lock_aliveCubesByAssetNormalization = v5->_lock_aliveCubesByAssetNormalization;
    v5->_lock_aliveCubesByAssetNormalization = v14;

    v16 = +[PXStorySettings sharedInstance];
    v5->_cubeEdgeSize = [v16 colorNormalizationCubeEdgeSize];

    v5->_colorspace = CGColorSpaceRetain(a3);
  }

  return v5;
}

+ (PXStoryColorNormalizationCubeLibrary)sharedInstance
{
  if (sharedInstance_onceToken_203935 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_203935, &__block_literal_global_203936);
  }

  v3 = sharedInstance_sharedInstance_203937;

  return v3;
}

@end