@interface SUCorePolicyExtensionCompanionCompatibility
+ (id)sharedInstance;
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyExtensionCompanionCompatibility)init;
- (SUCorePolicyExtensionCompanionCompatibility)initWithCoder:(id)coder;
- (id)description;
- (id)filterSoftwareUpdateAssetArray:(id)array;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)extendMASoftwareUpdateAssetDownloadOptions:(id)options;
- (void)setAllowSameVersionUpdates:(BOOL)updates;
- (void)setCompatibilityVersionRange:(id)range maxCompatibilityVersion:(id)version;
- (void)setPreferFullReplacement:(BOOL)replacement;
- (void)setSuAssetDownloadOptions:(id)options;
@end

@implementation SUCorePolicyExtensionCompanionCompatibility

- (SUCorePolicyExtensionCompanionCompatibility)init
{
  v15.receiver = self;
  v15.super_class = SUCorePolicyExtensionCompanionCompatibility;
  v2 = [(SUCorePolicyExtension *)&v15 init];
  v3 = v2;
  if (v2)
  {
    minCompatibility = v2->_minCompatibility;
    v2->_minCompatibility = 0;

    maxCompatibility = v3->_maxCompatibility;
    v3->_maxCompatibility = 0;

    v3->_allowSameVersionUpdates = 0;
    v3->_preferFullReplacement = 0;
    suAssetDownloadOptions = v3->_suAssetDownloadOptions;
    v3->_suAssetDownloadOptions = 0;

    v3->_assetOutOfCompatibilityRange = 0;
    v7 = MGCopyAnswer();
    buildVersion = v3->_buildVersion;
    v3->_buildVersion = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.sucore.policyExtensionCompanionCompatibilityQueue", v9);
    operationsQueue = v3->_operationsQueue;
    v3->_operationsQueue = v10;

    v12 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"CompanionCompatPolicyExt"];
    logger = v3->_logger;
    v3->_logger = v12;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SUCorePolicyExtensionCompanionCompatibility sharedInstance];
  }

  v3 = sharedInstance_instance;

  return v3;
}

uint64_t __61__SUCorePolicyExtensionCompanionCompatibility_sharedInstance__block_invoke()
{
  sharedInstance_instance = objc_alloc_init(SUCorePolicyExtensionCompanionCompatibility);

  return MEMORY[0x2821F96F8]();
}

- (void)setSuAssetDownloadOptions:(id)options
{
  optionsCopy = options;
  operationsQueue = [(SUCorePolicyExtensionCompanionCompatibility *)self operationsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SUCorePolicyExtensionCompanionCompatibility_setSuAssetDownloadOptions___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_sync(operationsQueue, v7);
}

- (void)setCompatibilityVersionRange:(id)range maxCompatibilityVersion:(id)version
{
  rangeCopy = range;
  versionCopy = version;
  operationsQueue = [(SUCorePolicyExtensionCompanionCompatibility *)self operationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __100__SUCorePolicyExtensionCompanionCompatibility_setCompatibilityVersionRange_maxCompatibilityVersion___block_invoke;
  block[3] = &unk_27892D340;
  v12 = rangeCopy;
  v13 = versionCopy;
  selfCopy = self;
  v9 = versionCopy;
  v10 = rangeCopy;
  dispatch_sync(operationsQueue, block);
}

void __100__SUCorePolicyExtensionCompanionCompatibility_setCompatibilityVersionRange_maxCompatibilityVersion___block_invoke(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  v4 = a1[5] == 0;
  v5 = a1[6];
  if (((v2 == 0) ^ v4))
  {
    v6 = [v5 logger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __100__SUCorePolicyExtensionCompanionCompatibility_setCompatibilityVersionRange_maxCompatibilityVersion___block_invoke_cold_1(v3, v3 + 1, v7);
    }
  }

  else
  {
    objc_storeStrong(v5 + 2, v2);
    v8 = a1[5];
    v9 = (a1[6] + 24);

    objc_storeStrong(v9, v8);
  }
}

- (void)setAllowSameVersionUpdates:(BOOL)updates
{
  operationsQueue = [(SUCorePolicyExtensionCompanionCompatibility *)self operationsQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SUCorePolicyExtensionCompanionCompatibility_setAllowSameVersionUpdates___block_invoke;
  v6[3] = &unk_27892D4A0;
  v6[4] = self;
  updatesCopy = updates;
  dispatch_sync(operationsQueue, v6);
}

- (void)setPreferFullReplacement:(BOOL)replacement
{
  operationsQueue = [(SUCorePolicyExtensionCompanionCompatibility *)self operationsQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__SUCorePolicyExtensionCompanionCompatibility_setPreferFullReplacement___block_invoke;
  v6[3] = &unk_27892D4A0;
  v6[4] = self;
  replacementCopy = replacement;
  dispatch_sync(operationsQueue, v6);
}

- (id)filterSoftwareUpdateAssetArray:(id)array
{
  arrayCopy = array;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  operationsQueue = self->_operationsQueue;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke;
  block[3] = &unk_27892D4E8;
  v10 = arrayCopy;
  v11 = &v12;
  block[4] = self;
  v6 = arrayCopy;
  dispatch_sync(operationsQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke(uint64_t a1)
{
  v1 = a1;
  v114 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 10) = 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
  v2 = [*(v1 + 32) logger];
  v3 = [v2 oslog];

  v97 = v1;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 32);
    v5 = [*(*(*(v97 + 48) + 8) + 40) count];
    *buf = 138543618;
    v111 = v4;
    v1 = v97;
    v112 = 2048;
    v113 = v5;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting asset filtering, starting with %lu assets", buf, 0x16u);
  }

  v6 = [*(v1 + 32) allowSameVersionUpdates];
  v7 = [*(v1 + 32) logger];
  v8 = [v7 oslog];

  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v10 = *(v1 + 32);
      *buf = 138543362;
      v111 = v10;
      _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating to same OS version is allowed", buf, 0xCu);
    }

    v11 = MEMORY[0x277CCAC30];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_329;
    v108[3] = &unk_27892C8F8;
    v108[4] = *(v1 + 32);
    v12 = v108;
  }

  else
  {
    if (v9)
    {
      v13 = *(v1 + 32);
      *buf = 138543362;
      v111 = v13;
      _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating to same OS version is *NOT* allowed", buf, 0xCu);
    }

    v11 = MEMORY[0x277CCAC30];
    v107[0] = MEMORY[0x277D85DD0];
    v107[1] = 3221225472;
    v107[2] = __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_334;
    v107[3] = &unk_27892C8F8;
    v107[4] = *(v1 + 32);
    v12 = v107;
  }

  v95 = [v11 predicateWithBlock:v12];
  v14 = [*(v1 + 40) filteredArrayUsingPredicate:?];
  v15 = [*(v1 + 32) logger];
  v16 = [v15 oslog];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v97 + 32);
    v18 = [v14 count];
    *buf = 138543618;
    v111 = v17;
    v1 = v97;
    v112 = 2048;
    v113 = v18;
    _os_log_impl(&dword_23193C000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %lu potential assets after filtering on build version", buf, 0x16u);
  }

  v19 = [v14 sortedArrayUsingComparator:&__block_literal_global_338];
  v20 = [v19 lastObject];
  v21 = [v20 attributes];
  v22 = [v21 objectForKeyedSubscript:@"OSVersion"];

  v23 = MEMORY[0x277CCAC30];
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_2;
  v105[3] = &unk_27892C8F8;
  v24 = v22;
  v106 = v24;
  v25 = [v23 predicateWithBlock:v105];
  v93 = v19;
  v26 = [v19 filteredArrayUsingPredicate:v25];

  v96 = v26;
  v27 = [v26 sortedArrayUsingComparator:&__block_literal_global_343];
  v28 = [v27 lastObject];
  v29 = [v28 attributes];
  v30 = [v29 objectForKeyedSubscript:@"Build"];

  v31 = MEMORY[0x277CCAC30];
  v103[0] = MEMORY[0x277D85DD0];
  v103[1] = 3221225472;
  v103[2] = __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_4;
  v103[3] = &unk_27892C8F8;
  v92 = v30;
  v104 = v92;
  v32 = [v31 predicateWithBlock:v103];
  v33 = [v27 filteredArrayUsingPredicate:v32];

  v34 = [*(v1 + 32) minCompatibility];
  if (v34)
  {
    v35 = v34;
    v36 = [*(v1 + 32) maxCompatibility];

    if (v36)
    {
      v37 = [*(v1 + 32) logger];
      v38 = [v37 oslog];

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = *(v97 + 32);
        v40 = [v33 count];
        *buf = 138543618;
        v111 = v39;
        v1 = v97;
        v112 = 2048;
        v113 = v40;
        _os_log_impl(&dword_23193C000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ Performing compatibility version filtering on remaining %lu assets", buf, 0x16u);
      }

      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_344;
      v102[3] = &unk_27892C8F8;
      v102[4] = *(v1 + 32);
      v41 = [MEMORY[0x277CCAC30] predicateWithBlock:v102];
      v42 = [v33 filteredArrayUsingPredicate:v41];
      v43 = *(*(v1 + 48) + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v42;
    }
  }

  v94 = v14;
  if ([*(*(*(v1 + 48) + 8) + 40) count])
  {
    v45 = v33;
    v46 = [*(*(*(v1 + 48) + 8) + 40) objectAtIndex:0];
    v47 = [v46 attributes];
    v48 = [v47 objectForKeyedSubscript:@"Build"];

    v49 = [*(v1 + 32) logger];
    v50 = [v49 oslog];

    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(v1 + 32);
      *buf = 138543618;
      v111 = v51;
      v112 = 2112;
      v113 = v48;
      _os_log_impl(&dword_23193C000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ Found asset for build %@ which does not require a companion update", buf, 0x16u);
    }

    v33 = v45;
  }

  else
  {
    if (![v33 count])
    {
      v84 = [*(v1 + 32) logger];
      v85 = [v84 oslog];

      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = *(v1 + 32);
        *buf = 138543362;
        v111 = v86;
        _os_log_impl(&dword_23193C000, v85, OS_LOG_TYPE_DEFAULT, "%{public}@ No SoftwareUpdate assets found", buf, 0xCu);
      }

      v87 = *(*(v1 + 48) + 8);
      v65 = *(v87 + 40);
      *(v87 + 40) = 0;
      v76 = v95;
      goto LABEL_50;
    }

    v52 = v33;
    v46 = [v96 firstObject];
    v53 = [v46 attributes];
    v48 = [v53 objectForKeyedSubscript:@"Build"];

    v54 = [*(v1 + 32) minCompatibility];
    if (v54 && (v55 = v54, [*(v1 + 32) maxCompatibility], v56 = objc_claimAutoreleasedReturnValue(), v56, v55, v56))
    {
      v57 = [*(v1 + 32) logger];
      v58 = [v57 oslog];

      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = *(v1 + 32);
        *buf = 138543618;
        v111 = v59;
        v112 = 2112;
        v113 = v48;
        _os_log_impl(&dword_23193C000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ Found asset for build %@ which requires a companion update", buf, 0x16u);
      }

      *(*(v1 + 32) + 10) = 1;
    }

    else
    {
      v60 = [*(v1 + 32) logger];
      v61 = [v60 oslog];

      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = *(v1 + 32);
        *buf = 138543618;
        v111 = v62;
        v112 = 2112;
        v113 = v48;
        _os_log_impl(&dword_23193C000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@ Found asset for build %@ for a device with no companion", buf, 0x16u);
      }
    }

    v33 = v52;
    v63 = *(*(v1 + 48) + 8);
    v64 = v52;
    v50 = *(v63 + 40);
    *(v63 + 40) = v64;
    v1 = v97;
  }

  v65 = [*(*(*(v1 + 48) + 8) + 40) firstObject];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v66 = *(*(*(v1 + 48) + 8) + 40);
  v67 = [v66 countByEnumeratingWithState:&v98 objects:v109 count:16];
  if (v67)
  {
    v68 = v67;
    v88 = v65;
    v89 = v33;
    v90 = v27;
    v91 = v24;
    v69 = *v99;
    while (2)
    {
      for (i = 0; i != v68; ++i)
      {
        if (*v99 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v65 = *(*(&v98 + 1) + 8 * i);
        v71 = [v65 attributes];
        v72 = [v71 objectForKeyedSubscript:@"PrerequisiteBuild"];

        v73 = [v65 attributes];
        v74 = [v73 objectForKeyedSubscript:@"PrerequisiteOSVersion"];

        if ([*(v97 + 32) preferFullReplacement])
        {
          if (!(v72 | v74))
          {
            v78 = v65;
            v33 = v89;
            v27 = v90;
            v79 = v88;
LABEL_48:

            v1 = v97;
            v76 = v95;
            v24 = v91;
            goto LABEL_49;
          }
        }

        else
        {
          if (v72)
          {
            v75 = v74 == 0;
          }

          else
          {
            v75 = 1;
          }

          if (!v75)
          {
            v77 = v65;

            v79 = v72;
            v33 = v89;
            v27 = v90;
            goto LABEL_48;
          }
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v98 objects:v109 count:16];
      if (v68)
      {
        continue;
      }

      break;
    }

    v65 = v88;
    v33 = v89;
    v1 = v97;
    v76 = v95;
    v27 = v90;
    v24 = v91;
  }

  else
  {
    v76 = v95;
  }

LABEL_49:

  v80 = [MEMORY[0x277CBEA60] arrayWithObject:v65];
  v81 = *(*(v1 + 48) + 8);
  v82 = *(v81 + 40);
  *(v81 + 40) = v80;

LABEL_50:
  v83 = *MEMORY[0x277D85DE8];
}

BOOL __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_329(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"Build"];
  v5 = [*(a1 + 32) buildVersion];
  v6 = [v4 compare:v5 options:64] != -1;

  return v6;
}

BOOL __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_334(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"Build"];
  v5 = [*(a1 + 32) buildVersion];
  v6 = [v4 compare:v5 options:64] == 1;

  return v6;
}

uint64_t __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_335(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v5 objectForKeyedSubscript:@"OSVersion"];
  v7 = [v4 attributes];

  v8 = [v7 objectForKeyedSubscript:@"OSVersion"];
  v9 = [v6 compare:v8 options:64];

  return v9;
}

uint64_t __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"OSVersion"];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v5 objectForKeyedSubscript:@"Build"];
  v7 = [v4 attributes];

  v8 = [v7 objectForKeyedSubscript:@"Build"];
  v9 = [v6 compare:v8 options:64];

  return v9;
}

uint64_t __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"Build"];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

BOOL __78__SUCorePolicyExtensionCompanionCompatibility_filterSoftwareUpdateAssetArray___block_invoke_344(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 attributes];
  v5 = [v4 objectForKeyedSubscript:@"CompatibilityVersion"];

  v6 = [*(a1 + 32) logger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [v3 attributes];
    v10 = [v9 objectForKeyedSubscript:@"Build"];
    v22 = 138543874;
    v23 = v8;
    v24 = 2112;
    v25 = v10;
    v26 = 2114;
    v27 = v5;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found asset for build %@ with CompatibilityVersion = %{public}@", &v22, 0x20u);
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = [*(a1 + 32) minCompatibility];
  v12 = [v5 compare:v11];
  v13 = v12 != -1;
  if (v12 == -1)
  {
LABEL_10:

    goto LABEL_11;
  }

  v14 = [*(a1 + 32) maxCompatibility];
  v15 = [v5 compare:v14];

  if (v15 != 1)
  {
    v16 = [*(a1 + 32) logger];
    v11 = [v16 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = [v3 attributes];
      v19 = [v18 objectForKeyedSubscript:@"Build"];
      v22 = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v19;
      _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Asset for build %@ is within compatibility range", &v22, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_7:
  v13 = 0;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)extendMASoftwareUpdateAssetDownloadOptions:(id)options
{
  optionsCopy = options;
  operationsQueue = self->_operationsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__SUCorePolicyExtensionCompanionCompatibility_extendMASoftwareUpdateAssetDownloadOptions___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_sync(operationsQueue, v7);
}

void __90__SUCorePolicyExtensionCompanionCompatibility_extendMASoftwareUpdateAssetDownloadOptions___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) suAssetDownloadOptions];

  v3 = [*(a1 + 32) logger];
  v4 = [v3 oslog];

  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v6 suAssetDownloadOptions];
      v17 = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_23193C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Extending download options with overrides: %@", &v17, 0x16u);
    }

    v8 = [*(a1 + 32) suAssetDownloadOptions];
    v4 = [v8 objectForKeyedSubscript:@"DownloadIsDiscretionary"];

    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) setDiscretionary:{-[NSObject BOOLValue](v4, "BOOLValue")}];
      }
    }

    v9 = [*(a1 + 32) suAssetDownloadOptions];
    v10 = [v9 objectForKeyedSubscript:@"DownloadAllowedOverCellular"];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) setAllowsCellularAccess:{objc_msgSend(v10, "BOOLValue")}];
      }
    }

    v11 = [*(a1 + 32) suAssetDownloadOptions];
    v12 = [v11 objectForKeyedSubscript:@"ResourceTimeout"];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) setTimeoutIntervalForResource:{objc_msgSend(v12, "longValue")}];
      }
    }

    v13 = [*(a1 + 32) suAssetDownloadOptions];
    v14 = [v13 objectForKeyedSubscript:@"DownloadRequiresPowerPluggedIn"];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 40) setRequiresPowerPluggedIn:{objc_msgSend(v14, "BOOLValue")}];
      }
    }
  }

  else if (v5)
  {
    v15 = *(a1 + 32);
    v17 = 138543362;
    v18 = v15;
    _os_log_impl(&dword_23193C000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Not extending download options since no overrides set", &v17, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (SUCorePolicyExtensionCompanionCompatibility)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SUCorePolicyExtensionCompanionCompatibility;
  v5 = [(SUCorePolicyExtension *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MinCompatibility"];
    minCompatibility = v5->_minCompatibility;
    v5->_minCompatibility = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MaxCompatibility"];
    maxCompatibility = v5->_maxCompatibility;
    v5->_maxCompatibility = v8;

    v5->_allowSameVersionUpdates = [coderCopy decodeBoolForKey:@"AllowsSameVersionUpdates"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUAssetDownloadOptions"];
    suAssetDownloadOptions = v5->_suAssetDownloadOptions;
    v5->_suAssetDownloadOptions = v10;

    v5->_assetOutOfCompatibilityRange = [coderCopy decodeBoolForKey:@"AssetOutOfCompatibilityRange"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BuildVersion"];
    buildVersion = v5->_buildVersion;
    v5->_buildVersion = v12;

    v5->_preferFullReplacement = [coderCopy decodeBoolForKey:@"PreferFullReplacement"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  minCompatibility = [(SUCorePolicyExtensionCompanionCompatibility *)self minCompatibility];
  [coderCopy encodeObject:minCompatibility forKey:@"MinCompatibility"];

  maxCompatibility = [(SUCorePolicyExtensionCompanionCompatibility *)self maxCompatibility];
  [coderCopy encodeObject:maxCompatibility forKey:@"MaxCompatibility"];

  [coderCopy encodeBool:-[SUCorePolicyExtensionCompanionCompatibility allowSameVersionUpdates](self forKey:{"allowSameVersionUpdates"), @"AllowsSameVersionUpdates"}];
  suAssetDownloadOptions = [(SUCorePolicyExtensionCompanionCompatibility *)self suAssetDownloadOptions];
  [coderCopy encodeObject:suAssetDownloadOptions forKey:@"SUAssetDownloadOptions"];

  [coderCopy encodeBool:-[SUCorePolicyExtensionCompanionCompatibility assetOutOfCompatibilityRange](self forKey:{"assetOutOfCompatibilityRange"), @"AssetOutOfCompatibilityRange"}];
  buildVersion = [(SUCorePolicyExtensionCompanionCompatibility *)self buildVersion];
  [coderCopy encodeObject:buildVersion forKey:@"BuildVersion"];

  [coderCopy encodeBool:-[SUCorePolicyExtensionCompanionCompatibility preferFullReplacement](self forKey:{"preferFullReplacement"), @"PreferFullReplacement"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x277D643F8];
      minCompatibility = [(SUCorePolicyExtensionCompanionCompatibility *)v5 minCompatibility];
      minCompatibility2 = [(SUCorePolicyExtensionCompanionCompatibility *)self minCompatibility];
      if ([v6 numberIsEqual:minCompatibility to:minCompatibility2])
      {
        v9 = MEMORY[0x277D643F8];
        maxCompatibility = [(SUCorePolicyExtensionCompanionCompatibility *)v5 maxCompatibility];
        maxCompatibility2 = [(SUCorePolicyExtensionCompanionCompatibility *)self maxCompatibility];
        if ([v9 numberIsEqual:maxCompatibility to:maxCompatibility2] && (v12 = -[SUCorePolicyExtensionCompanionCompatibility preferFullReplacement](v5, "preferFullReplacement"), v12 == -[SUCorePolicyExtensionCompanionCompatibility preferFullReplacement](self, "preferFullReplacement")))
        {
          allowSameVersionUpdates = [(SUCorePolicyExtensionCompanionCompatibility *)v5 allowSameVersionUpdates];
          v13 = allowSameVersionUpdates ^ [(SUCorePolicyExtensionCompanionCompatibility *)self allowSameVersionUpdates]^ 1;
        }

        else
        {
          LOBYTE(v13) = 0;
        }
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (id)summary
{
  minCompatibility = [(SUCorePolicyExtensionCompanionCompatibility *)self minCompatibility];

  if (minCompatibility)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    minCompatibility2 = [(SUCorePolicyExtensionCompanionCompatibility *)self minCompatibility];
    v6 = [v4 initWithFormat:@"|minCompatibility=%@", minCompatibility2];
    v7 = [&stru_28469CC48 stringByAppendingString:v6];
  }

  else
  {
    v7 = &stru_28469CC48;
  }

  maxCompatibility = [(SUCorePolicyExtensionCompanionCompatibility *)self maxCompatibility];

  if (maxCompatibility)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    maxCompatibility2 = [(SUCorePolicyExtensionCompanionCompatibility *)self maxCompatibility];
    v11 = [v9 initWithFormat:@"|maxCompatibility=%@", maxCompatibility2];
    v12 = [(__CFString *)v7 stringByAppendingString:v11];

    v7 = v12;
  }

  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUCorePolicyExtensionCompanionCompatibility *)self allowSameVersionUpdates])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(SUCorePolicyExtensionCompanionCompatibility *)self preferFullReplacement])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v13 initWithFormat:@"|allowSameVersionUpdates=%@|preferFullReplacement=%@", v14, v15];
  v17 = [(__CFString *)v7 stringByAppendingString:v16];

  if (([v17 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v18 = [v17 stringByAppendingString:@"|"];

    v17 = v18;
  }

  return v17;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  extensionName = [(SUCorePolicyExtensionCompanionCompatibility *)self extensionName];
  v5 = [v3 initWithFormat:@"%@", extensionName];

  return v5;
}

void __100__SUCorePolicyExtensionCompanionCompatibility_setCompatibilityVersionRange_maxCompatibilityVersion___block_invoke_cold_1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 138412546;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  _os_log_error_impl(&dword_23193C000, log, OS_LOG_TYPE_ERROR, "Incorrect arguments passed to setCompatibilityVersionRange: minCompatibilityVersion: %@ maxCompatibilityVersion: %@", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end