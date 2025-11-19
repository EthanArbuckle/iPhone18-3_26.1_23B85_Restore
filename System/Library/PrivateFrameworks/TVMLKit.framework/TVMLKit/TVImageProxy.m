@interface TVImageProxy
+ (id)_imageDecoratorQueue;
- (BOOL)isEqual:(id)a3;
- (BOOL)isImageAvailable;
- (BOOL)isOfSameOriginAs:(id)a3;
- (CGSize)expectedSize;
- (IKNetworkRequestLoader)requestLoader;
- (TVImageProxy)initWithObject:(id)a3 imageLoader:(id)a4 groupType:(int64_t)a5;
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
- (void)_completeImageLoadWithImage:(id)a3 imagePath:(id)a4 error:(id)a5 assetKey:(id)a6 expiryDate:(id)a7 tags:(id)a8 requestRecord:(id)a9;
- (void)_decorateAndWriteImage:(id)a3 imagePath:(id)a4 scaleToSize:(CGSize)a5 cropToFit:(BOOL)a6 scalingResult:(unint64_t)a7 assetKey:(id)a8 expiryDate:(id)a9 tags:(id)a10 requestRecord:(id)a11;
- (void)_imageDidWriteHandler:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)load;
- (void)loadWithWeakObject:(id)a3 completionHandler:(id)a4;
- (void)setIsLoading:(BOOL)a3;
@end

@implementation TVImageProxy

- (TVImageProxy)initWithObject:(id)a3 imageLoader:(id)a4 groupType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = TVImageProxy;
  v11 = [(TVImageProxy *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, a3);
    objc_storeStrong(&v12->_imageLoader, a4);
    v12->_writeToAssetLibrary = 1;
    v12->_imageDirection = 0;
    v12->_groupType = a5;
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
  v4.super_class = TVImageProxy;
  [(TVImageProxy *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = TVImageProxy;
  v4 = [(TVImageProxy *)&v9 description];
  v5 = [(TVImageProxy *)self object];
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
      v6 = [(TVImageProxy *)v5 object];
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

        v11 = [(TVImageDecorator *)v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_23;
        }
      }

      v13 = [(TVImageProxy *)v5 imageLoader];
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

        v16 = [(TVImageDecorator *)v8 isEqual:v15];

        if (!v16)
        {
          goto LABEL_23;
        }
      }

      v17 = [(TVImageProxy *)v5 decorator];
      decorator = self->_decorator;
      v8 = v17;
      v19 = decorator;
      v10 = v19;
      if (v8 == v19)
      {

LABEL_27:
        if ([(TVImageProxy *)v5 groupType]== self->_groupType)
        {
          v12 = [(TVImageProxy *)v5 imageDirection]== self->_imageDirection;
          goto LABEL_24;
        }

LABEL_23:
        v12 = 0;
LABEL_24:

        goto LABEL_25;
      }

      if (v8 && v19)
      {
        v20 = [(TVImageDecorator *)v8 isEqual:v19];

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
  v3 = [(TVImageProxy *)self object];
  v4 = [v3 hash];
  v5 = [(TVImageProxy *)self imageLoader];
  v6 = [v5 hash] + v4;
  v7 = [(TVImageProxy *)self groupType];

  return v6 + v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TVImageProxy *)self object];
  v6 = [(TVImageProxy *)self imageLoader];
  v7 = [v4 initWithObject:v5 imageLoader:v6 groupType:{-[TVImageProxy groupType](self, "groupType")}];

  v8 = [(TVImageProxy *)self decorator];
  [v7 setDecorator:v8];

  [v7 setCacheOnLoad:{-[TVImageProxy cacheOnLoad](self, "cacheOnLoad")}];
  [v7 setLoadSynchronouslyIfCached:{-[TVImageProxy loadSynchronouslyIfCached](self, "loadSynchronouslyIfCached")}];
  [v7 setWriteToAssetLibrary:{-[TVImageProxy writeToAssetLibrary](self, "writeToAssetLibrary")}];
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
  v2 = [(TVImageProxy *)self decorator];
  [v2 expectedSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setIsLoading:(BOOL)a3
{
  if (self->_isLoading != a3)
  {
    self->_isLoading = a3;
    if (!a3)
    {
      [(TVImageProxy *)self setDecoratorRequestToken:0];
    }
  }
}

- (BOOL)isImageAvailable
{
  v2 = [(TVImageProxy *)self _decoratedImageAssetPath];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)load
{
  if (![(TVImageProxy *)self isLoading])
  {
    [_TVPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:1];
    objc_initWeak(location, self);
    v3 = [(TVImageProxy *)self _imageLoaderKey];
    v4 = [(TVImageProxy *)self imageLoader];
    if (objc_opt_respondsToSelector())
    {
      v5 = [(TVImageProxy *)self imageLoader];
      v6 = [(TVImageProxy *)self object];
      v7 = [v5 URLForObject:v6];
    }

    else
    {
      v8 = MEMORY[0x277CBEBC0];
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"imageKey://%@", v3];
      v7 = [v8 URLWithString:v5];
    }

    v9 = [(TVImageProxy *)self requestLoader];
    v10 = [v9 recordForResource:3 withInitiator:2];

    v11 = [(TVImageProxy *)self decorator];
    if (v11)
    {
      [(TVImageProxy *)self _decoratedImageAssetPath];
    }

    else
    {
      [(TVImageProxy *)self _originalImageAssetPath];
    }
    v12 = ;

    if (v12 && self->_writeToAssetLibrary)
    {
      v13 = [MEMORY[0x277CCAD20] requestWithURL:v7];
      [v10 willSendRequest:v13];

      if (self->_loadSynchronouslyIfCached)
      {
        v14 = [TVImage imageWithPath:v12 cacheImmediately:self->_cacheOnLoad];
        [ITMLUtilities image:v14 didCompleteLoadingForCache:1 requestRecord:v10];
        [(TVImageProxy *)self _callCompletionHandlerWithImage:v14 error:0 finished:1];
        [(TVImageProxy *)self _callWriteCompletionHandlerWithPath:v12 error:0 finished:1];

LABEL_29:
        objc_destroyWeak(location);
        return;
      }

      v30 = [objc_opt_class() _imageDecoratorQueue];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __20__TVImageProxy_load__block_invoke;
      v60[3] = &unk_279D6F2C8;
      objc_copyWeak(&v63, location);
      v12 = v12;
      v61 = v12;
      v62 = v10;
      dispatch_async(v30, v60);

      v29 = &v63;
LABEL_19:
      objc_destroyWeak(v29);
      goto LABEL_29;
    }

    [(TVImageProxy *)self setIsLoading:1];
    if (!v3)
    {
      v28 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __20__TVImageProxy_load__block_invoke_2;
      block[3] = &unk_279D6E770;
      objc_copyWeak(&v59, location);
      v58 = v10;
      dispatch_async(v28, block);

      v29 = &v59;
      goto LABEL_19;
    }

    v41 = v7;
    v43 = [(TVImageProxy *)self _originalImageAssetKey];
    v42 = [(TVImageProxy *)self _decoratedImageAssetKey];
    v15 = [(TVImageProxy *)self decorator];

    if (v15)
    {
      v16 = [(TVImageProxy *)self decorator];
      [v16 loaderScaleToSize];
      v18 = v17;
      v20 = v19;

      v21 = [(TVImageProxy *)self decorator];
      v22 = [v21 loaderCropToFit];

      v23 = [(TVImageProxy *)self _originalImageAssetPath];

      if (v23)
      {
        v24 = [MEMORY[0x277CCAD20] requestWithURL:v7];
        [v10 willSendRequest:v24];

        v25 = +[TVAssetLibrary sharedInstance];
        v26 = [v25 assetExpiryDateForKey:v43 inGroupOfType:{-[TVImageProxy groupType](self, "groupType")}];

        v27 = [MEMORY[0x277CBEB98] setWithObject:v3];
        [(TVImageProxy *)self _decorateAndWriteImage:0 imagePath:v23 scaleToSize:v22 cropToFit:0 scalingResult:v42 assetKey:v26 expiryDate:*&v18 tags:*&v20 requestRecord:v27, v10];

        v12 = v23;
LABEL_28:

        v7 = v41;
        goto LABEL_29;
      }

      v12 = 0;
    }

    else
    {
      v22 = 0;
      v18 = *MEMORY[0x277CBF3A8];
      v20 = *(MEMORY[0x277CBF3A8] + 8);
    }

    v51 = 0;
    v52 = &v51;
    v53 = 0x3042000000;
    v54 = __Block_byref_object_copy__2;
    v55 = __Block_byref_object_dispose__2;
    v56 = 0;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __20__TVImageProxy_load__block_invoke_31;
    v44[3] = &unk_279D6F360;
    objc_copyWeak(v49, location);
    v48 = &v51;
    v45 = v43;
    v46 = v3;
    v49[1] = v18;
    v49[2] = v20;
    v50 = v22;
    v47 = v42;
    v31 = MEMORY[0x26D6AFBB0](v44);
    v32 = [(TVImageProxy *)self imageLoader];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      v34 = [(TVImageProxy *)self imageLoader];
      v35 = [(TVImageProxy *)self object];
      v36 = [(TVImageProxy *)self imageDirection];
      v37 = [(TVImageProxy *)self requestLoader];
      v38 = [v34 loadImageForObject:v35 scaleToSize:v22 cropToFit:v36 imageDirection:v37 requestLoader:v31 completionHandler:{*&v18, *&v20}];
    }

    else
    {
      v39 = [(TVImageProxy *)self imageLoader];
      v40 = objc_opt_respondsToSelector();

      v34 = [(TVImageProxy *)self imageLoader];
      [(TVImageProxy *)self object];
      if (v40)
        v35 = {;
        [v34 loadImageForObject:v35 scaleToSize:v22 cropToFit:-[TVImageProxy imageDirection](self imageDirection:"imageDirection") completionHandler:{v31, *&v18, *&v20}];
      }

      else
        v35 = {;
        [v34 loadImageForObject:v35 scaleToSize:v22 cropToFit:v31 completionHandler:{*&v18, *&v20}];
      }
      v38 = ;
    }

    [(TVImageProxy *)self setRequestToken:v38];
    objc_storeWeak(v52 + 5, v38);

    objc_destroyWeak(v49);
    _Block_object_dispose(&v51, 8);
    objc_destroyWeak(&v56);
    goto LABEL_28;
  }
}

uint64_t __20__TVImageProxy_load__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v4 = [TVImage imageWithPath:*(a1 + 32) cacheImmediately:WeakRetained[8]];
    [ITMLUtilities image:v4 didCompleteLoadingForCache:1 requestRecord:*(a1 + 40)];
    [v7 _callCompletionHandlerWithImage:v4 error:0 finished:1];
    [v7 _callWriteCompletionHandlerWithPath:*(a1 + 32) error:0 finished:1];
  }

  else
  {
    v5 = *(a1 + 40);
    if (!v5)
    {
      goto LABEL_6;
    }

    v7 = 0;
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:11 userInfo:0];
    [v5 didFailWithError:v4];
  }

  v3 = v7;
LABEL_6:

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

void __20__TVImageProxy_load__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:10 userInfo:0];
    [v4 _completeImageLoadWithImage:0 imagePath:0 error:v3 assetKey:0 expiryDate:0 tags:0 requestRecord:0];
    [*(a1 + 32) didFailWithError:v3];

    WeakRetained = v4;
  }
}

void __20__TVImageProxy_load__block_invoke_31(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v16 = WeakRetained;
  if (WeakRetained)
  {
    v17 = [WeakRetained requestToken];
    if (v17)
    {
      v18 = v17;
      v19 = [v16 requestToken];
      v20 = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));

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
                v23 = dispatch_get_global_queue(0, 0);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = __20__TVImageProxy_load__block_invoke_2_34;
                block[3] = &unk_279D6F338;
                v30 = v11;
                v31 = *(a1 + 32);
                v32 = v16;
                v33 = v13;
                v34 = *(a1 + 40);
                dispatch_async(v23, block);
              }
            }

            v24 = *(a1 + 88);
            v25 = *(a1 + 48);
            v26 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
            [v16 _decorateAndWriteImage:v11 imagePath:v12 scaleToSize:v24 cropToFit:a5 scalingResult:v25 assetKey:v13 expiryDate:*(a1 + 72) tags:*(a1 + 80) requestRecord:{v26, 0}];
          }

          else
          {
            v27 = *(a1 + 48);
            v28 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
            [v16 _completeImageLoadWithImage:v11 imagePath:v12 error:v14 assetKey:v27 expiryDate:v13 tags:v28 requestRecord:0];
          }
        }
      }
    }
  }
}

void __20__TVImageProxy_load__block_invoke_2_34(uint64_t a1)
{
  v7 = +[TVAssetLibrary sharedInstance];
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
    +[TVImageProxy _imageDecoratorQueue];
  }

  v3 = _imageDecoratorQueue_sImageDecoratorQueue;

  return v3;
}

uint64_t __36__TVImageProxy__imageDecoratorQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.TVAssetLibrary.decoratorQueue", 0);
  v1 = _imageDecoratorQueue_sImageDecoratorQueue;
  _imageDecoratorQueue_sImageDecoratorQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_decorateAndWriteImage:(id)a3 imagePath:(id)a4 scaleToSize:(CGSize)a5 cropToFit:(BOOL)a6 scalingResult:(unint64_t)a7 assetKey:(id)a8 expiryDate:(id)a9 tags:(id)a10 requestRecord:(id)a11
{
  height = a5.height;
  width = a5.width;
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = [(TVImageProxy *)self decorator];
  cacheOnLoad = self->_cacheOnLoad;
  v25 = objc_alloc_init(_TVDecoratorRequest);
  [(TVImageProxy *)self setDecoratorRequestToken:v25];
  objc_initWeak(location, self);
  v26 = [objc_opt_class() _imageDecoratorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__TVImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags_requestRecord___block_invoke;
  block[3] = &unk_279D6F3B0;
  objc_copyWeak(v46, location);
  v38 = v17;
  v39 = v18;
  v47 = cacheOnLoad;
  v46[1] = a7;
  v46[2] = *&width;
  v46[3] = *&height;
  v48 = a6;
  v40 = v25;
  v41 = v23;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  v31 = v23;
  v32 = v25;
  v33 = v18;
  v34 = v17;
  dispatch_async(v26, block);

  objc_destroyWeak(v46);
  objc_destroyWeak(location);
}

void __124__TVImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags_requestRecord___block_invoke(uint64_t a1)
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
      v4 = [TVImage imageWithPath:*(a1 + 40) cacheImmediately:*(a1 + 128)];
    }

    v5 = v4;
    if ([*(a1 + 48) statusCancelled])
    {
      v6 = *(a1 + 88);
      if (v6)
      {
        v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:11 userInfo:0];
        [v6 didFailWithError:v7];
      }
    }

    else
    {
      v8 = *(a1 + 104);
      if (v8 == 2)
      {
        v9 = (a1 + 112);
        v10 = (a1 + 120);
        v11 = *(a1 + 129);
      }

      else
      {
        v9 = MEMORY[0x277CBF3A8];
        v10 = (MEMORY[0x277CBF3A8] + 8);
        if (v8 == 1)
        {
          v9 = (a1 + 112);
          v10 = (a1 + 120);
        }

        v11 = 0;
      }

      v12 = [*(a1 + 56) decorate:v5 scaledWithSize:v11 & 1 croppedToFit:{*v9, *v10}];
      v13 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __124__TVImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags_requestRecord___block_invoke_2;
      block[3] = &unk_279D6F388;
      v22 = *(a1 + 48);
      v23 = v12;
      v24 = WeakRetained;
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      v16 = *(a1 + 80);
      v17 = *(a1 + 88);
      *&v18 = v16;
      *(&v18 + 1) = v17;
      *&v19 = v14;
      *(&v19 + 1) = v15;
      v25 = v19;
      v26 = v18;
      v20 = v12;
      dispatch_async(v13, block);
    }
  }
}

void __124__TVImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags_requestRecord___block_invoke_2(uint64_t a1)
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
    [*(a1 + 48) _completeImageLoadWithImage:*(a1 + 40) imagePath:0 error:v2 assetKey:*(a1 + 56) expiryDate:*(a1 + 64) tags:*(a1 + 72) requestRecord:*(a1 + 80)];
  }
}

- (void)_completeImageLoadWithImage:(id)a3 imagePath:(id)a4 error:(id)a5 assetKey:(id)a6 expiryDate:(id)a7 tags:(id)a8 requestRecord:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (v16)
  {
    v23 = [(TVImageProxy *)self completionHandler];

    if (v23)
    {
      if (v15)
      {
        v24 = v15;
      }

      else
      {
        v24 = [TVImage imageWithPath:v16 cacheImmediately:self->_cacheOnLoad];
      }

      v31 = v24;
      [(TVImageProxy *)self _callCompletionHandlerWithImage:v24 error:0 finished:1];
    }

    [ITMLUtilities image:v15 didCompleteLoadingForCache:1 requestRecord:v22];
    v32 = self;
    v33 = v16;
    v34 = 0;
LABEL_17:
    [(TVImageProxy *)v32 _callWriteCompletionHandlerWithPath:v33 error:v34 finished:1];
LABEL_18:
    [(TVImageProxy *)self setIsLoading:0];
    goto LABEL_19;
  }

  if (!v15)
  {
    if (v21)
    {
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:11 userInfo:0];
      [v22 didFailWithError:v35];
    }

    [(TVImageProxy *)self _callCompletionHandlerWithImage:0 error:v17 finished:1];
    v32 = self;
    v33 = 0;
    v34 = v17;
    goto LABEL_17;
  }

  if (self->_writeToAssetLibrary && ([(TVImageProxy *)self writeCompletionHandler], v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
  {
    objc_initWeak(&location, self);
    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    v26 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v36 = @"ATVAssetDidWriteNotification";
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __99__TVImageProxy__completeImageLoadWithImage_imagePath_error_assetKey_expiryDate_tags_requestRecord___block_invoke;
    v38[3] = &unk_279D6F3D8;
    objc_copyWeak(&v39, &location);
    v27 = [v37 addObserverForName:@"ATVAssetDidWriteNotification" object:v18 queue:v26 usingBlock:v38];
    imageDidWriteObserver = self->_imageDidWriteObserver;
    self->_imageDidWriteObserver = v27;

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  if (self->_writeToAssetLibrary)
  {
    v30 = +[TVAssetLibrary sharedInstance];
    [v30 setImageAsset:v15 forKey:v18 inGroupOfType:-[TVImageProxy groupType](self expiryDate:"groupType") tags:{v19, v20}];
  }

  [ITMLUtilities image:v15 didCompleteLoadingForCache:1 requestRecord:v22, v36];
  [(TVImageProxy *)self _callCompletionHandlerWithImage:v15 error:0 finished:1];
  if ((v29 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
}

void __99__TVImageProxy__completeImageLoadWithImage_imagePath_error_assetKey_expiryDate_tags_requestRecord___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _imageDidWriteHandler:v5];
  }
}

- (void)_imageDidWriteHandler:(id)a3
{
  v7 = self;
  v4 = [a3 userInfo];
  if ([(TVImageProxy *)v7 isLoading])
  {
    v5 = [v4 objectForKey:@"ATVAssetDidWriteNotificationAssetPathKey"];
    v6 = [v4 objectForKey:@"ATVAssetDidWriteNotificationErrorKey"];
    [(TVImageProxy *)v7 _callWriteCompletionHandlerWithPath:v5 error:v6 finished:1];
  }

  [(TVImageProxy *)v7 setIsLoading:0];
}

- (id)_decoratorIdentifier
{
  v2 = [(TVImageProxy *)self decorator];
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
    if ([(TVImageProxy *)self imageDirection])
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
  v3 = [(TVImageProxy *)self imageLoader];
  v4 = [(TVImageProxy *)self object];
  v5 = [v3 imageKeyForObject:v4];

  return v5;
}

- (id)_originalImageAssetKey
{
  v3 = [(TVImageProxy *)self _imageLoaderKey];
  v4 = [(TVImageProxy *)self _assetKeyWithImageLoaderKey:v3 decoratorIdentifier:0];
  if ([(TVImageProxy *)self allowsSubstitutionForOriginal])
  {
    v5 = [(TVImageProxy *)self _imageAssetPathWithAssetKey:v4];

    if (!v5)
    {
      v6 = +[TVAssetLibrary sharedInstance];
      v7 = [MEMORY[0x277CBEB98] setWithObject:v3];
      v8 = [v6 keyForAssetWithTags:v7 inGroupOfType:{-[TVImageProxy groupType](self, "groupType")}];

      if (v8)
      {
        v9 = v8;

        v4 = v9;
      }
    }
  }

  return v4;
}

- (id)_decoratedImageAssetKey
{
  v3 = [(TVImageProxy *)self _imageLoaderKey];
  v4 = [(TVImageProxy *)self _decoratorIdentifier];
  v5 = [(TVImageProxy *)self _assetKeyWithImageLoaderKey:v3 decoratorIdentifier:v4];

  return v5;
}

- (id)_originalImageAssetPath
{
  v3 = [(TVImageProxy *)self _originalImageAssetKey];
  v4 = [(TVImageProxy *)self _imageAssetPathWithAssetKey:v3];

  return v4;
}

- (id)_decoratedImageAssetPath
{
  v3 = [(TVImageProxy *)self _decoratedImageAssetKey];
  v4 = [(TVImageProxy *)self _imageAssetPathWithAssetKey:v3];

  return v4;
}

- (id)_imageAssetPathWithAssetKey:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = +[TVAssetLibrary sharedInstance];
    v6 = [v5 assetPathForKey:v4 inGroupOfType:{-[TVImageProxy groupType](self, "groupType")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)cancel
{
  if ([(TVImageProxy *)self isLoading])
  {
    v9 = self;
    if (v9->_imageDidWriteObserver)
    {
      v3 = [MEMORY[0x277CCAB98] defaultCenter];
      [v3 removeObserver:v9->_imageDidWriteObserver];

      imageDidWriteObserver = v9->_imageDidWriteObserver;
      v9->_imageDidWriteObserver = 0;
    }

    v5 = [(TVImageProxy *)v9 requestToken];

    if (v5)
    {
      v6 = [(TVImageProxy *)v9 imageLoader];
      v7 = [(TVImageProxy *)v9 requestToken];
      [v6 cancelLoad:v7];

      [(TVImageProxy *)v9 setRequestToken:0];
    }

    v8 = [(TVImageProxy *)v9 decoratorRequestToken];
    [v8 setStatusCancelled:1];

    [(TVImageProxy *)v9 setDecoratorRequestToken:0];
    [(TVImageProxy *)v9 setIsLoading:0];
    [(TVImageProxy *)v9 _callCompletionHandlerWithImage:0 error:0 finished:0];
    [(TVImageProxy *)v9 _callWriteCompletionHandlerWithPath:0 error:0 finished:0];
  }
}

- (void)_callCompletionHandlerWithImage:(id)a3 error:(id)a4 finished:(BOOL)a5
{
  v5 = a5;
  v11 = a3;
  v8 = a4;
  [_TVPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:0];
  v9 = [(TVImageProxy *)self completionHandler];
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
  v9 = [(TVImageProxy *)self writeCompletionHandler];
  v10 = [v9 copy];

  if (v10)
  {
    (v10)[2](v10, v11, v8, v5);
  }
}

- (IKNetworkRequestLoader)requestLoader
{
  WeakRetained = objc_loadWeakRetained(&self->_requestLoader);

  return WeakRetained;
}

- (void)loadWithWeakObject:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, v6);
  objc_initWeak(&from, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__TVImageProxy_TVMLKitAdditions__loadWithWeakObject_completionHandler___block_invoke;
  v9[3] = &unk_279D6F668;
  objc_copyWeak(&v11, &from);
  objc_copyWeak(&v12, &location);
  v8 = v7;
  v10 = v8;
  [(TVImageProxy *)self setCompletionHandler:v9];
  [(TVImageProxy *)self load];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __71__TVImageProxy_TVMLKitAdditions__loadWithWeakObject_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v11 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCompletionHandler:0];

  v9 = objc_loadWeakRetained((a1 + 48));
  if (v9)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, v9, v11, v7, a4);
    }
  }
}

@end