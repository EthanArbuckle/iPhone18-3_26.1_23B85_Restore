@interface VUIImageProxy
+ (id)_imageDecoratorQueue;
+ (id)_imageReadWriteQueue;
- (BOOL)isEqual:(id)a3;
- (BOOL)isImageAvailable;
- (BOOL)isOfSameOriginAs:(id)a3;
- (CGSize)dynamicProxyRequestedSize;
- (CGSize)expectedSize;
- (VUIImageProxy)initWithObject:(id)a3 imageLoader:(id)a4 groupType:(int64_t)a5;
- (id)_assetKeyWithImageLoaderKey:(id)a3 decoratorIdentifier:(id)a4;
- (id)_decoratedImageAssetKey;
- (id)_decoratedImageAssetPath;
- (id)_decoratorIdentifier;
- (id)_imageAssetPathWithAssetKey:(id)a3;
- (id)_imageLoaderKey;
- (id)_originalImageAssetKey;
- (id)_originalImageAssetPath;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_callCompletionHandlerWithImage:(id)a3 error:(id)a4 finished:(BOOL)a5;
- (void)_callWriteCompletionHandlerWithPath:(id)a3 error:(id)a4 finished:(BOOL)a5;
- (void)_completeImageLoadWithImage:(id)a3 imagePath:(id)a4 error:(id)a5 assetKey:(id)a6 expiryDate:(id)a7 tags:(id)a8;
- (void)_decorateAndWriteImage:(id)a3 imagePath:(id)a4 scaleToSize:(CGSize)a5 cropToFit:(BOOL)a6 scalingResult:(unint64_t)a7 assetKey:(id)a8 expiryDate:(id)a9 tags:(id)a10;
- (void)_imageDidWriteHandler:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)load;
- (void)setIsLoading:(BOOL)a3;
- (void)setWriteToAssetLibrary:(BOOL)a3;
@end

@implementation VUIImageProxy

- (VUIImageProxy)initWithObject:(id)a3 imageLoader:(id)a4 groupType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = VUIImageProxy;
  v11 = [(VUIImageProxy *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, a3);
    objc_storeStrong(&v12->_imageLoader, a4);
    *&v12->_writeToAssetLibrary = 257;
    v12->_imageDirection = 0;
    v12->_groupType = a5;
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12->_returnImageAfterWrittenToDisk = [v13 BOOLForKey:@"ImageProxyReturnImageAfterWrittenToDisk"];
  }

  return v12;
}

- (void)dealloc
{
  if (self->_imageDidWriteObserver)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self->_imageDidWriteObserver];
  }

  v4.receiver = self;
  v4.super_class = VUIImageProxy;
  [(VUIImageProxy *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = VUIImageProxy;
  v4 = [(VUIImageProxy *)&v9 description];
  v5 = [(VUIImageProxy *)self object];
  v6 = [v5 description];
  v7 = [v3 stringWithFormat:@"%@ - %@", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(VUIImageProxy *)v5 object];
      object = self->_object;
      v8 = v6;
      v9 = object;
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        if (!v8 || !v9)
        {
          goto LABEL_22;
        }

        v11 = [(VUIImageDecorator *)v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_23;
        }
      }

      v13 = [(VUIImageProxy *)v5 imageLoader];
      imageLoader = self->_imageLoader;
      v8 = v13;
      v15 = imageLoader;
      v10 = v15;
      if (v8 == v15)
      {
      }

      else
      {
        if (!v8 || !v15)
        {
          goto LABEL_22;
        }

        v16 = [(VUIImageDecorator *)v8 isEqual:v15];

        if (!v16)
        {
          goto LABEL_23;
        }
      }

      v17 = [(VUIImageProxy *)v5 decorator];
      decorator = self->_decorator;
      v8 = v17;
      v19 = decorator;
      v10 = v19;
      if (v8 == v19)
      {

LABEL_27:
        if ([(VUIImageProxy *)v5 groupType]== self->_groupType && [(VUIImageProxy *)v5 imageDirection]== self->_imageDirection)
        {
          v12 = self->_optimizedImageRendering == [(VUIImageProxy *)v5 optimizedImageRendering];
          goto LABEL_24;
        }

LABEL_23:
        v12 = 0;
LABEL_24:

        goto LABEL_25;
      }

      if (v8 && v19)
      {
        v20 = [(VUIImageDecorator *)v8 isEqual:v19];

        if (!v20)
        {
          goto LABEL_23;
        }

        goto LABEL_27;
      }

LABEL_22:

      goto LABEL_23;
    }

    v12 = 0;
  }

LABEL_25:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(VUIImageProxy *)self object];
  v4 = [v3 hash];
  v5 = [(VUIImageProxy *)self imageLoader];
  v6 = [v5 hash] + v4;
  v7 = [(VUIImageProxy *)self groupType];

  return v6 + v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(VUIImageProxy *)self object];
  v6 = [(VUIImageProxy *)self imageLoader];
  v7 = [v4 initWithObject:v5 imageLoader:v6 groupType:{-[VUIImageProxy groupType](self, "groupType")}];

  v8 = [(VUIImageProxy *)self decorator];
  [v7 setDecorator:v8];

  [v7 setCacheOnLoad:{-[VUIImageProxy cacheOnLoad](self, "cacheOnLoad")}];
  [v7 setLoadSynchronouslyIfCached:{-[VUIImageProxy loadSynchronouslyIfCached](self, "loadSynchronouslyIfCached")}];
  [v7 setWriteToAssetLibrary:{-[VUIImageProxy writeToAssetLibrary](self, "writeToAssetLibrary")}];
  return v7;
}

- (BOOL)isOfSameOriginAs:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  if ([v5 isEqual:self->_object])
  {
    v6 = [v4 imageLoader];
    v7 = [v6 isEqual:self->_imageLoader] && objc_msgSend(v4, "groupType") == self->_groupType && objc_msgSend(v4, "imageDirection") == self->_imageDirection;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)expectedSize
{
  v2 = [(VUIImageProxy *)self decorator];
  [v2 expectedSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setWriteToAssetLibrary:(BOOL)a3
{
  self->_writeToAssetLibrary = a3;
  if (!a3)
  {
    [(VUIImageProxy *)self setReturnImageAfterWrittenToDisk:0];
  }
}

- (void)setIsLoading:(BOOL)a3
{
  if (self->_isLoading != a3)
  {
    self->_isLoading = a3;
    if (!a3)
    {
      [(VUIImageProxy *)self setDecoratorRequestToken:0];
    }
  }
}

- (BOOL)isImageAvailable
{
  v2 = [(VUIImageProxy *)self _decoratedImageAssetPath];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)load
{
  if (![(VUIImageProxy *)self isLoading])
  {
    [VUIPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:1 withError:0];
    objc_initWeak(location, self);
    v3 = [(VUIImageProxy *)self _imageLoaderKey];
    v4 = [(VUIImageProxy *)self imageLoader];
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VUIImageProxy *)self imageLoader];
      v6 = [(VUIImageProxy *)self object];
      v7 = [v5 URLForObject:v6];
    }

    else
    {
      v8 = MEMORY[0x277CBEBC0];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"imageKey://%@", v3];
      v7 = [v8 URLWithString:v5];
    }

    if ([(VUIImageProxy *)self optimizedImageRendering]|| ([(VUIImageProxy *)self decorator], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v10 = [(VUIImageProxy *)self _originalImageAssetPath];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v10 = [(VUIImageProxy *)self _decoratedImageAssetPath];

      if (!v10)
      {
        goto LABEL_13;
      }
    }

    if (self->_writeToAssetLibrary)
    {
      if (self->_loadSynchronouslyIfCached)
      {
        v11 = [VUIImage imageWithPath:v10 cacheImmediately:self->_cacheOnLoad];
        [(VUIImageProxy *)self _callCompletionHandlerWithImage:v11 error:0 finished:1];
        [(VUIImageProxy *)self _callWriteCompletionHandlerWithPath:v10 error:0 finished:1];
LABEL_30:

        goto LABEL_31;
      }

      v26 = [objc_opt_class() _imageDecoratorQueue];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __21__VUIImageProxy_load__block_invoke;
      v51[3] = &unk_279E21BA8;
      objc_copyWeak(&v53, location);
      v10 = v10;
      v52 = v10;
      dispatch_async(v26, v51);

      v25 = &v53;
      goto LABEL_20;
    }

LABEL_13:
    [(VUIImageProxy *)self setIsLoading:1];
    if (v3)
    {
      v11 = [(VUIImageProxy *)self _originalImageAssetKey];
      v12 = [(VUIImageProxy *)self _decoratedImageAssetKey];
      v13 = [(VUIImageProxy *)self decorator];

      if (v13)
      {
        v14 = [(VUIImageProxy *)self decorator];
        [v14 loaderScaleToSize];
        v16 = v15;
        v18 = v17;

        v19 = [(VUIImageProxy *)self decorator];
        v13 = [v19 loaderCropToFit];

        v20 = [(VUIImageProxy *)self _originalImageAssetPath];

        if (v20)
        {
          v21 = +[VUIAssetLibrary sharedInstance];
          v22 = [v21 assetExpiryDateForKey:v11 inGroupOfType:{-[VUIImageProxy groupType](self, "groupType")}];

          v23 = [MEMORY[0x277CBEB98] setWithObject:v3];
          [(VUIImageProxy *)self _decorateAndWriteImage:0 imagePath:v20 scaleToSize:v13 cropToFit:0 scalingResult:v12 assetKey:v22 expiryDate:*&v16 tags:*&v18, v23];

          v10 = v20;
LABEL_29:

          goto LABEL_30;
        }

        v10 = 0;
      }

      else
      {
        v16 = *MEMORY[0x277CBF3A8];
        v18 = *(MEMORY[0x277CBF3A8] + 8);
      }

      v43 = 0;
      v44 = &v43;
      v45 = 0x3042000000;
      v46 = __Block_byref_object_copy__2;
      v47 = __Block_byref_object_dispose__2;
      v48 = 0;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __21__VUIImageProxy_load__block_invoke_33;
      v36[3] = &unk_279E21D30;
      objc_copyWeak(v41, location);
      v40 = &v43;
      v36[4] = self;
      v37 = v11;
      v38 = v3;
      v41[1] = v16;
      v41[2] = v18;
      v42 = v13;
      v39 = v12;
      v27 = MEMORY[0x2743B7C30](v36);
      v28 = [(VUIImageProxy *)self imageLoader];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        v30 = [(VUIImageProxy *)self imageLoader];
        v31 = [(VUIImageProxy *)self object];
        v32 = [v30 loadImageForObject:v31 scaleToSize:v13 cropToFit:-[VUIImageProxy imageDirection](self imageDirection:"imageDirection") completionHandler:{v27, *&v16, *&v18}];
      }

      else
      {
        v33 = [(VUIImageProxy *)self imageLoader];
        v34 = objc_opt_respondsToSelector();

        v30 = [(VUIImageProxy *)self imageLoader];
        [(VUIImageProxy *)self object];
        if (v34)
          v31 = {;
          [v30 loadImageForObject:v31 scaleToSize:v13 cropToFit:-[VUIImageProxy imageDirection](self imageDirection:"imageDirection") completionHandler:{v27, *&v16, *&v18}];
        }

        else
          v31 = {;
          [v30 loadImageForObject:v31 scaleToSize:v13 cropToFit:v27 completionHandler:{*&v16, *&v18}];
        }
        v32 = ;
      }

      v35 = v32;

      [(VUIImageProxy *)self setRequestToken:v35];
      objc_storeWeak(v44 + 5, v35);

      objc_destroyWeak(v41);
      _Block_object_dispose(&v43, 8);
      objc_destroyWeak(&v48);
      goto LABEL_29;
    }

    v24 = [objc_opt_class() _imageReadWriteQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __21__VUIImageProxy_load__block_invoke_2;
    block[3] = &unk_279E217C0;
    objc_copyWeak(&v50, location);
    dispatch_async(v24, block);

    v25 = &v50;
LABEL_20:
    objc_destroyWeak(v25);
LABEL_31:

    objc_destroyWeak(location);
  }
}

uint64_t __21__VUIImageProxy_load__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [VUIImage imageWithPath:*(a1 + 32) cacheImmediately:WeakRetained[8]];
    [v5 _callCompletionHandlerWithImage:v3 error:0 finished:1];
    [v5 _callWriteCompletionHandlerWithPath:*(a1 + 32) error:0 finished:1];
  }

  return MEMORY[0x2821F96F8]();
}

void __21__VUIImageProxy_load__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"VideosUICoreErrorDomain" code:106 userInfo:0];
    [v3 _completeImageLoadWithImage:0 imagePath:0 error:v2 assetKey:0 expiryDate:0 tags:0];

    WeakRetained = v3;
  }
}

void __21__VUIImageProxy_load__block_invoke_33(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = [WeakRetained requestToken];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 requestToken];
      v20 = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));

      if (v19 == v20)
      {
        [v16 setRequestToken:0];
        if ([v16 isLoading])
        {
          v21 = [v16 decorator];
          if (v21 && (v21, v11 | v12))
          {
            if (v11 && [v16 writeToAssetLibrary])
            {
              v22 = [v16 imageLoader];
              if ((objc_opt_respondsToSelector() & 1) == 0 || ([v22 hasImageCache] & 1) == 0)
              {
                v23 = [objc_opt_class() _imageReadWriteQueue];
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __21__VUIImageProxy_load__block_invoke_2_36;
                block[3] = &unk_279E218A0;
                v30 = v11;
                v31 = *(a1 + 40);
                v32 = v16;
                v33 = v13;
                v34 = *(a1 + 48);
                dispatch_async(v23, block);
              }
            }

            v24 = *(a1 + 96);
            v25 = *(a1 + 56);
            v26 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 48)];
            [v16 _decorateAndWriteImage:v11 imagePath:v12 scaleToSize:v24 cropToFit:a5 scalingResult:v25 assetKey:v13 expiryDate:*(a1 + 80) tags:{*(a1 + 88), v26}];
          }

          else
          {
            v27 = *(a1 + 56);
            v28 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 48)];
            [v16 _completeImageLoadWithImage:v11 imagePath:v12 error:v14 assetKey:v27 expiryDate:v13 tags:v28];
          }
        }
      }
    }
  }
}

void __21__VUIImageProxy_load__block_invoke_2_36(uint64_t a1)
{
  v7 = +[VUIAssetLibrary sharedInstance];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) groupType];
  v5 = *(a1 + 56);
  v6 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 64)];
  [v7 setImageAsset:v2 forKey:v3 inGroupOfType:v4 expiryDate:v5 tags:v6];
}

+ (id)_imageDecoratorQueue
{
  if (_imageDecoratorQueue_onceToken != -1)
  {
    +[VUIImageProxy _imageDecoratorQueue];
  }

  v3 = _imageDecoratorQueue_sImageDecoratorQueue;

  return v3;
}

uint64_t __37__VUIImageProxy__imageDecoratorQueue__block_invoke()
{
  _imageDecoratorQueue_sImageDecoratorQueue = dispatch_queue_create("com.apple.VUIAssetLibrary.decoratorQueue", 0);

  return MEMORY[0x2821F96F8]();
}

+ (id)_imageReadWriteQueue
{
  if (_imageReadWriteQueue_onceToken != -1)
  {
    +[VUIImageProxy _imageReadWriteQueue];
  }

  v3 = _imageReadWriteQueue_sImageReadWriteQueue;

  return v3;
}

uint64_t __37__VUIImageProxy__imageReadWriteQueue__block_invoke()
{
  _imageReadWriteQueue_sImageReadWriteQueue = dispatch_queue_create("com.apple.videosuicore.VUIImageProxy.imageReadWriteQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (void)_decorateAndWriteImage:(id)a3 imagePath:(id)a4 scaleToSize:(CGSize)a5 cropToFit:(BOOL)a6 scalingResult:(unint64_t)a7 assetKey:(id)a8 expiryDate:(id)a9 tags:(id)a10
{
  height = a5.height;
  width = a5.width;
  v16 = a3;
  v17 = a4;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = [(VUIImageProxy *)self decorator];
  cacheOnLoad = self->_cacheOnLoad;
  v23 = objc_alloc_init(_VUIDecoratorRequest);
  [(VUIImageProxy *)self setDecoratorRequestToken:v23];
  objc_initWeak(location, self);
  v24 = [objc_opt_class() _imageDecoratorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__VUIImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags___block_invoke;
  block[3] = &unk_279E21D80;
  objc_copyWeak(v43, location);
  v35 = v16;
  v36 = v17;
  v44 = cacheOnLoad;
  v37 = v23;
  v38 = self;
  v39 = v18;
  v40 = v19;
  v43[1] = a7;
  v43[2] = *&width;
  v43[3] = *&height;
  v45 = a6;
  v41 = v20;
  v42 = v21;
  v25 = v21;
  v26 = v20;
  v27 = v19;
  v28 = v18;
  v29 = v23;
  v30 = v17;
  v31 = v16;
  dispatch_async(v24, block);

  objc_destroyWeak(v43);
  objc_destroyWeak(location);
}

void __111__VUIImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = [VUIImage imageWithPath:*(a1 + 40) cacheImmediately:*(a1 + 128)];
    }

    v5 = v4;
    if ([WeakRetained optimizedImageRendering] && (objc_msgSend(*(a1 + 48), "statusCancelled") & 1) == 0)
    {
      if (v5)
      {
        v10 = 0;
      }

      else
      {
        v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
      }

      v15 = [objc_opt_class() _imageReadWriteQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __111__VUIImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags___block_invoke_2;
      v23[3] = &unk_279E21D58;
      v23[4] = WeakRetained;
      v24 = v5;
      v25 = *(a1 + 40);
      v26 = v10;
      v27 = *(a1 + 64);
      v28 = *(a1 + 72);
      v29 = *(a1 + 80);
      v13 = v10;
      dispatch_async(v15, v23);

      v14 = v24;
    }

    else
    {
      if ([*(a1 + 48) statusCancelled])
      {
LABEL_19:

        goto LABEL_20;
      }

      v6 = *(a1 + 104);
      if (v6 == 2)
      {
        v7 = (a1 + 112);
        v8 = (a1 + 120);
        v9 = *(a1 + 129);
      }

      else
      {
        v7 = MEMORY[0x277CBF3A8];
        v8 = (MEMORY[0x277CBF3A8] + 8);
        if (v6 == 1)
        {
          v7 = (a1 + 112);
          v8 = (a1 + 120);
        }

        v9 = 0;
      }

      v11 = [*(a1 + 88) decorate:v5 scaledWithSize:v9 & 1 croppedToFit:{*v7, *v8}];
      v12 = [objc_opt_class() _imageReadWriteQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __111__VUIImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags___block_invoke_3;
      block[3] = &unk_279E21878;
      v17 = *(a1 + 48);
      v18 = v11;
      v19 = WeakRetained;
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
      v22 = *(a1 + 80);
      v13 = v11;
      dispatch_async(v12, block);

      v14 = v17;
    }

    goto LABEL_19;
  }

LABEL_20:
}

void __111__VUIImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags___block_invoke_3(uint64_t a1)
{
  if (([*(a1 + 32) statusCancelled] & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v2 = 0;
    }

    else
    {
      v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-18 userInfo:0];
    }

    v3 = v2;
    [*(a1 + 48) _completeImageLoadWithImage:*(a1 + 40) imagePath:0 error:v2 assetKey:*(a1 + 56) expiryDate:*(a1 + 64) tags:*(a1 + 72)];
  }
}

- (void)_completeImageLoadWithImage:(id)a3 imagePath:(id)a4 error:(id)a5 assetKey:(id)a6 expiryDate:(id)a7 tags:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (v15)
  {
    v20 = [(VUIImageProxy *)self completionHandler];

    if (v20)
    {
      if (v14)
      {
        v21 = v14;
      }

      else
      {
        v21 = [VUIImage imageWithPath:v15 cacheImmediately:self->_cacheOnLoad];
      }

      v25 = v21;
      [(VUIImageProxy *)self _callCompletionHandlerWithImage:v21 error:0 finished:1];
    }

    v26 = self;
    v27 = v15;
    v28 = 0;
    goto LABEL_12;
  }

  if (!v14)
  {
    [(VUIImageProxy *)self _callCompletionHandlerWithImage:0 error:v16 finished:1];
    v26 = self;
    v27 = 0;
    v28 = v16;
LABEL_12:
    [(VUIImageProxy *)v26 _callWriteCompletionHandlerWithPath:v27 error:v28 finished:1];
LABEL_13:
    [(VUIImageProxy *)self setIsLoading:0, v34, v35, v36, v37, v38];
    goto LABEL_14;
  }

  v22 = [MEMORY[0x277CCACC8] isMainThread];
  if (self->_writeToAssetLibrary)
  {
    v23 = v22;
    v24 = [(VUIImageProxy *)self writeCompletionHandler];
    if (v24)
    {

LABEL_17:
      objc_initWeak(&location, self);
      v34 = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = objc_alloc_init(MEMORY[0x277CCABD8]);
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __86__VUIImageProxy__completeImageLoadWithImage_imagePath_error_assetKey_expiryDate_tags___block_invoke;
      v38 = &unk_279E21DA8;
      objc_copyWeak(&v39, &location);
      v40 = v23;
      v30 = [v34 addObserverForName:@"VUIAssetDidWriteNotification" object:v17 queue:v29 usingBlock:&v35];
      imageDidWriteObserver = self->_imageDidWriteObserver;
      self->_imageDidWriteObserver = v30;

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
      v32 = 1;
      goto LABEL_19;
    }

    if (self->_returnImageAfterWrittenToDisk)
    {
      goto LABEL_17;
    }
  }

  v32 = 0;
LABEL_19:
  if (self->_writeToAssetLibrary)
  {
    v33 = +[VUIAssetLibrary sharedInstance];
    [v33 setImageAsset:v14 forKey:v17 inGroupOfType:-[VUIImageProxy groupType](self expiryDate:"groupType") tags:{v18, v19}];
  }

  if (!self->_returnImageAfterWrittenToDisk)
  {
    [(VUIImageProxy *)self _callCompletionHandlerWithImage:v14 error:0 finished:1];
  }

  if ((v32 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
}

void __86__VUIImageProxy__completeImageLoadWithImage_imagePath_error_assetKey_expiryDate_tags___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _imageDidWriteHandler:v3];
    if ([v5 returnImageAfterWrittenToDisk])
    {
      v6 = [v3 userInfo];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 objectForKeyedSubscript:@"VUIAssetDidWriteNotificationAssetPathKey"];
        if (v8)
        {
          v9 = [VUIImage imageWithPath:v8];
          v10 = v9;
          if (v9)
          {
            if (*(a1 + 40) == 1)
            {
              v12[0] = MEMORY[0x277D85DD0];
              v12[1] = 3221225472;
              v12[2] = __86__VUIImageProxy__completeImageLoadWithImage_imagePath_error_assetKey_expiryDate_tags___block_invoke_2;
              v12[3] = &unk_279E218C8;
              v12[4] = v5;
              v13 = v9;
              dispatch_async(MEMORY[0x277D85CD0], v12);
            }

            else
            {
              [v5 _callCompletionHandlerWithImage:v9 error:0 finished:1];
            }
          }

          else
          {
            v11 = VUICImageLogObject();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v15 = v8;
              _os_log_impl(&dword_270E6E000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create image from file path %@", buf, 0xCu);
            }
          }
        }
      }
    }
  }
}

- (void)_imageDidWriteHandler:(id)a3
{
  v7 = self;
  v4 = [a3 userInfo];
  if ([(VUIImageProxy *)v7 isLoading])
  {
    v5 = [v4 objectForKey:@"VUIAssetDidWriteNotificationAssetPathKey"];
    v6 = [v4 objectForKey:@"VUIAssetDidWriteNotificationErrorKey"];
    [(VUIImageProxy *)v7 _callWriteCompletionHandlerWithPath:v5 error:v6 finished:1];
  }

  [(VUIImageProxy *)v7 setIsLoading:0];
}

- (id)_decoratorIdentifier
{
  v2 = [(VUIImageProxy *)self decorator];
  v3 = [v2 decoratorIdentifier];

  return v3;
}

- (id)_assetKeyWithImageLoaderKey:(id)a3 decoratorIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [MEMORY[0x277CCAB68] stringWithString:v6];
    [v8 appendString:@"_"];
    if ([(VUIImageProxy *)self imageDirection])
    {
      v9 = @"rtl";
    }

    else
    {
      v9 = @"ltr";
    }

    [v8 appendString:v9];
    if (v7)
    {
      [v8 appendString:@"_"];
      [v8 appendString:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_imageLoaderKey
{
  v3 = [(VUIImageProxy *)self imageLoader];
  v4 = [(VUIImageProxy *)self object];
  v5 = [v3 imageKeyForObject:v4];

  return v5;
}

- (id)_originalImageAssetKey
{
  v3 = [(VUIImageProxy *)self _imageLoaderKey];
  v4 = [(VUIImageProxy *)self _assetKeyWithImageLoaderKey:v3 decoratorIdentifier:0];
  if ([(VUIImageProxy *)self allowsSubstitutionForOriginal])
  {
    v5 = [(VUIImageProxy *)self _imageAssetPathWithAssetKey:v4];

    if (!v5)
    {
      v6 = +[VUIAssetLibrary sharedInstance];
      v7 = [MEMORY[0x277CBEB98] setWithObject:v3];
      v8 = [v6 keyForAssetWithTags:v7 inGroupOfType:{-[VUIImageProxy groupType](self, "groupType")}];

      if (v8)
      {
        v9 = v8;

        v4 = v9;
      }
    }
  }

  if ([v4 length] >= 0x100)
  {
    v10 = [v4 substringFromIndex:{objc_msgSend(v4, "length") - 255}];

    v4 = v10;
  }

  return v4;
}

- (id)_decoratedImageAssetKey
{
  v3 = [(VUIImageProxy *)self _imageLoaderKey];
  v4 = [(VUIImageProxy *)self _decoratorIdentifier];
  v5 = [(VUIImageProxy *)self _assetKeyWithImageLoaderKey:v3 decoratorIdentifier:v4];
  if ([v5 length] >= 0x100)
  {
    v6 = [v5 substringFromIndex:{objc_msgSend(v5, "length") - 255}];

    v5 = v6;
  }

  return v5;
}

- (id)_decoratedImageAssetPath
{
  v3 = [(VUIImageProxy *)self _decoratedImageAssetKey];
  v4 = [(VUIImageProxy *)self _imageAssetPathWithAssetKey:v3];

  return v4;
}

- (id)_originalImageAssetPath
{
  v3 = [(VUIImageProxy *)self _originalImageAssetKey];
  v4 = [(VUIImageProxy *)self _imageAssetPathWithAssetKey:v3];

  return v4;
}

- (id)_imageAssetPathWithAssetKey:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[VUIAssetLibrary sharedInstance];
    v6 = [v5 assetPathForKey:v4 inGroupOfType:{-[VUIImageProxy groupType](self, "groupType")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)cancel
{
  if ([(VUIImageProxy *)self isLoading])
  {
    v9 = self;
    if (v9->_imageDidWriteObserver)
    {
      v3 = [MEMORY[0x277CCAB98] defaultCenter];
      [v3 removeObserver:v9->_imageDidWriteObserver];

      imageDidWriteObserver = v9->_imageDidWriteObserver;
      v9->_imageDidWriteObserver = 0;
    }

    v5 = [(VUIImageProxy *)v9 requestToken];

    if (v5)
    {
      v6 = [(VUIImageProxy *)v9 imageLoader];
      v7 = [(VUIImageProxy *)v9 requestToken];
      [v6 cancelLoad:v7];

      [(VUIImageProxy *)v9 setRequestToken:0];
    }

    v8 = [(VUIImageProxy *)v9 decoratorRequestToken];
    [v8 setStatusCancelled:1];

    [(VUIImageProxy *)v9 setDecoratorRequestToken:0];
    [(VUIImageProxy *)v9 setIsLoading:0];
    [(VUIImageProxy *)v9 _callCompletionHandlerWithImage:0 error:0 finished:0];
    [(VUIImageProxy *)v9 _callWriteCompletionHandlerWithPath:0 error:0 finished:0];
  }
}

- (void)_callCompletionHandlerWithImage:(id)a3 error:(id)a4 finished:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  [VUIPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:0 withError:v8];
  v9 = [(VUIImageProxy *)self completionHandler];
  v10 = [v9 copy];

  if (v10)
  {
    (v10)[2](v10, v11, v8, v5);
  }
}

- (void)_callWriteCompletionHandlerWithPath:(id)a3 error:(id)a4 finished:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  v9 = [(VUIImageProxy *)self writeCompletionHandler];
  v10 = [v9 copy];

  if (v10)
  {
    (v10)[2](v10, v11, v8, v5);
  }
}

- (CGSize)dynamicProxyRequestedSize
{
  width = self->_dynamicProxyRequestedSize.width;
  height = self->_dynamicProxyRequestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end