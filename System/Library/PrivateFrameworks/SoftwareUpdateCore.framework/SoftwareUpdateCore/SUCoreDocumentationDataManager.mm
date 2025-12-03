@interface SUCoreDocumentationDataManager
+ (id)_sharedManagerInitWithPath:(id)path;
- (BOOL)cleanupNonInstalledDocumentationWithError:(id *)error;
- (BOOL)queue_cleanupNonInstalledDocumentationWithError:(id *)error;
- (BOOL)queue_evictStashIfNecessary:(id *)necessary;
- (BOOL)queue_getDocumentation:(id *)documentation documentationData:(id *)data forInstalledUpdateType:(unint64_t)type withError:(id *)error;
- (BOOL)queue_stashDocumentationAssetData:(id)data forBuildVersion:(id)version error:(id *)error;
- (BOOL)stashDocumentationAssetData:(id)data forBuildVersion:(id)version error:(id *)error;
- (SUCoreDocumentationDataManager)initWithStashPath:(id)path;
- (id)description;
- (id)getDocumentationDataForInstalledUpdateType:(unint64_t)type withError:(id *)error;
- (id)getDocumentationForInstalledUpdateType:(unint64_t)type withError:(id *)error;
- (id)installedBuildVersionsWithError:(id *)error;
- (id)stashedDataDirectoryForBuildVersion:(id)version;
@end

@implementation SUCoreDocumentationDataManager

- (SUCoreDocumentationDataManager)initWithStashPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = SUCoreDocumentationDataManager;
  v5 = [(SUCoreDocumentationDataManager *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.su.installedDocManager", v6);
    stateQueue = v5->_stateQueue;
    v5->_stateQueue = v7;

    if (pathCopy)
    {
      v9 = pathCopy;
    }

    else
    {
      v9 = @"/var/MobileSoftwareUpdate/Controller/SoftwareUpdateCore/Documentation";
    }

    objc_storeStrong(&v5->_documentationPath, v9);
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    documentationPath = [(SUCoreDocumentationDataManager *)v5 documentationPath];
    *buf = 138543362;
    v17 = documentationPath;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Created SUCoreDocumentationDataManager with stash path: %{public}@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)_sharedManagerInitWithPath:(id)path
{
  pathCopy = path;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUCoreDocumentationDataManager__sharedManagerInitWithPath___block_invoke;
  block[3] = &unk_27892C8A8;
  v10 = pathCopy;
  v4 = _sharedManagerInitWithPath__onceDocumentationDataManager;
  v5 = pathCopy;
  if (v4 != -1)
  {
    dispatch_once(&_sharedManagerInitWithPath__onceDocumentationDataManager, block);
  }

  v6 = _sharedManagerInitWithPath____dataManager;
  v7 = _sharedManagerInitWithPath____dataManager;

  return v6;
}

uint64_t __61__SUCoreDocumentationDataManager__sharedManagerInitWithPath___block_invoke(uint64_t a1)
{
  _sharedManagerInitWithPath____dataManager = [[SUCoreDocumentationDataManager alloc] initWithStashPath:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)stashDocumentationAssetData:(id)data forBuildVersion:(id)version error:(id *)error
{
  dataCopy = data;
  versionCopy = version;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  if (error)
  {
    *error = 0;
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SUCoreDocumentationDataManager_stashDocumentationAssetData_forBuildVersion_error___block_invoke;
  block[3] = &unk_27892DFD0;
  v18 = &v26;
  block[4] = self;
  v11 = dataCopy;
  v16 = v11;
  v12 = versionCopy;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(stateQueue, block);
  if (error)
  {
    *error = v21[5];
  }

  v13 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __84__SUCoreDocumentationDataManager_stashDocumentationAssetData_forBuildVersion_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 queue_stashDocumentationAssetData:v3 forBuildVersion:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(a1[7] + 8) + 24) = v6;
}

- (id)getDocumentationDataForInstalledUpdateType:(unint64_t)type withError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  if (error)
  {
    *error = 0;
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SUCoreDocumentationDataManager_getDocumentationDataForInstalledUpdateType_withError___block_invoke;
  v10[3] = &unk_27892DFF8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v17;
  v10[7] = type;
  dispatch_sync(stateQueue, v10);
  if (error)
  {
    *error = v18[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __87__SUCoreDocumentationDataManager_getDocumentationDataForInstalledUpdateType_withError___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  obj = v3;
  [v1 queue_getDocumentation:0 documentationData:&obj forInstalledUpdateType:v4 withError:&v6];
  objc_storeStrong((v2 + 40), obj);
  objc_storeStrong((v5 + 40), v6);
}

- (id)getDocumentationForInstalledUpdateType:(unint64_t)type withError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  if (error)
  {
    *error = 0;
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SUCoreDocumentationDataManager_getDocumentationForInstalledUpdateType_withError___block_invoke;
  v10[3] = &unk_27892DFF8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v17;
  v10[7] = type;
  dispatch_sync(stateQueue, v10);
  if (error)
  {
    *error = v18[5];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __83__SUCoreDocumentationDataManager_getDocumentationForInstalledUpdateType_withError___block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  v4 = a1[7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  obj = v3;
  [v1 queue_getDocumentation:&obj documentationData:0 forInstalledUpdateType:v4 withError:&v6];
  objc_storeStrong((v2 + 40), obj);
  objc_storeStrong((v5 + 40), v6);
}

- (BOOL)cleanupNonInstalledDocumentationWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  v14 = 0;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  if (error)
  {
    *error = 0;
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__SUCoreDocumentationDataManager_cleanupNonInstalledDocumentationWithError___block_invoke;
  block[3] = &unk_27892D5C0;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(stateQueue, block);
  if (error)
  {
    *error = v10[5];
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __76__SUCoreDocumentationDataManager_cleanupNonInstalledDocumentationWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 queue_cleanupNonInstalledDocumentationWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (BOOL)queue_stashDocumentationAssetData:(id)data forBuildVersion:(id)version error:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  versionCopy = version;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (error)
  {
    *error = 0;
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v55 = dataCopy;
    v56 = 2114;
    v57 = versionCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Stashing documentation asset: %{public}@ for build version: %{public}@", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (!defaultManager)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Failed to create NSFileManager";
    v24 = 9000;
LABEL_13:
    v25 = [v22 buildAndLogCheckedSUCoreError:v24 underlying:0 description:v23];
    v20 = v25;
    if (error)
    {
      v26 = v25;
      v15 = 0;
LABEL_35:
      v21 = 0;
      *error = v20;
      goto LABEL_36;
    }

    v15 = 0;
    goto LABEL_16;
  }

  v13 = MEMORY[0x277CBEBC0];
  v14 = [(SUCoreDocumentationDataManager *)self stashedDataDirectoryForBuildVersion:versionCopy];
  v15 = [v13 fileURLWithPath:v14];

  if (!v15)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Failed to create stashURL";
    v24 = 9004;
    goto LABEL_13;
  }

  path = [v15 path];
  v17 = [defaultManager fileExistsAtPath:path];

  if (v17)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = versionCopy;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Documentation data already stashed for build version %@", buf, 0xCu);
    }

    v20 = 0;
    v21 = 1;
    goto LABEL_36;
  }

  v53 = 0;
  v27 = [(SUCoreDocumentationDataManager *)self queue_evictStashIfNecessary:&v53];
  v28 = v53;
  if (!v27)
  {
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog3 = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentationDataManager queue_stashDocumentationAssetData:v28 forBuildVersion:oslog3 error:?];
    }
  }

  if (([dataCopy refreshState] & 1) == 0)
  {
    v44 = MEMORY[0x277CCA9B8];
    v45 = @"Failed to refresh documentation asset";
    v46 = 9011;
    goto LABEL_33;
  }

  if (([dataCopy wasLocal] & 1) == 0)
  {
    v44 = MEMORY[0x277CCA9B8];
    v45 = @"Documentation asset is not local";
    v46 = 9012;
LABEL_33:
    v20 = [v44 buildAndLogCheckedSUCoreError:v46 underlying:v28 description:v45];

    if (error)
    {
LABEL_34:
      v47 = v20;
      goto LABEL_35;
    }

LABEL_16:
    v21 = 0;
    goto LABEL_36;
  }

  v52 = v28;
  v31 = [defaultManager createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v52];
  v32 = v52;

  if ((v31 & 1) == 0)
  {
    v20 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9004 underlying:v32 description:@"Failed to create documentation data stash directory"];

    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  getLocalUrl = [dataCopy getLocalUrl];
  uRLByDeletingLastPathComponent = [getLocalUrl URLByDeletingLastPathComponent];

  lastPathComponent = [uRLByDeletingLastPathComponent lastPathComponent];
  v36 = [v15 URLByAppendingPathComponent:lastPathComponent];

  v37 = v36;
  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog4 = [mEMORY[0x277D64460]4 oslog];

  if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v55 = versionCopy;
    v56 = 2114;
    v57 = uRLByDeletingLastPathComponent;
    v58 = 2114;
    v59 = v37;
    _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Copying documentation asset for %{public}@ from %{public}@ to %{public}@", buf, 0x20u);
  }

  v51 = v32;
  v21 = [defaultManager copyItemAtURL:uRLByDeletingLastPathComponent toURL:v37 error:&v51];
  v20 = v51;

  if ((v21 & 1) == 0)
  {
    v40 = MEMORY[0x277CCA9B8];
    v50 = v37;
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy from %@ to %@", 0, v15];
    v42 = [v40 buildAndLogCheckedSUCoreError:9002 underlying:v20 description:v41];

    if (error)
    {
      v43 = v42;
      *error = v42;
    }

    v20 = v42;
    v37 = v50;
  }

LABEL_36:
  v48 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)queue_getDocumentation:(id *)documentation documentationData:(id *)data forInstalledUpdateType:(unint64_t)type withError:(id *)error
{
  v107 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (documentation)
  {
    *documentation = 0;
  }

  if (data)
  {
    *data = 0;
  }

  dataCopy = data;
  if (error)
  {
    *error = 0;
  }

  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  mEMORY[0x277D64418]3 = mEMORY[0x277D64418];
  if (type == 1)
  {
    if ([mEMORY[0x277D64418] hasSplatOnlyUpdateInstalled])
    {
    }

    else
    {
      mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
      hasSemiSplatActive = [mEMORY[0x277D64418]2 hasSemiSplatActive];

      if ((hasSemiSplatActive & 1) == 0)
      {
        v77 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9009 underlying:0 description:@"Splat update not installed. No documentation data found for splat update"];
        v67 = v77;
        if (error)
        {
          v78 = v77;
          v71 = 0;
          *error = v67;
        }

        else
        {
          v71 = 0;
        }

        goto LABEL_52;
      }
    }

    mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1BuildVersion = [mEMORY[0x277D64418]3 splatCryptex1BuildVersion];
  }

  else
  {
    splatCryptex1BuildVersion = [mEMORY[0x277D64418] buildVersion];
  }

  v15 = splatCryptex1BuildVersion;

  v93 = [(SUCoreDocumentationDataManager *)self stashedDataDirectoryForBuildVersion:v15];
  if (v93)
  {
    documentationCopy = documentation;
    v84 = v15;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v95 = 0;
    v17 = [defaultManager contentsOfDirectoryAtPath:v93 error:&v95];
    v81 = v95;

    obj = v17;
    v91 = [v17 countByEnumeratingWithState:&v96 objects:v106 count:16];
    v18 = 0;
    v19 = 0;
    if (!v91)
    {
      goto LABEL_31;
    }

    v90 = *v97;
    v20 = *MEMORY[0x277D644F0];
    v85 = *MEMORY[0x277D644F0];
    v86 = *MEMORY[0x277D64540];
    while (1)
    {
      v21 = 0;
      v22 = v18;
      v23 = v19;
      do
      {
        v94 = v22;
        if (*v97 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v96 + 1) + 8 * v21);
        v25 = MEMORY[0x277CBEBC0];
        v105[0] = v93;
        v105[1] = v24;
        v105[2] = @"AssetData";
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:3];
        v27 = [v25 fileURLWithPathComponents:v26];

        v28 = MEMORY[0x277CBEBC0];
        v104[0] = v93;
        v104[1] = v24;
        v104[2] = @"Info.plist";
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:3];
        v30 = [v28 fileURLWithPathComponents:v29];

        v31 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v30];
        v32 = v27;
        v33 = [v31 safeObjectForKey:@"MobileAssetProperties" ofClass:objc_opt_class()];

        mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
        oslog = [mEMORY[0x277D64460] oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v101 = v27;
          v102 = 2114;
          v103 = v33;
          _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Initializing documentation with assetBundleURL: %{public}@, assetAttributes: %{public}@", buf, 0x16u);
        }

        v19 = [[SUCoreDocumentation alloc] initWithLocalBundleURL:v27 attributes:v33];
        extendDocumentationProperties = [(SUCoreDocumentation *)v19 extendDocumentationProperties];
        if (type == 1)
        {
          v89 = v30;
          v37 = v27;
          v38 = objc_alloc(MEMORY[0x277CCACA8]);
          humanReadableUpdateName = [(SUCoreDocumentation *)v19 humanReadableUpdateName];
          [MEMORY[0x277D64418] sharedDevice];
          v40 = v88 = v33;
          splatCryptex1ProductVersion = [v40 splatCryptex1ProductVersion];
          mEMORY[0x277D64418]4 = [MEMORY[0x277D64418] sharedDevice];
          splatCryptex1ProductVersionExtra = [mEMORY[0x277D64418]4 splatCryptex1ProductVersionExtra];
          v44 = [v38 initWithFormat:@"%@ %@ %@", humanReadableUpdateName, splatCryptex1ProductVersion, splatCryptex1ProductVersionExtra];
          [(SUCoreDocumentation *)v19 setHumanReadableUpdateName:v44];

          v32 = v37;
          v30 = v89;
          v45 = objc_alloc(MEMORY[0x277CCACA8]);
          mEMORY[0x277D64418]5 = [MEMORY[0x277D64418] sharedDevice];
          splatCryptex1ProductVersion2 = [mEMORY[0x277D64418]5 splatCryptex1ProductVersion];
          mEMORY[0x277D64418]6 = [MEMORY[0x277D64418] sharedDevice];
          splatCryptex1ProductVersionExtra2 = [mEMORY[0x277D64418]6 splatCryptex1ProductVersionExtra];
          v50 = [v45 initWithFormat:@"%@ %@", splatCryptex1ProductVersion2, splatCryptex1ProductVersionExtra2];
          [(SUCoreDocumentation *)v19 setHumanReadableUpdateVersion:v50];

          v33 = v88;
        }

        mEMORY[0x277D64418]7 = [MEMORY[0x277D64418] sharedDevice];
        if (![mEMORY[0x277D64418]7 isBootedOSSecureInternal])
        {
          goto LABEL_26;
        }

        v52 = [objc_alloc(MEMORY[0x277D64408]) initWithProjectName:v86];
        v53 = [v52 getBoolConfigForKey:v85];

        if ((v53 & 1) == 0)
        {
          v54 = objc_alloc(MEMORY[0x277CCACA8]);
          humanReadableUpdateName2 = [(SUCoreDocumentation *)v19 humanReadableUpdateName];
          v56 = [v54 initWithFormat:@"%@ (%@)", humanReadableUpdateName2, v84];
          [(SUCoreDocumentation *)v19 setHumanReadableUpdateName:v56];

          v57 = objc_alloc(MEMORY[0x277CCACA8]);
          mEMORY[0x277D64418]7 = [(SUCoreDocumentation *)v19 humanReadableUpdateVersion];
          v58 = [v57 initWithFormat:@"%@ (%@)", mEMORY[0x277D64418]7, v84];
          [(SUCoreDocumentation *)v19 setHumanReadableUpdateVersion:v58];

LABEL_26:
        }

        v18 = objc_alloc_init(SUCoreDocumentationData);

        humanReadableUpdateName3 = [(SUCoreDocumentation *)v19 humanReadableUpdateName];
        [(SUCoreDocumentationData *)v18 setHumanReadableUpdateName:humanReadableUpdateName3];

        humanReadableUpdateTitle = [(SUCoreDocumentation *)v19 humanReadableUpdateTitle];
        [(SUCoreDocumentationData *)v18 setHumanReadableUpdateTitle:humanReadableUpdateTitle];

        humanReadableUpdateVersion = [(SUCoreDocumentation *)v19 humanReadableUpdateVersion];
        [(SUCoreDocumentationData *)v18 setHumanReadableUpdateVersion:humanReadableUpdateVersion];

        releaseNotes = [(SUCoreDocumentation *)v19 releaseNotes];
        [(SUCoreDocumentationData *)v18 setReadme:releaseNotes];

        releaseNotesSummary = [(SUCoreDocumentation *)v19 releaseNotesSummary];
        [(SUCoreDocumentationData *)v18 setReadmeSummary:releaseNotesSummary];

        licenseAgreement = [(SUCoreDocumentation *)v19 licenseAgreement];
        [(SUCoreDocumentationData *)v18 setLicense:licenseAgreement];

        if (v19 && v18)
        {
          goto LABEL_31;
        }

        ++v21;
        v22 = v18;
        v23 = v19;
      }

      while (v91 != v21);
      v91 = [obj countByEnumeratingWithState:&v96 objects:v106 count:16];
      if (!v91)
      {
LABEL_31:

        mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
        oslog2 = [mEMORY[0x277D64460]2 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v101 = v19;
          v102 = 2114;
          v103 = v18;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Returning documentation: %{public}@, documentation data: %{public}@", buf, 0x16u);
        }

        v15 = v84;
        v67 = v81;
        if (documentationCopy)
        {
          v68 = v19;
          *documentationCopy = v19;
        }

        if (dataCopy)
        {
          v69 = v18;
          *dataCopy = v18;
        }

        if (v19)
        {
          v70 = v18 == 0;
        }

        else
        {
          v70 = 1;
        }

        v71 = !v70;

        goto LABEL_51;
      }
    }
  }

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDocumentationDataManager queue_getDocumentation:v15 documentationData:oslog3 forInstalledUpdateType:? withError:?];
  }

  v74 = MEMORY[0x277CCA9B8];
  v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"No available stashed documentation path for provided build version (%@)", v15];
  v67 = [v74 buildAndLogCheckedSUCoreError:9004 underlying:0 description:v75];

  if (error)
  {
    v76 = v67;
    v71 = 0;
    *error = v67;
  }

  else
  {
    v71 = 0;
  }

LABEL_51:

LABEL_52:
  v79 = *MEMORY[0x277D85DE8];
  return v71;
}

- (BOOL)queue_cleanupNonInstalledDocumentationWithError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (error)
  {
    *error = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (!defaultManager)
  {
    v23 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9000 underlying:0 description:@"Failed to create NSFileManager for cleanup"];
    v13 = v23;
    if (!error)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_29;
    }

    v24 = v23;
    v9 = 0;
    v5 = 0;
LABEL_26:
    v31 = 0;
    *error = v13;
    goto LABEL_36;
  }

  v49 = 0;
  v5 = [(SUCoreDocumentationDataManager *)self installedBuildVersionsWithError:&v49];
  v6 = v49;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9005 underlying:v6 description:@"Failed to create installedBuildVersions array for cleanup"];

    if (!error)
    {
      v9 = 0;
      goto LABEL_29;
    }

    v25 = v13;
    v9 = 0;
    goto LABEL_26;
  }

  documentationPath = [(SUCoreDocumentationDataManager *)self documentationPath];
  v48 = 0;
  v9 = [defaultManager contentsOfDirectoryAtPath:documentationPath error:&v48];
  v10 = v48;

  if (!v9 || v10)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = MEMORY[0x277CCACA8];
    documentationPath2 = [(SUCoreDocumentationDataManager *)self documentationPath];
    v29 = [v27 stringWithFormat:@"Failed to read contents of %@ for cleanup: %@", documentationPath2, v10];
    v13 = [v26 buildAndLogCheckedSUCoreError:9003 underlying:v10 description:v29];

    if (error)
    {
      v30 = v13;
      goto LABEL_26;
    }

LABEL_29:
    v31 = 0;
    goto LABEL_36;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v9;
  v11 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    errorCopy = error;
    v13 = 0;
    v14 = *v45;
LABEL_10:
    v15 = 0;
    while (1)
    {
      if (*v45 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v44 + 1) + 8 * v15);
      if (([v5 containsObject:v16] & 1) == 0)
      {
        v17 = [(SUCoreDocumentationDataManager *)self stashedDataDirectoryForBuildVersion:v16];
        if (!v17)
        {
          v32 = MEMORY[0x277CCA9B8];
          v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create build version path for cleanup with build version (%@)", v16];
          v34 = [v32 buildAndLogCheckedSUCoreError:9004 underlying:0 description:v33];

          v13 = v34;
          v35 = errorCopy;
          if (errorCopy)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        v18 = v5;
        v19 = v9;
        v20 = v13;
        v43 = v13;
        v21 = [defaultManager removeItemAtPath:v17 error:&v43];
        v22 = v43;

        if ((v21 & 1) == 0)
        {
          v39 = MEMORY[0x277CCA9B8];
          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove directory %@: %@", v17, v22];
          v34 = [v39 buildAndLogCheckedSUCoreError:90007 underlying:v22 description:v40];

          v13 = v34;
          v35 = errorCopy;
          v9 = v19;
          v5 = v18;
          if (!errorCopy)
          {
            goto LABEL_34;
          }

LABEL_33:
          v36 = v34;
          *v35 = v34;
          v13 = v34;
LABEL_34:

          v31 = 0;
          goto LABEL_35;
        }

        v13 = v22;
        v9 = v19;
        v5 = v18;
      }

      if (v12 == ++v15)
      {
        v12 = [v9 countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v12)
        {
          goto LABEL_10;
        }

        goto LABEL_31;
      }
    }
  }

  v13 = 0;
LABEL_31:
  v31 = 1;
LABEL_35:

LABEL_36:
  v37 = *MEMORY[0x277D85DE8];
  return v31;
}

- (BOOL)queue_evictStashIfNecessary:(id *)necessary
{
  v68 = *MEMORY[0x277D85DE8];
  stateQueue = [(SUCoreDocumentationDataManager *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  if (necessary)
  {
    *necessary = 0;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if (!defaultManager)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Failed to create NSFileManager";
    v24 = 9000;
LABEL_16:
    v25 = [v22 buildAndLogCheckedSUCoreError:v24 underlying:0 description:v23];
    v20 = v25;
    if (necessary)
    {
      v26 = v25;
      v18 = 0;
      v19 = 0;
      v13 = 0;
LABEL_44:
      v21 = 0;
      *necessary = v20;
      goto LABEL_45;
    }

    v18 = 0;
    v19 = 0;
    v13 = 0;
LABEL_38:
    v21 = 0;
    goto LABEL_45;
  }

  v7 = 0x277D64000uLL;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    documentationPath = [(SUCoreDocumentationDataManager *)self documentationPath];
    *buf = 138543362;
    v65 = documentationPath;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Preparing to evict stashed documentation assets at directory %{public}@", buf, 0xCu);
  }

  documentationPath2 = [(SUCoreDocumentationDataManager *)self documentationPath];

  if (!documentationPath2)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Missing documentation path when attempting to evict documentation stash";
    v24 = 9004;
    goto LABEL_16;
  }

  documentationPath3 = [(SUCoreDocumentationDataManager *)self documentationPath];
  v63 = 0;
  v13 = [defaultManager contentsOfDirectoryAtPath:documentationPath3 error:&v63];
  v14 = v63;

  if (!v13 || v14)
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = MEMORY[0x277CCACA8];
    documentationPath4 = [(SUCoreDocumentationDataManager *)self documentationPath];
    v30 = [v28 stringWithFormat:@"Failed to read contents of %@: %@", documentationPath4, v14];
    v20 = [v27 buildAndLogCheckedSUCoreError:9003 underlying:v14 description:v30];

    if (necessary)
    {
      v31 = v20;
      v18 = 0;
LABEL_43:
      v19 = 0;
      goto LABEL_44;
    }

    v18 = 0;
LABEL_37:
    v19 = 0;
    goto LABEL_38;
  }

  if ([v13 count] <= 4)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v13 count];
      *buf = 134218240;
      v65 = v17;
      v66 = 2048;
      v67 = 5;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Stashed assets (%lld) is below the minimum threshold (%lld), not evicting any assets", buf, 0x16u);
    }

    v18 = 0;
    v19 = 0;
    goto LABEL_13;
  }

  v62 = 0;
  v18 = [(SUCoreDocumentationDataManager *)self installedBuildVersionsWithError:&v62];
  v32 = v62;
  v33 = v32;
  if (!v18 || v32)
  {
    v20 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9005 underlying:v32 description:@"Failed to create installedBuildVersions array"];

    if (necessary)
    {
LABEL_42:
      v42 = v20;
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v34 = [v13 sortedArrayUsingComparator:&__block_literal_global_6];
  if (!v34)
  {
    v20 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:90007 underlying:0 description:@"Failed to create sorted build version directory"];
    if (necessary)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  v19 = v34;
  if ([v34 count] < 5)
  {
LABEL_13:
    v20 = 0;
    v21 = 1;
    goto LABEL_45;
  }

  v57 = v13;
  v20 = 0;
  v35 = 0;
  v36 = 0;
  while (1)
  {
    if ([v19 count] <= v36)
    {
      v21 = 1;
LABEL_52:
      v13 = v57;
      goto LABEL_45;
    }

    v37 = [v19 objectAtIndex:v36];
    if (!v37)
    {
      break;
    }

    v38 = v37;
    if (([v18 containsObject:v37] & 1) == 0)
    {
      v60 = [(SUCoreDocumentationDataManager *)self stashedDataDirectoryForBuildVersion:v38];
      if (!v60)
      {
        v49 = MEMORY[0x277CCA9B8];
        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create deletePath"];
        v51 = [v49 buildAndLogCheckedSUCoreError:90007 underlying:0 description:v50];

        v20 = v51;
        if (!necessary)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v59 = v38;
      sharedLogger = [*(v7 + 1120) sharedLogger];
      oslog3 = [sharedLogger oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v65 = v60;
        _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Removing documentation asset at path %{public}@", buf, 0xCu);
      }

      v61 = v20;
      v58 = [defaultManager removeItemAtPath:v60 error:&v61];
      v41 = v61;

      if ((v58 & 1) == 0)
      {
        v53 = MEMORY[0x277CCA9B8];
        v54 = MEMORY[0x277CCACA8];
        documentationPath5 = [(SUCoreDocumentationDataManager *)self documentationPath];
        v56 = [v54 stringWithFormat:@"Failed to remove directory %@: %@", documentationPath5, v41];
        v51 = [v53 buildAndLogCheckedSUCoreError:90007 underlying:v41 description:v56];

        v20 = v51;
        v38 = v59;
        if (!necessary)
        {
LABEL_51:

          v21 = 0;
          goto LABEL_52;
        }

LABEL_50:
        v52 = v51;
        *necessary = v51;
        v20 = v51;
        goto LABEL_51;
      }

      ++v35;

      v20 = v41;
      v7 = 0x277D64000;
      v38 = v59;
    }

    ++v36;

    v21 = 1;
    if (([v19 count] - v35) <= 4)
    {
      goto LABEL_52;
    }
  }

  v45 = MEMORY[0x277CCA9B8];
  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create deletePath"];
  v47 = [v45 buildAndLogCheckedSUCoreError:9005 underlying:0 description:v46];

  v13 = v57;
  if (necessary)
  {
    v48 = v47;
    v21 = 0;
    *necessary = v47;
  }

  else
  {
    v21 = 0;
  }

  v20 = v47;
LABEL_45:

  v43 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)installedBuildVersionsWithError:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v4)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"Failed to allocate installed build version array";
    v17 = 9000;
    goto LABEL_13;
  }

  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  buildVersion = [mEMORY[0x277D64418] buildVersion];

  if (!buildVersion)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"No OS build version found";
    v17 = 9006;
LABEL_13:
    v18 = [v15 buildAndLogCheckedSUCoreError:v17 underlying:0 description:v16];
    v14 = v18;
    if (error)
    {
      v19 = v18;
      v13 = 0;
      *error = v14;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_16;
  }

  [v4 addObject:buildVersion];
  mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
  splatCryptex1BuildVersion = [mEMORY[0x277D64418]2 splatCryptex1BuildVersion];

  if (splatCryptex1BuildVersion && ([splatCryptex1BuildVersion isEqualToString:buildVersion] & 1) == 0)
  {
    [v4 addObject:splatCryptex1BuildVersion];
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 count];
    v12 = [v4 componentsJoinedByString:{@", "}];
    v22 = 134218242;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Found %lld installed build versions: %{public}@", &v22, 0x16u);
  }

  v13 = v4;
  v14 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)stashedDataDirectoryForBuildVersion:(id)version
{
  versionCopy = version;
  documentationPath = [(SUCoreDocumentationDataManager *)self documentationPath];

  if (documentationPath)
  {
    if (versionCopy)
    {
      documentationPath2 = [(SUCoreDocumentationDataManager *)self documentationPath];
      documentationPath = [documentationPath2 stringByAppendingPathComponent:versionCopy];
    }

    else
    {
      documentationPath2 = [MEMORY[0x277D64428] sharedDiag];
      [documentationPath2 trackAnomaly:@"SUCoreDocumentationDataManager" forReason:@"Missing build version to construct documentation path" withResult:8116 withError:0];
      documentationPath = 0;
    }
  }

  else
  {
    documentationPath2 = [MEMORY[0x277D64428] sharedDiag];
    [documentationPath2 trackAnomaly:@"SUCoreDocumentationDataManager" forReason:@"Missing base path to construct documentation path" withResult:8116 withError:0];
  }

  return documentationPath;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  documentationPath = [(SUCoreDocumentationDataManager *)self documentationPath];
  v4 = [v2 stringWithFormat:@"SUCoreDocumentationDataManager(%@)", documentationPath];

  return v4;
}

- (void)queue_stashDocumentationAssetData:(uint64_t)a1 forBuildVersion:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "[SUCoreDocumentationDataManager] Failed to create evict stash directories: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)queue_getDocumentation:(uint64_t)a1 documentationData:(NSObject *)a2 forInstalledUpdateType:withError:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "[SUCoreDocumentationDataManager] No available stashedDocumentationPath for build version: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end