@interface VUIMPMediaLibrary
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (unint64_t)_connectionStateFromMPMediaLibraryStatus:(int64_t)status;
+ (void)initialize;
- (VUIMPMediaLibrary)initWithIdentifier:(id)identifier type:(unint64_t)type manager:(id)manager;
- (VUIMPMediaLibrary)initWithMPMediaLibrary:(id)library type:(unint64_t)type manager:(id)manager;
- (id)_imageLoadOperationWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit;
- (id)_imageLoadParamsForImageLoaderObject:(id)object;
- (id)_imageLoaderIdentifier;
- (id)enqueueFetchRequests:(id)requests completionHandler:(id)handler;
- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)handler;
- (id)saveMediaEntity:(id)entity completionHandler:(id)handler;
- (id)title;
- (unint64_t)connectionState;
- (void)_enqueueProcessingBlock:(id)block;
- (void)_handleMediaLibraryStatusDidChangeNotification:(id)notification;
- (void)connectWithCompletionHandler:(id)handler progressHandler:(id)progressHandler;
- (void)dealloc;
- (void)setConnectionState:(unint64_t)state;
@end

@implementation VUIMPMediaLibrary

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x1E6970618];

    [v2 setFilteringDisabled:1];
  }
}

- (VUIMPMediaLibrary)initWithMPMediaLibrary:(id)library type:(unint64_t)type manager:(id)manager
{
  libraryCopy = library;
  managerCopy = manager;
  v11 = managerCopy;
  if (libraryCopy)
  {
    if (managerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"mediaLibrary"}];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"manager"}];
LABEL_3:
  v12 = [VUIMPMediaLibraryIdentifier alloc];
  uniqueIdentifier = [libraryCopy uniqueIdentifier];
  v14 = [(VUIMPMediaLibraryIdentifier *)v12 initWithIdentifier:uniqueIdentifier];

  v30.receiver = self;
  v30.super_class = VUIMPMediaLibrary;
  v15 = [(VUIMediaLibrary *)&v30 initWithIdentifier:v14 type:type manager:v11];
  if (v15)
  {
    v16 = dispatch_queue_create("com.apple.videosui.VUIMPMediaLibrary.serialProcessingQueue", 0);
    serialProcessingDispatchQueue = v15->_serialProcessingDispatchQueue;
    v15->_serialProcessingDispatchQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    serialOperationQueue = v15->_serialOperationQueue;
    v15->_serialOperationQueue = v18;

    [(NSOperationQueue *)v15->_serialOperationQueue setMaxConcurrentOperationCount:1];
    objc_storeStrong(&v15->_mediaLibrary, library);
    v15->_connectionState = [objc_opt_class() _connectionStateFromMPMediaLibraryStatus:{-[MPMediaLibrary status](v15->_mediaLibrary, "status")}];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:*MEMORY[0x1E696FBA8] object:v15->_mediaLibrary];
    [defaultCenter addObserver:v15 selector:sel__handleMediaLibraryStatusDidChangeNotification_ name:*MEMORY[0x1E696FBB0] object:v15->_mediaLibrary];
    mediaLibrary = v15->_mediaLibrary;
    v22 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5D6F8 forProperty:*MEMORY[0x1E696FA88]];
    [(MPMediaLibrary *)mediaLibrary addLibraryFilterPredicate:v22];

    v23 = v15->_mediaLibrary;
    v24 = MEMORY[0x1E695E110];
    v25 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E110] forProperty:*MEMORY[0x1E696F9F8]];
    [(MPMediaLibrary *)v23 addLibraryFilterPredicate:v25];

    v26 = v15->_mediaLibrary;
    v27 = [MEMORY[0x1E6970610] predicateWithValue:v24 forProperty:*MEMORY[0x1E696FA40]];
    [(MPMediaLibrary *)v26 addLibraryFilterPredicate:v27];

    [(MPMediaLibrary *)v15->_mediaLibrary beginGeneratingLibraryChangeNotifications];
    artworkDataSource = [(MPMediaLibrary *)v15->_mediaLibrary artworkDataSource];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [artworkDataSource setUsesFallbackCache:0];
    }
  }

  return v15;
}

- (VUIMPMediaLibrary)initWithIdentifier:(id)identifier type:(unint64_t)type manager:(id)manager
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIMPMediaLibrary;
  [(VUIMediaLibraryImageLoader *)&v4 dealloc];
}

- (id)title
{
  mediaLibrary = [(VUIMPMediaLibrary *)self mediaLibrary];
  name = [mediaLibrary name];

  return name;
}

- (unint64_t)connectionState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectionState = selfCopy->_connectionState;
  objc_sync_exit(selfCopy);

  return connectionState;
}

- (void)setConnectionState:(unint64_t)state
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_connectionState != state)
  {
    [(VUIMPMediaLibrary *)obj willChangeValueForKey:@"connectionState"];
    obj->_connectionState = state;
    [(VUIMPMediaLibrary *)obj didChangeValueForKey:@"connectionState"];
  }

  objc_sync_exit(obj);
}

- (void)connectWithCompletionHandler:(id)handler progressHandler:(id)progressHandler
{
  handlerCopy = handler;
  progressHandlerCopy = progressHandler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke;
  v10[3] = &unk_1E8732B68;
  v11 = progressHandlerCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = progressHandlerCopy;
  [(VUIMPMediaLibrary *)self _enqueueProcessingBlock:v10];
}

void __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [VUIMPMediaLibraryConnectOperation alloc];
  v5 = [v3 mediaLibrary];
  v6 = [(VUIMPMediaLibraryConnectOperation *)v4 initWithMediaLibrary:v5];

  if (*(a1 + 32))
  {
    objc_initWeak(&location, v3);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke_2;
    v19[3] = &unk_1E8732B40;
    objc_copyWeak(&v21, &location);
    v20 = *(a1 + 32);
    [(VUIMPMediaLibraryConnectOperation *)v6 setProgressBlock:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  if (*(a1 + 40))
  {
    objc_initWeak(&location, v3);
    v7 = MEMORY[0x1E696AAE0];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke_4;
    v15 = &unk_1E872DE00;
    objc_copyWeak(&v18, &location);
    v8 = v6;
    v16 = v8;
    v17 = *(a1 + 40);
    v9 = [v7 blockOperationWithBlock:&v12];
    [v9 addDependency:{v8, v12, v13, v14, v15}];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 serialOperationQueue];
  [v10 addOperation:v6];

  if (v9)
  {
    v11 = [v3 serialOperationQueue];
    [v11 addOperation:v9];
  }
}

void __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke_2(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained manager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke_3;
  v6[3] = &unk_1E8732B18;
  v7 = *(a1 + 32);
  v8 = a2;
  [v5 _enqueueCompletionQueueBlock:v6];
}

void __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke_4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained manager];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke_5;
  v4[3] = &unk_1E872E580;
  v5 = a1[4];
  v6 = a1[5];
  [v3 _enqueueCompletionQueueBlock:v4];
}

void __66__VUIMPMediaLibrary_connectWithCompletionHandler_progressHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) success];
  v2 = [*(a1 + 32) error];
  (*(*(a1 + 40) + 16))();
}

- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__VUIMPMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8732B90;
  v5 = handlerCopy;
  v9 = v5;
  v10 = &v11;
  [(VUIMPMediaLibrary *)self _enqueueProcessingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __75__VUIMPMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [VUIMPMediaItemEntityTypesOperation alloc];
  v5 = [v3 mediaLibrary];
  v6 = [(VUIMPMediaItemEntityTypesOperation *)v4 initWithMPMediaLibrary:v5];

  v7 = MEMORY[0x1E696AAE0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__VUIMPMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_2;
  v16[3] = &unk_1E872DF40;
  v17 = v3;
  v18 = v6;
  v19 = *(a1 + 32);
  v8 = v6;
  v9 = v3;
  v10 = [v7 blockOperationWithBlock:v16];
  [v10 addDependency:v8];
  v11 = [v9 serialOperationQueue];
  [v11 addOperation:v8];

  v12 = [v9 serialOperationQueue];
  [v12 addOperation:v10];

  v13 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:v8];
  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

void __75__VUIMPMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] manager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__VUIMPMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_3;
  v3[3] = &unk_1E872E580;
  v4 = a1[5];
  v5 = a1[6];
  [v2 _enqueueCompletionQueueBlock:v3];
}

void __75__VUIMPMediaLibrary_enqueueMediaItemEntityTypesFetchWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = VUIErrorCancelled();
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) response];
    v2 = [*(a1 + 32) error];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)enqueueFetchRequests:(id)requests completionHandler:(id)handler
{
  requestsCopy = requests;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__VUIMPMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke;
  v12[3] = &unk_1E8732BB8;
  v8 = requestsCopy;
  v13 = v8;
  v9 = handlerCopy;
  v14 = v9;
  v15 = &v16;
  [(VUIMPMediaLibrary *)self _enqueueProcessingBlock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __60__VUIMPMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[VUIMPMediaEntitiesFetchOperation alloc] initWithMediaLibrary:v3 requests:*(a1 + 32)];
  v5 = MEMORY[0x1E696AAE0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__VUIMPMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_2;
  v14[3] = &unk_1E872DF40;
  v15 = v3;
  v16 = v4;
  v17 = *(a1 + 40);
  v6 = v4;
  v7 = v3;
  v8 = [v5 blockOperationWithBlock:v14];
  [v8 addDependency:v6];
  v9 = [v7 serialOperationQueue];
  [v9 addOperation:v6];

  v10 = [v7 serialOperationQueue];
  [v10 addOperation:v8];

  v11 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:v6];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __60__VUIMPMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_2(id *a1)
{
  v2 = [a1[4] manager];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__VUIMPMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_3;
  v3[3] = &unk_1E872E580;
  v4 = a1[5];
  v5 = a1[6];
  [v2 _enqueueCompletionQueueBlock:v3];
}

void __60__VUIMPMediaLibrary_enqueueFetchRequests_completionHandler___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = VUIErrorCancelled();
    v3 = 0;
  }

  else
  {
    v3 = [*(a1 + 32) responses];
    v2 = [*(a1 + 32) error];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)saveMediaEntity:(id)entity completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    manager = [(VUIMediaLibrary *)self manager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__VUIMPMediaLibrary_saveMediaEntity_completionHandler___block_invoke;
    v9[3] = &unk_1E872D7E0;
    v10 = handlerCopy;
    [manager _enqueueCompletionQueueBlock:v9];
  }

  v7 = [objc_alloc(MEMORY[0x1E69DF690]) initWithOperation:0];

  return v7;
}

- (id)_imageLoaderIdentifier
{
  mediaLibrary = [(VUIMPMediaLibrary *)self mediaLibrary];
  uniqueIdentifier = [mediaLibrary uniqueIdentifier];

  return uniqueIdentifier;
}

- (id)_imageLoadParamsForImageLoaderObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [VUIMediaEntityImageLoadParamsFactory imageLoadParamsWithMediaEntity:objectCopy imageType:0];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
LABEL_5:
    v5 = v4;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"The imageLoaderObject parameter must be an instance of VUIPlistMediaEntityImageLoadParams or conform to VUIPlistMediaEntityImageLoadParamsCreating"];
  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_imageLoadOperationWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit
{
  height = size.height;
  width = size.width;
  paramsCopy = params;
  height = [[VUIMPMediaEntityImageLoadOperation alloc] initWithParams:paramsCopy scaleToSize:width, height];

  return height;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if (automaticallyNotifiesObserversForKey____onceToken != -1)
  {
    +[VUIMPMediaLibrary automaticallyNotifiesObserversForKey:];
  }

  if ([automaticallyNotifiesObserversForKey____keysToNotifyManually containsObject:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___VUIMPMediaLibrary;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

void __58__VUIMPMediaLibrary_automaticallyNotifiesObserversForKey___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"connectionState", 0}];
  v1 = automaticallyNotifiesObserversForKey____keysToNotifyManually;
  automaticallyNotifiesObserversForKey____keysToNotifyManually = v0;
}

- (void)_handleMediaLibraryStatusDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  manager = [(VUIMediaLibrary *)self manager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__VUIMPMediaLibrary__handleMediaLibraryStatusDidChangeNotification___block_invoke;
  v6[3] = &unk_1E872F038;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [manager _enqueueCompletionQueueBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __68__VUIMPMediaLibrary__handleMediaLibraryStatusDidChangeNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained mediaLibrary];
    v3 = [v2 status];

    [v4 setConnectionState:{objc_msgSend(objc_opt_class(), "_connectionStateFromMPMediaLibraryStatus:", v3)}];
    WeakRetained = v4;
  }
}

+ (unint64_t)_connectionStateFromMPMediaLibraryStatus:(int64_t)status
{
  if ((status - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return status;
  }
}

- (void)_enqueueProcessingBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  serialProcessingDispatchQueue = [(VUIMPMediaLibrary *)self serialProcessingDispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__VUIMPMediaLibrary__enqueueProcessingBlock___block_invoke;
  block[3] = &unk_1E872E828;
  objc_copyWeak(&v9, &location);
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(serialProcessingDispatchQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__VUIMPMediaLibrary__enqueueProcessingBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

@end