@interface PLTCCObserver
- (PLTCCObserver)initWithLibraryBundleController:(id)controller;
- (id)_systemPhotoLibrary;
- (void)_handleTCCEvent:(unint64_t)event auth_record:(id)auth_record;
- (void)registerAsTCCObserver;
@end

@implementation PLTCCObserver

- (id)_systemPhotoLibrary
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:1 error:&v8];
  v3 = v8;
  v4 = PLBackendGetLog();
  databaseContext = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, databaseContext, OS_LOG_TYPE_INFO, "TCC Observer: Opened system photo library", buf, 2u);
    }

    databaseContext = [v2 databaseContext];
    v6 = [databaseContext newShortLivedLibraryWithName:"[PLTCCObserver _systemPhotoLibrary]"];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v3;
      _os_log_impl(&dword_19BF1F000, databaseContext, OS_LOG_TYPE_ERROR, "TCC Observer: Unable to open system photo library: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (void)_handleTCCEvent:(unint64_t)event auth_record:(id)auth_record
{
  v26 = *MEMORY[0x1E69E9840];
  auth_recordCopy = auth_record;
  v7 = tcc_authorization_record_get_service();
  v8 = tcc_service_get_CF_name();
  v9 = tcc_authorization_record_get_subject_identity();
  type = tcc_identity_get_type();
  authorization_value = tcc_authorization_record_get_authorization_value();

  authorization_value_type = tcc_service_get_authorization_value_type();
  identifier = tcc_identity_get_identifier();
  if (!type)
  {
    v14 = identifier;
    if (event == 3 && (([v8 isEqualToString:*MEMORY[0x1E69D55C8]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69D55D0])))
    {
      _systemPhotoLibrary = [(PLTCCObserver *)self _systemPhotoLibrary];
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = v14;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "TCC Observer: Deleting limited library for bundle: %s", buf, 0xCu);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __45__PLTCCObserver__handleTCCEvent_auth_record___block_invoke;
      v21[3] = &unk_1E7577B90;
      v22 = _systemPhotoLibrary;
      v23 = v14;
      v17 = _systemPhotoLibrary;
      [v17 performTransactionAndWait:v21];
    }

    if (PLIsChinaSKU())
    {
      if ((authorization_value & 0xFFFFFFFFFFFFFFFDLL) == 0 && authorization_value_type == 1)
      {
        if ([v8 isEqualToString:*MEMORY[0x1E69D5500]])
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14];
          v19 = [v18 isEqualToString:*MEMORY[0x1E69BFF18]];

          if (v19)
          {
            v20 = PLBackendGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Requesting exit due to detected contacts authorization change.", buf, 2u);
            }

            xpc_transaction_exit_clean();
          }
        }
      }
    }
  }
}

void __45__PLTCCObserver__handleTCCEvent_auth_record___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 40)];
  v2 = [*(a1 + 32) managedObjectContext];
  [PLLimitedLibraryFetchFilter deleteLimitedLibraryFetchFilterWithApplicationIdentifier:v3 inManagedObjectContext:v2];
}

- (void)registerAsTCCObserver
{
  objc_initWeak(&location, self);
  objc_copyWeak(&v2, &location);
  tcc_events_subscribe();
  objc_destroyWeak(&v2);
  objc_destroyWeak(&location);
}

void __38__PLTCCObserver_registerAsTCCObserver__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTCCEvent:a2 auth_record:v5];
}

- (PLTCCObserver)initWithLibraryBundleController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = PLTCCObserver;
  v6 = [(PLTCCObserver *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);

    v9 = dispatch_queue_create("com.apple.photos.tccObserver", v8);
    observerQueue = v6->_observerQueue;
    v6->_observerQueue = v9;

    objc_storeStrong(&v6->_libraryBundleController, controller);
    v11 = v6;
  }

  return v6;
}

@end