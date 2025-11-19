@interface PLAssetsdResourceWriteOnlyService
- (PLAssetsdResourceWriteOnlyService)initWithLibraryServicesManager:(id)a3 connectionAuthorization:(id)a4;
- (void)saveAssetWithDataAndPorts:(id)a3 clientConnection:(id)a4 imageSurface:(id)a5 previewImageSurface:(id)a6 reply:(id)a7;
- (void)saveAssetWithDataAndPorts:(id)a3 imageSurface:(id)a4 previewImageSurface:(id)a5 reply:(id)a6;
@end

@implementation PLAssetsdResourceWriteOnlyService

- (void)saveAssetWithDataAndPorts:(id)a3 clientConnection:(id)a4 imageSurface:(id)a5 previewImageSurface:(id)a6 reply:(id)a7
{
  v63 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v14 processIdentifier];
    v20 = self;
    v21 = v17;
    v22 = a2;
    v23 = v14;
    v24 = v16;
    v25 = v15;
    v26 = v19;
    v27 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
    [v13 objectForKeyedSubscript:*MEMORY[0x1E69C0390]];
    v28 = v54 = v13;
    *buf = 134218498;
    *v60 = v26;
    v15 = v25;
    v16 = v24;
    v14 = v23;
    a2 = v22;
    v17 = v21;
    self = v20;
    *&v60[8] = 2114;
    *&v60[10] = v27;
    v61 = 2114;
    v62 = v28;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Received saveAssetWithDataAndPorts:clientConnection:imageSurface:previewImageSurface:reply: from %ld with job type %{public}@ uuid %{public}@", buf, 0x20u);

    v13 = v54;
  }

  v29 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "Begin saveAssetWithDataAndPorts", buf, 2u);
  }

  PLConsumeSandboxExtensionsForJobDictionary(v13);
  v30 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v31 = [v30 imageWriter];

  if (v13 && ([v31 imageWriterJob:v13 hasValidPathsWithConnection:v14] & 1) != 0)
  {
    v32 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
    if ([v32 isCameraClient])
    {
      v33 = v13;
      v34 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69C0410]];
      v35 = [v34 isEqualToString:*MEMORY[0x1E69C0480]];

      if (v35)
      {
        v36 = PLGatekeeperXPCGetLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Skipping Camera preview image job due to duplicate job from nebulad", buf, 2u);
        }

        (*(v17 + 2))(v17, 1, 0, 0, 0, 0);
        v13 = v33;
        goto LABEL_26;
      }
    }

    else
    {
      v33 = v13;
    }

    v43 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
    v44 = [v43 isClientInLimitedLibraryMode];

    v13 = v33;
    if (v44)
    {
      [v33 setObject:MEMORY[0x1E695E118] forKey:@"job.private.ClientInLimitedLibraryMode"];
      v45 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
      v46 = [v45 trustedCallerBundleID];

      v47 = [v46 length];
      v48 = PLGatekeeperXPCGetLog();
      v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      if (v47)
      {
        if (v49)
        {
          v50 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
          v51 = [v50 clientProcessIdentifier];
          *buf = 67109378;
          *v60 = v51;
          *&v60[4] = 2112;
          *&v60[6] = v46;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "Saving asset for limited library client (%d) %@", buf, 0x12u);
        }

        v13 = v33;
        [v33 setObject:v46 forKey:@"job.private.LimitedLibraryClientFetchFilterIdentifier"];
        v48 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
        [v33 setObject:v48 forKey:@"job.private.LimitedLibraryClientAuthorization"];
      }

      else
      {
        if (v49)
        {
          v52 = [(PLAssetsdResourceWriteOnlyService *)self connectionAuthorization];
          v53 = [v52 clientProcessIdentifier];
          *buf = 67109120;
          *v60 = v53;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "Saving asset for limited library client %d without client identifier", buf, 8u);
        }

        v13 = v33;
      }
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __119__PLAssetsdResourceWriteOnlyService_saveAssetWithDataAndPorts_clientConnection_imageSurface_previewImageSurface_reply___block_invoke;
    v55[3] = &unk_1E7574880;
    v56 = v17;
    [v31 saveAssetJob:v13 imageSurface:v15 previewImageSurface:v16 completionHandler:v55];
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
      *&v60[10] = v13;
      _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[%@] failed, rejecting invalid job %@", buf, 0x16u);
    }

    v39 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E69BFF48];
    v57 = *MEMORY[0x1E696A578];
    v58 = @"Invalid imagewriter job";
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v42 = [v39 errorWithDomain:v40 code:41001 userInfo:v41];

    (*(v17 + 2))(v17, 0, 0, 1, 0, v42);
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

- (void)saveAssetWithDataAndPorts:(id)a3 imageSurface:(id)a4 previewImageSurface:(id)a5 reply:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v14 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = v14;
  if (v14)
  {
    *(&v23 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: saveAssetWithDataAndPorts:imageSurface:previewImageSurface:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v23 + 1), (&v24 + 8));
  }

  v15 = [v10 objectForKey:*MEMORY[0x1E69C0410]];
  if (v15)
  {
    v16 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69C0458], *MEMORY[0x1E69C0488], 0}];
    if ([v16 containsObject:v15])
    {
      v17 = [MEMORY[0x1E696B0B8] currentConnection];
      [(PLAssetsdResourceWriteOnlyService *)self saveAssetWithDataAndPorts:v10 clientConnection:v17 imageSurface:v11 previewImageSurface:v12 reply:v13];
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A578];
    v27 = @"Missing image write job type";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = [v18 errorWithDomain:*MEMORY[0x1E69BFF48] code:41008 userInfo:v19];

    (*(v13 + 2))(v13, 0, 0, 0, 0, v16);
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

- (PLAssetsdResourceWriteOnlyService)initWithLibraryServicesManager:(id)a3 connectionAuthorization:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PLAssetsdResourceWriteOnlyService;
  v8 = [(PLAbstractLibraryServicesManagerService *)&v11 initWithLibraryServicesManager:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connectionAuthorization, a4);
  }

  return v9;
}

@end