@interface VUIMPDeviceMediaLibrary
+ (BOOL)_isInitialUpdateInProgress;
+ (BOOL)_isUpdateInProgress;
- (BOOL)forceFailToSyncLibrary;
- (BOOL)isInitialUpdateInProgress;
- (BOOL)isUpdating;
- (VUIMPDeviceMediaLibrary)initWithIdentifier:(id)a3 type:(unint64_t)a4 manager:(id)a5;
- (VUIMPDeviceMediaLibrary)initWithManager:(id)a3;
- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5;
- (id)_imageLoadParamsForImageLoaderObject:(id)a3;
- (id)_imageLoaderIdentifier;
- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4;
- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3;
- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4;
- (id)title;
- (void)_handleApplicationDidBecomeActiveNotification:(id)a3;
- (void)_handleApplicationWillResignActiveNotification:(id)a3;
- (void)_handleMediaLibraryIsUpdateInProgressDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)updateFromCloudWithReason:(int64_t)a3;
- (void)updateProgressWithCompletionHandler:(id)a3;
@end

@implementation VUIMPDeviceMediaLibrary

+ (BOOL)_isUpdateInProgress
{
  v2 = [MEMORY[0x1E69704E0] sharedCloudController];
  v3 = [v2 isUpdateInProgress];

  return v3;
}

+ (BOOL)_isInitialUpdateInProgress
{
  v2 = [MEMORY[0x1E69704E0] sharedCloudController];
  v3 = [v2 isInitialImport];

  return v3;
}

- (VUIMPDeviceMediaLibrary)initWithManager:(id)a3
{
  v4 = MEMORY[0x1E69705E8];
  v5 = a3;
  v6 = [v4 defaultMediaLibrary];
  v7 = [[VUIMPMediaLibrary alloc] initWithMPMediaLibrary:v6 type:0 manager:v5];
  v8 = [(VUIMediaLibrary *)v7 identifier];
  v20.receiver = self;
  v20.super_class = VUIMPDeviceMediaLibrary;
  v9 = [(VUIMediaLibrary *)&v20 initWithIdentifier:v8 type:[(VUIMediaLibrary *)v7 type] manager:v5];

  if (v9)
  {
    objc_storeStrong(&v9->_mediaLibrary, v7);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rentalPlaybackStartDatesToSave = v9->_rentalPlaybackStartDatesToSave;
    v9->_rentalPlaybackStartDatesToSave = v10;

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = *MEMORY[0x1E696F8B8];
    v14 = [MEMORY[0x1E69704E0] sharedCloudController];
    [v12 addObserver:v9 selector:sel__handleMediaLibraryIsUpdateInProgressDidChangeNotification_ name:v13 object:v14];

    [v12 addObserver:v9 selector:sel__handleMediaLibraryContentsDidChangeNotification_ name:@"VUIMediaLibraryContentsDidChangeNotification" object:v9->_mediaLibrary];
    v15 = *MEMORY[0x1E69DDAB0];
    v16 = [MEMORY[0x1E69DC668] sharedApplication];
    [v12 addObserver:v9 selector:sel__handleApplicationDidBecomeActiveNotification_ name:v15 object:v16];

    v17 = *MEMORY[0x1E69DDBC8];
    v18 = [MEMORY[0x1E69DC668] sharedApplication];
    [v12 addObserver:v9 selector:sel__handleApplicationWillResignActiveNotification_ name:v17 object:v18];

    [v12 addObserver:v9 selector:sel__accountsChanged_ name:@"VUIAuthenticationManagerAccountStoreDidChangeNotification" object:0];
  }

  return v9;
}

- (VUIMPDeviceMediaLibrary)initWithIdentifier:(id)a3 type:(unint64_t)a4 manager:(id)a5
{
  v6 = MEMORY[0x1E695DF30];
  v7 = *MEMORY[0x1E695D940];
  v8 = NSStringFromSelector(a2);
  [v6 raise:v7 format:{@"The %@ initializer is not available.", v8}];

  return 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (void)updateProgressWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"completionHandler"}];
  }

  v4 = [MEMORY[0x1E69704E0] sharedCloudController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__VUIMPDeviceMediaLibrary_updateProgressWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E8736128;
  v7 = v3;
  v5 = v3;
  [v4 loadUpdateProgressWithCompletionHandler:v6];
}

- (void)updateFromCloudWithReason:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *buf = 134217984;
    v10 = a3;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "DeviceMediaLibrary.updateFromCloud", "reason:%ld", buf, 0xCu);
  }

  [(VUIMPDeviceMediaLibrary *)self setDidFailUpdateMPCloudLibrary:0];
  v6 = [MEMORY[0x1E69704E0] sharedCloudController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__VUIMPDeviceMediaLibrary_updateFromCloudWithReason___block_invoke;
  v8[3] = &unk_1E872F758;
  v8[4] = self;
  [v6 updateJaliscoMediaLibraryWithReason:a3 == 1 completionHandler:v8];

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
  v2 = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v3 = [v2 title];

  return v3;
}

- (id)enqueueMediaItemEntityTypesFetchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v6 = [v5 enqueueMediaItemEntityTypesFetchWithCompletionHandler:v4];

  return v6;
}

- (id)enqueueFetchRequests:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v9 = [v8 enqueueFetchRequests:v7 completionHandler:v6];

  return v9;
}

- (id)saveMediaEntity:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v9 = [v8 saveMediaEntity:v7 completionHandler:v6];

  return v9;
}

- (id)_imageLoaderIdentifier
{
  v2 = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v3 = [v2 _imageLoaderIdentifier];

  return v3;
}

- (id)_imageLoadParamsForImageLoaderObject:(id)a3
{
  v4 = a3;
  v5 = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v6 = [v5 _imageLoadParamsForImageLoaderObject:v4];

  return v6;
}

- (id)_imageLoadOperationWithParams:(id)a3 scaleToSize:(CGSize)a4 cropToFit:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [(VUIMPDeviceMediaLibrary *)self mediaLibrary];
  v11 = [v10 _imageLoadOperationWithParams:v9 scaleToSize:v5 cropToFit:{width, height}];

  return v11;
}

- (void)_handleMediaLibraryIsUpdateInProgressDidChangeNotification:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(VUIMediaLibrary *)self manager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__VUIMPDeviceMediaLibrary__handleMediaLibraryIsUpdateInProgressDidChangeNotification___block_invoke;
  v6[3] = &unk_1E872F038;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v5 _enqueueCompletionQueueBlock:v6];

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

- (void)_handleApplicationDidBecomeActiveNotification:(id)a3
{
  v3 = [MEMORY[0x1E69704E0] sharedCloudController];
  [v3 becomeActive];
}

- (void)_handleApplicationWillResignActiveNotification:(id)a3
{
  v3 = [MEMORY[0x1E69704E0] sharedCloudController];
  [v3 resignActive];
}

@end