@interface VUIImageProxy
+ (id)_imageDecoratorQueue;
+ (id)_imageReadWriteQueue;
- (BOOL)isEqual:(id)equal;
- (BOOL)isImageAvailable;
- (BOOL)isOfSameOriginAs:(id)as;
- (CGSize)dynamicProxyRequestedSize;
- (CGSize)expectedSize;
- (VUIImageProxy)initWithObject:(id)object imageLoader:(id)loader groupType:(int64_t)type;
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
- (void)_completeImageLoadWithImage:(id)image imagePath:(id)path error:(id)error assetKey:(id)key expiryDate:(id)date tags:(id)tags;
- (void)_decorateAndWriteImage:(id)image imagePath:(id)path scaleToSize:(CGSize)size cropToFit:(BOOL)fit scalingResult:(unint64_t)result assetKey:(id)key expiryDate:(id)date tags:(id)self0;
- (void)_imageDidWriteHandler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)load;
- (void)setIsLoading:(BOOL)loading;
- (void)setWriteToAssetLibrary:(BOOL)library;
@end

@implementation VUIImageProxy

- (VUIImageProxy)initWithObject:(id)object imageLoader:(id)loader groupType:(int64_t)type
{
  objectCopy = object;
  loaderCopy = loader;
  v15.receiver = self;
  v15.super_class = VUIImageProxy;
  v11 = [(VUIImageProxy *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, object);
    objc_storeStrong(&v12->_imageLoader, loader);
    *&v12->_writeToAssetLibrary = 257;
    v12->_imageDirection = 0;
    v12->_groupType = type;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12->_returnImageAfterWrittenToDisk = [standardUserDefaults BOOLForKey:@"ImageProxyReturnImageAfterWrittenToDisk"];
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
  v4.super_class = VUIImageProxy;
  [(VUIImageProxy *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = VUIImageProxy;
  v4 = [(VUIImageProxy *)&v9 description];
  object = [(VUIImageProxy *)self object];
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
      object = [(VUIImageProxy *)v5 object];
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

        v11 = [(VUIImageDecorator *)v8 isEqual:v9];

        if (!v11)
        {
          goto LABEL_23;
        }
      }

      imageLoader = [(VUIImageProxy *)v5 imageLoader];
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

        v16 = [(VUIImageDecorator *)v8 isEqual:v15];

        if (!v16)
        {
          goto LABEL_23;
        }
      }

      decorator = [(VUIImageProxy *)v5 decorator];
      decorator = self->_decorator;
      v8 = decorator;
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
  object = [(VUIImageProxy *)self object];
  v4 = [object hash];
  imageLoader = [(VUIImageProxy *)self imageLoader];
  v6 = [imageLoader hash] + v4;
  groupType = [(VUIImageProxy *)self groupType];

  return v6 + groupType;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  object = [(VUIImageProxy *)self object];
  imageLoader = [(VUIImageProxy *)self imageLoader];
  v7 = [v4 initWithObject:object imageLoader:imageLoader groupType:{-[VUIImageProxy groupType](self, "groupType")}];

  decorator = [(VUIImageProxy *)self decorator];
  [v7 setDecorator:decorator];

  [v7 setCacheOnLoad:{-[VUIImageProxy cacheOnLoad](self, "cacheOnLoad")}];
  [v7 setLoadSynchronouslyIfCached:{-[VUIImageProxy loadSynchronouslyIfCached](self, "loadSynchronouslyIfCached")}];
  [v7 setWriteToAssetLibrary:{-[VUIImageProxy writeToAssetLibrary](self, "writeToAssetLibrary")}];
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
  decorator = [(VUIImageProxy *)self decorator];
  [decorator expectedSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setWriteToAssetLibrary:(BOOL)library
{
  self->_writeToAssetLibrary = library;
  if (!library)
  {
    [(VUIImageProxy *)self setReturnImageAfterWrittenToDisk:0];
  }
}

- (void)setIsLoading:(BOOL)loading
{
  if (self->_isLoading != loading)
  {
    self->_isLoading = loading;
    if (!loading)
    {
      [(VUIImageProxy *)self setDecoratorRequestToken:0];
    }
  }
}

- (BOOL)isImageAvailable
{
  _decoratedImageAssetPath = [(VUIImageProxy *)self _decoratedImageAssetPath];
  v3 = [_decoratedImageAssetPath length] != 0;

  return v3;
}

- (void)load
{
  if (![(VUIImageProxy *)self isLoading])
  {
    [VUIPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:1 withError:0];
    objc_initWeak(location, self);
    _imageLoaderKey = [(VUIImageProxy *)self _imageLoaderKey];
    imageLoader = [(VUIImageProxy *)self imageLoader];
    if (objc_opt_respondsToSelector())
    {
      imageLoader2 = [(VUIImageProxy *)self imageLoader];
      object = [(VUIImageProxy *)self object];
      v7 = [imageLoader2 URLForObject:object];
    }

    else
    {
      v8 = MEMORY[0x277CBEBC0];
      imageLoader2 = [MEMORY[0x277CCACA8] stringWithFormat:@"imageKey://%@", _imageLoaderKey];
      v7 = [v8 URLWithString:imageLoader2];
    }

    if ([(VUIImageProxy *)self optimizedImageRendering]|| ([(VUIImageProxy *)self decorator], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      _originalImageAssetPath = [(VUIImageProxy *)self _originalImageAssetPath];
      if (!_originalImageAssetPath)
      {
        goto LABEL_13;
      }
    }

    else
    {
      _originalImageAssetPath = [(VUIImageProxy *)self _decoratedImageAssetPath];

      if (!_originalImageAssetPath)
      {
        goto LABEL_13;
      }
    }

    if (self->_writeToAssetLibrary)
    {
      if (self->_loadSynchronouslyIfCached)
      {
        _originalImageAssetKey = [VUIImage imageWithPath:_originalImageAssetPath cacheImmediately:self->_cacheOnLoad];
        [(VUIImageProxy *)self _callCompletionHandlerWithImage:_originalImageAssetKey error:0 finished:1];
        [(VUIImageProxy *)self _callWriteCompletionHandlerWithPath:_originalImageAssetPath error:0 finished:1];
LABEL_30:

        goto LABEL_31;
      }

      _imageDecoratorQueue = [objc_opt_class() _imageDecoratorQueue];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __21__VUIImageProxy_load__block_invoke;
      v51[3] = &unk_279E21BA8;
      objc_copyWeak(&v53, location);
      _originalImageAssetPath = _originalImageAssetPath;
      v52 = _originalImageAssetPath;
      dispatch_async(_imageDecoratorQueue, v51);

      v25 = &v53;
      goto LABEL_20;
    }

LABEL_13:
    [(VUIImageProxy *)self setIsLoading:1];
    if (_imageLoaderKey)
    {
      _originalImageAssetKey = [(VUIImageProxy *)self _originalImageAssetKey];
      _decoratedImageAssetKey = [(VUIImageProxy *)self _decoratedImageAssetKey];
      decorator = [(VUIImageProxy *)self decorator];

      if (decorator)
      {
        decorator2 = [(VUIImageProxy *)self decorator];
        [decorator2 loaderScaleToSize];
        v16 = v15;
        v18 = v17;

        decorator3 = [(VUIImageProxy *)self decorator];
        decorator = [decorator3 loaderCropToFit];

        _originalImageAssetPath2 = [(VUIImageProxy *)self _originalImageAssetPath];

        if (_originalImageAssetPath2)
        {
          v21 = +[VUIAssetLibrary sharedInstance];
          v22 = [v21 assetExpiryDateForKey:_originalImageAssetKey inGroupOfType:{-[VUIImageProxy groupType](self, "groupType")}];

          v23 = [MEMORY[0x277CBEB98] setWithObject:_imageLoaderKey];
          [(VUIImageProxy *)self _decorateAndWriteImage:0 imagePath:_originalImageAssetPath2 scaleToSize:decorator cropToFit:0 scalingResult:_decoratedImageAssetKey assetKey:v22 expiryDate:*&v16 tags:*&v18, v23];

          _originalImageAssetPath = _originalImageAssetPath2;
LABEL_29:

          goto LABEL_30;
        }

        _originalImageAssetPath = 0;
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
      v37 = _originalImageAssetKey;
      v38 = _imageLoaderKey;
      v41[1] = v16;
      v41[2] = v18;
      v42 = decorator;
      v39 = _decoratedImageAssetKey;
      v27 = MEMORY[0x2743B7C30](v36);
      imageLoader3 = [(VUIImageProxy *)self imageLoader];
      v29 = objc_opt_respondsToSelector();

      if (v29)
      {
        imageLoader4 = [(VUIImageProxy *)self imageLoader];
        object2 = [(VUIImageProxy *)self object];
        v32 = [imageLoader4 loadImageForObject:object2 scaleToSize:decorator cropToFit:-[VUIImageProxy imageDirection](self imageDirection:"imageDirection") completionHandler:{v27, *&v16, *&v18}];
      }

      else
      {
        imageLoader5 = [(VUIImageProxy *)self imageLoader];
        v34 = objc_opt_respondsToSelector();

        imageLoader4 = [(VUIImageProxy *)self imageLoader];
        [(VUIImageProxy *)self object];
        if (v34)
          object2 = {;
          [imageLoader4 loadImageForObject:object2 scaleToSize:decorator cropToFit:-[VUIImageProxy imageDirection](self imageDirection:"imageDirection") completionHandler:{v27, *&v16, *&v18}];
        }

        else
          object2 = {;
          [imageLoader4 loadImageForObject:object2 scaleToSize:decorator cropToFit:v27 completionHandler:{*&v16, *&v18}];
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

    _imageReadWriteQueue = [objc_opt_class() _imageReadWriteQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __21__VUIImageProxy_load__block_invoke_2;
    block[3] = &unk_279E217C0;
    objc_copyWeak(&v50, location);
    dispatch_async(_imageReadWriteQueue, block);

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

- (void)_decorateAndWriteImage:(id)image imagePath:(id)path scaleToSize:(CGSize)size cropToFit:(BOOL)fit scalingResult:(unint64_t)result assetKey:(id)key expiryDate:(id)date tags:(id)self0
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  pathCopy = path;
  keyCopy = key;
  dateCopy = date;
  tagsCopy = tags;
  decorator = [(VUIImageProxy *)self decorator];
  cacheOnLoad = self->_cacheOnLoad;
  v23 = objc_alloc_init(_VUIDecoratorRequest);
  [(VUIImageProxy *)self setDecoratorRequestToken:v23];
  objc_initWeak(location, self);
  _imageDecoratorQueue = [objc_opt_class() _imageDecoratorQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __111__VUIImageProxy__decorateAndWriteImage_imagePath_scaleToSize_cropToFit_scalingResult_assetKey_expiryDate_tags___block_invoke;
  block[3] = &unk_279E21D80;
  objc_copyWeak(v43, location);
  v35 = imageCopy;
  v36 = pathCopy;
  v44 = cacheOnLoad;
  v37 = v23;
  selfCopy = self;
  v39 = keyCopy;
  v40 = dateCopy;
  v43[1] = result;
  v43[2] = *&width;
  v43[3] = *&height;
  fitCopy = fit;
  v41 = tagsCopy;
  v42 = decorator;
  v25 = decorator;
  v26 = tagsCopy;
  v27 = dateCopy;
  v28 = keyCopy;
  v29 = v23;
  v30 = pathCopy;
  v31 = imageCopy;
  dispatch_async(_imageDecoratorQueue, block);

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

- (void)_completeImageLoadWithImage:(id)image imagePath:(id)path error:(id)error assetKey:(id)key expiryDate:(id)date tags:(id)tags
{
  imageCopy = image;
  pathCopy = path;
  errorCopy = error;
  keyCopy = key;
  dateCopy = date;
  tagsCopy = tags;
  if (pathCopy)
  {
    completionHandler = [(VUIImageProxy *)self completionHandler];

    if (completionHandler)
    {
      if (imageCopy)
      {
        v21 = imageCopy;
      }

      else
      {
        v21 = [VUIImage imageWithPath:pathCopy cacheImmediately:self->_cacheOnLoad];
      }

      v25 = v21;
      [(VUIImageProxy *)self _callCompletionHandlerWithImage:v21 error:0 finished:1];
    }

    selfCopy2 = self;
    v27 = pathCopy;
    v28 = 0;
    goto LABEL_12;
  }

  if (!imageCopy)
  {
    [(VUIImageProxy *)self _callCompletionHandlerWithImage:0 error:errorCopy finished:1];
    selfCopy2 = self;
    v27 = 0;
    v28 = errorCopy;
LABEL_12:
    [(VUIImageProxy *)selfCopy2 _callWriteCompletionHandlerWithPath:v27 error:v28 finished:1];
LABEL_13:
    [(VUIImageProxy *)self setIsLoading:0, defaultCenter, v35, v36, v37, v38];
    goto LABEL_14;
  }

  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  if (self->_writeToAssetLibrary)
  {
    v23 = isMainThread;
    writeCompletionHandler = [(VUIImageProxy *)self writeCompletionHandler];
    if (writeCompletionHandler)
    {

LABEL_17:
      objc_initWeak(&location, self);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v29 = objc_alloc_init(MEMORY[0x277CCABD8]);
      v35 = MEMORY[0x277D85DD0];
      v36 = 3221225472;
      v37 = __86__VUIImageProxy__completeImageLoadWithImage_imagePath_error_assetKey_expiryDate_tags___block_invoke;
      v38 = &unk_279E21DA8;
      objc_copyWeak(&v39, &location);
      v40 = v23;
      v30 = [defaultCenter addObserverForName:@"VUIAssetDidWriteNotification" object:keyCopy queue:v29 usingBlock:&v35];
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
    [v33 setImageAsset:imageCopy forKey:keyCopy inGroupOfType:-[VUIImageProxy groupType](self expiryDate:"groupType") tags:{dateCopy, tagsCopy}];
  }

  if (!self->_returnImageAfterWrittenToDisk)
  {
    [(VUIImageProxy *)self _callCompletionHandlerWithImage:imageCopy error:0 finished:1];
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

- (void)_imageDidWriteHandler:(id)handler
{
  selfCopy = self;
  userInfo = [handler userInfo];
  if ([(VUIImageProxy *)selfCopy isLoading])
  {
    v5 = [userInfo objectForKey:@"VUIAssetDidWriteNotificationAssetPathKey"];
    v6 = [userInfo objectForKey:@"VUIAssetDidWriteNotificationErrorKey"];
    [(VUIImageProxy *)selfCopy _callWriteCompletionHandlerWithPath:v5 error:v6 finished:1];
  }

  [(VUIImageProxy *)selfCopy setIsLoading:0];
}

- (id)_decoratorIdentifier
{
  decorator = [(VUIImageProxy *)self decorator];
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
    if ([(VUIImageProxy *)self imageDirection])
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
  imageLoader = [(VUIImageProxy *)self imageLoader];
  object = [(VUIImageProxy *)self object];
  v5 = [imageLoader imageKeyForObject:object];

  return v5;
}

- (id)_originalImageAssetKey
{
  _imageLoaderKey = [(VUIImageProxy *)self _imageLoaderKey];
  v4 = [(VUIImageProxy *)self _assetKeyWithImageLoaderKey:_imageLoaderKey decoratorIdentifier:0];
  if ([(VUIImageProxy *)self allowsSubstitutionForOriginal])
  {
    v5 = [(VUIImageProxy *)self _imageAssetPathWithAssetKey:v4];

    if (!v5)
    {
      v6 = +[VUIAssetLibrary sharedInstance];
      v7 = [MEMORY[0x277CBEB98] setWithObject:_imageLoaderKey];
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
  _imageLoaderKey = [(VUIImageProxy *)self _imageLoaderKey];
  _decoratorIdentifier = [(VUIImageProxy *)self _decoratorIdentifier];
  v5 = [(VUIImageProxy *)self _assetKeyWithImageLoaderKey:_imageLoaderKey decoratorIdentifier:_decoratorIdentifier];
  if ([v5 length] >= 0x100)
  {
    v6 = [v5 substringFromIndex:{objc_msgSend(v5, "length") - 255}];

    v5 = v6;
  }

  return v5;
}

- (id)_decoratedImageAssetPath
{
  _decoratedImageAssetKey = [(VUIImageProxy *)self _decoratedImageAssetKey];
  v4 = [(VUIImageProxy *)self _imageAssetPathWithAssetKey:_decoratedImageAssetKey];

  return v4;
}

- (id)_originalImageAssetPath
{
  _originalImageAssetKey = [(VUIImageProxy *)self _originalImageAssetKey];
  v4 = [(VUIImageProxy *)self _imageAssetPathWithAssetKey:_originalImageAssetKey];

  return v4;
}

- (id)_imageAssetPathWithAssetKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v5 = +[VUIAssetLibrary sharedInstance];
    v6 = [v5 assetPathForKey:keyCopy inGroupOfType:{-[VUIImageProxy groupType](self, "groupType")}];
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
    selfCopy = self;
    if (selfCopy->_imageDidWriteObserver)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter removeObserver:selfCopy->_imageDidWriteObserver];

      imageDidWriteObserver = selfCopy->_imageDidWriteObserver;
      selfCopy->_imageDidWriteObserver = 0;
    }

    requestToken = [(VUIImageProxy *)selfCopy requestToken];

    if (requestToken)
    {
      imageLoader = [(VUIImageProxy *)selfCopy imageLoader];
      requestToken2 = [(VUIImageProxy *)selfCopy requestToken];
      [imageLoader cancelLoad:requestToken2];

      [(VUIImageProxy *)selfCopy setRequestToken:0];
    }

    decoratorRequestToken = [(VUIImageProxy *)selfCopy decoratorRequestToken];
    [decoratorRequestToken setStatusCancelled:1];

    [(VUIImageProxy *)selfCopy setDecoratorRequestToken:0];
    [(VUIImageProxy *)selfCopy setIsLoading:0];
    [(VUIImageProxy *)selfCopy _callCompletionHandlerWithImage:0 error:0 finished:0];
    [(VUIImageProxy *)selfCopy _callWriteCompletionHandlerWithPath:0 error:0 finished:0];
  }
}

- (void)_callCompletionHandlerWithImage:(id)image error:(id)error finished:(BOOL)finished
{
  finishedCopy = finished;
  imageCopy = image;
  errorCopy = error;
  [VUIPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:0 withError:errorCopy];
  completionHandler = [(VUIImageProxy *)self completionHandler];
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
  writeCompletionHandler = [(VUIImageProxy *)self writeCompletionHandler];
  v10 = [writeCompletionHandler copy];

  if (v10)
  {
    (v10)[2](v10, pathCopy, errorCopy, finishedCopy);
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