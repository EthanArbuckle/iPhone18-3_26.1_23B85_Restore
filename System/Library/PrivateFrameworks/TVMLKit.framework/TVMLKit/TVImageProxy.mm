@interface TVImageProxy
+ (id)_imageDecoratorQueue;
- (BOOL)isEqual:(id)equal;
- (BOOL)isImageAvailable;
- (BOOL)isOfSameOriginAs:(id)as;
- (CGSize)expectedSize;
- (IKNetworkRequestLoader)requestLoader;
- (TVImageProxy)initWithObject:(id)object imageLoader:(id)loader groupType:(int64_t)type;
- (id)_assetKeyWithImageLoaderKey:(id)key decoratorIdentifier:(id)identifier;
- (id)_decoratedImageAssetKey;
- (id)_decoratedImageAssetPath;
- (id)_decoratorIdentifier;
- (id)_imageAssetPathWithAssetKey:(id)key;
- (id)_imageLoaderKey;
- (id)_originalImageAssetKey;
- (id)_originalImageAssetPath;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_callCompletionHandlerWithImage:(id)image error:(id)error finished:(BOOL)finished;
- (void)_callWriteCompletionHandlerWithPath:(id)path error:(id)error finished:(BOOL)finished;
- (void)_completeImageLoadWithImage:(id)image imagePath:(id)path error:(id)error assetKey:(id)key expiryDate:(id)date tags:(id)tags requestRecord:(id)record;
- (void)_decorateAndWriteImage:(id)image imagePath:(id)path scaleToSize:(CGSize)size cropToFit:(BOOL)fit scalingResult:(unint64_t)result assetKey:(id)key expiryDate:(id)date tags:(id)self0 requestRecord:(id)self1;
- (void)_imageDidWriteHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)load;
- (void)loadWithWeakObject:(id)object completionHandler:(id)handler;
- (void)setIsLoading:(BOOL)loading;
@end

@implementation TVImageProxy

- (TVImageProxy)initWithObject:(id)object imageLoader:(id)loader groupType:(int64_t)type
{
  objectCopy = object;
  loaderCopy = loader;
  v14.receiver = self;
  v14.super_class = TVImageProxy;
  v11 = [(TVImageProxy *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, object);
    objc_storeStrong(&v12->_imageLoader, loader);
    v12->_writeToAssetLibrary = 1;
    v12->_imageDirection = 0;
    v12->_groupType = type;
  }

  return v12;
}

- (void)dealloc
{
  if (self->_imageDidWriteObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_imageDidWriteObserver];
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
  object = [(TVImageProxy *)self object];
  v6 = [object description];
  v7 = [v3 stringWithFormat:@"%@ - %@", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      object = [(TVImageProxy *)v5 object];
      object = self->_object;
      v8 = object;
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

      imageLoader = [(TVImageProxy *)v5 imageLoader];
      imageLoader = self->_imageLoader;
      v8 = imageLoader;
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

      decorator = [(TVImageProxy *)v5 decorator];
      decorator = self->_decorator;
      v8 = decorator;
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
  object = [(TVImageProxy *)self object];
  v4 = [object hash];
  imageLoader = [(TVImageProxy *)self imageLoader];
  v6 = [imageLoader hash] + v4;
  groupType = [(TVImageProxy *)self groupType];

  return v6 + groupType;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  object = [(TVImageProxy *)self object];
  imageLoader = [(TVImageProxy *)self imageLoader];
  v7 = [v4 initWithObject:object imageLoader:imageLoader groupType:{-[TVImageProxy groupType](self, "groupType")}];

  decorator = [(TVImageProxy *)self decorator];
  [v7 setDecorator:decorator];

  [v7 setCacheOnLoad:{-[TVImageProxy cacheOnLoad](self, "cacheOnLoad")}];
  [v7 setLoadSynchronouslyIfCached:{-[TVImageProxy loadSynchronouslyIfCached](self, "loadSynchronouslyIfCached")}];
  [v7 setWriteToAssetLibrary:{-[TVImageProxy writeToAssetLibrary](self, "writeToAssetLibrary")}];
  return v7;
}

- (BOOL)isOfSameOriginAs:(id)as
{
  asCopy = as;
  object = [asCopy object];
  if ([object isEqual:self->_object])
  {
    imageLoader = [asCopy imageLoader];
    v7 = [imageLoader isEqual:self->_imageLoader] && objc_msgSend(asCopy, "groupType") == self->_groupType && objc_msgSend(asCopy, "imageDirection") == self->_imageDirection;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)expectedSize
{
  decorator = [(TVImageProxy *)self decorator];
  [decorator expectedSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setIsLoading:(BOOL)loading
{
  if (self->_isLoading != loading)
  {
    self->_isLoading = loading;
    if (!loading)
    {
      [(TVImageProxy *)self setDecoratorRequestToken:0];
    }
  }
}

- (BOOL)isImageAvailable
{
  _decoratedImageAssetPath = [(TVImageProxy *)self _decoratedImageAssetPath];
  v3 = [_decoratedImageAssetPath length] != 0;

  return v3;
}

- (void)load
{
  if (![(TVImageProxy *)self isLoading])
  {
    [_TVPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:1];
    objc_initWeak(location, self);
    _imageLoaderKey = [(TVImageProxy *)self _imageLoaderKey];
    imageLoader = [(TVImageProxy *)self imageLoader];
    if (objc_opt_respondsToSelector())
    {
      imageLoader2 = [(TVImageProxy *)self imageLoader];
      object = [(TVImageProxy *)self object];
      v7 = [imageLoader2 URLForObject:object];
    }

    else
    {
      v8 = MEMORY[0x277CBEBC0];
      imageLoader2 = [MEMORY[0x277CCACA8] stringWithFormat:@"imageKey://%@", _imageLoaderKey];
      v7 = [v8 URLWithString:imageLoader2];
    }

    requestLoader = [(TVImageProxy *)self requestLoader];
    v10 = [requestLoader recordForResource:3 withInitiator:2];

    decorator = [(TVImageProxy *)self decorator];
    if (decorator)
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

      _imageDecoratorQueue = [objc_opt_class() _imageDecoratorQueue];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __20__TVImageProxy_load__block_invoke;
      v60[3] = &unk_279D6F2C8;
      objc_copyWeak(&v63, location);
      v12 = v12;
      v61 = v12;
      v62 = v10;
      dispatch_async(_imageDecoratorQueue, v60);

      v29 = &v63;
LABEL_19:
      objc_destroyWeak(v29);
      goto LABEL_29;
    }

    [(TVImageProxy *)self setIsLoading:1];
    if (!_imageLoaderKey)
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
    _originalImageAssetKey = [(TVImageProxy *)self _originalImageAssetKey];
    _decoratedImageAssetKey = [(TVImageProxy *)self _decoratedImageAssetKey];
    decorator2 = [(TVImageProxy *)self decorator];

    if (decorator2)
    {
      decorator3 = [(TVImageProxy *)self decorator];
      [decorator3 loaderScaleToSize];
      v18 = v17;
      v20 = v19;

      decorator4 = [(TVImageProxy *)self decorator];
      loaderCropToFit = [decorator4 loaderCropToFit];

      _originalImageAssetPath = [(TVImageProxy *)self _originalImageAssetPath];

      if (_originalImageAssetPath)
      {
        v24 = [MEMORY[0x277CCAD20] requestWithURL:v7];
        [v10 willSendRequest:v24];

        v25 = +[TVAssetLibrary sharedInstance];
        v26 = [v25 assetExpiryDateForKey:_originalImageAssetKey inGroupOfType:{-[TVImageProxy groupType](self, "groupType")}];

        v27 = [MEMORY[0x277CBEB98] setWithObject:_imageLoaderKey];
        [(TVImageProxy *)self _decorateAndWriteImage:0 imagePath:_originalImageAssetPath scaleToSize:loaderCropToFit cropToFit:0 scalingResult:_decoratedImageAssetKey assetKey:v26 expiryDate:*&v18 tags:*&v20 requestRecord:v27, v10];

        v12 = _originalImageAssetPath;
LABEL_28:

        v7 = v41;
        goto LABEL_29;
      }

      v12 = 0;
    }

    else
    {
      loaderCropToFit = 0;
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
    v45 = _originalImageAssetKey;
    v46 = _imageLoaderKey;
    v49[1] = v18;
    v49[2] = v20;
    v50 = loaderCropToFit;
    v47 = _decoratedImageAssetKey;
    v31 = MEMORY[0x26D6AFBB0](v44);
    imageLoader3 = [(TVImageProxy *)self imageLoader];
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      imageLoader4 = [(TVImageProxy *)self imageLoader];
      object2 = [(TVImageProxy *)self object];
      imageDirection = [(TVImageProxy *)self imageDirection];
      requestLoader2 = [(TVImageProxy *)self requestLoader];
      v38 = [imageLoader4 loadImageForObject:object2 scaleToSize:loaderCropToFit cropToFit:imageDirection imageDirection:requestLoader2 requestLoader:v31 completionHandler:{*&v18, *&v20}];
    }

    else
    {
      imageLoader5 = [(TVImageProxy *)self imageLoader];
      v40 = objc_opt_respondsToSelector();

      imageLoader4 = [(TVImageProxy *)self imageLoader];
      [(TVImageProxy *)self object];
      if (v40)
        object2 = {;
        [imageLoader4 loadImageForObject:object2 scaleToSize:loaderCropToFit cropToFit:-[TVImageProxy imageDirection](self imageDirection:"imageDirection") completionHandler:{v31, *&v18, *&v20}];
      }

      else
        object2 = {;
        [imageLoader4 loadImageForObject:object2 scaleToSize:loaderCropToFit cropToFit:v31 completionHandler:{*&v18, *&v20}];
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

- (void)_decorateAndWriteImage:(id)image imagePath:(id)path scaleToSize:(CGSize)size cropToFit:(BOOL)fit scalingResult:(unint64_t)result assetKey:(id)key expiryDate:(id)date tags:(id)self0 requestRecord:(id)self1
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  pathCopy = path;
  keyCopy = key;
  dateCopy = date;
  tagsCopy = tags;
  recordCopy = record;
  decorator = [(TVImageProxy *)self decorator];
  cacheOnLoad = self->_cacheOnLoad;
  v25 = objc_alloc_init(_TVDecoratorRequest);
  [(TVImageProxy *)self setDecoratorRequestToken:v25];
  objc_initWeak(location, self);
  _imageDecoratorQueue = [objc_opt_class() _imageDecoratorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __124__TVImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags_requestRecord___block_invoke;
  block[3] = &unk_279D6F3B0;
  objc_copyWeak(v46, location);
  v38 = imageCopy;
  v39 = pathCopy;
  v47 = cacheOnLoad;
  v46[1] = result;
  v46[2] = *&width;
  v46[3] = *&height;
  fitCopy = fit;
  v40 = v25;
  v41 = decorator;
  v42 = keyCopy;
  v43 = dateCopy;
  v44 = tagsCopy;
  v45 = recordCopy;
  v27 = recordCopy;
  v28 = tagsCopy;
  v29 = dateCopy;
  v30 = keyCopy;
  v31 = decorator;
  v32 = v25;
  v33 = pathCopy;
  v34 = imageCopy;
  dispatch_async(_imageDecoratorQueue, block);

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

- (void)_completeImageLoadWithImage:(id)image imagePath:(id)path error:(id)error assetKey:(id)key expiryDate:(id)date tags:(id)tags requestRecord:(id)record
{
  imageCopy = image;
  pathCopy = path;
  errorCopy = error;
  keyCopy = key;
  dateCopy = date;
  tagsCopy = tags;
  recordCopy = record;
  v22 = recordCopy;
  if (pathCopy)
  {
    completionHandler = [(TVImageProxy *)self completionHandler];

    if (completionHandler)
    {
      if (imageCopy)
      {
        v24 = imageCopy;
      }

      else
      {
        v24 = [TVImage imageWithPath:pathCopy cacheImmediately:self->_cacheOnLoad];
      }

      v31 = v24;
      [(TVImageProxy *)self _callCompletionHandlerWithImage:v24 error:0 finished:1];
    }

    [ITMLUtilities image:imageCopy didCompleteLoadingForCache:1 requestRecord:v22];
    selfCopy2 = self;
    v33 = pathCopy;
    v34 = 0;
LABEL_17:
    [(TVImageProxy *)selfCopy2 _callWriteCompletionHandlerWithPath:v33 error:v34 finished:1];
LABEL_18:
    [(TVImageProxy *)self setIsLoading:0];
    goto LABEL_19;
  }

  if (!imageCopy)
  {
    if (recordCopy)
    {
      v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:11 userInfo:0];
      [v22 didFailWithError:v35];
    }

    [(TVImageProxy *)self _callCompletionHandlerWithImage:0 error:errorCopy finished:1];
    selfCopy2 = self;
    v33 = 0;
    v34 = errorCopy;
    goto LABEL_17;
  }

  if (self->_writeToAssetLibrary && ([(TVImageProxy *)self writeCompletionHandler], v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v26 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v36 = @"ATVAssetDidWriteNotification";
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __99__TVImageProxy__completeImageLoadWithImage_imagePath_error_assetKey_expiryDate_tags_requestRecord___block_invoke;
    v38[3] = &unk_279D6F3D8;
    objc_copyWeak(&v39, &location);
    v27 = [defaultCenter addObserverForName:@"ATVAssetDidWriteNotification" object:keyCopy queue:v26 usingBlock:v38];
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
    [v30 setImageAsset:imageCopy forKey:keyCopy inGroupOfType:-[TVImageProxy groupType](self expiryDate:"groupType") tags:{dateCopy, tagsCopy}];
  }

  [ITMLUtilities image:imageCopy didCompleteLoadingForCache:1 requestRecord:v22, v36];
  [(TVImageProxy *)self _callCompletionHandlerWithImage:imageCopy error:0 finished:1];
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

- (void)_imageDidWriteHandler:(id)handler
{
  selfCopy = self;
  userInfo = [handler userInfo];
  if ([(TVImageProxy *)selfCopy isLoading])
  {
    v5 = [userInfo objectForKey:@"ATVAssetDidWriteNotificationAssetPathKey"];
    v6 = [userInfo objectForKey:@"ATVAssetDidWriteNotificationErrorKey"];
    [(TVImageProxy *)selfCopy _callWriteCompletionHandlerWithPath:v5 error:v6 finished:1];
  }

  [(TVImageProxy *)selfCopy setIsLoading:0];
}

- (id)_decoratorIdentifier
{
  decorator = [(TVImageProxy *)self decorator];
  decoratorIdentifier = [decorator decoratorIdentifier];

  return decoratorIdentifier;
}

- (id)_assetKeyWithImageLoaderKey:(id)key decoratorIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  if (keyCopy)
  {
    v8 = [MEMORY[0x277CCAB68] stringWithString:keyCopy];
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
    if (identifierCopy)
    {
      [v8 appendString:@"_"];
      [v8 appendString:identifierCopy];
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
  imageLoader = [(TVImageProxy *)self imageLoader];
  object = [(TVImageProxy *)self object];
  v5 = [imageLoader imageKeyForObject:object];

  return v5;
}

- (id)_originalImageAssetKey
{
  _imageLoaderKey = [(TVImageProxy *)self _imageLoaderKey];
  v4 = [(TVImageProxy *)self _assetKeyWithImageLoaderKey:_imageLoaderKey decoratorIdentifier:0];
  if ([(TVImageProxy *)self allowsSubstitutionForOriginal])
  {
    v5 = [(TVImageProxy *)self _imageAssetPathWithAssetKey:v4];

    if (!v5)
    {
      v6 = +[TVAssetLibrary sharedInstance];
      v7 = [MEMORY[0x277CBEB98] setWithObject:_imageLoaderKey];
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
  _imageLoaderKey = [(TVImageProxy *)self _imageLoaderKey];
  _decoratorIdentifier = [(TVImageProxy *)self _decoratorIdentifier];
  v5 = [(TVImageProxy *)self _assetKeyWithImageLoaderKey:_imageLoaderKey decoratorIdentifier:_decoratorIdentifier];

  return v5;
}

- (id)_originalImageAssetPath
{
  _originalImageAssetKey = [(TVImageProxy *)self _originalImageAssetKey];
  v4 = [(TVImageProxy *)self _imageAssetPathWithAssetKey:_originalImageAssetKey];

  return v4;
}

- (id)_decoratedImageAssetPath
{
  _decoratedImageAssetKey = [(TVImageProxy *)self _decoratedImageAssetKey];
  v4 = [(TVImageProxy *)self _imageAssetPathWithAssetKey:_decoratedImageAssetKey];

  return v4;
}

- (id)_imageAssetPathWithAssetKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v5 = +[TVAssetLibrary sharedInstance];
    v6 = [v5 assetPathForKey:keyCopy inGroupOfType:{-[TVImageProxy groupType](self, "groupType")}];
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
    selfCopy = self;
    if (selfCopy->_imageDidWriteObserver)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:selfCopy->_imageDidWriteObserver];

      imageDidWriteObserver = selfCopy->_imageDidWriteObserver;
      selfCopy->_imageDidWriteObserver = 0;
    }

    requestToken = [(TVImageProxy *)selfCopy requestToken];

    if (requestToken)
    {
      imageLoader = [(TVImageProxy *)selfCopy imageLoader];
      requestToken2 = [(TVImageProxy *)selfCopy requestToken];
      [imageLoader cancelLoad:requestToken2];

      [(TVImageProxy *)selfCopy setRequestToken:0];
    }

    decoratorRequestToken = [(TVImageProxy *)selfCopy decoratorRequestToken];
    [decoratorRequestToken setStatusCancelled:1];

    [(TVImageProxy *)selfCopy setDecoratorRequestToken:0];
    [(TVImageProxy *)selfCopy setIsLoading:0];
    [(TVImageProxy *)selfCopy _callCompletionHandlerWithImage:0 error:0 finished:0];
    [(TVImageProxy *)selfCopy _callWriteCompletionHandlerWithPath:0 error:0 finished:0];
  }
}

- (void)_callCompletionHandlerWithImage:(id)image error:(id)error finished:(BOOL)finished
{
  finishedCopy = finished;
  imageCopy = image;
  errorCopy = error;
  [_TVPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:0];
  completionHandler = [(TVImageProxy *)self completionHandler];
  v10 = [completionHandler copy];

  if (v10)
  {
    (v10)[2](v10, imageCopy, errorCopy, finishedCopy);
  }
}

- (void)_callWriteCompletionHandlerWithPath:(id)path error:(id)error finished:(BOOL)finished
{
  finishedCopy = finished;
  pathCopy = path;
  errorCopy = error;
  writeCompletionHandler = [(TVImageProxy *)self writeCompletionHandler];
  v10 = [writeCompletionHandler copy];

  if (v10)
  {
    (v10)[2](v10, pathCopy, errorCopy, finishedCopy);
  }
}

- (IKNetworkRequestLoader)requestLoader
{
  WeakRetained = objc_loadWeakRetained(&self->_requestLoader);

  return WeakRetained;
}

- (void)loadWithWeakObject:(id)object completionHandler:(id)handler
{
  objectCopy = object;
  handlerCopy = handler;
  objc_initWeak(&location, objectCopy);
  objc_initWeak(&from, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__TVImageProxy_TVMLKitAdditions__loadWithWeakObject_completionHandler___block_invoke;
  v9[3] = &unk_279D6F668;
  objc_copyWeak(&v11, &from);
  objc_copyWeak(&v12, &location);
  v8 = handlerCopy;
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