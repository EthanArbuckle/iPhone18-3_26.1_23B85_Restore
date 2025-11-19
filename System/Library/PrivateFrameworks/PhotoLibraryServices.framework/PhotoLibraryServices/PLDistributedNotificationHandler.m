@interface PLDistributedNotificationHandler
- (PLDistributedNotificationHandler)initWithLibraryBundleController:(id)a3;
- (void)_handleNotification:(id)a3;
- (void)_openSystemPhotoLibrary;
- (void)registerForNotifications;
@end

@implementation PLDistributedNotificationHandler

- (void)_openSystemPhotoLibrary
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:1 error:&v10];
  v3 = v10;
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Distributed notification handler: Opened system photo library";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v7, v8, v6, buf, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v3;
    v6 = "Distributed notification handler: Unable to open system photo library: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
    goto LABEL_6;
  }
}

- (void)_handleNotification:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = PLDescriptionFromXPCObject();
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "Got distributed notification: %@", &v15, 0xCu);
  }

  v7 = MEMORY[0x19EAF0BF0](v4);
  v8 = MEMORY[0x1E69E9E80];
  if (v7 != MEMORY[0x1E69E9E80])
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = PLDescriptionFromXPCObject();
      v15 = 138412290;
      v16 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unexpected notification: %@", &v15, 0xCu);
    }

LABEL_6:

    goto LABEL_7;
  }

  string = xpc_dictionary_get_string(v4, *MEMORY[0x1E69E9E40]);
  if (!strcmp(string, "com.apple.assetsd.cloudphoto"))
  {
    [(PLDistributedNotificationHandler *)self _handleCloudPhotoNotification];
    goto LABEL_7;
  }

  if (strcmp(string, "Application Uninstalled"))
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = string;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Unexpected event name: %s", &v15, 0xCu);
    }

    goto LABEL_6;
  }

  v12 = xpc_dictionary_get_value(v4, "UserInfo");
  if (MEMORY[0x19EAF0BF0]() == v8)
  {
    v13 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v13 = 0;
  }

  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v13;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Handling Application Uninstalled event for %{public}@.", &v15, 0xCu);
  }

  [(PLAppLibraryUninstallSupport *)self->_appLibraryUninstallSupport handleApplicationUninstalledNotification:v13];
LABEL_7:
}

- (void)registerForNotifications
{
  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__PLDistributedNotificationHandler_registerForNotifications__block_invoke;
  v4[3] = &unk_1E756BC40;
  objc_copyWeak(&v5, &location);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", notificationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __60__PLDistributedNotificationHandler_registerForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleNotification:v3];
}

- (PLDistributedNotificationHandler)initWithLibraryBundleController:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PLDistributedNotificationHandler;
  v6 = [(PLDistributedNotificationHandler *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);

    v9 = dispatch_queue_create("com.apple.photos.distnoted.handler", v8);
    notificationQueue = v6->_notificationQueue;
    v6->_notificationQueue = v9;

    objc_storeStrong(&v6->_libraryBundleController, a3);
    v11 = [[PLAppLibraryUninstallSupport alloc] initWithLibraryBundleController:v5];
    appLibraryUninstallSupport = v6->_appLibraryUninstallSupport;
    v6->_appLibraryUninstallSupport = v11;

    v13 = v6;
  }

  return v6;
}

@end