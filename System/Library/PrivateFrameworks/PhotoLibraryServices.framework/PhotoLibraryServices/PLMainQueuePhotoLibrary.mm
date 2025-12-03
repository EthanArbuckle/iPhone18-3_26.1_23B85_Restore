@interface PLMainQueuePhotoLibrary
+ (id)systemMainQueuePhotoLibrary;
+ (void)_resetSharedInstance;
- (PLMainQueuePhotoLibrary)initWithName:(const char *)name libraryBundle:(id)bundle options:(id)options;
- (void)dealloc;
@end

@implementation PLMainQueuePhotoLibrary

- (void)dealloc
{
  splChangedToken = self->_splChangedToken;
  if (splChangedToken)
  {
    notify_cancel(splChangedToken);
  }

  v4.receiver = self;
  v4.super_class = PLMainQueuePhotoLibrary;
  [(PLPhotoLibrary *)&v4 dealloc];
}

- (PLMainQueuePhotoLibrary)initWithName:(const char *)name libraryBundle:(id)bundle options:(id)options
{
  bundleCopy = bundle;
  optionsCopy = options;
  if (PLIsAssetsd())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMainQueuePhotoLibrary.m" lineNumber:30 description:@"Must not be used in assetsd"];
  }

  v16.receiver = self;
  v16.super_class = PLMainQueuePhotoLibrary;
  v11 = [(PLPhotoLibrary *)&v16 initWithName:name libraryBundle:bundleCopy options:optionsCopy];
  if (v11)
  {
    v12 = *MEMORY[0x1E69C0008];
    v13 = dispatch_get_global_queue(25, 0);
    notify_register_dispatch(v12, &v11->_splChangedToken, v13, &__block_literal_global_24969);
  }

  return v11;
}

+ (id)systemMainQueuePhotoLibrary
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sharedInstance)
  {
    systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    v4 = objc_alloc_init(PLPhotoLibraryOptions);
    [(PLPhotoLibraryOptions *)v4 setAutomaticallyMergesContext:1];
    [(PLPhotoLibraryOptions *)v4 setAutomaticallyPinToFirstFetch:0];
    v15 = 0;
    v5 = +[PLPhotoLibrary newPhotoLibraryWithName:loadedFromURL:options:error:](PLMainQueuePhotoLibrary, "newPhotoLibraryWithName:loadedFromURL:options:error:", "+[PLMainQueuePhotoLibrary systemMainQueuePhotoLibrary]", systemLibraryURL, v4, &v15);
    v6 = v15;
    v7 = sharedInstance;
    sharedInstance = v5;

    if (sharedInstance)
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = systemLibraryURL;
        v9 = "successfully loaded photo library systemMainQueuePhotoLibrary with url %@";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
        v12 = 12;
LABEL_7:
        _os_log_impl(&dword_19BF1F000, v10, v11, v9, buf, v12);
      }
    }

    else
    {
      v8 = PLBackendGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = systemLibraryURL;
        v18 = 2112;
        v19 = v6;
        v9 = "failed to load photo library systemMainQueuePhotoLibrary with url %@, %@";
        v10 = v8;
        v11 = OS_LOG_TYPE_ERROR;
        v12 = 22;
        goto LABEL_7;
      }
    }
  }

  objc_sync_exit(selfCopy);

  v13 = sharedInstance;

  return v13;
}

+ (void)_resetSharedInstance
{
  obj = self;
  objc_sync_enter(obj);
  v2 = sharedInstance;
  sharedInstance = 0;

  objc_sync_exit(obj);
}

@end