@interface PBFPosterModelStoreCoordinator
+ (NSDictionary)expectedURLResourceValuesForDirectories;
+ (NSDictionary)expectedURLResourceValuesForFiles;
+ (id)createNewStoreCoordinatorWithPath:(id)a3 error:(id *)a4;
+ (id)expectedSnapshotURLResourceValues;
- (BOOL)_accessQueue_configureFileSystemForNewContents:(id)a3 atPath:(id)a4 error:(id *)a5;
- (BOOL)commitStagedWithError:(id *)a3;
- (BOOL)hasKnownVersions;
- (BOOL)setProviderInfo:(id)a3 error:(id *)a4;
- (NSDictionary)providerInfo;
- (NSString)description;
- (NSString)role;
- (PBFPosterModelStoreCoordinator)initWithProvider:(id)a3 identifierURL:(id)a4 posterUUID:(id)a5 readonly:(BOOL)a6;
- (id)_accessQueue_allPosterPaths;
- (id)_accessQueue_buildIdentityForVersion:(unint64_t)a3 supplement:(unint64_t)a4;
- (id)_accessQueue_checkEnvironmentConsistency;
- (id)_accessQueue_contentsOfURLWithinStore:(id)a3 resourceKeys:(id)a4 standardizeURLs:(BOOL)a5;
- (id)_accessQueue_fetchIdentityForVersion:(unint64_t)a3 supplement:(unint64_t)a4 error:(id *)a5;
- (id)_accessQueue_identityOfLatestVersion;
- (id)_accessQueue_posterPathForIdentity:(id)a3;
- (id)_accessQueue_posterSnapshotCoordinatorForIdentity:(id)a3;
- (id)_accessQueue_providerInfoWithError:(id *)a3;
- (id)_accessQueue_setupNewSupplementWithOptions:(unint64_t)a3 error:(id *)a4;
- (id)_accessQueue_setupNewVersionWithOptions:(unint64_t)a3 contents:(id)a4 error:(id *)a5;
- (id)_posterPathForIdentity:(id)a3;
- (id)addNewSupplementWithError:(id *)a3;
- (id)addNewVersionWithContents:(id)a3 error:(id *)a4;
- (id)allPosterPaths;
- (id)checkEnvironmentConsistency;
- (id)ensureFileSystemIntegrity;
- (id)identityForVersion:(unint64_t)a3 supplement:(unint64_t)a4;
- (id)identityOfLatestVersion;
- (id)objectForKeyedSubscript:(id)a3;
- (id)pathForIdentity:(id)a3;
- (id)pathForVersion:(unint64_t)a3 supplement:(unint64_t)a4;
- (id)pathOfLatestVersion;
- (id)pbf_posterSnapshotCoordinatorForIdentity:(id)a3;
- (id)stageNewSupplementWithError:(id *)a3;
- (id)stageNewVersionWithContents:(id)a3 error:(id *)a4;
- (void)_accessQueue_applyResourceValuesForURLs:(id)a3 expectedResourceValues:(id)a4 synchronous:(BOOL)a5;
- (void)_accessQueue_checkEnvironmentConsistency;
- (void)_accessQueue_correctPermissionsForInternalDirectories:(id *)a3;
- (void)_accessQueue_enumerateSnapshotCoordinators:(id)a3;
- (void)_accessQueue_fixupResourceValuesWithinURL:(id)a3 synchronous:(BOOL)a4;
- (void)_accessQueue_invalidate;
- (void)_accessQueue_invalidateSnapshotCoordinatorForIdentity:(id)a3;
- (void)_accessQueue_removeSupplement:(unint64_t)a3 forVersion:(unint64_t)a4 error:(id *)a5;
- (void)_accessQueue_writeProviderInfo:(id)a3 error:(id *)a4;
- (void)abortStaged;
- (void)dealloc;
- (void)invalidate;
- (void)pbf_enumerateSnapshotCoordinators:(id)a3;
- (void)reapEverythingExceptLatestVersion;
- (void)reapSnapshots;
- (void)removeSupplement:(unint64_t)a3 forVersion:(unint64_t)a4 error:(id *)a5;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation PBFPosterModelStoreCoordinator

+ (id)createNewStoreCoordinatorWithPath:(id)a3 error:(id *)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 identity];
  v9 = [v8 provider];

  v10 = [v7 identity];
  v11 = [v10 posterUUID];

  v12 = [v7 descriptorIdentifier];
  v13 = [v7 identity];
  v14 = [v13 role];

  v15 = v9;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  v16 = v11;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v16)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  v17 = v12;
  if (v17)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
    }
  }

  if (PFPosterRoleIsValid())
  {
    v18 = v14;
  }

  else
  {
    v18 = PRPosterRoleLookupForExtensionBundleIdentifier(v15, v17);

    v19 = PBFLogPosterContents();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v94 = "+[PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:error:]";
      v95 = 2112;
      v96 = v18;
      _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "[Invalid Role][%{public}s] role was invalid, recovered: %@", buf, 0x16u);
    }
  }

  v20 = v18;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v20)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  if ((PFPosterRoleIsValid() & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:a2 error:?];
  }

  v68 = a2;
  v70 = a1;
  v21 = objc_opt_new();
  v22 = [v7 identifierURL];
  v23 = [MEMORY[0x277CBEBC0] pf_providerInfoFileURLForIdentifierURL:v22];
  v24 = [MEMORY[0x277CBEBC0] pf_versionsURLForIdentifierURL:v22];
  if (![v22 checkResourceIsReachableAndReturnError:0])
  {
    v76 = v16;
    v77 = v23;
    v65 = a4;
    v66 = v20;
    v67 = v17;
    v64 = v15;
    v73 = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__PBFPosterModelStoreCoordinator_createNewStoreCoordinatorWithPath_error___block_invoke;
    aBlock[3] = &unk_2782C58B0;
    v75 = v21;
    v29 = v21;
    v87 = v29;
    v30 = v22;
    v88 = v30;
    v31 = _Block_copy(aBlock);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v63 = v30;
    v89[0] = v30;
    v89[1] = v24;
    v74 = v24;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v33 = [v32 countByEnumeratingWithState:&v82 objects:v90 count:16];
    v72 = v31;
    if (v33)
    {
      v34 = v33;
      v27 = 0;
      v35 = *v83;
      while (2)
      {
        v36 = 0;
        v37 = v27;
        do
        {
          if (*v83 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v38 = *(*(&v82 + 1) + 8 * v36);
          v39 = PFFileProtectionNoneAttributes();
          v81 = v37;
          LOBYTE(v38) = [v29 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:v39 error:&v81];
          v27 = v81;

          if ((v38 & 1) == 0)
          {
            if (v65)
            {
              v40 = v27;
              *v65 = v27;
            }

            v31 = v72;
            v72[2](v72);
            a4 = 0;
            v7 = v73;
            v15 = v64;
            v20 = v66;
            v17 = v67;
            goto LABEL_66;
          }

          ++v36;
          v37 = v27;
        }

        while (v34 != v36);
        v34 = [v32 countByEnumeratingWithState:&v82 objects:v90 count:16];
        v31 = v72;
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v27 = 0;
    }

    v17 = v67;
    if (v67)
    {
      v41 = MEMORY[0x277CBEBC0];
      v42 = [v73 identity];
      v32 = [v41 pf_descriptorIdentifierURLForType:objc_msgSend(v42 identifierURL:{"type"), v63}];

      v20 = v66;
      if (![v67 length])
      {
        [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:v68 error:?];
      }

      v43 = [v67 dataUsingEncoding:4];
      v80 = v27;
      v44 = [v43 writeToURL:v32 options:268435457 error:&v80];
      v45 = v80;

      if ((v44 & 1) == 0)
      {
        if (v65)
        {
          v57 = v45;
          *v65 = v45;
        }

        v31[2](v31);

        a4 = 0;
        v27 = v45;
        v7 = v73;
        v15 = v64;
        goto LABEL_66;
      }
    }

    else
    {
      v45 = v27;
      v20 = v66;
    }

    v46 = MEMORY[0x277CBEBC0];
    v47 = [v73 identity];
    v32 = [v46 pf_roleIdentifierURLForType:objc_msgSend(v47 identifierURL:{"type"), v63}];

    v48 = [v20 dataUsingEncoding:4];
    if (![v48 length])
    {
      [PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:v68 error:?];
    }

    v79 = v45;
    v49 = [v48 writeToURL:v32 options:268435457 error:&v79];
    v27 = v79;

    if ((v49 & 1) == 0)
    {
      if (v65)
      {
        v55 = v27;
        *v65 = v27;
      }

      v56 = PBFLogPosterContents();
      v7 = v73;
      v15 = v64;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        +[PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:error:];
      }

      v31[2](v31);
      a4 = 0;
      goto LABEL_65;
    }

    [MEMORY[0x277CCAAB0] bs_secureDataFromObject:MEMORY[0x277CBEC10]];
    v69 = v78 = v27;
    v50 = [v69 writeToURL:v77 options:268435457 error:&v78];
    v51 = v78;

    if ((v50 & 1) == 0)
    {
      if (v65)
      {
        v58 = v51;
        *v65 = v51;
      }

      v59 = PBFLogPosterContents();
      v54 = v69;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        +[PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:error:];
      }

      v31 = v72;
      v72[2](v72);
      a4 = 0;
      v15 = v64;
      goto LABEL_64;
    }

    v15 = v64;
    v52 = [[v70 alloc] initWithProvider:v64 identifierURL:v63 posterUUID:v76];
    v71 = v52;
    if (v52)
    {
      v53 = [(objc_class *)v52 checkEnvironmentConsistency];

      v54 = v69;
      if (v53)
      {
        goto LABEL_57;
      }

      v53 = [(objc_class *)v71 ensureFileSystemIntegrity];
    }

    else
    {
      v53 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3329 userInfo:0];

      v54 = v69;
    }

    if (!v53)
    {
      a4 = v71;
LABEL_63:

      v51 = v53;
      v31 = v72;
LABEL_64:

      v27 = v51;
      v7 = v73;
LABEL_65:

LABEL_66:
      v28 = v87;
      goto LABEL_67;
    }

LABEL_57:
    if (v65)
    {
      v60 = v53;
      *v65 = v53;
    }

    v61 = PBFLogPosterContents();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      +[PBFPosterModelStoreCoordinator createNewStoreCoordinatorWithPath:error:];
    }

    (v72[2])();
    a4 = 0;
    goto LABEL_63;
  }

  if (!a4)
  {
    goto LABEL_68;
  }

  v74 = v24;
  v75 = v21;
  v76 = v16;
  v77 = v23;
  v25 = a4;
  v26 = MEMORY[0x277CCA9B8];
  v91[0] = @"posterUUID";
  v27 = [MEMORY[0x277CCAD78] pf_nonnullUUIDStringOrSentinel:v16];
  v91[1] = @"identifierURL";
  v92[0] = v27;
  v92[1] = v22;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  [v26 pbf_descriptorStoreCoordinatorErrorWithCode:-3332 userInfo:v28];
  *v25 = a4 = 0;
LABEL_67:

  v21 = v75;
  v16 = v76;
  v23 = v77;
  v24 = v74;
LABEL_68:

  return a4;
}

- (PBFPosterModelStoreCoordinator)initWithProvider:(id)a3 identifierURL:(id)a4 posterUUID:(id)a5 readonly:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25.receiver = self;
  v25.super_class = PBFPosterModelStoreCoordinator;
  v13 = [(PBFPosterModelStoreCoordinator *)&v25 init];
  if (v13 && (v14 = [v10 copy], extensionIdentifier = v13->_extensionIdentifier, v13->_extensionIdentifier = v14, extensionIdentifier, v16 = objc_msgSend(v12, "copy"), posterUUID = v13->_posterUUID, v13->_posterUUID = v16, posterUUID, objc_msgSend(v11, "URLByDeletingLastPathComponent"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "URLByDeletingLastPathComponent"), v19 = objc_claimAutoreleasedReturnValue(), providerURL = v13->_providerURL, v13->_providerURL = v19, providerURL, v18, v21 = objc_msgSend(v11, "copy"), identifierURL = v13->_identifierURL, v13->_identifierURL = v21, identifierURL, v13->_readonly = a6, !PBFPosterModelStoreCoordinatorSharedInit(v13)))
  {
    v23 = 0;
  }

  else
  {
    v23 = v13;
  }

  return v23;
}

- (id)checkEnvironmentConsistency
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__PBFPosterModelStoreCoordinator_checkEnvironmentConsistency__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__PBFPosterModelStoreCoordinator_checkEnvironmentConsistency__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_checkEnvironmentConsistency];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)ensureFileSystemIntegrity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PBFPosterModelStoreCoordinator_ensureFileSystemIntegrity__block_invoke;
  v5[3] = &unk_2782C72C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __59__PBFPosterModelStoreCoordinator_ensureFileSystemIntegrity__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessQueue_fixupResourceValuesWithinURL:0 synchronous:1];
  [*(a1 + 32) _accessQueue_enumerateSnapshotCoordinators:&__block_literal_global_4];
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 _accessQueue_correctPermissionsForInternalDirectories:&v5];
  v3 = v5;
  v4 = v5;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  }
}

+ (NSDictionary)expectedURLResourceValuesForFiles
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() shouldBeExcludedFromBackup];
  v3 = [objc_opt_class() expectedFileProtection];
  v7[0] = *MEMORY[0x277CBE878];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v7[1] = *MEMORY[0x277CBE7F8];
  v8[0] = v4;
  v8[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (NSDictionary)expectedURLResourceValuesForDirectories
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() expectedFileProtection];
  v5 = *MEMORY[0x277CBE7F8];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)expectedSnapshotURLResourceValues
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBE7F8];
  v6[0] = *MEMORY[0x277CBE878];
  v6[1] = v2;
  v3 = *MEMORY[0x277CBE800];
  v7[0] = MEMORY[0x277CBEC38];
  v7[1] = v3;
  v6[2] = *MEMORY[0x277CBE898];
  v7[2] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (void)dealloc
{
  v3 = self->_accessQueue_identityToPosterSnapshotCoordinator;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PBFPosterModelStoreCoordinator_dealloc__block_invoke;
  block[3] = &unk_2782C5888;
  v9 = v3;
  v5 = v3;
  v6 = accessQueue;
  dispatch_sync(v6, block);

  v7.receiver = self;
  v7.super_class = PBFPosterModelStoreCoordinator;
  [(PBFPosterModelStoreCoordinator *)&v7 dealloc];
}

uint64_t __41__PBFPosterModelStoreCoordinator_dealloc__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) objectForKey:*(*(&v9 + 1) + 8 * v6)];
        [v7 invalidate];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return [*(a1 + 32) removeAllObjects];
}

- (void)_accessQueue_correctPermissionsForInternalDirectories:(id *)a3
{
  v63 = *MEMORY[0x277D85DE8];
  if ([(NSURL *)self->_identifierURL checkResourceIsReachableAndReturnError:?])
  {
    v5 = [objc_opt_class() type];
    v6 = [MEMORY[0x277CBEBC0] pf_roleIdentifierURLForType:v5 identifierURL:self->_identifierURL];
    v7 = [MEMORY[0x277CBEBC0] pf_descriptorIdentifierURLForType:v5 identifierURL:self->_identifierURL];
    v8 = [objc_opt_class() expectedURLResourceValuesForFiles];
    v9 = [v8 objectForKey:*MEMORY[0x277CBE878]];

    v44 = v9;
    if (v9)
    {
      v49 = [v9 BOOLValue];
    }

    else
    {
      v49 = 0;
    }

    v10 = [objc_opt_class() expectedURLResourceValuesForFiles];
    v11 = [v10 objectForKey:*MEMORY[0x277CBE7F8]];

    v12 = *MEMORY[0x277CBE800];
    v43 = v11;
    if (v11)
    {
      v12 = v11;
    }

    v13 = v12;
    v14 = PBFLogPosterContents();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifierURL = self->_identifierURL;
      *buf = 138412290;
      *v60 = identifierURL;
      _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "[PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories]> securing file system permissions for URLs under: %@", buf, 0xCu);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v46 = self;
    v47 = v6;
    v61[0] = self->_identifierURL;
    v61[1] = v6;
    v45 = v7;
    v61[2] = v7;
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
    v16 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v56;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v56 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v55 + 1) + 8 * i);
          v54 = 0;
          v21 = [v20 pbf_setFileProtection:v13 error:&v54];
          v22 = v54;
          v23 = v22;
          if ((v21 & 1) == 0)
          {
            v24 = [v22 pf_isFileNotFoundError];
            v25 = PBFLogPosterContents();
            v26 = v25;
            if (v24)
            {
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v60 = v20;
                _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "[PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories]> skipping nonexistent file: %@", buf, 0xCu);
              }

              goto LABEL_39;
            }

            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543874;
              *v60 = v13;
              *&v60[8] = 2112;
              *&v60[10] = v20;
              *&v60[18] = 2114;
              *&v60[20] = v23;
              _os_log_error_impl(&dword_21B526000, v26, OS_LOG_TYPE_ERROR, "[PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories]> failed to correct file protection (%{public}@) for file %@: %{public}@", buf, 0x20u);
            }
          }

          v53 = 0;
          v27 = [v20 pbf_setPurgable:0 error:&v53];
          v26 = v53;
          if ((v27 & 1) == 0)
          {
            v28 = PBFLogPosterContents();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *v60 = v20;
              *&v60[8] = 2114;
              *&v60[10] = v26;
              _os_log_error_impl(&dword_21B526000, v28, OS_LOG_TYPE_ERROR, "[PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories]> failed to correct file purgable for file %@: %{public}@", buf, 0x16u);
            }
          }

          v52 = 0;
          v29 = [v20 pf_setExcludedFromBackup:v49 error:&v52];
          v30 = v52;
          if ((v29 & 1) == 0)
          {
            v31 = PBFLogPosterContents();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109634;
              *v60 = v49;
              *&v60[4] = 2112;
              *&v60[6] = v20;
              *&v60[14] = 2114;
              *&v60[16] = v30;
              _os_log_error_impl(&dword_21B526000, v31, OS_LOG_TYPE_ERROR, "[PBFPosterModelStoreCoordinator _correctPermissionsForInternalDirectories]> failed to correct exclude-from-backup (%{BOOL}u) for file %@: %{public}@", buf, 0x1Cu);
            }
          }

          if (a3 && v26 | v30 | v23)
          {
            if (v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = v23;
            }

            if (v26)
            {
              v33 = v26;
            }

            else
            {
              v33 = v32;
            }

            *a3 = v33;
          }

LABEL_39:
        }

        v17 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
      }

      while (v17);
    }

    v34 = [MEMORY[0x277CBEBC0] pf_posterPathScratchURLForInstanceURL:v46->_identifierURL];
    if (([v34 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v35 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = PFFileProtectionNoneAttributes();
      v51 = 0;
      v37 = [v35 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:v36 error:&v51];
      v38 = v51;

      if ((v37 & 1) == 0)
      {
        v39 = PBFLogPosterContents();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories:];
        }
      }
    }

    v50 = 0;
    v40 = [v34 pf_setExcludedFromBackup:1 error:&v50];
    v41 = v50;
    if ((v40 & 1) == 0)
    {
      v42 = PBFLogPosterContents();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_correctPermissionsForInternalDirectories:];
      }
    }
  }
}

- (id)_accessQueue_contentsOfURLWithinStore:(id)a3 resourceKeys:(id)a4 standardizeURLs:(BOOL)a5
{
  v6 = a5;
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v29 = a4;
  v30 = v9;
  if (([v9 isEqual:self->_identifierURL] & 1) != 0 || (objc_msgSend(v9, "URLByStandardizingPath"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "path"), v5 = objc_claimAutoreleasedReturnValue(), -[NSURL URLByStandardizingPath](self->_identifierURL, "URLByStandardizingPath"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "path"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v5, "hasPrefix:", v12), v12, v11, v5, v10, v13))
  {
    if ([v9 pbf_isDirectory])
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__1;
      v41 = __Block_byref_object_dispose__1;
      v42 = 0;
      fileManager = self->_fileManager;
      v15 = [v29 allObjects];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __101__PBFPosterModelStoreCoordinator__accessQueue_contentsOfURLWithinStore_resourceKeys_standardizeURLs___block_invoke;
      v35[3] = &unk_2782C72F0;
      v35[4] = &v37;
      v36 = v6;
      v16 = [(NSFileManager *)fileManager enumeratorAtURL:v9 includingPropertiesForKeys:v15 options:16 errorHandler:v35];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (!v18)
      {
        goto LABEL_18;
      }

      v19 = *v32;
      while (1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          v22 = v38[5];
          if (!v22)
          {
            v23 = objc_opt_new();
            v24 = v38[5];
            v38[5] = v23;

            v22 = v38[5];
            if (!v6)
            {
              goto LABEL_14;
            }

LABEL_13:
            v5 = [v21 URLByStandardizingPath];
            v21 = v5;
            goto LABEL_14;
          }

          if (v6)
          {
            goto LABEL_13;
          }

LABEL_14:
          [v22 addObject:v21];
          if (v6)
          {
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (!v18)
        {
LABEL_18:

          v25 = v38[5];
          _Block_object_dispose(&v37, 8);

          goto LABEL_21;
        }
      }
    }

    v26 = [v29 allObjects];
    v27 = [v9 resourceValuesForKeys:v26 error:0];

    v25 = [MEMORY[0x277CBEB70] orderedSetWithObject:v9];
  }

  else
  {
    v25 = 0;
  }

LABEL_21:

  return v25;
}

uint64_t __101__PBFPosterModelStoreCoordinator__accessQueue_contentsOfURLWithinStore_resourceKeys_standardizeURLs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  if (!v7)
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v7 = *(*(*(a1 + 32) + 8) + 40);
  }

  if (*(a1 + 40))
  {
    v11 = [v5 URLByStandardizingPath];
    [v7 addObject:v11];
  }

  else
  {
    [v7 addObject:v5];
  }

  return 0;
}

- (void)invalidate
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__PBFPosterModelStoreCoordinator_invalidate__block_invoke;
  block[3] = &unk_2782C5888;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (NSString)role
{
  v13 = *MEMORY[0x277D85DE8];
  if (PFPosterRoleIsValid())
  {
    v3 = self->_role;
  }

  else
  {
    v3 = PRPosterRoleLookupForExtensionBundleIdentifier(self->_extensionIdentifier, self->_descriptorIdentifier);
    v4 = PBFLogPosterContents();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      role = self->_role;
      v7 = 136315650;
      v8 = "[PBFPosterModelStoreCoordinator role]";
      v9 = 2112;
      v10 = role;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "%s> invalid role: %@ – returning: %@", &v7, 0x20u);
    }
  }

  return v3;
}

- (id)identityOfLatestVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__PBFPosterModelStoreCoordinator_identityOfLatestVersion__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __57__PBFPosterModelStoreCoordinator_identityOfLatestVersion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_identityOfLatestVersion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)identityForVersion:(unint64_t)a3 supplement:(unint64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__1;
  v12 = __Block_byref_object_dispose__1;
  v13 = 0;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PBFPosterModelStoreCoordinator_identityForVersion_supplement___block_invoke;
  v7[3] = &unk_2782C7318;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  v7[7] = a4;
  dispatch_sync(accessQueue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __64__PBFPosterModelStoreCoordinator_identityForVersion_supplement___block_invoke(void *a1)
{
  v2 = *(a1[4] + 96);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
  v4 = [v2 objectForKey:v3];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
  v6 = [v4 objectForKey:v5];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[5] + 8) + 40))
  {
    v9 = *(a1[4] + 104);
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    v10 = [v9 objectForKey:v15];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[7]];
    v12 = [v10 objectForKey:v11];
    v13 = *(a1[5] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (id)pathForVersion:(unint64_t)a3 supplement:(unint64_t)a4
{
  v5 = [(PBFPosterModelStoreCoordinator *)self identityForVersion:a3 supplement:a4];
  if (v5)
  {
    v6 = [(PBFPosterModelStoreCoordinator *)self pathForIdentity:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathForIdentity:(id)a3
{
  if (a3)
  {
    v4 = [(PBFPosterModelStoreCoordinator *)self _posterPathForIdentity:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)allPosterPaths
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__PBFPosterModelStoreCoordinator_allPosterPaths__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __48__PBFPosterModelStoreCoordinator_allPosterPaths__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_allPosterPaths];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSDictionary)providerInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__PBFPosterModelStoreCoordinator_providerInfo__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __46__PBFPosterModelStoreCoordinator_providerInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_providerInfoWithError:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = [(PBFPosterModelStoreCoordinator *)self providerInfo];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v9;
  v19 = v9;
  if (v9)
  {
    v11 = [v9 conformsToProtocol:&unk_282D60B50];
    v10 = v19;
    if ((v11 & 1) == 0)
    {
      [PBFPosterModelStoreCoordinator setObject:a2 forKeyedSubscript:?];
    }
  }

  v12 = v8;
  if (!v12)
  {
    [PBFPosterModelStoreCoordinator setObject:a2 forKeyedSubscript:?];
  }

  v13 = v12;
  if (([v12 conformsToProtocol:&unk_282D35BC8] & 1) == 0)
  {
    [PBFPosterModelStoreCoordinator setObject:a2 forKeyedSubscript:?];
  }

  v14 = [(PBFPosterModelStoreCoordinator *)self providerInfo];
  v15 = [v14 mutableCopy];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;

  if (v19)
  {
    [v18 setObject:v19 forKeyedSubscript:v13];
  }

  else
  {
    [v18 removeObjectForKey:v13];
  }

  [(PBFPosterModelStoreCoordinator *)self setProviderInfo:v18];
}

- (BOOL)setProviderInfo:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_readonly)
  {
    v8 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__PBFPosterModelStoreCoordinator_setProviderInfo_error___block_invoke;
    block[3] = &unk_2782C7340;
    block[4] = self;
    v14 = v6;
    v15 = &v16;
    dispatch_sync(accessQueue, block);
    v10 = v17;
    if (a4)
    {
      v11 = v17[5];
      if (v11)
      {
        *a4 = v11;
        v10 = v17;
      }
    }

    v8 = v10[5] == 0;

    _Block_object_dispose(&v16, 8);
  }

  return v8;
}

void __56__PBFPosterModelStoreCoordinator_setProviderInfo_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(a1[6] + 8);
  obj = 0;
  [v2 _accessQueue_writeProviderInfo:v1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
}

- (id)_posterPathForIdentity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__PBFPosterModelStoreCoordinator__posterPathForIdentity___block_invoke;
  block[3] = &unk_2782C7368;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __57__PBFPosterModelStoreCoordinator__posterPathForIdentity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_posterPathForIdentity:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_accessQueue_posterPathForIdentity:(id)a3
{
  v4 = a3;
  v5 = self->_providerURL;
  accessQueue_stagedPosterIdentityBySupplementByVersion = self->_accessQueue_stagedPosterIdentityBySupplementByVersion;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "version")}];
  v8 = [(NSMutableDictionary *)accessQueue_stagedPosterIdentityBySupplementByVersion objectForKey:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v4, "supplement")}];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = __providerURLForOptions(1, self->_providerURL, v4);

    v5 = v11;
  }

  v12 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v5 identity:v4];

  return v12;
}

- (id)pathOfLatestVersion
{
  v3 = [(PBFPosterModelStoreCoordinator *)self identityOfLatestVersion];
  v4 = [(PBFPosterModelStoreCoordinator *)self pathForIdentity:v3];

  return v4;
}

- (BOOL)hasKnownVersions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__PBFPosterModelStoreCoordinator_hasKnownVersions__block_invoke;
  v5[3] = &unk_2782C7280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __50__PBFPosterModelStoreCoordinator_hasKnownVersions__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 96) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (void)reapEverythingExceptLatestVersion
{
  if (!self->_readonly)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke;
    block[3] = &unk_2782C5888;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

void __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke(uint64_t a1)
{
  v2 = __knownVersions(*(*(a1 + 32) + 96));
  v3 = __knownVersions(*(*(a1 + 32) + 104));
  if ([v3 count])
  {
    [v2 addIndexes:v3];
  }

  if ([v2 count])
  {
    v4 = [v2 lastIndex];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke_2;
    v5[3] = &unk_2782C73B8;
    v5[4] = *(a1 + 32);
    v5[5] = v4;
    [v2 enumerateIndexesUsingBlock:v5];
  }
}

void __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 32) + 96);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKey:v5];
  v7 = __knownVersions(v6);

  [v7 count];
  if ([v7 count])
  {
    v8 = [v7 lastIndex];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke_3;
    v10[3] = &unk_2782C7390;
    v9 = *(a1 + 32);
    v10[6] = *(a1 + 40);
    v10[7] = v8;
    v10[4] = v9;
    v10[5] = a2;
    [v7 enumerateIndexesUsingBlock:v10];
  }
}

uint64_t __67__PBFPosterModelStoreCoordinator_reapEverythingExceptLatestVersion__block_invoke_3(uint64_t result, uint64_t a2)
{
  if (*(result + 40) != *(result + 48) || *(result + 56) != a2)
  {
    return [*(result + 32) _accessQueue_removeSupplement:a2 forVersion:? error:?];
  }

  return result;
}

- (void)reapSnapshots
{
  if (!self->_readonly)
  {
    [(PBFPosterModelStoreCoordinator *)self pbf_enumerateSnapshotCoordinators:&__block_literal_global_87];
  }
}

- (id)addNewVersionWithContents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_readonly)
  {
    v8 = 0;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    accessQueue = self->_accessQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__PBFPosterModelStoreCoordinator_addNewVersionWithContents_error___block_invoke;
    v13[3] = &unk_2782C73E0;
    v15 = &v23;
    v13[4] = self;
    v14 = v6;
    v16 = &v17;
    dispatch_sync(accessQueue, v13);
    v10 = v18[5];
    if (v10)
    {
      if (a4)
      {
        *a4 = v10;
      }

      v11 = PBFLogPosterContents();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator addNewVersionWithContents:error:];
      }
    }

    v8 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v8;
}

void __66__PBFPosterModelStoreCoordinator_addNewVersionWithContents_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 _accessQueue_setupNewVersionWithOptions:0 contents:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)addNewSupplementWithError:(id *)a3
{
  if (self->_readonly)
  {
    v3 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__PBFPosterModelStoreCoordinator_addNewSupplementWithError___block_invoke;
    block[3] = &unk_2782C7408;
    block[4] = self;
    block[5] = &v16;
    block[6] = &v10;
    dispatch_sync(accessQueue, block);
    v6 = v11[5];
    if (v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      v7 = PBFLogPosterContents();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator addNewSupplementWithError:];
      }
    }

    v3 = v17[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  return v3;
}

void __60__PBFPosterModelStoreCoordinator_addNewSupplementWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = 0;
  v4 = [v2 _accessQueue_setupNewSupplementWithOptions:0 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)stageNewVersionWithContents:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_readonly)
  {
    v8 = 0;
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__1;
    v27 = __Block_byref_object_dispose__1;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__1;
    v21 = __Block_byref_object_dispose__1;
    v22 = 0;
    accessQueue = self->_accessQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__PBFPosterModelStoreCoordinator_stageNewVersionWithContents_error___block_invoke;
    v13[3] = &unk_2782C73E0;
    v15 = &v23;
    v13[4] = self;
    v14 = v6;
    v16 = &v17;
    dispatch_sync(accessQueue, v13);
    v10 = v18[5];
    if (v10)
    {
      if (a4)
      {
        *a4 = v10;
      }

      v11 = PBFLogPosterContents();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator stageNewVersionWithContents:error:];
      }
    }

    v8 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v8;
}

void __68__PBFPosterModelStoreCoordinator_stageNewVersionWithContents_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 _accessQueue_setupNewVersionWithOptions:1 contents:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)stageNewSupplementWithError:(id *)a3
{
  if (self->_readonly)
  {
    v3 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__PBFPosterModelStoreCoordinator_stageNewSupplementWithError___block_invoke;
    block[3] = &unk_2782C7408;
    block[4] = self;
    block[5] = &v16;
    block[6] = &v10;
    dispatch_sync(accessQueue, block);
    v6 = v11[5];
    if (v6)
    {
      if (a3)
      {
        *a3 = v6;
      }

      v7 = PBFLogPosterContents();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator stageNewSupplementWithError:];
      }
    }

    v3 = v17[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  return v3;
}

void __62__PBFPosterModelStoreCoordinator_stageNewSupplementWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = 0;
  v4 = [v2 _accessQueue_setupNewSupplementWithOptions:1 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)abortStaged
{
  if (!self->_readonly)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PBFPosterModelStoreCoordinator_abortStaged__block_invoke;
    block[3] = &unk_2782C5888;
    block[4] = self;
    dispatch_sync(accessQueue, block);
  }
}

uint64_t __45__PBFPosterModelStoreCoordinator_abortStaged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__PBFPosterModelStoreCoordinator_abortStaged__block_invoke_2;
  v5[3] = &unk_2782C7430;
  v5[4] = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
  return [*(*(a1 + 32) + 104) removeAllObjects];
}

void __45__PBFPosterModelStoreCoordinator_abortStaged__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 keyEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) _accessQueue_removeSupplement:objc_msgSend(*(*(&v11 + 1) + 8 * v10++) forVersion:"unsignedLongLongValue") error:{objc_msgSend(v5, "unsignedLongLongValue"), 0}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)commitStagedWithError:(id *)a3
{
  if (self->_readonly)
  {
    v3 = 0;
  }

  else
  {
    v6 = self->_fileManager;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__1;
    v19 = __Block_byref_object_dispose__1;
    v20 = 0;
    accessQueue = self->_accessQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke;
    v11[3] = &unk_2782C7480;
    v11[4] = self;
    v8 = v6;
    v12 = v8;
    v13 = &v15;
    v14 = &v21;
    dispatch_sync(accessQueue, v11);
    if (a3)
    {
      v9 = v16[5];
      if (v9)
      {
        *a3 = v9;
      }
    }

    v3 = *(v22 + 24);

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  return v3 & 1;
}

void __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke_2;
  v25[3] = &unk_2782C7458;
  v25[4] = v4;
  v6 = v2;
  v26 = v6;
  v7 = v3;
  v27 = v7;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v28 = v8;
  v29 = v9;
  [v5 enumerateKeysAndObjectsUsingBlock:v25];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = v7;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 104);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke_3;
    v24[3] = &unk_2782C7430;
    v24[4] = v11;
    [v12 enumerateKeysAndObjectsUsingBlock:v24];
    v10 = v6;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        v19 = [MEMORY[0x277CCAA00] defaultManager];
        [v19 removeItemAtURL:v18 error:0];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v15);
  }

  [*(*(a1 + 32) + 104) removeAllObjects];
}

void __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = a3;
  obj = [v29 keyEnumerator];
  v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v28)
  {
    v27 = *v36;
    while (2)
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [v29 objectForKey:*(*(&v35 + 1) + 8 * i)];
        v7 = __providerURLForOptions(1, *(*(a1 + 32) + 48), v6);
        v8 = __providerURLForOptions(0, *(*(a1 + 32) + 48), v6);
        v9 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v7 identity:v6];
        v31 = v8;
        v10 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v8 identity:v6];
        v11 = [v9 supplementURL];
        v32 = [v10 supplementURL];
        v12 = [v9 instanceURL];
        v13 = [v10 instanceURL];
        [*(a1 + 40) addObject:v11];
        [*(a1 + 48) addObject:v11];
        [*(a1 + 40) addObject:v7];
        [*(a1 + 48) addObject:v7];
        [*(a1 + 40) addObject:v12];
        [*(a1 + 48) addObject:v12];
        v30 = v13;
        LOBYTE(v13) = [v13 checkResourceIsReachableAndReturnError:0];
        v14 = [v12 checkResourceIsReachableAndReturnError:0];
        if ((v13 & 1) == 0 && v14 && ([*(a1 + 48) addObject:v31], v15 = *(a1 + 56), v16 = *(*(a1 + 64) + 8), v34 = *(v16 + 40), v17 = objc_msgSend(v15, "moveItemAtURL:toURL:error:", v12, v30, &v34), objc_storeStrong((v16 + 40), v34), !v17) || (v18 = objc_msgSend(v32, "checkResourceIsReachableAndReturnError:", 0), v19 = objc_msgSend(v11, "checkResourceIsReachableAndReturnError:", 0), (v18 & 1) == 0) && v19 && (objc_msgSend(*(a1 + 48), "addObject:", v32), v20 = *(a1 + 56), v21 = *(*(a1 + 64) + 8), v33 = *(v21 + 40), v22 = objc_msgSend(v20, "moveItemAtURL:toURL:error:", v11, v32, &v33), objc_storeStrong((v21 + 40), v33), !v22))
        {
          *a4 = 1;

          goto LABEL_22;
        }

        v23 = [MEMORY[0x277D3EDE8] loadFocusConfigurationForPath:v9 error:0];
        if (v23)
        {
          [MEMORY[0x277D3EDE8] storeFocusConfigurationForPath:v10 focusConfiguration:v23 error:0];
        }

        else
        {
          [MEMORY[0x277D3EDE8] removeFocusConfigurationForPath:v10 error:0];
        }

        v24 = [MEMORY[0x277D3EDE8] loadSuggestionMetadataForPath:v9 error:0];
        if (v24)
        {
          [MEMORY[0x277D3EDE8] storeSuggestionMetadataForPath:v10 suggestionMetadata:v24 error:0];
        }

        else
        {
          [MEMORY[0x277D3EDE8] removeSuggestionMetadataForPath:v10 error:0];
        }
      }

      v28 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:
}

void __56__PBFPosterModelStoreCoordinator_commitStagedWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(*(a1 + 32) + 96);
  v6 = a3;
  v7 = [v5 objectForKey:v10];
  v8 = v7;
  if (v7)
  {
    [v7 addEntriesFromDictionary:v6];
  }

  else
  {
    v9 = [v6 mutableCopy];

    [*(*(a1 + 32) + 96) setObject:v9 forKeyedSubscript:v10];
    v6 = v9;
  }
}

- (void)removeSupplement:(unint64_t)a3 forVersion:(unint64_t)a4 error:(id *)a5
{
  if (!self->_readonly)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__1;
    v14 = __Block_byref_object_dispose__1;
    v15 = 0;
    accessQueue = self->_accessQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__PBFPosterModelStoreCoordinator_removeSupplement_forVersion_error___block_invoke;
    v9[3] = &unk_2782C74A8;
    v9[6] = a3;
    v9[7] = a4;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(accessQueue, v9);
    v7 = v11[5];
    if (v7)
    {
      if (a5)
      {
        *a5 = v7;
      }

      v8 = PBFLogPosterContents();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator removeSupplement:forVersion:error:];
      }
    }

    _Block_object_dispose(&v10, 8);
  }
}

void __68__PBFPosterModelStoreCoordinator_removeSupplement_forVersion_error___block_invoke(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = 0;
  [v3 _accessQueue_removeSupplement:v1 forVersion:v2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
}

- (id)pbf_posterSnapshotCoordinatorForIdentity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__PBFPosterModelStoreCoordinator_pbf_posterSnapshotCoordinatorForIdentity___block_invoke;
  block[3] = &unk_2782C7368;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __75__PBFPosterModelStoreCoordinator_pbf_posterSnapshotCoordinatorForIdentity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_posterSnapshotCoordinatorForIdentity:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)pbf_enumerateSnapshotCoordinators:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__PBFPosterModelStoreCoordinator_pbf_enumerateSnapshotCoordinators___block_invoke;
  v7[3] = &unk_2782C74D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)_accessQueue_enumerateSnapshotCoordinators:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_allPosterPaths];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v12 + 1) + 8 * v9) identity];
      v11 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_posterSnapshotCoordinatorForIdentity:v10];
      v4[2](v4, v11, v10, &v16);

      LOBYTE(v11) = v16;
      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)_accessQueue_posterSnapshotCoordinatorForIdentity:(id)a3
{
  v4 = a3;
  accessQueue_identityToPosterSnapshotCoordinator = self->_accessQueue_identityToPosterSnapshotCoordinator;
  if (!accessQueue_identityToPosterSnapshotCoordinator)
  {
    v6 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    v7 = self->_accessQueue_identityToPosterSnapshotCoordinator;
    self->_accessQueue_identityToPosterSnapshotCoordinator = v6;

    accessQueue_identityToPosterSnapshotCoordinator = self->_accessQueue_identityToPosterSnapshotCoordinator;
  }

  v8 = [(NSMapTable *)accessQueue_identityToPosterSnapshotCoordinator objectForKey:v4];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v10 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_posterPathForIdentity:v4];
    if (v10)
    {
      v11 = [[PBFPosterSnapshotCoordinator alloc] initWithPath:v10];
      [(NSMapTable *)self->_accessQueue_identityToPosterSnapshotCoordinator setObject:v11 forKey:v4];
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_accessQueue_checkEnvironmentConsistency
{
  v174 = *MEMORY[0x277D85DE8];
  v4 = PBFLogPosterContents();
  v5 = os_signpost_id_generate(v4);

  v6 = PBFLogPosterContents();
  v7 = v6;
  spid = v5;
  v118 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    extensionIdentifier = self->_extensionIdentifier;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543618;
    v159 = extensionIdentifier;
    v160 = 2114;
    v161 = v10;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v7, OS_SIGNPOST_INTERVAL_BEGIN, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@", buf, 0x16u);
  }

  v11 = self->_providerInfoURL;
  v12 = self->_containerVersionsURL;
  v13 = self;
  v14 = self->_identifierURL;
  v15 = v13->_providerURL;
  v16 = v13->_posterUUID;
  v17 = v13->_extensionIdentifier;
  v137 = v13;
  v135 = v13->_fileManager;
  v18 = v15;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v18)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v117 = v18;

  v19 = v11;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v19)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v119 = v19;

  v20 = v12;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v20)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v120 = v20;

  v21 = v14;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v21)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v22 = v137;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v121 = v21;

  v23 = v16;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v23)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v132 = v23;

  v24 = v17;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v24)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PBFPosterModelStoreCoordinator *)a2 _accessQueue_checkEnvironmentConsistency];
  }

  v131 = v24;

  v157 = 0;
  v25 = [(NSURL *)v121 checkResourceIsReachableAndReturnError:&v157];
  v26 = v157;
  v27 = v26;
  if (!v25)
  {
    v38 = PBFLogPosterContents();
    v39 = v38;
    if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      v40 = v137->_extensionIdentifier;
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      *buf = 138543874;
      v159 = v40;
      v160 = 2114;
      v161 = v42;
      v162 = 2114;
      v163 = v27;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v39, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
    }

    v43 = v27;
    goto LABEL_35;
  }

  v156 = v26;
  v28 = [(NSURL *)v120 checkResourceIsReachableAndReturnError:&v156];
  v29 = v156;

  if (!v28)
  {
    v44 = PBFLogPosterContents();
    v45 = v44;
    if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
    {
      v46 = v137->_extensionIdentifier;
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      *buf = 138543874;
      v159 = v46;
      v160 = 2114;
      v161 = v48;
      v162 = 2114;
      v163 = v29;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v45, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
    }

    v43 = v29;
LABEL_35:
    v49 = v43;
    v50 = v43;
    goto LABEL_103;
  }

  if ([(NSURL *)v119 checkResourceIsReachableAndReturnError:0])
  {
    v155 = 0;
    v30 = [(PBFPosterModelStoreCoordinator *)v137 _accessQueue_providerInfoWithError:&v155];
    v31 = v155;
    if (v31)
    {
      v32 = PBFLogPosterContents();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency];
      }

      v33 = PBFLogPosterContents();
      v34 = v33;
      if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        v35 = v137->_extensionIdentifier;
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138543874;
        v159 = v35;
        v22 = v137;
        v160 = 2114;
        v161 = v37;
        v162 = 2114;
        v163 = v31;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v34, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    [(PBFPosterModelStoreCoordinator *)v137 _accessQueue_writeProviderInfo:MEMORY[0x277CBEC10] error:0];
  }

  v154 = v29;
  v115 = [(NSFileManager *)v135 contentsOfDirectoryAtURL:v120 includingPropertiesForKeys:0 options:1 error:&v154];
  v51 = v154;

  v113 = v51;
  if (!v51)
  {
    if (_accessQueue_checkEnvironmentConsistency___once != -1)
    {
      [PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency];
    }

    v122 = [MEMORY[0x277CCAB58] indexSet];
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    obj = v115;
    v57 = [obj countByEnumeratingWithState:&v150 objects:v173 count:16];
    if (!v57)
    {
LABEL_98:

      v106 = __knownVersions(v22->_accessQueue_posterIdentityBySupplementByVersion);
      [v106 removeIndexes:v122];
      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = 3221225472;
      v138[2] = __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke_101;
      v138[3] = &unk_2782C74F8;
      v138[4] = v22;
      [v106 enumerateIndexesUsingBlock:v138];
      [(NSMutableDictionary *)v22->_accessQueue_stagedPosterIdentityBySupplementByVersion removeAllObjects];
      v107 = PBFLogPosterContents();
      v108 = v107;
      if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
      {
        v109 = v22->_extensionIdentifier;
        v110 = objc_opt_class();
        v111 = NSStringFromClass(v110);
        *buf = 138543874;
        v159 = v109;
        v160 = 2114;
        v161 = v111;
        v162 = 2114;
        v163 = 0;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v108, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
      }

      v50 = 0;
      v49 = v114;
      goto LABEL_102;
    }

    v58 = v57;
    v130 = *v151;
    while (1)
    {
      v59 = 0;
      v123 = v58;
      do
      {
        if (*v151 != v130)
        {
          objc_enumerationMutation(obj);
        }

        v60 = *(*(&v150 + 1) + 8 * v59);
        v61 = [v60 lastPathComponent];
        v62 = [_accessQueue_checkEnvironmentConsistency_numberFormatter numberFromString:v61];
        v63 = [v62 unsignedLongLongValue];

        v64 = _accessQueue_checkEnvironmentConsistency_numberFormatter;
        v65 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
        v66 = [v64 stringFromNumber:v65];
        v67 = [v61 isEqualToString:v66];

        if (!v67)
        {
          goto LABEL_88;
        }

        v68 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementContainerURLForInstanceURL:v60];
        if (([v68 checkResourceIsReachableAndReturnError:0] & 1) == 0)
        {
          v69 = PBFLogPosterContents();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v159 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
            v160 = 2112;
            v161 = v131;
            v162 = 2112;
            v163 = v132;
            v164 = 2048;
            v165 = v63;
            _os_log_impl(&dword_21B526000, v69, OS_LOG_TYPE_DEFAULT, "%s> creating migration supplement for provider=%@ uuid=%@ version=%llu", buf, 0x2Au);
          }

          v70 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v60 supplement:0];
          v71 = PFFileProtectionNoneAttributes();
          v149 = 0;
          [(NSFileManager *)v135 createDirectoryAtURL:v70 withIntermediateDirectories:1 attributes:v71 error:&v149];
          v72 = v149;

          if (v72)
          {
            v73 = PBFLogPosterContents();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v159 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
              v160 = 2112;
              v161 = v72;
              _os_log_error_impl(&dword_21B526000, v73, OS_LOG_TYPE_ERROR, "%s> error creating migration supplement: %@", buf, 0x16u);
            }
          }
        }

        v128 = v61;
        v148 = 0;
        v74 = [(NSFileManager *)v135 contentsOfDirectoryAtURL:v68 includingPropertiesForKeys:0 options:1 error:&v148];
        v75 = v148;
        if (v75)
        {
          v76 = PBFLogPosterContents();
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v159 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
            v160 = 2112;
            v161 = v75;
            _os_log_error_impl(&dword_21B526000, v76, OS_LOG_TYPE_ERROR, "%s> error fetching supplements from filesystem: %@", buf, 0x16u);
          }
        }

        v125 = v75;
        v126 = v68;
        v136 = v63;
        v127 = v60;
        v129 = v59;
        v134 = [MEMORY[0x277CCAB58] indexSet];
        v144 = 0u;
        v145 = 0u;
        v146 = 0u;
        v147 = 0u;
        v77 = v74;
        v78 = [v77 countByEnumeratingWithState:&v144 objects:v172 count:16];
        if (v78)
        {
          v79 = v78;
          v80 = *v145;
          do
          {
            for (i = 0; i != v79; ++i)
            {
              if (*v145 != v80)
              {
                objc_enumerationMutation(v77);
              }

              v82 = *(*(&v144 + 1) + 8 * i);
              v83 = [v82 lastPathComponent];
              v84 = [_accessQueue_checkEnvironmentConsistency_numberFormatter numberFromString:v83];
              v85 = [v84 unsignedLongLongValue];

              v86 = _accessQueue_checkEnvironmentConsistency_numberFormatter;
              v87 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v85];
              v88 = [v86 stringFromNumber:v87];
              v89 = [v83 isEqualToString:v88];

              if (v89)
              {
                v143 = 0;
                v22 = v137;
                v90 = [(PBFPosterModelStoreCoordinator *)v137 _accessQueue_fetchIdentityForVersion:v136 supplement:v85 error:&v143];
                v91 = v143;
                if (v90)
                {
                  v92 = v91 == 0;
                }

                else
                {
                  v92 = 0;
                }

                if (v92)
                {
                  [v134 addIndex:v85];
                  goto LABEL_83;
                }

                v93 = v91;
                v94 = PBFLogPosterContents();
                if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                {
                  [objc_opt_class() type];
                  v133 = NSStringFromPFServerPosterType();
                  *buf = 136316674;
                  v159 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
                  v160 = 2112;
                  v161 = v131;
                  v162 = 2112;
                  v163 = v132;
                  v164 = 2112;
                  v165 = v133;
                  v166 = 2048;
                  v167 = v136;
                  v168 = 2048;
                  v169 = v85;
                  v170 = 2112;
                  v171 = v93;
                  _os_log_error_impl(&dword_21B526000, v94, OS_LOG_TYPE_ERROR, "%s> error loading supplement from filesystem: provider=%@ uuid=%@ type=%@ version=%llu supplement=%llu : error=%@", buf, 0x48u);
                }
              }

              v22 = v137;
              if (v137->_readonly)
              {
                goto LABEL_84;
              }

              v95 = PBFLogReaper();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v159 = v82;
                _os_log_impl(&dword_21B526000, v95, OS_LOG_TYPE_DEFAULT, "REAPING %{public}@", buf, 0xCu);
              }

              v142 = 0;
              [(NSFileManager *)v135 removeItemAtURL:v82 error:&v142];
              v90 = v142;
              if (v90)
              {
                v96 = PBFLogPosterContents();
                if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  v159 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
                  v160 = 2112;
                  v161 = v90;
                  _os_log_error_impl(&dword_21B526000, v96, OS_LOG_TYPE_ERROR, "%s> error removing invalid supplement: %@", buf, 0x16u);
                }
              }

LABEL_83:

LABEL_84:
            }

            v79 = [v77 countByEnumeratingWithState:&v144 objects:v172 count:16];
          }

          while (v79);
        }

        v97 = [v134 count];
        accessQueue_posterIdentityBySupplementByVersion = v22->_accessQueue_posterIdentityBySupplementByVersion;
        v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v136];
        v100 = [(NSMutableDictionary *)accessQueue_posterIdentityBySupplementByVersion objectForKey:v99];

        v101 = __knownVersions(v100);
        [v101 removeIndexes:v134];
        v140[0] = MEMORY[0x277D85DD0];
        v140[1] = 3221225472;
        v140[2] = __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke_100;
        v140[3] = &unk_2782C74F8;
        v141 = v100;
        v102 = v100;
        [v101 enumerateIndexesUsingBlock:v140];

        v58 = v123;
        v61 = v128;
        v59 = v129;
        v60 = v127;
        if (v97)
        {
          [v122 addIndex:v136];
        }

        else
        {
LABEL_88:
          if (!v22->_readonly)
          {
            v103 = PBFLogReaper();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v159 = v60;
              _os_log_impl(&dword_21B526000, v103, OS_LOG_TYPE_DEFAULT, "REAPING instance %{public}@", buf, 0xCu);
            }

            v139 = 0;
            [(NSFileManager *)v135 removeItemAtURL:v60 error:&v139];
            v104 = v139;
            if (v104)
            {
              v105 = PBFLogPosterContents();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v159 = "[PBFPosterModelStoreCoordinator _accessQueue_checkEnvironmentConsistency]";
                v160 = 2112;
                v161 = v104;
                _os_log_error_impl(&dword_21B526000, v105, OS_LOG_TYPE_ERROR, "%s> error removing invalid version: %@", buf, 0x16u);
              }
            }
          }
        }

        ++v59;
      }

      while (v59 != v58);
      v58 = [obj countByEnumeratingWithState:&v150 objects:v173 count:16];
      if (!v58)
      {
        goto LABEL_98;
      }
    }
  }

  v52 = PBFLogPosterContents();
  v53 = v52;
  if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
  {
    v54 = v22->_extensionIdentifier;
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    *buf = 138543874;
    v159 = v54;
    v160 = 2114;
    v161 = v56;
    v162 = 2114;
    v163 = v113;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v53, OS_SIGNPOST_INTERVAL_END, spid, "checkEnvironmentConsistency", "extension: %{public}@; class: %{public}@; failed? %{public}@", buf, 0x20u);
  }

  v49 = v113;
  v50 = v113;
LABEL_102:

LABEL_103:

  return v50;
}

void __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v1 = _accessQueue_checkEnvironmentConsistency_numberFormatter;
  _accessQueue_checkEnvironmentConsistency_numberFormatter = v0;

  v2 = _accessQueue_checkEnvironmentConsistency_numberFormatter;
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];
}

void __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 removeObjectForKey:v3];
}

void __74__PBFPosterModelStoreCoordinator__accessQueue_checkEnvironmentConsistency__block_invoke_101(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 96);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  [v2 removeObjectForKey:v3];
}

- (id)_accessQueue_providerInfoWithError:(id *)a3
{
  v14[7] = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:self->_providerInfoURL options:1 error:a3];
  if (v4)
  {
    v5 = MEMORY[0x277CCAAC8];
    v6 = MEMORY[0x277CBEB98];
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v14[2] = objc_opt_class();
    v14[3] = objc_opt_class();
    v14[4] = objc_opt_class();
    v14[5] = objc_opt_class();
    v14[6] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];
    v8 = [v6 setWithArray:v7];
    v13 = 0;
    v9 = [v5 unarchivedObjectOfClasses:v8 fromData:v4 error:&v13];
    v10 = v13;

    if (a3 && v10)
    {
      v11 = v10;
      *a3 = v10;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return v9;
}

- (void)_accessQueue_writeProviderInfo:(id)a3 error:(id *)a4
{
  if (!self->_readonly)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:a4];
    if (v7)
    {
      v8 = v7;
      [v7 writeToURL:self->_providerInfoURL options:268435457 error:a4];
      v7 = v8;
    }
  }
}

- (void)_accessQueue_invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSMapTable *)self->_accessQueue_identityToPosterSnapshotCoordinator objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_accessQueue_identityToPosterSnapshotCoordinator removeAllObjects];
  accessQueue_identityToPosterSnapshotCoordinator = self->_accessQueue_identityToPosterSnapshotCoordinator;
  self->_accessQueue_identityToPosterSnapshotCoordinator = 0;
}

- (id)_accessQueue_allPosterPaths
{
  v3 = objc_opt_new();
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__PBFPosterModelStoreCoordinator__accessQueue_allPosterPaths__block_invoke;
  v11 = &unk_2782C7548;
  v4 = v3;
  v12 = v4;
  v13 = self;
  v5 = _Block_copy(&v8);
  [(NSMutableDictionary *)self->_accessQueue_posterIdentityBySupplementByVersion enumerateKeysAndObjectsUsingBlock:v5, v8, v9, v10, v11];
  [(NSMutableDictionary *)self->_accessQueue_stagedPosterIdentityBySupplementByVersion enumerateKeysAndObjectsUsingBlock:v5];
  v6 = v4;

  return v4;
}

void __61__PBFPosterModelStoreCoordinator__accessQueue_allPosterPaths__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__PBFPosterModelStoreCoordinator__accessQueue_allPosterPaths__block_invoke_2;
  v7[3] = &unk_2782C7520;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __61__PBFPosterModelStoreCoordinator__accessQueue_allPosterPaths__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _accessQueue_posterPathForIdentity:?];
  [v1 bs_safeAddObject:v2];
}

- (id)_accessQueue_identityOfLatestVersion
{
  v3 = __knownVersions(self->_accessQueue_posterIdentityBySupplementByVersion);
  v4 = v3;
  if (v3)
  {
    accessQueue_posterIdentityBySupplementByVersion = self->_accessQueue_posterIdentityBySupplementByVersion;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "lastIndex")}];
    v7 = [(NSMutableDictionary *)accessQueue_posterIdentityBySupplementByVersion objectForKey:v6];

    v8 = __knownVersions(v7);
    v9 = v8;
    if (v8)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "lastIndex")}];
      v11 = [v7 objectForKey:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = __knownVersions(self->_accessQueue_stagedPosterIdentityBySupplementByVersion);

  if (v12)
  {
    accessQueue_stagedPosterIdentityBySupplementByVersion = self->_accessQueue_stagedPosterIdentityBySupplementByVersion;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "lastIndex")}];
    v15 = [(NSMutableDictionary *)accessQueue_stagedPosterIdentityBySupplementByVersion objectForKey:v14];

    v16 = __knownVersions(v15);
    v17 = v16;
    if (v16)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "lastIndex")}];
      v19 = [v15 objectForKey:v18];

      v11 = v19;
    }
  }

  return v11;
}

- (id)_accessQueue_setupNewVersionWithOptions:(unint64_t)a3 contents:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_identityOfLatestVersion];
  v11 = v10;
  if (v10)
  {
    v12 = -[PBFPosterModelStoreCoordinator _accessQueue_buildIdentityForVersion:supplement:](self, "_accessQueue_buildIdentityForVersion:supplement:", [v10 version] + 1, 0);
    if (([v12 isNewerVersionOfIdentity:v11] & 1) == 0)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"nextIdentity=%@ must be a newer form of latestIdentity=%@", v12, v11];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_setupNewVersionWithOptions:a2 contents:? error:?];
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21B5754A4);
    }
  }

  else
  {
    v12 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_buildIdentityForVersion:0 supplement:0];
  }

  v14 = __providerURLForOptions(a3, self->_providerURL, v12);
  v15 = [MEMORY[0x277D3EBA0] pathWithProviderURL:v14 identity:v12];
  v30 = 0;
  v16 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_configureFileSystemForNewContents:v9 atPath:v15 error:&v30];
  v17 = v30;
  v18 = v17;
  if (v16)
  {
    if (a3)
    {
      if (a3 != 1)
      {
LABEL_18:
        v23 = v12;
        goto LABEL_19;
      }

      v19 = 104;
    }

    else
    {
      v19 = 96;
    }

    v24 = *(&self->super.isa + v19);
    v25 = MEMORY[0x277CBEB38];
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "supplement")}];
    v27 = [v25 dictionaryWithObject:v12 forKey:v26];
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "version")}];
    [v24 setObject:v27 forKey:v28];

    goto LABEL_18;
  }

  if (a5)
  {
    v20 = v17;
    *a5 = v18;
  }

  v21 = [v15 instanceURL];
  v22 = PBFLogReaper();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v21;
    _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "REAPING failed contents %{public}@", buf, 0xCu);
  }

  [(NSFileManager *)self->_fileManager removeItemAtURL:v21 error:0];
  v23 = 0;
LABEL_19:

  return v23;
}

- (BOOL)_accessQueue_configureFileSystemForNewContents:(id)a3 atPath:(id)a4 error:(id *)a5
{
  v118 = *MEMORY[0x277D85DE8];
  v72 = a3;
  v76 = a4;
  context = objc_autoreleasePoolPush();
  v7 = MEMORY[0x277D3EB88];
  v8 = [(PBFPosterModelStoreCoordinator *)self role];
  v77 = [v7 temporaryPathForRole:v8];

  v74 = [v76 identity];
  v9 = MEMORY[0x277CBEBC0];
  v10 = [v77 contentsURL];
  v75 = [v9 pf_posterPathInstanceURLForVersionsURL:v10 version:{objc_msgSend(v74, "version")}];

  fileManager = self->_fileManager;
  v12 = PFFileProtectionNoneAttributes();
  v98 = 0;
  LODWORD(fileManager) = [(NSFileManager *)fileManager createDirectoryAtURL:v75 withIntermediateDirectories:1 attributes:v12 error:&v98];
  v73 = v98;

  if (!fileManager)
  {
    if (v73)
    {
      v107 = *MEMORY[0x277CCA7E8];
      v108 = v73;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    }

    else
    {
      v13 = 0;
    }

    v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v13];
    goto LABEL_36;
  }

  v13 = [MEMORY[0x277CBEBC0] pf_posterPathContentsURLForInstanceURL:v75];
  v14 = self->_fileManager;
  if (!v72)
  {
    v32 = PFFileProtectionNoneAttributes();
    v83 = 0;
    v33 = [(NSFileManager *)v14 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:v32 error:&v83];
    v69 = v83;

    if (v33)
    {
      goto LABEL_49;
    }

    if (v69)
    {
      v111 = *MEMORY[0x277CCA7E8];
      v112 = v69;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
    }

    else
    {
      v34 = 0;
    }

    v68 = v34;
    v37 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:?];
LABEL_32:
    v31 = v37;
    goto LABEL_35;
  }

  v97 = 0;
  v15 = [(NSFileManager *)v14 copyItemAtURL:v72 toURL:v13 error:&v97];
  v16 = v97;
  v69 = v16;
  if (!v15)
  {
    if (v16)
    {
      v113 = *MEMORY[0x277CCA7E8];
      v114 = v16;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
    }

    else
    {
      v35 = 0;
    }

    v68 = v35;
    v37 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:?];
    goto LABEL_32;
  }

  v17 = self->_fileManager;
  v18 = PFFileProtectionNoneAttributes();
  v19 = [v13 path];
  v96 = 0;
  v20 = [(NSFileManager *)v17 setAttributes:v18 ofItemAtPath:v19 error:&v96];
  v68 = v96;

  if (!v20)
  {
    if (v68)
    {
      v115 = *MEMORY[0x277CCA7E8];
      v116 = v68;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    }

    else
    {
      v36 = 0;
    }

    v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v36];

    goto LABEL_35;
  }

  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__1;
  v94 = __Block_byref_object_dispose__1;
  v95 = 0;
  v21 = self->_fileManager;
  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __94__PBFPosterModelStoreCoordinator__accessQueue_configureFileSystemForNewContents_atPath_error___block_invoke;
  v89[3] = &unk_2782C7570;
  v89[4] = &v90;
  [(NSFileManager *)v21 enumeratorAtURL:v13 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:v89];
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v22 = v86 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v85 objects:v117 count:16];
  if (v23)
  {
    v24 = *v86;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v86 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v85 + 1) + 8 * i);
        v27 = self->_fileManager;
        v28 = PFFileProtectionNoneAttributes();
        v29 = [v26 path];
        v84 = 0;
        LOBYTE(v26) = [(NSFileManager *)v27 setAttributes:v28 ofItemAtPath:v29 error:&v84];
        v30 = v84;

        if ((v26 & 1) == 0)
        {
          v38 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:0];
          v39 = v91[5];
          v91[5] = v38;

          goto LABEL_28;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v85 objects:v117 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_28:

  v40 = v91[5];
  if (v40)
  {
    v31 = v40;

    _Block_object_dispose(&v90, 8);
LABEL_35:

LABEL_36:
    v41 = 0;
    goto LABEL_37;
  }

  _Block_object_dispose(&v90, 8);
LABEL_49:

  v51 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v75 supplement:{objc_msgSend(v74, "supplement")}];
  v52 = self->_fileManager;
  v53 = PFFileProtectionNoneAttributes();
  v82 = 0;
  LOBYTE(v52) = [(NSFileManager *)v52 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:v53 error:&v82];
  v54 = v82;

  if ((v52 & 1) == 0)
  {
    if (v54)
    {
      v109 = *MEMORY[0x277CCA7E8];
      v110 = v54;
      v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
    }

    else
    {
      v61 = 0;
    }

    v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v61];

    goto LABEL_36;
  }

  v55 = self->_fileManager;
  v56 = [v76 versionsURL];
  v57 = PFFileProtectionNoneAttributes();
  v81 = 0;
  LODWORD(v55) = [(NSFileManager *)v55 createDirectoryAtURL:v56 withIntermediateDirectories:1 attributes:v57 error:&v81];
  v13 = v81;

  if (v55)
  {
    v58 = self->_fileManager;
    v59 = [v76 instanceURL];
    v80 = 0;
    v41 = [(NSFileManager *)v58 moveItemAtURL:v75 toURL:v59 error:&v80];
    v60 = v80;

    if (v41)
    {
      v31 = 0;
    }

    else
    {
      if (v60)
      {
        v105 = *MEMORY[0x277CCA7E8];
        v106 = v60;
        v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      }

      else
      {
        v62 = 0;
      }

      v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v62];
    }
  }

  else
  {
    if (v13)
    {
      v103 = *MEMORY[0x277CCA7E8];
      v104 = v13;
      v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
    }

    else
    {
      v60 = 0;
    }

    v31 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v60];
    v41 = 0;
  }

  v79 = 0;
  v63 = [v76 ensureScratchURLIsReachableAndReturnError:&v79];
  v64 = v79;
  v65 = v64;
  if ((v63 & 1) == 0)
  {
    if (v64)
    {
      v101 = *MEMORY[0x277CCA7E8];
      v102 = v64;
      v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
    }

    else
    {
      v66 = 0;
    }

    v67 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v66];

    v41 = 0;
    v31 = v67;
  }

LABEL_37:
  [v77 invalidate];

  objc_autoreleasePoolPop(context);
  if (v41)
  {
    v42 = [v76 instanceURL];
    v78 = 0;
    v43 = [v42 checkResourceIsReachableAndReturnError:&v78];
    v44 = v78;

    if (v43)
    {
      v45 = [v76 instanceURL];
      [(PBFPosterModelStoreCoordinator *)self _accessQueue_fixupResourceValuesWithinURL:v45 synchronous:1];

      v46 = 1;
      goto LABEL_47;
    }

    if (v44)
    {
      v99 = *MEMORY[0x277CCA7E8];
      v100 = v44;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    }

    else
    {
      v47 = 0;
    }

    v48 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v47];

    v31 = v48;
  }

  if (a5)
  {
    v49 = v31;
    v46 = 0;
    *a5 = v31;
  }

  else
  {
    v46 = 0;
  }

LABEL_47:

  return v46;
}

uint64_t __94__PBFPosterModelStoreCoordinator__accessQueue_configureFileSystemForNewContents_atPath_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = *MEMORY[0x277CCA7E8];
    v12[0] = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v6];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 0;
}

- (id)_accessQueue_setupNewSupplementWithOptions:(unint64_t)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v8 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_identityOfLatestVersion];
  v9 = v8;
  if (v8)
  {
    v10 = -[PBFPosterModelStoreCoordinator _accessQueue_buildIdentityForVersion:supplement:](self, "_accessQueue_buildIdentityForVersion:supplement:", [v8 version], objc_msgSend(v8, "supplement") + 1);
    if (([v10 isNewerVersionOfIdentity:v9] & 1) == 0)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"nextIdentity=%@ must be a newer form of latestIdentity=%@", v10, v9];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_setupNewSupplementWithOptions:a2 error:?];
      }

      [v31 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x21B57660CLL);
    }

    v33 = a2;
    v34 = __providerURLForOptions(a3, self->_providerURL, v10);
    v11 = [MEMORY[0x277D3EBA0] pathWithProviderURL:? identity:?];
    v12 = 104;
    if (!a3)
    {
      v12 = 96;
    }

    v13 = *(&self->super.isa + v12);
    fileManager = self->_fileManager;
    v15 = [v11 supplementURL];
    v16 = PFFileProtectionNoneAttributes();
    v35 = 0;
    v17 = [(NSFileManager *)fileManager createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:v16 error:&v35];
    v18 = v35;

    if (v17)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "version")}];
      v20 = [v13 objectForKey:v19];

      if (!v20)
      {
        v20 = objc_opt_new();
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "version")}];
        [v13 setObject:v20 forKey:v21];
      }

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "supplement")}];
      [v20 setObject:v10 forKey:v22];

      v23 = [v11 supplementURL];
      [(PBFPosterModelStoreCoordinator *)self _accessQueue_fixupResourceValuesWithinURL:v23 synchronous:1];

      if (!v20)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"posterIdentityBySupplement should be guaranteed nonnull here : identity=%@ _posterIdentityBySupplementByVersion=%@", v10, v13];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [PBFPosterModelStoreCoordinator _accessQueue_setupNewSupplementWithOptions:v33 error:?];
        }

        [v32 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x21B576668);
      }

      v24 = v10;
    }

    else
    {
      if (a4)
      {
        if (v18)
        {
          v38 = *MEMORY[0x277CCA7E8];
          v39 = v18;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        }

        else
        {
          v26 = 0;
        }

        *a4 = [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3328 userInfo:v26];
      }

      v20 = [v11 supplementURL];
      v27 = PBFLogReaper();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = v20;
        _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "REAPING supplementURL %{public}@", buf, 0xCu);
      }

      v28 = self->_fileManager;
      v29 = [v11 supplementURL];
      [(NSFileManager *)v28 removeItemAtURL:v29 error:0];

      v24 = 0;
    }
  }

  else
  {
    if (!a4)
    {
      v24 = 0;
      goto LABEL_23;
    }

    v40 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"failed to find latest identity of %@", self->_posterUUID];
    v41[0] = v25;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];

    [MEMORY[0x277CCA9B8] pbf_descriptorStoreCoordinatorErrorWithCode:-3329 userInfo:v10];
    *a4 = v24 = 0;
  }

LABEL_23:

  return v24;
}

- (void)_accessQueue_invalidateSnapshotCoordinatorForIdentity:(id)a3
{
  if (a3)
  {
    accessQueue_identityToPosterSnapshotCoordinator = self->_accessQueue_identityToPosterSnapshotCoordinator;
    v5 = a3;
    v6 = [(NSMapTable *)accessQueue_identityToPosterSnapshotCoordinator objectForKey:v5];
    [v6 invalidate];
    [(NSMapTable *)self->_accessQueue_identityToPosterSnapshotCoordinator removeObjectForKey:v5];
  }
}

- (void)_accessQueue_removeSupplement:(unint64_t)a3 forVersion:(unint64_t)a4 error:(id *)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v55 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_buildIdentityForVersion:a4 supplement:a3];
  [(PBFPosterModelStoreCoordinator *)self _accessQueue_invalidateSnapshotCoordinatorForIdentity:?];
  v58 = [MEMORY[0x277CBEBC0] pf_posterPathInstanceURLForProviderURL:self->_providerURL type:objc_msgSend(objc_opt_class() posterUUID:"type") version:{self->_posterUUID, a4}];
  accessQueue_posterIdentityBySupplementByVersion = self->_accessQueue_posterIdentityBySupplementByVersion;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  v10 = [(NSMutableDictionary *)accessQueue_posterIdentityBySupplementByVersion objectForKey:v9];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    if ([v10 count] >= 2)
    {
      v13 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v58 supplement:a3];
      v14 = PBFLogReaper();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v64 = v13;
        _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "REAPING supplementURL %{public}@", buf, 0xCu);
      }

      fileManager = self->_fileManager;
      v62 = 0;
      [(NSFileManager *)fileManager removeItemAtURL:v13 error:&v62];
      v16 = v62;
      v17 = v16;
      if (v16)
      {
        if (a5)
        {
          v18 = v16;
          *a5 = v17;
        }

        v19 = PBFLogPosterContents();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterModelStoreCoordinator _accessQueue_removeSupplement:forVersion:error:];
        }
      }
    }

    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    [v10 removeObjectForKey:v20];
  }

  v21 = MEMORY[0x277CBEBC0];
  v22 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_buildIdentityForVersion:a4 supplement:a3];
  v23 = __stagedProviderURLForIdentity(v22);
  v57 = [v21 pf_posterPathInstanceURLForProviderURL:v23 type:objc_msgSend(objc_opt_class() posterUUID:"type") version:{self->_posterUUID, a4}];

  accessQueue_stagedPosterIdentityBySupplementByVersion = self->_accessQueue_stagedPosterIdentityBySupplementByVersion;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  v26 = [(NSMutableDictionary *)accessQueue_stagedPosterIdentityBySupplementByVersion objectForKey:v25];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v28 = [v26 objectForKey:v27];

  if (v28)
  {
    if ([v10 count] >= 2)
    {
      v29 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v57 supplement:a3];
      v30 = PBFLogReaper();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v64 = v29;
        _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "REAPING supplementURL %{public}@", buf, 0xCu);
      }

      v31 = self->_fileManager;
      v61 = 0;
      [(NSFileManager *)v31 removeItemAtURL:v29 error:&v61];
      v32 = v61;
      v33 = v32;
      if (v32)
      {
        if (a5)
        {
          v34 = v32;
          *a5 = v33;
        }

        v35 = PBFLogPosterContents();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [PBFPosterModelStoreCoordinator _accessQueue_removeSupplement:forVersion:error:];
        }
      }
    }

    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
    [v10 removeObjectForKey:v36];
  }

  v37 = [v10 count];
  if (v12 && !v37)
  {
    [(PBFPosterModelStoreCoordinator *)self _accessQueue_invalidateSnapshotCoordinatorForIdentity:v55];
    v38 = PBFLogReaper();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v64 = v58;
      _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "REAPING instanceURL %{public}@", buf, 0xCu);
    }

    v39 = self->_fileManager;
    v60 = 0;
    [(NSFileManager *)v39 removeItemAtURL:v58 error:&v60];
    v40 = v60;
    v41 = v40;
    if (v40)
    {
      if (a5)
      {
        v42 = v40;
        *a5 = v41;
      }

      v43 = PBFLogPosterContents();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_removeSupplement:forVersion:error:];
      }
    }

    v44 = self->_accessQueue_posterIdentityBySupplementByVersion;
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
    [(NSMutableDictionary *)v44 removeObjectForKey:v45];
  }

  v46 = [v26 count];
  if (v28 && !v46)
  {
    v47 = PBFLogReaper();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v64 = v57;
      _os_log_impl(&dword_21B526000, v47, OS_LOG_TYPE_DEFAULT, "REAPING stagedInstanceURL %{public}@", buf, 0xCu);
    }

    v48 = self->_fileManager;
    v59 = 0;
    [(NSFileManager *)v48 removeItemAtURL:v57 error:&v59];
    v49 = v59;
    v50 = v49;
    if (v49)
    {
      if (a5)
      {
        v51 = v49;
        *a5 = v50;
      }

      v52 = PBFLogPosterContents();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [PBFPosterModelStoreCoordinator _accessQueue_removeSupplement:forVersion:error:];
      }
    }

    v53 = self->_accessQueue_stagedPosterIdentityBySupplementByVersion;
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
    [(NSMutableDictionary *)v53 removeObjectForKey:v54];
  }
}

- (id)_accessQueue_buildIdentityForVersion:(unint64_t)a3 supplement:(unint64_t)a4
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Please implement in your subclass.", a4];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v11 = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    v16 = self;
    v17 = 2114;
    v18 = @"PBFPosterModelStoreCoordinator.m";
    v19 = 1024;
    v20 = 1425;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_accessQueue_fixupResourceValuesWithinURL:(id)a3 synchronous:(BOOL)a4
{
  v4 = a4;
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!self->_readonly)
  {
    v7 = [objc_opt_class() expectedURLResourceValuesForFiles];
    v8 = [objc_opt_class() expectedURLResourceValuesForDirectories];
    if ([v7 count] || objc_msgSend(v8, "count"))
    {
      v43 = v4;
      if (!v6)
      {
        v6 = self->_identifierURL;
      }

      [objc_opt_class() type];
      v9 = NSStringFromPFServerPosterType();
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = self->_posterUUID;
      v47 = self->_extensionIdentifier;
      v13 = PBFLogPosterContents();
      v14 = os_signpost_id_generate(v13);

      v15 = PBFLogPosterContents();
      v16 = v15;
      v39 = v14 - 1;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 138544386;
        v57 = v47;
        v58 = 2114;
        v59 = v11;
        v60 = 2114;
        v61 = v12;
        v62 = 2114;
        v63 = v9;
        v64 = 2114;
        v65 = v6;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "gather resources for fixupResourceValues", "extension: %{public}@; class: %{public}@; posterUUID %{public}@; type %{public}@; URL: %{public}@", buf, 0x34u);
      }

      spid = v14;
      v40 = v12;
      v41 = v11;
      v42 = v9;

      v17 = [MEMORY[0x277CBEB58] setWithObject:*MEMORY[0x277CBE818]];
      v18 = [v7 allKeys];
      [v17 addObjectsFromArray:v18];

      v19 = [v8 allKeys];
      [v17 addObjectsFromArray:v19];

      v20 = MEMORY[0x277CCAC30];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __88__PBFPosterModelStoreCoordinator__accessQueue_fixupResourceValuesWithinURL_synchronous___block_invoke;
      v52[3] = &unk_2782C7598;
      v44 = v8;
      v37 = v8;
      v53 = v37;
      v45 = v7;
      v36 = v7;
      v54 = v36;
      v21 = [v20 predicateWithBlock:v52];
      v46 = v6;
      v22 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_contentsOfURLWithinStore:v6 resourceKeys:v17 standardizeURLs:0];
      v38 = v21;
      v23 = [v22 filteredOrderedSetUsingPredicate:v21];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = 0;
        v28 = 0;
        v29 = *v49;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v49 != v29)
            {
              objc_enumerationMutation(v24);
            }

            v31 = *(*(&v48 + 1) + 8 * i);
            if ([v31 pbf_isDirectory])
            {
              if (v27)
              {
                v32 = v27;
              }

              else
              {
                v32 = objc_opt_new();
                v27 = v32;
              }
            }

            else if (v28)
            {
              v32 = v28;
            }

            else
            {
              v32 = objc_opt_new();
              v28 = v32;
            }

            [v32 addObject:v31];
          }

          v26 = [v24 countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v26);
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      v33 = PBFLogPosterContents();
      v34 = v33;
      v6 = v46;
      if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 138544386;
        v57 = v47;
        v58 = 2114;
        v59 = v41;
        v60 = 2114;
        v61 = v40;
        v62 = 2114;
        v63 = v42;
        v64 = 2114;
        v65 = v46;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v34, OS_SIGNPOST_INTERVAL_END, spid, "gather resources for fixupResourceValues", "extension: %{public}@; class: %{public}@; posterUUID %{public}@; type %{public}@; URL: %{public}@", buf, 0x34u);
      }

      [(PBFPosterModelStoreCoordinator *)self _accessQueue_applyResourceValuesForURLs:v28 expectedResourceValues:v36 synchronous:v43];
      [(PBFPosterModelStoreCoordinator *)self _accessQueue_applyResourceValuesForURLs:v27 expectedResourceValues:v37 synchronous:v43];

      v8 = v44;
      v7 = v45;
    }
  }
}

uint64_t __88__PBFPosterModelStoreCoordinator__accessQueue_fixupResourceValuesWithinURL_synchronous___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 pbf_isLegacyPosterSnapshot] & 1) != 0 || (objc_msgSend(v3, "pbf_isSnapshotBundle"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 pbf_isDirectory];
    v6 = 40;
    if (v5)
    {
      v6 = 32;
    }

    v4 = [v3 pbf_URLConformsToExpectedResourceValues:*(a1 + v6) error:0] ^ 1;
  }

  return v4;
}

- (void)_accessQueue_applyResourceValuesForURLs:(id)a3 expectedResourceValues:(id)a4 synchronous:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    [objc_opt_class() type];
    v10 = NSStringFromPFServerPosterType();
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = self->_posterUUID;
    v14 = self->_extensionIdentifier;
    v15 = PBFLogPosterContents();
    v16 = os_signpost_id_generate(v15);

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __109__PBFPosterModelStoreCoordinator__accessQueue_applyResourceValuesForURLs_expectedResourceValues_synchronous___block_invoke;
    aBlock[3] = &unk_2782C75C0;
    v30 = v16;
    v24 = v14;
    v25 = v12;
    v26 = v13;
    v27 = v10;
    v28 = v8;
    v29 = v9;
    v17 = v10;
    v18 = v13;
    v19 = v12;
    v20 = v14;
    v21 = _Block_copy(aBlock);
    v22 = v21;
    if (v5)
    {
      v21[2](v21);
    }

    else
    {
      PBFDispatchAsyncWithString(@"FixupResourceValues", QOS_CLASS_BACKGROUND, v21);
    }
  }
}

void __109__PBFPosterModelStoreCoordinator__accessQueue_applyResourceValuesForURLs_expectedResourceValues_synchronous___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = PBFLogPosterContents();
  v3 = v2;
  v4 = *(a1 + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *buf = 138544386;
    v38 = v5;
    v39 = 2114;
    v40 = v6;
    v41 = 2114;
    v42 = v7;
    v43 = 2114;
    v44 = v8;
    v45 = 2114;
    v46 = v9;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "fixupResourceValues", "extension: %{public}@; class: %{public}@; posterUUID %{public}@; type %{public}@; URLs: %{public}@", buf, 0x34u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = *(a1 + 64);
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v33;
    *&v12 = 138412546;
    v30 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        v17 = *(a1 + 72);
        v31 = 0;
        v18 = [v16 setResourceValues:v17 error:{&v31, v30}];
        v19 = v31;
        v20 = PBFLogPosterContents();
        v21 = v20;
        if (v18)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v38 = v16;
            _os_log_debug_impl(&dword_21B526000, v21, OS_LOG_TYPE_DEBUG, "Corrected resource values for %@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = v30;
          v38 = v16;
          v39 = 2114;
          v40 = v19;
          _os_log_error_impl(&dword_21B526000, v21, OS_LOG_TYPE_ERROR, "Failed to correct resource values for %@: %{public}@", buf, 0x16u);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  v22 = PBFLogPosterContents();
  v23 = v22;
  v24 = *(a1 + 80);
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = *(a1 + 64);
    *buf = 138544386;
    v38 = v25;
    v39 = 2114;
    v40 = v26;
    v41 = 2114;
    v42 = v27;
    v43 = 2114;
    v44 = v28;
    v45 = 2114;
    v46 = v29;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v23, OS_SIGNPOST_INTERVAL_END, v24, "fixupResourceValues", "extension: %{public}@; class: %{public}@; posterUUID %{public}@; type %{public}@; URLs: %{public}@", buf, 0x34u);
  }
}

- (id)_accessQueue_fetchIdentityForVersion:(unint64_t)a3 supplement:(unint64_t)a4 error:(id *)a5
{
  v9 = [MEMORY[0x277CBEBC0] pf_posterPathInstanceURLForProviderURL:self->_providerURL type:objc_msgSend(objc_opt_class() posterUUID:"type") version:{self->_posterUUID, a3}];
  v10 = [MEMORY[0x277CBEBC0] pf_posterPathContentsURLForInstanceURL:v9];
  if ([v10 checkResourceIsReachableAndReturnError:a5])
  {
    v11 = [MEMORY[0x277CBEBC0] pf_posterPathSupplementURLForInstanceURL:v9 supplement:a4];
    if ([v11 checkResourceIsReachableAndReturnError:a5])
    {
      accessQueue_posterIdentityBySupplementByVersion = self->_accessQueue_posterIdentityBySupplementByVersion;
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
      v14 = [(NSMutableDictionary *)accessQueue_posterIdentityBySupplementByVersion objectForKey:v13];

      if (!v14)
      {
        v14 = [MEMORY[0x277CBEB38] dictionary];
        v15 = self->_accessQueue_posterIdentityBySupplementByVersion;
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
        [(NSMutableDictionary *)v15 setObject:v14 forKey:v16];
      }

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
      v18 = [v14 objectForKey:v17];

      if (!v18)
      {
        v18 = [(PBFPosterModelStoreCoordinator *)self _accessQueue_buildIdentityForVersion:a3 supplement:a4];
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
        [v14 setObject:v18 forKey:v19];
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(PBFPosterModelStoreCoordinator *)self extensionIdentifier];
  v5 = [v3 appendObject:v4 withName:@"extensionIdentifier"];

  v6 = [(PBFPosterModelStoreCoordinator *)self posterUUID];
  v7 = [v3 appendObject:v6 withName:@"posterUUID"];

  v8 = [(PBFPosterModelStoreCoordinator *)self role];
  v9 = [v3 appendObject:v8 withName:@"role"];

  v10 = [v3 build];

  return v10;
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PFPosterRoleIsValid(role)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[descriptorIdentifier length] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.10(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[roleIdentifierData length] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.11(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.12(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)createNewStoreCoordinatorWithPath:(char *)a1 error:.cold.13(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_accessQueue_correctPermissionsForInternalDirectories:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_16(&dword_21B526000, v2, v3, "[%{public}@ _accessQueue_correctPermissionsForInternalDirectories]> could not setup scratch URL: %{public}@", v4, v5, v6, v7, v8);
}

- (void)_accessQueue_correctPermissionsForInternalDirectories:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_16(&dword_21B526000, v2, v3, "[%{public}@ _accessQueue_correctPermissionsForInternalDirectories]> could not exclude scratch URL from backup: %{public}@", v4, v5, v6, v7, v8);
}

- (void)setObject:(char *)a1 forKeyedSubscript:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(NSSecureCoding)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forKeyedSubscript:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(NSCopying)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setObject:(char *)a1 forKeyedSubscript:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addNewVersionWithContents:error:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, 2u);
}

- (void)addNewSupplementWithError:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, 2u);
}

- (void)stageNewVersionWithContents:error:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, 2u);
}

- (void)stageNewSupplementWithError:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, 2u);
}

- (void)removeSupplement:forVersion:error:.cold.1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_8_0(&dword_21B526000, v0, v1, "%s> error: %@", v2, v3, v4, v5, 2u);
}

- (void)_accessQueue_checkEnvironmentConsistency
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_accessQueue_setupNewVersionWithOptions:(const char *)a1 contents:error:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_accessQueue_setupNewSupplementWithOptions:(const char *)a1 error:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_accessQueue_setupNewSupplementWithOptions:(const char *)a1 error:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_14(&dword_21B526000, MEMORY[0x277D86220], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_accessQueue_removeSupplement:forVersion:error:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9_0(&dword_21B526000, v0, v1, "%s> error removing supplement=%llu : %@", v2);
}

- (void)_accessQueue_removeSupplement:forVersion:error:.cold.3()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_9_0(&dword_21B526000, v0, v1, "%s> error removing version %llu: %@", v2);
}

@end