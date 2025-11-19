@interface RUIImageLoader
+ (id)sharedImageLoader;
- (BOOL)_locked_URLIsLoading:(id)a3;
- (BOOL)isLoadingImages;
- (CGImage)imageForURL:(id)a3 loadIfAbsent:(BOOL)a4;
- (RUIImageLoader)init;
- (id)notificationCenter;
- (void)_callCompletionsForURL:(id)a3 image:(CGImage *)a4 error:(id)a5;
- (void)_imageLoadFinished:(id)a3;
- (void)_loadImageURL:(id)a3 completion:(id)a4;
- (void)_loadingStatusChanged;
- (void)_locked_loadImageForURL:(id)a3;
- (void)_mainThread_postLoadingStatusChanged;
- (void)_postImageLoadedNotification:(id)a3;
- (void)_postLoadingStatusChanged;
- (void)_setImageData:(id)a3 forURL:(id)a4 error:(id)a5;
- (void)_startLoader;
- (void)imageForURL:(id)a3 scale:(double)a4 completion:(id)a5;
@end

@implementation RUIImageLoader

+ (id)sharedImageLoader
{
  v2 = sharedImageLoader_sharedImageLoader;
  if (!sharedImageLoader_sharedImageLoader)
  {
    v3 = objc_alloc_init(RUIImageLoader);
    v4 = sharedImageLoader_sharedImageLoader;
    sharedImageLoader_sharedImageLoader = v3;

    v2 = sharedImageLoader_sharedImageLoader;
  }

  return v2;
}

- (RUIImageLoader)init
{
  v21 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = RUIImageLoader;
  v2 = [(RUIImageLoader *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    queueLock = v2->_queueLock;
    v2->_queueLock = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    cacheLock = v2->_cacheLock;
    v2->_cacheLock = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    loadQueue = v2->_loadQueue;
    v2->_loadQueue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    loadsInProgress = v2->_loadsInProgress;
    v2->_loadsInProgress = v9;

    v11 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:100];
    imageCache = v2->_imageCache;
    v2->_imageCache = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:100];
    imageCacheLRU = v2->_imageCacheLRU;
    v2->_imageCacheLRU = v13;

    v15 = objc_opt_new();
    loadCompletions = v2->_loadCompletions;
    v2->_loadCompletions = v15;

    v20.__sig = 0;
    *v20.__opaque = 0;
    pthread_mutexattr_init(&v20);
    pthread_mutexattr_settype(&v20, 0);
    pthread_mutex_init(&v2->_startupLock, &v20);
    pthread_mutexattr_destroy(&v20);
    pthread_cond_init(&v2->_startupCondition, 0);
    pthread_mutex_lock(&v2->_startupLock);
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel__startLoader toTarget:v2 withObject:0];
    pthread_cond_wait(&v2->_startupCondition, &v2->_startupLock);
    pthread_mutex_unlock(&v2->_startupLock);
    v17 = v2;
  }

  return v2;
}

- (BOOL)isLoadingImages
{
  [(NSLock *)self->_queueLock lock];
  if ([(NSMutableArray *)self->_loadQueue count])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSMutableSet *)self->_loadsInProgress count]!= 0;
  }

  [(NSLock *)self->_queueLock unlock];
  return v3;
}

- (void)imageForURL:(id)a3 scale:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    [(NSLock *)self->_cacheLock lock];
    v10 = [(NSMutableDictionary *)self->_imageCache objectForKey:v8];
    if (v10)
    {
      v11 = v10;
      [(NSMutableArray *)self->_imageCacheLRU removeObject:v8];
      [(NSMutableArray *)self->_imageCacheLRU addObject:v8];
      [(NSLock *)self->_cacheLock unlock];
      v12 = [MEMORY[0x277D755B8] imageWithCGImage:v11 scale:0 orientation:a4];
      v9[2](v9, v12, 0);
    }

    else
    {
      v13 = MEMORY[0x277D85DD0];
      v14 = 3221225472;
      v15 = __47__RUIImageLoader_imageForURL_scale_completion___block_invoke;
      v16 = &unk_2782E8370;
      v18 = a4;
      v17 = v9;
      [(RUIImageLoader *)self _loadImageURL:v8 completion:&v13];

      [(NSLock *)self->_cacheLock unlock:v13];
    }
  }
}

void __47__RUIImageLoader_imageForURL_scale_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    a2 = [MEMORY[0x277D755B8] imageWithCGImage:a2 scale:0 orientation:*(a1 + 40)];
  }

  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v5);
}

- (CGImage)imageForURL:(id)a3 loadIfAbsent:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    [(NSLock *)self->_cacheLock lock];
    v7 = [(NSMutableDictionary *)self->_imageCache objectForKey:v6];
    if (v7)
    {
      [(NSMutableArray *)self->_imageCacheLRU removeObject:v6];
      [(NSMutableArray *)self->_imageCacheLRU addObject:v6];
    }

    else if (v4)
    {
      [(RUIImageLoader *)self _loadImageURL:v6 completion:0];
    }

    [(NSLock *)self->_cacheLock unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)notificationCenter
{
  notificationCenter = self->_notificationCenter;
  if (!notificationCenter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB98]);
    v5 = self->_notificationCenter;
    self->_notificationCenter = v4;

    notificationCenter = self->_notificationCenter;
  }

  return notificationCenter;
}

- (void)_mainThread_postLoadingStatusChanged
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:RUIImageLoaderLoadingStatusDidChangeNotification object:self];
}

- (void)_postLoadingStatusChanged
{
  [(NSTimer *)self->_loadStatusNotificationTimer invalidate];
  loadStatusNotificationTimer = self->_loadStatusNotificationTimer;
  self->_loadStatusNotificationTimer = 0;

  [(RUIImageLoader *)self performSelectorOnMainThread:sel__mainThread_postLoadingStatusChanged withObject:0 waitUntilDone:0];
}

- (void)_loadingStatusChanged
{
  if (!self->_loadStatusNotificationTimer)
  {
    self->_loadStatusNotificationTimer = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__postLoadingStatusChanged selector:0 userInfo:0 repeats:0.0];

    MEMORY[0x2821F96F8]();
  }
}

- (void)_startLoader
{
  self->_loaderRunLoop = CFRunLoopGetCurrent();
  v6.version = 0;
  memset(&v6.retain, 0, 56);
  v6.info = self;
  v6.perform = _loadImages;
  v3 = CFRunLoopSourceCreate(0, 0, &v6);
  self->_loaderSource = v3;
  v4 = *MEMORY[0x277CBF058];
  CFRunLoopAddSource(self->_loaderRunLoop, v3, *MEMORY[0x277CBF058]);
  pthread_mutex_lock(&self->_startupLock);
  pthread_cond_signal(&self->_startupCondition);
  pthread_mutex_unlock(&self->_startupLock);
  while (1)
  {
    v5 = objc_autoreleasePoolPush();
    CFRunLoopRunInMode(v4, 6.31139904e10, 1u);
    objc_autoreleasePoolPop(v5);
  }
}

- (BOOL)_locked_URLIsLoading:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableSet *)self->_loadsInProgress objectEnumerator];
  v6 = 0;
  while (1)
  {
    v7 = v6;
    v6 = [v5 nextObject];

    if (!v6)
    {
      break;
    }

    v8 = [v6 URL];
    v9 = [v8 isEqual:v4];

    if (v9)
    {
      v10 = 1;
      goto LABEL_9;
    }
  }

  v11 = [(NSMutableArray *)self->_loadQueue objectEnumerator];

  do
  {
    v12 = v6;
    v6 = [v11 nextObject];

    v10 = v6 != 0;
    if (!v6)
    {
      break;
    }

    v13 = [v6 URL];
    v14 = [v13 isEqual:v4];
  }

  while (!v14);
  v5 = v11;
LABEL_9:

  return v10;
}

- (void)_locked_loadImageForURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(RUIImageLoad);
  [(RUIImageLoad *)v5 setURL:v4];

  [(NSMutableArray *)self->_loadQueue addObject:v5];
}

- (void)_loadImageURL:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(NSLock *)self->_queueLock lock];
  v7 = v10;
  if (v6)
  {
    v8 = [(NSMutableDictionary *)self->_loadCompletions objectForKey:v10];
    if (!v8)
    {
      v8 = objc_opt_new();
      [(NSMutableDictionary *)self->_loadCompletions setObject:v8 forKey:v10];
    }

    v9 = _Block_copy(v6);
    [v8 addObject:v9];

    v7 = v10;
  }

  if ([(RUIImageLoader *)self _locked_URLIsLoading:v7])
  {
    [(NSLock *)self->_queueLock unlock];
  }

  else
  {
    [(RUIImageLoader *)self _locked_loadImageForURL:v10];
    [(NSLock *)self->_queueLock unlock];
    CFRunLoopSourceSignal(self->_loaderSource);
    CFRunLoopWakeUp(self->_loaderRunLoop);
  }
}

- (void)_callCompletionsForURL:(id)a3 image:(CGImage *)a4 error:(id)a5
{
  v8 = a5;
  loadCompletions = self->_loadCompletions;
  v10 = a3;
  v11 = [(NSMutableDictionary *)loadCompletions objectForKey:v10];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RUIImageLoader__callCompletionsForURL_image_error___block_invoke;
  block[3] = &unk_2782E8398;
  v16 = v8;
  v17 = a4;
  v15 = v11;
  v12 = v8;
  v13 = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);
  [(NSMutableDictionary *)self->_loadCompletions removeObjectForKey:v10];
}

void __53__RUIImageLoader__callCompletionsForURL_image_error___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_setImageData:(id)a3 forURL:(id)a4 error:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (_isInternalInstall())
  {
    v12 = _RUILoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Image load for %@ complete, error %@", buf, 0x16u);
    }
  }

  [(NSLock *)self->_cacheLock lock];
  if (!v9)
  {
    goto LABEL_11;
  }

  v13 = CGImageSourceCreateWithData(v9, 0);
  if (!v13)
  {
    v15 = @"%@, no image source";
    goto LABEL_10;
  }

  v14 = v13;
  if (CGImageSourceGetStatus(v13))
  {
    CFRelease(v14);
    v15 = @"%@, invalid image source";
LABEL_10:
    v16 = NSStringFromSelector(a2);
    NSLog(&v15->isa, v16);

LABEL_11:
    [(RUIImageLoader *)self _callCompletionsForURL:v10 image:0 error:v11];
    [(NSLock *)self->_cacheLock unlock];
    goto LABEL_12;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v14, 0, 0);
  CFRelease(v14);
  [(NSMutableDictionary *)self->_imageCache setObject:ImageAtIndex forKey:v10];
  [(NSMutableArray *)self->_imageCacheLRU addObject:v10];
  CGImageRelease(ImageAtIndex);
  v18 = [(NSMutableArray *)self->_imageCacheLRU count];
  if (v18 >= 0x65)
  {
    v19 = 0;
    v20 = v18 - 100;
    do
    {
      v21 = [(NSMutableArray *)self->_imageCacheLRU objectAtIndex:v19];
      [(NSMutableDictionary *)self->_imageCache removeObjectForKey:v21];

      ++v19;
    }

    while (v20 != v19);
    [(NSMutableArray *)self->_imageCacheLRU removeObjectsInRange:0, v20];
  }

  [(RUIImageLoader *)self _callCompletionsForURL:v10 image:ImageAtIndex error:0];
  [(NSLock *)self->_cacheLock unlock];
  [(RUIImageLoader *)self performSelectorOnMainThread:sel__postImageLoadedNotification_ withObject:v10 waitUntilDone:0];
LABEL_12:
}

- (void)_postImageLoadedNotification:(id)a3
{
  notificationCenter = self->_notificationCenter;
  if (notificationCenter)
  {
    v4 = RUIImageLoaderDidLoadImageNotification;
    v6 = [a3 absoluteString];
    v5 = [(__CFString *)v4 stringByAppendingString:v6];
    [(NSNotificationCenter *)notificationCenter postNotificationName:v5 object:0];
  }
}

- (void)_imageLoadFinished:(id)a3
{
  queueLock = self->_queueLock;
  v5 = a3;
  [(NSLock *)queueLock lock];
  [(NSMutableSet *)self->_loadsInProgress removeObject:v5];

  [(NSLock *)self->_queueLock unlock];

  [(RUIImageLoader *)self _loadingStatusChanged];
}

@end