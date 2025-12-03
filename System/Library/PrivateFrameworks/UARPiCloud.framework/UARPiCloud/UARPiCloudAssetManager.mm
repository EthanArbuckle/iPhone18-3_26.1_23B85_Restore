@interface UARPiCloudAssetManager
- (BOOL)checkLocalUARPCacheForAccessory:(id)accessory versionAvailable:(id *)available firmwarePath:(id *)path releaseNotesPath:(id *)notesPath;
- (BOOL)isFirmwareHash:(id)hash equalToHash:(id)toHash;
- (BOOL)moveFileAtURL:(id)l toTempURL:(id)rL;
- (UARPiCloudAssetManager)initWithManager:(id)manager;
- (id)moveToUARPCacheFromRemoteURL:(id)l assetType:(int64_t)type forAcessory:(id)acessory;
- (id)pathToSuperBinaryInAccessoryVersionDirectory:(id)directory uarpVersion:(id *)version;
- (int64_t)downloadFirmwareForAccessory:(id)accessory;
- (int64_t)downloadReleaseNotesForAccessory:(id)accessory;
- (int64_t)getAttestationCertificates:(id)certificates inContainer:(id)container;
- (int64_t)getSupportedAccessories:(id)accessories batchRequest:(BOOL)request inContainer:(id)container;
- (int64_t)handleReleaseNotesDownloadRequestForAccessory:(id)accessory;
- (int64_t)handleRemoteFirmwareDownloadRequestForAccessory:(id)accessory;
- (int64_t)handleRemoteQueryRequestForAccessories:(id)accessories inContainer:(id)container;
- (int64_t)performRemoteUpdateCheckForAccessories:(id)accessories inContainer:(id)container;
- (unsigned)_getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:(unint64_t)algorithm;
- (void)cleanupAssetCache;
- (void)handleFirmwareDownloadResponseFromLocation:(id)location forAccessory:(id)accessory;
- (void)handleReleaseNotesDownloadResponseFromLocation:(id)location forAccessory:(id)accessory;
- (void)handleRemoteDownloadRequestForAttestationCertificatesForSubjectKeyIdentifier:(id)identifier inContainer:(id)container;
- (void)handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup:(id)group batchRequest:(BOOL)request inContainer:(id)container;
- (void)handleRemoteDownloadResponseForAttestationCertificates:(id)certificates forSubKeyIdentifier:(id)identifier;
- (void)handleRemoteDownloadResponseForSupportedAccessories:(id)accessories forProductGroup:(id)group isComplete:(BOOL)complete;
- (void)handleRemoteFetchCompletion:(id)completion error:(id)error;
- (void)remoteFetchCompletion:(id)completion error:(id)error;
- (void)remoteFetchCompletionForAttestationCertificates:(id)certificates subjectKeyIdentifier:(id)identifier error:(id)error;
- (void)setFirmwareDownloadFailureStatusForAccessory:(id)accessory;
- (void)setFirmwareDownloadSuccessStatusForAccessory:(id)accessory;
- (void)setReleaseNotesDownloadFailureStatusForAccessory:(id)accessory;
- (void)setReleaseNotesDownloadSuccessStatusForAccessory:(id)accessory;
@end

@implementation UARPiCloudAssetManager

- (UARPiCloudAssetManager)initWithManager:(id)manager
{
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = UARPiCloudAssetManager;
  v6 = [(UARPiCloudAssetManager *)&v16 init];
  if (v6)
  {
    v7 = os_log_create("com.apple.accessoryupdater.uarp", "iCloudAssetManager");
    log = v6->_log;
    v6->_log = v7;

    objc_storeStrong(&v6->_assetManager, manager);
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
      pathExtension = [v18 pathExtension];
      v20 = [@"urlasset" isEqualToString:pathExtension];

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

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        [defaultManager removeItemAtPath:v25 error:0];

        stringByDeletingLastPathComponent = [v25 stringByDeletingLastPathComponent];
        v29 = InternalStorageDirectoryPath();
        v30 = [stringByDeletingLastPathComponent isEqualToString:v29];

        if ((v30 & 1) == 0)
        {
          while (1)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v32 = [defaultManager2 contentsOfDirectoryAtPath:stringByDeletingLastPathComponent error:0];

            if ([v32 count])
            {
              break;
            }

            v33 = self->_log;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = stringByDeletingLastPathComponent;
              _os_log_impl(&dword_2701F5000, v33, OS_LOG_TYPE_DEFAULT, "Deleting iCloud Cache directory:%@", buf, 0xCu);
            }

            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager3 removeItemAtPath:stringByDeletingLastPathComponent error:0];

            v28StringByDeletingLastPathComponent = [stringByDeletingLastPathComponent stringByDeletingLastPathComponent];

            v36 = InternalStorageDirectoryPath();
            v37 = [v28StringByDeletingLastPathComponent isEqualToString:v36];

            stringByDeletingLastPathComponent = v28StringByDeletingLastPathComponent;
            if (v37)
            {
              goto LABEL_30;
            }
          }
        }

        v28StringByDeletingLastPathComponent = stringByDeletingLastPathComponent;
LABEL_30:
      }

      v44 = [v41 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v44);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (int64_t)performRemoteUpdateCheckForAccessories:(id)accessories inContainer:(id)container
{
  accessoriesCopy = accessories;
  containerCopy = container;
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
  v14 = accessoriesCopy;
  v15 = containerCopy;
  v16 = &v17;
  v9 = containerCopy;
  v10 = accessoriesCopy;
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

- (int64_t)downloadFirmwareForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__UARPiCloudAssetManager_downloadFirmwareForAccessory___block_invoke;
  block[3] = &unk_279DFCF98;
  v10 = accessoryCopy;
  v11 = &v12;
  block[4] = self;
  v6 = accessoryCopy;
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

- (int64_t)downloadReleaseNotesForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__UARPiCloudAssetManager_downloadReleaseNotesForAccessory___block_invoke;
  block[3] = &unk_279DFCF98;
  v10 = accessoryCopy;
  v11 = &v12;
  block[4] = self;
  v6 = accessoryCopy;
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

- (int64_t)getSupportedAccessories:(id)accessories batchRequest:(BOOL)request inContainer:(id)container
{
  accessoriesCopy = accessories;
  containerCopy = container;
  workQueue = self->_workQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__UARPiCloudAssetManager_getSupportedAccessories_batchRequest_inContainer___block_invoke;
  v14[3] = &unk_279DFCFC0;
  v14[4] = self;
  v15 = accessoriesCopy;
  requestCopy = request;
  v16 = containerCopy;
  v11 = containerCopy;
  v12 = accessoriesCopy;
  dispatch_sync(workQueue, v14);

  return 0;
}

- (int64_t)handleRemoteQueryRequestForAccessories:(id)accessories inContainer:(id)container
{
  v56 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  containerCopy = container;
  array = [MEMORY[0x277CBEB18] array];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = containerCopy;
    *&buf[12] = 2112;
    *&buf[14] = accessoriesCopy;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "Performing Remote Check on iCloud ContainerID:%@ for accessories: %@", buf, 0x16u);
  }

  v10 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:containerCopy];
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

    v41 = containerCopy;
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
    v42 = accessoriesCopy;
    obj = accessoriesCopy;
    v46 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v46)
    {
      v44 = *v49;
      v45 = array;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v49 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v48 + 1) + 8 * i);
          accessoryID = [v17 accessoryID];
          firmwareVersion = [accessoryID firmwareVersion];

          accessoryID2 = [v17 accessoryID];
          stagedFirmwareVersion = [accessoryID2 stagedFirmwareVersion];

          assetID = [v17 assetID];
          if ([assetID type] == 15)
          {

LABEL_16:
            if (stagedFirmwareVersion && ([stagedFirmwareVersion isEqualToString:firmwareVersion] & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_22;
          }

          assetID2 = [v17 assetID];
          type = [assetID2 type];

          if (type == 16)
          {
            goto LABEL_16;
          }

          *buf = 0;
          *&buf[8] = 0;
          v25 = MEMORY[0x277D02628];
          accessoryID3 = [v17 accessoryID];
          firmwareVersion2 = [accessoryID3 firmwareVersion];
          [v25 versionFromString:firmwareVersion2 version:buf];

          if (stagedFirmwareVersion)
          {
            v47[0] = 0;
            v47[1] = 0;
            [MEMORY[0x277D02628] versionFromString:stagedFirmwareVersion version:v47];
            if (uarpVersionCompare(buf, v47) == 1)
            {
LABEL_21:
              v28 = stagedFirmwareVersion;

              firmwareVersion = v28;
            }
          }

LABEL_22:
          v29 = [UARPiCloudAccessory alloc];
          accessoryID4 = [v17 accessoryID];
          productGroup = [accessoryID4 productGroup];
          accessoryID5 = [v17 accessoryID];
          productNumber = [accessoryID5 productNumber];
          v34 = [(UARPiCloudAccessory *)v29 initWithProductGroup:productGroup productNumber:productNumber firmwareVersion:firmwareVersion];

          assetID3 = [v17 assetID];
          -[UARPiCloudAccessory setSignatureValidationNeeded:](v34, "setSignatureValidationNeeded:", [assetID3 signatureValidationNeeded]);

          array = v45;
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

    [self->_cloudManager performRemoteFetchForAccessories:array];
    v38 = 0;
    containerCopy = v41;
    accessoriesCopy = v42;
  }

  else
  {
    v38 = 2;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (int64_t)getAttestationCertificates:(id)certificates inContainer:(id)container
{
  certificatesCopy = certificates;
  containerCopy = container;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__UARPiCloudAssetManager_getAttestationCertificates_inContainer___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v13 = certificatesCopy;
  v14 = containerCopy;
  v9 = containerCopy;
  v10 = certificatesCopy;
  dispatch_sync(workQueue, block);

  return 0;
}

- (void)remoteFetchCompletion:(id)completion error:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__UARPiCloudAssetManager_remoteFetchCompletion_error___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v12 = completionCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = completionCopy;
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

- (BOOL)moveFileAtURL:(id)l toTempURL:(id)rL
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = 0;
  if ([rLCopy checkResourceIsReachableAndReturnError:0])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    [defaultManager removeItemAtURL:rLCopy error:&v17];
    v8 = v17;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = v8;
  v11 = [defaultManager2 moveItemAtURL:lCopy toURL:rLCopy error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = lCopy;
      v20 = 2112;
      v21 = rLCopy;
      v22 = 2112;
      v23 = v12;
      _os_log_error_impl(&dword_2701F5000, log, OS_LOG_TYPE_ERROR, "Failed to moved file from %@ to temporary location %@ for validation: %@", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)handleRemoteFirmwareDownloadRequestForAccessory:(id)accessory
{
  v25 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    assetID = [accessoryCopy assetID];
    remoteURL = [assetID remoteURL];
    accessoryID = [accessoryCopy accessoryID];
    *buf = 138412546;
    v22 = remoteURL;
    v23 = 2112;
    v24 = accessoryID;
    _os_log_impl(&dword_2701F5000, v6, OS_LOG_TYPE_INFO, "Downloading asset from remote url %@ for accessory %@", buf, 0x16u);
  }

  assetID2 = [accessoryCopy assetID];
  remoteURL2 = [assetID2 remoteURL];

  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __74__UARPiCloudAssetManager_handleRemoteFirmwareDownloadRequestForAccessory___block_invoke;
  v18[3] = &unk_279DFD038;
  v18[4] = self;
  v19 = accessoryCopy;
  v20 = remoteURL2;
  v13 = remoteURL2;
  v14 = accessoryCopy;
  v15 = [mEMORY[0x277CCAD30] downloadTaskWithURL:v13 completionHandler:v18];

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

- (BOOL)isFirmwareHash:(id)hash equalToHash:(id)toHash
{
  result = 0;
  if (hash)
  {
    if (toHash)
    {
      return [toHash caseInsensitiveCompare:?] == 0;
    }
  }

  return result;
}

- (void)handleFirmwareDownloadResponseFromLocation:(id)location forAccessory:(id)accessory
{
  v51 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  signatureValidationNeeded = [assetID signatureValidationNeeded];

  if (signatureValidationNeeded)
  {
    record = [accessoryCopy record];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      record2 = [accessoryCopy record];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        record3 = [accessoryCopy record];
        hashAlgorithmType = [record3 hashAlgorithmType];
        unsignedLongValue = [hashAlgorithmType unsignedLongValue];
      }

      else
      {
        unsignedLongValue = 1;
      }

      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v21 = log;
        record4 = [accessoryCopy record];
        *buf = 136315650;
        v46 = "[UARPiCloudAssetManager handleFirmwareDownloadResponseFromLocation:forAccessory:]";
        v47 = 2112;
        v48 = accessoryCopy;
        v49 = 2112;
        v50 = record4;
        _os_log_impl(&dword_2701F5000, v21, OS_LOG_TYPE_DEFAULT, "%s: UARPAccessoryInternal %@, record %@", buf, 0x20u);
      }

      v23 = [(UARPiCloudAssetManager *)self _getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:unsignedLongValue];
      record5 = [accessoryCopy record];
      firmwareBinaryHash = [record5 firmwareBinaryHash];

      v44 = 0;
      v26 = generateHashForDataAtLocation(locationCopy, v23, &v44);
      v27 = v44;
      v28 = self->_log;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v46 = v26;
        v47 = 2114;
        v48 = firmwareBinaryHash;
        v49 = 2114;
        v50 = v27;
        _os_log_impl(&dword_2701F5000, v28, OS_LOG_TYPE_DEFAULT, "calculatedHash: %{public}@, expectedHash:%{public}@, error:%{public}@", buf, 0x20u);
      }

      assetID2 = [accessoryCopy assetID];
      [assetID2 setFirmwareHash:v26];

      if ([(UARPiCloudAssetManager *)self isFirmwareHash:firmwareBinaryHash equalToHash:v26])
      {
        goto LABEL_15;
      }

      record6 = [accessoryCopy record];
      objc_opt_class();
      v32 = objc_opt_isKindOfClass();

      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      v43 = v27;
      v33 = generateBase64HashForDataAtLocation(locationCopy, v23, &v43);
      v34 = v43;

      assetID3 = [accessoryCopy assetID];
      [assetID3 setFirmwareHash:v33];

      v26 = v33;
      v27 = v34;
      if ([(UARPiCloudAssetManager *)self isFirmwareHash:firmwareBinaryHash equalToHash:v33])
      {
LABEL_15:
        assetID4 = [accessoryCopy assetID];
        [assetID4 setValidationStatus:1];

        v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:locationCopy assetType:0 forAcessory:accessoryCopy];
      }

      else
      {
LABEL_18:
        assetID5 = [accessoryCopy assetID];
        [assetID5 setValidationStatus:2];

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
        [UARPiCloudAssetManager handleFirmwareDownloadResponseFromLocation:v19 forAccessory:accessoryCopy];
      }
    }

LABEL_21:
    [(UARPiCloudAssetManager *)self setFirmwareDownloadFailureStatusForAccessory:accessoryCopy];
    goto LABEL_22;
  }

  assetID6 = [accessoryCopy assetID];
  [assetID6 setValidationStatus:0];

  v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:locationCopy assetType:0 forAcessory:accessoryCopy];
  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_20:
  assetID7 = [accessoryCopy assetID];
  [assetID7 setLocalURL:v18];

  [(UARPiCloudAssetManager *)self setFirmwareDownloadSuccessStatusForAccessory:accessoryCopy];
LABEL_22:
  delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __82__UARPiCloudAssetManager_handleFirmwareDownloadResponseFromLocation_forAccessory___block_invoke;
  v41[3] = &unk_279DFD010;
  v41[4] = self;
  v42 = accessoryCopy;
  v39 = accessoryCopy;
  dispatch_async(delegateQueue, v41);

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

- (void)setFirmwareDownloadFailureStatusForAccessory:(id)accessory
{
  v15 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  [assetID setLocalURL:0];

  assetID2 = [accessoryCopy assetID];
  [assetID2 setDownloadStatus:2];

  assetID3 = [accessoryCopy assetID];
  [assetID3 setUpdateAvailabilityStatus:0];

  assetID4 = [accessoryCopy assetID];
  [accessoryCopy analyticsSetDownloadCompleteForAssetID:assetID4 status:3];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[UARPiCloudAssetManager setFirmwareDownloadFailureStatusForAccessory:]";
    v13 = 2112;
    v14 = accessoryCopy;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: Set Download Failure Status for accessory %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setFirmwareDownloadSuccessStatusForAccessory:(id)accessory
{
  v14 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  [assetID setDownloadStatus:1];

  assetID2 = [accessoryCopy assetID];
  [assetID2 setUpdateAvailabilityStatus:3];

  assetID3 = [accessoryCopy assetID];
  [accessoryCopy analyticsSetDownloadCompleteForAssetID:assetID3 status:1];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[UARPiCloudAssetManager setFirmwareDownloadSuccessStatusForAccessory:]";
    v12 = 2112;
    v13 = accessoryCopy;
    _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "%s: Set Download Success Status for accessory %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)handleReleaseNotesDownloadRequestForAccessory:(id)accessory
{
  v25 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v6 = log;
    assetID = [accessoryCopy assetID];
    releaseNotesRemoteURL = [assetID releaseNotesRemoteURL];
    accessoryID = [accessoryCopy accessoryID];
    *buf = 138412546;
    v22 = releaseNotesRemoteURL;
    v23 = 2112;
    v24 = accessoryID;
    _os_log_impl(&dword_2701F5000, v6, OS_LOG_TYPE_INFO, "Downloading Release Notes from remote url %@ for accessory %@", buf, 0x16u);
  }

  assetID2 = [accessoryCopy assetID];
  releaseNotesRemoteURL2 = [assetID2 releaseNotesRemoteURL];

  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__UARPiCloudAssetManager_handleReleaseNotesDownloadRequestForAccessory___block_invoke;
  v18[3] = &unk_279DFD038;
  v18[4] = self;
  v19 = accessoryCopy;
  v20 = releaseNotesRemoteURL2;
  v13 = releaseNotesRemoteURL2;
  v14 = accessoryCopy;
  v15 = [mEMORY[0x277CCAD30] downloadTaskWithURL:v13 completionHandler:v18];

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

- (void)setReleaseNotesDownloadFailureStatusForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  [assetID setReleaseNotesLocalURL:0];

  assetID2 = [accessoryCopy assetID];
  [assetID2 setReleaseNotesDownloadStatus:2];

  assetID3 = [accessoryCopy assetID];
  [assetID3 setReleaseNotesAvailabilityStatus:0];

  assetID4 = [accessoryCopy assetID];
  [accessoryCopy analyticsSetDownloadCompleteForAssetID:assetID4 status:3];
}

- (void)setReleaseNotesDownloadSuccessStatusForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  [assetID setReleaseNotesDownloadStatus:1];

  assetID2 = [accessoryCopy assetID];
  [assetID2 setReleaseNotesAvailabilityStatus:3];

  assetID3 = [accessoryCopy assetID];
  [accessoryCopy analyticsSetDownloadCompleteForAssetID:assetID3 status:1];
}

- (void)handleReleaseNotesDownloadResponseFromLocation:(id)location forAccessory:(id)accessory
{
  v41 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  signatureValidationNeeded = [assetID signatureValidationNeeded];

  if (signatureValidationNeeded)
  {
    record = [accessoryCopy record];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      record2 = [accessoryCopy record];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        record3 = [accessoryCopy record];
        hashAlgorithmType = [record3 hashAlgorithmType];
        unsignedLongValue = [hashAlgorithmType unsignedLongValue];
      }

      else
      {
        unsignedLongValue = 1;
      }

      v20 = [(UARPiCloudAssetManager *)self _getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:unsignedLongValue];
      record4 = [accessoryCopy record];
      releaseNotesHash = [record4 releaseNotesHash];

      v34 = 0;
      v23 = generateHashForDataAtLocation(locationCopy, v20, &v34);
      v24 = v34;
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v36 = v23;
        v37 = 2114;
        v38 = releaseNotesHash;
        v39 = 2114;
        v40 = v24;
        _os_log_impl(&dword_2701F5000, log, OS_LOG_TYPE_DEFAULT, "calculatedHash: %{public}@, expectedHash:%{public}@, error:%{public}@", buf, 0x20u);
      }

      if (releaseNotesHash && [v23 isEqualToString:releaseNotesHash])
      {
        assetID2 = [accessoryCopy assetID];
        [assetID2 setValidationStatus:1];

        v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:locationCopy assetType:1 forAcessory:accessoryCopy];
      }

      else
      {
        assetID3 = [accessoryCopy assetID];
        [assetID3 setValidationStatus:2];

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
        [UARPiCloudAssetManager handleReleaseNotesDownloadResponseFromLocation:v19 forAccessory:accessoryCopy];
      }
    }

LABEL_18:
    [(UARPiCloudAssetManager *)self setReleaseNotesDownloadFailureStatusForAccessory:accessoryCopy];
    goto LABEL_19;
  }

  assetID4 = [accessoryCopy assetID];
  [assetID4 setValidationStatus:0];

  v18 = [(UARPiCloudAssetManager *)self moveToUARPCacheFromRemoteURL:locationCopy assetType:1 forAcessory:accessoryCopy];
  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  assetID5 = [accessoryCopy assetID];
  [assetID5 setReleaseNotesLocalURL:v18];

  [(UARPiCloudAssetManager *)self setReleaseNotesDownloadSuccessStatusForAccessory:accessoryCopy];
LABEL_19:
  delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__UARPiCloudAssetManager_handleReleaseNotesDownloadResponseFromLocation_forAccessory___block_invoke;
  block[3] = &unk_279DFD010;
  block[4] = self;
  v33 = accessoryCopy;
  v30 = accessoryCopy;
  dispatch_async(delegateQueue, block);

  v31 = *MEMORY[0x277D85DE8];
}

void __86__UARPiCloudAssetManager_handleReleaseNotesDownloadResponseFromLocation_forAccessory___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v4 = [*(a1 + 40) accessoryID];
  v3 = [*(a1 + 40) assetID];
  [v2 assetAvailabilityUpdateForAccessory:v4 assetID:v3 downstreamAppleModelNumber:0];
}

- (BOOL)checkLocalUARPCacheForAccessory:(id)accessory versionAvailable:(id *)available firmwarePath:(id *)path releaseNotesPath:(id *)notesPath
{
  accessoryCopy = accessory;
  assetID = [accessoryCopy assetID];
  if ([assetID type] != 15)
  {
    assetID2 = [accessoryCopy assetID];
    type = [assetID2 type];

    if (type == 16)
    {
      goto LABEL_4;
    }

    v16 = MEMORY[0x277CCAB68];
    v17 = InternalStorageDirectoryPath();
    identifier = [accessoryCopy identifier];
    v19 = [v16 stringWithFormat:@"%@/%@", v17, identifier];

    v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v22 = [defaultManager contentsOfDirectoryAtURL:v20 includingPropertiesForKeys:0 options:4 error:0];
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
        firstObject = [v23 firstObject];
        v25 = firstObject;
        if (firstObject)
        {
          v52 = v19;
          v26 = [firstObject URLByAppendingPathComponent:*MEMORY[0x277D02638]];
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          v53 = v26;
          v28 = [defaultManager2 contentsOfDirectoryAtURL:v26 includingPropertiesForKeys:0 options:4 error:0];

          v29 = v28;
          if ([v28 count] == 1)
          {
            v48 = v20;
            v49 = v28;
            firstObject2 = [v28 firstObject];
            path = [firstObject2 path];
            v31 = getSuperBinaryVersionForAsset(path);

            lastPathComponent = [v25 lastPathComponent];
            v51 = v31;
            v33 = [v31 isEqualToString:lastPathComponent];

            v19 = v52;
            v47 = v33;
            if (v33)
            {
              accessoryID = [accessoryCopy accessoryID];
              firmwareVersion = [accessoryID firmwareVersion];
              v45 = uarpVersionCompareStrings();

              v15 = v45 == 1;
              if (v45 == 1)
              {
                *available = [v51 copy];
                *path = [firstObject2 copy];
              }

              v36 = [v25 URLByAppendingPathComponent:*MEMORY[0x277D02640]];
              defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
              v46 = v36;
              v38 = [defaultManager3 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:0 options:4 error:0];

              if ([v38 count] == 1)
              {
                firstObject3 = [v38 firstObject];
                *notesPath = [firstObject3 copy];

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
    [UARPiCloudAssetManager checkLocalUARPCacheForAccessory:accessoryCopy versionAvailable:? firmwarePath:? releaseNotesPath:?];
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

- (id)pathToSuperBinaryInAccessoryVersionDirectory:(id)directory uarpVersion:(id *)version
{
  v25 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [directoryCopy URLByAppendingPathComponent:*MEMORY[0x277D02638]];
  v8 = [defaultManager contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:0 options:4 error:0];

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
        path = [v14 path];
        v16 = getSuperBinaryVersionForAsset(path);

        if (v16)
        {
          *version = [v16 copy];
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

- (id)moveToUARPCacheFromRemoteURL:(id)l assetType:(int64_t)type forAcessory:(id)acessory
{
  v53 = *MEMORY[0x277D85DE8];
  lCopy = l;
  acessoryCopy = acessory;
  if (type)
  {
    if (type != 1)
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
  identifier = [acessoryCopy identifier];
  assetID = [acessoryCopy assetID];
  assetVersion = [assetID assetVersion];
  v16 = [v11 stringWithFormat:@"%@/%@/%@/%@", v12, identifier, assetVersion, *v10];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(identifier) = [defaultManager fileExistsAtPath:v16];

  if (identifier)
  {
    v18 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v46 = 0;
    v20 = [defaultManager2 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v46];
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
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v45 = v21;
    v26 = [defaultManager3 setAttributes:v24 ofItemAtPath:v16 error:&v45];
    v18 = v45;

    if ((v26 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [UARPiCloudAssetManager moveToUARPCacheFromRemoteURL:assetType:forAcessory:];
    }
  }

  uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
  [v16 appendFormat:@"/%@", lastPathComponent];

  v21 = [MEMORY[0x277CBEBC0] fileURLWithPath:v16];
  if (([v21 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    v44 = v18;
    v31 = [defaultManager4 copyItemAtURL:lCopy toURL:v21 error:&v44];
    v32 = v44;

    if (v31)
    {
      v42 = acessoryCopy;
      v29 = lCopy;
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

  v42 = acessoryCopy;
  v29 = lCopy;
LABEL_20:
  v47 = *MEMORY[0x277CCA180];
  v48 = &unk_288030CD0;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  defaultManager5 = [MEMORY[0x277CCAA00] defaultManager];
  path = [v21 path];
  v43 = v18;
  v36 = [defaultManager5 setAttributes:v33 ofItemAtPath:path error:&v43];
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

  lCopy = v29;

  acessoryCopy = v42;
LABEL_33:

  v40 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup:(id)group batchRequest:(BOOL)request inContainer:(id)container
{
  groupCopy = group;
  containerCopy = container;
  v10 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:containerCopy];

  batchedProcessingQueue = self->_batchedProcessingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__UARPiCloudAssetManager_handleRemoteDownloadRequestForSupportedAccessoriesForProductGroup_batchRequest_inContainer___block_invoke;
  block[3] = &unk_279DFD088;
  v15 = v10;
  v16 = groupCopy;
  requestCopy = request;
  v12 = groupCopy;
  v13 = v10;
  dispatch_async(batchedProcessingQueue, block);
}

- (void)handleRemoteDownloadResponseForSupportedAccessories:(id)accessories forProductGroup:(id)group isComplete:(BOOL)complete
{
  accessoriesCopy = accessories;
  groupCopy = group;
  delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__UARPiCloudAssetManager_handleRemoteDownloadResponseForSupportedAccessories_forProductGroup_isComplete___block_invoke;
  v13[3] = &unk_279DFCFC0;
  v13[4] = self;
  v14 = accessoriesCopy;
  v15 = groupCopy;
  completeCopy = complete;
  v11 = groupCopy;
  v12 = accessoriesCopy;
  dispatch_async(delegateQueue, v13);
}

- (void)handleRemoteDownloadRequestForAttestationCertificatesForSubjectKeyIdentifier:(id)identifier inContainer:(id)container
{
  containerCopy = container;
  identifierCopy = identifier;
  v8 = [[UARPiCloudManager alloc] initWithDelegate:self containerID:containerCopy];

  [(UARPiCloudManager *)v8 performRemoteFetchForAttestationCertificates:identifierCopy];
}

- (void)remoteFetchCompletionForAttestationCertificates:(id)certificates subjectKeyIdentifier:(id)identifier error:(id)error
{
  certificatesCopy = certificates;
  identifierCopy = identifier;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__UARPiCloudAssetManager_remoteFetchCompletionForAttestationCertificates_subjectKeyIdentifier_error___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v13 = certificatesCopy;
  v14 = identifierCopy;
  v10 = identifierCopy;
  v11 = certificatesCopy;
  dispatch_sync(workQueue, block);
}

- (void)handleRemoteDownloadResponseForAttestationCertificates:(id)certificates forSubKeyIdentifier:(id)identifier
{
  certificatesCopy = certificates;
  identifierCopy = identifier;
  delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__UARPiCloudAssetManager_handleRemoteDownloadResponseForAttestationCertificates_forSubKeyIdentifier___block_invoke;
  block[3] = &unk_279DFCFE8;
  block[4] = self;
  v12 = certificatesCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = certificatesCopy;
  dispatch_async(delegateQueue, block);
}

- (unsigned)_getCoreCryptoDigestAlgorithmFromCHIPFirmwareAlgorithm:(unint64_t)algorithm
{
  if (algorithm - 1 > 0xB)
  {
    return 0;
  }

  else
  {
    return dword_270213280[algorithm - 1];
  }
}

- (void)handleRemoteFetchCompletion:(id)completion error:(id)error
{
  v133 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v9 setNumberStyle:1];
  v10 = [(NSMutableDictionary *)self->_accessories objectForKeyedSubscript:completionCopy];
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
    [(NSMutableDictionary *)self->_accessories removeObjectForKey:completionCopy];
    chipFirmwareRecord = [completionCopy chipFirmwareRecord];

    if (chipFirmwareRecord)
    {
      if (OUTLINED_FUNCTION_12())
      {
        chipFirmwareRecord = chipFirmwareRecord;
        chipFirmwareRecord2 = [completionCopy chipFirmwareRecord];
        firmwareURL = [chipFirmwareRecord2 firmwareURL];
        OUTLINED_FUNCTION_11(firmwareURL, 5.778e-34);
        OUTLINED_FUNCTION_5();
        _os_log_impl(v18, v19, v20, v21, v22, 0x16u);
      }

      [completionCopy chipFirmwareRecord];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() setRecord:?];

      chipFirmwareRecord3 = [completionCopy chipFirmwareRecord];
      [chipFirmwareRecord3 firmwareVersion];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v24 setAssetVersion:?];

      chipFirmwareRecord4 = [completionCopy chipFirmwareRecord];
      [chipFirmwareRecord4 firmwareVersionNumber];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v26 setAssetVersionNumber:?];

      chipFirmwareRecord5 = [OUTLINED_FUNCTION_18() chipFirmwareRecord];
      [chipFirmwareRecord5 firmwareURL];
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

      chipFirmwareRecord6 = [OUTLINED_FUNCTION_18() chipFirmwareRecord];
      [chipFirmwareRecord6 releaseNotesURL];
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

      chipFirmwareRecord7 = [completionCopy chipFirmwareRecord];
      [chipFirmwareRecord7 firmwareFileSize];
      objc_claimAutoreleasedReturnValue();
      v36 = [OUTLINED_FUNCTION_8() numberFromString:?];
      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      [v37 setFirmwareFileSize:?];

      chipFirmwareRecord8 = [completionCopy chipFirmwareRecord];
      [chipFirmwareRecord8 releaseDate];
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

      delegateQueue = [(UARPiCloudAssetManager *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke;
      block[3] = &unk_279DFD010;
      block[4] = self;
      v126 = v10;
      dispatch_async(delegateQueue, block);

      v41 = v126;
LABEL_16:

      goto LABEL_17;
    }

    record = [completionCopy record];

    v43 = OUTLINED_FUNCTION_12();
    if (record)
    {
      if (v43)
      {
        v44 = 0;
        record2 = [completionCopy record];
        firmwareURL = [record2 firmwareURL];
        OUTLINED_FUNCTION_11(firmwareURL, 5.778e-34);
        OUTLINED_FUNCTION_5();
        _os_log_impl(v46, v47, v48, v49, v50, 0x16u);
      }

      record3 = [completionCopy record];
      deploymentList = [record3 deploymentList];

      if (deploymentList)
      {
        assetID = [(NSMutableDictionary *)v10 assetID];
        record4 = [completionCopy record];
        [record4 deploymentList];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_1_1() processUARPDeploymentRules:?];
      }

      record5 = [completionCopy record];
      releaseDate = [record5 releaseDate];

      if (releaseDate)
      {
        v57 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v57 setDateFormat:@"MM/dd/yyyy"];
        record6 = [completionCopy record];
        [record6 releaseDate];
        objc_claimAutoreleasedReturnValue();
        v6 = [OUTLINED_FUNCTION_1_1() dateFromString:?];
        assetID2 = [(NSMutableDictionary *)v10 assetID];
        [assetID2 setAssetReleaseDate:v6];
      }

      assetID3 = [(NSMutableDictionary *)v10 assetID];
      signatureValidationNeeded = [assetID3 signatureValidationNeeded];

      assetID4 = [(NSMutableDictionary *)v10 assetID];
      [assetID4 setValidationStatus:signatureValidationNeeded];

      [completionCopy record];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_2_1() setRecord:?];

      record7 = [completionCopy record];
      [record7 firmwareVersion];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_14() assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_13();
      [v64 setAssetVersion:?];

      record8 = [OUTLINED_FUNCTION_18() record];
      [record8 firmwareURL];
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

      record9 = [OUTLINED_FUNCTION_18() record];
      [record9 releaseNotesURL];
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

      record10 = [completionCopy record];
      [record10 releaseNotesFileSize];
      objc_claimAutoreleasedReturnValue();
      v74 = [OUTLINED_FUNCTION_8() numberFromString:?];
      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_17();
      [v75 setReleaseNotesFileSize:?];

      record11 = [completionCopy record];
      [record11 firmwareFileSize];
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

      delegateQueue2 = [(UARPiCloudAssetManager *)self delegateQueue];
      v123[0] = MEMORY[0x277D85DD0];
      v123[1] = 3221225472;
      v123[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_311;
      v123[3] = &unk_279DFD010;
      v123[4] = self;
      v124 = v10;
      dispatch_async(delegateQueue2, v123);

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

      assetID5 = [(NSMutableDictionary *)v10 assetID];
      [(NSMutableDictionary *)v10 analyticsSetDownloadCompleteForAssetID:assetID5 status:2];

      [(NSMutableDictionary *)v10 assetID];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_10();
      [v97 setAssetVersion:?];

      assetID6 = [(NSMutableDictionary *)v10 assetID];
      [assetID6 setRemoteURL:v88];

      assetID7 = [(NSMutableDictionary *)v10 assetID];
      [assetID7 setLocalURL:v88];

      assetID8 = [(NSMutableDictionary *)v10 assetID];
      [assetID8 setDownloadStatus:1];

      assetID9 = [(NSMutableDictionary *)v10 assetID];
      [assetID9 setUpdateAvailabilityStatus:3];

      if (v89)
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          log = log;
          accessoryID = [(NSMutableDictionary *)v10 accessoryID];
          v127 = 138412546;
          v128 = v89;
          v129 = 2112;
          v130 = accessoryID;
          OUTLINED_FUNCTION_9();
          _os_log_impl(v104, v105, v106, v107, v108, 0x16u);
        }

        [(NSMutableDictionary *)v10 assetID];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_17();
        [v109 setReleaseNotesLocalURL:?];

        assetID10 = [(NSMutableDictionary *)v10 assetID];
        [assetID10 setReleaseNotesDownloadStatus:1];

        assetID11 = [(NSMutableDictionary *)v10 assetID];
        [assetID11 setReleaseNotesAvailabilityStatus:3];
      }

      delegateQueue3 = [(UARPiCloudAssetManager *)self delegateQueue];
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __60__UARPiCloudAssetManager_handleRemoteFetchCompletion_error___block_invoke_312;
      v118[3] = &unk_279DFD010;
      v118[4] = self;
      v119 = v10;
      dispatch_async(delegateQueue3, v118);
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