@interface PLAssetsdService
- (BOOL)_prepareToRunDaemonJob:(id)job error:(id *)error;
- (NSString)connectionDescription;
- (NSString)description;
- (NSString)stateDescription;
- (PLAssetsdService)initWithConnection:(id)connection libraryBundleController:(id)controller daemonServices:(id)services;
- (id)CloudInternalService;
- (id)CloudService;
- (id)DebugService;
- (id)DemoService;
- (id)DiagnosticsService;
- (id)LibraryInternalService;
- (id)LibraryManagementService;
- (id)LibraryService;
- (id)MigrationService;
- (id)NonBindingDebugService;
- (id)NotificationService;
- (id)PhotoKitAddService;
- (id)PhotoKitService;
- (id)PrivacySupportService;
- (id)ResourceAvailabilityService;
- (id)ResourceInternalService;
- (id)ResourceService;
- (id)ResourceWriteOnlyService;
- (id)SyncService;
- (id)SystemLibraryURLReadOnlyService;
- (id)_photoLibrary;
- (id)_waitForLibraryServicesForDaemonJob;
- (id)bindToPhotoLibraryURL:(id)l sandboxExtension:(id)extension clientOptions:(id)options;
- (id)bindWithToken:(id)token;
- (id)clientDebugDescription;
- (id)makeInnerCloudInternalService;
- (id)makeInnerCloudService;
- (id)makeInnerDebugService;
- (id)makeInnerDemoService;
- (id)makeInnerDiagnosticsService;
- (id)makeInnerLibraryInternalService;
- (id)makeInnerLibraryManagementService;
- (id)makeInnerLibraryService;
- (id)makeInnerMigrationService;
- (id)makeInnerNonBindingDebugService;
- (id)makeInnerNotificationService;
- (id)makeInnerPhotoKitAddService;
- (id)makeInnerPhotoKitService;
- (id)makeInnerPrivacySupportService;
- (id)makeInnerResourceAvailabilityService;
- (id)makeInnerResourceInternalService;
- (id)makeInnerResourceService;
- (id)makeInnerResourceWriteOnlyService;
- (id)makeInnerSyncService;
- (id)makeInnerSystemLibraryURLReadOnlyService;
- (id)newCloudInternalService;
- (id)newCloudService;
- (id)newDebugService;
- (id)newDemoService;
- (id)newDiagnosticsService;
- (id)newLibraryInternalService;
- (id)newLibraryManagementService;
- (id)newLibraryService;
- (id)newMigrationService;
- (id)newNonBindingDebugService;
- (id)newNotificationService;
- (id)newPhotoKitAddService;
- (id)newPhotoKitService;
- (id)newPrivacySupportService;
- (id)newResourceAvailabilityService;
- (id)newResourceInternalService;
- (id)newResourceService;
- (id)newResourceWriteOnlyService;
- (id)newSyncService;
- (id)newSystemLibraryURLReadOnlyService;
- (id)permissionsForCloudInternalService;
- (id)permissionsForCloudService;
- (id)permissionsForDebugService;
- (id)permissionsForDemoService;
- (id)permissionsForDiagnosticsService;
- (id)permissionsForLibraryInternalService;
- (id)permissionsForLibraryManagementService;
- (id)permissionsForLibraryService;
- (id)permissionsForMigrationService;
- (id)permissionsForNonBindingDebugService;
- (id)permissionsForNotificationService;
- (id)permissionsForPhotoKitAddService;
- (id)permissionsForPhotoKitService;
- (id)permissionsForPrivacySupportService;
- (id)permissionsForResourceAvailabilityService;
- (id)permissionsForResourceInternalService;
- (id)permissionsForResourceService;
- (id)permissionsForResourceWriteOnlyService;
- (id)permissionsForSyncService;
- (id)permissionsForSystemLibraryURLReadOnlyService;
- (id)resourceDownloader;
- (id)serviceContextWithSelector:(SEL)selector;
- (void)PhotoKitAddService_applyChangesRequest:(id)request libraryToken:(id)token reply:(id)reply;
- (void)PhotoKitService_applyChangesRequest:(id)request libraryToken:(id)token reply:(id)reply;
- (void)bindToPhotoLibraryURL:(id)l sandboxExtension:(id)extension clientOptions:(id)options withReply:(id)reply;
- (void)collectCacheMetrics;
- (void)getCloudInternalServiceWithReply:(id)reply;
- (void)getCloudServiceWithReply:(id)reply;
- (void)getDebugServiceWithReply:(id)reply;
- (void)getDemoServiceWithReply:(id)reply;
- (void)getDiagnosticsServiceWithReply:(id)reply;
- (void)getLibraryInternalServiceWithReply:(id)reply;
- (void)getLibraryManagementServiceWithReply:(id)reply;
- (void)getLibraryServiceWithReply:(id)reply;
- (void)getMigrationServiceWithReply:(id)reply;
- (void)getNonBindingDebugServiceWithReply:(id)reply;
- (void)getNotificationServiceWithReply:(id)reply;
- (void)getPhotoKitAddServiceWithReply:(id)reply;
- (void)getPhotoKitServiceWithReply:(id)reply;
- (void)getPrivacySupportServiceWithReply:(id)reply;
- (void)getResourceAvailabilityServiceWithReply:(id)reply;
- (void)getResourceInternalServiceWithReply:(id)reply;
- (void)getResourceServiceWithReply:(id)reply;
- (void)getResourceWriteOnlyServiceWithReply:(id)reply;
- (void)getSyncServiceWithReply:(id)reply;
- (void)getSystemLibraryURLReadOnlyServiceWithReply:(id)reply;
- (void)handleInterruption;
- (void)handleInvalidation;
- (void)invalidateConnectionWithReason:(id)reason;
- (void)photoLibraryDeletedAtURL:(id)l reply:(id)reply;
- (void)runDaemonJob:(id)job isSerial:(BOOL)serial withReply:(id)reply;
@end

@implementation PLAssetsdService

- (id)clientDebugDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v4 = PLClientBundleIdentifierFromXPCConnection();

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PID: %d, bundle ID: %@", self->_remotePID, v4];

  return v5;
}

- (void)invalidateConnectionWithReason:(id)reason
{
  v23 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdService.m" lineNumber:1003 description:{@"Invalid parameter not satisfying: %@", @"reason != nil"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (WeakRetained)
  {
    v7 = PLIsErrorEqualToCode();
    v8 = PLIsErrorEqualToCode();
    if ((v7 & 1) == 0 && (v8 & 1) == 0)
    {
      v9 = objc_loadWeakRetained(&self->_connection);
      _unboostingRemoteObjectProxy = [v9 _unboostingRemoteObjectProxy];

      libraryURL = PLBackendGetLog();
      v12 = os_log_type_enabled(libraryURL, OS_LOG_TYPE_DEFAULT);
      if (_unboostingRemoteObjectProxy)
      {
        if (v12)
        {
          v13 = MEMORY[0x1E696AD98];
          v14 = objc_loadWeakRetained(&self->_connection);
          v15 = [v13 numberWithInt:{objc_msgSend(v14, "processIdentifier")}];
          *buf = 138543362;
          v22 = v15;
          _os_log_impl(&dword_19BF1F000, libraryURL, OS_LOG_TYPE_DEFAULT, "Sending libraryBecameUnavailable to PID %{public}@", buf, 0xCu);
        }

        libraryURL = [(PLAssetsdService *)self libraryURL];
        [_unboostingRemoteObjectProxy libraryBecameUnavailable:libraryURL reason:reasonCopy];
      }

      else if (v12)
      {
        v16 = MEMORY[0x1E696AD98];
        v17 = objc_loadWeakRetained(&self->_connection);
        v18 = [v16 numberWithInt:{objc_msgSend(v17, "processIdentifier")}];
        *buf = 138543362;
        v22 = v18;
        _os_log_impl(&dword_19BF1F000, libraryURL, OS_LOG_TYPE_DEFAULT, "No remoteObjectProxy for client PID %{public}@", buf, 0xCu);
      }
    }

    v19 = objc_loadWeakRetained(&self->_connection);
    [v19 invalidate];

    objc_storeWeak(&self->_connection, 0);
  }
}

- (BOOL)_prepareToRunDaemonJob:(id)job error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  jobCopy = job;
  v19[1] = MEMORY[0x1E69E9820];
  v19[2] = 3221225472;
  v19[3] = __49__PLAssetsdService__prepareToRunDaemonJob_error___block_invoke;
  v19[4] = &unk_1E7577B90;
  v19[5] = self;
  v19[6] = a2;
  pl_dispatch_once();
  if ([jobCopy daemonOperation] == 13 || objc_msgSend(jobCopy, "daemonOperation") == 16)
  {
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    [jobCopy setClientConnection:WeakRetained];
  }

  if (!self->_readyForDaemonJobs)
  {
    libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
    v11 = libraryServicesManager;
    if (libraryServicesManager)
    {
      v19[0] = 0;
      v12 = [libraryServicesManager awaitLibraryState:6 error:v19];
      v13 = v19[0];
      v14 = v13;
      if (v12)
      {
        self->_readyForDaemonJobs = 1;
      }

      else if (error)
      {
        v17 = v13;
        *error = v14;
      }
    }

    else
    {
      if (!error)
      {
LABEL_14:

        readyForDaemonJobs = self->_readyForDaemonJobs;
        goto LABEL_15;
      }

      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E69BFF48];
      v20 = *MEMORY[0x1E696A578];
      v21[0] = @"No library services manager";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *error = [v15 errorWithDomain:v16 code:41012 userInfo:v14];
    }

    goto LABEL_14;
  }

  readyForDaemonJobs = 1;
LABEL_15:

  return readyForDaemonJobs;
}

void __49__PLAssetsdService__prepareToRunDaemonJob_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 modelMigrator];
  v4 = [v3 pathManager];
  v5 = [PLCloudSharingJob recoveredEventsWithPathManager:v4];

  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = *MEMORY[0x1E69C0440];
    [v6 setObject:*MEMORY[0x1E69C0440] forKey:*MEMORY[0x1E69C0410]];
    [v6 setObject:v5 forKey:@"kPLImageWriterDaemonJobRecoveredEventsKey"];
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(*(a1 + 40));
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v7;
      v16 = 1024;
      v17 = [v5 count];
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "[%@] enqueing job %@ with %d recovered events", &v12, 0x1Cu);
    }

    v10 = [*(a1 + 32) libraryServicesManager];
    v11 = [v10 imageWriter];
    [v11 enqueueJob:v6];
  }
}

- (void)collectCacheMetrics
{
  v28 = *MEMORY[0x1E69E9840];
  cacheMetricsShellObject = [(PLAssetsdService *)self cacheMetricsShellObject];
  cacheMetricsCollectorServer = [cacheMetricsShellObject cacheMetricsCollectorServer];

  if (cacheMetricsCollectorServer)
  {
    libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
    resourceCacheMetrics = [libraryServicesManager resourceCacheMetrics];
    v8 = v7;
    cacheMetricsShellObject2 = [(PLAssetsdService *)self cacheMetricsShellObject];
    cacheMetricsCollectorServer2 = [cacheMetricsShellObject2 cacheMetricsCollectorServer];
    getSharedImageRequestCacheMetrics = [cacheMetricsCollectorServer2 getSharedImageRequestCacheMetrics];
    v12 = resourceCacheMetrics & 0xFFFFFFFF00000000;
    v13 = (getSharedImageRequestCacheMetrics + resourceCacheMetrics);
    v15 = (v14 + v8);
    v16 = v14 + (v8 & 0xFFFFFFFF00000000);
    v17 = getSharedImageRequestCacheMetrics + v12;
    v18 = (getSharedImageRequestCacheMetrics + v12) & 0xFFFFFFFF00000000;

    [libraryServicesManager setResourceCacheMetrics:{v18 | v13, v15 | v16 & 0xFFFFFFFF00000000}];
    v19 = PLCacheMetricsCollectorGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = 134218752;
      v21 = v13;
      v22 = 2048;
      v23 = HIDWORD(v17);
      v24 = 2048;
      v25 = v15;
      v26 = 2048;
      v27 = HIDWORD(v16);
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "CacheMetrics Aggregation done, current data is: [%ld, %ld, %ld, %ld]", &v20, 0x2Au);
    }
  }
}

- (void)PhotoKitAddService_applyChangesRequest:(id)request libraryToken:(id)token reply:(id)reply
{
  requestCopy = request;
  tokenCopy = token;
  replyCopy = reply;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__PLAssetsdService_PhotoKitAddService_applyChangesRequest_libraryToken_reply___block_invoke;
  v14[3] = &unk_1E7573C00;
  v14[4] = self;
  v15 = tokenCopy;
  v16 = requestCopy;
  v17 = replyCopy;
  v11 = requestCopy;
  v12 = replyCopy;
  v13 = tokenCopy;
  [PLAssetsdCrashRecoverySupport trackPerformChangesRequestInProgressWithBlock:v14];
}

void __78__PLAssetsdService_PhotoKitAddService_applyChangesRequest_libraryToken_reply___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) bindWithToken:*(a1 + 40)];
  if ([v6 isFailure])
  {
    v2 = *(a1 + 56);
    v3 = [v6 error];
    (*(v2 + 16))(v2, 0, v3);
  }

  else
  {
    v3 = [*(a1 + 32) PhotoKitAddService];
    if ([v3 isFailure])
    {
      v4 = *(a1 + 56);
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }

    else
    {
      v5 = [v3 result];
      [v5 applyChangesRequest:*(a1 + 48) reply:*(a1 + 56)];
    }
  }
}

- (void)PhotoKitService_applyChangesRequest:(id)request libraryToken:(id)token reply:(id)reply
{
  requestCopy = request;
  tokenCopy = token;
  replyCopy = reply;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__PLAssetsdService_PhotoKitService_applyChangesRequest_libraryToken_reply___block_invoke;
  v14[3] = &unk_1E7573C00;
  v14[4] = self;
  v15 = tokenCopy;
  v16 = requestCopy;
  v17 = replyCopy;
  v11 = requestCopy;
  v12 = replyCopy;
  v13 = tokenCopy;
  [PLAssetsdCrashRecoverySupport trackPerformChangesRequestInProgressWithBlock:v14];
}

void __75__PLAssetsdService_PhotoKitService_applyChangesRequest_libraryToken_reply___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) bindWithToken:*(a1 + 40)];
  if ([v6 isFailure])
  {
    v2 = *(a1 + 56);
    v3 = [v6 error];
    (*(v2 + 16))(v2, 0, v3);
  }

  else
  {
    v3 = [*(a1 + 32) PhotoKitService];
    if ([v3 isFailure])
    {
      v4 = *(a1 + 56);
      v5 = [v3 error];
      (*(v4 + 16))(v4, 0, v5);
    }

    else
    {
      v5 = [v3 result];
      [v5 applyChangesRequest:*(a1 + 48) reply:*(a1 + 56)];
    }
  }
}

- (id)bindWithToken:(id)token
{
  tokenCopy = token;
  v5 = tokenCopy;
  libraryURL = self->_libraryURL;
  if (libraryURL && ([tokenCopy url], v7 = objc_claimAutoreleasedReturnValue(), v8 = -[NSURL isEqual:](libraryURL, "isEqual:", v7), v7, v8))
  {
    v9 = MEMORY[0x1E69BF2D0];
    null = [MEMORY[0x1E695DFB0] null];
    v11 = [v9 successWithResult:null];
  }

  else
  {
    null = [v5 url];
    sandboxExtension = [v5 sandboxExtension];
    clientOptions = [v5 clientOptions];
    v11 = [(PLAssetsdService *)self bindToPhotoLibraryURL:null sandboxExtension:sandboxExtension clientOptions:clientOptions];
  }

  return v11;
}

- (id)bindToPhotoLibraryURL:(id)l sandboxExtension:(id)extension clientOptions:(id)options
{
  v87[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  v11 = MEMORY[0x1E69BF278];
  extensionCopy = extension;
  sharedBookmarkManager = [v11 sharedBookmarkManager];
  v75 = 0;
  v14 = [sharedBookmarkManager URLFromClientLibraryURL:lCopy sandboxExtension:extensionCopy error:&v75];

  v15 = v75;
  v74 = 0;
  if (v14)
  {
    v16 = [(PLPhotoLibraryBundleController *)self->_libraryBundleController lookupOrCreateBundleForLibraryURL:v14];
    libraryServicesManager = [v16 libraryServicesManager];
    v18 = [PLPhotoLibraryOpener autoCreateWellKnownPhotoLibraryIfNeededWithURL:v14 libraryServicesManager:libraryServicesManager wellKnownLibraryIdentifier:&v74];
  }

  if (self->_libraryURL && ([v14 isEqual:?] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdService.m" lineNumber:743 description:{@"Cannot update _libraryURL %@ to %@ after it is assigned", self->_libraryURL, lCopy}];
  }

  if ((v74 & 0xFFFFFFFFFFFFFFFELL) == 2 && ![(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization photosDataVaultEntitled])
  {
    if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization clientIsSandboxed])
    {
      v20 = PLBackendGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = v74;
        [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
        v23 = v22 = v15;
        clientProcessIdentifier = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization clientProcessIdentifier];
        *buf = 134218498;
        v81 = v21;
        v82 = 2112;
        v83 = v23;
        v84 = 1024;
        v85 = clientProcessIdentifier;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "bindToPhotoLibraryURL WILL FAIL for well known library %td because client '%@' (%d) is missing the photos data vault entitlement com.apple.private.security.storage.PhotosLibraries", buf, 0x1Cu);

        v15 = v22;
      }

      v19 = 0;
    }

    else
    {
      v69 = v15;
      v20 = NSStringFromPLErrorCode();
      v25 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E69BFF48];
      v27 = *MEMORY[0x1E696A278];
      v86[0] = *MEMORY[0x1E696A998];
      v86[1] = v27;
      v87[0] = v14;
      v87[1] = v20;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:2];
      v19 = [v25 errorWithDomain:v26 code:41030 userInfo:v28];

      v29 = PLBackendGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v81 = v74;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "bindToPhotoLibraryURL failed for well known library %td because client is missing the photos data vault entitlement com.apple.private.security.storage.PhotosLibraries", buf, 0xCu);
      }

      v15 = v69;
    }
  }

  else
  {
    v19 = 0;
  }

  v30 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v81 = lCopy;
    _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "Need to bind to URL: %@", buf, 0xCu);
  }

  if (!v19)
  {
    if (self->_libraryBundle)
    {
      v19 = 0;
      goto LABEL_61;
    }

    if (optionsCopy)
    {
      v31 = v15;
      v32 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69BFEF0]];
      bOOLValue = [v32 BOOLValue];

      if (bOOLValue)
      {
        [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization setClientLimitedLibraryCapable:1];
      }

      v34 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69BF3A0]];
      if (v34)
      {
        [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization setClientMainBundleSandboxedURL:v34];
      }

      v15 = v31;
    }

    if (v14)
    {
      if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization photoKitEntitled]|| [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientAuthorizedForTCCServicePhotos]|| [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientAuthorizedForTCCServicePhotosAdd])
      {
        v35 = [(PLPhotoLibraryBundleController *)self->_libraryBundleController openBundleAtLibraryURL:v14];
        libraryServicesManager2 = [v35 libraryServicesManager];
        obj = v35;
        if ([libraryServicesManager2 wellKnownPhotoLibraryIdentifier] == 1)
        {
          if (MEMORY[0x19EAEE230]())
          {
            [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization photosDataVaultEntitled];
          }

          goto LABEL_52;
        }

        isClientEntitledForPhotoKitOrPrivatePhotosTCC = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientEntitledForPhotoKitOrPrivatePhotosTCC];
        if (MEMORY[0x19EAEE230]())
        {
          if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization photosDataVaultEntitled]|| isClientEntitledForPhotoKitOrPrivatePhotosTCC)
          {
            goto LABEL_52;
          }
        }

        else if (isClientEntitledForPhotoKitOrPrivatePhotosTCC)
        {
LABEL_52:
          v52 = v15;
          objc_storeStrong(&self->_libraryURL, v14);
          objc_storeStrong(&self->_libraryBundle, obj);
          v53 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            libraryURL = self->_libraryURL;
            *buf = 138412290;
            v81 = libraryURL;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEBUG, "Bound to %@", buf, 0xCu);
          }

          v55 = [[PLAssetsdXPCUserInfo alloc] initWithLibraryServicesManager:libraryServicesManager2];
          WeakRetained = objc_loadWeakRetained(&self->_connection);
          [WeakRetained setUserInfo:v55];

          libraryBundleController = self->_libraryBundleController;
          libraryBundle = self->_libraryBundle;
          v73 = 0;
          LOBYTE(v55) = [(PLPhotoLibraryBundleController *)libraryBundleController bindAssetsdService:self toBundle:libraryBundle error:&v73];
          v59 = v73;
          v60 = v59;
          v19 = 0;
          if ((v55 & 1) == 0)
          {
            v19 = v59;
          }

          v15 = v52;
          if ([libraryServicesManager2 wellKnownPhotoLibraryIdentifier] == 1 && !-[PLAssetsdConnectionAuthorization isClientEntitledForPhotoKitOrPrivatePhotosTCC](self->_connectionAuthorization, "isClientEntitledForPhotoKitOrPrivatePhotosTCC"))
          {
            mEMORY[0x1E69BF2B0] = [MEMORY[0x1E69BF2B0] sharedInstance];
            [mEMORY[0x1E69BF2B0] reportPhotosUseWithClientAuthorization:self->_connectionAuthorization];

            mEMORY[0x1E69BF2B0]2 = [MEMORY[0x1E69BF2B0] sharedInstance];
            [mEMORY[0x1E69BF2B0]2 logPhotosAccessWithClientAuthorization:self->_connectionAuthorization];

            v15 = v52;
          }

          goto LABEL_60;
        }

        v70 = v15;
        v46 = MEMORY[0x1E696ABC0];
        v47 = *MEMORY[0x1E69BFF48];
        v48 = *MEMORY[0x1E696A588];
        v78[0] = *MEMORY[0x1E696A998];
        v78[1] = v48;
        v79[0] = v14;
        v79[1] = @"Library access denied, missing entitlement com.apple.private.tcc.allow = [ TCCServicePhotos ]";
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:2];
        v19 = [v46 errorWithDomain:v47 code:41009 userInfo:v49];
      }

      else
      {
        v70 = v15;
        v50 = MEMORY[0x1E696ABC0];
        v51 = *MEMORY[0x1E69BFF48];
        v76 = *MEMORY[0x1E696A578];
        v77 = @"Unauthorized access: client does not have valid TCC authorization";
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
        v19 = [v50 errorWithDomain:v51 code:41011 userInfo:v49];
        obj = 0;
        libraryServicesManager2 = 0;
      }

      v15 = v70;
      if (!v19)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v36 = v15;
      v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v38 = v37;
      if (lCopy)
      {
        [v37 setObject:lCopy forKeyedSubscript:*MEMORY[0x1E696A998]];
      }

      v39 = objc_alloc_init(MEMORY[0x1E696AC08]);
      buf[0] = 0;
      path = [(NSURL *)lCopy path];
      libraryServicesManager2 = v39;
      LOBYTE(v39) = [v39 fileExistsAtPath:path isDirectory:buf];

      obj = v38;
      if (v39)
      {
        domain = [v36 domain];
        v42 = *MEMORY[0x1E69BFF48];
        v43 = [domain isEqualToString:*MEMORY[0x1E69BFF48]];

        if (!v43)
        {
          v15 = v36;
          if (v36)
          {
            [v38 setObject:v36 forKeyedSubscript:*MEMORY[0x1E696AA08]];
          }

          v19 = [MEMORY[0x1E696ABC0] errorWithDomain:v42 code:41014 userInfo:v38];
          goto LABEL_60;
        }

        v44 = v36;
      }

      else
      {
        v44 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41015 userInfo:v38];
      }

      v19 = v44;
      v15 = v36;
    }

LABEL_60:
  }

LABEL_61:
  [(PLPhotoLibraryBundle *)self->_libraryBundle touch];
  v63 = MEMORY[0x1E69BF2D0];
  if (v19)
  {
    v64 = [MEMORY[0x1E69BF2D0] failureWithError:v19];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
    v66 = v65 = v15;
    v64 = [v63 successWithResult:v66];

    v15 = v65;
  }

  return v64;
}

- (void)bindToPhotoLibraryURL:(id)l sandboxExtension:(id)extension clientOptions:(id)options withReply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  extensionCopy = extension;
  optionsCopy = options;
  replyCopy = reply;
  v22 = 0u;
  *sel = 0u;
  v20 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v20) = enabled;
  if (enabled)
  {
    *(&v20 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: bindToPhotoLibraryURL:sandboxExtension:clientOptions:withReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v20 + 1), (&v22 + 8));
  }

  v15 = [(PLAssetsdService *)self bindToPhotoLibraryURL:lCopy sandboxExtension:extensionCopy clientOptions:optionsCopy, v20];
  error = [v15 error];
  replyCopy[2](replyCopy, error);

  if (v21 == 1)
  {
    os_activity_scope_leave((&v22 + 8));
  }

  if (v22)
  {
    v17 = PLRequestGetLog();
    v18 = v17;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v25 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v22, "failed to load photo library %{public}s with url %@, %@", "Connection opened for client with PID: %d, bundle ID: %@ at QoS: %{public}@", buf, 0xCu);
    }
  }
}

- (id)_waitForLibraryServicesForDaemonJob
{
  v9[1] = *MEMORY[0x1E69E9840];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  if (libraryServicesManager)
  {
    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E69BFF48];
    v8 = *MEMORY[0x1E696A578];
    v9[0] = @"No library services manager";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v3 = [v4 errorWithDomain:v5 code:41012 userInfo:v6];
  }

  return v3;
}

- (void)runDaemonJob:(id)job isSerial:(BOOL)serial withReply:(id)reply
{
  serialCopy = serial;
  *&v35[5] = *MEMORY[0x1E69E9840];
  jobCopy = job;
  replyCopy = reply;
  +[PLFileDescriptorFuse checkFileDescriptorFuse];
  v32 = 0u;
  *sel = 0u;
  v31 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v31) = enabled;
  if (enabled)
  {
    v11 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: runDaemonJob:isSerial:withReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v12 = *(&v31 + 1);
    *(&v31 + 1) = v11;

    os_activity_scope_enter(v11, (&v32 + 8));
  }

  v13 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v35 = jobCopy;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "runDaemonJob:isSerial:withReply: with job %@", buf, 0xCu);
  }

  v30 = 0;
  v14 = [(PLAssetsdService *)self _prepareToRunDaemonJob:jobCopy error:&v30];
  v15 = v30;
  if (v14)
  {
    if (replyCopy)
    {
      [jobCopy setReplyHandler:replyCopy];
    }

    if (serialCopy)
    {
      _waitForLibraryServicesForDaemonJob = objc_alloc_init(MEMORY[0x1E695DF90]);
      [_waitForLibraryServicesForDaemonJob setObject:*MEMORY[0x1E69C0498] forKey:*MEMORY[0x1E69C0410]];
      [_waitForLibraryServicesForDaemonJob setObject:jobCopy forKey:@"kPLImageWriterDaemonJobEventKey"];
      if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isClientInLimitedLibraryMode])
      {
        [_waitForLibraryServicesForDaemonJob setObject:MEMORY[0x1E695E118] forKey:@"job.private.ClientInLimitedLibraryMode"];
        trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
        if ([trustedCallerBundleID length])
        {
          v18 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            clientProcessIdentifier = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization clientProcessIdentifier];
            *buf = 67109378;
            v35[0] = clientProcessIdentifier;
            LOWORD(v35[1]) = 2112;
            *(&v35[1] + 2) = trustedCallerBundleID;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Running job for limited library client (%d) %@", buf, 0x12u);
          }

          [_waitForLibraryServicesForDaemonJob setObject:trustedCallerBundleID forKey:@"job.private.LimitedLibraryClientFetchFilterIdentifier"];
          [_waitForLibraryServicesForDaemonJob setObject:self->_connectionAuthorization forKey:@"job.private.LimitedLibraryClientAuthorization"];
        }

        else
        {
          v21 = PLGatekeeperXPCGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            clientProcessIdentifier2 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization clientProcessIdentifier];
            *buf = 67109120;
            v35[0] = clientProcessIdentifier2;
            _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Running job for limited library client %d without client identifier", buf, 8u);
          }
        }
      }

      libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
      imageWriter = [libraryServicesManager imageWriter];
      [imageWriter enqueueJob:_waitForLibraryServicesForDaemonJob];
    }

    else
    {
      v20 = dispatch_get_global_queue(0, 0);
      v29 = jobCopy;
      pl_dispatch_async();

      _waitForLibraryServicesForDaemonJob = v29;
    }
  }

  else if (replyCopy)
  {
    _waitForLibraryServicesForDaemonJob = [(PLAssetsdService *)self _waitForLibraryServicesForDaemonJob];
    replyCopy[2](replyCopy, _waitForLibraryServicesForDaemonJob, 0);
  }

  else
  {
    _waitForLibraryServicesForDaemonJob = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(_waitForLibraryServicesForDaemonJob, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v35 = v15;
      _os_log_impl(&dword_19BF1F000, _waitForLibraryServicesForDaemonJob, OS_LOG_TYPE_ERROR, "Failed in prepare to run daemon job: %@", buf, 0xCu);
    }
  }

  if (v31 == 1)
  {
    os_activity_scope_leave((&v32 + 8));
  }

  if (v32)
  {
    v25 = PLRequestGetLog();
    v26 = v25;
    v27 = v32;
    if ((v32 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      *v35 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v26, OS_SIGNPOST_INTERVAL_END, v27, "failed to load photo library %{public}s with url %@, %@", "Connection opened for client with PID: %d, bundle ID: %@ at QoS: %{public}@", buf, 0xCu);
    }
  }
}

- (void)photoLibraryDeletedAtURL:(id)l reply:(id)reply
{
  v13[1] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v7 = [WeakRetained valueForEntitlement:@"com.apple.private.photos.library.deleted"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 BOOLValue] & 1) == 0)
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A278];
    v13[0] = @"Missing entitlement for photoLibraryDeletedAtURL";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v11 = [v8 errorWithDomain:v9 code:46104 userInfo:v10];
    replyCopy[2](replyCopy, v11);
  }
}

- (id)newNonBindingDebugService
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v6 = 138412290;
    v7 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdNonBindingDebugService for client: %@", &v6, 0xCu);
  }

  return [[PLAssetsdNonBindingDebugService alloc] initWithConnectionAuthorization:self->_connectionAuthorization bundleController:self->_libraryBundleController];
}

- (id)permissionsForNonBindingDebugService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF3B8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newDebugService
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v10 = 138412290;
    v11 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdDebugService for client: %@", &v10, 0xCu);
  }

  v5 = [PLAssetsdDebugService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  resourceDownloader = [(PLAssetsdService *)self resourceDownloader];
  v8 = [(PLAssetsdDebugService *)v5 initWithLibraryServicesManager:libraryServicesManager resourceDownloader:resourceDownloader bundleController:self->_libraryBundleController connectionAuthorization:self->_connectionAuthorization];

  return v8;
}

- (id)permissionsForDebugService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF3B8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newDiagnosticsService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdDiagnosticsService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdDiagnosticsService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAbstractLibraryServicesManagerService *)v5 initWithLibraryServicesManager:libraryServicesManager];

  return v7;
}

- (id)permissionsForDiagnosticsService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF3C8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newDemoService
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v6 = 138412290;
    v7 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdDemoService for client: %@", &v6, 0xCu);
  }

  return [[PLAssetsdDemoService alloc] initWithConnectionAuthorization:self->_connectionAuthorization];
}

- (id)permissionsForDemoService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF3C0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newNotificationService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdNotificationService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdNotificationService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAbstractLibraryServicesManagerService *)v5 initWithLibraryServicesManager:libraryServicesManager];

  return v7;
}

- (id)permissionsForNotificationService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF3E8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newSyncService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdSyncService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdSyncService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAssetsdSyncService *)v5 initWithLibraryServicesManager:libraryServicesManager];

  return v7;
}

- (id)permissionsForSyncService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF400];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newMigrationService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdMigrationService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdMigrationService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAssetsdMigrationService *)v5 initWithLibraryServicesManager:libraryServicesManager];

  return v7;
}

- (id)permissionsForMigrationService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF3E0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newCloudInternalService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdCloudInternalService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdCloudInternalService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAssetsdCloudInternalService *)v5 initWithLibraryServicesManager:libraryServicesManager connectionAuthorization:self->_connectionAuthorization];

  return v7;
}

- (id)permissionsForCloudInternalService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF3B0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newCloudService
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    *buf = 138412290;
    v15 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdCloudService for client: %@", buf, 0xCu);
  }

  v5 = objc_initWeak(buf, self);
  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__PLAssetsdService_newCloudService__block_invoke;
  v12[3] = &unk_1E7576828;
  objc_copyWeak(&v13, buf);
  v7 = [v6 initWithBlock:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v8 = [PLAssetsdCloudService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v10 = [(PLAssetsdCloudService *)v8 initWithLibraryServicesManager:libraryServicesManager lazyResourceDownloader:v7];

  return v10;
}

id __35__PLAssetsdService_newCloudService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained resourceDownloader];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)permissionsForCloudService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)newResourceInternalService
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v10 = 138412290;
    v11 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdResourceInternalService for client: %@", &v10, 0xCu);
  }

  v5 = [PLAssetsdResourceInternalService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
  v8 = [(PLAssetsdResourceInternalService *)v5 initWithLibraryServicesManager:libraryServicesManager trustedCallerBundleID:trustedCallerBundleID];

  return v8;
}

- (id)permissionsForResourceInternalService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  v5[0] = *MEMORY[0x1E69BF3F0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newResourceWriteOnlyService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new newResourceWriteOnlyService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdResourceWriteOnlyService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAssetsdResourceWriteOnlyService *)v5 initWithLibraryServicesManager:libraryServicesManager connectionAuthorization:self->_connectionAuthorization];

  return v7;
}

- (id)permissionsForResourceWriteOnlyService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:2];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)newResourceService
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v11 = 138412290;
    v12 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdResourceService for client: %@", &v11, 0xCu);
  }

  v5 = [PLAssetsdResourceService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  connectionAuthorization = self->_connectionAuthorization;
  resourceDownloader = [(PLAssetsdService *)self resourceDownloader];
  v9 = [(PLAssetsdResourceService *)v5 initWithLibraryServicesManager:libraryServicesManager connectionAuthorization:connectionAuthorization resourceDownloader:resourceDownloader];

  return v9;
}

- (id)permissionsForResourceService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)newResourceAvailabilityService
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v14 = 138412290;
    v15 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdResourceAvailabilityService for client: %@", &v14, 0xCu);
  }

  v6 = NSClassFromString(&cfstr_Plassetsdresou_13.isa);
  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdService.m" lineNumber:414 description:@"no PLAssetsdResourceAvailabilityService class found"];
  }

  v7 = [v6 alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  cacheMetricsShellObject = [(PLAssetsdService *)self cacheMetricsShellObject];
  trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
  v11 = [v7 initWithLibraryServicesManager:libraryServicesManager shellObject:cacheMetricsShellObject trustedCallerBundleID:trustedCallerBundleID clientPid:self->_remotePID];

  return v11;
}

- (id)permissionsForResourceAvailabilityService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setAllowsAuthorizationWithPhotoKitEntitlement:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:2];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)newPhotoKitAddService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdPhotoKitAddService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdPhotoKitAddService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAssetsdPhotoKitAddService *)v5 initWithLibraryServicesManager:libraryServicesManager connectionAuthorization:self->_connectionAuthorization];

  return v7;
}

- (id)permissionsForPhotoKitAddService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setAllowsAuthorizationWithPhotoKitEntitlement:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:2];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)newPhotoKitService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdPhotoKitService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdPhotoKitService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAssetsdPhotoKitService *)v5 initWithLibraryServicesManager:libraryServicesManager connectionAuthorization:self->_connectionAuthorization];

  return v7;
}

- (id)permissionsForPhotoKitService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setAllowsAuthorizationWithPhotoKitEntitlement:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)newLibraryManagementService
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v6 = 138412290;
    v7 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdLibraryManagementService for client: %@", &v6, 0xCu);
  }

  return [[PLAssetsdLibraryManagementService alloc] initWithConnectionAuthorization:self->_connectionAuthorization bundleController:self->_libraryBundleController];
}

- (id)permissionsForLibraryManagementService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:1];
  v5[0] = *MEMORY[0x1E69BF3D8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newPrivacySupportService
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v6 = 138412290;
    v7 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdPrivacySupportService for client: %@", &v6, 0xCu);
  }

  return [[PLAssetsdPrivacySupportService alloc] initWithConnectionAuthorization:self->_connectionAuthorization];
}

- (id)permissionsForPrivacySupportService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)newSystemLibraryURLReadOnlyService
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v6 = 138412290;
    v7 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdSystemLibraryURLReadOnlyService for client: %@", &v6, 0xCu);
  }

  return [[PLAssetsdSystemLibraryURLReadOnlyService alloc] initWithConnectionAuthorization:self->_connectionAuthorization];
}

- (id)permissionsForSystemLibraryURLReadOnlyService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:0];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)newLibraryInternalService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdLibraryInternalService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdLibraryInternalService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAssetsdLibraryInternalService *)v5 initWithLibraryServicesManager:libraryServicesManager connectionAuthorization:self->_connectionAuthorization];

  return v7;
}

- (id)permissionsForLibraryInternalService
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:1];
  v5[0] = *MEMORY[0x1E69BF3D0];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:v3];

  return v2;
}

- (id)newLibraryService
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    clientDebugDescription = [(PLAssetsdService *)self clientDebugDescription];
    v9 = 138412290;
    v10 = clientDebugDescription;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Creating new PLAssetsdLibraryService for client: %@", &v9, 0xCu);
  }

  v5 = [PLAssetsdLibraryService alloc];
  libraryServicesManager = [(PLAssetsdService *)self libraryServicesManager];
  v7 = [(PLAssetsdLibraryService *)v5 initWithLibraryServicesManager:libraryServicesManager bundleController:self->_libraryBundleController connectionAuthorization:self->_connectionAuthorization assetsdService:self];

  return v7;
}

- (id)permissionsForLibraryService
{
  v2 = objc_alloc_init(PLAssetsdServicePermissions);
  [(PLAssetsdServicePermissions *)v2 setRequiredAuthorization:1];
  [(PLAssetsdServicePermissions *)v2 setRequiredEntitlements:MEMORY[0x1E695E0F0]];

  return v2;
}

- (id)makeInnerPrivacySupportService
{
  permissionsForPrivacySupportService = [(PLAssetsdService *)self permissionsForPrivacySupportService];
  requiredStateForPrivacySupportService = [(PLAssetsdService *)self requiredStateForPrivacySupportService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __50__PLAssetsdService_makeInnerPrivacySupportService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForPrivacySupportService requiredLibraryServicesState:requiredStateForPrivacySupportService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __50__PLAssetsdService_makeInnerPrivacySupportService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newPrivacySupportService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)PrivacySupportService
{
  innerPrivacySupportService = self->_innerPrivacySupportService;
  if (!innerPrivacySupportService)
  {
    makeInnerPrivacySupportService = [(PLAssetsdService *)self makeInnerPrivacySupportService];
    v6 = self->_innerPrivacySupportService;
    self->_innerPrivacySupportService = makeInnerPrivacySupportService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerPrivacySupportService innerServiceWithContext:v7 forceValidation:innerPrivacySupportService == 0];

  return v8;
}

- (void)getPrivacySupportServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerPrivacySupportService)
  {
    makeInnerPrivacySupportService = [(PLAssetsdService *)self makeInnerPrivacySupportService];
    innerPrivacySupportService = self->_innerPrivacySupportService;
    self->_innerPrivacySupportService = makeInnerPrivacySupportService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerPrivacySupportService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerNonBindingDebugService
{
  permissionsForNonBindingDebugService = [(PLAssetsdService *)self permissionsForNonBindingDebugService];
  requiredStateForNonBindingDebugService = [(PLAssetsdService *)self requiredStateForNonBindingDebugService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__PLAssetsdService_makeInnerNonBindingDebugService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForNonBindingDebugService requiredLibraryServicesState:requiredStateForNonBindingDebugService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __51__PLAssetsdService_makeInnerNonBindingDebugService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newNonBindingDebugService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)NonBindingDebugService
{
  innerNonBindingDebugService = self->_innerNonBindingDebugService;
  if (!innerNonBindingDebugService)
  {
    makeInnerNonBindingDebugService = [(PLAssetsdService *)self makeInnerNonBindingDebugService];
    v6 = self->_innerNonBindingDebugService;
    self->_innerNonBindingDebugService = makeInnerNonBindingDebugService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerNonBindingDebugService innerServiceWithContext:v7 forceValidation:innerNonBindingDebugService == 0];

  return v8;
}

- (void)getNonBindingDebugServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerNonBindingDebugService)
  {
    makeInnerNonBindingDebugService = [(PLAssetsdService *)self makeInnerNonBindingDebugService];
    innerNonBindingDebugService = self->_innerNonBindingDebugService;
    self->_innerNonBindingDebugService = makeInnerNonBindingDebugService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerNonBindingDebugService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerDebugService
{
  permissionsForDebugService = [(PLAssetsdService *)self permissionsForDebugService];
  requiredStateForDebugService = [(PLAssetsdService *)self requiredStateForDebugService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __41__PLAssetsdService_makeInnerDebugService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForDebugService requiredLibraryServicesState:requiredStateForDebugService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __41__PLAssetsdService_makeInnerDebugService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newDebugService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)DebugService
{
  innerDebugService = self->_innerDebugService;
  if (!innerDebugService)
  {
    makeInnerDebugService = [(PLAssetsdService *)self makeInnerDebugService];
    v6 = self->_innerDebugService;
    self->_innerDebugService = makeInnerDebugService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerDebugService innerServiceWithContext:v7 forceValidation:innerDebugService == 0];

  return v8;
}

- (void)getDebugServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerDebugService)
  {
    makeInnerDebugService = [(PLAssetsdService *)self makeInnerDebugService];
    innerDebugService = self->_innerDebugService;
    self->_innerDebugService = makeInnerDebugService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerDebugService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerDiagnosticsService
{
  permissionsForDiagnosticsService = [(PLAssetsdService *)self permissionsForDiagnosticsService];
  requiredStateForDiagnosticsService = [(PLAssetsdService *)self requiredStateForDiagnosticsService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __47__PLAssetsdService_makeInnerDiagnosticsService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForDiagnosticsService requiredLibraryServicesState:requiredStateForDiagnosticsService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __47__PLAssetsdService_makeInnerDiagnosticsService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newDiagnosticsService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)DiagnosticsService
{
  innerDiagnosticsService = self->_innerDiagnosticsService;
  if (!innerDiagnosticsService)
  {
    makeInnerDiagnosticsService = [(PLAssetsdService *)self makeInnerDiagnosticsService];
    v6 = self->_innerDiagnosticsService;
    self->_innerDiagnosticsService = makeInnerDiagnosticsService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerDiagnosticsService innerServiceWithContext:v7 forceValidation:innerDiagnosticsService == 0];

  return v8;
}

- (void)getDiagnosticsServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerDiagnosticsService)
  {
    makeInnerDiagnosticsService = [(PLAssetsdService *)self makeInnerDiagnosticsService];
    innerDiagnosticsService = self->_innerDiagnosticsService;
    self->_innerDiagnosticsService = makeInnerDiagnosticsService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerDiagnosticsService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerDemoService
{
  permissionsForDemoService = [(PLAssetsdService *)self permissionsForDemoService];
  requiredStateForDemoService = [(PLAssetsdService *)self requiredStateForDemoService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __40__PLAssetsdService_makeInnerDemoService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForDemoService requiredLibraryServicesState:requiredStateForDemoService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __40__PLAssetsdService_makeInnerDemoService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newDemoService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)DemoService
{
  innerDemoService = self->_innerDemoService;
  if (!innerDemoService)
  {
    makeInnerDemoService = [(PLAssetsdService *)self makeInnerDemoService];
    v6 = self->_innerDemoService;
    self->_innerDemoService = makeInnerDemoService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerDemoService innerServiceWithContext:v7 forceValidation:innerDemoService == 0];

  return v8;
}

- (void)getDemoServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerDemoService)
  {
    makeInnerDemoService = [(PLAssetsdService *)self makeInnerDemoService];
    innerDemoService = self->_innerDemoService;
    self->_innerDemoService = makeInnerDemoService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerDemoService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerNotificationService
{
  permissionsForNotificationService = [(PLAssetsdService *)self permissionsForNotificationService];
  requiredStateForNotificationService = [(PLAssetsdService *)self requiredStateForNotificationService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __48__PLAssetsdService_makeInnerNotificationService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForNotificationService requiredLibraryServicesState:requiredStateForNotificationService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __48__PLAssetsdService_makeInnerNotificationService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newNotificationService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)NotificationService
{
  innerNotificationService = self->_innerNotificationService;
  if (!innerNotificationService)
  {
    makeInnerNotificationService = [(PLAssetsdService *)self makeInnerNotificationService];
    v6 = self->_innerNotificationService;
    self->_innerNotificationService = makeInnerNotificationService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerNotificationService innerServiceWithContext:v7 forceValidation:innerNotificationService == 0];

  return v8;
}

- (void)getNotificationServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerNotificationService)
  {
    makeInnerNotificationService = [(PLAssetsdService *)self makeInnerNotificationService];
    innerNotificationService = self->_innerNotificationService;
    self->_innerNotificationService = makeInnerNotificationService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerNotificationService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerSyncService
{
  permissionsForSyncService = [(PLAssetsdService *)self permissionsForSyncService];
  requiredStateForSyncService = [(PLAssetsdService *)self requiredStateForSyncService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __40__PLAssetsdService_makeInnerSyncService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForSyncService requiredLibraryServicesState:requiredStateForSyncService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __40__PLAssetsdService_makeInnerSyncService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newSyncService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)SyncService
{
  innerSyncService = self->_innerSyncService;
  if (!innerSyncService)
  {
    makeInnerSyncService = [(PLAssetsdService *)self makeInnerSyncService];
    v6 = self->_innerSyncService;
    self->_innerSyncService = makeInnerSyncService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerSyncService innerServiceWithContext:v7 forceValidation:innerSyncService == 0];

  return v8;
}

- (void)getSyncServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerSyncService)
  {
    makeInnerSyncService = [(PLAssetsdService *)self makeInnerSyncService];
    innerSyncService = self->_innerSyncService;
    self->_innerSyncService = makeInnerSyncService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerSyncService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerMigrationService
{
  permissionsForMigrationService = [(PLAssetsdService *)self permissionsForMigrationService];
  requiredStateForMigrationService = [(PLAssetsdService *)self requiredStateForMigrationService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __45__PLAssetsdService_makeInnerMigrationService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForMigrationService requiredLibraryServicesState:requiredStateForMigrationService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __45__PLAssetsdService_makeInnerMigrationService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newMigrationService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)MigrationService
{
  innerMigrationService = self->_innerMigrationService;
  if (!innerMigrationService)
  {
    makeInnerMigrationService = [(PLAssetsdService *)self makeInnerMigrationService];
    v6 = self->_innerMigrationService;
    self->_innerMigrationService = makeInnerMigrationService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerMigrationService innerServiceWithContext:v7 forceValidation:innerMigrationService == 0];

  return v8;
}

- (void)getMigrationServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerMigrationService)
  {
    makeInnerMigrationService = [(PLAssetsdService *)self makeInnerMigrationService];
    innerMigrationService = self->_innerMigrationService;
    self->_innerMigrationService = makeInnerMigrationService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerMigrationService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerCloudInternalService
{
  permissionsForCloudInternalService = [(PLAssetsdService *)self permissionsForCloudInternalService];
  requiredStateForCloudInternalService = [(PLAssetsdService *)self requiredStateForCloudInternalService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __49__PLAssetsdService_makeInnerCloudInternalService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForCloudInternalService requiredLibraryServicesState:requiredStateForCloudInternalService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __49__PLAssetsdService_makeInnerCloudInternalService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newCloudInternalService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)CloudInternalService
{
  innerCloudInternalService = self->_innerCloudInternalService;
  if (!innerCloudInternalService)
  {
    makeInnerCloudInternalService = [(PLAssetsdService *)self makeInnerCloudInternalService];
    v6 = self->_innerCloudInternalService;
    self->_innerCloudInternalService = makeInnerCloudInternalService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerCloudInternalService innerServiceWithContext:v7 forceValidation:innerCloudInternalService == 0];

  return v8;
}

- (void)getCloudInternalServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerCloudInternalService)
  {
    makeInnerCloudInternalService = [(PLAssetsdService *)self makeInnerCloudInternalService];
    innerCloudInternalService = self->_innerCloudInternalService;
    self->_innerCloudInternalService = makeInnerCloudInternalService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerCloudInternalService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerCloudService
{
  permissionsForCloudService = [(PLAssetsdService *)self permissionsForCloudService];
  requiredStateForCloudService = [(PLAssetsdService *)self requiredStateForCloudService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __41__PLAssetsdService_makeInnerCloudService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForCloudService requiredLibraryServicesState:requiredStateForCloudService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __41__PLAssetsdService_makeInnerCloudService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newCloudService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)CloudService
{
  innerCloudService = self->_innerCloudService;
  if (!innerCloudService)
  {
    makeInnerCloudService = [(PLAssetsdService *)self makeInnerCloudService];
    v6 = self->_innerCloudService;
    self->_innerCloudService = makeInnerCloudService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerCloudService innerServiceWithContext:v7 forceValidation:innerCloudService == 0];

  return v8;
}

- (void)getCloudServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerCloudService)
  {
    makeInnerCloudService = [(PLAssetsdService *)self makeInnerCloudService];
    innerCloudService = self->_innerCloudService;
    self->_innerCloudService = makeInnerCloudService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerCloudService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerResourceInternalService
{
  permissionsForResourceInternalService = [(PLAssetsdService *)self permissionsForResourceInternalService];
  requiredStateForResourceInternalService = [(PLAssetsdService *)self requiredStateForResourceInternalService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __52__PLAssetsdService_makeInnerResourceInternalService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForResourceInternalService requiredLibraryServicesState:requiredStateForResourceInternalService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __52__PLAssetsdService_makeInnerResourceInternalService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newResourceInternalService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ResourceInternalService
{
  innerResourceInternalService = self->_innerResourceInternalService;
  if (!innerResourceInternalService)
  {
    makeInnerResourceInternalService = [(PLAssetsdService *)self makeInnerResourceInternalService];
    v6 = self->_innerResourceInternalService;
    self->_innerResourceInternalService = makeInnerResourceInternalService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerResourceInternalService innerServiceWithContext:v7 forceValidation:innerResourceInternalService == 0];

  return v8;
}

- (void)getResourceInternalServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerResourceInternalService)
  {
    makeInnerResourceInternalService = [(PLAssetsdService *)self makeInnerResourceInternalService];
    innerResourceInternalService = self->_innerResourceInternalService;
    self->_innerResourceInternalService = makeInnerResourceInternalService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerResourceInternalService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerResourceWriteOnlyService
{
  permissionsForResourceWriteOnlyService = [(PLAssetsdService *)self permissionsForResourceWriteOnlyService];
  requiredStateForResourceWriteOnlyService = [(PLAssetsdService *)self requiredStateForResourceWriteOnlyService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __53__PLAssetsdService_makeInnerResourceWriteOnlyService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForResourceWriteOnlyService requiredLibraryServicesState:requiredStateForResourceWriteOnlyService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __53__PLAssetsdService_makeInnerResourceWriteOnlyService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newResourceWriteOnlyService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ResourceWriteOnlyService
{
  innerResourceWriteOnlyService = self->_innerResourceWriteOnlyService;
  if (!innerResourceWriteOnlyService)
  {
    makeInnerResourceWriteOnlyService = [(PLAssetsdService *)self makeInnerResourceWriteOnlyService];
    v6 = self->_innerResourceWriteOnlyService;
    self->_innerResourceWriteOnlyService = makeInnerResourceWriteOnlyService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerResourceWriteOnlyService innerServiceWithContext:v7 forceValidation:innerResourceWriteOnlyService == 0];

  return v8;
}

- (void)getResourceWriteOnlyServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerResourceWriteOnlyService)
  {
    makeInnerResourceWriteOnlyService = [(PLAssetsdService *)self makeInnerResourceWriteOnlyService];
    innerResourceWriteOnlyService = self->_innerResourceWriteOnlyService;
    self->_innerResourceWriteOnlyService = makeInnerResourceWriteOnlyService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerResourceWriteOnlyService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerResourceService
{
  permissionsForResourceService = [(PLAssetsdService *)self permissionsForResourceService];
  requiredStateForResourceService = [(PLAssetsdService *)self requiredStateForResourceService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __44__PLAssetsdService_makeInnerResourceService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForResourceService requiredLibraryServicesState:requiredStateForResourceService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __44__PLAssetsdService_makeInnerResourceService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newResourceService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ResourceService
{
  innerResourceService = self->_innerResourceService;
  if (!innerResourceService)
  {
    makeInnerResourceService = [(PLAssetsdService *)self makeInnerResourceService];
    v6 = self->_innerResourceService;
    self->_innerResourceService = makeInnerResourceService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerResourceService innerServiceWithContext:v7 forceValidation:innerResourceService == 0];

  return v8;
}

- (void)getResourceServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerResourceService)
  {
    makeInnerResourceService = [(PLAssetsdService *)self makeInnerResourceService];
    innerResourceService = self->_innerResourceService;
    self->_innerResourceService = makeInnerResourceService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerResourceService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerResourceAvailabilityService
{
  permissionsForResourceAvailabilityService = [(PLAssetsdService *)self permissionsForResourceAvailabilityService];
  requiredStateForResourceAvailabilityService = [(PLAssetsdService *)self requiredStateForResourceAvailabilityService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __56__PLAssetsdService_makeInnerResourceAvailabilityService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForResourceAvailabilityService requiredLibraryServicesState:requiredStateForResourceAvailabilityService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __56__PLAssetsdService_makeInnerResourceAvailabilityService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newResourceAvailabilityService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)ResourceAvailabilityService
{
  innerResourceAvailabilityService = self->_innerResourceAvailabilityService;
  if (!innerResourceAvailabilityService)
  {
    makeInnerResourceAvailabilityService = [(PLAssetsdService *)self makeInnerResourceAvailabilityService];
    v6 = self->_innerResourceAvailabilityService;
    self->_innerResourceAvailabilityService = makeInnerResourceAvailabilityService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerResourceAvailabilityService innerServiceWithContext:v7 forceValidation:innerResourceAvailabilityService == 0];

  return v8;
}

- (void)getResourceAvailabilityServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerResourceAvailabilityService)
  {
    makeInnerResourceAvailabilityService = [(PLAssetsdService *)self makeInnerResourceAvailabilityService];
    innerResourceAvailabilityService = self->_innerResourceAvailabilityService;
    self->_innerResourceAvailabilityService = makeInnerResourceAvailabilityService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerResourceAvailabilityService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerPhotoKitAddService
{
  permissionsForPhotoKitAddService = [(PLAssetsdService *)self permissionsForPhotoKitAddService];
  requiredStateForPhotoKitAddService = [(PLAssetsdService *)self requiredStateForPhotoKitAddService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __47__PLAssetsdService_makeInnerPhotoKitAddService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForPhotoKitAddService requiredLibraryServicesState:requiredStateForPhotoKitAddService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __47__PLAssetsdService_makeInnerPhotoKitAddService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newPhotoKitAddService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)PhotoKitAddService
{
  innerPhotoKitAddService = self->_innerPhotoKitAddService;
  if (!innerPhotoKitAddService)
  {
    makeInnerPhotoKitAddService = [(PLAssetsdService *)self makeInnerPhotoKitAddService];
    v6 = self->_innerPhotoKitAddService;
    self->_innerPhotoKitAddService = makeInnerPhotoKitAddService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerPhotoKitAddService innerServiceWithContext:v7 forceValidation:innerPhotoKitAddService == 0];

  return v8;
}

- (void)getPhotoKitAddServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerPhotoKitAddService)
  {
    makeInnerPhotoKitAddService = [(PLAssetsdService *)self makeInnerPhotoKitAddService];
    innerPhotoKitAddService = self->_innerPhotoKitAddService;
    self->_innerPhotoKitAddService = makeInnerPhotoKitAddService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerPhotoKitAddService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerPhotoKitService
{
  permissionsForPhotoKitService = [(PLAssetsdService *)self permissionsForPhotoKitService];
  requiredStateForPhotoKitService = [(PLAssetsdService *)self requiredStateForPhotoKitService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __44__PLAssetsdService_makeInnerPhotoKitService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForPhotoKitService requiredLibraryServicesState:requiredStateForPhotoKitService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __44__PLAssetsdService_makeInnerPhotoKitService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newPhotoKitService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)PhotoKitService
{
  innerPhotoKitService = self->_innerPhotoKitService;
  if (!innerPhotoKitService)
  {
    makeInnerPhotoKitService = [(PLAssetsdService *)self makeInnerPhotoKitService];
    v6 = self->_innerPhotoKitService;
    self->_innerPhotoKitService = makeInnerPhotoKitService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerPhotoKitService innerServiceWithContext:v7 forceValidation:innerPhotoKitService == 0];

  return v8;
}

- (void)getPhotoKitServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerPhotoKitService)
  {
    makeInnerPhotoKitService = [(PLAssetsdService *)self makeInnerPhotoKitService];
    innerPhotoKitService = self->_innerPhotoKitService;
    self->_innerPhotoKitService = makeInnerPhotoKitService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerPhotoKitService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerLibraryManagementService
{
  permissionsForLibraryManagementService = [(PLAssetsdService *)self permissionsForLibraryManagementService];
  requiredStateForLibraryManagementService = [(PLAssetsdService *)self requiredStateForLibraryManagementService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __53__PLAssetsdService_makeInnerLibraryManagementService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForLibraryManagementService requiredLibraryServicesState:requiredStateForLibraryManagementService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __53__PLAssetsdService_makeInnerLibraryManagementService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newLibraryManagementService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)LibraryManagementService
{
  innerLibraryManagementService = self->_innerLibraryManagementService;
  if (!innerLibraryManagementService)
  {
    makeInnerLibraryManagementService = [(PLAssetsdService *)self makeInnerLibraryManagementService];
    v6 = self->_innerLibraryManagementService;
    self->_innerLibraryManagementService = makeInnerLibraryManagementService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerLibraryManagementService innerServiceWithContext:v7 forceValidation:innerLibraryManagementService == 0];

  return v8;
}

- (void)getLibraryManagementServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerLibraryManagementService)
  {
    makeInnerLibraryManagementService = [(PLAssetsdService *)self makeInnerLibraryManagementService];
    innerLibraryManagementService = self->_innerLibraryManagementService;
    self->_innerLibraryManagementService = makeInnerLibraryManagementService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerLibraryManagementService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerSystemLibraryURLReadOnlyService
{
  permissionsForSystemLibraryURLReadOnlyService = [(PLAssetsdService *)self permissionsForSystemLibraryURLReadOnlyService];
  requiredStateForSystemLibraryURLReadOnlyService = [(PLAssetsdService *)self requiredStateForSystemLibraryURLReadOnlyService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __60__PLAssetsdService_makeInnerSystemLibraryURLReadOnlyService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForSystemLibraryURLReadOnlyService requiredLibraryServicesState:requiredStateForSystemLibraryURLReadOnlyService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __60__PLAssetsdService_makeInnerSystemLibraryURLReadOnlyService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newSystemLibraryURLReadOnlyService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)SystemLibraryURLReadOnlyService
{
  innerSystemLibraryURLReadOnlyService = self->_innerSystemLibraryURLReadOnlyService;
  if (!innerSystemLibraryURLReadOnlyService)
  {
    makeInnerSystemLibraryURLReadOnlyService = [(PLAssetsdService *)self makeInnerSystemLibraryURLReadOnlyService];
    v6 = self->_innerSystemLibraryURLReadOnlyService;
    self->_innerSystemLibraryURLReadOnlyService = makeInnerSystemLibraryURLReadOnlyService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerSystemLibraryURLReadOnlyService innerServiceWithContext:v7 forceValidation:innerSystemLibraryURLReadOnlyService == 0];

  return v8;
}

- (void)getSystemLibraryURLReadOnlyServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerSystemLibraryURLReadOnlyService)
  {
    makeInnerSystemLibraryURLReadOnlyService = [(PLAssetsdService *)self makeInnerSystemLibraryURLReadOnlyService];
    innerSystemLibraryURLReadOnlyService = self->_innerSystemLibraryURLReadOnlyService;
    self->_innerSystemLibraryURLReadOnlyService = makeInnerSystemLibraryURLReadOnlyService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerSystemLibraryURLReadOnlyService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerLibraryInternalService
{
  permissionsForLibraryInternalService = [(PLAssetsdService *)self permissionsForLibraryInternalService];
  requiredStateForLibraryInternalService = [(PLAssetsdService *)self requiredStateForLibraryInternalService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __51__PLAssetsdService_makeInnerLibraryInternalService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForLibraryInternalService requiredLibraryServicesState:requiredStateForLibraryInternalService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __51__PLAssetsdService_makeInnerLibraryInternalService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newLibraryInternalService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)LibraryInternalService
{
  innerLibraryInternalService = self->_innerLibraryInternalService;
  if (!innerLibraryInternalService)
  {
    makeInnerLibraryInternalService = [(PLAssetsdService *)self makeInnerLibraryInternalService];
    v6 = self->_innerLibraryInternalService;
    self->_innerLibraryInternalService = makeInnerLibraryInternalService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerLibraryInternalService innerServiceWithContext:v7 forceValidation:innerLibraryInternalService == 0];

  return v8;
}

- (void)getLibraryInternalServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerLibraryInternalService)
  {
    makeInnerLibraryInternalService = [(PLAssetsdService *)self makeInnerLibraryInternalService];
    innerLibraryInternalService = self->_innerLibraryInternalService;
    self->_innerLibraryInternalService = makeInnerLibraryInternalService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerLibraryInternalService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)makeInnerLibraryService
{
  permissionsForLibraryService = [(PLAssetsdService *)self permissionsForLibraryService];
  requiredStateForLibraryService = [(PLAssetsdService *)self requiredStateForLibraryService];
  v5 = objc_initWeak(&location, self);

  v6 = objc_alloc(MEMORY[0x1E69BF270]);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __43__PLAssetsdService_makeInnerLibraryService__block_invoke;
  v14 = &unk_1E7576828;
  objc_copyWeak(&v15, &location);
  v7 = [v6 initWithBlock:&v11];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  v8 = [PLAssetsdInnerService alloc];
  v9 = [(PLAssetsdInnerService *)v8 initWithPermissions:permissionsForLibraryService requiredLibraryServicesState:requiredStateForLibraryService lazyService:v7, v11, v12, v13, v14];

  return v9;
}

id __43__PLAssetsdService_makeInnerLibraryService__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newLibraryService];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)LibraryService
{
  innerLibraryService = self->_innerLibraryService;
  if (!innerLibraryService)
  {
    makeInnerLibraryService = [(PLAssetsdService *)self makeInnerLibraryService];
    v6 = self->_innerLibraryService;
    self->_innerLibraryService = makeInnerLibraryService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  v8 = [(PLAssetsdInnerService *)self->_innerLibraryService innerServiceWithContext:v7 forceValidation:innerLibraryService == 0];

  return v8;
}

- (void)getLibraryServiceWithReply:(id)reply
{
  replyCopy = reply;
  if (!self->_innerLibraryService)
  {
    makeInnerLibraryService = [(PLAssetsdService *)self makeInnerLibraryService];
    innerLibraryService = self->_innerLibraryService;
    self->_innerLibraryService = makeInnerLibraryService;
  }

  v7 = [(PLAssetsdService *)self serviceContextWithSelector:a2];
  [(PLAssetsdInnerService *)self->_innerLibraryService getInnerServiceWithContext:v7 reply:replyCopy];
}

- (id)serviceContextWithSelector:(SEL)selector
{
  v5 = [PLDefaultAssetsdServiceContext alloc];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v7 = [(PLDefaultAssetsdServiceContext *)v5 initWithSelector:selector connection:WeakRetained libraryBundle:self->_libraryBundle connectionAuthorization:self->_connectionAuthorization];

  return v7;
}

- (void)handleInvalidation
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    remotePID = self->_remotePID;
    v8[0] = 67109120;
    v8[1] = remotePID;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Connection invalidated for client with PID: %d", v8, 8u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained setDelegate:0];

  [(PLAssetsdCPLResourceDownloader *)self->_resourceDownloader handleInvalidation];
  if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isPhotosClient])
  {
    libraryServicesManager = [(PLPhotoLibraryBundle *)self->_libraryBundle libraryServicesManager];
    migrationServiceProxy = [libraryServicesManager migrationServiceProxy];
    [migrationServiceProxy unboost];
  }
}

- (void)handleInterruption
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    remotePID = self->_remotePID;
    v8[0] = 67109120;
    v8[1] = remotePID;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Connection interrupted for client with PID: %d", v8, 8u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained setDelegate:0];

  if ([(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization isPhotosClient])
  {
    libraryServicesManager = [(PLPhotoLibraryBundle *)self->_libraryBundle libraryServicesManager];
    migrationServiceProxy = [libraryServicesManager migrationServiceProxy];
    [migrationServiceProxy unboost];
  }
}

- (NSString)connectionDescription
{
  v3 = MEMORY[0x1E696AEC0];
  trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
  v5 = [v3 stringWithFormat:@"%@[%d]", trustedCallerBundleID, -[PLAssetsdConnectionAuthorization clientProcessIdentifier](self->_connectionAuthorization, "clientProcessIdentifier")];

  return v5;
}

- (NSString)stateDescription
{
  libraryURL = [(PLAssetsdService *)self libraryURL];

  if (libraryURL)
  {
    v4 = MEMORY[0x1E69BF238];
    libraryURL2 = [(PLAssetsdService *)self libraryURL];
    v6 = [v4 redactedDescriptionForFileURL:libraryURL2];
  }

  else
  {
    v6 = @"<no library>";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %@", self->_connectionAuthorization, v6];

  return v7;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  connectionAuthorization = self->_connectionAuthorization;
  libraryURL = [(PLAssetsdService *)self libraryURL];
  v5 = libraryURL;
  v6 = @"<no library>";
  if (libraryURL)
  {
    v6 = libraryURL;
  }

  v7 = [v2 stringWithFormat:@"%@: %@", connectionAuthorization, v6];

  return v7;
}

- (id)resourceDownloader
{
  resourceDownloader = self->_resourceDownloader;
  if (!resourceDownloader)
  {
    v4 = [PLAssetsdCPLResourceDownloader alloc];
    _photoLibrary = [(PLAssetsdService *)self _photoLibrary];
    trustedCallerBundleID = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization trustedCallerBundleID];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v8 = [(PLAssetsdCPLResourceDownloader *)v4 initWithPhotoLibrary:_photoLibrary trustedCallerBundleID:trustedCallerBundleID clientConnection:WeakRetained];
    v9 = self->_resourceDownloader;
    self->_resourceDownloader = v8;

    resourceDownloader = self->_resourceDownloader;
  }

  return resourceDownloader;
}

- (id)_photoLibrary
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_photoLibrary)
  {
    libraryURL = [(PLAssetsdService *)self libraryURL];

    if (libraryURL)
    {
      v4 = objc_alloc_init(PLPhotoLibraryOptions);
      [(PLPhotoLibraryOptions *)v4 setRequiredState:6];
      [(PLPhotoLibraryOptions *)v4 setAutomaticallyPinToFirstFetch:0];
      libraryBundle = self->_libraryBundle;
      v13 = 0;
      v6 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLAssetsdService _photoLibrary]" loadedFromBundle:libraryBundle options:v4 error:&v13];
      v7 = v13;
      photoLibrary = self->_photoLibrary;
      self->_photoLibrary = v6;

      if (!self->_photoLibrary)
      {
        v9 = PLBackendGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          libraryURL2 = [(PLAssetsdService *)self libraryURL];
          *buf = 136446722;
          v15 = "[PLAssetsdService _photoLibrary]";
          v16 = 2112;
          v17 = libraryURL2;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
        }
      }
    }
  }

  v11 = self->_photoLibrary;

  return v11;
}

- (PLAssetsdService)initWithConnection:(id)connection libraryBundleController:(id)controller daemonServices:(id)services
{
  v31 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  controllerCopy = controller;
  servicesCopy = services;
  v24.receiver = self;
  v24.super_class = PLAssetsdService;
  v11 = [(PLAssetsdService *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_connection, connectionCopy);
    objc_storeStrong(&v12->_libraryBundleController, controller);
    v13 = [[PLAssetsdConnectionAuthorization alloc] initWithConnection:connectionCopy daemonServices:servicesCopy];
    connectionAuthorization = v12->_connectionAuthorization;
    v12->_connectionAuthorization = v13;

    WeakRetained = objc_loadWeakRetained(&v12->_connection);
    v12->_remotePID = [WeakRetained processIdentifier];

    v16 = objc_alloc_init(PLCacheMetricsCollectorServerShell);
    cacheMetricsShellObject = v12->_cacheMetricsShellObject;
    v12->_cacheMetricsShellObject = v16;

    v18 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      remotePID = v12->_remotePID;
      v20 = objc_loadWeakRetained(&v12->_connection);
      v21 = PLClientBundleIdentifierFromXPCConnection();
      qos_class_self();
      v22 = PLStringFromQoSClass();
      *buf = 67109634;
      v26 = remotePID;
      v27 = 2112;
      v28 = v21;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Connection opened for client with PID: %d, bundle ID: %@ at QoS: %{public}@", buf, 0x1Cu);
    }
  }

  return v12;
}

@end