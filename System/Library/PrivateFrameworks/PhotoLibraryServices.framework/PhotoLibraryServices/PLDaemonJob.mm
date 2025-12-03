@interface PLDaemonJob
+ (void)runDaemonSideWithXPCEvent:(id)event libraryServicesManager:(id)manager;
- (PLDaemonJob)initWithAssetsdClient:(id)client;
- (PLDaemonJob)initWithCoder:(id)coder;
- (PLLibraryServicesManager)libraryServicesManager;
- (id)description;
- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager;
- (id)newDictionaryReplyForObject:(id)object;
- (id)replyHandler;
- (void)encodeToXPCObject:(id)object;
- (void)encodeWithCoder:(id)coder;
- (void)runDaemonSide;
- (void)sendToAssetsd;
- (void)sendToAssetsdWithCompletionHandler:(id)handler;
- (void)setReplyHandler:(id)handler;
@end

@implementation PLDaemonJob

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  daemonOperation = [(PLDaemonJob *)self daemonOperation];
  daemonOperation2 = [(PLDaemonJob *)self daemonOperation];
  if (daemonOperation2 > 0x12)
  {
    v7 = @"ERR";
  }

  else
  {
    v7 = off_1E7570A40[daemonOperation2];
  }

  v8 = v7;
  v9 = [v3 stringWithFormat:@"%@[%ld:%@]", v4, daemonOperation, v8];

  return v9;
}

- (PLDaemonJob)initWithAssetsdClient:(id)client
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = PLDaemonJob;
  v5 = [(PLDaemonJob *)&v11 init];
  if (v5 && (PLIsAssetsd() & 1) == 0)
  {
    if (clientCopy)
    {
      v6 = clientCopy;
      assetsdClient = v5->_assetsdClient;
      v5->_assetsdClient = v6;
    }

    else
    {
      assetsdClient = [MEMORY[0x1E69BF2A0] systemLibraryURL];
      v8 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:assetsdClient];
      v9 = v5->_assetsdClient;
      v5->_assetsdClient = v8;
    }
  }

  return v5;
}

- (void)setReplyHandler:(id)handler
{
  v4 = [handler copy];
  replyHandler = self->_replyHandler;
  self->_replyHandler = v4;
}

- (id)replyHandler
{
  v2 = _Block_copy(self->_replyHandler);

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  objc_opt_isKindOfClass();
  v5 = xpc_dictionary_create(0, 0, 0);
  [(PLDaemonJob *)self encodeToXPCObject:v5];
  [coderCopy encodeXPCObject:v5 forKey:@"PL.job"];

  if ([(PLDaemonJob *)self shouldArchiveXPCToDisk])
  {
    [(PLDaemonJob *)self archiveXPCToDisk:v5];
  }
}

- (PLDaemonJob)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  objc_opt_isKindOfClass();
  v5 = coderCopy;
  v6 = [v5 decodeXPCObjectOfType:MEMORY[0x1E69E9E80] forKey:@"PL.job"];
  v7 = PLStringFromXPCDictionary();
  v8 = v7;
  if (v7 && (v9 = NSClassFromString(v7), [(objc_class *)v9 isSubclassOfClass:objc_opt_class()]))
  {
    userInfo = [v5 userInfo];
    libraryServicesManager = [userInfo libraryServicesManager];
    v12 = [[v9 alloc] initFromXPCObject:v6 libraryServicesManager:libraryServicesManager];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)newDictionaryReplyForObject:(id)object
{
  result = xpc_dictionary_create_reply(object);
  if (!result)
  {

    return xpc_dictionary_create(0, 0, 0);
  }

  return result;
}

- (void)encodeToXPCObject:(id)object
{
  objectCopy = object;
  xpc_dictionary_set_int64(objectCopy, "operation", [(PLDaemonJob *)self daemonOperation]);
  v5 = objc_opt_class();
  v7 = NSStringFromClass(v5);
  v6 = v7;
  xpc_dictionary_set_string(objectCopy, "daemonJobClass", [v7 UTF8String]);
}

- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager
{
  v31 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  managerCopy = manager;
  v8 = managerCopy;
  if (!objectCopy || !managerCopy)
  {
LABEL_12:

    self = 0;
    goto LABEL_13;
  }

  v24.receiver = self;
  v24.super_class = PLDaemonJob;
  v9 = [(PLDaemonJob *)&v24 init];
  self = v9;
  if (!v9)
  {
    goto LABEL_13;
  }

  objc_storeStrong(&v9->_libraryServicesManager, manager);
  int64 = xpc_dictionary_get_int64(objectCopy, "operation");
  if (int64 != [(PLDaemonJob *)self daemonOperation])
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = v20;
      daemonOperation = [(PLDaemonJob *)self daemonOperation];
      *buf = 138412802;
      v26 = v20;
      v27 = 2048;
      v28 = daemonOperation;
      v29 = 2048;
      v30 = int64;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Daemon operation invalid for %@. Expected %lld, got %lld", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E69BF360] transaction:"-[PLDaemonJob(DaemonCommunication) initFromXPCObject:libraryServicesManager:]"];
  transaction = self->_transaction;
  self->_transaction = v11;

  v13 = PLDaemonJobsGetLog();
  self->_signpostId = os_signpost_id_generate(v13);
  v14 = v13;
  v15 = v14;
  signpostId = self->_signpostId;
  if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    v17 = objc_opt_class();
    *buf = 138412546;
    v26 = v17;
    v27 = 2048;
    v28 = int64;
    v18 = v17;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, signpostId, "DaemonJob", "jobClass: %@, op: %lld", buf, 0x16u);
  }

LABEL_13:
  return self;
}

- (void)runDaemonSide
{
  v20[1] = *MEMORY[0x1E69E9840];
  xpcReply = [(PLDaemonJob *)self xpcReply];
  v4 = PLDaemonJobsGetLog();
  v5 = v4;
  if (xpcReply)
  {
    replyHandler = [(PLDaemonJob *)self replyHandler];
    if (replyHandler)
    {
      xpcReply2 = [(PLDaemonJob *)self xpcReply];
      if (xpcReply2)
      {
        v8 = [[PLDaemonJobReply alloc] initWithReply:xpcReply2];
        (*(replyHandler + 16))(replyHandler, 0, v8);
      }

      else
      {
        v11 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A578];
        v20[0] = @"No reply created.";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
        v8 = [v11 errorWithDomain:@"PLDaemonJob" code:-1 userInfo:v12];

        (*(replyHandler + 16))(replyHandler, v8, 0);
      }
    }

    v13 = v5;
    v14 = v13;
    signpostId = self->_signpostId;
    if (signpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v16 = [xpcReply description];
      v17 = 138412290;
      v18 = v16;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, signpostId, "DaemonJob", "reply: %@", &v17, 0xCu);
    }
  }

  else
  {
    v9 = v4;
    replyHandler = v9;
    v10 = self->_signpostId;
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, replyHandler, OS_SIGNPOST_INTERVAL_END, v10, "DaemonJob", "", &v17, 2u);
    }
  }
}

- (void)sendToAssetsdWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  assetsdClient = [(PLDaemonJob *)self assetsdClient];
  shouldRunOnDaemonSerialQueue = [(PLDaemonJob *)self shouldRunOnDaemonSerialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PLDaemonJob_DaemonCommunication__sendToAssetsdWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7570A20;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [assetsdClient sendDaemonJob:self shouldRunSerially:shouldRunOnDaemonSerialQueue replyHandler:v8];
}

uint64_t __71__PLDaemonJob_DaemonCommunication__sendToAssetsdWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3 != 0, a2);
  }

  return result;
}

- (void)sendToAssetsd
{
  assetsdClient = [(PLDaemonJob *)self assetsdClient];
  [assetsdClient sendDaemonJob:self shouldRunSerially:-[PLDaemonJob shouldRunOnDaemonSerialQueue](self replyHandler:{"shouldRunOnDaemonSerialQueue"), 0}];
}

- (PLLibraryServicesManager)libraryServicesManager
{
  libraryServicesManager = self->_libraryServicesManager;
  if (!libraryServicesManager)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDaemonJob.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"_libraryServicesManager"}];

    libraryServicesManager = self->_libraryServicesManager;
  }

  return libraryServicesManager;
}

+ (void)runDaemonSideWithXPCEvent:(id)event libraryServicesManager:(id)manager
{
  eventCopy = event;
  managerCopy = manager;
  v6 = PLStringFromXPCDictionary();
  v7 = v6;
  if (v6 && (v8 = NSClassFromString(v6), [(objc_class *)v8 isSubclassOfClass:objc_opt_class()]))
  {
    v9 = [[v8 alloc] initFromXPCObject:eventCopy libraryServicesManager:managerCopy];
  }

  else
  {
    v9 = 0;
  }

  [v9 runDaemonSide];
}

@end