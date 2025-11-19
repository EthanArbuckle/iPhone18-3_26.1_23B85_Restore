@interface PLXPCPhotoLibraryStoreServerRequestHandlingPolicy
- (BOOL)_restrictedLockedContentAccessAllowedForContext:(id)a3;
- (PLXPCPhotoLibraryStoreServerRequestHandlingPolicy)init;
- (PLXPCPhotoLibraryStoreServerRequestHandlingPolicy)initWithConnectionAuthorization:(id)a3;
- (id)_assetFilterPredicateWithClientContext:(id)a3;
- (id)_backgroundUploadPredicateForEntityName:(id)a3 withClientContext:(id)a4;
- (id)_captureSessionPredicateForEntityName:(id)a3;
- (id)_entityNamesAllowedByRestrictedDataEntitlements:(id)a3;
- (id)_filterPredicateForEntityName:(id)a3 withClientContext:(id)a4;
- (id)_limitedLibraryFilterPredicateForEntityName:(id)a3 withClientContext:(id)a4;
- (id)_lockedCaptureSessionPredicateForEntityName:(id)a3 sessionIdentifier:(id)a4;
- (id)_predicateForEntityName:(id)a3 captureSessionState:(id)a4;
- (id)_restrictedEntityNamesAllowedForContext:(id)a3;
- (id)allowableClassesForClientWithContext:(id)a3;
- (id)processFaultForObjectWithID:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5;
- (id)processFaultForRelationshipWithName:(id)a3 onObjectWithID:(id)a4 fromClientWithContext:(id)a5 error:(id *)a6;
- (id)processRequest:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5;
- (id)restrictingReadPredicateForEntity:(id)a3 fromClientWithContext:(id)a4;
- (void)clearCrashLogMessage;
- (void)dealloc;
- (void)setCrashLogMessageForRequest:(id)a3 context:(id)a4;
@end

@implementation PLXPCPhotoLibraryStoreServerRequestHandlingPolicy

- (void)clearCrashLogMessage
{
  if (MEMORY[0x19EAEE230](self, a2))
  {

    PLRunWithUnfairLock();
  }
}

- (void)setCrashLogMessageForRequest:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MEMORY[0x19EAEE230]())
  {
    if (v6)
    {
      [v6 auditToken];
    }

    v7 = PLClientApplicationIdentifierFromAuditToken();
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"XPC [%@] %@", v7, v5];
    v8 = v9;
    PLRunWithUnfairLock();
  }
}

size_t __90__PLXPCPhotoLibraryStoreServerRequestHandlingPolicy_setCrashLogMessageForRequest_context___block_invoke(uint64_t a1)
{
  result = strlcpy((*(a1 + 32) + 60), [*(a1 + 40) UTF8String], 0x800uLL);
  qword_1EAFF9EC8 = *(a1 + 32) + 60;
  return result;
}

- (id)processRequest:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self setCrashLogMessageForRequest:v8 context:v9];
  if ([v8 requestType] != 1)
  {
    goto LABEL_6;
  }

  v10 = [v8 entityName];
  v11 = +[PLPhotosHighlight entityName];
  v12 = [v10 isEqualToString:v11];

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v8;
  v14 = MEMORY[0x1E695DFD8];
  v15 = [v13 propertiesToFetch];
  v16 = [v14 setWithArray:v15];

  v17 = +[PLPhotosHighlight allowedPropertiesForMomentList];
  v18 = [v16 isSubsetOfSet:v17];

  if ([v13 resultType]&& (v18 & 1) != 0)
  {

LABEL_6:
    v19 = PLBackendGetLog();
    v20 = os_signpost_id_generate(v19);

    v21 = v19;
    v22 = v21;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 134217984;
      v29 = [v8 requestType];
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "XPCStoreRequest", "type: %lu", buf, 0xCu);
    }

    v27.receiver = self;
    v27.super_class = PLXPCPhotoLibraryStoreServerRequestHandlingPolicy;
    v23 = [(NSXPCStoreServerRequestHandlingPolicy *)&v27 processRequest:v8 fromClientWithContext:v9 error:a5];
    v24 = v22;
    v16 = v24;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_END, v20, "XPCStoreRequest", "", buf, 2u);
    }

    v13 = v16;
    goto LABEL_13;
  }

  v26 = PLBackendGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v13;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Disallowed PhotosHighlight store request: %{public}@", buf, 0xCu);
  }

  v23 = 0;
LABEL_13:

  [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self clearCrashLogMessage];

  return v23;
}

- (id)_backgroundUploadPredicateForEntityName:(id)a3 withClientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PLAssetResourceUploadJobConfiguration entityName];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self backgroundUploadExtensionSupport];
    v11 = [v10 backgroundUploadJobConfigurationPredicateWithClientAuthorization:self->_connectionAuthorization];
LABEL_5:

    goto LABEL_7;
  }

  v12 = +[PLAssetResourceUploadJob entityName];
  v13 = [v6 isEqualToString:v12];

  if (v13)
  {
    v10 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self backgroundUploadExtensionSupport];
    connectionAuthorization = self->_connectionAuthorization;
    v15 = [v7 managedObjectContext];
    v11 = [v10 backgroundUploadJobPredicateWithClientAuthorization:connectionAuthorization managedObjectContext:v15];

    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_lockedCaptureSessionPredicateForEntityName:(id)a3 sessionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v5 isEqual:v8];

  if (v9)
  {
    v10 = [PLManagedAsset predicateToLimitToCaptureSessionIdentifier:v6];
LABEL_6:
    v15 = v10;

    v7 = v15;
    goto LABEL_7;
  }

  v11 = +[PLAdditionalAssetAttributes entityName];
  v12 = [v5 isEqual:v11];

  if (v12 || (+[PLInternalResource entityName](PLInternalResource, "entityName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v5 isEqual:v13], v13, v14))
  {
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"asset.captureSessionIdentifier", v6];
    goto LABEL_6;
  }

LABEL_7:

  return v7;
}

- (id)_predicateForEntityName:(id)a3 captureSessionState:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 type];
  v9 = 0;
  if (v8 > 1)
  {
    if (v8 == 3)
    {
      goto LABEL_21;
    }

    if (v8 != 2)
    {
LABEL_15:
      v17 = PLBackendGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        connectionAuthorization = self->_connectionAuthorization;
        *buf = 138543618;
        v26 = connectionAuthorization;
        v27 = 2114;
        v28 = v7;
        v19 = "Capture Session: [client %{public}@] Unexpected state for XPC store predicate: %{public}@";
        v20 = v17;
        v21 = OS_LOG_TYPE_ERROR;
        v22 = 22;
LABEL_19:
        _os_log_impl(&dword_19BF1F000, v20, v21, v19, buf, v22);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v10 = objc_opt_class();
    v11 = v7;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      if (v13)
      {
        goto LABEL_14;
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id  _Nullable _PLAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nullable __strong)"}];
      [v14 handleFailureInFunction:v15 file:@"PLHelperExtension.h" lineNumber:78 description:{@"Expected class of %@ but was %@", v10, objc_opt_class()}];
    }

    v13 = 0;
LABEL_14:

    v16 = [v13 sessionIdentifier];
    v9 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _lockedCaptureSessionPredicateForEntityName:v6 sessionIdentifier:v16];

    goto LABEL_21;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v17 = PLBackendGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v23 = self->_connectionAuthorization;
    *buf = 138543362;
    v26 = v23;
    v19 = "Capture Session: [client %{public}@] Blocking XPC store access due to unknown state";
    v20 = v17;
    v21 = OS_LOG_TYPE_INFO;
    v22 = 12;
    goto LABEL_19;
  }

LABEL_20:

  v9 = [MEMORY[0x1E696AE18] predicateWithValue:0];
LABEL_21:

  return v9;
}

- (id)_captureSessionPredicateForEntityName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLAssetsdConnectionAuthorization *)self->_connectionAuthorization captureSessionState];
  if (v5)
  {
    v6 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _predicateForEntityName:v4 captureSessionState:v5];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      connectionAuthorization = self->_connectionAuthorization;
      v13 = 138543362;
      v14 = connectionAuthorization;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Capture Session: [client %{public}@] State is unexpectedly nil, blocking XPC store access", &v13, 0xCu);
    }

    v6 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  v9 = v6;
  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = self->_connectionAuthorization;
    v13 = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = v4;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Capture Session: [client %{public}@] Predicate for entity %{public}@: %@", &v13, 0x20u);
  }

  return v9;
}

void __87__PLXPCPhotoLibraryStoreServerRequestHandlingPolicy_limitedLibraryFetchFiltersUpdated___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 48))
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 24);
      v8 = 138543362;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Clearing Fetch Filter for connection with client: %{public}@", &v8, 0xCu);
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = 0;
  }
}

- (id)_limitedLibraryFilterPredicateForEntityName:(id)a3 withClientContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (PLPlatformLimitedLibrarySupported())
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__32618;
    v15 = __Block_byref_object_dispose__32619;
    v16 = 0;
    v9 = v6;
    v10 = v5;
    PLSafeRunWithUnfairLock();
    v7 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __115__PLXPCPhotoLibraryStoreServerRequestHandlingPolicy__limitedLibraryFilterPredicateForEntityName_withClientContext___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) trustedCallerBundleID];
  v3 = *(*(a1 + 32) + 40);
  if (!v3)
  {
    v4 = [MEMORY[0x1E69BF2B0] sharedInstance];
    v5 = *(a1 + 40);
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      memset(v41, 0, sizeof(v41));
    }

    v6 = [v4 photosAccessAllowedWithScope:7 auditToken:v41 clientAuthorization:*(*(a1 + 32) + 8)];

    v7 = *(a1 + 32);
    v8 = *(v7 + 40);
    if (v6 == 4)
    {
      *(v7 + 40) = MEMORY[0x1E695E118];

      v9 = PLBackendGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(v41[0]) = 138543362;
        *(v41 + 4) = v2;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Enabled limited library fetch filter on xpc store connection from: %{public}@", v41, 0xCu);
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:*(a1 + 32) selector:sel_limitedLibraryFetchFiltersUpdated_ name:@"PLLimitedLibraryFetchFiltersUpdatedNotification" object:0];
    }

    else
    {
      *(v7 + 40) = MEMORY[0x1E695E110];
    }

    v3 = *(*(a1 + 32) + 40);
  }

  if (![v3 BOOLValue])
  {
    goto LABEL_27;
  }

  v10 = *(a1 + 32);
  if (*(v10 + 48))
  {
    goto LABEL_18;
  }

  v11 = [*(v10 + 8) fetchFilterIdentifier];
  v12 = [*(a1 + 40) managedObjectContext];
  v13 = [PLLimitedLibraryFetchFilter fetchLimitedLibraryFetchFilterWithApplicationIdentifier:v11 inManagedObjectContext:v12];
  v14 = *(a1 + 32);
  v15 = *(v14 + 48);
  *(v14 + 48) = v13;

  v16 = *(a1 + 32);
  if (*(v16 + 48))
  {
    objc_storeStrong((v16 + 24), v2);
    v17 = [*(*(a1 + 32) + 48) fetchFilterData];
    v18 = [PLLimitedLibraryFetchFilter entityNameToPredicateMapFromFetchFilterData:v17 withApplicationIdentifier:*(*(a1 + 32) + 24)];
    v19 = *(a1 + 32);
    v20 = *(v19 + 32);
    *(v19 + 32) = v18;

    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      v23 = *(v22 + 24);
      v24 = *(v22 + 48);
      LODWORD(v41[0]) = 138543618;
      *(v41 + 4) = v23;
      WORD6(v41[0]) = 2112;
      *(v41 + 14) = v24;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Using Fetch Filter for connection with client: %{public}@ -- %@", v41, 0x16u);
    }
  }

  v10 = *(a1 + 32);
  if (*(v10 + 48))
  {
LABEL_18:
    v25 = *(v10 + 32);
    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = [v25 objectForKeyedSubscript:*(a1 + 48)];
    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = v26;
    goto LABEL_20;
  }

  if (!*(v10 + 32) && [v2 length])
  {
    v28 = [PLLimitedLibraryFetchFilter entityNameToPredicateMapWithApplicationIdentifier:v2];
    v37 = [v28 objectForKeyedSubscript:*(a1 + 48)];
    v38 = *(*(a1 + 56) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;

LABEL_20:
  }

LABEL_21:
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v29 = *(a1 + 48);
    v30 = +[PLCloudMaster entityName];
    v31 = [v29 isEqualToString:v30];
    if ((v31 & 1) == 0)
    {
      v32 = *(a1 + 48);
      v33 = +[PLCloudMasterMediaMetadata entityName];
      LOBYTE(v32) = [v32 isEqualToString:v33];

      if (v32)
      {
        v31 = 1;
        goto LABEL_26;
      }

      v30 = PLBackendGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *(a1 + 48);
        LODWORD(v41[0]) = 138543362;
        *(v41 + 4) = v40;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Limited library fetch filter denying access to entity: %{public}@", v41, 0xCu);
      }
    }

LABEL_26:
    v34 = [MEMORY[0x1E696AE18] predicateWithValue:v31];
    v35 = *(*(a1 + 56) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;
  }

LABEL_27:
}

- (id)_assetFilterPredicateWithClientContext:(id)a3
{
  v4 = a3;
  if (PLIsContentPrivacyEnabled() && ![(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _restrictedLockedContentAccessAllowedForContext:v4])
  {
    v5 = +[PLManagedAsset predicateToExcludeRestrictedLockedAssets];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_filterPredicateForEntityName:(id)a3 withClientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PLManagedAsset entityName];
  v9 = [v6 isEqualToString:v8];

  if (v9)
  {
    v10 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _assetFilterPredicateWithClientContext:v7];
LABEL_5:
    v13 = v10;
    goto LABEL_7;
  }

  v11 = +[PLInternalResource entityName];
  v12 = [v6 isEqualToString:v11];

  if (v12)
  {
    v10 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _internalResourceFilterPredicate];
    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)restrictingReadPredicateForEntity:(id)a3 fromClientWithContext:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 name];
  v8 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _restrictedEntityNamesAllowedForContext:v6];
  v9 = v7;
  v10 = PLXPCStoreAllowedEntityNames();
  v11 = [v10 containsObject:v9];

  if ((v11 & 1) != 0 || [v8 containsObject:v9])
  {
    v26 = v8;
    v12 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _limitedLibraryFilterPredicateForEntityName:v9 withClientContext:v6];
    v13 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _captureSessionPredicateForEntityName:v9];
    v14 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _backgroundUploadPredicateForEntityName:v9 withClientContext:v6];
    v15 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self _filterPredicateForEntityName:v9 withClientContext:v6];
    v16 = objc_alloc_init(MEMORY[0x1E69BF1E8]);
    [v16 addPredicate:v12];
    [v16 addPredicate:v13];
    [v16 addPredicate:v14];
    [v16 addPredicate:v15];
    v17 = [v16 buildAndPredicate];
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      connectionAuthorization = self->_connectionAuthorization;
      *buf = 138543618;
      v28 = connectionAuthorization;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "[client %{public}@] XPC store fetchFilterPredicate: %@", buf, 0x16u);
    }

    v8 = v26;
  }

  else
  {
    v21 = v9;
    v22 = PLXPCStoreDeniedEntityNames();
    v23 = [v22 containsObject:v21];

    if (v23)
    {
      v24 = PLBackendGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v21;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Attempted to fetch disallowed entity: %{public}@", buf, 0xCu);
      }

      v17 = 0;
    }

    else
    {
      if (a3)
      {
        v25 = PLBackendGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v28 = v21;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_FAULT, "Attempted to fetch unexpected entity: %{public}@", buf, 0xCu);
        }
      }

      v17 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    }
  }

  return v17;
}

- (BOOL)_restrictedLockedContentAccessAllowedForContext:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5 = a3;
  PLSafeRunWithUnfairLock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __101__PLXPCPhotoLibraryStoreServerRequestHandlingPolicy__restrictedLockedContentAccessAllowedForContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 2112);
  if (!v2)
  {
    v3 = [*(a1 + 40) entitlements];
    v4 = [v3 objectForKeyedSubscript:@"com.apple.private.assetsd.xpcstore_restricted.access"];

    if ([v4 containsObject:@"photos.locked"])
    {
      v5 = PLBackendGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(*(a1 + 32) + 8) trustedCallerBundleID];
        v7 = [*(*(a1 + 32) + 8) clientProcessIdentifier];
        v12 = 138543618;
        v13 = v6;
        v14 = 1024;
        v15 = v7;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Client %{public}@ [%d] has entitlement access to locked content", &v12, 0x12u);
      }

      v8 = *(a1 + 32);
      v9 = *(v8 + 2112);
      v10 = MEMORY[0x1E695E118];
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 2112);
      v10 = MEMORY[0x1E695E110];
    }

    *(v8 + 2112) = v10;

    v2 = *(*(a1 + 32) + 2112);
  }

  result = [v2 BOOLValue];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_restrictedEntityNamesAllowedForContext:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__32618;
  v10 = __Block_byref_object_dispose__32619;
  v11 = 0;
  v5 = a3;
  PLSafeRunWithUnfairLock();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

void __93__PLXPCPhotoLibraryStoreServerRequestHandlingPolicy__restrictedEntityNamesAllowedForContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 32) entitlements];
    v9 = [v5 objectForKeyedSubscript:@"com.apple.private.assetsd.xpcstore_restricted.access"];

    v6 = [*(a1 + 40) _entityNamesAllowedByRestrictedDataEntitlements:v9];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(a1 + 32) setUserInfo:*(*(*(a1 + 48) + 8) + 40)];
  }
}

- (id)_entityNamesAllowedByRestrictedDataEntitlements:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  pl_dispatch_once();
  v4 = _entityNamesAllowedByRestrictedDataEntitlements__pl_once_object_17;
  v5 = [MEMORY[0x1E695DFA8] set];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v4 objectForKey:{*(*(&v13 + 1) + 8 * i), v13}];
          [v5 addObjectsFromArray:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

void __101__PLXPCPhotoLibraryStoreServerRequestHandlingPolicy__entityNamesAllowedByRestrictedDataEntitlements___block_invoke()
{
  v30[6] = *MEMORY[0x1E69E9840];
  v29[0] = @"photos.person";
  v22 = +[PLPerson entityName];
  v28[0] = v22;
  v21 = +[PLPersonReference entityName];
  v28[1] = v21;
  v20 = +[PLUserFeedback entityName];
  v28[2] = v20;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v30[0] = v19;
  v29[1] = @"photos.memory";
  v18 = +[PLMemory entityName];
  v27[0] = v18;
  v17 = +[PLUserFeedback entityName];
  v27[1] = v17;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v30[1] = v16;
  v29[2] = @"photos.face";
  v15 = +[PLDetectedFace entityName];
  v26[0] = v15;
  v14 = +[PLDetectedFaceprint entityName];
  v26[1] = v14;
  v13 = +[PLDetectedFaceGroup entityName];
  v26[2] = v13;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v30[2] = v12;
  v29[3] = @"photos.scene";
  v0 = +[PLSceneClassification entityName];
  v25[0] = v0;
  v1 = +[PLMediaAnalysisAssetAttributes entityName];
  v25[1] = v1;
  v2 = +[PLComputeSyncAttributes entityName];
  v25[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v30[3] = v3;
  v29[4] = @"photos.suggestion";
  v4 = +[PLSuggestion entityName];
  v24 = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v30[4] = v5;
  v29[5] = @"photos.curation";
  v6 = +[PLComputedAssetAttributes entityName];
  v23[0] = v6;
  v7 = +[PLConversation entityName];
  v23[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v30[5] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:6];
  v10 = [v9 copy];
  v11 = _entityNamesAllowedByRestrictedDataEntitlements__pl_once_object_17;
  _entityNamesAllowedByRestrictedDataEntitlements__pl_once_object_17 = v10;
}

- (id)processFaultForRelationshipWithName:(id)a3 onObjectWithID:(id)a4 fromClientWithContext:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v31 = a5;
  v12 = [v11 entity];
  v13 = [v12 relationshipsByName];
  v14 = [v13 objectForKeyedSubscript:v10];

  v15 = [v14 destinationEntity];
  v16 = [v12 name];
  v17 = +[PLPhotosHighlight entityName];
  if ([v16 isEqualToString:v17])
  {
  }

  else
  {
    v29 = self;
    [v15 name];
    v30 = v14;
    v18 = v15;
    v19 = v11;
    v20 = v10;
    v22 = v21 = a6;
    v23 = +[PLPhotosHighlight entityName];
    v24 = [v22 isEqualToString:v23];

    a6 = v21;
    v10 = v20;
    v11 = v19;
    v15 = v18;
    v14 = v30;

    if (!v24)
    {
      v32.receiver = v29;
      v32.super_class = PLXPCPhotoLibraryStoreServerRequestHandlingPolicy;
      v25 = v31;
      a6 = [(NSXPCStoreServerRequestHandlingPolicy *)&v32 processFaultForRelationshipWithName:v10 onObjectWithID:v11 fromClientWithContext:v31 error:a6];
      goto LABEL_7;
    }
  }

  v25 = v31;
  if (a6)
  {
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
    v27 = a6;
    a6 = 0;
    *v27 = v26;
  }

LABEL_7:

  return a6;
}

- (id)processFaultForObjectWithID:(id)a3 fromClientWithContext:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 entity];
  v11 = [v10 name];
  v12 = +[PLPhotosHighlight entityName];
  v13 = [v11 isEqualToString:v12];

  if (v13)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:3328 userInfo:0];
      *a5 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PLXPCPhotoLibraryStoreServerRequestHandlingPolicy;
    v14 = [(NSXPCStoreServerRequestHandlingPolicy *)&v16 processFaultForObjectWithID:v8 fromClientWithContext:v9 error:a5];
  }

  return v14;
}

- (id)allowableClassesForClientWithContext:(id)a3
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();

  return [v3 setWithObject:v4];
}

- (void)dealloc
{
  if ([(NSNumber *)self->_fetchFilterLock_fetchFilterEnabledStatus BOOLValue])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self];
  }

  v4.receiver = self;
  v4.super_class = PLXPCPhotoLibraryStoreServerRequestHandlingPolicy;
  [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)&v4 dealloc];
}

- (PLXPCPhotoLibraryStoreServerRequestHandlingPolicy)initWithConnectionAuthorization:(id)a3
{
  v5 = a3;
  v6 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionAuthorization, a3);
  }

  return v7;
}

- (PLXPCPhotoLibraryStoreServerRequestHandlingPolicy)init
{
  v12.receiver = self;
  v12.super_class = PLXPCPhotoLibraryStoreServerRequestHandlingPolicy;
  v2 = [(PLXPCPhotoLibraryStoreServerRequestHandlingPolicy *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_fetchFilterLock._os_unfair_lock_opaque = 0;
    v2->_crashLogMessageLock._os_unfair_lock_opaque = 0;
    v2->_restrictedAccessLock._os_unfair_lock_opaque = 0;
    v4 = objc_initWeak(&location, v2);

    v5 = objc_alloc(MEMORY[0x1E69BF270]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__PLXPCPhotoLibraryStoreServerRequestHandlingPolicy_init__block_invoke;
    v9[3] = &unk_1E7576828;
    objc_copyWeak(&v10, &location);
    v6 = [v5 initWithBlock:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    lazyBackgroundUploadExtensionSupport = v3->_lazyBackgroundUploadExtensionSupport;
    v3->_lazyBackgroundUploadExtensionSupport = v6;
  }

  return v3;
}

PLBackgroundUploadExtensionSupport *__57__PLXPCPhotoLibraryStoreServerRequestHandlingPolicy_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLBackgroundUploadExtensionSupport);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end