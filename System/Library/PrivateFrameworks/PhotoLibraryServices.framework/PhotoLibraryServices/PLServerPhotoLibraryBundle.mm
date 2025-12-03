@interface PLServerPhotoLibraryBundle
- (BOOL)impl_bindAssetsdService:(id)service error:(id *)error;
- (BOOL)impl_calculateTotalSizeWithResult:(id)result;
- (BOOL)shouldRelinquishToWriterOfSubitemAtURL:(id)l;
- (PLServerPhotoLibraryBundle)initWithLibraryURL:(id)l bundleController:(id)controller backgroundJobService:(id)service libraryServicesDelegateClass:(Class)class;
- (id)_newTouchCoalescer;
- (id)boundAssetsdServices;
- (id)invalidateClientsReason;
- (id)newAssetsdClient;
- (id)newLibraryServicesManager;
- (id)transferAssets:(id)assets toBundle:(id)bundle options:(id)options completion:(id)completion;
- (id)transferPersons:(id)persons toBundle:(id)bundle options:(id)options completion:(id)completion;
- (void)_touch;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler;
- (void)accommodatePresentedSubitemDeletionAtURL:(id)l completionHandler:(id)handler;
- (void)closeWithReason:(id)reason;
- (void)impl_setCloudPhotoLibraryEnabled:(BOOL)enabled;
- (void)impl_setCloudPhotoLibraryEnabledSync:(BOOL)sync;
- (void)impl_setPhotoStreamEnabled:(BOOL)enabled;
- (void)impl_setSharedAlbumEnabled:(BOOL)enabled;
- (void)impl_unbindAssetsdService:(id)service;
- (void)invalidateClientConnectionsWithReason:(id)reason;
- (void)presentedItemDidMoveToURL:(id)l;
- (void)relinquishPresentedItemToReader:(id)reader;
- (void)relinquishPresentedItemToWriter:(id)writer;
- (void)savePresentedItemChangesWithCompletionHandler:(id)handler;
- (void)shutdownWithReason:(id)reason;
@end

@implementation PLServerPhotoLibraryBundle

- (void)impl_setSharedAlbumEnabled:(BOOL)enabled
{
  selfCopy = self;
  v4 = PLMethodNotImplementedException();
  objc_exception_throw(v4);
}

- (void)impl_setPhotoStreamEnabled:(BOOL)enabled
{
  selfCopy = self;
  v4 = PLMethodNotImplementedException();
  objc_exception_throw(v4);
}

- (void)impl_setCloudPhotoLibraryEnabledSync:(BOOL)sync
{
  selfCopy = self;
  v4 = PLMethodNotImplementedException();
  objc_exception_throw(v4);
}

- (void)accommodatePresentedSubitemDeletionAtURL:(id)l completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v8 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent = [libraryURL lastPathComponent];
    v11 = 138412546;
    v12 = lastPathComponent;
    v13 = 2112;
    v14 = lCopy;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Library: %@ accommodatePresentedSubitemDeletionAtURL: %@", &v11, 0x16u);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)presentedItemDidMoveToURL:(id)l
{
  v11 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    v7 = 138412546;
    v8 = libraryURL;
    v9 = 2112;
    v10 = lCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Library: %@ moved, presentedItemDidMoveToURL: %@", &v7, 0x16u);
  }
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent = [libraryURL lastPathComponent];
    v9 = 138412290;
    v10 = lastPathComponent;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Library: %@ accommodatePresentedItemDeletionWithCompletionHandler: called sending error", &v9, 0xCu);
  }

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41005 userInfo:0];
  handlerCopy[2](handlerCopy, v8);
}

- (void)savePresentedItemChangesWithCompletionHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent = [libraryURL lastPathComponent];
    v8 = 138412290;
    v9 = lastPathComponent;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Library: %@ savePresentedItemChangesWithCompletionHandler: called", &v8, 0xCu);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)relinquishPresentedItemToWriter:(id)writer
{
  v21 = *MEMORY[0x1E69E9840];
  writerCopy = writer;
  v5 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent = [libraryURL lastPathComponent];
    *buf = 138412290;
    v20 = lastPathComponent;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Begin relinquishing library bundle %@ to writer", buf, 0xCu);
  }

  bundleController = [(PLPhotoLibraryBundle *)self bundleController];
  libraryURL2 = [(PLPhotoLibraryBundle *)self libraryURL];
  v10 = *MEMORY[0x1E696A578];
  v18[0] = libraryURL2;
  v18[1] = @"Relinquishing photo library to writer";
  v11 = *MEMORY[0x1E696A588];
  v17[1] = v10;
  v17[2] = v11;
  v18[2] = @"Another process is trying to modify the library bundle";
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:41018 userInfo:v12];
  [bundleController shutdownBundle:self reason:v13];
  v14 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL3 = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent2 = [libraryURL3 lastPathComponent];
    *buf = 138412290;
    v20 = lastPathComponent2;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "shutdownBundle for %@ has completed. Relinquishing to writer.", buf, 0xCu);
  }

  writerCopy[2](writerCopy, 0);
}

- (BOOL)shouldRelinquishToWriterOfSubitemAtURL:(id)l
{
  v54 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  uRLByStandardizingPath = [lCopy URLByStandardizingPath];
  pathManager = [(PLPhotoLibraryBundle *)self pathManager];
  pathsForExternalWriters = [pathManager pathsForExternalWriters];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = pathsForExternalWriters;
  v40 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (!v40)
  {
    v30 = 0;
    goto LABEL_23;
  }

  selfCopy = self;
  v37 = lCopy;
  v39 = *v45;
  v9 = *MEMORY[0x1E696A250];
  v41 = *MEMORY[0x1E696A998];
  v10 = 0x1E695D000uLL;
  uRLByDeletingLastPathComponent = uRLByStandardizingPath;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v45 != v39)
    {
      objc_enumerationMutation(obj);
    }

    v42 = v12;
    v13 = *(*(&v44 + 1) + 8 * v12);
    path = [uRLByDeletingLastPathComponent path];
    v15 = [path hasPrefix:v13];

    if (v15)
    {
      break;
    }

LABEL_17:
    v12 = v42 + 1;
    if (v42 + 1 == v40)
    {
      v40 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (!v40)
      {
        uRLByStandardizingPath = uRLByDeletingLastPathComponent;
        v30 = 0;
        goto LABEL_21;
      }

      goto LABEL_3;
    }
  }

  while (2)
  {
    v16 = [*(v10 + 4088) fileURLWithPath:v13 isDirectory:1];
    *buf = 0;
    v43 = 0;
    v17 = [defaultManager getRelationship:buf ofDirectoryAtURL:v16 toItemAtURL:uRLByDeletingLastPathComponent error:&v43];
    v18 = v43;
    v19 = v18;
    if (!v17)
    {
      domain = [v18 domain];
      if ([domain isEqualToString:v9] && objc_msgSend(v19, "code") == 260)
      {
        v21 = v9;
        v22 = defaultManager;
        userInfo = [v19 userInfo];
        v24 = [userInfo objectForKeyedSubscript:v41];
        v25 = uRLByDeletingLastPathComponent;
        v26 = [v24 isEqual:uRLByDeletingLastPathComponent];

        if (!v26)
        {
          defaultManager = v22;
          v9 = v21;
          v10 = 0x1E695D000;
          uRLByDeletingLastPathComponent = v25;
LABEL_13:

          path2 = [uRLByDeletingLastPathComponent path];
          v28 = [path2 hasPrefix:v13];

          if ((v28 & 1) == 0)
          {
            goto LABEL_17;
          }

          continue;
        }

        uRLByDeletingLastPathComponent = [v25 URLByDeletingLastPathComponent];
        domain = v25;
        defaultManager = v22;
        v9 = v21;
        v10 = 0x1E695D000;
      }

      goto LABEL_13;
    }

    break;
  }

  v29 = *buf;

  if (v29 >= 2)
  {
    goto LABEL_17;
  }

  uRLByStandardizingPath = uRLByDeletingLastPathComponent;
  v30 = 1;
LABEL_21:
  self = selfCopy;
  lCopy = v37;
LABEL_23:

  v31 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent = [libraryURL lastPathComponent];
    v34 = @" ";
    *buf = 138412802;
    *&buf[4] = lastPathComponent;
    v49 = 2112;
    if (v30)
    {
      v34 = @" NOT ";
    }

    v50 = v34;
    v51 = 2112;
    v52 = lCopy;
    _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEFAULT, "Library: %@ should%@RelinquishToWriterOfSubitemAtURL: %@", buf, 0x20u);
  }

  return v30 ^ 1;
}

- (void)relinquishPresentedItemToReader:(id)reader
{
  v10 = *MEMORY[0x1E69E9840];
  readerCopy = reader;
  v5 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent = [libraryURL lastPathComponent];
    v8 = 138412290;
    v9 = lastPathComponent;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "NSFilePresenter: %@ relinquish to reader", &v8, 0xCu);
  }

  readerCopy[2](readerCopy, 0);
}

- (void)impl_setCloudPhotoLibraryEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    PLCPLRecordEnableForCurrentAccount();
  }

  libraryServicesManager = [(PLPhotoLibraryBundle *)self libraryServicesManager];
  [libraryServicesManager setICloudPhotosEnabledInternal:enabledCopy];

  libraryServicesManager2 = [(PLPhotoLibraryBundle *)self libraryServicesManager];
  cplReadiness = [libraryServicesManager2 cplReadiness];
  [cplReadiness processCloudPhotosLibraryStateChange:enabledCopy];
}

- (BOOL)impl_calculateTotalSizeWithResult:(id)result
{
  v36 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  pathManager = [(PLPhotoLibraryBundle *)self pathManager];
  pathsForLibraryFilesystemSizeCalculation = [pathManager pathsForLibraryFilesystemSizeCalculation];

  v6 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = pathsForLibraryFilesystemSizeCalculation;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_INFO, "calculateTotalSizeWithResult for paths %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = pathsForLibraryFilesystemSizeCalculation;
  v7 = [obj countByEnumeratingWithState:&v16 objects:v32 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __64__PLServerPhotoLibraryBundle_impl_calculateTotalSizeWithResult___block_invoke;
        v15[3] = &unk_1E7569A40;
        v15[4] = &buf;
        v15[5] = &v28;
        v15[6] = &v24;
        v15[7] = &v20;
        [MEMORY[0x1E69BF238] calculateTotalSizeOfFilesAtPath:v10 calculatePurgeable:1 allocatedSize:0 result:v15];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v32 count:16];
    }

    while (v7);
  }

  (*(resultCopy + 2))(resultCopy, *(*(&buf + 1) + 24), v29[3], v25[3], v21[3], 0);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&buf, 8);

  return 1;
}

void *__64__PLServerPhotoLibraryBundle_impl_calculateTotalSizeWithResult___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(*(result[4] + 8) + 24) += a2;
  *(*(result[5] + 8) + 24) += a3;
  *(*(result[6] + 8) + 24) += a4;
  *(*(result[7] + 8) + 24) += a5;
  return result;
}

- (void)impl_unbindAssetsdService:(id)service
{
  serviceCopy = service;
  v3 = serviceCopy;
  PLSafeRunWithUnfairLock();
}

void __56__PLServerPhotoLibraryBundle_impl_unbindAssetsdService___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) boundAssetsdServicesTable];
  [v2 removeObject:*(a1 + 40)];
}

- (BOOL)impl_bindAssetsdService:(id)service error:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__23523;
  v12 = __Block_byref_object_dispose__23524;
  v13 = 0;
  serviceCopy = service;
  PLSafeRunWithUnfairLock();
  v6 = *(v15 + 24);
  if (error && (v15[3] & 1) == 0)
  {
    *error = v9[5];
    v6 = *(v15 + 24);
  }

  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v14, 8);

  return v6 & 1;
}

void __60__PLServerPhotoLibraryBundle_impl_bindAssetsdService_error___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2[32])
  {
    *(*(a1[6] + 8) + 24) = 0;
    v3 = *(a1[4] + 256);
    v4 = *(a1[7] + 8);
    v5 = v3;
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;
  }

  else
  {
    v7 = [v2 boundAssetsdServicesTable];
    [v7 addObject:a1[5]];
    v6 = v7;
  }
}

- (id)boundAssetsdServices
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__23523;
  v8 = __Block_byref_object_dispose__23524;
  v9 = 0;
  PLSafeRunWithUnfairLock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __50__PLServerPhotoLibraryBundle_boundAssetsdServices__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) boundAssetsdServicesTable];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)shutdownWithReason:(id)reason
{
  v36 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v29 = objc_opt_class();
    v30 = 2048;
    selfCopy = self;
    v32 = 2080;
    v33 = "[PLServerPhotoLibraryBundle shutdownWithReason:]";
    v34 = 2112;
    v35 = reasonCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p %s %@", buf, 0x2Au);
  }

  v6 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent = [libraryURL lastPathComponent];
    code = [reasonCopy code];
    *buf = 138412802;
    v29 = lastPathComponent;
    v30 = 2048;
    selfCopy = code;
    v32 = 2112;
    v33 = reasonCopy;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Shutting down bundle %@ with reason code %td, full reason %@", buf, 0x20u);
  }

  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __49__PLServerPhotoLibraryBundle_shutdownWithReason___block_invoke;
  v25 = &unk_1E7578848;
  selfCopy2 = self;
  v10 = reasonCopy;
  v27 = v10;
  PLSafeRunWithUnfairLock();
  [(PLServerPhotoLibraryBundle *)self invalidateClientConnectionsWithReason:v10];
  libraryServicesManager = [(PLPhotoLibraryBundle *)self libraryServicesManager];
  preRunningProgress = [libraryServicesManager preRunningProgress];

  totalUnitCount = [preRunningProgress totalUnitCount];
  if (totalUnitCount != [preRunningProgress completedUnitCount])
  {
    v14 = PLLibraryBundleGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = preRunningProgress;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Cancelling libraryServicesManager.preRunningProgress %@", buf, 0xCu);
    }

    [preRunningProgress cancel];
  }

  libraryServicesManager2 = [(PLPhotoLibraryBundle *)self libraryServicesManager];
  postRunningProgress = [libraryServicesManager2 postRunningProgress];

  v17 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = postRunningProgress;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Cancelling libraryServicesManager.postRunningProgress %@", buf, 0xCu);
  }

  [postRunningProgress cancel];
  v21.receiver = self;
  v21.super_class = PLServerPhotoLibraryBundle;
  [(PLPhotoLibraryBundle *)&v21 shutdownWithReason:v10];
  v18 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL2 = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent2 = [libraryURL2 lastPathComponent];
    *buf = 138412290;
    v29 = lastPathComponent2;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Finished shutting down bundle %@", buf, 0xCu);
  }
}

- (id)invalidateClientsReason
{
  v2 = PLSafeResultWithUnfairLock();

  return v2;
}

void __58__PLServerPhotoLibraryBundle_clearInvalidateClientsReason__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) libraryURL];
    v4 = [v3 lastPathComponent];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Allowing future bind requests for bundle %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 256);
  *(v5 + 256) = 0;
}

- (void)invalidateClientConnectionsWithReason:(id)reason
{
  v27 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __68__PLServerPhotoLibraryBundle_invalidateClientConnectionsWithReason___block_invoke;
  v21 = &unk_1E7578848;
  selfCopy = self;
  v5 = reasonCopy;
  v23 = v5;
  PLSafeRunWithUnfairLock();
  v6 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [(PLPhotoLibraryBundle *)self libraryURL];
    lastPathComponent = [libraryURL lastPathComponent];
    *buf = 138412290;
    v26 = lastPathComponent;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating all client connections to bundle %@", buf, 0xCu);
  }

  boundAssetsdServices = [(PLServerPhotoLibraryBundle *)self boundAssetsdServices];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [boundAssetsdServices countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(boundAssetsdServices);
        }

        [*(*(&v14 + 1) + 8 * i) invalidateConnectionWithReason:v5];
      }

      v11 = [boundAssetsdServices countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v11);
  }

  PLSafeRunWithUnfairLock();
}

void __68__PLServerPhotoLibraryBundle_invalidateClientConnectionsWithReason___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) libraryURL];
    v4 = [v3 lastPathComponent];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Disallowing future bind requests for bundle %@", &v5, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 256), *(a1 + 40));
}

void __68__PLServerPhotoLibraryBundle_invalidateClientConnectionsWithReason___block_invoke_59(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = PLLibraryBundleGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) libraryURL];
    v4 = [v3 lastPathComponent];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Removing all bound assetsd services from bundle %@", &v6, 0xCu);
  }

  v5 = [*(a1 + 32) boundAssetsdServicesTable];
  [v5 removeAllObjects];
}

- (void)_touch
{
  pathManager = [(PLPhotoLibraryBundle *)self pathManager];
  v3 = [pathManager photoDirectoryWithType:1];
  fileSystemRepresentation = [v3 fileSystemRepresentation];

  if (fileSystemRepresentation)
  {

    utimes(fileSystemRepresentation, 0);
  }
}

- (void)closeWithReason:(id)reason
{
  v28 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v21 = objc_opt_class();
    v22 = 2048;
    selfCopy = self;
    v24 = 2080;
    v25 = "[PLServerPhotoLibraryBundle closeWithReason:]";
    v26 = 2112;
    v27 = reasonCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p %s %@", buf, 0x2Au);
  }

  libraryServicesManager = [(PLPhotoLibraryBundle *)self libraryServicesManager];
  v19 = 0;
  v7 = [libraryServicesManager finalize:&v19];
  v8 = v19;

  if ((v7 & 1) == 0)
  {
    v9 = PLLibraryBundleGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      libraryServicesManager2 = [(PLPhotoLibraryBundle *)self libraryServicesManager];
      *buf = 138412546;
      v21 = libraryServicesManager2;
      v22 = 2112;
      selfCopy = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to finalize library services manager %@: %@", buf, 0x16u);
    }

    libraryServicesManager3 = [(PLPhotoLibraryBundle *)self libraryServicesManager];
    [libraryServicesManager3 deactivateWithInvalidationError:v8];
  }

  pathManager = [(PLPhotoLibraryBundle *)self pathManager];
  v13 = PLLibraryIDFromPathManager();
  PLUnregisterDataStoresForLibraryID(v13);

  v14 = MEMORY[0x1E69BF310];
  pathManager2 = [(PLPhotoLibraryBundle *)self pathManager];
  [v14 invalidateIsSuppressingTargetConfigDueToPendingThumbMigrationForPathManager:pathManager2];

  v18.receiver = self;
  v18.super_class = PLServerPhotoLibraryBundle;
  [(PLPhotoLibraryBundle *)&v18 closeWithReason:reasonCopy];
  lazyTouchCoalescer = self->_lazyTouchCoalescer;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__PLServerPhotoLibraryBundle_closeWithReason___block_invoke;
  v17[3] = &unk_1E7569A18;
  v17[4] = self;
  [(PLLazyObject *)lazyTouchCoalescer invalidateWithHandler:v17];
}

uint64_t __46__PLServerPhotoLibraryBundle_closeWithReason___block_invoke(uint64_t a1, void *a2)
{
  [a2 reset];
  v3 = *(a1 + 32);

  return [v3 _touch];
}

- (id)transferPersons:(id)persons toBundle:(id)bundle options:(id)options completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  completionCopy = completion;
  selfCopy = self;
  optionsCopy = options;
  bundleCopy = bundle;
  v15 = [[PLInterLibraryTransfer alloc] initWithSourceBundle:selfCopy destinationBundle:bundleCopy options:optionsCopy];

  v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(personsCopy, "count")}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__PLServerPhotoLibraryBundle_transferPersons_toBundle_options_completion___block_invoke;
  aBlock[3] = &unk_1E7573C00;
  v17 = personsCopy;
  v44 = v17;
  v18 = v16;
  v45 = v18;
  v19 = v15;
  v46 = v19;
  v20 = completionCopy;
  v47 = v20;
  v21 = _Block_copy(aBlock);
  v22 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = selfCopy;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Waiting for running state on source bundle %@", buf, 0xCu);
  }

  libraryServicesManager = [(PLPhotoLibraryBundle *)selfCopy libraryServicesManager];
  v42 = 0;
  v24 = [libraryServicesManager awaitLibraryState:7 error:&v42];
  v25 = v42;

  if (v24)
  {
    v26 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = selfCopy;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Waiting for running state on dest bundle %@", buf, 0xCu);
    }

    libraryServicesManager2 = [(PLPhotoLibraryBundle *)selfCopy libraryServicesManager];
    v41 = v25;
    v28 = [libraryServicesManager2 awaitLibraryState:7 error:&v41];
    v29 = v41;

    if (v28)
    {
      block = v21;
      v30 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "Enqueueing transfer operation", buf, 2u);
      }

      v31 = MEMORY[0x1E696AEC0];
      anyObject = [v17 anyObject];
      v33 = [v31 stringWithFormat:@"InterLibraryTransfer %@ (%tu)", anyObject, objc_msgSend(v17, "count")];

      uTF8String = [v33 UTF8String];
      v35 = qos_class_self();
      v36 = dispatch_queue_attr_make_with_qos_class(0, v35, 0);
      v37 = dispatch_queue_create(uTF8String, v36);

      dispatch_async(v37, block);
      v38 = v18;

      v21 = block;
    }

    else
    {
      (*(v20 + 2))(v20, v29);
      v38 = 0;
    }
  }

  else
  {
    (*(v20 + 2))(v20, v25);
    v38 = 0;
    v29 = v25;
  }

  return v38;
}

void __74__PLServerPhotoLibraryBundle_transferPersons_toBundle_options_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([*(a1 + 40) isCancelled])
        {
          v11 = PLInterLibraryTransferGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Person transfer operation cancelled", buf, 2u);
          }

          v12 = MEMORY[0x1E696ABC0];
          v13 = *MEMORY[0x1E69BFF48];
          v22 = *MEMORY[0x1E696A278];
          v23 = @"Person transfer operation cancelled";
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v15 = [v12 errorWithDomain:v13 code:41031 userInfo:v14];

          v5 = v15;
          goto LABEL_15;
        }

        v9 = *(a1 + 48);
        v16 = 0;
        v10 = [v9 transferPersonWithUuid:v8 error:&v16];
        v5 = v16;
        if (!v10)
        {
          goto LABEL_15;
        }

        [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_15:

  (*(*(a1 + 56) + 16))();
}

- (id)transferAssets:(id)assets toBundle:(id)bundle options:(id)options completion:(id)completion
{
  v50 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  completionCopy = completion;
  selfCopy = self;
  optionsCopy = options;
  bundleCopy = bundle;
  v15 = [[PLInterLibraryTransfer alloc] initWithSourceBundle:selfCopy destinationBundle:bundleCopy options:optionsCopy];

  v16 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:{objc_msgSend(assetsCopy, "count")}];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PLServerPhotoLibraryBundle_transferAssets_toBundle_options_completion___block_invoke;
  aBlock[3] = &unk_1E7573C00;
  v17 = assetsCopy;
  v44 = v17;
  v18 = v16;
  v45 = v18;
  v19 = v15;
  v46 = v19;
  v20 = completionCopy;
  v47 = v20;
  v21 = _Block_copy(aBlock);
  v22 = PLInterLibraryTransferGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v49 = selfCopy;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Waiting for running state on source bundle %@", buf, 0xCu);
  }

  libraryServicesManager = [(PLPhotoLibraryBundle *)selfCopy libraryServicesManager];
  v42 = 0;
  v24 = [libraryServicesManager awaitLibraryState:7 error:&v42];
  v25 = v42;

  if (v24)
  {
    v26 = PLInterLibraryTransferGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = selfCopy;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_INFO, "Waiting for running state on dest bundle %@", buf, 0xCu);
    }

    libraryServicesManager2 = [(PLPhotoLibraryBundle *)selfCopy libraryServicesManager];
    v41 = v25;
    v28 = [libraryServicesManager2 awaitLibraryState:7 error:&v41];
    v29 = v41;

    if (v28)
    {
      block = v21;
      v30 = PLInterLibraryTransferGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_INFO, "Enqueueing transfer operation", buf, 2u);
      }

      v31 = MEMORY[0x1E696AEC0];
      anyObject = [v17 anyObject];
      v33 = [v31 stringWithFormat:@"InterLibraryTransfer %@ (%tu)", anyObject, objc_msgSend(v17, "count")];

      uTF8String = [v33 UTF8String];
      v35 = qos_class_self();
      v36 = dispatch_queue_attr_make_with_qos_class(0, v35, 0);
      v37 = dispatch_queue_create(uTF8String, v36);

      dispatch_async(v37, block);
      v38 = v18;

      v21 = block;
    }

    else
    {
      (*(v20 + 2))(v20, v29);
      v38 = 0;
    }
  }

  else
  {
    (*(v20 + 2))(v20, v25);
    v38 = 0;
    v29 = v25;
  }

  return v38;
}

void __73__PLServerPhotoLibraryBundle_transferAssets_toBundle_options_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([*(a1 + 40) isCancelled])
        {
          v11 = PLInterLibraryTransferGetLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Asset transfer operation cancelled", buf, 2u);
          }

          v12 = MEMORY[0x1E696ABC0];
          v13 = *MEMORY[0x1E69BFF48];
          v22 = *MEMORY[0x1E696A278];
          v23 = @"Asset transfer operation cancelled";
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          v15 = [v12 errorWithDomain:v13 code:41031 userInfo:v14];

          v5 = v15;
          goto LABEL_15;
        }

        v9 = *(a1 + 48);
        v16 = 0;
        v10 = [v9 transferAssetWithUuid:v8 error:&v16];
        v5 = v16;
        if (!v10)
        {
          goto LABEL_15;
        }

        [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "completedUnitCount") + 1}];
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_15:

  (*(*(a1 + 56) + 16))();
}

- (id)_newTouchCoalescer
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69BDD68];
  v4 = dispatch_queue_create("bundle-root-touch", 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PLServerPhotoLibraryBundle__newTouchCoalescer__block_invoke;
  v7[3] = &unk_1E75699F0;
  objc_copyWeak(&v8, &location);
  v5 = [v3 setCoalescerWithLabel:@"com.apple.photos.bundlerootupdate" target:self queue:v4 action:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return v5;
}

void __48__PLServerPhotoLibraryBundle__newTouchCoalescer__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v7 = [v5 activityToken];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _touch];

  [v7 endActivity];
  [v5 delayNextInvocationByTimeInterval:15.0];
}

- (id)newLibraryServicesManager
{
  v3 = [PLLibraryServicesManager alloc];
  backgroundJobService = self->_backgroundJobService;
  bundleController = [(PLPhotoLibraryBundle *)self bundleController];
  cacheDeleteRegistration = [bundleController cacheDeleteRegistration];
  v7 = [(PLLibraryServicesManager *)v3 initWithLibraryBundle:self backgroundJobService:backgroundJobService cacheDeleteRegistration:cacheDeleteRegistration delegateClass:self->_libraryServicesDelegateClass];

  return v7;
}

- (id)newAssetsdClient
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"PLAssetsdClient must not be used by assetsd" userInfo:0];
  objc_exception_throw(v2);
}

- (PLServerPhotoLibraryBundle)initWithLibraryURL:(id)l bundleController:(id)controller backgroundJobService:(id)service libraryServicesDelegateClass:(Class)class
{
  lCopy = l;
  controllerCopy = controller;
  serviceCopy = service;
  v26.receiver = self;
  v26.super_class = PLServerPhotoLibraryBundle;
  v13 = [(PLPhotoLibraryBundle *)&v26 initWithLibraryURL:lCopy bundleController:controllerCopy];
  v14 = v13;
  if (v13)
  {
    v13->_libraryServicesDelegateClass = class;
    objc_storeStrong(&v13->_backgroundJobService, service);
    v15 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    presentedItemOperationQueue = v14->_presentedItemOperationQueue;
    v14->_presentedItemOperationQueue = v15;

    v17 = objc_initWeak(&location, v14);
    v18 = objc_alloc(MEMORY[0x1E69BF270]);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __116__PLServerPhotoLibraryBundle_initWithLibraryURL_bundleController_backgroundJobService_libraryServicesDelegateClass___block_invoke;
    v23[3] = &unk_1E7576828;
    objc_copyWeak(&v24, &location);
    v19 = [v18 initWithBlock:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    lazyTouchCoalescer = v14->_lazyTouchCoalescer;
    v14->_lazyTouchCoalescer = v19;

    v21 = v14;
  }

  return v14;
}

id __116__PLServerPhotoLibraryBundle_initWithLibraryURL_bundleController_backgroundJobService_libraryServicesDelegateClass___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _newTouchCoalescer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end