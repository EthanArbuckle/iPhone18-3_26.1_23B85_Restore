@interface SUCoreDocumentationDataManager
+ (id)_sharedManagerInitWithPath:(id)a3;
- (BOOL)cleanupNonInstalledDocumentationWithError:(id *)a3;
- (BOOL)queue_cleanupNonInstalledDocumentationWithError:(id *)a3;
- (BOOL)queue_evictStashIfNecessary:(id *)a3;
- (BOOL)queue_getDocumentation:(id *)a3 documentationData:(id *)a4 forInstalledUpdateType:(unint64_t)a5 withError:(id *)a6;
- (BOOL)queue_stashDocumentationAssetData:(id)a3 forBuildVersion:(id)a4 error:(id *)a5;
- (BOOL)stashDocumentationAssetData:(id)a3 forBuildVersion:(id)a4 error:(id *)a5;
- (SUCoreDocumentationDataManager)initWithStashPath:(id)a3;
- (id)description;
- (id)getDocumentationDataForInstalledUpdateType:(unint64_t)a3 withError:(id *)a4;
- (id)getDocumentationForInstalledUpdateType:(unint64_t)a3 withError:(id *)a4;
- (id)installedBuildVersionsWithError:(id *)a3;
- (id)stashedDataDirectoryForBuildVersion:(id)a3;
@end

@implementation SUCoreDocumentationDataManager

- (SUCoreDocumentationDataManager)initWithStashPath:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SUCoreDocumentationDataManager;
  v5 = [(SUCoreDocumentationDataManager *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.su.installedDocManager", v6);
    stateQueue = v5->_stateQueue;
    v5->_stateQueue = v7;

    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = @"/var/MobileSoftwareUpdate/Controller/SoftwareUpdateCore/Documentation";
    }

    objc_storeStrong(&v5->_documentationPath, v9);
  }

  v10 = [MEMORY[0x277D64460] sharedLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(SUCoreDocumentationDataManager *)v5 documentationPath];
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Created SUCoreDocumentationDataManager with stash path: %{public}@", buf, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)_sharedManagerInitWithPath:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SUCoreDocumentationDataManager__sharedManagerInitWithPath___block_invoke;
  block[3] = &unk_27892C8A8;
  v10 = v3;
  v4 = _sharedManagerInitWithPath__onceDocumentationDataManager;
  v5 = v3;
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

- (BOOL)stashDocumentationAssetData:(id)a3 forBuildVersion:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  if (a5)
  {
    *a5 = 0;
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SUCoreDocumentationDataManager_stashDocumentationAssetData_forBuildVersion_error___block_invoke;
  block[3] = &unk_27892DFD0;
  v18 = &v26;
  block[4] = self;
  v11 = v8;
  v16 = v11;
  v12 = v9;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(stateQueue, block);
  if (a5)
  {
    *a5 = v21[5];
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

- (id)getDocumentationDataForInstalledUpdateType:(unint64_t)a3 withError:(id *)a4
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
  if (a4)
  {
    *a4 = 0;
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __87__SUCoreDocumentationDataManager_getDocumentationDataForInstalledUpdateType_withError___block_invoke;
  v10[3] = &unk_27892DFF8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v17;
  v10[7] = a3;
  dispatch_sync(stateQueue, v10);
  if (a4)
  {
    *a4 = v18[5];
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

- (id)getDocumentationForInstalledUpdateType:(unint64_t)a3 withError:(id *)a4
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
  if (a4)
  {
    *a4 = 0;
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SUCoreDocumentationDataManager_getDocumentationForInstalledUpdateType_withError___block_invoke;
  v10[3] = &unk_27892DFF8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v17;
  v10[7] = a3;
  dispatch_sync(stateQueue, v10);
  if (a4)
  {
    *a4 = v18[5];
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

- (BOOL)cleanupNonInstalledDocumentationWithError:(id *)a3
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
  if (a3)
  {
    *a3 = 0;
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
  if (a3)
  {
    *a3 = v10[5];
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

- (BOOL)queue_stashDocumentationAssetData:(id)a3 forBuildVersion:(id)a4 error:(id *)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (a5)
  {
    *a5 = 0;
  }

  v10 = [MEMORY[0x277D64460] sharedLogger];
  v11 = [v10 oslog];

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v55 = v8;
    v56 = 2114;
    v57 = v9;
    _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Stashing documentation asset: %{public}@ for build version: %{public}@", buf, 0x16u);
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  if (!v12)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Failed to create NSFileManager";
    v24 = 9000;
LABEL_13:
    v25 = [v22 buildAndLogCheckedSUCoreError:v24 underlying:0 description:v23];
    v20 = v25;
    if (a5)
    {
      v26 = v25;
      v15 = 0;
LABEL_35:
      v21 = 0;
      *a5 = v20;
      goto LABEL_36;
    }

    v15 = 0;
    goto LABEL_16;
  }

  v13 = MEMORY[0x277CBEBC0];
  v14 = [(SUCoreDocumentationDataManager *)self stashedDataDirectoryForBuildVersion:v9];
  v15 = [v13 fileURLWithPath:v14];

  if (!v15)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Failed to create stashURL";
    v24 = 9004;
    goto LABEL_13;
  }

  v16 = [v15 path];
  v17 = [v12 fileExistsAtPath:v16];

  if (v17)
  {
    v18 = [MEMORY[0x277D64460] sharedLogger];
    v19 = [v18 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v9;
      _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Documentation data already stashed for build version %@", buf, 0xCu);
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
    v29 = [MEMORY[0x277D64460] sharedLogger];
    v30 = [v29 oslog];

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentationDataManager queue_stashDocumentationAssetData:v28 forBuildVersion:v30 error:?];
    }
  }

  if (([v8 refreshState] & 1) == 0)
  {
    v44 = MEMORY[0x277CCA9B8];
    v45 = @"Failed to refresh documentation asset";
    v46 = 9011;
    goto LABEL_33;
  }

  if (([v8 wasLocal] & 1) == 0)
  {
    v44 = MEMORY[0x277CCA9B8];
    v45 = @"Documentation asset is not local";
    v46 = 9012;
LABEL_33:
    v20 = [v44 buildAndLogCheckedSUCoreError:v46 underlying:v28 description:v45];

    if (a5)
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
  v31 = [v12 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v52];
  v32 = v52;

  if ((v31 & 1) == 0)
  {
    v20 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9004 underlying:v32 description:@"Failed to create documentation data stash directory"];

    if (!a5)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  v33 = [v8 getLocalUrl];
  v34 = [v33 URLByDeletingLastPathComponent];

  v35 = [v34 lastPathComponent];
  v36 = [v15 URLByAppendingPathComponent:v35];

  v37 = v36;
  v38 = [MEMORY[0x277D64460] sharedLogger];
  v39 = [v38 oslog];

  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v55 = v9;
    v56 = 2114;
    v57 = v34;
    v58 = 2114;
    v59 = v37;
    _os_log_impl(&dword_23193C000, v39, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Copying documentation asset for %{public}@ from %{public}@ to %{public}@", buf, 0x20u);
  }

  v51 = v32;
  v21 = [v12 copyItemAtURL:v34 toURL:v37 error:&v51];
  v20 = v51;

  if ((v21 & 1) == 0)
  {
    v40 = MEMORY[0x277CCA9B8];
    v50 = v37;
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to copy from %@ to %@", 0, v15];
    v42 = [v40 buildAndLogCheckedSUCoreError:9002 underlying:v20 description:v41];

    if (a5)
    {
      v43 = v42;
      *a5 = v42;
    }

    v20 = v42;
    v37 = v50;
  }

LABEL_36:
  v48 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)queue_getDocumentation:(id *)a3 documentationData:(id *)a4 forInstalledUpdateType:(unint64_t)a5 withError:(id *)a6
{
  v107 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v83 = a4;
  if (a6)
  {
    *a6 = 0;
  }

  v10 = [MEMORY[0x277D64418] sharedDevice];
  v11 = v10;
  if (a5 == 1)
  {
    if ([v10 hasSplatOnlyUpdateInstalled])
    {
    }

    else
    {
      v13 = [MEMORY[0x277D64418] sharedDevice];
      v14 = [v13 hasSemiSplatActive];

      if ((v14 & 1) == 0)
      {
        v77 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9009 underlying:0 description:@"Splat update not installed. No documentation data found for splat update"];
        v67 = v77;
        if (a6)
        {
          v78 = v77;
          v71 = 0;
          *a6 = v67;
        }

        else
        {
          v71 = 0;
        }

        goto LABEL_52;
      }
    }

    v11 = [MEMORY[0x277D64418] sharedDevice];
    v12 = [v11 splatCryptex1BuildVersion];
  }

  else
  {
    v12 = [v10 buildVersion];
  }

  v15 = v12;

  v93 = [(SUCoreDocumentationDataManager *)self stashedDataDirectoryForBuildVersion:v15];
  if (v93)
  {
    v82 = a3;
    v84 = v15;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v95 = 0;
    v17 = [v16 contentsOfDirectoryAtPath:v93 error:&v95];
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

        v34 = [MEMORY[0x277D64460] sharedLogger];
        v35 = [v34 oslog];

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v101 = v27;
          v102 = 2114;
          v103 = v33;
          _os_log_impl(&dword_23193C000, v35, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Initializing documentation with assetBundleURL: %{public}@, assetAttributes: %{public}@", buf, 0x16u);
        }

        v19 = [[SUCoreDocumentation alloc] initWithLocalBundleURL:v27 attributes:v33];
        v36 = [(SUCoreDocumentation *)v19 extendDocumentationProperties];
        if (a5 == 1)
        {
          v89 = v30;
          v37 = v27;
          v38 = objc_alloc(MEMORY[0x277CCACA8]);
          v39 = [(SUCoreDocumentation *)v19 humanReadableUpdateName];
          [MEMORY[0x277D64418] sharedDevice];
          v40 = v88 = v33;
          v41 = [v40 splatCryptex1ProductVersion];
          v42 = [MEMORY[0x277D64418] sharedDevice];
          v43 = [v42 splatCryptex1ProductVersionExtra];
          v44 = [v38 initWithFormat:@"%@ %@ %@", v39, v41, v43];
          [(SUCoreDocumentation *)v19 setHumanReadableUpdateName:v44];

          v32 = v37;
          v30 = v89;
          v45 = objc_alloc(MEMORY[0x277CCACA8]);
          v46 = [MEMORY[0x277D64418] sharedDevice];
          v47 = [v46 splatCryptex1ProductVersion];
          v48 = [MEMORY[0x277D64418] sharedDevice];
          v49 = [v48 splatCryptex1ProductVersionExtra];
          v50 = [v45 initWithFormat:@"%@ %@", v47, v49];
          [(SUCoreDocumentation *)v19 setHumanReadableUpdateVersion:v50];

          v33 = v88;
        }

        v51 = [MEMORY[0x277D64418] sharedDevice];
        if (![v51 isBootedOSSecureInternal])
        {
          goto LABEL_26;
        }

        v52 = [objc_alloc(MEMORY[0x277D64408]) initWithProjectName:v86];
        v53 = [v52 getBoolConfigForKey:v85];

        if ((v53 & 1) == 0)
        {
          v54 = objc_alloc(MEMORY[0x277CCACA8]);
          v55 = [(SUCoreDocumentation *)v19 humanReadableUpdateName];
          v56 = [v54 initWithFormat:@"%@ (%@)", v55, v84];
          [(SUCoreDocumentation *)v19 setHumanReadableUpdateName:v56];

          v57 = objc_alloc(MEMORY[0x277CCACA8]);
          v51 = [(SUCoreDocumentation *)v19 humanReadableUpdateVersion];
          v58 = [v57 initWithFormat:@"%@ (%@)", v51, v84];
          [(SUCoreDocumentation *)v19 setHumanReadableUpdateVersion:v58];

LABEL_26:
        }

        v18 = objc_alloc_init(SUCoreDocumentationData);

        v59 = [(SUCoreDocumentation *)v19 humanReadableUpdateName];
        [(SUCoreDocumentationData *)v18 setHumanReadableUpdateName:v59];

        v60 = [(SUCoreDocumentation *)v19 humanReadableUpdateTitle];
        [(SUCoreDocumentationData *)v18 setHumanReadableUpdateTitle:v60];

        v61 = [(SUCoreDocumentation *)v19 humanReadableUpdateVersion];
        [(SUCoreDocumentationData *)v18 setHumanReadableUpdateVersion:v61];

        v62 = [(SUCoreDocumentation *)v19 releaseNotes];
        [(SUCoreDocumentationData *)v18 setReadme:v62];

        v63 = [(SUCoreDocumentation *)v19 releaseNotesSummary];
        [(SUCoreDocumentationData *)v18 setReadmeSummary:v63];

        v64 = [(SUCoreDocumentation *)v19 licenseAgreement];
        [(SUCoreDocumentationData *)v18 setLicense:v64];

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

        v65 = [MEMORY[0x277D64460] sharedLogger];
        v66 = [v65 oslog];

        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v101 = v19;
          v102 = 2114;
          v103 = v18;
          _os_log_impl(&dword_23193C000, v66, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Returning documentation: %{public}@, documentation data: %{public}@", buf, 0x16u);
        }

        v15 = v84;
        v67 = v81;
        if (v82)
        {
          v68 = v19;
          *v82 = v19;
        }

        if (v83)
        {
          v69 = v18;
          *v83 = v18;
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

  v72 = [MEMORY[0x277D64460] sharedLogger];
  v73 = [v72 oslog];

  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    [SUCoreDocumentationDataManager queue_getDocumentation:v15 documentationData:v73 forInstalledUpdateType:? withError:?];
  }

  v74 = MEMORY[0x277CCA9B8];
  v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"No available stashed documentation path for provided build version (%@)", v15];
  v67 = [v74 buildAndLogCheckedSUCoreError:9004 underlying:0 description:v75];

  if (a6)
  {
    v76 = v67;
    v71 = 0;
    *a6 = v67;
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

- (BOOL)queue_cleanupNonInstalledDocumentationWithError:(id *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  if (a3)
  {
    *a3 = 0;
  }

  v42 = [MEMORY[0x277CCAA00] defaultManager];
  if (!v42)
  {
    v23 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9000 underlying:0 description:@"Failed to create NSFileManager for cleanup"];
    v13 = v23;
    if (!a3)
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
    *a3 = v13;
    goto LABEL_36;
  }

  v49 = 0;
  v5 = [(SUCoreDocumentationDataManager *)self installedBuildVersionsWithError:&v49];
  v6 = v49;
  v7 = v6;
  if (!v5 || v6)
  {
    v13 = [MEMORY[0x277CCA9B8] buildAndLogCheckedSUCoreError:9005 underlying:v6 description:@"Failed to create installedBuildVersions array for cleanup"];

    if (!a3)
    {
      v9 = 0;
      goto LABEL_29;
    }

    v25 = v13;
    v9 = 0;
    goto LABEL_26;
  }

  v8 = [(SUCoreDocumentationDataManager *)self documentationPath];
  v48 = 0;
  v9 = [v42 contentsOfDirectoryAtPath:v8 error:&v48];
  v10 = v48;

  if (!v9 || v10)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = MEMORY[0x277CCACA8];
    v28 = [(SUCoreDocumentationDataManager *)self documentationPath];
    v29 = [v27 stringWithFormat:@"Failed to read contents of %@ for cleanup: %@", v28, v10];
    v13 = [v26 buildAndLogCheckedSUCoreError:9003 underlying:v10 description:v29];

    if (a3)
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
    v41 = a3;
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
          v35 = v41;
          if (v41)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        v18 = v5;
        v19 = v9;
        v20 = v13;
        v43 = v13;
        v21 = [v42 removeItemAtPath:v17 error:&v43];
        v22 = v43;

        if ((v21 & 1) == 0)
        {
          v39 = MEMORY[0x277CCA9B8];
          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to remove directory %@: %@", v17, v22];
          v34 = [v39 buildAndLogCheckedSUCoreError:90007 underlying:v22 description:v40];

          v13 = v34;
          v35 = v41;
          v9 = v19;
          v5 = v18;
          if (!v41)
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

- (BOOL)queue_evictStashIfNecessary:(id *)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreDocumentationDataManager *)self stateQueue];
  dispatch_assert_queue_V2(v5);

  if (a3)
  {
    *a3 = 0;
  }

  v6 = [MEMORY[0x277CCAA00] defaultManager];
  if (!v6)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Failed to create NSFileManager";
    v24 = 9000;
LABEL_16:
    v25 = [v22 buildAndLogCheckedSUCoreError:v24 underlying:0 description:v23];
    v20 = v25;
    if (a3)
    {
      v26 = v25;
      v18 = 0;
      v19 = 0;
      v13 = 0;
LABEL_44:
      v21 = 0;
      *a3 = v20;
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
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(SUCoreDocumentationDataManager *)self documentationPath];
    *buf = 138543362;
    v65 = v10;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Preparing to evict stashed documentation assets at directory %{public}@", buf, 0xCu);
  }

  v11 = [(SUCoreDocumentationDataManager *)self documentationPath];

  if (!v11)
  {
    v22 = MEMORY[0x277CCA9B8];
    v23 = @"Missing documentation path when attempting to evict documentation stash";
    v24 = 9004;
    goto LABEL_16;
  }

  v12 = [(SUCoreDocumentationDataManager *)self documentationPath];
  v63 = 0;
  v13 = [v6 contentsOfDirectoryAtPath:v12 error:&v63];
  v14 = v63;

  if (!v13 || v14)
  {
    v27 = MEMORY[0x277CCA9B8];
    v28 = MEMORY[0x277CCACA8];
    v29 = [(SUCoreDocumentationDataManager *)self documentationPath];
    v30 = [v28 stringWithFormat:@"Failed to read contents of %@: %@", v29, v14];
    v20 = [v27 buildAndLogCheckedSUCoreError:9003 underlying:v14 description:v30];

    if (a3)
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
    v15 = [MEMORY[0x277D64460] sharedLogger];
    v16 = [v15 oslog];

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v13 count];
      *buf = 134218240;
      v65 = v17;
      v66 = 2048;
      v67 = 5;
      _os_log_impl(&dword_23193C000, v16, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Stashed assets (%lld) is below the minimum threshold (%lld), not evicting any assets", buf, 0x16u);
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

    if (a3)
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
    if (a3)
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
        if (!a3)
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v59 = v38;
      v39 = [*(v7 + 1120) sharedLogger];
      v40 = [v39 oslog];

      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v65 = v60;
        _os_log_impl(&dword_23193C000, v40, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Removing documentation asset at path %{public}@", buf, 0xCu);
      }

      v61 = v20;
      v58 = [v6 removeItemAtPath:v60 error:&v61];
      v41 = v61;

      if ((v58 & 1) == 0)
      {
        v53 = MEMORY[0x277CCA9B8];
        v54 = MEMORY[0x277CCACA8];
        v55 = [(SUCoreDocumentationDataManager *)self documentationPath];
        v56 = [v54 stringWithFormat:@"Failed to remove directory %@: %@", v55, v41];
        v51 = [v53 buildAndLogCheckedSUCoreError:90007 underlying:v41 description:v56];

        v20 = v51;
        v38 = v59;
        if (!a3)
        {
LABEL_51:

          v21 = 0;
          goto LABEL_52;
        }

LABEL_50:
        v52 = v51;
        *a3 = v51;
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
  if (a3)
  {
    v48 = v47;
    v21 = 0;
    *a3 = v47;
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

- (id)installedBuildVersionsWithError:(id *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v4)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"Failed to allocate installed build version array";
    v17 = 9000;
    goto LABEL_13;
  }

  v5 = [MEMORY[0x277D64418] sharedDevice];
  v6 = [v5 buildVersion];

  if (!v6)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = @"No OS build version found";
    v17 = 9006;
LABEL_13:
    v18 = [v15 buildAndLogCheckedSUCoreError:v17 underlying:0 description:v16];
    v14 = v18;
    if (a3)
    {
      v19 = v18;
      v13 = 0;
      *a3 = v14;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_16;
  }

  [v4 addObject:v6];
  v7 = [MEMORY[0x277D64418] sharedDevice];
  v8 = [v7 splatCryptex1BuildVersion];

  if (v8 && ([v8 isEqualToString:v6] & 1) == 0)
  {
    [v4 addObject:v8];
  }

  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v4 count];
    v12 = [v4 componentsJoinedByString:{@", "}];
    v22 = 134218242;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SUCoreDocumentationDataManager] Found %lld installed build versions: %{public}@", &v22, 0x16u);
  }

  v13 = v4;
  v14 = 0;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)stashedDataDirectoryForBuildVersion:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreDocumentationDataManager *)self documentationPath];

  if (v5)
  {
    if (v4)
    {
      v6 = [(SUCoreDocumentationDataManager *)self documentationPath];
      v5 = [v6 stringByAppendingPathComponent:v4];
    }

    else
    {
      v6 = [MEMORY[0x277D64428] sharedDiag];
      [v6 trackAnomaly:@"SUCoreDocumentationDataManager" forReason:@"Missing build version to construct documentation path" withResult:8116 withError:0];
      v5 = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x277D64428] sharedDiag];
    [v6 trackAnomaly:@"SUCoreDocumentationDataManager" forReason:@"Missing base path to construct documentation path" withResult:8116 withError:0];
  }

  return v5;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SUCoreDocumentationDataManager *)self documentationPath];
  v4 = [v2 stringWithFormat:@"SUCoreDocumentationDataManager(%@)", v3];

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