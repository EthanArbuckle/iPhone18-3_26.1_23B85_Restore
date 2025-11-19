@interface UARPiCloudAssetManager
- (BOOL)checkLocalUARPCacheForAccessory:(id)a3 versionAvailable:(id *)a4 firmwarePath:(id *)a5 releaseNotesPath:(id *)a6;
- (BOOL)isFirmwareHash:(id)a3 equalToHash:(id)a4;
- (BOOL)moveFileAtURL:(id)a3 toTempURL:(id)a4;
- (UARPiCloudAssetManager)initWithManager:(id)a3;
- (id)moveToUARPCacheFromRemoteURL:(id)a3 assetType:(int64_t)a4 forAcessory:(id)a5;
- (id)pathToSuperBinaryInAccessoryVersionDirectory:(id)a3 uarpVersion:(id *)a4;
- (int64_t)downloadFirmwareForAccessory:(id)a3;
- (int64_t)downloadReleaseNotesForAccessory:(id)a3;
- (int64_t)getAttestationCertificates:(id)a3 inContainer:(id)a4;
- (int64_t)getSupportedAccessories:(id)a3 batchRequest:(BOOL)a4 inContainer:(id)a5;
- (int64_t)handleReleaseNotesDownloadRequestForAccessory:(id)a3;
- (int64_t)handleRemoteFirmwareDownloadRequestForAccessory:(id)a3;
- (int64_t)handleRemoteQueryRequestForAccessories:(id)a3 inContainer:(id)a4;
- (int64_t)performRemoteUpdateCheckForAccessories:(id)a3 inContainer:(id)a4;
- (unsigned)_getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:(unint64_t)a3;
- (void)cleanupAssetCache;
- (void)handleFirmwareDownloadResponseFromLocation:(id)a3 forAccessory:(id)a4;
- (void)handleReleaseNotesDownloadResponseFromLocation:(id)a3 forAccessory:(id)a4;
- (void)handleRemoteDownloadRequestForAttestationCertificatesForSubjectKeyIdentifier:(id)a3 inContainer:(id)a4;
- (void)handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup:(id)a3 batchRequest:(BOOL)a4 inContainer:(id)a5;
- (void)handleRemoteDownloadResponseForAttestationCertificates:(id)a3 forSubKeyIdentifier:(id)a4;
- (void)handleRemoteDownloadResponseForSupportedAccessories:(id)a3 forProductGroup:(id)a4 isComplete:(BOOL)a5;
- (void)handleRemoteFetchCompletion:(id)a3 error:(id)a4;
- (void)remoteFetchCompletion:(id)a3 error:(id)a4;
- (void)remoteFetchCompletionForAttestationCertificates:(id)a3 subjectKeyIdentifier:(id)a4 error:(id)a5;
- (void)setFirmwareDownloadFailureStatusForAccessory:(id)a3;
- (void)setFirmwareDownloadSuccessStatusForAccessory:(id)a3;
- (void)setReleaseNotesDownloadFailureStatusForAccessory:(id)a3;
- (void)setReleaseNotesDownloadSuccessStatusForAccessory:(id)a3;
@end

@implementation UARPiCloudAssetManager

- (UARPiCloudAssetManager)initWithManager:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = UARPiCloudAssetManager;
  v6 = [(UARPiCloudAssetManager *)&v16 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.accessoryupdater.uarp", "iCloudAssetManager");
    log = v6->_log;
    v6->_log = v7;

    objc_storeStrong(&v6->_assetManager, a3);
    v9 = dispatch_queue_create("com.apple.aam.uarpiCloudAssetManager", 0);
    workQueue = v6->_workQueue;
    v6->_workQueue = v9;

    v11 = dispatch_queue_create("com.apple.aam.uarpiCloudAssetManager.queue", 0);
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v11;

    v13 = dispatch_queue_create("com.apple.aam.uarpiCloudAssetManager.batched", 0);
    batchedProcessingQueue = v6->_batchedProcessingQueue;
    v6->_batchedProcessingQueue = v13;
  }

  return v6;
}

- (void)cleanupAssetCache
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = InternalStorageDirectoryPath();
  v5 = UARPArrayOfExpiredFiles(v4, 0, 2592000.0);

  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x277CCAC68];
  v8 = InternalStorageDirectoryPath();
  v9 = [v7 escapedPatternForString:v8];
  v10 = *MEMORY[0x277D02638];
  v11 = [v6 stringWithFormat:@"^%@\\S+\\/\\S+\\/(%@|%@)\\/.+$", v9, *MEMORY[0x277D02638], *MEMORY[0x277D02640]];

  v39 = v11;
  v40 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v11 options:1 error:0];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v49 objects:v56 count:16];
  obj = v12;
  if (!v13)
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v50;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v50 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v49 + 1) + 8 * i);
      v19 = [v18 pathExtension];
      v20 = [@"urlasset" isEqualToString:v19];

      if (v20)
      {
        v21 = v15;
      }

      else
      {
        v21 = 1;
        if ([v40 rangeOfFirstMatchInString:v18 options:1 range:{0, objc_msgSend(v18, "length")}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          continue;
        }
      }

      [v3 addObject:v18];
      v15 = v21;
    }

    v14 = [obj countByEnumeratingWithState:&v49 objects:v56 count:16];
  }

  while (v14);

  if (v15)
  {
    v22 = MEMORY[0x277CCACA8];
    v23 = InternalStorageDirectoryPath();
    v12 = [v22 stringWithFormat:@"%@%@", v23, @"icloudTokens.plist"];

    [v3 addObject:v12];
    goto LABEL_14;
  }

LABEL_15:
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v41 = v3;
  v44 = [v41 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v44)
  {
    v43 = *v46;
    do
    {
      for (j = 0; j != v44; ++j)
      {
        if (*v46 != v43)
        {
          objc_enumerationMutation(v41);
        }

        v25 = *(*(&v45 + 1) + 8 * j);
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = v25;
          _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "Deleting iCloud Cache file:%@", buf, 0xCu);
        }

        v27 = [MEMORY[0x277CCAA00] defaultManager];
        [v27 removeItemAtPath:v25 error:0];

        v28 = [v25 stringByDeletingLastPathComponent];
        v29 = InternalStorageDirectoryPath();
        v30 = [v28 isEqualToString:v29];

        if ((v30 & 1) == 0)
        {
          while (1)
          {
            v31 = [MEMORY[0x277CCAA00] defaultManager];
            v32 = [v31 contentsOfDirectoryAtPath:v28 error:0];

            if ([v32 count])
            {
              break;
            }

            v33 = self->_log;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v28;
              _os_log_impl(&dword_2701F5000, v33, OS_LOG_TYPE_DEFAULT, "Deleting iCloud Cache directory:%@", buf, 0xCu);
            }

            v34 = [MEMORY[0x277CCAA00] defaultManager];
            [v34 removeItemAtPath:v28 error:0];

            v35 = [v28 stringByDeletingLastPathComponent];

            v36 = InternalStorageDirectoryPath();
            v37 = [v35 isEqualToString:v36];

            v28 = v35;
            if (v37)
            {
              goto LABEL_30;
            }
          }
        }

        v35 = v28;
LABEL_30:
      }

      v44 = [v41 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v44);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (int64_t)performRemoteUpdateCheckForAccessories:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__UARPiCloudAssetManager_performRemoteUpdateCheckForAccessories_inContainer___block_invoke;
  v13[3] = &unk_279DFCF70;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(workQueue, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __77__UARPiCloudAssetManager_performRemoteUpdateCheckForAccessories_inContainer___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) handleRemoteQueryRequestForAccessories:*(a1 + 40) inContainer:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int64_t)downloadFirmwareForAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__UARPiCloudAssetManager_downloadFirmwareForAccessory___block_invoke;
  block[3] = &unk_279DFCF98;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(workQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __55__UARPiCloudAssetManager_downloadFirmwareForAccessory___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) handleRemoteFirmwareDownloadRequestForAccessory:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)downloadReleaseNotesForAccessory:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__UARPiCloudAssetManager_downloadReleaseNotesForAccessory___block_invoke;
  block[3] = &unk_279DFCF98;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(workQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __59__UARPiCloudAssetManager_downloadReleaseNotesForAccessory___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) handleReleaseNotesDownloadRequestForAccessory:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int64_t)getSupportedAccessories:(id)a3 batchRequest:(BOOL)a4 inContainer:(id)a5
{
  v8 = a3;
  v9 = a5;
  workQueue = self->_workQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__UARPiCloudAssetManager_getSupportedAccessories_batchRequest_inContainer___block_invoke;
  v14[3] = &unk_279DFCFC0;
  v14[4] = self;
  v15 = v8;
  v17 = a4;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_sync(workQueue, v14);

  return 0;
}

- (int64_t)handleRemoteQueryRequestForAccessories:(id)a3 inContainer:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "Performing Remote Check on iCloud ContainerID:%@ for accessories: %@", buf, 0x16u);
  }

  v10 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:v7];
  cloudManager = self->_cloudManager;
  self->_cloudManager = v10;

  if (self->_cloudManager)
  {
    if (!self->_accessories)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      accessories = self->_accessories;
      self->_accessories = v12;
    }

    v41 = v7;
    v14 = self->_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = self->_accessories;
      *buf = 136315394;
      *&buf[4] = "[UARPiCloudAssetManager handleRemoteQueryRequestForAccessories:inContainer:]";
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_2701F5000, v14, OS_LOG_TYPE_DEFAULT, "%s: Current _accessories %@", buf, 0x16u);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = v6;
    obj = v6;
    v46 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v46)
    {
      v44 = *v49;
      v45 = v8;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v49 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v48 + 1) + 8 * i);
          v18 = [v17 accessoryID];
          v19 = [v18 firmwareVersion];

          v20 = [v17 accessoryID];
          v21 = [v20 stagedFirmwareVersion];

          v22 = [v17 assetID];
          if ([v22 type] == 15)
          {

LABEL_16:
            if (v21 && ([v21 isEqualToString:v19] & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_22;
          }

          v23 = [v17 assetID];
          v24 = [v23 type];

          if (v24 == 16)
          {
            goto LABEL_16;
          }

          *buf = 0;
          *&buf[8] = 0;
          v25 = MEMORY[0x277D02628];
          v26 = [v17 accessoryID];
          v27 = [v26 firmwareVersion];
          [v25 versionFromString:v27 version:buf];

          if (v21)
          {
            v47[0] = 0;
            v47[1] = 0;
            [MEMORY[0x277D02628] versionFromString:v21 version:v47];
            if (uarpVersionCompare(buf, v47) == 1)
            {
LABEL_21:
              v28 = v21;

              v19 = v28;
            }
          }

LABEL_22:
          v29 = [UARPiCloudAccessory alloc];
          v30 = [v17 accessoryID];
          v31 = [v30 productGroup];
          v32 = [v17 accessoryID];
          v33 = [v32 productNumber];
          v34 = [(UARPiCloudAccessory *)v29 initWithProductGroup:v31 productNumber:v33 firmwareVersion:v19];

          v35 = [v17 assetID];
          -[UARPiCloudAccessory setSignatureValidationNeeded:](v34, "setSignatureValidationNeeded:", [v35 signatureValidationNeeded]);

          v8 = v45;
          [v45 addObject:v34];
          [(NSMutableDictionary *)self->_accessories setObject:v17 forKey:v34];
          v36 = self->_log;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = self->_accessories;
            *buf = 136315650;
            *&buf[4] = "[UARPiCloudAssetManager handleRemoteQueryRequestForAccessories:inContainer:]";
            *&buf[12] = 2112;
            *&buf[14] = v17;
            v53 = 2112;
            v54 = v37;
            _os_log_impl(&dword_2701F5000, v36, OS_LOG_TYPE_DEFAULT, "%s: Added internalAccessory %@ to _accessories %@", buf, 0x20u);
          }
        }

        v46 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v46);
    }

    [self->_cloudManager performRemoteFetchForAccessories:v8];
    v38 = 0;
    v7 = v41;
    v6 = v42;
  }

  else
  {
    v38 = 2;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (int64_t)getAttestationCertificates:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UARPiCloudAssetManager_getAttestationCertificates_inContainer___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(workQueue, block);

  return 0;
}

- (void)remoteFetchCompletion:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__UARPiCloudAssetManager_remoteFetchCompletion_error___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workQueue, block);
}

void __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_DEFAULT, "Updated internalAccessory.assetID state, notifying client for accessory %@", &v8, 0xCu);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) accessoryID];
  v6 = [*(a1 + 40) assetID];
  [v4 assetAvailabilityUpdateForAccessory:v5 assetID:v6 downstreamAppleModelNumber:0];

  v7 = *MEMORY[0x277D85DE8];
}

void __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_311(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_DEFAULT, "Updated internalAccessory.assetID state, notifying client for accessory %@", &v8, 0xCu);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) accessoryID];
  v6 = [*(a1 + 40) assetID];
  [v4 assetAvailabilityUpdateForAccessory:v5 assetID:v6 downstreamAppleModelNumber:0];

  v7 = *MEMORY[0x277D85DE8];
}

void __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_312(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_DEFAULT, "Updated internalAccessory.assetID state, notifying client for accessory %@", &v8, 0xCu);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) accessoryID];
  v6 = [*(a1 + 40) assetID];
  [v4 assetAvailabilityUpdateForAccessory:v5 assetID:v6 downstreamAppleModelNumber:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)moveFileAtURL:(id)a3 toTempURL:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = 0;
  if ([v7 checkResourceIsReachableAndReturnError:0])
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    [v9 removeItemAtURL:v7 error:&v17];
    v8 = v17;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = v8;
  v11 = [v10 moveItemAtURL:v6 toURL:v7 error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_2701F5000, log, OS_LOG_TYPE_ERROR, "Failed to moved file from %@ to temporary location %@ for validation: %@", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)handleRemoteFirmwareDownloadRequestForAccessory:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 assetID];
    v8 = [v7 remoteURL];
    v9 = [v4 accessoryID];
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_2701F5000, v6, OS_LOG_TYPE_INFO, "Downloading asset from remote url %@ for accessory %@", buf, 0x16u);
  }

  v10 = [v4 assetID];
  v11 = [v10 remoteURL];

  v12 = [MEMORY[0x277CCAD30] sharedSession];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke;
  v18[3] = &unk_279DFD038;
  v18[4] = self;
  v19 = v4;
  v20 = v11;
  v13 = v11;
  v14 = v4;
  v15 = [v12 downloadTaskWithURL:v13 completionHandler:v18];

  [v15 resume];
  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = a1[5];
    v12 = v10;
    v13 = [v11 assetID];
    v14 = [v13 remoteURL];
    v15 = [a1[5] accessoryID];
    *buf = 138413314;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v14;
    v43 = 2112;
    v44 = v15;
    v45 = 2112;
    v46 = v7;
    _os_log_impl(&dword_2701F5000, v12, OS_LOG_TYPE_INFO, "Download result: %@ error:%@ from remote url %@ for accessory %@ %@", buf, 0x34u);
  }

  if (!v7 || v9)
  {
    [a1[4] setFirmwareDownloadFailureStatusForAccessory:a1[5]];
    v26 = [a1[4] delegateQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_314;
    v35[3] = &unk_279DFD010;
    v27 = a1[5];
    v35[4] = a1[4];
    v36 = v27;
    dispatch_async(v26, v35);
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = InternalStorageDirectoryPath();
    v18 = [a1[6] lastPathComponent];
    v19 = [v16 stringWithFormat:@"%@/%@.%@", v17, v18, @"urlasset"];

    v20 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:objc_msgSend(v19 isDirectory:"UTF8String") relativeToURL:{0, 0}];
    v21 = [a1[4] moveFileAtURL:v7 toTempURL:v20];
    v22 = a1[4];
    if (v21)
    {
      v23 = v22[5];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_3;
      block[3] = &unk_279DFCFE8;
      block[4] = v22;
      v24 = &v31;
      v31 = v20;
      v32 = a1[5];
      dispatch_sync(v23, block);
      v25 = v32;
    }

    else
    {
      [v22 setFirmwareDownloadFailureStatusForAccessory:a1[5]];
      v25 = [a1[4] delegateQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_2;
      v33[3] = &unk_279DFD010;
      v28 = a1[5];
      v33[4] = a1[4];
      v24 = &v34;
      v34 = v28;
      dispatch_async(v25, v33);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_314(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

void __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

- (BOOL)isFirmwareHash:(id)a3 equalToHash:(id)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      return [a4 caseInsensitiveCompare:?] == 0;
    }
  }

  return result;
}

- (void)handleFirmwareDownloadResponseFromLocation:(id)a3 forAccessory:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 assetID];
  v9 = [v8 signatureValidationNeeded];

  if (v9)
  {
    v10 = [v7 record];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [v7 record];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = [v7 record];
        v15 = [v14 hashAlgorithmType];
        v16 = [v15 unsignedLongValue];
      }

      else
      {
        v16 = 1;
      }

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = log;
        v22 = [v7 record];
        *buf = 136315650;
        v46 = "[UARPiCloudAssetManager handleFirmwareDownloadResponseFromLocation:forAccessory:]";
        v47 = 2112;
        v48 = v7;
        v49 = 2112;
        v50 = v22;
        _os_log_impl(&dword_2701F5000, v21, OS_LOG_TYPE_DEFAULT, "%s: UARPAccessoryInternal %@, record %@", buf, 0x20u);
      }

      v23 = [(UARPiCloudAssetManager *)self _getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:v16];
      v24 = [v7 record];
      v25 = [v24 firmwareBinaryHash];

      v44 = 0;
      v26 = generateHashForDataAtLocation(v6, v23, &v44);
      v27 = v44;
      v28 = self->_log;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v46 = v26;
        v47 = 2114;
        v48 = v25;
        v49 = 2114;
        v50 = v27;
        _os_log_impl(&dword_2701F5000, v28, OS_LOG_TYPE_DEFAULT, "calculatedHash: %{public}@, expectedHash:%{public}@, error:%{public}@", buf, 0x20u);
      }

      v29 = [v7 assetID];
      [v29 setFirmwareHash:v26];

      if ([(UARPiCloudAssetManager *)self isFirmwareHash:v25 equalToHash:v26])
      {
        goto LABEL_15;
      }

      v31 = [v7 record];
      objc_opt_class();
      v32 = objc_opt_isKindOfClass();

      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      v43 = v27;
      v33 = generateBase64HashForDataAtLocation(v6, v23, &v43);
      v34 = v43;

      v35 = [v7 assetID];
      [v35 setFirmwareHash:v33];

      v26 = v33;
      v27 = v34;
      if ([(UARPiCloudAssetManager *)self isFirmwareHash:v25 equalToHash:v33])
      {
LABEL_15:
        v30 = [v7 assetID];
        [v30 setValidationStatus:1];

        v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:v6 assetType:0 forAcessory:v7];
      }

      else
      {
LABEL_18:
        v36 = [v7 assetID];
        [v36 setValidationStatus:2];

        v18 = 0;
      }

      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudAssetManager handleFirmwareDownloadResponseFromLocation:v19 forAccessory:v7];
      }
    }

LABEL_21:
    [(UARPiCloudAssetManager *)self setFirmwareDownloadFailureStatusForAccessory:v7];
    goto LABEL_22;
  }

  v17 = [v7 assetID];
  [v17 setValidationStatus:0];

  v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:v6 assetType:0 forAcessory:v7];
  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_20:
  v37 = [v7 assetID];
  [v37 setLocalURL:v18];

  [(UARPiCloudAssetManager *)self setFirmwareDownloadSuccessStatusForAccessory:v7];
LABEL_22:
  v38 = [(UARPiCloudAssetManager *)self delegateQueue];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __82__UARPiCloudAssetManager_handleFirmwareDownloadResponseFromLocation_forAccessory___block_invoke;
  v41[3] = &unk_279DFD010;
  v41[4] = self;
  v42 = v7;
  v39 = v7;
  dispatch_async(v38, v41);

  v40 = *MEMORY[0x277D85DE8];
}

void __82__UARPiCloudAssetManager_handleFirmwareDownloadResponseFromLocation_forAccessory___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8 = 136315394;
    v9 = "[UARPiCloudAssetManager handleFirmwareDownloadResponseFromLocation:forAccessory:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_2701F5000, v2, OS_LOG_TYPE_DEFAULT, "%s: Updated assetID state %@, notifying client", &v8, 0x16u);
  }

  v4 = *(*(a1 + 32) + 16);
  v5 = [*(a1 + 40) accessoryID];
  v6 = [*(a1 + 40) assetID];
  [v4 assetAvailabilityUpdateForAccessory:v5 assetID:v6 downstreamAppleModelNumber:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setFirmwareDownloadFailureStatusForAccessory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 assetID];
  [v5 setLocalURL:0];

  v6 = [v4 assetID];
  [v6 setDownloadStatus:2];

  v7 = [v4 assetID];
  [v7 setUpdateAvailabilityStatus:0];

  v8 = [v4 assetID];
  [v4 analyticsSetDownloadCompleteForAssetID:v8 status:3];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[UARPiCloudAssetManager setFirmwareDownloadFailureStatusForAccessory:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: Set Download Failure Status for accessory %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setFirmwareDownloadSuccessStatusForAccessory:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 assetID];
  [v5 setDownloadStatus:1];

  v6 = [v4 assetID];
  [v6 setUpdateAvailabilityStatus:3];

  v7 = [v4 assetID];
  [v4 analyticsSetDownloadCompleteForAssetID:v7 status:1];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[UARPiCloudAssetManager setFirmwareDownloadSuccessStatusForAccessory:]";
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: Set Download Success Status for accessory %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)handleReleaseNotesDownloadRequestForAccessory:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    v7 = [v4 assetID];
    v8 = [v7 releaseNotesRemoteURL];
    v9 = [v4 accessoryID];
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_2701F5000, v6, OS_LOG_TYPE_INFO, "Downloading Release Notes from remote url %@ for accessory %@", buf, 0x16u);
  }

  v10 = [v4 assetID];
  v11 = [v10 releaseNotesRemoteURL];

  v12 = [MEMORY[0x277CCAD30] sharedSession];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke;
  v18[3] = &unk_279DFD038;
  v18[4] = self;
  v19 = v4;
  v20 = v11;
  v13 = v11;
  v14 = v4;
  v15 = [v12 downloadTaskWithURL:v13 completionHandler:v18];

  [v15 resume];
  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = a1[5];
    v12 = v10;
    v13 = [v11 assetID];
    v14 = [v13 remoteURL];
    v15 = [a1[5] accessoryID];
    *buf = 138413058;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v14;
    v43 = 2112;
    v44 = v15;
    _os_log_impl(&dword_2701F5000, v12, OS_LOG_TYPE_INFO, "Download result: %@ error:%@ from remote url %@ for accessory %@", buf, 0x2Au);
  }

  if (!v7 || v9)
  {
    [a1[4] setReleaseNotesDownloadFailureStatusForAccessory:a1[5]];
    v26 = [a1[4] delegateQueue];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_322;
    v35[3] = &unk_279DFD010;
    v27 = a1[5];
    v35[4] = a1[4];
    v36 = v27;
    dispatch_async(v26, v35);
  }

  else
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = InternalStorageDirectoryPath();
    v18 = [a1[6] lastPathComponent];
    v19 = [v16 stringWithFormat:@"%@/%@.%@", v17, v18, @"urlasset"];

    v20 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:objc_msgSend(v19 isDirectory:"UTF8String") relativeToURL:{0, 0}];
    v21 = [a1[4] moveFileAtURL:v7 toTempURL:v20];
    v22 = a1[4];
    if (v21)
    {
      v23 = v22[5];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_3;
      block[3] = &unk_279DFCFE8;
      block[4] = v22;
      v24 = &v31;
      v31 = v20;
      v32 = a1[5];
      dispatch_sync(v23, block);
      v25 = v32;
    }

    else
    {
      [v22 setReleaseNotesDownloadFailureStatusForAccessory:a1[5]];
      v25 = [a1[4] delegateQueue];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_2;
      v33[3] = &unk_279DFD010;
      v28 = a1[5];
      v33[4] = a1[4];
      v24 = &v34;
      v34 = v28;
      dispatch_async(v25, v33);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_322(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

void __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

- (void)setReleaseNotesDownloadFailureStatusForAccessory:(id)a3
{
  v3 = a3;
  v4 = [v3 assetID];
  [v4 setReleaseNotesLocalURL:0];

  v5 = [v3 assetID];
  [v5 setReleaseNotesDownloadStatus:2];

  v6 = [v3 assetID];
  [v6 setReleaseNotesAvailabilityStatus:0];

  v7 = [v3 assetID];
  [v3 analyticsSetDownloadCompleteForAssetID:v7 status:3];
}

- (void)setReleaseNotesDownloadSuccessStatusForAccessory:(id)a3
{
  v3 = a3;
  v4 = [v3 assetID];
  [v4 setReleaseNotesDownloadStatus:1];

  v5 = [v3 assetID];
  [v5 setReleaseNotesAvailabilityStatus:3];

  v6 = [v3 assetID];
  [v3 analyticsSetDownloadCompleteForAssetID:v6 status:1];
}

- (void)handleReleaseNotesDownloadResponseFromLocation:(id)a3 forAccessory:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 assetID];
  v9 = [v8 signatureValidationNeeded];

  if (v9)
  {
    v10 = [v7 record];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [v7 record];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = [v7 record];
        v15 = [v14 hashAlgorithmType];
        v16 = [v15 unsignedLongValue];
      }

      else
      {
        v16 = 1;
      }

      v20 = [(UARPiCloudAssetManager *)self _getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:v16];
      v21 = [v7 record];
      v22 = [v21 releaseNotesHash];

      v34 = 0;
      v23 = generateHashForDataAtLocation(v6, v20, &v34);
      v24 = v34;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v36 = v23;
        v37 = 2114;
        v38 = v22;
        v39 = 2114;
        v40 = v24;
        _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "calculatedHash: %{public}@, expectedHash:%{public}@, error:%{public}@", buf, 0x20u);
      }

      if (v22 && [v23 isEqualToString:v22])
      {
        v26 = [v7 assetID];
        [v26 setValidationStatus:1];

        v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:v6 assetType:1 forAcessory:v7];
      }

      else
      {
        v27 = [v7 assetID];
        [v27 setValidationStatus:2];

        v18 = 0;
      }

      if (v18)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = self->_log;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudAssetManager handleReleaseNotesDownloadResponseFromLocation:v19 forAccessory:v7];
      }
    }

LABEL_18:
    [(UARPiCloudAssetManager *)self setReleaseNotesDownloadFailureStatusForAccessory:v7];
    goto LABEL_19;
  }

  v17 = [v7 assetID];
  [v17 setValidationStatus:0];

  v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:v6 assetType:1 forAcessory:v7];
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  v28 = [v7 assetID];
  [v28 setReleaseNotesLocalURL:v18];

  [(UARPiCloudAssetManager *)self setReleaseNotesDownloadSuccessStatusForAccessory:v7];
LABEL_19:
  v29 = [(UARPiCloudAssetManager *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__UARPiCloudAssetManager_handleReleaseNotesDownloadResponseFromLocation_forAccessory___block_invoke;
  block[3] = &unk_279DFD010;
  block[4] = self;
  v33 = v7;
  v30 = v7;
  dispatch_async(v29, block);

  v31 = *MEMORY[0x277D85DE8];
}

void __86__UARPiCloudAssetManager_handleReleaseNotesDownloadResponseFromLocation_forAccessory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

- (BOOL)checkLocalUARPCacheForAccessory:(id)a3 versionAvailable:(id *)a4 firmwarePath:(id *)a5 releaseNotesPath:(id *)a6
{
  v10 = a3;
  v11 = [v10 assetID];
  if ([v11 type] != 15)
  {
    v12 = [v10 assetID];
    v13 = [v12 type];

    if (v13 == 16)
    {
      goto LABEL_4;
    }

    v16 = MEMORY[0x277CCAB68];
    v17 = InternalStorageDirectoryPath();
    v18 = [v10 identifier];
    v19 = [v16 stringWithFormat:@"%@/%@", v17, v18];

    v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19];
    v21 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [v21 contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:4 error:0];
    v23 = [v22 mutableCopy];

    if ([v23 count])
    {
      if ([v23 count] == 1)
      {
        goto LABEL_11;
      }

      if ([v23 count] >= 2)
      {
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __105__UARPiCloudAssetManager_checkLocalUARPCacheForAccessory_versionAvailable_firmwarePath_releaseNotesPath___block_invoke;
        v54[3] = &unk_279DFD060;
        v54[4] = self;
        [v23 sortUsingComparator:v54];
LABEL_11:
        v24 = [v23 firstObject];
        v25 = v24;
        if (v24)
        {
          v52 = v19;
          v26 = [v24 URLByAppendingPathComponent:*MEMORY[0x277D02638]];
          v27 = [MEMORY[0x277CCAA00] defaultManager];
          v53 = v26;
          v28 = [v27 contentsOfDirectoryAtURL:v26 includingPropertiesForKeys:0 options:4 error:0];

          v29 = v28;
          if ([v28 count] == 1)
          {
            v48 = v20;
            v49 = v28;
            v50 = [v28 firstObject];
            v30 = [v50 path];
            v31 = getSuperBinaryVersionForAsset(v30);

            v32 = [v25 lastPathComponent];
            v51 = v31;
            v33 = [v31 isEqualToString:v32];

            v19 = v52;
            v47 = v33;
            if (v33)
            {
              v34 = [v10 accessoryID];
              v35 = [v34 firmwareVersion];
              v45 = uarpVersionCompareStrings();

              v15 = v45 == 1;
              if (v45 == 1)
              {
                *a4 = [v51 copy];
                *a5 = [v50 copy];
              }

              v36 = [v25 URLByAppendingPathComponent:*MEMORY[0x277D02640]];
              v37 = [MEMORY[0x277CCAA00] defaultManager];
              v46 = v36;
              v38 = [v37 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:0 options:4 error:0];

              if ([v38 count] == 1)
              {
                v39 = [v38 firstObject];
                *a6 = [v39 copy];

                v40 = v51;
                v41 = v46;
              }

              else
              {
                v43 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
                v40 = v51;
                v41 = v46;
                if (v43)
                {
                  [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:versionAvailable:firmwarePath:releaseNotesPath:];
                }
              }
            }

            else
            {
              v40 = v51;
              if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
              {
                v44 = v53;
                [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:versionAvailable:firmwarePath:releaseNotesPath:];
                v15 = 0;
                goto LABEL_31;
              }

              v15 = 0;
            }

            v44 = v53;
LABEL_31:

            if (!v47)
            {
              v15 = 0;
            }

            v20 = v48;
            goto LABEL_23;
          }

          v19 = v52;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:versionAvailable:firmwarePath:releaseNotesPath:];
          }
        }

LABEL_22:
        v15 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v25 = 0;
    goto LABEL_22;
  }

LABEL_4:
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:v10 versionAvailable:? firmwarePath:? releaseNotesPath:?];
  }

  v15 = 0;
LABEL_24:

  return v15;
}

uint64_t __105__UARPiCloudAssetManager_checkLocalUARPCacheForAccessory_versionAvailable_firmwarePath_releaseNotesPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v17 = 0;
  v6 = a3;
  v7 = [v5 pathToSuperBinaryInAccessoryVersionDirectory:a2 uarpVersion:&v17];
  v8 = v17;
  v9 = [v7 path];

  v10 = *(a1 + 32);
  v16 = 0;
  v11 = [v10 pathToSuperBinaryInAccessoryVersionDirectory:v6 uarpVersion:&v16];

  v12 = v16;
  v13 = [v11 path];

  v14 = -1;
  if (v9 && v13)
  {
    v14 = uarpVersionCompareStrings();
  }

  return v14;
}

- (id)pathToSuperBinaryInAccessoryVersionDirectory:(id)a3 uarpVersion:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 URLByAppendingPathComponent:*MEMORY[0x277D02638]];
  v8 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:4 error:0];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = [v14 path];
        v16 = getSuperBinaryVersionForAsset(v15);

        if (v16)
        {
          *a4 = [v16 copy];
          v17 = [v14 copy];

          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)moveToUARPCacheFromRemoteURL:(id)a3 assetType:(int64_t)a4 forAcessory:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    if (a4 != 1)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [UARPiCloudAssetManager moveToUARPCacheFromRemoteURL:assetType:forAcessory:];
      }

      goto LABEL_32;
    }

    v10 = MEMORY[0x277D02640];
  }

  else
  {
    v10 = MEMORY[0x277D02638];
  }

  v11 = MEMORY[0x277CCAB68];
  v12 = InternalStorageDirectoryPath();
  v13 = [v9 identifier];
  v14 = [v9 assetID];
  v15 = [v14 assetVersion];
  v16 = [v11 stringWithFormat:@"%@/%@/%@/%@", v12, v13, v15, *v10];

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(v13) = [v17 fileExistsAtPath:v16];

  if (v13)
  {
    v18 = 0;
  }

  else
  {
    v19 = [MEMORY[0x277CCAA00] defaultManager];
    v46 = 0;
    v20 = [v19 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v46];
    v21 = v46;

    log = self->_log;
    v23 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
    if ((v20 & 1) == 0)
    {
      if (v23)
      {
        *buf = 138412290;
        v52 = v21;
        _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_INFO, "Failed to create UARP Firmware directory error: %@", buf, 0xCu);
      }

LABEL_31:

LABEL_32:
      v38 = 0;
      goto LABEL_33;
    }

    if (v23)
    {
      *buf = 138412290;
      v52 = v16;
      _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_INFO, "UARP Firmware directory created %@", buf, 0xCu);
    }

    v49 = *MEMORY[0x277CCA180];
    v50 = &unk_288030CB8;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v25 = [MEMORY[0x277CCAA00] defaultManager];
    v45 = v21;
    v26 = [v25 setAttributes:v24 ofItemAtPath:v16 error:&v45];
    v18 = v45;

    if ((v26 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudAssetManager moveToUARPCacheFromRemoteURL:assetType:forAcessory:];
    }
  }

  v27 = [v8 URLByDeletingPathExtension];
  v28 = [v27 lastPathComponent];
  [v16 appendFormat:@"/%@", v28];

  v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
  if (([v21 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    v30 = [MEMORY[0x277CCAA00] defaultManager];
    v44 = v18;
    v31 = [v30 copyItemAtURL:v8 toURL:v21 error:&v44];
    v32 = v44;

    if (v31)
    {
      v42 = v9;
      v29 = v8;
      v18 = v32;
      goto LABEL_20;
    }

    v39 = self->_log;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v21;
      _os_log_impl(&dword_2701F5000, v39, OS_LOG_TYPE_INFO, "Failed to write to path %@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v42 = v9;
  v29 = v8;
LABEL_20:
  v47 = *MEMORY[0x277CCA180];
  v48 = &unk_288030CD0;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v34 = [MEMORY[0x277CCAA00] defaultManager];
  v35 = [v21 path];
  v43 = v18;
  v36 = [v34 setAttributes:v33 ofItemAtPath:v35 error:&v43];
  v37 = v43;

  if (v36)
  {
    v38 = v21;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudAssetManager moveToUARPCacheFromRemoteURL:assetType:forAcessory:];
    }

    v38 = 0;
  }

  v8 = v29;

  v9 = v42;
LABEL_33:

  v40 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup:(id)a3 batchRequest:(BOOL)a4 inContainer:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:v9];

  batchedProcessingQueue = self->_batchedProcessingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__UARPiCloudAssetManager_handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup_batchRequest_inContainer___block_invoke;
  block[3] = &unk_279DFD088;
  v15 = v10;
  v16 = v8;
  v17 = a4;
  v12 = v8;
  v13 = v10;
  dispatch_async(batchedProcessingQueue, block);
}

- (void)handleRemoteDownloadResponseForSupportedAccessories:(id)a3 forProductGroup:(id)a4 isComplete:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(UARPiCloudAssetManager *)self delegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__UARPiCloudAssetManager_handleRemoteDownloadResponseForSupportedAccessories_forProductGroup_isComplete___block_invoke;
  v13[3] = &unk_279DFCFC0;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)handleRemoteDownloadRequestForAttestationCertificatesForSubjectKeyIdentifier:(id)a3 inContainer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:v6];

  [(UARPiCloudManager *)v8 performRemoteFetchForAttestationCertificates:v7];
}

- (void)remoteFetchCompletionForAttestationCertificates:(id)a3 subjectKeyIdentifier:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__UARPiCloudAssetManager_remoteFetchCompletionForAttestationCertificates_subjectKeyIdentifier_error___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_sync(workQueue, block);
}

- (void)handleRemoteDownloadResponseForAttestationCertificates:(id)a3 forSubKeyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UARPiCloudAssetManager *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__UARPiCloudAssetManager_handleRemoteDownloadResponseForAttestationCertificates_forSubKeyIdentifier___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (unsigned)_getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:(unint64_t)a3
{
  if (a3 - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return dword_270213280[a3 - 1];
  }
}

- (void)handleRemoteFetchCompletion:(id)a3 error:(id)a4
{
  v133 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v9 setNumberStyle:1];
  v10 = [(NSMutableDictionary *)self->_accessories objectForKeyedSubscript:v8];
  if (OUTLINED_FUNCTION_12())
  {
    accessories = self->_accessories;
    v127 = 136315650;
    v128 = "[UARPiCloudAssetManager handleRemoteFetchCompletion:error:]";
    v129 = 2112;
    v130 = v10;
    v131 = 2112;
    v132 = accessories;
    OUTLINED_FUNCTION_5();
    _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
  }

  if (v10)
  {
    [(NSMutableDictionary *)self->_accessories removeObjectForKey:v8];
    v17 = [v8 chipFirmwareRecord];

    if (v17)
    {
      if (OUTLINED_FUNCTION_12())
      {
        v17 = v17;
        v4 = [v8 chipFirmwareRecord];
        v5 = [v4 firmwareURL];
        OUTLINED_FUNCTION_11(v5, 5.778e-34);
        OUTLINED_FUNCTION_5();
        _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      }

      [v8 chipFirmwareRecord];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() setRecord:?];

      v23 = [v8 chipFirmwareRecord];
      [v23 firmwareVersion];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v24 setAssetVersion:?];

      v25 = [v8 chipFirmwareRecord];
      [v25 firmwareVersionNumber];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v26 setAssetVersionNumber:?];

      v27 = [OUTLINED_FUNCTION_18() chipFirmwareRecord];
      [v27 firmwareURL];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_1() URLWithString:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v28 setRemoteURL:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_15();
      [v29 setDownloadStatus:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16();
      [v30 setUpdateAvailabilityStatus:?];

      v31 = [OUTLINED_FUNCTION_18() chipFirmwareRecord];
      [v31 releaseNotesURL];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_1() URLWithString:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v32 setReleaseNotesRemoteURL:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_15();
      [v33 setReleaseNotesDownloadStatus:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16();
      [v34 setReleaseNotesAvailabilityStatus:?];

      v35 = [v8 chipFirmwareRecord];
      [v35 firmwareFileSize];
      objc_claimAutoreleasedReturnValue();
      v36 = [OUTLINED_FUNCTION_8() numberFromString:?];
      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      [v37 setFirmwareFileSize:?];

      v38 = [v8 chipFirmwareRecord];
      [v38 releaseDate];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v39 setAssetReleaseDate:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() analyticsSetDownloadAvailableForAssetID:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() analyticsSetDownloadConsentRequestedForAssetID:?];

      v40 = [(UARPiCloudAssetManager *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke;
      block[3] = &unk_279DFD010;
      block[4] = self;
      v126 = v10;
      dispatch_async(v40, block);

      v41 = v126;
LABEL_16:

      goto LABEL_17;
    }

    v42 = [v8 record];

    v43 = OUTLINED_FUNCTION_12();
    if (v42)
    {
      if (v43)
      {
        v44 = 0;
        v45 = [v8 record];
        v5 = [v45 firmwareURL];
        OUTLINED_FUNCTION_11(v5, 5.778e-34);
        OUTLINED_FUNCTION_5();
        _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
      }

      v51 = [v8 record];
      v52 = [v51 deploymentList];

      if (v52)
      {
        v53 = [(NSMutableDictionary *)v10 assetID];
        v54 = [v8 record];
        [v54 deploymentList];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_1_1() processUARPDeploymentRules:?];
      }

      v55 = [v8 record];
      v56 = [v55 releaseDate];

      if (v56)
      {
        v57 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v57 setDateFormat:@"MM/dd/yyyy"];
        v58 = [v8 record];
        [v58 releaseDate];
        objc_claimAutoreleasedReturnValue();
        v6 = [OUTLINED_FUNCTION_1_1() dateFromString:?];
        v59 = [(NSMutableDictionary *)v10 assetID];
        [v59 setAssetReleaseDate:v6];
      }

      v60 = [(NSMutableDictionary *)v10 assetID];
      v61 = [v60 signatureValidationNeeded];

      v62 = [(NSMutableDictionary *)v10 assetID];
      [v62 setValidationStatus:v61];

      [v8 record];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() setRecord:?];

      v63 = [v8 record];
      [v63 firmwareVersion];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v64 setAssetVersion:?];

      v65 = [OUTLINED_FUNCTION_18() record];
      [v65 firmwareURL];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_1() URLWithString:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v66 setRemoteURL:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_15();
      [v67 setDownloadStatus:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16();
      [v68 setUpdateAvailabilityStatus:?];

      v69 = [OUTLINED_FUNCTION_18() record];
      [v69 releaseNotesURL];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_1_1() URLWithString:?];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_4() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v70 setReleaseNotesRemoteURL:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_15();
      [v71 setReleaseNotesDownloadStatus:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16();
      [v72 setReleaseNotesAvailabilityStatus:?];

      v73 = [v8 record];
      [v73 releaseNotesFileSize];
      objc_claimAutoreleasedReturnValue();
      v74 = [OUTLINED_FUNCTION_8() numberFromString:?];
      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      [v75 setReleaseNotesFileSize:?];

      v76 = [v8 record];
      [v76 firmwareFileSize];
      objc_claimAutoreleasedReturnValue();
      v77 = [OUTLINED_FUNCTION_8() numberFromString:?];
      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      [v78 setFirmwareFileSize:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() analyticsSetDownloadAvailableForAssetID:?];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() analyticsSetDownloadConsentRequestedForAssetID:?];

      v79 = [(UARPiCloudAssetManager *)self delegateQueue];
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_311;
      v123[3] = &unk_279DFD010;
      v123[4] = self;
      v124 = v10;
      dispatch_async(v79, v123);

      v41 = v124;
      goto LABEL_16;
    }

    if (v43)
    {
      v127 = 138412290;
      v128 = v10;
      OUTLINED_FUNCTION_5();
      _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
    }

    v121 = 0;
    v122 = 0;
    v120 = 0;
    v86 = [(UARPiCloudAssetManager *)self checkLocalUARPCacheForAccessory:v10 versionAvailable:&v122 firmwarePath:&v121 releaseNotesPath:&v120];
    v87 = v122;
    v88 = v121;
    v89 = v120;
    v90 = os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT);
    if (v86 && v87 && v88)
    {
      if (v90)
      {
        v127 = 138412802;
        v128 = v87;
        v129 = 2112;
        v130 = v88;
        v131 = 2112;
        v132 = v10;
        OUTLINED_FUNCTION_9();
        _os_log_impl(v91, v92, v93, v94, v95, 0x20u);
      }

      v96 = [(NSMutableDictionary *)v10 assetID];
      [(NSMutableDictionary *)v10 analyticsSetDownloadCompleteForAssetID:v96 status:2];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v97 setAssetVersion:?];

      v98 = [(NSMutableDictionary *)v10 assetID];
      [v98 setRemoteURL:v88];

      v99 = [(NSMutableDictionary *)v10 assetID];
      [v99 setLocalURL:v88];

      v100 = [(NSMutableDictionary *)v10 assetID];
      [v100 setDownloadStatus:1];

      v101 = [(NSMutableDictionary *)v10 assetID];
      [v101 setUpdateAvailabilityStatus:3];

      if (v89)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          log = log;
          v103 = [(NSMutableDictionary *)v10 accessoryID];
          v127 = 138412546;
          v128 = v89;
          v129 = 2112;
          v130 = v103;
          OUTLINED_FUNCTION_9();
          _os_log_impl(v104, v105, v106, v107, v108, 0x16u);
        }

        [(NSMutableDictionary *)v10 assetID];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_17();
        [v109 setReleaseNotesLocalURL:?];

        v110 = [(NSMutableDictionary *)v10 assetID];
        [v110 setReleaseNotesDownloadStatus:1];

        v111 = [(NSMutableDictionary *)v10 assetID];
        [v111 setReleaseNotesAvailabilityStatus:3];
      }

      v112 = [(UARPiCloudAssetManager *)self delegateQueue];
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_312;
      v118[3] = &unk_279DFD010;
      v118[4] = self;
      v119 = v10;
      dispatch_async(v112, v118);
    }

    else if (v90)
    {
      v127 = 138412290;
      v128 = v10;
      OUTLINED_FUNCTION_9();
      _os_log_impl(v113, v114, v115, v116, v117, 0xCu);
    }
  }

LABEL_17:

  v80 = *MEMORY[0x277D85DE8];
}

- (void)handleFirmwareDownloadResponseFromLocation:(void *)a1 forAccessory:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 record];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_2701F5000, v5, v6, "Downloaded firmware record %@ missing 'firmwareBinaryHash' property", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleReleaseNotesDownloadResponseFromLocation:(void *)a1 forAccessory:(void *)a2 .cold.1(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 record];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_2701F5000, v5, v6, "Downloaded firmware record %@ missing 'releaseNotesHash' property", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)checkLocalUARPCacheForAccessory:versionAvailable:firmwarePath:releaseNotesPath:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_2701F5000, v0, v1, "Invalid contents in directory %@, contents %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)checkLocalUARPCacheForAccessory:versionAvailable:firmwarePath:releaseNotesPath:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_2701F5000, v0, v1, "Mismatch firmware version %@ found in directory %@, discarding");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)checkLocalUARPCacheForAccessory:(void *)a1 versionAvailable:(void *)a2 firmwarePath:releaseNotesPath:.cold.4(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 assetID];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(&dword_2701F5000, v5, v6, "Asset with CHIP iCloud asset type not supported for cache %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)moveToUARPCacheFromRemoteURL:assetType:forAcessory:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_2701F5000, v0, v1, "Failed to set permission for location %@: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)moveToUARPCacheFromRemoteURL:assetType:forAcessory:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(&dword_2701F5000, v0, OS_LOG_TYPE_ERROR, "Invalid assetType %ld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end