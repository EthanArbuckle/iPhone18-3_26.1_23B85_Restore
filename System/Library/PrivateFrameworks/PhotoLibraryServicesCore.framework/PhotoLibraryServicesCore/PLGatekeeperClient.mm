@interface PLGatekeeperClient
+ (id)sharedInstance;
- (BOOL)_inProcess_getLibrarySizesFromDB:(BOOL)b handler:(id)handler;
- (void)getLibrarySizesFromDB:(BOOL)b handler:(id)handler;
@end

@implementation PLGatekeeperClient

+ (id)sharedInstance
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__PLGatekeeperClient_sharedInstance__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = self;
  pl_dispatch_once(&sharedInstance_didCreate, v4);
  v2 = sharedInstance_client;

  return v2;
}

uint64_t __36__PLGatekeeperClient_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_client = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_inProcess_getLibrarySizesFromDB:(BOOL)b handler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = NSClassFromString(@"PHPhotoLibrary");
  v7 = v6;
  if (v6)
  {
    v8 = [v6 alloc];
    systemPhotoLibraryURL = [(objc_class *)v7 systemPhotoLibraryURL];
    v10 = [v8 initWithPhotoLibraryURL:systemPhotoLibraryURL];

    v23 = 0;
    v11 = [v10 openAndWaitWithUpgrade:0 error:&v23];
    v12 = v23;
    if (v11)
    {
      HIDWORD(v14) = qos_class_self() - 17;
      LODWORD(v14) = HIDWORD(v14);
      v13 = v14 >> 2;
      if (v13 > 4)
      {
        v15 = 9;
      }

      else
      {
        v15 = qword_1AAA8F4B8[v13];
      }

      v17 = dispatch_get_global_queue(v15, 0);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __63__PLGatekeeperClient__inProcess_getLibrarySizesFromDB_handler___block_invoke;
      v19[3] = &unk_1E7930570;
      v20 = v10;
      bCopy = b;
      v21 = handlerCopy;
      dispatch_async(v17, v19);
    }

    else
    {
      v16 = PLGatekeeperXPCGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v25 = "[PLGatekeeperClient _inProcess_getLibrarySizesFromDB:handler:]";
        v26 = 2112;
        v27 = v12;
        _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "%s Failed to open PHPhotoLibrary for the SPL, sending empty dictionary to handler: %@", buf, 0x16u);
      }

      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F8]);
    }
  }

  return v7 != 0;
}

void __63__PLGatekeeperClient__inProcess_getLibrarySizesFromDB_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6 = 0;
  v4 = [v2 getLibrarySizesFromDB:v3 error:&v6];
  v5 = v6;
  (*(*(a1 + 40) + 16))();
}

- (void)getLibrarySizesFromDB:(BOOL)b handler:(id)handler
{
  bCopy = b;
  handlerCopy = handler;
  v6 = +[PLAssetsdClient sharedSystemLibraryAssetsdClient];
  libraryInternalClient = [v6 libraryInternalClient];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PLGatekeeperClient_getLibrarySizesFromDB_handler___block_invoke;
  v9[3] = &unk_1E7930C78;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [libraryInternalClient getLibrarySizesFromDB:bCopy completionHandler:v9];
}

@end