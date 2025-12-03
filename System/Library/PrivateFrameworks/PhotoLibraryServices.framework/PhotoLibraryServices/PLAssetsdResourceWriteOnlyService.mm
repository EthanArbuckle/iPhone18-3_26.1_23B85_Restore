@interface PLAssetsdResourceWriteOnlyService
- (PLAssetsdResourceWriteOnlyService)initWithLibraryServicesManager:(id)manager connectionAuthorization:(id)authorization;
- (void)saveAssetWithDataAndPorts:(id)ports clientConnection:(id)connection imageSurface:(id)surface previewImageSurface:(id)imageSurface reply:(id)reply;
- (void)saveAssetWithDataAndPorts:(id)ports imageSurface:(id)surface previewImageSurface:(id)imageSurface reply:(id)reply;
@end

@implementation PLAssetsdResourceWriteOnlyService

- (void)saveAssetWithDataAndPorts:(id)ports clientConnection:(id)connection imageSurface:(id)surface previewImageSurface:(id)imageSurface reply:(id)reply
{
  v63 = *MEMORY[0x1E69E9840];
  portsCopy = ports;
  connectionCopy = connection;
  surfaceCopy = surface;
  imageSurfaceCopy = imageSurface;
  replyCopy = reply;
  v18 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    processIdentifier = [connectionCopy processIdentifier];
    selfCopy = self;
    v21 = replyCopy;
    v22 = a2;
    v23 = connectionCopy;
    v24 = imageSurfaceCopy;
    v25 = surfaceCopy;
    v26 = processIdentifier;
    v27 = [portsCopy objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
    [portsCopy objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
    v28 = v54 = portsCopy;
    *buf = 134218498;
    *v60 = v26;
    surfaceCopy = v25;
    imageSurfaceCopy = v24;
    connectionCopy = v23;
    a2 = v22;
    replyCopy = v21;
    self = selfCopy;
    *&v60[8] = 2114;
    *&v60[10] = v27;
    v61 = 2114;
    v62 = v28;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Received saveAssetWithDataAndPorts:clientConnection:imageSurface:previewImageSurface:reply: from %ld with job type %{public}@ uuid %{public}@", buf, 0x20u);

    portsCopy = v54;
  }

  v29 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "Begin saveAssetWithDataAndPorts", buf, 2u);
  }

  PLConsumeSandboxExtensionsForJobDictionary(portsCopy);
  libraryServicesManager = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  imageWriter = [libraryServicesManager imageWriter];

  if (portsCopy && ([imageWriter imageWriterJob:portsCopy hasValidPathsWithConnection:connectionCopy] & 1) != 0)
  {
    connectionAuthorization = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
    if ([connectionAuthorization isCameraClient])
    {
      v33 = portsCopy;
      v34 = [portsCopy objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
      v35 = [v34 isEqualToString:*MEMORY[0x1E69C0480]];

      if (v35)
      {
        v36 = PLGatekeeperXPCGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Skipping Camera preview image job due to duplicate job from nebulad", buf, 2u);
        }

        (*(replyCopy + 2))(replyCopy, 1, 0, 0, 0, 0);
        portsCopy = v33;
        goto LABEL_26;
      }
    }

    else
    {
      v33 = portsCopy;
    }

    connectionAuthorization2 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
    isClientInLimitedLibraryMode = [connectionAuthorization2 isClientInLimitedLibraryMode];

    portsCopy = v33;
    if (isClientInLimitedLibraryMode)
    {
      [v33 setObject:MEMORY[0x1E695E118] forKey:@"job.private.ClientInLimitedLibraryMode"];
      connectionAuthorization3 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
      trustedCallerBundleID = [connectionAuthorization3 trustedCallerBundleID];

      v47 = [trustedCallerBundleID length];
      connectionAuthorization5 = PLGatekeeperXPCGetLog();
      v49 = os_log_type_enabled(connectionAuthorization5, OS_LOG_TYPE_DEFAULT);
      if (v47)
      {
        if (v49)
        {
          connectionAuthorization4 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
          clientProcessIdentifier = [connectionAuthorization4 clientProcessIdentifier];
          *buf = 67109378;
          *v60 = clientProcessIdentifier;
          *&v60[4] = 2112;
          *&v60[6] = trustedCallerBundleID;
          _os_log_impl(&dword_19BF1F000, connectionAuthorization5, OS_LOG_TYPE_DEFAULT, "Saving asset for limited library client (%d) %@", buf, 0x12u);
        }

        portsCopy = v33;
        [v33 setObject:trustedCallerBundleID forKey:@"job.private.LimitedLibraryClientFetchFilterIdentifier"];
        connectionAuthorization5 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
        [v33 setObject:connectionAuthorization5 forKey:@"job.private.LimitedLibraryClientAuthorization"];
      }

      else
      {
        if (v49)
        {
          connectionAuthorization6 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
          clientProcessIdentifier2 = [connectionAuthorization6 clientProcessIdentifier];
          *buf = 67109120;
          *v60 = clientProcessIdentifier2;
          _os_log_impl(&dword_19BF1F000, connectionAuthorization5, OS_LOG_TYPE_DEFAULT, "Saving asset for limited library client %d without client identifier", buf, 8u);
        }

        portsCopy = v33;
      }
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __119__PLAssetsdResourceWriteOnlyService_saveAssetWithDataAndPorts_clientConnection_imageSurface_previewImageSurface_reply___block_invoke;
    v55[3] = &unk_1E7574880;
    v56 = replyCopy;
    [imageWriter saveAssetJob:portsCopy imageSurface:surfaceCopy previewImageSurface:imageSurfaceCopy completionHandler:v55];
  }

  else
  {
    v37 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(a2);
      *buf = 138412546;
      *v60 = v38;
      *&v60[8] = 2112;
      *&v60[10] = portsCopy;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[%@] failed, rejecting invalid job %@", buf, 0x16u);
    }

    v39 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E69BFF48];
    v57 = *MEMORY[0x1E696A578];
    v58 = @"Invalid imagewriter job";
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v42 = [v39 errorWithDomain:v40 code:41001 userInfo:v41];

    (*(replyCopy + 2))(replyCopy, 0, 0, 1, 0, v42);
  }

LABEL_26:
}

void __119__PLAssetsdResourceWriteOnlyService_saveAssetWithDataAndPorts_clientConnection_imageSurface_previewImageSurface_reply___block_invoke(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15[0] = 67109378;
    v15[1] = a2;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "End saveAssetWithDataAndPorts: success: %d, error: %@", v15, 0x12u);
  }

  v11 = v8;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 mutableCopy];
    PLImageWriterRemovePrivateKeysFromJobDictionary(v13);
    v14 = [v13 copy];
  }

  else
  {
    v14 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveAssetWithDataAndPorts:(id)ports imageSurface:(id)surface previewImageSurface:(id)imageSurface reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  portsCopy = ports;
  surfaceCopy = surface;
  imageSurfaceCopy = imageSurface;
  replyCopy = reply;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = enabled;
  if (enabled)
  {
    *(&v23 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: saveAssetWithDataAndPorts:imageSurface:previewImageSurface:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v23 + 1), (&v24 + 8));
  }

  v15 = [portsCopy objectForKey:*MEMORY[0x1E69C0410]];
  if (v15)
  {
    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69C0458], *MEMORY[0x1E69C0488], 0}];
    if ([v16 containsObject:v15])
    {
      currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
      [(PLAssetsdResourceWriteOnlyService *)self saveAssetWithDataAndPorts:portsCopy clientConnection:currentConnection imageSurface:surfaceCopy previewImageSurface:imageSurfaceCopy reply:replyCopy];
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"Missing image write job type";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v18 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v19];

    (*(replyCopy + 2))(replyCopy, 0, 0, 0, 0, v16);
  }

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v20 = PLRequestGetLog();
    v21 = v20;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v21, OS_SIGNPOST_INTERVAL_END, v24, "Received saveAssetWithDataAndPorts:clientConnection:imageSurface:previewImageSurface:reply: from %ld with job type %{public}@ uuid %{public}@", "%{public}s", buf, 0xCu);
    }
  }
}

- (PLAssetsdResourceWriteOnlyService)initWithLibraryServicesManager:(id)manager connectionAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v11.receiver = self;
  v11.super_class = PLAssetsdResourceWriteOnlyService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v11 initWithLibraryServicesManager:manager];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectionAuthorization, authorization);
  }

  return v9;
}

@end