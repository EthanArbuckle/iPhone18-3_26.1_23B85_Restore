@interface VUIMPDeviceMediaLibrary
+ (BOOL)_isInitialUpdateInProgress;
+ (BOOL)_isUpdateInProgress;
- (BOOL)forceFailToSyncLibrary;
- (BOOL)isInitialUpdateInProgress;
- (BOOL)isUpdating;
- (VUIMPDeviceMediaLibrary)initWithIdentifier:(id)identifier type:(unint64_t)type manager:(id)manager;
- (VUIMPDeviceMediaLibrary)initWithManager:(id)manager;
- (id)_imageLoadOperationWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit;
- (id)_imageLoadParamsForImageLoaderObject:(id)object;
- (id)_imageLoaderIdentifier;
- (id)enqueueFetchRequests:(id)requests completionHandler:(id)handler;
- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)handler;
- (id)saveMediaEntity:(id)entity completionHandler:(id)handler;
- (id)title;
- (void)_handleApplicationDidBecomeActiveNotification:(id)notification;
- (void)_handleApplicationWillResignActiveNotification:(id)notification;
- (void)_handleMediaLibraryIsUpdateInProgressDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)updateFromCloudWithReason:(int64_t)reason;
- (void)updateProgressWithCompletionHandler:(id)handler;
@end

@implementation VUIMPDeviceMediaLibrary

+ (BOOL)_isUpdateInProgress
{
  mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
  isUpdateInProgress = [mEMORY[0x1E69704E0] isUpdateInProgress];

  return isUpdateInProgress;
}

+ (BOOL)_isInitialUpdateInProgress
{
  mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
  isInitialImport = [mEMORY[0x1E69704E0] isInitialImport];

  return isInitialImport;
}

- (VUIMPDeviceMediaLibrary)initWithManager:(id)manager
{
  v4 = MEMORY[0x1E69705E8];
  managerCopy = manager;
  defaultMediaLibrary = [v4 defaultMediaLibrary];
  v7 = [[VUIMPMediaLibrary alloc] initWithMPMediaLibrary:defaultMediaLibrary type:0 manager:managerCopy];
  identifier = [(VUIMediaLibrary *)v7 identifier];
  v20.receiver = self;
  v20.super_class = VUIMPDeviceMediaLibrary;
  v9 = [(VUIMediaLibrary *)&v20 initWithIdentifier:identifier type:[(VUIMediaLibrary *)v7 type] manager:managerCopy];

  if (v9)
  {
    objc_storeStrong(&v9->_mediaLibrary, v7);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rentalPlaybackStartDatesToSave = v9->_rentalPlaybackStartDatesToSave;
    v9->_rentalPlaybackStartDatesToSave = v10;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E696F8B8];
    mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
    [defaultCenter addObserver:v9 selector:sel__handleMediaLibraryIsUpdateInProgressDidChangeNotification_ name:v13 object:mEMORY[0x1E69704E0]];

    [defaultCenter addObserver:v9 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:v9->_mediaLibrary];
    v15 = *MEMORY[0x1E69DDAB0];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [defaultCenter addObserver:v9 selector:sel__handleApplicationDidBecomeActiveNotification_ name:v15 object:mEMORY[0x1E69DC668]];

    v17 = *MEMORY[0x1E69DDBC8];
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    [defaultCenter addObserver:v9 selector:sel__handleApplicationWillResignActiveNotification_ name:v17 object:mEMORY[0x1E69DC668]2];

    [defaultCenter addObserver:v9 selector:sel__accountsChanged_ name:@"VUIAuthenticationManagerAccountStoreDidChangeNotification" object:0];
  }

  return v9;
}

- (VUIMPDeviceMediaLibrary)initWithIdentifier:(id)identifier type:(unint64_t)type manager:(id)manager
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
  v4.super_class = VUIMPDeviceMediaLibrary;
  [(VUIMediaLibraryImageLoader *)&v4 dealloc];
}

- (BOOL)forceFailToSyncLibrary
{
  if (forceFailToSyncLibrary_onceToken != -1)
  {
    [VUIMPDeviceMediaLibrary forceFailToSyncLibrary];
  }

  return forceFailToSyncLibrary_force;
}

void __49__VUIMPDeviceMediaLibrary_forceFailToSyncLibrary__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  forceFailToSyncLibrary_force = [v0 BOOLForKey:@"forceFailToSyncLibrary"];
}

- (BOOL)isUpdating
{
  v2 = objc_opt_class();

  return [v2 _isUpdateInProgress];
}

- (BOOL)isInitialUpdateInProgress
{
  v2 = objc_opt_class();

  return [v2 _isInitialUpdateInProgress];
}

- (void)updateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
  }

  mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__VUIMPDeviceMediaLibrary_updateProgressWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8736128;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [mEMORY[0x1E69704E0] loadUpdateProgressWithCompletionHandler:v6];
}

- (void)updateFromCloudWithReason:(int64_t)reason
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *buf = 134217984;
    reasonCopy = reason;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DeviceMediaLibrary.updateFromCloud", "reason:%ld", buf, 0xCu);
  }

  [(VUIMPDeviceMediaLibrary *)self setDidFailUpdateMPCloudLibrary:0];
  mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__VUIMPDeviceMediaLibrary_updateFromCloudWithReason___block_invoke;
  v8[3] = &unk_1E872F758;
  v8[4] = self;
  [mEMORY[0x1E69704E0] updateJaliscoMediaLibraryWithReason:reason == 1 completionHandler:v8];

  v7 = VUISignpostLogObject();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DeviceMediaLibrary.updateFromCloud", "", buf, 2u);
  }
}

uint64_t __53__VUIMPDeviceMediaLibrary_updateFromCloudWithReason___block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) forceFailToSyncLibrary];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = a2;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_1E323F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Updating Jalisco Media Library with result %d defaults is %d", v6, 0xEu);
  }

  return [*(a1 + 32) setDidFailUpdateMPCloudLibrary:v4 | a2 ^ 1u];
}

- (id)title
{
  mediaLibrary = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  title = [mediaLibrary title];

  return title;
}

- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mediaLibrary = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v6 = [mediaLibrary enqueueMediaItemEntityTypesFetchWithCompletionHandler:handlerCopy];

  return v6;
}

- (id)enqueueFetchRequests:(id)requests completionHandler:(id)handler
{
  handlerCopy = handler;
  requestsCopy = requests;
  mediaLibrary = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v9 = [mediaLibrary enqueueFetchRequests:requestsCopy completionHandler:handlerCopy];

  return v9;
}

- (id)saveMediaEntity:(id)entity completionHandler:(id)handler
{
  handlerCopy = handler;
  entityCopy = entity;
  mediaLibrary = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v9 = [mediaLibrary saveMediaEntity:entityCopy completionHandler:handlerCopy];

  return v9;
}

- (id)_imageLoaderIdentifier
{
  mediaLibrary = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  _imageLoaderIdentifier = [mediaLibrary _imageLoaderIdentifier];

  return _imageLoaderIdentifier;
}

- (id)_imageLoadParamsForImageLoaderObject:(id)object
{
  objectCopy = object;
  mediaLibrary = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v6 = [mediaLibrary _imageLoadParamsForImageLoaderObject:objectCopy];

  return v6;
}

- (id)_imageLoadOperationWithParams:(id)params scaleToSize:(CGSize)size cropToFit:(BOOL)fit
{
  fitCopy = fit;
  height = size.height;
  width = size.width;
  paramsCopy = params;
  mediaLibrary = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v11 = [mediaLibrary _imageLoadOperationWithParams:paramsCopy scaleToSize:fitCopy cropToFit:{width, height}];

  return v11;
}

- (void)_handleMediaLibraryIsUpdateInProgressDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  objc_initWeak(&location, self);
  manager = [(VUIMediaLibrary *)self manager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__VUIMPDeviceMediaLibrary__handleMediaLibraryIsUpdateInProgressDidChangeNotification___block_invoke;
  v6[3] = &unk_1E872F038;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [manager _enqueueCompletionQueueBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __86__VUIMPDeviceMediaLibrary__handleMediaLibraryIsUpdateInProgressDidChangeNotification___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6[0] = @"isUpdating";
    v2 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "_isUpdateInProgress")}];
    v7[0] = v2;
    v6[1] = @"isInitialUpdateInProgress";
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(objc_opt_class(), "_isInitialUpdateInProgress")}];
    v7[1] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"VUIDeviceMediaLibraryUpdateStateDidChangeNotification" object:WeakRetained userInfo:v4];
  }
}

- (void)_handleApplicationDidBecomeActiveNotification:(id)notification
{
  mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
  [mEMORY[0x1E69704E0] becomeActive];
}

- (void)_handleApplicationWillResignActiveNotification:(id)notification
{
  mEMORY[0x1E69704E0] = [MEMORY[0x1E69704E0] sharedCloudController];
  [mEMORY[0x1E69704E0] resignActive];
}

@end