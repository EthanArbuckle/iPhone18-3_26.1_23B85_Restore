@interface VUILayeredImageProxy
+ (id)_loadingQueue;
- (BOOL)isEqual:(id)equal;
- (BOOL)isImageAvailable;
- (VUILayeredImageProxy)initWithURL:(id)l groupType:(int64_t)type assetKey:(id)key;
- (id)_assetPathWithAssetKey:(id)key;
- (id)description;
- (unint64_t)hash;
- (void)cancel;
- (void)dealloc;
- (void)loadWithCompletion:(id)completion;
@end

@implementation VUILayeredImageProxy

- (VUILayeredImageProxy)initWithURL:(id)l groupType:(int64_t)type assetKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  v21.receiver = self;
  v21.super_class = VUILayeredImageProxy;
  v10 = [(VUILayeredImageProxy *)&v21 init];
  if (v10)
  {
    v11 = [lCopy copy];
    url = v10->_url;
    v10->_url = v11;

    v10->_groupType = type;
    v13 = [keyCopy copy];
    assetKey = v10->_assetKey;
    v10->_assetKey = v13;

    if (!v10->_assetKey)
    {
      absoluteString = [(NSURL *)v10->_url absoluteString];
      vui_SHA256String = [absoluteString vui_SHA256String];
      v17 = v10->_assetKey;
      v10->_assetKey = vui_SHA256String;
    }

    v18 = [[_TVURLSessionDownloadTaskWrapper alloc] initWithURL:v10->_url];
    downloadTaskWrapper = v10->_downloadTaskWrapper;
    v10->_downloadTaskWrapper = v18;

    v10->_cancelled = 0;
  }

  return v10;
}

- (void)dealloc
{
  [(VUILayeredImageProxy *)self cancel];
  v3.receiver = self;
  v3.super_class = VUILayeredImageProxy;
  [(VUILayeredImageProxy *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VUILayeredImageProxy;
  v4 = [(VUILayeredImageProxy *)&v8 description];
  v5 = [(VUILayeredImageProxy *)self url];
  v6 = [v3 stringWithFormat:@"%@ - %@", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v2 = [(VUILayeredImageProxy *)self url];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy url];
    v6 = [(VUILayeredImageProxy *)self url];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [equalCopy url];
      v8 = [(VUILayeredImageProxy *)self url];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)cancel
{
  if ([(VUILayeredImageProxy *)self isLoading])
  {
    [(_TVURLSessionDownloadTaskWrapper *)self->_downloadTaskWrapper cancel];
  }

  [(VUILayeredImageProxy *)self setCancelled:1];
}

- (BOOL)isImageAvailable
{
  assetKey = [(VUILayeredImageProxy *)self assetKey];
  v4 = [(VUILayeredImageProxy *)self _assetPathWithAssetKey:assetKey];
  v5 = [v4 length] != 0;

  return v5;
}

- (void)loadWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(VUILayeredImageProxy *)self isLoading])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"-loadWithCompletion: called on an already loading VUILayeredImageProxy"];
  }

  else
  {
    [(VUILayeredImageProxy *)self setCancelled:0];
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __43__VUILayeredImageProxy_loadWithCompletion___block_invoke;
    v24[3] = &unk_279E21F38;
    objc_copyWeak(&v26, &location);
    v24[4] = self;
    v25 = completionCopy;
    v5 = MEMORY[0x2743B7C30](v24);
    [VUIPagePerformanceController postNotificationForImageProxy:self withLoadingStatus:1 withError:0];
    assetKey = [(VUILayeredImageProxy *)self assetKey];
    v7 = [(VUILayeredImageProxy *)self _assetPathWithAssetKey:assetKey];
    if (v7 && ([MEMORY[0x277CCAA00] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:", v7), v8, v9))
    {
      (v5)[2](v5, v7, 0);
    }

    else
    {
      objc_initWeak(&from, self);
      v16 = MEMORY[0x277D85DD0];
      v17 = 3221225472;
      v18 = __43__VUILayeredImageProxy_loadWithCompletion___block_invoke_3;
      v19 = &unk_279E21F60;
      objc_copyWeak(&v22, &from);
      v20 = assetKey;
      v21 = v5;
      v10 = MEMORY[0x2743B7C30](&v16);
      v11 = [VUICoreConfiguration sharedInstance:v16];
      minimalSessionImageLoading = [v11 minimalSessionImageLoading];

      downloadTaskWrapper = self->_downloadTaskWrapper;
      if (minimalSessionImageLoading)
      {
        v14 = +[VUIURLImageLoader sharedInstance];
        sharedAMSUrlSession = [v14 sharedAMSUrlSession];
        [(_TVURLSessionDownloadTaskWrapper *)downloadTaskWrapper resumeWithCompletionHandler:v10 session:sharedAMSUrlSession];
      }

      else
      {
        [(_TVURLSessionDownloadTaskWrapper *)downloadTaskWrapper resumeWithCompletionHandler:v10];
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&from);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __43__VUILayeredImageProxy_loadWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [VUIPagePerformanceController postNotificationForImageProxy:WeakRetained withLoadingStatus:0 withError:v6];
  }

  v8 = [objc_opt_class() _loadingQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__VUILayeredImageProxy_loadWithCompletion___block_invoke_2;
  v12[3] = &unk_279E21F10;
  objc_copyWeak(&v16, (a1 + 48));
  v9 = *(a1 + 40);
  v14 = v5;
  v15 = v9;
  v13 = v6;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, v12);

  objc_destroyWeak(&v16);
}

void __43__VUILayeredImageProxy_loadWithCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && *(a1 + 48))
  {
    v7 = WeakRetained;
    v3 = *(a1 + 32);
    if (v3 || ([WeakRetained isCancelled] & 1) == 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-999 userInfo:0];
    }

    v5 = v4;
    v6 = 0;
    if (*(a1 + 40) && !v4)
    {
      v6 = [objc_alloc(MEMORY[0x277D755B8]) initWithContentsOfFile:*(a1 + 40)];
    }

    (*(*(a1 + 48) + 16))();

    WeakRetained = v7;
  }
}

void __43__VUILayeredImageProxy_loadWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_opt_class();
    v10 = (objc_opt_isKindOfClass() & 1) == 0 || [v7 statusCode] == 200;
    v11 = [v16 path];

    v12 = 0;
    if (v11 && v10)
    {
      v13 = +[VUIAssetLibrary sharedInstance];
      v14 = [v13 assetExpiryDateForKey:*(a1 + 32) inGroupOfType:{objc_msgSend(WeakRetained, "groupType")}];
      v15 = [v16 path];
      [v13 setImageAssetFromPath:v15 forKey:*(a1 + 32) inGroupOfType:0 expiryDate:v14];

      v12 = [v13 assetPathForKey:*(a1 + 32) inGroupOfType:{objc_msgSend(WeakRetained, "groupType")}];
    }

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)_loadingQueue
{
  if (_loadingQueue___once != -1)
  {
    +[VUILayeredImageProxy _loadingQueue];
  }

  v3 = _loadingQueue___loadingQueue;

  return v3;
}

void __37__VUILayeredImageProxy__loadingQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.videosuicore.VUILayeredImageProxy", 0);
  v1 = _loadingQueue___loadingQueue;
  _loadingQueue___loadingQueue = v0;

  v2 = _loadingQueue___loadingQueue;
  v3 = dispatch_get_global_queue(17, 0);
  dispatch_set_target_queue(v2, v3);
}

- (id)_assetPathWithAssetKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v5 = +[VUIAssetLibrary sharedInstance];
    v6 = [v5 assetPathForKey:keyCopy inGroupOfType:self->_groupType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end