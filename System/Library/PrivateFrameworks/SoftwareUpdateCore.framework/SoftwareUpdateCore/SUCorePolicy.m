@interface SUCorePolicy
+ (BOOL)getAllowSameProductVersionPredicateResultWithAssetOSVersion:(id)a3 assetBuildVersion:(id)a4 prerequisiteProductVersion:(id)a5 prerequisiteBuildVersion:(id)a6;
+ (BOOL)getNoAllowSameProductVersionPredicateResultWithAssetOSVersion:(id)a3 assetBuildVersion:(id)a4 prerequisiteProductVersion:(id)a5 prerequisiteBuildVersion:(id)a6;
+ (id)_cleanProductVersion:(id)a3;
- (BOOL)allowSameVersion;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRequestedPMVSupervisedPolicy;
- (BOOL)isSplatPolicy;
- (BOOL)isSupervisedAndRequestingInvalidOS:(id *)a3;
- (BOOL)isSupervisedPolicy;
- (BOOL)restrictToFull;
- (SUCorePolicy)initWithCoder:(id)a3;
- (SUCorePolicy)initWithSoftwareUpdateAssetType:(id)a3 documentationAssetType:(id)a4 updateBrainAssetType:(id)a5 usingExtensions:(id)a6;
- (SUCorePolicy)initWithSoftwareUpdateAssetType:(id)a3 documentationAssetType:(id)a4 usingPolicies:(int64_t)a5 usingExtensions:(id)a6;
- (id)assetTypeSummary;
- (id)constructDocumentationMAAssetQueryWithDocID:(id)a3 purpose:(id)a4;
- (id)constructMADocumentationAssetDownloadOptionsWithUUID:(id)a3;
- (id)constructMADocumentationCatalogDownloadOptionsWithUUID:(id)a3 usingDescriptor:(id)a4;
- (id)constructMASoftwareUpdateAssetDownloadOptionsWithUUID:(id)a3;
- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)a3 assetAudience:(id)a4;
- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mdmPathName;
- (id)requestedProductMarketingVersion;
- (id)setUpdateMetricEventFieldsFromDictionary:(id)a3;
- (id)stringForQoS:(int)a3;
- (id)summary;
- (int64_t)delayPeriodDays;
- (void)encodeWithCoder:(id)a3;
- (void)selectDocumentationAsset:(id *)a3 fromAssetQuery:(id)a4;
- (void)selectSoftwareUpdateMajorPrimaryAsset:(id *)a3 majorSecondaryAsset:(id *)a4 minorPrimaryAsset:(id *)a5 minorSecondaryAsset:(id *)a6 fromAssetQuery:(id)a7;
- (void)selectSoftwareUpdatePrimaryAsset:(id *)a3 secondaryAsset:(id *)a4 fromAssetQuery:(id)a5;
- (void)updateApplyOptionsWithExtensions:(id)a3;
- (void)updateRollbackOptionsWithExtensions:(id)a3;
@end

@implementation SUCorePolicy

- (SUCorePolicy)initWithSoftwareUpdateAssetType:(id)a3 documentationAssetType:(id)a4 usingPolicies:(int64_t)a5 usingExtensions:(id)a6
{
  v118 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v114.receiver = self;
  v114.super_class = SUCorePolicy;
  v13 = [(SUCorePolicy *)&v114 init];
  if (v13)
  {
    v14 = [MEMORY[0x277D64460] sharedLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x277D64418] sharedDevice];
      v17 = [v16 summary];
      *buf = 138543362;
      v117 = v17;
      _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "[POLICY] Using SUCoreDevice for policy: %{public}@", buf, 0xCu);
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(v13 + 5) = a5;
    v19 = objc_alloc_init(SUCorePolicySoftwareUpdateScan);
    v20 = *(v13 + 6);
    *(v13 + 6) = v19;

    v21 = objc_alloc_init(SUCorePolicyDocumentationScan);
    v22 = *(v13 + 7);
    *(v13 + 7) = v21;

    v23 = objc_alloc_init(SUCorePolicyDocumentationDownload);
    v24 = *(v13 + 8);
    *(v13 + 8) = v23;

    v25 = -[SUCorePolicyLoadBrain initWithSkipPhaseSet:]([SUCorePolicyLoadBrain alloc], "initWithSkipPhaseSet:", ([v13 specifiedUsedPolicies] & 1) == 0);
    v26 = *(v13 + 9);
    *(v13 + 9) = v25;

    v27 = -[SUCorePolicyPreflightDownloadSU initWithSkipPhaseSet:]([SUCorePolicyPreflightDownloadSU alloc], "initWithSkipPhaseSet:", ([v13 specifiedUsedPolicies] & 2) == 0);
    v28 = *(v13 + 10);
    *(v13 + 10) = v27;

    v29 = -[SUCorePolicySoftwareUpdateDownload initWithSkipPhaseSet:]([SUCorePolicySoftwareUpdateDownload alloc], "initWithSkipPhaseSet:", ([v13 specifiedUsedPolicies] & 4) == 0);
    v30 = *(v13 + 11);
    *(v13 + 11) = v29;

    v31 = -[SUCorePolicyPrepare initWithSkipPhaseSet:]([SUCorePolicyPrepare alloc], "initWithSkipPhaseSet:", ([v13 specifiedUsedPolicies] & 8) == 0);
    v32 = *(v13 + 12);
    *(v13 + 12) = v31;

    v33 = -[SUCorePolicySuspend initWithSkipPhaseSet:]([SUCorePolicySuspend alloc], "initWithSkipPhaseSet:", ([v13 specifiedUsedPolicies] & 0x10) == 0);
    v34 = *(v13 + 13);
    *(v13 + 13) = v33;

    v35 = -[SUCorePolicyResume initWithSkipPhaseSet:]([SUCorePolicyResume alloc], "initWithSkipPhaseSet:", ([v13 specifiedUsedPolicies] & 0x20) == 0);
    v36 = *(v13 + 14);
    *(v13 + 14) = v35;

    v37 = -[SUCorePolicyApply initWithSkipPhaseSet:]([SUCorePolicyApply alloc], "initWithSkipPhaseSet:", ([v13 specifiedUsedPolicies] & 0x40) == 0);
    v38 = *(v13 + 15);
    *(v13 + 15) = v37;

    v39 = objc_alloc_init(SUCorePolicyPreflightWakeup);
    v40 = *(v13 + 17);
    *(v13 + 17) = v39;

    v41 = objc_alloc_init(SUCorePolicyPreflightPrerequisiteCheck);
    v42 = *(v13 + 18);
    *(v13 + 18) = v41;

    v43 = objc_alloc_init(SUCorePolicyPreflightPersonalize);
    v44 = *(v13 + 19);
    *(v13 + 19) = v43;

    v45 = objc_alloc_init(SUCorePolicyPreflightFDRRecovery);
    v46 = *(v13 + 20);
    *(v13 + 20) = v45;

    v47 = objc_alloc_init(SUCorePolicyRollback);
    v48 = *(v13 + 16);
    *(v13 + 16) = v47;

    if (v10)
    {
      v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v10];
    }

    else
    {
      v49 = 0;
    }

    v50 = *(v13 + 21);
    *(v13 + 21) = v49;

    if (v11)
    {
      v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v11];
    }

    else
    {
      v51 = 0;
    }

    v52 = *(v13 + 22);
    *(v13 + 22) = v51;

    v53 = *(v13 + 23);
    *(v13 + 23) = 0;

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v109 = v12;
    v54 = v12;
    v55 = [v54 countByEnumeratingWithState:&v110 objects:v115 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v111;
      do
      {
        v58 = 0;
        do
        {
          if (*v111 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = [*(*(&v110 + 1) + 8 * v58) copyWithZone:0];
          [v18 addObject:v59];

          ++v58;
        }

        while (v56 != v58);
        v56 = [v54 countByEnumeratingWithState:&v110 objects:v115 count:16];
      }

      while (v56);
    }

    v60 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v18];
    v61 = *(v13 + 54);
    *(v13 + 54) = v60;

    v62 = [MEMORY[0x277D64418] sharedDevice];
    v63 = [v62 buildVersion];
    v64 = *(v13 + 24);
    *(v13 + 24) = v63;

    v65 = [MEMORY[0x277D64418] sharedDevice];
    v66 = [v65 productVersion];
    v67 = *(v13 + 25);
    *(v13 + 25) = v66;

    v68 = [MEMORY[0x277D64418] sharedDevice];
    v69 = [v68 restoreVersion];
    v70 = *(v13 + 26);
    *(v13 + 26) = v69;

    v71 = *(v13 + 27);
    *(v13 + 27) = 0;

    v72 = [MEMORY[0x277D64418] sharedDevice];
    v73 = [v72 sfrBuildVersion];
    v74 = *(v13 + 28);
    *(v13 + 28) = v73;

    v75 = [MEMORY[0x277D64418] sharedDevice];
    v76 = [v75 deviceClass];
    v77 = *(v13 + 29);
    *(v13 + 29) = v76;

    v78 = [MEMORY[0x277D64418] sharedDevice];
    v79 = [v78 hwModelString];
    v80 = *(v13 + 30);
    *(v13 + 30) = v79;

    v81 = [MEMORY[0x277D64418] sharedDevice];
    v82 = [v81 productType];
    v83 = *(v13 + 31);
    *(v13 + 31) = v82;

    v84 = [MEMORY[0x277D64418] sharedDevice];
    v85 = [v84 releaseType];
    v86 = *(v13 + 32);
    *(v13 + 32) = v85;

    v87 = [MEMORY[0x277D64418] sharedDevice];
    v13[12] = [v87 isInternal];

    *(v13 + 2) = 0;
    *(v13 + 13) = 1;
    *(v13 + 7) = -1;
    v88 = *(v13 + 33);
    *(v13 + 33) = 0;

    *(v13 + 15) = 0;
    v89 = *(v13 + 34);
    *(v13 + 34) = 0;

    v90 = *(v13 + 35);
    *(v13 + 35) = 0;

    v91 = *(v13 + 36);
    *(v13 + 36) = 0;

    v92 = *(v13 + 37);
    *(v13 + 37) = 0;

    v93 = *(v13 + 38);
    *(v13 + 38) = 0;

    v94 = *(v13 + 39);
    *(v13 + 39) = 0;

    v95 = *(v13 + 40);
    *(v13 + 40) = 0;

    v96 = *(v13 + 41);
    *(v13 + 41) = 0;

    v97 = *(v13 + 44);
    *(v13 + 44) = 0;

    v98 = *(v13 + 45);
    *(v13 + 45) = 0;

    v99 = *(v13 + 46);
    *(v13 + 46) = 0;

    *(v13 + 17) = 256;
    v100 = *(v13 + 47);
    *(v13 + 47) = 0;

    v101 = *(v13 + 48);
    *(v13 + 48) = 0;

    v102 = *(v13 + 49);
    *(v13 + 49) = 0;

    v13[21] = 0;
    v103 = *(v13 + 50);
    *(v13 + 50) = 0;

    *(v13 + 8) = 0;
    *(v13 + 22) = 0;
    v13[26] = 0;
    v104 = *(v13 + 51);
    *(v13 + 51) = 0;

    v105 = *(v13 + 52);
    *(v13 + 52) = 0;

    v106 = *(v13 + 53);
    *(v13 + 53) = 0;

    *(v13 + 19) = 0;
    v12 = v109;
  }

  v107 = *MEMORY[0x277D85DE8];
  return v13;
}

- (SUCorePolicy)initWithSoftwareUpdateAssetType:(id)a3 documentationAssetType:(id)a4 updateBrainAssetType:(id)a5 usingExtensions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = MEMORY[0x277CCACA8];
  v14 = a5;
  v15 = [[v13 alloc] initWithFormat:@"this method has been deprecated (and was called with updateBrainAssetType=%@): initWithSoftwareUpdateAssetType:documentationAssetType:updateBrainAssetType:usingExtensions", v14];

  v16 = [MEMORY[0x277D64428] sharedDiag];
  v17 = v16;
  if (v14)
  {
    [v16 trackFault:@"[POLICY] INIT" forReason:v15 withResult:8123 withError:0];

    v18 = 0;
  }

  else
  {
    [v16 trackAnomaly:@"[POLICY] INIT" forReason:v15 withResult:8123 withError:0];

    self = [(SUCorePolicy *)self initWithSoftwareUpdateAssetType:v10 documentationAssetType:v11 usingExtensions:v12];
    v18 = self;
  }

  return v18;
}

- (BOOL)restrictToFull
{
  v2 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v3 = [v2 restrictToFull];

  return v3;
}

- (BOOL)allowSameVersion
{
  v2 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v3 = [v2 allowSameVersion];

  return v3;
}

- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v85 = self;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[POLICY] constructSoftwareUpdateMAAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  v7 = [(SUCorePolicy *)self softwareUpdateAssetType];

  if (!v7)
  {
    v37 = [MEMORY[0x277D64428] sharedDiag];
    [v37 trackAnomaly:@"[POLICY] CONSTRUCT_SU_QUERY" forReason:@"softwareUpdateAssetType was unexpectedly nil withResult:client is required to init with softwareUpdateAssetType" withError:{8118, 0}];
    goto LABEL_32;
  }

  v8 = objc_alloc(MEMORY[0x277D289D8]);
  v9 = [(SUCorePolicy *)self softwareUpdateAssetType];
  v7 = [v8 initWithType:v9 andPurpose:v4];

  v10 = [MEMORY[0x277CBEB68] null];
  v11 = [@"|" stringByAppendingFormat:@"purpose:%@|", v4];
  v12 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  if (([v12 restrictToFull] & 1) != 0 || (-[SUCorePolicy prerequisiteProductVersion](self, "prerequisiteProductVersion"), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
  }

  else
  {
    v14 = v13;
    v15 = [(SUCorePolicy *)self prerequisiteBuildVersion];

    if (v15)
    {
      v16 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
      v17 = [v16 restrictToIncremental];

      v18 = MEMORY[0x277CBEB18];
      v19 = [(SUCorePolicy *)self prerequisiteBuildVersion];
      v20 = v19;
      if (v17)
      {
        v21 = [v18 arrayWithObjects:{v19, 0}];
        [v7 addKeyValueArray:@"PrerequisiteBuild" with:v21];

        v22 = MEMORY[0x277CBEB18];
        v23 = [(SUCorePolicy *)self prerequisiteProductVersion];
        v24 = [v22 arrayWithObjects:{v23, 0}];
        [v7 addKeyValueArray:@"PrerequisiteOSVersion" with:v24];

        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        v26 = [(SUCorePolicy *)self prerequisiteBuildVersion];
        v27 = [(SUCorePolicy *)self prerequisiteProductVersion];
        v28 = [v25 initWithFormat:@"prerequisite:(incr)%@:%@|", v26, v27];
      }

      else
      {
        v70 = [v18 arrayWithObjects:{v10, v19, 0}];
        [v7 addKeyValueArray:@"PrerequisiteBuild" with:v70];

        v71 = MEMORY[0x277CBEB18];
        v72 = [(SUCorePolicy *)self prerequisiteProductVersion];
        v73 = [v71 arrayWithObjects:{v10, v72, 0}];
        [v7 addKeyValueArray:@"PrerequisiteOSVersion" with:v73];

        v74 = objc_alloc(MEMORY[0x277CCACA8]);
        v26 = [(SUCorePolicy *)self prerequisiteBuildVersion];
        v27 = [(SUCorePolicy *)self prerequisiteProductVersion];
        v28 = [v74 initWithFormat:@"prerequisite:%@:%@|", v26, v27];
      }

      v75 = v28;
      v31 = [v11 stringByAppendingString:v28];

      v11 = v26;
      goto LABEL_11;
    }
  }

  v29 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
  [v7 addKeyValueArray:@"PrerequisiteBuild" with:v29];

  v30 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
  [v7 addKeyValueArray:@"PrerequisiteOSVersion" with:v30];

  v31 = [v11 stringByAppendingString:@"prerequisite:(full)|"];
LABEL_11:

  v32 = [(SUCorePolicy *)self hwModelStr];

  v33 = objc_alloc(MEMORY[0x277CBEB18]);
  v34 = v33;
  if (v32)
  {
    v35 = [(SUCorePolicy *)self hwModelStr];
    v36 = [v34 initWithObjects:{v10, v35, 0}];
    [v7 addKeyValueArray:@"SupportedDeviceModels" with:v36];
  }

  else
  {
    v35 = [v33 initWithObjects:{v10, 0}];
    [v7 addKeyValueArray:@"SupportedDeviceModels" with:v35];
  }

  v38 = objc_alloc(MEMORY[0x277CCACA8]);
  v39 = [(SUCorePolicy *)self hwModelStr];
  v40 = [v38 initWithFormat:@"hwModelStr:%@|", v39];
  v41 = [v31 stringByAppendingString:v40];

  v42 = [(SUCorePolicy *)self productType];

  if (v42)
  {
    v43 = objc_alloc(MEMORY[0x277CBEB18]);
    v44 = [(SUCorePolicy *)self productType];
    v45 = [v43 initWithObjects:{v10, v44, 0}];
    [v7 addKeyValueArray:@"SupportedDevices" with:v45];
  }

  v46 = objc_alloc(MEMORY[0x277CCACA8]);
  v47 = [(SUCorePolicy *)self productType];
  v48 = [v46 initWithFormat:@"productType:%@|", v47];
  v49 = [v41 stringByAppendingString:v48];

  v50 = [(SUCorePolicy *)self releaseType];

  v78 = v4;
  if (v50)
  {
    v51 = [(SUCorePolicy *)self releaseType];
    [v7 addKeyValuePair:@"ReleaseType" with:v51];

    v52 = objc_alloc(MEMORY[0x277CCACA8]);
    v53 = [(SUCorePolicy *)self releaseType];
    v54 = [v52 initWithFormat:@"releaseType:%@|", v53];
    v55 = [v49 stringByAppendingString:v54];

    v49 = v53;
  }

  else
  {
    v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v10, 0}];
    [v7 addKeyValueArray:@"ReleaseType" with:v56];

    v55 = [v49 stringByAppendingString:@"releaseType:customer|"];
  }

  v77 = v10;

  v57 = [MEMORY[0x277D64460] sharedLogger];
  v58 = [v57 oslog];

  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v85 = v55;
    _os_log_impl(&dword_23193C000, v58, OS_LOG_TYPE_DEFAULT, "[POLICY] querying SU metadata: %{public}@", buf, 0xCu);
  }

  v76 = v55;

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v59 = [(SUCorePolicy *)self policyExtensions];
  v60 = [v59 countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v80;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v80 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v79 + 1) + 8 * i);
        v65 = [MEMORY[0x277D64460] sharedLogger];
        v66 = [v65 oslog];

        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = [v64 extensionName];
          *buf = 138543362;
          v85 = v67;
          _os_log_impl(&dword_23193C000, v66, OS_LOG_TYPE_DEFAULT, "[POLICY] extending query for extension %{public}@", buf, 0xCu);
        }

        [v64 extendSoftwareUpdateMAAssetQuery:v7];
      }

      v61 = [v59 countByEnumeratingWithState:&v79 objects:v83 count:16];
    }

    while (v61);
  }

  v37 = v77;
  v4 = v78;
LABEL_32:

  v68 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)constructDocumentationMAAssetQueryWithDocID:(id)a3 purpose:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = self;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY] constructDocumentationMAAssetQueryWithDocID for policy: %{public}@", buf, 0xCu);
  }

  v10 = [(SUCorePolicy *)self documentationAssetType];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D289D8]);
    v12 = [(SUCorePolicy *)self documentationAssetType];
    v10 = [v11 initWithType:v12 andPurpose:v7];

    [v10 addKeyValuePair:@"SUDocumentationID" with:v6];
    v13 = [(SUCorePolicy *)self deviceClass];
    [v10 addKeyValuePair:@"Device" with:v13];

    v34 = v6;
    v14 = [@"|" stringByAppendingFormat:@"documentationID:%@|", v6];
    v15 = [(SUCorePolicy *)self deviceClass];
    v16 = [v14 stringByAppendingFormat:@"deviceClass:%@|", v15];

    v33 = v7;
    v17 = [v16 stringByAppendingFormat:@"purpose:%@|", v7];

    v18 = [MEMORY[0x277D64460] sharedLogger];
    v19 = [v18 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v17;
      _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "[POLICY] documentation asset query options: %{public}@", buf, 0xCu);
    }

    v32 = v17;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = [(SUCorePolicy *)self policyExtensions];
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v35 + 1) + 8 * i);
          v26 = [MEMORY[0x277D64460] sharedLogger];
          v27 = [v26 oslog];

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v25 extensionName];
            *buf = 138543362;
            v41 = v28;
            _os_log_impl(&dword_23193C000, v27, OS_LOG_TYPE_DEFAULT, "[POLICY] extending documentation options for extension %{public}@", buf, 0xCu);
          }

          [v25 extendDocumentationMAAssetQuery:v10];
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v22);
    }

    v7 = v33;
    v6 = v34;
    v29 = v32;
  }

  else
  {
    v29 = [MEMORY[0x277D64428] sharedDiag];
    [v29 trackAnomaly:@"[POLICY] CONSTRUCT_DOC_QUERY" forReason:@"documentationAssetType was unexpectedly nil withResult:client is required to init with documentationAssetType" withError:{8118, 0}];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)selectSoftwareUpdatePrimaryAsset:(id *)a3 secondaryAsset:(id *)a4 fromAssetQuery:(id)a5
{
  v138 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v134 = self;
    _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[POLICY] selectSoftwareUpdatePrimaryAsset:secondaryAsset:fromAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  if (!a3)
  {
    v14 = [MEMORY[0x277D64428] sharedDiag];
    v15 = v14;
    v16 = @"selectSoftwareUpdatePrimaryAsset called with unexpected nil primaryAsset param";
LABEL_13:
    [v14 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v16 withResult:8102 withError:0];
    goto LABEL_92;
  }

  if (!a4)
  {
    v14 = [MEMORY[0x277D64428] sharedDiag];
    v15 = v14;
    v16 = @"selectSoftwareUpdatePrimaryAsset called with unexpected nil secondaryAsset param";
    goto LABEL_13;
  }

  v11 = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (!v11)
  {
    v17 = [(SUCorePolicy *)self prerequisiteBuildVersion];
    if (v17)
    {

LABEL_16:
      v15 = [MEMORY[0x277D64428] sharedDiag];
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = [(SUCorePolicy *)self prerequisiteProductVersion];
      v20 = [(SUCorePolicy *)self prerequisiteBuildVersion];
      v21 = [v18 initWithFormat:@"selectSoftwareUpdatePrimaryAsset called with unexpected nil/non-nil values for prerequisiteProductVersion (%@) and prerequisiteBuildVersion (%@)", v19, v20];
      [v15 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v21 withResult:8116 withError:0];

      goto LABEL_92;
    }
  }

  v12 = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (v12)
  {
    v13 = [(SUCorePolicy *)self prerequisiteBuildVersion];

    if (v11)
    {
    }

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v11)
    {
    }
  }

  v15 = [v8 SUCoreBorder_results];
  v22 = [v15 count];
  v23 = [MEMORY[0x277D64460] sharedLogger];
  v24 = [v23 oslog];

  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (!v22)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 SU query results (before filtering)", buf, 2u);
    }

    goto LABEL_91;
  }

  v116 = v8;
  if (v25)
  {
    v26 = [v15 count];
    *buf = 134217984;
    v134 = v26;
    _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu SU query results (before filtering)", buf, 0xCu);
  }

  v114 = a3;
  v115 = a4;

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v24 = [(SUCorePolicy *)self policyExtensions];
  v27 = [v24 countByEnumeratingWithState:&v128 objects:v137 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v129;
    do
    {
      v30 = 0;
      v31 = v15;
      do
      {
        if (*v129 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v32 = *(*(&v128 + 1) + 8 * v30);
        v33 = [v32 filterSoftwareUpdateAssetArray:v31];

        v34 = [MEMORY[0x277D64460] sharedLogger];
        v35 = [v34 oslog];

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v33 count];
          v37 = [v32 extensionName];
          *buf = 134218242;
          v134 = v36;
          v135 = 2114;
          v136 = v37;
          _os_log_impl(&dword_23193C000, v35, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
        }

        v15 = v33;
        if (![v33 count])
        {
          v42 = [MEMORY[0x277D64460] sharedLogger];
          v43 = [v42 oslog];

          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, v43, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found, stopping filtering early", buf, 2u);
          }

          v8 = v116;
          goto LABEL_91;
        }

        ++v30;
        v31 = v33;
      }

      while (v28 != v30);
      v28 = [v24 countByEnumeratingWithState:&v128 objects:v137 count:16];
    }

    while (v28);
  }

  v38 = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (!v38 || (v39 = v38, [(SUCorePolicy *)self prerequisiteBuildVersion], v40 = objc_claimAutoreleasedReturnValue(), v40, v39, !v40))
  {
    v44 = v15;
    v45 = [MEMORY[0x277D64460] sharedLogger];
    v46 = [v45 oslog];

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v46, OS_LOG_TYPE_DEFAULT, "[POLICY] not filtering for productVersion or buildVersion in SUCorePolicy", buf, 2u);
    }

    v113 = 0;
    goto LABEL_49;
  }

  v41 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  if ([v41 allowSameVersion])
  {

LABEL_45:
    v48 = MEMORY[0x277CCAC30];
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke;
    v127[3] = &unk_27892C8F8;
    v127[4] = self;
    v49 = v127;
    goto LABEL_47;
  }

  v47 = [(SUCorePolicy *)self isSplatPolicy];

  if (v47)
  {
    goto LABEL_45;
  }

  v48 = MEMORY[0x277CCAC30];
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_615;
  v126[3] = &unk_27892C8F8;
  v126[4] = self;
  v49 = v126;
LABEL_47:
  v113 = [v48 predicateWithBlock:v49];
  v44 = [v15 filteredArrayUsingPredicate:v113];
  v50 = [MEMORY[0x277D64460] sharedLogger];
  v46 = [v50 oslog];

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [v44 count];
    *buf = 134217984;
    v134 = v51;
    _os_log_impl(&dword_23193C000, v46, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for productVersion in SUCorePolicy", buf, 0xCu);
  }

LABEL_49:

  v52 = [v44 sortedArrayUsingComparator:&__block_literal_global_10];
  v53 = [v52 lastObject];
  v54 = [v53 attributes];
  v55 = [v54 safeStringForKey:@"OSVersion"];
  v56 = [SUCorePolicy _cleanProductVersion:v55];

  v57 = MEMORY[0x277CCAC30];
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_2;
  v124[3] = &unk_27892C8F8;
  v58 = v56;
  v125 = v58;
  v59 = [v57 predicateWithBlock:v124];
  v112 = v52;
  v60 = [v52 filteredArrayUsingPredicate:v59];

  v61 = [MEMORY[0x277D64460] sharedLogger];
  v62 = [v61 oslog];

  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [v60 count];
    *buf = 134217984;
    v134 = v63;
    _os_log_impl(&dword_23193C000, v62, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highestProductVersionAssets in SUCorePolicy", buf, 0xCu);
  }

  v111 = v58;
  if (![v60 count])
  {
    v93 = [MEMORY[0x277D64460] sharedLogger];
    v94 = [v93 oslog];

    v110 = v94;
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v94, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found", buf, 2u);
    }

    v95 = 0;
    v96 = 0;
    v91 = 0;
    v24 = 0;
    v8 = v116;
    v97 = v112;
    goto LABEL_90;
  }

  v64 = [v60 sortedArrayUsingComparator:&__block_literal_global_621];
  v65 = [v64 lastObject];
  v66 = [v65 attributes];
  v67 = [v66 objectForKeyedSubscript:@"Build"];

  v68 = MEMORY[0x277CCAC30];
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_2_622;
  v122[3] = &unk_27892C8F8;
  v69 = v67;
  v123 = v69;
  v70 = [v68 predicateWithBlock:v122];
  v71 = [v64 filteredArrayUsingPredicate:v70];

  v72 = [MEMORY[0x277D64460] sharedLogger];
  v73 = [v72 oslog];

  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [v71 count];
    *buf = 134217984;
    v134 = v74;
    _os_log_impl(&dword_23193C000, v73, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highestBuildVersionAssets in SUCorePolicy", buf, 0xCu);
  }

  v109 = v64;
  v110 = v71;
  v108 = v69;
  if (![v71 count])
  {
    v98 = [MEMORY[0x277D64460] sharedLogger];
    v99 = [v98 oslog];

    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v99, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found", buf, 2u);
    }

    v91 = 0;
    v24 = 0;
    v8 = v116;
    goto LABEL_89;
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v75 = v71;
  v76 = [v75 countByEnumeratingWithState:&v118 objects:v132 count:16];
  v117 = v75;
  if (!v76)
  {

    v92 = v115;
    v8 = v116;
LABEL_83:
    v100 = [MEMORY[0x277D64460] sharedLogger];
    v101 = [v100 oslog];

    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v101, OS_LOG_TYPE_DEFAULT, "[POLICY] query to locate update asset did not find pure partial or full; selecting first with highest build", buf, 2u);
    }

    v24 = [v117 firstObject];
    goto LABEL_87;
  }

  v77 = v76;
  v105 = v60;
  v106 = v44;
  v107 = v15;
  v24 = 0;
  v78 = 0;
  v79 = *v119;
  do
  {
    for (i = 0; i != v77; ++i)
    {
      if (*v119 != v79)
      {
        objc_enumerationMutation(v75);
      }

      v81 = *(*(&v118 + 1) + 8 * i);
      if (!v78)
      {
        v84 = [*(*(&v118 + 1) + 8 * i) attributes];
        v85 = [v84 objectForKeyedSubscript:@"PrerequisiteBuild"];
        if (v85)
        {
          v86 = v85;
          v87 = [v81 attributes];
          v88 = [v87 objectForKeyedSubscript:@"PrerequisiteOSVersion"];

          v75 = v117;
          if (v88)
          {
            v78 = v81;
            continue;
          }
        }

        else
        {
        }
      }

      if (!v24)
      {
        v82 = [v81 attributes];
        v83 = [v82 objectForKeyedSubscript:@"PrerequisiteBuild"];
        if (v83)
        {

          v24 = 0;
        }

        else
        {
          v89 = [v81 attributes];
          v90 = [v89 objectForKeyedSubscript:@"PrerequisiteOSVersion"];

          if (v90)
          {
            v24 = 0;
          }

          else
          {
            v24 = v81;
          }

          v75 = v117;
        }
      }
    }

    v77 = [v75 countByEnumeratingWithState:&v118 objects:v132 count:16];
  }

  while (v77);

  if (v78)
  {
    v91 = v24;
    v24 = v78;
    v92 = v115;
    v8 = v116;
    v44 = v106;
    v15 = v107;
    v60 = v105;
    goto LABEL_88;
  }

  v92 = v115;
  v8 = v116;
  v44 = v106;
  v15 = v107;
  v60 = v105;
  if (!v24)
  {
    goto LABEL_83;
  }

LABEL_87:
  v91 = 0;
LABEL_88:
  v102 = v24;
  *v114 = v24;
  v103 = v91;
  *v92 = v91;
LABEL_89:
  v97 = v112;

  v95 = v108;
  v96 = v109;
LABEL_90:

LABEL_91:
LABEL_92:

  v104 = *MEMORY[0x277D85DE8];
}

BOOL __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 attributes];
  v5 = [v4 safeStringForKey:@"Build"];

  v6 = [v3 attributes];

  v7 = [v6 safeStringForKey:@"OSVersion"];
  v8 = [SUCoreDescriptor cleanProductVersion:v7];

  v9 = [*(a1 + 32) prerequisiteProductVersion];
  v10 = [*(a1 + 32) prerequisiteBuildVersion];
  v11 = [SUCorePolicy getAllowSameProductVersionPredicateResultWithAssetOSVersion:v8 assetBuildVersion:v5 prerequisiteProductVersion:v9 prerequisiteBuildVersion:v10];

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) prerequisiteBuildVersion];
    v15 = [*(a1 + 32) prerequisiteProductVersion];
    v16 = v15;
    v20 = 138544386;
    v17 = @"NO";
    v21 = v5;
    if (v11)
    {
      v17 = @"YES";
    }

    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = v17;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering by product version (allow same), assetBuildVersion=%{public}@, assetOSVersion=%{public}@, prerequisiteBuildVersion=%{public}@, prerequisiteProductVersion=%{public}@ | keep=%{public}@", &v20, 0x34u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_615(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 attributes];
  v5 = [v4 safeStringForKey:@"Build"];

  v6 = [v3 attributes];

  v7 = [v6 safeStringForKey:@"OSVersion"];
  v8 = [SUCoreDescriptor cleanProductVersion:v7];

  v9 = [*(a1 + 32) prerequisiteProductVersion];
  v10 = [*(a1 + 32) prerequisiteBuildVersion];
  v11 = [SUCorePolicy getNoAllowSameProductVersionPredicateResultWithAssetOSVersion:v8 assetBuildVersion:v5 prerequisiteProductVersion:v9 prerequisiteBuildVersion:v10];

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) prerequisiteBuildVersion];
    v15 = [*(a1 + 32) prerequisiteProductVersion];
    v16 = v15;
    v20 = 138544386;
    v17 = @"NO";
    v21 = v5;
    if (v11)
    {
      v17 = @"YES";
    }

    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = v17;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering by product version, assetBuildVersion=%{public}@, assetOSVersion=%{public}@, prerequisiteBuildVersion=%{public}@, prerequisiteProductVersion=%{public}@ | keep=%{public}@", &v20, 0x34u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_616(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v5 safeStringForKey:@"OSVersion"];
  v7 = [SUCorePolicy _cleanProductVersion:v6];

  v8 = [v4 attributes];

  v9 = [v8 safeStringForKey:@"OSVersion"];
  v10 = [SUCorePolicy _cleanProductVersion:v9];

  v11 = [v7 compare:v10 options:64];
  return v11;
}

uint64_t __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [a2 attributes];
  v4 = [v3 safeStringForKey:@"OSVersion"];
  v5 = [SUCorePolicy _cleanProductVersion:v4];

  v6 = [MEMORY[0x277D643F8] stringIsEqual:v5 to:*(a1 + 32)];
  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = @"NO";
    v13 = 138543874;
    if (v6)
    {
      v10 = @"YES";
    }

    v14 = v9;
    v15 = 2114;
    v16 = v5;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering highest product version, highestProductVersion=%{public}@, assetProductVersion=%{public}@ | keep=%{public}@", &v13, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_619(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v5 objectForKeyedSubscript:@"Build"];

  v7 = [v4 attributes];

  v8 = [v7 objectForKeyedSubscript:@"Build"];

  v9 = [v6 compare:v8 options:64];
  if (!v9)
  {
    v9 = [v6 compare:v8];
  }

  return v9;
}

uint64_t __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_2_622(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D643F8];
  v5 = [v3 attributes];
  v6 = [v5 safeStringForKey:@"Build"];
  v7 = [v4 stringIsEqual:v6 to:*(a1 + 32)];

  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [v3 attributes];
    v12 = [v11 objectForKeyedSubscript:@"Build"];
    v13 = v12;
    v14 = @"NO";
    v17 = 138543874;
    v18 = v10;
    v19 = 2114;
    if (v7)
    {
      v14 = @"YES";
    }

    v20 = v12;
    v21 = 2114;
    v22 = v14;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering highest build version, highestBuildVersion=%{public}@, assetBuildVersion=%{public}@ | keep=%{public}@", &v17, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)getAllowSameProductVersionPredicateResultWithAssetOSVersion:(id)a3 assetBuildVersion:(id)a4 prerequisiteProductVersion:(id)a5 prerequisiteBuildVersion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 compare:v11 options:64] == 1)
  {
    v13 = 1;
  }

  else if ([v9 compare:v11 options:64])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v10 compare:v12 options:64] != -1;
  }

  return v13;
}

+ (BOOL)getNoAllowSameProductVersionPredicateResultWithAssetOSVersion:(id)a3 assetBuildVersion:(id)a4 prerequisiteProductVersion:(id)a5 prerequisiteBuildVersion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v9 compare:v11 options:64] == 1)
  {
    v13 = 1;
  }

  else if ([v9 compare:v11 options:64])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v10 compare:v12 options:64] == 1;
  }

  return v13;
}

- (void)selectSoftwareUpdateMajorPrimaryAsset:(id *)a3 majorSecondaryAsset:(id *)a4 minorPrimaryAsset:(id *)a5 minorSecondaryAsset:(id *)a6 fromAssetQuery:(id)a7
{
  v192 = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = [MEMORY[0x277D64460] sharedLogger];
  v14 = [v13 oslog];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v188 = self;
    _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "[POLICY] Select major/minor software update for policy: %{public}@", buf, 0xCu);
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (!a3)
  {
    v18 = [MEMORY[0x277D64428] sharedDiag];
    v19 = v18;
    v20 = @"Select major/minor software update called with unexpected nil majorPrimaryAsset param";
LABEL_25:
    [v18 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v20 withResult:8102 withError:0];
    goto LABEL_26;
  }

  if (!a4)
  {
    v18 = [MEMORY[0x277D64428] sharedDiag];
    v19 = v18;
    v20 = @"Select major/minor software update called with unexpected nil majorSecondaryAsset param";
    goto LABEL_25;
  }

  if (!a5)
  {
    v18 = [MEMORY[0x277D64428] sharedDiag];
    v19 = v18;
    v20 = @"Select major/minor software update called with unexpected nil minorPrimaryAsset param";
    goto LABEL_25;
  }

  if (!a6)
  {
    v18 = [MEMORY[0x277D64428] sharedDiag];
    v19 = v18;
    v20 = @"Select major/minor software update called with unexpected nil minorSecondaryAsset param";
    goto LABEL_25;
  }

  v15 = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (!v15)
  {
    v22 = [(SUCorePolicy *)self prerequisiteBuildVersion];
    if (v22)
    {

LABEL_29:
      [MEMORY[0x277D64428] sharedDiag];
      v19 = v23 = self;
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      v25 = [(SUCorePolicy *)v23 prerequisiteProductVersion];
      v26 = [(SUCorePolicy *)v23 prerequisiteBuildVersion];
      v27 = [v24 initWithFormat:@"Select major/minor software update called with unexpected nil/non-nil values for prerequisiteProductVersion (%@) and prerequisiteBuildVersion (%@)", v25, v26];
      [v19 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v27 withResult:8116 withError:0];

      goto LABEL_26;
    }
  }

  v16 = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (v16)
  {
    v17 = [(SUCorePolicy *)self prerequisiteBuildVersion];

    if (v15)
    {
    }

    if (!v17)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (v15)
    {
    }
  }

  v28 = objc_alloc(MEMORY[0x277D64490]);
  v29 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v30 = [v28 initWithRestoreVersion:v29];
  v31 = self;
  v19 = v30;

  v160 = v31;
  v32 = [(SUCorePolicy *)v31 prerequisiteRestoreVersion];

  if (!v32 || !v19)
  {
    v44 = [MEMORY[0x277D64428] sharedDiag];
    [v44 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:@"Select major/minor software update called with unexpected nil prerequisiteRestoreVersion property or inability to parse version string" withResult:8116 withError:0];
    goto LABEL_130;
  }

  v33 = [v12 SUCoreBorder_results];
  v34 = [v33 count];
  v35 = [MEMORY[0x277D64460] sharedLogger];
  v36 = [v35 oslog];

  v37 = v36;
  v38 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
  if (!v34)
  {
    if (v38)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v36, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 SU query results (before filtering)", buf, 2u);
    }

    v44 = v33;
    goto LABEL_129;
  }

  if (v38)
  {
    v39 = [v33 count];
    *buf = 134217984;
    v188 = v39;
    _os_log_impl(&dword_23193C000, v36, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu SU query results (before filtering)", buf, 0xCu);
  }

  v154 = a3;
  v155 = a4;
  v156 = a5;
  v157 = a6;
  v158 = v12;
  v159 = v19;

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v40 = [(SUCorePolicy *)v160 policyExtensions];
  v41 = [v40 countByEnumeratingWithState:&v181 objects:v191 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v182;
    v44 = v33;
    do
    {
      v45 = 0;
      v46 = v44;
      do
      {
        if (*v182 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v47 = *(*(&v181 + 1) + 8 * v45);
        v48 = [v47 filterSoftwareUpdateAssetArray:v46];

        v49 = [MEMORY[0x277D64460] sharedLogger];
        v50 = [v49 oslog];

        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v48 count];
          [v47 extensionName];
          v53 = v52 = v40;
          *buf = 134218242;
          v188 = v51;
          v189 = 2114;
          v190 = v53;
          _os_log_impl(&dword_23193C000, v50, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);

          v40 = v52;
        }

        v44 = v48;
        if (![v48 count])
        {
          v54 = v40;
          v55 = [MEMORY[0x277D64460] sharedLogger];
          v56 = [v55 oslog];

          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, v56, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found, stopping filtering early", buf, 2u);
          }

          v12 = v158;
          v19 = v159;
          v37 = v54;
          goto LABEL_129;
        }

        ++v45;
        v46 = v48;
      }

      while (v42 != v45);
      v42 = [v40 countByEnumeratingWithState:&v181 objects:v191 count:16];
    }

    while (v42);
  }

  else
  {
    v44 = v33;
  }

  v57 = [(SUCorePolicy *)v160 softwareUpdateScanPolicy];
  v58 = [v57 shouldScanForMinorUpdates];

  v153 = v44;
  if (!v58)
  {
    v97 = 0;
    v152 = 0;
    goto LABEL_91;
  }

  v59 = MEMORY[0x277CCAC30];
  v178[0] = MEMORY[0x277D85DD0];
  v178[1] = 3221225472;
  v178[2] = __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke;
  v178[3] = &unk_27892E648;
  v179 = v159;
  v180 = v160;
  v60 = [v59 predicateWithBlock:v178];
  v61 = [v44 filteredArrayUsingPredicate:v60];

  v62 = [MEMORY[0x277D64460] sharedLogger];
  v63 = [v62 oslog];

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = [v61 count];
    *buf = 134217984;
    v188 = v64;
    _os_log_impl(&dword_23193C000, v63, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for minor assets in SUCorePolicy", buf, 0xCu);
  }

  v65 = [v61 sortedArrayUsingComparator:&__block_literal_global_644];
  v66 = [v65 lastObject];
  v67 = [v66 attributes];
  v68 = [v67 safeStringForKey:@"RestoreVersion"];

  v69 = MEMORY[0x277CCAC30];
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_2;
  v176[3] = &unk_27892C8F8;
  v148 = v68;
  v177 = v148;
  v70 = [v69 predicateWithBlock:v176];
  v150 = v65;
  v71 = [v65 filteredArrayUsingPredicate:v70];

  v72 = [MEMORY[0x277D64460] sharedLogger];
  v73 = [v72 oslog];

  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [v71 count];
    *buf = 134217984;
    v188 = v74;
    _os_log_impl(&dword_23193C000, v73, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highest minor assets in SUCorePolicy", buf, 0xCu);
  }

  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v75 = v71;
  v76 = [v75 countByEnumeratingWithState:&v172 objects:v186 count:16];
  if (!v76)
  {

LABEL_84:
    v98 = [MEMORY[0x277D64460] sharedLogger];
    v99 = [v98 oslog];

    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v99, OS_LOG_TYPE_DEFAULT, "[POLICY] query to locate minor update asset did not find pure partial or full; selecting first with highest build", buf, 2u);
    }

    v152 = [v75 firstObject];
    goto LABEL_89;
  }

  v77 = v76;
  v146 = v61;
  v78 = 0;
  v79 = 0;
  v80 = *v173;
  do
  {
    v81 = 0;
    v162 = v77;
    do
    {
      if (*v173 != v80)
      {
        objc_enumerationMutation(v75);
      }

      v82 = *(*(&v172 + 1) + 8 * v81);
      if (!v79)
      {
        v85 = [*(*(&v172 + 1) + 8 * v81) attributes];
        v86 = [v85 safeStringForKey:@"PrerequisiteBuild"];
        if (v86)
        {
          v87 = v86;
          [v82 attributes];
          v88 = v80;
          v89 = v75;
          v91 = v90 = v78;
          v92 = [v91 safeStringForKey:@"PrerequisiteOSVersion"];

          v78 = v90;
          v75 = v89;
          v80 = v88;
          v79 = 0;
          v77 = v162;

          if (v92)
          {
            v79 = v82;
            goto LABEL_76;
          }
        }

        else
        {
        }
      }

      if (v78)
      {
        goto LABEL_76;
      }

      v83 = [v82 attributes];
      v84 = [v83 safeStringForKey:@"PrerequisiteBuild"];
      if (v84)
      {

LABEL_75:
        v78 = 0;
        goto LABEL_76;
      }

      v93 = [v82 attributes];
      v94 = [v93 safeStringForKey:@"PrerequisiteOSVersion"];

      if (v94)
      {
        goto LABEL_75;
      }

      v78 = v82;
LABEL_76:
      ++v81;
    }

    while (v77 != v81);
    v95 = [v75 countByEnumeratingWithState:&v172 objects:v186 count:16];
    v77 = v95;
  }

  while (v95);

  v61 = v146;
  if (v79)
  {
    v96 = v75;
    v97 = v78;
    v152 = v79;
    v44 = v153;
    goto LABEL_90;
  }

  v44 = v153;
  if (!v78)
  {
    goto LABEL_84;
  }

  v152 = v78;
LABEL_89:
  v96 = v75;
  v97 = 0;
LABEL_90:

LABEL_91:
  v19 = v159;
  v100 = 0x277D64000uLL;
  v101 = [(SUCorePolicy *)v160 softwareUpdateScanPolicy];
  v102 = [v101 shouldScanForMajorUpdates];

  if (!v102)
  {
    v136 = [MEMORY[0x277D64460] sharedLogger];
    v137 = [v136 oslog];

    if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
    {
      v138 = [(SUCorePolicy *)v160 softwareUpdateScanPolicy];
      v139 = +[SUCorePolicySoftwareUpdateScan nameForScanUpdateType:](SUCorePolicySoftwareUpdateScan, "nameForScanUpdateType:", [v138 scanUpdateType]);
      *buf = 138543362;
      v188 = v139;
      _os_log_impl(&dword_23193C000, v137, OS_LOG_TYPE_DEFAULT, "[POLICY] not scanning for major software update assets as scan update type is %{public}@", buf, 0xCu);
    }

    v122 = 0;
    v123 = 0;
    goto LABEL_128;
  }

  v103 = MEMORY[0x277CCAC30];
  v170[0] = MEMORY[0x277D85DD0];
  v170[1] = 3221225472;
  v170[2] = __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_645;
  v170[3] = &unk_27892C8F8;
  v171 = v159;
  v104 = [v103 predicateWithBlock:v170];
  v105 = [v44 filteredArrayUsingPredicate:v104];

  v106 = [MEMORY[0x277D64460] sharedLogger];
  v107 = [v106 oslog];

  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    v108 = [v105 count];
    *buf = 134217984;
    v188 = v108;
    _os_log_impl(&dword_23193C000, v107, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for major assets in SUCorePolicy", buf, 0xCu);
  }

  v161 = v105;
  v109 = [v105 sortedArrayUsingComparator:&__block_literal_global_648];
  v110 = [v109 lastObject];
  v111 = [v110 attributes];
  v112 = [v111 safeStringForKey:@"RestoreVersion"];

  v113 = MEMORY[0x277CCAC30];
  v168[0] = MEMORY[0x277D85DD0];
  v168[1] = 3221225472;
  v168[2] = __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_2_649;
  v168[3] = &unk_27892C8F8;
  v149 = v112;
  v169 = v149;
  v114 = [v113 predicateWithBlock:v168];
  v151 = v109;
  v115 = [v109 filteredArrayUsingPredicate:v114];

  v116 = [MEMORY[0x277D64460] sharedLogger];
  v117 = [v116 oslog];

  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
  {
    v118 = [v115 count];
    *buf = 134217984;
    v188 = v118;
    _os_log_impl(&dword_23193C000, v117, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highest major assets in SUCorePolicy", buf, 0xCu);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v119 = v115;
  v120 = [v119 countByEnumeratingWithState:&v164 objects:v185 count:16];
  v163 = v119;
  if (!v120)
  {

    v44 = v153;
LABEL_121:
    v140 = [*(v100 + 1120) sharedLogger];
    v141 = [v140 oslog];

    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v141, OS_LOG_TYPE_DEFAULT, "[POLICY] query to locate major update asset did not find pure partial or full; selecting first with highest build", buf, 2u);
    }

    v119 = v163;
    v122 = [v163 firstObject];
    goto LABEL_126;
  }

  v121 = v120;
  v147 = v97;
  v122 = 0;
  v123 = 0;
  v124 = *v165;
  while (2)
  {
    v125 = 0;
    while (2)
    {
      if (*v165 != v124)
      {
        objc_enumerationMutation(v119);
      }

      v126 = *(*(&v164 + 1) + 8 * v125);
      if (v122)
      {
        goto LABEL_102;
      }

      v129 = [*(*(&v164 + 1) + 8 * v125) attributes];
      v130 = [v129 safeStringForKey:@"PrerequisiteBuild"];
      if (!v130)
      {

        goto LABEL_102;
      }

      v131 = v130;
      v132 = [v126 attributes];
      v133 = [v132 safeStringForKey:@"PrerequisiteOSVersion"];

      v119 = v163;
      if (!v133)
      {
LABEL_102:
        if (!v123)
        {
          v127 = [v126 attributes];
          v128 = [v127 safeStringForKey:@"PrerequisiteBuild"];
          if (v128)
          {

            v123 = 0;
          }

          else
          {
            v134 = [v126 attributes];
            v135 = [v134 safeStringForKey:@"PrerequisiteOSVersion"];

            if (v135)
            {
              v123 = 0;
            }

            else
            {
              v123 = v126;
            }

            v119 = v163;
          }
        }
      }

      else
      {
        v122 = v126;
      }

      if (v121 != ++v125)
      {
        continue;
      }

      break;
    }

    v121 = [v119 countByEnumeratingWithState:&v164 objects:v185 count:16];
    if (v121)
    {
      continue;
    }

    break;
  }

  if (v122)
  {
    v19 = v159;
    v44 = v153;
    v97 = v147;
    goto LABEL_127;
  }

  v19 = v159;
  v44 = v153;
  v100 = 0x277D64000;
  v97 = v147;
  if (!v123)
  {
    goto LABEL_121;
  }

  v122 = v123;
LABEL_126:
  v123 = 0;
LABEL_127:

  v137 = v171;
LABEL_128:

  v142 = v122;
  *v154 = v122;
  v143 = v123;
  *v155 = v123;
  v37 = v152;
  v144 = v152;
  *v156 = v152;
  v145 = v97;
  *v157 = v97;

  v12 = v158;
LABEL_129:

LABEL_130:
LABEL_26:

  v21 = *MEMORY[0x277D85DE8];
}

BOOL __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [a2 attributes];
  v4 = [v3 safeStringForKey:@"RestoreVersion"];

  v5 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v4];
  if ([*(a1 + 32) isComparable:v5] && (v6 = objc_msgSend(*(a1 + 32), "majorVersion"), v6 == objc_msgSend(v5, "majorVersion")))
  {
    v7 = [*(a1 + 32) compare:v5];
    v8 = [*(a1 + 40) softwareUpdateScanPolicy];
    v9 = [v8 allowSameVersion];

    if (v9)
    {
      v10 = (v7 + 1) < 2;
    }

    else
    {
      v10 = v7 == -1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277D64460] sharedLogger];
  v12 = [v11 oslog];

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) softwareUpdateScanPolicy];
    if ([v13 allowSameVersion])
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = [*(a1 + 32) summary];
    v16 = [v5 summary];
    v17 = v16;
    v21 = 138544130;
    if (v10)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v22 = v14;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v16;
    v27 = 2114;
    v28 = v18;
    _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering for minor assets only: allowSame:%{public}@ currentRestoreVersion=%{public}@ assetRestoreVersion=%{public}@ | keep=%{public}@", &v21, 0x2Au);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_642(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v5 safeStringForKey:@"RestoreVersion"];

  v7 = [v4 attributes];

  v8 = [v7 safeStringForKey:@"RestoreVersion"];

  v9 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v6];
  v10 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v8];
  v11 = [v9 compare:v10];

  return v11;
}

uint64_t __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 attributes];
  v4 = [v3 safeStringForKey:@"RestoreVersion"];

  v5 = [MEMORY[0x277D643F8] stringIsEqual:*(a1 + 32) to:v4];
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = @"NO";
    v12 = 138543874;
    if (v5)
    {
      v9 = @"YES";
    }

    v13 = v8;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering highest minor restore version, highestMinorRestoreVersion=%{public}@, assetRestoreVersion=%{public}@ | keep=%{public}@", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_645(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 attributes];
  v4 = [v3 safeStringForKey:@"RestoreVersion"];

  v5 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v4];
  if ([*(a1 + 32) isComparable:v5])
  {
    v6 = [*(a1 + 32) majorVersion];
    v7 = v6 < [v5 majorVersion];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) summary];
    v11 = [v5 summary];
    v12 = v11;
    v13 = @"NO";
    v16 = 138543874;
    v17 = v10;
    v18 = 2114;
    if (v7)
    {
      v13 = @"YES";
    }

    v19 = v11;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering for major assets only, currentRestoreVersion=%{public}@, assetRestoreVersion=%{public}@ | keep=%{public}@", &v16, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_646(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 attributes];
  v6 = [v5 safeStringForKey:@"RestoreVersion"];

  v7 = [v4 attributes];

  v8 = [v7 safeStringForKey:@"RestoreVersion"];

  v9 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v6];
  v10 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v8];
  v11 = [v9 compare:v10];

  return v11;
}

uint64_t __127__SUCorePolicy_selectSoftwareUpdateMajorPrimaryAsset_majorSecondaryAsset_minorPrimaryAsset_minorSecondaryAsset_fromAssetQuery___block_invoke_2_649(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a2 attributes];
  v4 = [v3 safeStringForKey:@"RestoreVersion"];

  v5 = [MEMORY[0x277D643F8] stringIsEqual:*(a1 + 32) to:v4];
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = @"NO";
    v12 = 138543874;
    if (v5)
    {
      v9 = @"YES";
    }

    v13 = v8;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering highest major restore version, highestMajorRestoreVersion=%{public}@, assetRestoreVersion=%{public}@ | keep=%{public}@", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)selectDocumentationAsset:(id *)a3 fromAssetQuery:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v38 = self;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "[POLICY] selectDocumentationAsset:fromAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  if (!a3)
  {
    v9 = [MEMORY[0x277D64428] sharedDiag];
    [v9 trackError:@"[POLICY] SELECT_DOC_ASSET" forReason:@"selectDocumentationAsset called with unexpected nil docAsset param" withResult:8102 withError:0];
    goto LABEL_27;
  }

  v9 = [v6 SUCoreBorder_results];
  if (![v9 count])
  {
    v25 = [MEMORY[0x277D64460] sharedLogger];
    v26 = [v25 oslog];

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:

      goto LABEL_27;
    }

    *buf = 0;
    v27 = "[POLICY] 0 doc query results (before filtering)";
LABEL_25:
    _os_log_impl(&dword_23193C000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
    goto LABEL_26;
  }

  v31 = a3;
  v32 = v6;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v30 = self;
  v10 = [(SUCorePolicy *)self policyExtensions];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    while (2)
    {
      v14 = 0;
      v15 = v9;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v33 + 1) + 8 * v14);
        v9 = [v16 filterDocumentationAssetArray:v15];

        v17 = [MEMORY[0x277D64460] sharedLogger];
        v18 = [v17 oslog];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v9 count];
          v20 = [v16 extensionName];
          *buf = 134218242;
          v38 = v19;
          v39 = 2114;
          v40 = v20;
          _os_log_impl(&dword_23193C000, v18, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu doc assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
        }

        if (![v9 count])
        {
          v23 = [MEMORY[0x277D64460] sharedLogger];
          v24 = [v23 oslog];

          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 doc assets found, stopping filtering early", buf, 2u);
          }

          v6 = v32;
          goto LABEL_27;
        }

        ++v14;
        v15 = v9;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if ([v9 count] >= 2)
  {
    v21 = [MEMORY[0x277D64428] sharedDiag];
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ doc query with %lu results when only 1 expected", v30, objc_msgSend(v9, "count")];
    [v21 trackAnomaly:@"[POLICY] SELECT_DOC_ASSET" forReason:v22 withResult:8116 withError:0];
  }

  v6 = v32;
  if (![v9 count])
  {
    v29 = [MEMORY[0x277D64460] sharedLogger];
    v26 = [v29 oslog];

    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v27 = "[POLICY] 0 doc assets found";
    goto LABEL_25;
  }

  *v31 = [v9 objectAtIndexedSubscript:0];
LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
}

- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)a3 assetAudience:(id)a4
{
  v197 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v194 = self;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMASoftwareUpdateCatalogDownloadOptionsWithUUID for policy: %{public}@", buf, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277D28A18]);
  if (!v10)
  {
    v11 = [MEMORY[0x277D64428] sharedDiag];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create software update catalog download options", self];
    [v11 trackError:@"SU_CATALOG_DOWNLOAD_OPTIONS" forReason:v18 withResult:8100 withError:0];
LABEL_38:

    v82 = @"|";
    v83 = v11;
    v11 = 0;
    goto LABEL_90;
  }

  v11 = v10;
  v12 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v13 = [v12 additionalServerParams];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v15 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    v16 = [v15 additionalServerParams];
    v17 = [v14 initWithDictionary:v16];
    [v11 setAdditionalServerParams:v17];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v11 setAdditionalServerParams:v15];
  }

  v19 = [v11 additionalServerParams];

  if (!v19)
  {
    v18 = [MEMORY[0x277D64428] sharedDiag];
    v81 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create software update catalog download options additional server params", self];
    [v18 trackError:@"SU_CATALOG_DOWNLOAD_OPTIONS" forReason:v81 withResult:8100 withError:0];

    goto LABEL_38;
  }

  v20 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v21 = [v20 specifiedFields];

  if ((v21 & 0x100) != 0)
  {
    v22 = [v11 additionalServerParams];
    v23 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    v24 = [v23 sessionId];
    [v22 setSafeObject:v24 forKey:@"SessionId"];
  }

  v25 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v26 = [v25 specifiedFields];

  if ((v26 & 0x200) != 0)
  {
    v27 = [v11 additionalServerParams];
    v28 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    v29 = [v28 rampingScanType];
    [v27 setSafeObject:v29 forKey:@"DeviceCheck"];
  }

  [v11 setSessionId:v6];
  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  v31 = [v11 sessionId];
  v32 = [v30 initWithFormat:@"scanUUID:%@|", v31];
  v33 = [@"|" stringByAppendingString:v32];

  v34 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  [v11 setDiscretionary:{objc_msgSend(v34, "discretionary")}];

  v35 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  LOWORD(v32) = [v35 specifiedFields];

  if ((v32 & 0x1000) != 0)
  {
    v36 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [v11 setDisableUI:{objc_msgSend(v36, "disableUI")}];
  }

  v37 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v38 = [v37 specifiedFields];

  if ((v38 & 2) != 0)
  {
    v39 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [v11 setAllowsCellularAccess:{objc_msgSend(v39, "allowsCellular")}];
  }

  v40 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v41 = [v40 specifiedFields];

  if ((v41 & 8) != 0)
  {
    v42 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [v11 setRequiresPowerPluggedIn:{objc_msgSend(v42, "requiresPowerPluggedIn")}];
  }

  v43 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v44 = [v43 specifiedFields];

  if ((v44 & 0x40) != 0)
  {
    v45 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [v11 setAllowSameVersion:{objc_msgSend(v45, "allowSameVersion")}];
  }

  v187 = v6;
  v46 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v47 = [v46 specifiedFields];

  if ((v47 & 0x800) != 0)
  {
    v48 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [v11 setLiveServerCatalogOnly:{objc_msgSend(v48, "liveServerCatalogOnly")}];
  }

  v49 = [(SUCorePolicy *)self prerequisiteProductVersion];
  [v11 setPrerequisiteProductVersion:v49];

  v50 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  [v11 setPrerequisiteBuildVersion:v50];

  v51 = [(SUCorePolicy *)self releaseType];
  [v11 setPrerequisiteReleaseType:v51];

  v52 = [v11 additionalServerParams];
  v53 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  [v52 setSafeObject:v53 forKey:@"RestoreVersion"];

  v54 = [v11 additionalServerParams];
  v55 = [(SUCorePolicy *)self targetRestoreVersion];
  [v54 setSafeObject:v55 forKey:@"TargetRestoreVersion"];

  v56 = [v11 additionalServerParams];
  v57 = [(SUCorePolicy *)self installedSFRVersion];
  [v56 setSafeObject:v57 forKey:@"InstalledSFRVersion"];

  v58 = [v11 additionalServerParams];
  v59 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  if ([v59 allowSameVersion])
  {
    v60 = @"true";
  }

  else
  {
    v60 = @"false";
  }

  [v58 setSafeObject:v60 forKey:@"AllowSameBuildVersion"];

  v61 = [v11 additionalServerParams];
  v62 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  if ([v62 allowSameVersion])
  {
    v63 = @"true";
  }

  else
  {
    v63 = @"false";
  }

  [v61 setSafeObject:v63 forKey:@"AllowSameRestoreVersion"];

  v64 = [v11 additionalServerParams];
  v65 = [(SUCorePolicy *)self productType];
  [v64 setSafeObject:v65 forKey:@"ProductType"];

  v66 = [v11 additionalServerParams];
  v67 = [(SUCorePolicy *)self hwModelStr];
  [v66 setSafeObject:v67 forKey:@"HWModelStr"];

  v68 = [v11 additionalServerParams];
  v69 = [(SUCorePolicy *)self deviceClass];
  [v68 setSafeObject:v69 forKey:@"DeviceName"];

  v70 = [v11 additionalServerParams];
  v71 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  [v70 setSafeObject:v71 forKey:@"BuildVersion"];

  v72 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  LOBYTE(v71) = [v72 specifiedFields];

  if ((v71 & 0x80) != 0)
  {
    v75 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [v11 setTimeoutIntervalForResource:{-[NSObject downloadTimeoutSecs](v75, "downloadTimeoutSecs")}];
  }

  else
  {
    if ([(SUCorePolicy *)self isInternal])
    {
      v73 = 60;
    }

    else
    {
      v73 = 30;
    }

    [v11 setTimeoutIntervalForResource:v73];
    v74 = [MEMORY[0x277D64460] sharedLogger];
    v75 = [v74 oslog];

    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
      v77 = [v76 downloadTimeoutSecs];
      v78 = [v11 timeoutIntervalForResource];
      v79 = [(SUCorePolicy *)self isInternal];
      *buf = 67109634;
      v80 = @"YES";
      if (!v79)
      {
        v80 = @"NO";
      }

      *v194 = v77;
      *&v194[4] = 2048;
      *&v194[6] = v78;
      v195 = 2114;
      v196 = v80;
      _os_log_impl(&dword_23193C000, v75, OS_LOG_TYPE_DEFAULT, "[POLICY] downloadTimeoutSecs is %d, setting timeoutIntervalForResource to %ld (isInternal=%{public}@)", buf, 0x1Cu);
    }
  }

  v84 = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (v84)
  {
    v85 = [(SUCorePolicy *)self downloadAuthorizationHeader];
    [v11 setDownloadAuthorizationHeader:v85];
  }

  if (v7)
  {
    v86 = [v7 copy];
    [v11 setLiveAssetAudienceUUID:v86];

    v87 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
    if (v87)
    {
      v88 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
      v89 = [v88 copy];
      [v11 setPurpose:v89];
    }

    else
    {
      v88 = [v7 copy];
      [v11 setPurpose:v88];
    }

    v93 = @"purpose(param):%@|";
    v94 = @"assetAudience(param):%@|";
LABEL_52:

    v96 = [v11 liveAssetAudienceUUID];
    v97 = [v33 stringByAppendingFormat:v94, v96];

    v98 = [v11 purpose];
    v33 = [v97 stringByAppendingFormat:v93, v98];

    goto LABEL_53;
  }

  v90 = [(SUCorePolicy *)self assetAudienceUUID];

  if (v90)
  {
    v91 = [(SUCorePolicy *)self assetAudienceUUID];
    v92 = [v91 copy];
    [v11 setLiveAssetAudienceUUID:v92];

    v87 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
    if (v87)
    {
      [(SUCorePolicy *)self mobileAssetPurposeOverride];
    }

    else
    {
      [(SUCorePolicy *)self assetAudienceUUID];
    }
    v88 = ;
    v95 = [v88 copy];
    [v11 setPurpose:v95];

    v93 = @"purpose(self):%@|";
    v94 = @"assetAudience(self):%@|";
    goto LABEL_52;
  }

LABEL_53:
  v186 = v7;
  v99 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v11 discretionary])
  {
    v100 = @"YES";
  }

  else
  {
    v100 = @"NO";
  }

  v101 = [v99 initWithFormat:@"discretionary:%@|", v100];
  v102 = [v33 stringByAppendingString:v101];

  v103 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v11 allowsCellularAccess])
  {
    v104 = @"YES";
  }

  else
  {
    v104 = @"NO";
  }

  v105 = [v103 initWithFormat:@"allowsCellular:%@|", v104];
  v106 = [v102 stringByAppendingString:v105];

  v107 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v11 requiresPowerPluggedIn])
  {
    v108 = @"YES";
  }

  else
  {
    v108 = @"NO";
  }

  v109 = [v107 initWithFormat:@"requiresPowerPluggedIn:%@|", v108];
  v110 = [v106 stringByAppendingString:v109];

  v111 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v11 allowSameVersion])
  {
    v112 = @"YES";
  }

  else
  {
    v112 = @"NO";
  }

  v113 = [v111 initWithFormat:@"allowSameVersion:%@|", v112];
  v114 = [v110 stringByAppendingString:v113];

  v115 = objc_alloc(MEMORY[0x277CCACA8]);
  v116 = [v11 prerequisiteProductVersion];
  v117 = [v115 initWithFormat:@"prerequisiteProductVersion:%@|", v116];
  v118 = [v114 stringByAppendingString:v117];

  v119 = objc_alloc(MEMORY[0x277CCACA8]);
  v120 = [v11 prerequisiteBuildVersion];
  v121 = [v119 initWithFormat:@"prerequisiteBuildVersion:%@|", v120];
  v122 = [v118 stringByAppendingString:v121];

  v123 = objc_alloc(MEMORY[0x277CCACA8]);
  v124 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v125 = [v123 initWithFormat:@"prerequisiteRestoreVersion:%@|", v124];
  v126 = [v122 stringByAppendingString:v125];

  v127 = objc_alloc(MEMORY[0x277CCACA8]);
  v128 = [(SUCorePolicy *)self targetRestoreVersion];
  v129 = [v127 initWithFormat:@"targetRestoreVersion:%@|", v128];
  v130 = [v126 stringByAppendingString:v129];

  v131 = objc_alloc(MEMORY[0x277CCACA8]);
  v132 = [(SUCorePolicy *)self installedSFRVersion];
  v133 = [v131 initWithFormat:@"installedSFRVersion:%@|", v132];
  v134 = [v130 stringByAppendingString:v133];

  v135 = objc_alloc(MEMORY[0x277CCACA8]);
  v136 = [v11 prerequisiteReleaseType];
  v137 = [v135 initWithFormat:@"prerequisiteReleaseType:%@|", v136];
  v138 = [v134 stringByAppendingString:v137];

  v139 = objc_alloc(MEMORY[0x277CCACA8]);
  v140 = [(SUCorePolicy *)self productType];
  v141 = [v139 initWithFormat:@"productType:%@|", v140];
  v142 = [v138 stringByAppendingString:v141];

  v143 = objc_alloc(MEMORY[0x277CCACA8]);
  v144 = [(SUCorePolicy *)self hwModelStr];
  v145 = [v143 initWithFormat:@"hwModelStr:%@|", v144];
  v146 = [v142 stringByAppendingString:v145];

  v147 = objc_alloc(MEMORY[0x277CCACA8]);
  v148 = [(SUCorePolicy *)self deviceClass];
  v149 = [v147 initWithFormat:@"deviceClass:%@|", v148];
  v150 = [v146 stringByAppendingString:v149];

  v151 = objc_alloc(MEMORY[0x277CCACA8]);
  v152 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v153 = [v151 initWithFormat:@"buildVersion:%@|", v152];
  v154 = [v150 stringByAppendingString:v153];

  v155 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout:%ld|", objc_msgSend(v11, "timeoutIntervalForResource")];
  v156 = [v154 stringByAppendingString:v155];

  v157 = objc_alloc(MEMORY[0x277CCACA8]);
  v158 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v159 = [v158 specifiedFields];
  if ((v159 & 0x100) != 0)
  {
    v154 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    v160 = [v154 sessionId];
  }

  else
  {
    v160 = @"nil";
  }

  v161 = [v157 initWithFormat:@"sessionId:%@|", v160];
  v162 = [v156 stringByAppendingString:v161];

  if ((v159 & 0x100) != 0)
  {
  }

  v163 = objc_alloc(MEMORY[0x277CCACA8]);
  v164 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v165 = [v164 specifiedFields];
  if ((v165 & 0x200) != 0)
  {
    v154 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    v166 = [v154 rampingScanType];
  }

  else
  {
    v166 = @"nil";
  }

  v167 = [v163 initWithFormat:@"rampingScanType:%@|", v166];
  v168 = [v162 stringByAppendingString:v167];

  if ((v165 & 0x200) != 0)
  {
  }

  v169 = objc_alloc(MEMORY[0x277CCACA8]);
  v170 = [v11 liveServerCatalogOnly];
  v171 = @"NO";
  if (v170)
  {
    v171 = @"YES";
  }

  v172 = [v169 initWithFormat:@"liveServerCatalogOnly:%@|", v171];
  v82 = [v168 stringByAppendingString:v172];

  v173 = [MEMORY[0x277D64460] sharedLogger];
  v174 = [v173 oslog];

  if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v194 = v82;
    _os_log_impl(&dword_23193C000, v174, OS_LOG_TYPE_DEFAULT, "[POLICY] software update catalog download options: %{public}@", buf, 0xCu);
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v83 = [(SUCorePolicy *)self policyExtensions];
  v175 = [v83 countByEnumeratingWithState:&v188 objects:v192 count:16];
  if (v175)
  {
    v176 = v175;
    v185 = v82;
    v177 = *v189;
    do
    {
      for (i = 0; i != v176; ++i)
      {
        if (*v189 != v177)
        {
          objc_enumerationMutation(v83);
        }

        v179 = *(*(&v188 + 1) + 8 * i);
        v180 = [MEMORY[0x277D64460] sharedLogger];
        v181 = [v180 oslog];

        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
        {
          v182 = [v179 extensionName];
          *buf = 138543362;
          *v194 = v182;
          _os_log_impl(&dword_23193C000, v181, OS_LOG_TYPE_DEFAULT, "[POLICY] extending software update catalog download options for extension %{public}@", buf, 0xCu);
        }

        [v179 extendMASoftwareUpdateCatalogDownloadOptions:v11];
      }

      v176 = [v83 countByEnumeratingWithState:&v188 objects:v192 count:16];
    }

    while (v176);
    v7 = v186;
    v6 = v187;
    v82 = v185;
  }

  else
  {
    v7 = v186;
    v6 = v187;
  }

LABEL_90:

  v183 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)constructMADocumentationCatalogDownloadOptionsWithUUID:(id)a3 usingDescriptor:(id)a4
{
  v145 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v142 = self;
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMADocumentationCatalogDownloadOptionsWithUUID for policy: %{public}@", buf, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277D28A18]);
  if (!v10)
  {
    v11 = [MEMORY[0x277D64428] sharedDiag];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create documentation catalog download options", self];
    [v11 trackError:@"DOC_CATALOG_DOWNLOAD_OPTIONS" forReason:v18 withResult:8100 withError:0];
LABEL_40:

    v103 = @"|";
    v104 = v11;
    v11 = 0;
    goto LABEL_65;
  }

  v11 = v10;
  v12 = [(SUCorePolicy *)self documentationScanPolicy];
  v13 = [v12 additionalServerParams];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    v15 = [(SUCorePolicy *)self documentationScanPolicy];
    v16 = [v15 additionalServerParams];
    v17 = [v14 initWithDictionary:v16];
    [v11 setAdditionalServerParams:v17];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v11 setAdditionalServerParams:v15];
  }

  v19 = [v11 additionalServerParams];

  if (!v19)
  {
    v18 = [MEMORY[0x277D64428] sharedDiag];
    v102 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create documentation catalog download options additional server params", self];
    [v18 trackError:@"DOC_CATALOG_DOWNLOAD_OPTIONS" forReason:v102 withResult:8100 withError:0];

    goto LABEL_40;
  }

  [v11 setSessionId:v6];
  v20 = [(SUCorePolicy *)self documentationScanPolicy];
  [v11 setDiscretionary:{objc_msgSend(v20, "discretionary")}];

  v21 = [(SUCorePolicy *)self documentationScanPolicy];
  v22 = [v21 specifiedFields];

  if ((v22 & 0x40) != 0)
  {
    v23 = [(SUCorePolicy *)self documentationScanPolicy];
    [v11 setDisableUI:{objc_msgSend(v23, "disableUI")}];
  }

  v24 = [(SUCorePolicy *)self documentationScanPolicy];
  v25 = [v24 specifiedFields];

  if ((v25 & 2) != 0)
  {
    v26 = [(SUCorePolicy *)self documentationScanPolicy];
    [v11 setAllowsCellularAccess:{objc_msgSend(v26, "allowsCellular")}];
  }

  v27 = [(SUCorePolicy *)self documentationScanPolicy];
  v28 = [v27 specifiedFields];

  if ((v28 & 8) != 0)
  {
    v29 = [(SUCorePolicy *)self documentationScanPolicy];
    [v11 setRequiresPowerPluggedIn:{objc_msgSend(v29, "requiresPowerPluggedIn")}];
  }

  v30 = [(SUCorePolicy *)self documentationScanPolicy];
  v31 = [v30 specifiedFields];

  if ((v31 & 0x20) != 0)
  {
    v32 = [(SUCorePolicy *)self documentationScanPolicy];
    [v11 setLiveServerCatalogOnly:{objc_msgSend(v32, "liveServerCatalogOnly")}];
  }

  v135 = v6;
  v33 = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (v33)
  {
    v34 = [(SUCorePolicy *)self downloadAuthorizationHeader];
    [v11 setDownloadAuthorizationHeader:v34];
  }

  v35 = [v11 additionalServerParams];
  v36 = [(SUCorePolicy *)self productType];
  [v35 setSafeObject:v36 forKey:@"ProductType"];

  v37 = [v11 additionalServerParams];
  v38 = [(SUCorePolicy *)self hwModelStr];
  [v37 setSafeObject:v38 forKey:@"HWModelStr"];

  v39 = [v11 additionalServerParams];
  v40 = [(SUCorePolicy *)self deviceClass];
  [v39 setSafeObject:v40 forKey:@"DeviceName"];

  v41 = [v11 additionalServerParams];
  v42 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  [v41 setSafeObject:v42 forKey:@"BuildVersion"];

  v43 = objc_alloc(MEMORY[0x277CCACA8]);
  v44 = [v11 sessionId];
  v45 = [v43 initWithFormat:@"scanUUID:%@|", v44];
  v46 = [@"|" stringByAppendingString:v45];

  v47 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v11 discretionary])
  {
    v48 = @"YES";
  }

  else
  {
    v48 = @"NO";
  }

  v49 = [v47 initWithFormat:@"discretionary:%@|", v48];
  v50 = [v46 stringByAppendingString:v49];

  v51 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v11 allowsCellularAccess])
  {
    v52 = @"YES";
  }

  else
  {
    v52 = @"NO";
  }

  v53 = [v51 initWithFormat:@"allowsCellular:%@|", v52];
  v54 = [v50 stringByAppendingString:v53];

  v55 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v11 requiresPowerPluggedIn])
  {
    v56 = @"YES";
  }

  else
  {
    v56 = @"NO";
  }

  v57 = [v55 initWithFormat:@"requiresPowerPluggedIn:%@|", v56];
  v58 = [v54 stringByAppendingString:v57];

  v59 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v11 liveServerCatalogOnly])
  {
    v60 = @"YES";
  }

  else
  {
    v60 = @"NO";
  }

  v61 = [v59 initWithFormat:@"liveServerCatalogOnly:%@|", v60];
  v62 = [v58 stringByAppendingString:v61];

  v63 = objc_alloc(MEMORY[0x277CCACA8]);
  v64 = [(SUCorePolicy *)self productType];
  v65 = [v63 initWithFormat:@"productType:%@|", v64];
  v66 = [v62 stringByAppendingString:v65];

  v67 = objc_alloc(MEMORY[0x277CCACA8]);
  v68 = [(SUCorePolicy *)self hwModelStr];
  v69 = [v67 initWithFormat:@"hwModelStr:%@|", v68];
  v70 = [v66 stringByAppendingString:v69];

  v71 = objc_alloc(MEMORY[0x277CCACA8]);
  v72 = [(SUCorePolicy *)self deviceClass];
  v73 = [v71 initWithFormat:@"deviceClass:%@|", v72];
  v74 = [v70 stringByAppendingString:v73];

  v75 = objc_alloc(MEMORY[0x277CCACA8]);
  v76 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v77 = [v75 initWithFormat:@"buildVersion:%@|", v76];
  v78 = [v74 stringByAppendingString:v77];

  v79 = [v11 additionalServerParams];
  v80 = [v7 documentationID];
  [v79 setSafeObject:v80 forKey:@"SUDocumentationID"];

  v81 = [v11 additionalServerParams];
  v82 = [(SUCorePolicy *)self deviceClass];
  [v81 setSafeObject:v82 forKey:@"DeviceName"];

  v83 = objc_alloc(MEMORY[0x277CCACA8]);
  v84 = [v11 additionalServerParams];
  v85 = [v84 safeStringForKey:@"SUDocumentationID"];
  v86 = [v83 initWithFormat:@"documentationID:%@", v85];
  v87 = [v78 stringByAppendingString:v86];

  v88 = objc_alloc(MEMORY[0x277CCACA8]);
  v89 = [v11 additionalServerParams];
  v90 = [v89 safeStringForKey:@"DeviceName"];
  v91 = [v88 initWithFormat:@"deviceClass:%@", v90];
  v92 = [v87 stringByAppendingString:v91];

  v93 = [(SUCorePolicy *)self documentationScanPolicy];
  LOBYTE(v89) = [v93 specifiedFields];

  if ((v89 & 0x10) != 0)
  {
    v96 = [(SUCorePolicy *)self documentationScanPolicy];
    [v11 setTimeoutIntervalForResource:{-[NSObject downloadTimeoutSecs](v96, "downloadTimeoutSecs")}];
  }

  else
  {
    if ([(SUCorePolicy *)self isInternal])
    {
      v94 = 60;
    }

    else
    {
      v94 = 30;
    }

    [v11 setTimeoutIntervalForResource:v94];
    v95 = [MEMORY[0x277D64460] sharedLogger];
    v96 = [v95 oslog];

    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      v97 = [(SUCorePolicy *)self documentationScanPolicy];
      v98 = [v97 downloadTimeoutSecs];
      v99 = [v11 timeoutIntervalForResource];
      v100 = [(SUCorePolicy *)self isInternal];
      *buf = 67109634;
      v101 = @"NO";
      if (v100)
      {
        v101 = @"YES";
      }

      *v142 = v98;
      *&v142[4] = 2048;
      *&v142[6] = v99;
      v143 = 2114;
      v144 = v101;
      _os_log_impl(&dword_23193C000, v96, OS_LOG_TYPE_DEFAULT, "[POLICY] downloadTimeoutSecs is %d, setting timeoutIntervalForResource to %ld (isInternal=%{public}@)", buf, 0x1Cu);
    }
  }

  v105 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout:%ld|", objc_msgSend(v11, "timeoutIntervalForResource")];
  v103 = [v92 stringByAppendingString:v105];

  v106 = [v7 assetAudienceUUID];

  if (v106)
  {
    v107 = [v7 assetAudienceUUID];
    v108 = [v107 copy];
    [v11 setLiveAssetAudienceUUID:v108];

    v109 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
    if (v109)
    {
      [(SUCorePolicy *)self mobileAssetPurposeOverride];
    }

    else
    {
      [v7 assetAudienceUUID];
    }
    v113 = ;
    v114 = @"purpose(param):%@";
    v115 = @"liveAssetAudienceUUID(param):%@";
LABEL_52:
    v116 = [v113 copy];
    [v11 setPurpose:v116];

    v117 = [v11 liveAssetAudienceUUID];
    v118 = [(__CFString *)v103 stringByAppendingFormat:v115, v117];

    v119 = [v11 purpose];
    v103 = [v118 stringByAppendingFormat:v114, v119];

    goto LABEL_53;
  }

  v110 = [(SUCorePolicy *)self assetAudienceUUID];

  if (v110)
  {
    v111 = [(SUCorePolicy *)self assetAudienceUUID];
    v112 = [v111 copy];
    [v11 setLiveAssetAudienceUUID:v112];

    v109 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
    if (v109)
    {
      [(SUCorePolicy *)self mobileAssetPurposeOverride];
    }

    else
    {
      [(SUCorePolicy *)self assetAudienceUUID];
    }
    v113 = ;
    v114 = @"purpose(self):%@";
    v115 = @"liveAssetAudienceUUID(self):%@";
    goto LABEL_52;
  }

LABEL_53:
  v120 = [MEMORY[0x277D64460] sharedLogger];
  v121 = [v120 oslog];

  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v142 = v103;
    _os_log_impl(&dword_23193C000, v121, OS_LOG_TYPE_DEFAULT, "[POLICY] documentation catalog download options: %{public}@", buf, 0xCu);
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v104 = [(SUCorePolicy *)self policyExtensions];
  v122 = [v104 countByEnumeratingWithState:&v136 objects:v140 count:16];
  if (v122)
  {
    v123 = v122;
    v134 = v103;
    v124 = v11;
    v125 = v7;
    v126 = *v137;
    do
    {
      for (i = 0; i != v123; ++i)
      {
        if (*v137 != v126)
        {
          objc_enumerationMutation(v104);
        }

        v128 = *(*(&v136 + 1) + 8 * i);
        v129 = [MEMORY[0x277D64460] sharedLogger];
        v130 = [v129 oslog];

        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          v131 = [v128 extensionName];
          *buf = 138543362;
          *v142 = v131;
          _os_log_impl(&dword_23193C000, v130, OS_LOG_TYPE_DEFAULT, "[POLICY] extending documentation catalog download options for extension %{public}@", buf, 0xCu);
        }

        [v128 extendMADocumentationCatalogDownloadOptions:v124 descriptor:v125];
      }

      v123 = [v104 countByEnumeratingWithState:&v136 objects:v140 count:16];
    }

    while (v123);
    v103 = v134;
    v6 = v135;
    v7 = v125;
    v11 = v124;
  }

LABEL_65:

  v132 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)constructMASoftwareUpdateAssetDownloadOptionsWithUUID:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v74 = self;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMASoftwareUpdateAssetDownloadOptionsWithUUID for policy: %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277D28A18]);
  if (!v7)
  {
    v8 = [MEMORY[0x277D64428] sharedDiag];
    v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create software update asset download options", self];
    [v8 trackError:@"SU_ASSET_DOWNLOAD_OPTIONS" forReason:v49 withResult:8100 withError:0];
LABEL_31:

    v48 = @"|";
    v51 = v8;
    v8 = 0;
    goto LABEL_45;
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setAdditionalServerParams:v9];

  v10 = [v8 additionalServerParams];

  if (!v10)
  {
    v49 = [MEMORY[0x277D64428] sharedDiag];
    v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create software update asset download options additional server params", self];
    [v49 trackError:@"SU_ASSET_DOWNLOAD_OPTIONS" forReason:v50 withResult:8100 withError:0];

    goto LABEL_31;
  }

  [v8 setSessionId:v4];
  v11 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  [v8 setDiscretionary:{objc_msgSend(v11, "discretionary")}];

  v12 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  v13 = [v12 specifiedFields];

  if (v13 < 0)
  {
    v14 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [v8 setDisableUI:{objc_msgSend(v14, "disableUI")}];
  }

  v15 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  v16 = [v15 specifiedFields];

  if ((v16 & 2) != 0)
  {
    v17 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [v8 setAllowsCellularAccess:{objc_msgSend(v17, "allowsCellular")}];
  }

  v18 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  v19 = [v18 specifiedFields];

  if ((v19 & 0x10) != 0)
  {
    v20 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [v8 setRequiresPowerPluggedIn:{objc_msgSend(v20, "requiresPowerPluggedIn")}];
  }

  v21 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  v22 = [v21 specifiedFields];

  if ((v22 & 0x40) != 0)
  {
    v23 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [v8 setAllowsExpensiveAccess:{objc_msgSend(v23, "requiresInexpensiveAccess") ^ 1}];
  }

  v24 = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (v24)
  {
    v25 = [(SUCorePolicy *)self downloadAuthorizationHeader];
    [v8 setDownloadAuthorizationHeader:v25];
  }

  v26 = objc_alloc(MEMORY[0x277CCACA8]);
  v27 = [v8 sessionId];
  v28 = [v26 initWithFormat:@"scanUUID:%@|", v27];
  v29 = [@"|" stringByAppendingString:v28];

  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v8 discretionary])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v32 = [v30 initWithFormat:@"discretionary:%@|", v31];
  v33 = [v29 stringByAppendingString:v32];

  v34 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v8 allowsCellularAccess])
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  v36 = [v34 initWithFormat:@"allowsCellular:%@|", v35];
  v37 = [v33 stringByAppendingString:v36];

  v38 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v8 requiresPowerPluggedIn])
  {
    v39 = @"YES";
  }

  else
  {
    v39 = @"NO";
  }

  v40 = [v38 initWithFormat:@"requiresPowerPluggedIn:%@|", v39];
  v41 = [v37 stringByAppendingString:v40];

  v42 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v8 allowsExpensiveAccess])
  {
    v43 = @"YES";
  }

  else
  {
    v43 = @"NO";
  }

  v44 = [v42 initWithFormat:@"allowsExpensiveAccess:%@|", v43];
  v45 = [v41 stringByAppendingString:v44];

  v46 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  v47 = [v46 specifiedFields];

  v67 = v4;
  if ((v47 & 0x20) != 0)
  {
    v52 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [v8 setTimeoutIntervalForResource:{objc_msgSend(v52, "downloadTimeoutSecs")}];

    v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout:%ld|", objc_msgSend(v8, "timeoutIntervalForResource")];
    v48 = [v45 stringByAppendingString:v53];

    v45 = v53;
  }

  else
  {
    v48 = [v45 stringByAppendingString:@"timeout:MobileAsset|"];
  }

  v54 = [MEMORY[0x277D64460] sharedLogger];
  v55 = [v54 oslog];

  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v74 = v48;
    _os_log_impl(&dword_23193C000, v55, OS_LOG_TYPE_DEFAULT, "[POLICY] software update asset download options: %{public}@", buf, 0xCu);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v51 = [(SUCorePolicy *)self policyExtensions];
  v56 = [v51 countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v56)
  {
    v57 = v56;
    v66 = v48;
    v58 = *v69;
    do
    {
      for (i = 0; i != v57; ++i)
      {
        if (*v69 != v58)
        {
          objc_enumerationMutation(v51);
        }

        v60 = *(*(&v68 + 1) + 8 * i);
        v61 = [MEMORY[0x277D64460] sharedLogger];
        v62 = [v61 oslog];

        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 = [v60 extensionName];
          *buf = 138543362;
          v74 = v63;
          _os_log_impl(&dword_23193C000, v62, OS_LOG_TYPE_DEFAULT, "[POLICY] extending software update asset download options for extension %{public}@", buf, 0xCu);
        }

        [v60 extendMASoftwareUpdateAssetDownloadOptions:v8];
      }

      v57 = [v51 countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v57);
    v48 = v66;
    v4 = v67;
  }

LABEL_45:

  v64 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)constructMADocumentationAssetDownloadOptionsWithUUID:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v72 = self;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMADocumentationAssetDownloadOptionsWithUUID for policy: %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277D28A18]);
  if (!v7)
  {
    v8 = [MEMORY[0x277D64428] sharedDiag];
    v60 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create documentation asset download options", self];
    [v8 trackError:@"DOC_ASSET_DOWNLOAD_OPTIONS" forReason:v60 withResult:8100 withError:0];
LABEL_41:

    v48 = @"|";
    v51 = v8;
    v8 = 0;
    goto LABEL_42;
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setAdditionalServerParams:v9];

  v10 = [v8 additionalServerParams];

  if (!v10)
  {
    v60 = [MEMORY[0x277D64428] sharedDiag];
    v61 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create documentation asset download options additional server params", self];
    [v60 trackError:@"DOC_ASSET_DOWNLOAD_OPTIONS" forReason:v61 withResult:8100 withError:0];

    goto LABEL_41;
  }

  [v8 setSessionId:v4];
  v11 = [(SUCorePolicy *)self documentationDownloadPolicy];
  [v8 setDiscretionary:{objc_msgSend(v11, "discretionary")}];

  v12 = [(SUCorePolicy *)self documentationDownloadPolicy];
  v13 = [v12 specifiedFields];

  if ((v13 & 0x40) != 0)
  {
    v14 = [(SUCorePolicy *)self documentationDownloadPolicy];
    [v8 setDisableUI:{objc_msgSend(v14, "disableUI")}];
  }

  v15 = [(SUCorePolicy *)self documentationDownloadPolicy];
  v16 = [v15 specifiedFields];

  if ((v16 & 2) != 0)
  {
    v17 = [(SUCorePolicy *)self documentationDownloadPolicy];
    [v8 setAllowsCellularAccess:{objc_msgSend(v17, "allowsCellular")}];
  }

  v18 = [(SUCorePolicy *)self documentationDownloadPolicy];
  v19 = [v18 specifiedFields];

  if ((v19 & 8) != 0)
  {
    v20 = [(SUCorePolicy *)self documentationDownloadPolicy];
    [v8 setRequiresPowerPluggedIn:{objc_msgSend(v20, "requiresPowerPluggedIn")}];
  }

  v21 = [(SUCorePolicy *)self documentationDownloadPolicy];
  v22 = [v21 specifiedFields];

  if ((v22 & 0x20) != 0)
  {
    v23 = [(SUCorePolicy *)self documentationDownloadPolicy];
    [v8 setAllowsExpensiveAccess:{objc_msgSend(v23, "requiresInexpensiveAccess") ^ 1}];
  }

  v24 = [(SUCorePolicy *)self documentationDownloadPolicy];
  [v8 setTimeoutIntervalForResource:{objc_msgSend(v24, "downloadTimeoutSecs")}];

  v25 = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (v25)
  {
    v26 = [(SUCorePolicy *)self downloadAuthorizationHeader];
    [v8 setDownloadAuthorizationHeader:v26];
  }

  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v28 = [v8 sessionId];
  v29 = [v27 initWithFormat:@"scanUUID:%@|", v28];
  v30 = [@"|" stringByAppendingString:v29];

  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v8 discretionary])
  {
    v32 = @"YES";
  }

  else
  {
    v32 = @"NO";
  }

  v33 = [v31 initWithFormat:@"discretionary:%@|", v32];
  v34 = [v30 stringByAppendingString:v33];

  v35 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v8 allowsCellularAccess])
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v37 = [v35 initWithFormat:@"allowsCellular:%@|", v36];
  v38 = [v34 stringByAppendingString:v37];

  v39 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v8 requiresPowerPluggedIn])
  {
    v40 = @"YES";
  }

  else
  {
    v40 = @"NO";
  }

  v41 = [v39 initWithFormat:@"requiresPowerPluggedIn:%@|", v40];
  v42 = [v38 stringByAppendingString:v41];

  v43 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([v8 allowsExpensiveAccess])
  {
    v44 = @"YES";
  }

  else
  {
    v44 = @"NO";
  }

  v45 = [v43 initWithFormat:@"allowsExpensiveAccess:%@|", v44];
  v46 = [v42 stringByAppendingString:v45];

  v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout:%ld|", objc_msgSend(v8, "timeoutIntervalForResource")];
  v48 = [v46 stringByAppendingString:v47];

  v49 = [MEMORY[0x277D64460] sharedLogger];
  v50 = [v49 oslog];

  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v72 = v48;
    _os_log_impl(&dword_23193C000, v50, OS_LOG_TYPE_DEFAULT, "[POLICY] documentation asset download options: %{public}@", buf, 0xCu);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v51 = [(SUCorePolicy *)self policyExtensions];
  v52 = [v51 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v52)
  {
    v53 = v52;
    v64 = v48;
    v65 = v4;
    v54 = *v67;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v67 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v66 + 1) + 8 * i);
        v57 = [MEMORY[0x277D64460] sharedLogger];
        v58 = [v57 oslog];

        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [v56 extensionName];
          *buf = 138543362;
          v72 = v59;
          _os_log_impl(&dword_23193C000, v58, OS_LOG_TYPE_DEFAULT, "[POLICY] extending documentation asset download options for extension %{public}@", buf, 0xCu);
        }

        [v56 extendMADocumentationAssetDownloadOptions:v8];
      }

      v53 = [v51 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v53);
    v48 = v64;
    v4 = v65;
  }

LABEL_42:

  v62 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)setUpdateMetricEventFieldsFromDictionary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(SUCorePolicy *)self setUpdateMetricEventFields:0];
  if (v4)
  {
    v20 = v4;
    v19 = self;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v6 objectForKeyedSubscript:v11];
          if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v5 setSafeObject:v12 forKey:v11];
          }

          else
          {
            v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"SET_UPDATE_METRIC_EVENT_FIELDS failed due to invalid parameter (non-NSString value in dictionary for key %@)", v11];
            v14 = [MEMORY[0x277D643F8] sharedCore];
            v15 = [v14 buildError:8102 underlying:0 description:v13];

            v16 = [MEMORY[0x277D64428] sharedDiag];
            [v16 trackAnomaly:@"SET_UPDATE_METRIC_EVENT_FIELDS" forReason:v13 withResult:8102 withError:v15];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [(SUCorePolicy *)v19 setUpdateMetricEventFields:v5];
    v4 = v20;
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)updateApplyOptionsWithExtensions:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = self;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[POLICY] updateApplyOptionsWithExtensions for policy: %{public}@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(SUCorePolicy *)self policyExtensions];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = [MEMORY[0x277D64460] sharedLogger];
          v14 = [v13 oslog];

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 extensionName];
            *buf = 138543362;
            v23 = v15;
            _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "[POLICY] extending query for extension %{public}@", buf, 0xCu);
          }

          [v12 extendMSUApplyOptions:v4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateRollbackOptionsWithExtensions:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = self;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[POLICY] updateRollbackOptionsWithExtensions for policy: %{public}@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(SUCorePolicy *)self policyExtensions];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = [MEMORY[0x277D64460] sharedLogger];
          v14 = [v13 oslog];

          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v12 extensionName];
            *buf = 138543362;
            v23 = v15;
            _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "[POLICY] extending rollback options for extension %{public}@", buf, 0xCu);
          }

          [v12 extendMSURollbackOptions:v4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSplatPolicy
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SUCorePolicy *)self policyExtensions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 |= [v8 isSplatPolicy];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (BOOL)isSupervisedPolicy
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SUCorePolicy *)self policyExtensions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 |= [v8 isSupervisedPolicy];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (BOOL)isRequestedPMVSupervisedPolicy
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SUCorePolicy *)self policyExtensions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 |= [v8 isRequestedPMVSupervisedPolicy];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

- (id)requestedProductMarketingVersion
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(SUCorePolicy *)self policyExtensions];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 requestedProductMarketingVersion];

          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)isSupervisedAndRequestingInvalidOS:(id *)a3
{
  if (a3)
  {
    *a3 = @"policy is valid by default";
  }

  return 0;
}

- (int64_t)delayPeriodDays
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SUCorePolicy *)self policyExtensions];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 = [v8 delayPeriodDays];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)mdmPathName
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(SUCorePolicy *)self policyExtensions];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 mdmPathName];

          v5 = v9;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (SUCorePolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v108.receiver = self;
  v108.super_class = SUCorePolicy;
  v5 = [(SUCorePolicy *)&v108 init];
  if (v5)
  {
    v5->_specifiedUsedPolicies = [v4 decodeInt64ForKey:@"SpecifiedPolicies"];
    v5->_restrictToFull = [v4 decodeBoolForKey:@"RestrictToFull"];
    v5->_allowSameVersion = [v4 decodeBoolForKey:@"AllowSameVersion"];
    v5->_background = [v4 decodeBoolForKey:@"Background"];
    v5->_allowsCellular = [v4 decodeBoolForKey:@"AllowsCellular"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpdateScanPolicy"];
    softwareUpdateScanPolicy = v5->_softwareUpdateScanPolicy;
    v5->_softwareUpdateScanPolicy = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationScanPolicy"];
    documentationScanPolicy = v5->_documentationScanPolicy;
    v5->_documentationScanPolicy = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationDownloadPolicy"];
    documentationDownloadPolicy = v5->_documentationDownloadPolicy;
    v5->_documentationDownloadPolicy = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LoadBrainUpdatePolicy"];
    loadBrainPolicy = v5->_loadBrainPolicy;
    v5->_loadBrainPolicy = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreflightDownloadPolicy"];
    downloadPreflightPolicy = v5->_downloadPreflightPolicy;
    v5->_downloadPreflightPolicy = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreflightWakeupPolicy"];
    wakeupPreflightPolicy = v5->_wakeupPreflightPolicy;
    v5->_wakeupPreflightPolicy = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreflightPrerequisiteCheckPolicy"];
    prerequisiteCheckPreflightPolicy = v5->_prerequisiteCheckPreflightPolicy;
    v5->_prerequisiteCheckPreflightPolicy = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreflightPersonalizePolicy"];
    personalizePreflightPolicy = v5->_personalizePreflightPolicy;
    v5->_personalizePreflightPolicy = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreflightFDRRecoveryPolicy"];
    fdrRecoveryPreflightPolicy = v5->_fdrRecoveryPreflightPolicy;
    v5->_fdrRecoveryPreflightPolicy = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DownloadSoftwareUpdatePolicy"];
    softwareUpdateDownloadPolicy = v5->_softwareUpdateDownloadPolicy;
    v5->_softwareUpdateDownloadPolicy = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrepareUpdatePolicy"];
    preparePolicy = v5->_preparePolicy;
    v5->_preparePolicy = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SuspendUpdatePolicy"];
    suspendPolicy = v5->_suspendPolicy;
    v5->_suspendPolicy = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ResumeUpdatePolicy"];
    resumePolicy = v5->_resumePolicy;
    v5->_resumePolicy = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ApplyUpdatePolicy"];
    applyPolicy = v5->_applyPolicy;
    v5->_applyPolicy = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RollbackUpdatePolicy"];
    rollbackPolicy = v5->_rollbackPolicy;
    v5->_rollbackPolicy = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetType"];
    softwareUpdateAssetType = v5->_softwareUpdateAssetType;
    v5->_softwareUpdateAssetType = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetType"];
    documentationAssetType = v5->_documentationAssetType;
    v5->_documentationAssetType = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TargetVolumeUUID"];
    targetVolumeUUID = v5->_targetVolumeUUID;
    v5->_targetVolumeUUID = v40;

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"PolicyExtensions"];
    policyExtensions = v5->_policyExtensions;
    v5->_policyExtensions = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteBuildVersion"];
    prerequisiteBuildVersion = v5->_prerequisiteBuildVersion;
    v5->_prerequisiteBuildVersion = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteProductVersion"];
    prerequisiteProductVersion = v5->_prerequisiteProductVersion;
    v5->_prerequisiteProductVersion = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteRestoreVersion"];
    prerequisiteRestoreVersion = v5->_prerequisiteRestoreVersion;
    v5->_prerequisiteRestoreVersion = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TargetRestoreVersion"];
    targetRestoreVersion = v5->_targetRestoreVersion;
    v5->_targetRestoreVersion = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstalledSFRVersion"];
    installedSFRVersion = v5->_installedSFRVersion;
    v5->_installedSFRVersion = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v57;

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HWModelStr"];
    hwModelStr = v5->_hwModelStr;
    v5->_hwModelStr = v59;

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    productType = v5->_productType;
    v5->_productType = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseType"];
    releaseType = v5->_releaseType;
    v5->_releaseType = v63;

    v5->_isInternal = [v4 decodeBoolForKey:@"IsInternal"];
    v5->_checkAvailableSpace = [v4 decodeBoolForKey:@"CheckAvailableSpace"];
    v5->_useReserveSpace = [v4 decodeBoolForKey:@"UseReserveSpace"];
    v5->_cacheDeleteUrgency = [v4 decodeIntForKey:@"CacheDeleteUrgency"];
    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserAgentString"];
    userAgentString = v5->_userAgentString;
    v5->_userAgentString = v65;

    v5->_performPreflightEncryptedCheck = [v4 decodeBoolForKey:@"PerformPreflightEncryptedCheck"];
    v5->_performPreflightSnapshotCheck = [v4 decodeBoolForKey:@"PerformPreflightSnapshotCheck"];
    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpdateVolumePath"];
    updateVolumePath = v5->_updateVolumePath;
    v5->_updateVolumePath = v67;

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSOToken"];
    ssoToken = v5->_ssoToken;
    v5->_ssoToken = v69;

    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PersonalizedManifestRootsPath"];
    personalizedManifestRootsPath = v5->_personalizedManifestRootsPath;
    v5->_personalizedManifestRootsPath = v71;

    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LocalAuthenticationContext"];
    localAuthenticationContext = v5->_localAuthenticationContext;
    v5->_localAuthenticationContext = v73;

    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LocalAuthenticationUserID"];
    localAuthenticationUserID = v5->_localAuthenticationUserID;
    v5->_localAuthenticationUserID = v75;

    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MDMBootstrapToken"];
    mdmBootstrapToken = v5->_mdmBootstrapToken;
    v5->_mdmBootstrapToken = v77;

    v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DownloadAuthorizationHeader"];
    downloadAuthorizationHeader = v5->_downloadAuthorizationHeader;
    v5->_downloadAuthorizationHeader = v79;

    v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpdateBrainLocationOverride"];
    updateBrainLocationOverride = v5->_updateBrainLocationOverride;
    v5->_updateBrainLocationOverride = v81;

    v83 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetAudienceUUID"];
    assetAudienceUUID = v5->_assetAudienceUUID;
    v5->_assetAudienceUUID = v83;

    v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AlternateAssetAudienceUUID"];
    alternateAssetAudienceUUID = v5->_alternateAssetAudienceUUID;
    v5->_alternateAssetAudienceUUID = v85;

    v5->_disableAlternateUpdate = [v4 decodeBoolForKey:@"DisableAlternateUpdate"];
    v5->_disableSplatCombo = [v4 decodeBoolForKey:@"DisableSplombo"];
    v87 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PersonalizationServerURL"];
    personalizationServerURL = v5->_personalizationServerURL;
    v5->_personalizationServerURL = v87;

    v89 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxyHostName"];
    proxyHostName = v5->_proxyHostName;
    v5->_proxyHostName = v89;

    v91 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProxyPortNumber"];
    proxyPortNumber = v5->_proxyPortNumber;
    v5->_proxyPortNumber = v91;

    v5->_bridgeOSIgnoreMinimumVersionCheck = [v4 decodeBoolForKey:@"BridgeOSIgnoreMinimumVersionCheck"];
    v93 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BridgeOSDownloadDirectory"];
    bridgeOSDownloadDirectory = v5->_bridgeOSDownloadDirectory;
    v5->_bridgeOSDownloadDirectory = v93;

    v5->_enableEmbeddedOSInstall = [v4 decodeBoolForKey:@"EnableEmbeddedOSInstall"];
    v5->_enableBridgeOSInstall = [v4 decodeBoolForKey:@"EnableBridgeOSInstall"];
    v5->_enableOSPersonalization = [v4 decodeBoolForKey:@"EnableOSPersonalization"];
    v5->_userInitiated = [v4 decodeBoolForKey:@"UserInitiated"];
    v5->_skipVolumeSealing = [v4 decodeBoolForKey:@"SkipVolumeSealing"];
    v5->_qualityOfService = [v4 decodeIntForKey:@"QualityOfService"];
    v95 = objc_alloc(MEMORY[0x277CBEB98]);
    v96 = objc_opt_class();
    v97 = [v95 initWithObjects:{v96, objc_opt_class(), 0}];
    v98 = [v4 decodeObjectOfClasses:v97 forKey:@"UpdateMetricEventFields"];
    updateMetricEventFields = v5->_updateMetricEventFields;
    v5->_updateMetricEventFields = v98;

    v100 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpdateMetricContext"];
    updateMetricContext = v5->_updateMetricContext;
    v5->_updateMetricContext = v100;

    v102 = objc_alloc(MEMORY[0x277CBEB98]);
    v103 = objc_opt_class();
    v104 = [v102 initWithObjects:{v103, objc_opt_class(), 0}];
    v105 = [v4 decodeObjectOfClasses:v104 forKey:@"DefaultDescriptorValues"];
    defaultDescriptorValues = v5->_defaultDescriptorValues;
    v5->_defaultDescriptorValues = v105;

    v5->_enablePreSUStaging = [v4 decodeBoolForKey:@"EnablePSUSAssets"];
    v5->_enablePreSUStagingForOptionalAssets = [v4 decodeBoolForKey:@"EnablePSUSForOptionalAssets"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v50 = a3;
  [v50 encodeInt64:-[SUCorePolicy specifiedUsedPolicies](self forKey:{"specifiedUsedPolicies"), @"SpecifiedPolicies"}];
  [v50 encodeBool:-[SUCorePolicy restrictToFull](self forKey:{"restrictToFull"), @"RestrictToFull"}];
  [v50 encodeBool:-[SUCorePolicy allowSameVersion](self forKey:{"allowSameVersion"), @"AllowSameVersion"}];
  [v50 encodeBool:-[SUCorePolicy background](self forKey:{"background"), @"Background"}];
  [v50 encodeBool:-[SUCorePolicy allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  v4 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  [v50 encodeObject:v4 forKey:@"UpdateScanPolicy"];

  v5 = [(SUCorePolicy *)self documentationScanPolicy];
  [v50 encodeObject:v5 forKey:@"DocumentationScanPolicy"];

  v6 = [(SUCorePolicy *)self documentationDownloadPolicy];
  [v50 encodeObject:v6 forKey:@"DocumentationDownloadPolicy"];

  v7 = [(SUCorePolicy *)self loadBrainPolicy];
  [v50 encodeObject:v7 forKey:@"LoadBrainUpdatePolicy"];

  v8 = [(SUCorePolicy *)self downloadPreflightPolicy];
  [v50 encodeObject:v8 forKey:@"PreflightDownloadPolicy"];

  v9 = [(SUCorePolicy *)self wakeupPreflightPolicy];
  [v50 encodeObject:v9 forKey:@"PreflightWakeupPolicy"];

  v10 = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
  [v50 encodeObject:v10 forKey:@"PreflightPrerequisiteCheckPolicy"];

  v11 = [(SUCorePolicy *)self personalizePreflightPolicy];
  [v50 encodeObject:v11 forKey:@"PreflightPersonalizePolicy"];

  v12 = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
  [v50 encodeObject:v12 forKey:@"PreflightFDRRecoveryPolicy"];

  v13 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  [v50 encodeObject:v13 forKey:@"DownloadSoftwareUpdatePolicy"];

  v14 = [(SUCorePolicy *)self preparePolicy];
  [v50 encodeObject:v14 forKey:@"PrepareUpdatePolicy"];

  v15 = [(SUCorePolicy *)self suspendPolicy];
  [v50 encodeObject:v15 forKey:@"SuspendUpdatePolicy"];

  v16 = [(SUCorePolicy *)self resumePolicy];
  [v50 encodeObject:v16 forKey:@"ResumeUpdatePolicy"];

  v17 = [(SUCorePolicy *)self applyPolicy];
  [v50 encodeObject:v17 forKey:@"ApplyUpdatePolicy"];

  v18 = [(SUCorePolicy *)self rollbackPolicy];
  [v50 encodeObject:v18 forKey:@"RollbackUpdatePolicy"];

  v19 = [(SUCorePolicy *)self softwareUpdateAssetType];
  [v50 encodeObject:v19 forKey:@"SoftwareUpdateAssetType"];

  v20 = [(SUCorePolicy *)self documentationAssetType];
  [v50 encodeObject:v20 forKey:@"DocumentationAssetType"];

  v21 = [(SUCorePolicy *)self targetVolumeUUID];
  [v50 encodeObject:v21 forKey:@"TargetVolumeUUID"];

  v22 = [(SUCorePolicy *)self policyExtensions];
  [v50 encodeObject:v22 forKey:@"PolicyExtensions"];

  v23 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  [v50 encodeObject:v23 forKey:@"PrerequisiteBuildVersion"];

  v24 = [(SUCorePolicy *)self prerequisiteProductVersion];
  [v50 encodeObject:v24 forKey:@"PrerequisiteProductVersion"];

  v25 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  [v50 encodeObject:v25 forKey:@"PrerequisiteRestoreVersion"];

  v26 = [(SUCorePolicy *)self targetRestoreVersion];
  [v50 encodeObject:v26 forKey:@"TargetRestoreVersion"];

  v27 = [(SUCorePolicy *)self installedSFRVersion];
  [v50 encodeObject:v27 forKey:@"InstalledSFRVersion"];

  v28 = [(SUCorePolicy *)self deviceClass];
  [v50 encodeObject:v28 forKey:@"DeviceClass"];

  v29 = [(SUCorePolicy *)self hwModelStr];
  [v50 encodeObject:v29 forKey:@"HWModelStr"];

  v30 = [(SUCorePolicy *)self productType];
  [v50 encodeObject:v30 forKey:@"ProductType"];

  v31 = [(SUCorePolicy *)self releaseType];
  [v50 encodeObject:v31 forKey:@"ReleaseType"];

  [v50 encodeBool:-[SUCorePolicy isInternal](self forKey:{"isInternal"), @"IsInternal"}];
  [v50 encodeBool:-[SUCorePolicy checkAvailableSpace](self forKey:{"checkAvailableSpace"), @"CheckAvailableSpace"}];
  [v50 encodeBool:-[SUCorePolicy useReserveSpace](self forKey:{"useReserveSpace"), @"UseReserveSpace"}];
  [v50 encodeInt:-[SUCorePolicy cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"CacheDeleteUrgency"}];
  v32 = [(SUCorePolicy *)self userAgentString];
  [v50 encodeObject:v32 forKey:@"UserAgentString"];

  [v50 encodeBool:-[SUCorePolicy performPreflightEncryptedCheck](self forKey:{"performPreflightEncryptedCheck"), @"PerformPreflightEncryptedCheck"}];
  [v50 encodeBool:-[SUCorePolicy performPreflightSnapshotCheck](self forKey:{"performPreflightSnapshotCheck"), @"PerformPreflightSnapshotCheck"}];
  v33 = [(SUCorePolicy *)self updateVolumePath];
  [v50 encodeObject:v33 forKey:@"UpdateVolumePath"];

  v34 = [(SUCorePolicy *)self ssoToken];
  [v50 encodeObject:v34 forKey:@"SSOToken"];

  v35 = [(SUCorePolicy *)self personalizedManifestRootsPath];
  [v50 encodeObject:v35 forKey:@"PersonalizedManifestRootsPath"];

  v36 = [(SUCorePolicy *)self localAuthenticationContext];
  [v50 encodeObject:v36 forKey:@"LocalAuthenticationContext"];

  v37 = [(SUCorePolicy *)self localAuthenticationUserID];
  [v50 encodeObject:v37 forKey:@"LocalAuthenticationUserID"];

  v38 = [(SUCorePolicy *)self mdmBootstrapToken];
  [v50 encodeObject:v38 forKey:@"MDMBootstrapToken"];

  v39 = [(SUCorePolicy *)self downloadAuthorizationHeader];
  [v50 encodeObject:v39 forKey:@"DownloadAuthorizationHeader"];

  v40 = [(SUCorePolicy *)self updateBrainLocationOverride];
  [v50 encodeObject:v40 forKey:@"UpdateBrainLocationOverride"];

  v41 = [(SUCorePolicy *)self assetAudienceUUID];
  [v50 encodeObject:v41 forKey:@"AssetAudienceUUID"];

  v42 = [(SUCorePolicy *)self alternateAssetAudienceUUID];
  [v50 encodeObject:v42 forKey:@"AlternateAssetAudienceUUID"];

  [v50 encodeBool:-[SUCorePolicy disableAlternateUpdate](self forKey:{"disableAlternateUpdate"), @"DisableAlternateUpdate"}];
  [v50 encodeBool:-[SUCorePolicy disableSplatCombo](self forKey:{"disableSplatCombo"), @"DisableSplombo"}];
  v43 = [(SUCorePolicy *)self personalizationServerURL];
  [v50 encodeObject:v43 forKey:@"PersonalizationServerURL"];

  v44 = [(SUCorePolicy *)self proxyHostName];
  [v50 encodeObject:v44 forKey:@"ProxyHostName"];

  v45 = [(SUCorePolicy *)self proxyPortNumber];
  [v50 encodeObject:v45 forKey:@"ProxyPortNumber"];

  [v50 encodeBool:-[SUCorePolicy bridgeOSIgnoreMinimumVersionCheck](self forKey:{"bridgeOSIgnoreMinimumVersionCheck"), @"BridgeOSIgnoreMinimumVersionCheck"}];
  v46 = [(SUCorePolicy *)self bridgeOSDownloadDirectory];
  [v50 encodeObject:v46 forKey:@"BridgeOSDownloadDirectory"];

  [v50 encodeBool:-[SUCorePolicy enableEmbeddedOSInstall](self forKey:{"enableEmbeddedOSInstall"), @"EnableEmbeddedOSInstall"}];
  [v50 encodeBool:-[SUCorePolicy enableBridgeOSInstall](self forKey:{"enableBridgeOSInstall"), @"EnableBridgeOSInstall"}];
  [v50 encodeBool:-[SUCorePolicy enableOSPersonalization](self forKey:{"enableOSPersonalization"), @"EnableOSPersonalization"}];
  [v50 encodeBool:-[SUCorePolicy userInitiated](self forKey:{"userInitiated"), @"UserInitiated"}];
  [v50 encodeBool:-[SUCorePolicy skipVolumeSealing](self forKey:{"skipVolumeSealing"), @"SkipVolumeSealing"}];
  [v50 encodeInt:-[SUCorePolicy qualityOfService](self forKey:{"qualityOfService"), @"QualityOfService"}];
  v47 = [(SUCorePolicy *)self updateMetricEventFields];
  [v50 encodeObject:v47 forKey:@"UpdateMetricEventFields"];

  v48 = [(SUCorePolicy *)self updateMetricContext];
  [v50 encodeObject:v48 forKey:@"UpdateMetricContext"];

  v49 = [(SUCorePolicy *)self defaultDescriptorValues];
  [v50 encodeObject:v49 forKey:@"DefaultDescriptorValues"];

  [v50 encodeBool:-[SUCorePolicy enablePreSUStaging](self forKey:{"enablePreSUStaging"), @"EnablePSUSAssets"}];
  [v50 encodeBool:-[SUCorePolicy enablePreSUStagingForOptionalAssets](self forKey:{"enablePreSUStagingForOptionalAssets"), @"EnablePSUSForOptionalAssets"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v58 = 1;
    goto LABEL_137;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v58 = 0;
    goto LABEL_137;
  }

  v5 = v4;
  v6 = [(SUCorePolicy *)self specifiedUsedPolicies];
  v231 = [(SUCorePolicy *)v5 specifiedUsedPolicies];
  v232 = v6;
  if (v6 != v231 || (-[SUCorePolicy softwareUpdateScanPolicy](self, "softwareUpdateScanPolicy"), v8 = objc_claimAutoreleasedReturnValue(), -[SUCorePolicy softwareUpdateScanPolicy](v5, "softwareUpdateScanPolicy"), v221 = v8, v220 = objc_claimAutoreleasedReturnValue(), ![v8 isEqual:?]))
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v229 = 0;
    memset(v230, 0, sizeof(v230));
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    goto LABEL_42;
  }

  v9 = [(SUCorePolicy *)self documentationScanPolicy];
  [(SUCorePolicy *)v5 documentationScanPolicy];
  v216 = v217 = v9;
  if (![v9 isEqual:?])
  {
    *&v230[8] = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    *v230 = 0;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[16] = 1;
    goto LABEL_42;
  }

  v10 = [(SUCorePolicy *)self documentationDownloadPolicy];
  [(SUCorePolicy *)v5 documentationDownloadPolicy];
  v214 = v215 = v10;
  if (![v10 isEqual:?])
  {
    *&v230[4] = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v229 = 0;
    *v230 = 0;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    goto LABEL_42;
  }

  v11 = [(SUCorePolicy *)self loadBrainPolicy];
  [(SUCorePolicy *)v5 loadBrainPolicy];
  v212 = v213 = v11;
  if (![v11 isEqual:?])
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    *v230 = 0;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    goto LABEL_42;
  }

  v12 = [(SUCorePolicy *)self downloadPreflightPolicy];
  [(SUCorePolicy *)v5 downloadPreflightPolicy];
  v210 = v211 = v12;
  if (![v12 isEqual:?])
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    *v230 = 0;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    goto LABEL_42;
  }

  v13 = [(SUCorePolicy *)self wakeupPreflightPolicy];
  [(SUCorePolicy *)v5 wakeupPreflightPolicy];
  v208 = v209 = v13;
  if (![v13 isEqual:?])
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    *v230 = 0;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    goto LABEL_42;
  }

  v14 = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
  [(SUCorePolicy *)v5 prerequisiteCheckPreflightPolicy];
  v206 = v207 = v14;
  if (![v14 isEqual:?])
  {
    v62 = 0;
    v63 = 0;
    *v230 = 0;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    goto LABEL_42;
  }

  v15 = [(SUCorePolicy *)self personalizePreflightPolicy];
  [(SUCorePolicy *)v5 personalizePreflightPolicy];
  v204 = v205 = v15;
  if (![v15 isEqual:?])
  {
    v63 = 0;
    *v230 = 0;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    goto LABEL_42;
  }

  v16 = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
  [(SUCorePolicy *)v5 fdrRecoveryPreflightPolicy];
  v202 = v203 = v16;
  if (![v16 isEqual:?])
  {
    *v230 = 0;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v229 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    goto LABEL_42;
  }

  v17 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  [(SUCorePolicy *)v5 softwareUpdateDownloadPolicy];
  v200 = v201 = v17;
  if (![v17 isEqual:?])
  {
    v229 = 0;
    *v230 = 0x100000000;
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    goto LABEL_42;
  }

  v18 = [(SUCorePolicy *)self preparePolicy];
  [(SUCorePolicy *)v5 preparePolicy];
  v198 = v199 = v18;
  if (![v18 isEqual:?])
  {
    v228 = 0;
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    goto LABEL_42;
  }

  v19 = [(SUCorePolicy *)self suspendPolicy];
  [(SUCorePolicy *)v5 suspendPolicy];
  v196 = v197 = v19;
  if (![v19 isEqual:?])
  {
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, sizeof(v226));
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    goto LABEL_42;
  }

  v20 = [(SUCorePolicy *)self resumePolicy];
  v218 = v5;
  [(SUCorePolicy *)v5 resumePolicy];
  v194 = v195 = v20;
  if (![v20 isEqual:?])
  {
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, 32);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[32] = 1;
    goto LABEL_163;
  }

  v21 = [(SUCorePolicy *)self applyPolicy];
  [(SUCorePolicy *)v5 applyPolicy];
  v192 = v193 = v21;
  if (![v21 isEqual:?])
  {
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, 28);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    goto LABEL_163;
  }

  v22 = [(SUCorePolicy *)self rollbackPolicy];
  v190 = [(SUCorePolicy *)v5 rollbackPolicy];
  v191 = v22;
  if (![v22 isEqual:?])
  {
    v224 = 0;
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    goto LABEL_163;
  }

  v23 = MEMORY[0x277D643F8];
  v24 = [(SUCorePolicy *)v5 softwareUpdateAssetType];
  v188 = [(SUCorePolicy *)self softwareUpdateAssetType];
  v189 = v24;
  if (![v23 stringIsEqual:v24 to:?])
  {
    memset(v222, 0, sizeof(v222));
    memset(v223, 0, sizeof(v223));
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    goto LABEL_163;
  }

  v25 = MEMORY[0x277D643F8];
  v26 = [(SUCorePolicy *)v5 documentationAssetType];
  v186 = [(SUCorePolicy *)self documentationAssetType];
  v187 = v26;
  if (![v25 stringIsEqual:v26 to:?])
  {
    *v223 = 0;
    memset(v222, 0, sizeof(v222));
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    goto LABEL_163;
  }

  v27 = MEMORY[0x277D643F8];
  v28 = [(SUCorePolicy *)v5 targetVolumeUUID];
  v184 = [(SUCorePolicy *)self targetVolumeUUID];
  v185 = v28;
  if (![v27 stringIsEqual:v28 to:?])
  {
    memset(v222, 0, sizeof(v222));
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    goto LABEL_163;
  }

  v29 = MEMORY[0x277D643F8];
  v30 = [(SUCorePolicy *)v5 prerequisiteBuildVersion];
  v182 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v183 = v30;
  if (![v29 stringIsEqual:v30 to:?])
  {
    memset(v222, 0, 32);
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[32] = 1;
    goto LABEL_163;
  }

  v31 = MEMORY[0x277D643F8];
  v32 = [(SUCorePolicy *)v5 prerequisiteProductVersion];
  v180 = [(SUCorePolicy *)self prerequisiteProductVersion];
  v181 = v32;
  if (![v31 stringIsEqual:v32 to:?])
  {
    memset(v222, 0, 28);
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    goto LABEL_163;
  }

  v33 = MEMORY[0x277D643F8];
  v34 = [(SUCorePolicy *)v5 prerequisiteRestoreVersion];
  v178 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v179 = v34;
  if (![v33 stringIsEqual:v34 to:?])
  {
    memset(v222, 0, 24);
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[24] = 1;
    goto LABEL_163;
  }

  v35 = MEMORY[0x277D643F8];
  v36 = [(SUCorePolicy *)v5 targetRestoreVersion];
  v176 = [(SUCorePolicy *)self targetRestoreVersion];
  v177 = v36;
  if (![v35 stringIsEqual:v36 to:?])
  {
    memset(v222, 0, 20);
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    goto LABEL_163;
  }

  v37 = MEMORY[0x277D643F8];
  v38 = [(SUCorePolicy *)v5 installedSFRVersion];
  v174 = [(SUCorePolicy *)self installedSFRVersion];
  v175 = v38;
  if (![v37 stringIsEqual:v38 to:?])
  {
    *v222 = 0;
    *&v222[8] = 0;
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[16] = 1;
    goto LABEL_163;
  }

  v39 = MEMORY[0x277D643F8];
  v40 = [(SUCorePolicy *)v5 deviceClass];
  v172 = [(SUCorePolicy *)self deviceClass];
  v173 = v40;
  if (![v39 stringIsEqual:v40 to:?])
  {
    *&v222[4] = 0;
    *v222 = 0;
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    goto LABEL_163;
  }

  v41 = MEMORY[0x277D643F8];
  v42 = [(SUCorePolicy *)v5 hwModelStr];
  v170 = [(SUCorePolicy *)self hwModelStr];
  v171 = v42;
  if (![v41 stringIsEqual:v42 to:?])
  {
    *v222 = 0;
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    goto LABEL_163;
  }

  v43 = MEMORY[0x277D643F8];
  v44 = [(SUCorePolicy *)v5 productType];
  v168 = [(SUCorePolicy *)self productType];
  v169 = v44;
  if (![v43 stringIsEqual:v44 to:?])
  {
    *v222 = 0x100000000;
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    goto LABEL_163;
  }

  v45 = MEMORY[0x277D643F8];
  v46 = [(SUCorePolicy *)v218 releaseType];
  v166 = [(SUCorePolicy *)self releaseType];
  v167 = v46;
  if (![v45 stringIsEqual:v46 to:?] || (v47 = -[SUCorePolicy isInternal](v218, "isInternal"), v47 != -[SUCorePolicy isInternal](self, "isInternal")) || (v48 = -[SUCorePolicy checkAvailableSpace](v218, "checkAvailableSpace"), v48 != -[SUCorePolicy checkAvailableSpace](self, "checkAvailableSpace")) || (v49 = -[SUCorePolicy useReserveSpace](v218, "useReserveSpace"), v49 != -[SUCorePolicy useReserveSpace](self, "useReserveSpace")) || (v50 = -[SUCorePolicy restrictToFull](v218, "restrictToFull"), v50 != -[SUCorePolicy restrictToFull](self, "restrictToFull")) || (v51 = -[SUCorePolicy allowSameVersion](v218, "allowSameVersion"), v51 != -[SUCorePolicy allowSameVersion](self, "allowSameVersion")) || (v52 = -[SUCorePolicy background](v218, "background"), v52 != -[SUCorePolicy background](self, "background")) || (v53 = -[SUCorePolicy allowsCellular](v218, "allowsCellular"), v53 != -[SUCorePolicy allowsCellular](self, "allowsCellular")))
  {
    *v223 = 0x100000000;
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[16] = 1;
    *&v230[8] = 0x100000001;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[16] = 1;
    *&v222[8] = 0x100000001;
    *v222 = 0x100000001;
LABEL_163:
    v5 = v218;
    goto LABEL_42;
  }

  v76 = MEMORY[0x277D643F8];
  v77 = [(SUCorePolicy *)v218 userAgentString];
  v164 = [(SUCorePolicy *)self userAgentString];
  v165 = v77;
  if (![v76 stringIsEqual:v77 to:?] || (v78 = -[SUCorePolicy performPreflightEncryptedCheck](v218, "performPreflightEncryptedCheck"), v78 != -[SUCorePolicy performPreflightEncryptedCheck](self, "performPreflightEncryptedCheck")) || (v79 = -[SUCorePolicy performPreflightSnapshotCheck](v218, "performPreflightSnapshotCheck"), v79 != -[SUCorePolicy performPreflightSnapshotCheck](self, "performPreflightSnapshotCheck")))
  {
    v224 = 0x100000000;
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    goto LABEL_163;
  }

  v80 = MEMORY[0x277D643F8];
  v81 = [(SUCorePolicy *)v218 ssoToken];
  v162 = [(SUCorePolicy *)self ssoToken];
  v163 = v81;
  if (![v80 dataIsEqual:v81 to:?] || (v82 = -[SUCorePolicy cacheDeleteUrgency](v218, "cacheDeleteUrgency"), v82 != -[SUCorePolicy cacheDeleteUrgency](self, "cacheDeleteUrgency")))
  {
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 1;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    v224 = 0x100000001;
    goto LABEL_163;
  }

  v83 = MEMORY[0x277D643F8];
  v84 = [(SUCorePolicy *)v218 updateVolumePath];
  v160 = [(SUCorePolicy *)self updateVolumePath];
  v161 = v84;
  if (![v83 stringIsEqual:v84 to:?])
  {
    memset(v226, 0, 20);
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    goto LABEL_163;
  }

  v85 = MEMORY[0x277D643F8];
  v86 = [(SUCorePolicy *)v218 personalizedManifestRootsPath];
  v158 = [(SUCorePolicy *)self personalizedManifestRootsPath];
  v159 = v86;
  if (![v85 stringIsEqual:v86 to:?])
  {
    *&v226[8] = 0;
    *v226 = 0;
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    goto LABEL_163;
  }

  v87 = MEMORY[0x277D643F8];
  v88 = [(SUCorePolicy *)v218 localAuthenticationContext];
  v156 = [(SUCorePolicy *)self localAuthenticationContext];
  v157 = v88;
  if (![v87 dataIsEqual:v88 to:?])
  {
    *&v226[4] = 0;
    *v226 = 0;
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[12] = 1;
    goto LABEL_163;
  }

  v89 = MEMORY[0x277D643F8];
  v90 = [(SUCorePolicy *)v218 localAuthenticationUserID];
  v154 = [(SUCorePolicy *)self localAuthenticationUserID];
  v155 = v90;
  if (![v89 numberIsEqual:v90 to:?])
  {
    *v226 = 0;
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    goto LABEL_163;
  }

  v91 = MEMORY[0x277D643F8];
  v92 = [(SUCorePolicy *)v218 mdmBootstrapToken];
  v152 = [(SUCorePolicy *)self mdmBootstrapToken];
  v153 = v92;
  if (![v91 stringIsEqual:v92 to:?])
  {
    *v226 = 0x100000000;
    memset(v225, 0, sizeof(v225));
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    goto LABEL_163;
  }

  v93 = MEMORY[0x277D643F8];
  v94 = [(SUCorePolicy *)v218 downloadAuthorizationHeader];
  v150 = [(SUCorePolicy *)self downloadAuthorizationHeader];
  v151 = v94;
  if (![v93 stringIsEqual:v94 to:?])
  {
    *v225 = 0;
    *v226 = 0x100000000;
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    goto LABEL_163;
  }

  v95 = MEMORY[0x277D643F8];
  v96 = [(SUCorePolicy *)v218 updateBrainLocationOverride];
  v148 = [(SUCorePolicy *)self updateBrainLocationOverride];
  v149 = v96;
  if (![v95 stringIsEqual:v96 to:?])
  {
    *v226 = 0x100000000;
    *v225 = 0x100000000;
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    goto LABEL_163;
  }

  v97 = MEMORY[0x277D643F8];
  v98 = [(SUCorePolicy *)v218 assetAudienceUUID];
  v146 = [(SUCorePolicy *)self assetAudienceUUID];
  v147 = v98;
  if (![v97 stringIsEqual:v98 to:?])
  {
    *v225 = 0x100000000;
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    goto LABEL_163;
  }

  v99 = MEMORY[0x277D643F8];
  v100 = [(SUCorePolicy *)v218 alternateAssetAudienceUUID];
  v144 = [(SUCorePolicy *)self alternateAssetAudienceUUID];
  v145 = v100;
  if (![v99 stringIsEqual:v100 to:?] || (v101 = -[SUCorePolicy disableAlternateUpdate](v218, "disableAlternateUpdate"), v101 != -[SUCorePolicy disableAlternateUpdate](self, "disableAlternateUpdate")) || (v102 = -[SUCorePolicy disableSplatCombo](v218, "disableSplatCombo"), v102 != -[SUCorePolicy disableSplatCombo](self, "disableSplatCombo")))
  {
    memset(v227, 0, sizeof(v227));
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    *v225 = 0x100000001;
    goto LABEL_163;
  }

  v103 = MEMORY[0x277D643F8];
  v104 = [(SUCorePolicy *)v218 personalizationServerURL];
  v142 = [(SUCorePolicy *)self personalizationServerURL];
  v143 = v104;
  if (![v103 stringIsEqual:v104 to:?])
  {
    *&v227[4] = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    *v225 = 0x100000001;
    *v227 = 1;
    goto LABEL_163;
  }

  v105 = MEMORY[0x277D643F8];
  v106 = [(SUCorePolicy *)v218 proxyHostName];
  v140 = [(SUCorePolicy *)self proxyHostName];
  v141 = v106;
  if (![v105 stringIsEqual:v106 to:?])
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    *&v227[8] = 0;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    *v225 = 0x100000001;
    *v227 = 0x100000001;
    goto LABEL_163;
  }

  v107 = MEMORY[0x277D643F8];
  v108 = [(SUCorePolicy *)v218 proxyPortNumber];
  v138 = [(SUCorePolicy *)self proxyPortNumber];
  v139 = v108;
  if (![v107 numberIsEqual:v108 to:?] || (v109 = -[SUCorePolicy bridgeOSIgnoreMinimumVersionCheck](v218, "bridgeOSIgnoreMinimumVersionCheck"), v109 != -[SUCorePolicy bridgeOSIgnoreMinimumVersionCheck](self, "bridgeOSIgnoreMinimumVersionCheck")))
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    v229 = 0;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    *v225 = 0x100000001;
    *v227 = 0x100000001;
    *&v227[8] = 1;
    goto LABEL_163;
  }

  v110 = MEMORY[0x277D643F8];
  v111 = [(SUCorePolicy *)v218 bridgeOSDownloadDirectory];
  v136 = [(SUCorePolicy *)self bridgeOSDownloadDirectory];
  v137 = v111;
  if (![v110 stringIsEqual:v111 to:?] || (v112 = -[SUCorePolicy enableEmbeddedOSInstall](v218, "enableEmbeddedOSInstall"), v112 != -[SUCorePolicy enableEmbeddedOSInstall](self, "enableEmbeddedOSInstall")) || (v113 = -[SUCorePolicy enableBridgeOSInstall](v218, "enableBridgeOSInstall"), v113 != -[SUCorePolicy enableBridgeOSInstall](self, "enableBridgeOSInstall")) || (v114 = -[SUCorePolicy enableOSPersonalization](v218, "enableOSPersonalization"), v114 != -[SUCorePolicy enableOSPersonalization](self, "enableOSPersonalization")) || (v115 = -[SUCorePolicy userInitiated](v218, "userInitiated"), v115 != -[SUCorePolicy userInitiated](self, "userInitiated")) || (v116 = -[SUCorePolicy skipVolumeSealing](v218, "skipVolumeSealing"), v116 != -[SUCorePolicy skipVolumeSealing](self, "skipVolumeSealing")) || (v117 = -[SUCorePolicy qualityOfService](v218, "qualityOfService"), v117 != -[SUCorePolicy qualityOfService](self, "qualityOfService")))
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    *v225 = 0x100000001;
    *v227 = 0x100000001;
    *&v227[8] = 1;
    v229 = 1;
    goto LABEL_163;
  }

  v118 = MEMORY[0x277D643F8];
  v119 = [(SUCorePolicy *)v218 updateMetricEventFields];
  v134 = [(SUCorePolicy *)self updateMetricEventFields];
  v135 = v119;
  if (![v118 dictionaryIsEqual:v119 to:?])
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    *v225 = 0x100000001;
    *v227 = 0x100000001;
    *&v227[8] = 1;
    v229 = 1;
    v54 = 1;
    goto LABEL_163;
  }

  v120 = MEMORY[0x277D643F8];
  v121 = [(SUCorePolicy *)v218 updateMetricContext];
  v132 = [(SUCorePolicy *)self updateMetricContext];
  v133 = v121;
  if (![v120 stringIsEqual:v121 to:?])
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    *v225 = 0x100000001;
    *v227 = 0x100000001;
    *&v227[8] = 1;
    v229 = 1;
    v54 = 1;
    v55 = 1;
    goto LABEL_163;
  }

  v122 = MEMORY[0x277D643F8];
  v123 = [(SUCorePolicy *)v218 defaultDescriptorValues];
  v130 = [(SUCorePolicy *)self defaultDescriptorValues];
  v131 = v123;
  if (![v122 dictionaryIsEqual:v123 to:?] || (v124 = -[SUCorePolicy enablePreSUStaging](v218, "enablePreSUStaging"), v124 != -[SUCorePolicy enablePreSUStaging](self, "enablePreSUStaging")) || (v125 = -[SUCorePolicy enablePreSUStagingForOptionalAssets](v218, "enablePreSUStagingForOptionalAssets"), v125 != -[SUCorePolicy enablePreSUStagingForOptionalAssets](self, "enablePreSUStagingForOptionalAssets")))
  {
    v57 = 0;
    v58 = 0;
    *&v230[12] = 0x100000001;
    *&v230[8] = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    v62 = 1;
    v63 = 1;
    *v230 = 0x100000001;
    v228 = 1;
    *&v226[28] = 0x100000001;
    *&v226[20] = 0x100000001;
    v224 = 0x100000001;
    *&v223[8] = 1;
    *&v222[28] = 0x100000001;
    *&v222[20] = 0x100000001;
    *&v222[12] = 0x100000001;
    *&v222[8] = 1;
    *v222 = 0x100000001;
    *v223 = 0x100000001;
    *&v226[16] = 1;
    *&v226[8] = 0x100000001;
    *&v225[8] = 1;
    *v226 = 0x100000001;
    *v225 = 0x100000001;
    *v227 = 0x100000001;
    *&v227[8] = 1;
    v229 = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    goto LABEL_163;
  }

  v126 = MEMORY[0x277D643F8];
  v127 = [(SUCorePolicy *)self policyExtensions];
  v5 = v218;
  v128 = [(SUCorePolicy *)v218 policyExtensions];
  v129 = v127;
  v58 = [v126 arrayIsEqual:v127 to:v128];
  v7 = v128;
  v57 = 1;
  *&v230[12] = 0x100000001;
  *&v230[8] = 1;
  v59 = 1;
  v60 = 1;
  v61 = 1;
  v62 = 1;
  v63 = 1;
  *v230 = 0x100000001;
  v228 = 1;
  *&v226[28] = 0x100000001;
  *&v226[20] = 0x100000001;
  v224 = 0x100000001;
  *&v223[8] = 1;
  *&v222[28] = 0x100000001;
  *&v222[20] = 0x100000001;
  *&v222[12] = 0x100000001;
  *&v222[8] = 1;
  *v222 = 0x100000001;
  *v223 = 0x100000001;
  *&v226[16] = 1;
  *&v226[8] = 0x100000001;
  *&v225[8] = 1;
  *v226 = 0x100000001;
  *v225 = 0x100000001;
  *v227 = 0x100000001;
  *&v227[8] = 1;
  v229 = 1;
  v54 = 1;
  v55 = 1;
  v56 = 1;
LABEL_42:
  if (v57)
  {
    v219 = v4;
    v64 = v63;
    v65 = v62;
    v66 = v58;
    v67 = v61;
    v68 = v60;
    v69 = v5;
    v70 = v59;
    v71 = v54;
    v72 = v55;
    v73 = v56;

    v74 = v73;
    v55 = v72;
    v54 = v71;
    v59 = v70;
    v5 = v69;
    v60 = v68;
    v61 = v67;
    v58 = v66;
    v62 = v65;
    v63 = v64;
    v4 = v219;
    if (!v74)
    {
      goto LABEL_44;
    }
  }

  else if (!v56)
  {
LABEL_44:
    if (v55)
    {
      goto LABEL_45;
    }

LABEL_49:
    if (!v54)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (!v55)
  {
    goto LABEL_49;
  }

LABEL_45:

  if (v54)
  {
LABEL_50:
  }

LABEL_51:
  if (v229)
  {
  }

  if (*&v227[8])
  {
  }

  if (*&v227[4])
  {
  }

  if (*v227)
  {
  }

  if (*v225)
  {
  }

  if (*v226)
  {
  }

  if (*&v225[4])
  {
  }

  if (*&v225[8])
  {
  }

  if (*&v226[4])
  {
  }

  if (*&v226[8])
  {
  }

  if (*&v226[12])
  {
  }

  if (*&v226[16])
  {
  }

  if (*&v226[24])
  {
  }

  if (v224)
  {
  }

  if (*v223)
  {
  }

  if (*v222)
  {
  }

  if (*&v222[4])
  {
  }

  if (*&v222[8])
  {
  }

  if (*&v222[12])
  {
  }

  if (*&v222[16])
  {
  }

  if (*&v222[20])
  {
  }

  if (*&v222[24])
  {
  }

  if (*&v222[28])
  {
  }

  if (*&v222[32])
  {
  }

  if (*&v223[4])
  {
  }

  if (*&v223[8])
  {
  }

  if (HIDWORD(v224))
  {
  }

  if (*&v226[20])
  {
  }

  if (*&v226[28])
  {
  }

  if (*&v226[32])
  {
  }

  if (v228)
  {
  }

  if (*v230)
  {
  }

  if (*&v230[4])
  {

    if (!v63)
    {
      goto LABEL_117;
    }
  }

  else if (!v63)
  {
LABEL_117:
    if (v62)
    {
      goto LABEL_118;
    }

    goto LABEL_124;
  }

  if (v62)
  {
LABEL_118:

    if (!v61)
    {
      goto LABEL_119;
    }

    goto LABEL_125;
  }

LABEL_124:
  if (!v61)
  {
LABEL_119:
    if (v60)
    {
      goto LABEL_120;
    }

    goto LABEL_126;
  }

LABEL_125:

  if (v60)
  {
LABEL_120:

    if (!v59)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_126:
  if (v59)
  {
LABEL_127:
  }

LABEL_128:
  if (*&v230[8])
  {
  }

  if (*&v230[12])
  {
  }

  if (*&v230[16])
  {
  }

  if (v232 == v231)
  {
  }

LABEL_137:
  return v58;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(SUCorePolicy *)self softwareUpdateAssetType];
  v7 = [(SUCorePolicy *)self documentationAssetType];
  v8 = [(SUCorePolicy *)self specifiedUsedPolicies];
  v9 = [(SUCorePolicy *)self policyExtensions];
  v10 = [v5 initWithSoftwareUpdateAssetType:v6 documentationAssetType:v7 usingPolicies:v8 usingExtensions:v9];

  v11 = [v10 softwareUpdateScanPolicy];
  v12 = [v11 specifiedFields];

  v13 = [v10 documentationScanPolicy];
  v14 = [v13 specifiedFields];

  v15 = [v10 documentationDownloadPolicy];
  v16 = [v15 specifiedFields];

  v17 = [v10 loadBrainPolicy];
  v18 = [v17 specifiedFields];

  v19 = [v10 downloadPreflightPolicy];
  v20 = [v19 specifiedFields];

  v21 = [v10 softwareUpdateDownloadPolicy];
  v22 = [v21 specifiedFields];

  [v10 setRestrictToFull:{-[SUCorePolicy restrictToFull](self, "restrictToFull")}];
  [v10 setAllowSameVersion:{-[SUCorePolicy allowSameVersion](self, "allowSameVersion")}];
  [v10 setBackground:{-[SUCorePolicy background](self, "background")}];
  [v10 setAllowsCellular:{-[SUCorePolicy allowsCellular](self, "allowsCellular")}];
  v23 = [v10 softwareUpdateScanPolicy];
  [v23 setSpecifiedFields:v12];

  v24 = [v10 documentationScanPolicy];
  [v24 setSpecifiedFields:v14];

  v25 = [v10 documentationDownloadPolicy];
  [v25 setSpecifiedFields:v16];

  v26 = [v10 loadBrainPolicy];
  [v26 setSpecifiedFields:v18];

  v27 = [v10 downloadPreflightPolicy];
  [v27 setSpecifiedFields:v20];

  v28 = [v10 softwareUpdateDownloadPolicy];
  [v28 setSpecifiedFields:v22];

  v29 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v30 = [v29 copyWithZone:a3];
  [v10 setSoftwareUpdateScanPolicy:v30];

  v31 = [(SUCorePolicy *)self documentationScanPolicy];
  v32 = [v31 copyWithZone:a3];
  [v10 setDocumentationScanPolicy:v32];

  v33 = [(SUCorePolicy *)self documentationDownloadPolicy];
  v34 = [v33 copyWithZone:a3];
  [v10 setDocumentationDownloadPolicy:v34];

  v35 = [(SUCorePolicy *)self loadBrainPolicy];
  v36 = [v35 copyWithZone:a3];
  [v10 setLoadBrainPolicy:v36];

  v37 = [(SUCorePolicy *)self downloadPreflightPolicy];
  v38 = [v37 copyWithZone:a3];
  [v10 setDownloadPreflightPolicy:v38];

  v39 = [(SUCorePolicy *)self wakeupPreflightPolicy];
  v40 = [v39 copyWithZone:a3];
  [v10 setWakeupPreflightPolicy:v40];

  v41 = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
  v42 = [v41 copyWithZone:a3];
  [v10 setPrerequisiteCheckPreflightPolicy:v42];

  v43 = [(SUCorePolicy *)self personalizePreflightPolicy];
  v44 = [v43 copyWithZone:a3];
  [v10 setPersonalizePreflightPolicy:v44];

  v45 = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
  v46 = [v45 copyWithZone:a3];
  [v10 setFdrRecoveryPreflightPolicy:v46];

  v47 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  v48 = [v47 copyWithZone:a3];
  [v10 setSoftwareUpdateDownloadPolicy:v48];

  v49 = [(SUCorePolicy *)self preparePolicy];
  v50 = [v49 copyWithZone:a3];
  [v10 setPreparePolicy:v50];

  v51 = [(SUCorePolicy *)self suspendPolicy];
  v52 = [v51 copyWithZone:a3];
  [v10 setSuspendPolicy:v52];

  v53 = [(SUCorePolicy *)self resumePolicy];
  v54 = [v53 copyWithZone:a3];
  [v10 setResumePolicy:v54];

  v55 = [(SUCorePolicy *)self applyPolicy];
  v56 = [v55 copyWithZone:a3];
  [v10 setApplyPolicy:v56];

  v57 = [(SUCorePolicy *)self rollbackPolicy];
  v58 = [v57 copyWithZone:a3];
  [v10 setRollbackPolicy:v58];

  v59 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v60 = [v59 copyWithZone:a3];
  [v10 setPrerequisiteBuildVersion:v60];

  v61 = [(SUCorePolicy *)self prerequisiteProductVersion];
  v62 = [v61 copyWithZone:a3];
  [v10 setPrerequisiteProductVersion:v62];

  v63 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v64 = [v63 copyWithZone:a3];
  [v10 setPrerequisiteRestoreVersion:v64];

  v65 = [(SUCorePolicy *)self targetRestoreVersion];
  v66 = [v65 copyWithZone:a3];
  [v10 setTargetRestoreVersion:v66];

  v67 = [(SUCorePolicy *)self installedSFRVersion];
  v68 = [v67 copyWithZone:a3];
  [v10 setInstalledSFRVersion:v68];

  v69 = [(SUCorePolicy *)self targetVolumeUUID];
  v70 = [v69 copyWithZone:a3];
  [v10 setTargetVolumeUUID:v70];

  v71 = [(SUCorePolicy *)self deviceClass];
  v72 = [v71 copyWithZone:a3];
  [v10 setDeviceClass:v72];

  v73 = [(SUCorePolicy *)self hwModelStr];
  v74 = [v73 copyWithZone:a3];
  [v10 setHwModelStr:v74];

  v75 = [(SUCorePolicy *)self productType];
  v76 = [v75 copyWithZone:a3];
  [v10 setProductType:v76];

  v77 = [(SUCorePolicy *)self releaseType];
  v78 = [v77 copyWithZone:a3];
  [v10 setReleaseType:v78];

  [v10 setIsInternal:{-[SUCorePolicy isInternal](self, "isInternal")}];
  [v10 setCheckAvailableSpace:{-[SUCorePolicy checkAvailableSpace](self, "checkAvailableSpace")}];
  [v10 setUseReserveSpace:{-[SUCorePolicy useReserveSpace](self, "useReserveSpace")}];
  [v10 setCacheDeleteUrgency:{-[SUCorePolicy cacheDeleteUrgency](self, "cacheDeleteUrgency")}];
  v79 = [(SUCorePolicy *)self userAgentString];
  v80 = [v79 copyWithZone:a3];
  [v10 setUserAgentString:v80];

  [v10 setPerformPreflightEncryptedCheck:{-[SUCorePolicy performPreflightEncryptedCheck](self, "performPreflightEncryptedCheck")}];
  [v10 setPerformPreflightSnapshotCheck:{-[SUCorePolicy performPreflightSnapshotCheck](self, "performPreflightSnapshotCheck")}];
  v81 = [(SUCorePolicy *)self updateVolumePath];
  v82 = [v81 copyWithZone:a3];
  [v10 setUpdateVolumePath:v82];

  v83 = [(SUCorePolicy *)self ssoToken];
  v84 = [v83 copyWithZone:a3];
  [v10 setSsoToken:v84];

  v85 = [(SUCorePolicy *)self personalizedManifestRootsPath];
  v86 = [v85 copyWithZone:a3];
  [v10 setPersonalizedManifestRootsPath:v86];

  v87 = [(SUCorePolicy *)self localAuthenticationContext];
  v88 = [v87 copyWithZone:a3];
  [v10 setLocalAuthenticationContext:v88];

  v89 = [(SUCorePolicy *)self localAuthenticationUserID];
  v90 = [v89 copyWithZone:a3];
  [v10 setLocalAuthenticationUserID:v90];

  v91 = [(SUCorePolicy *)self mdmBootstrapToken];
  v92 = [v91 copyWithZone:a3];
  [v10 setMdmBootstrapToken:v92];

  v93 = [(SUCorePolicy *)self downloadAuthorizationHeader];
  v94 = [v93 copyWithZone:a3];
  [v10 setDownloadAuthorizationHeader:v94];

  v95 = [(SUCorePolicy *)self updateBrainLocationOverride];
  v96 = [v95 copyWithZone:a3];
  [v10 setUpdateBrainLocationOverride:v96];

  v97 = [(SUCorePolicy *)self assetAudienceUUID];
  v98 = [v97 copyWithZone:a3];
  [v10 setAssetAudienceUUID:v98];

  v99 = [(SUCorePolicy *)self alternateAssetAudienceUUID];
  v100 = [v99 copyWithZone:a3];
  [v10 setAlternateAssetAudienceUUID:v100];

  [v10 setDisableAlternateUpdate:{-[SUCorePolicy disableAlternateUpdate](self, "disableAlternateUpdate")}];
  [v10 setDisableSplatCombo:{-[SUCorePolicy disableSplatCombo](self, "disableSplatCombo")}];
  v101 = [(SUCorePolicy *)self personalizationServerURL];
  v102 = [v101 copyWithZone:a3];
  [v10 setPersonalizationServerURL:v102];

  v103 = [(SUCorePolicy *)self proxyHostName];
  v104 = [v103 copyWithZone:a3];
  [v10 setProxyHostName:v104];

  v105 = [(SUCorePolicy *)self proxyPortNumber];
  v106 = [v105 copyWithZone:a3];
  [v10 setProxyPortNumber:v106];

  [v10 setBridgeOSIgnoreMinimumVersionCheck:{-[SUCorePolicy bridgeOSIgnoreMinimumVersionCheck](self, "bridgeOSIgnoreMinimumVersionCheck")}];
  v107 = [(SUCorePolicy *)self bridgeOSDownloadDirectory];
  v108 = [v107 copyWithZone:a3];
  [v10 setBridgeOSDownloadDirectory:v108];

  [v10 setEnableEmbeddedOSInstall:{-[SUCorePolicy enableEmbeddedOSInstall](self, "enableEmbeddedOSInstall")}];
  [v10 setEnableBridgeOSInstall:{-[SUCorePolicy enableBridgeOSInstall](self, "enableBridgeOSInstall")}];
  [v10 setEnableOSPersonalization:{-[SUCorePolicy enableOSPersonalization](self, "enableOSPersonalization")}];
  [v10 setUserInitiated:{-[SUCorePolicy userInitiated](self, "userInitiated")}];
  [v10 setSkipVolumeSealing:{-[SUCorePolicy skipVolumeSealing](self, "skipVolumeSealing")}];
  [v10 setQualityOfService:{-[SUCorePolicy qualityOfService](self, "qualityOfService")}];
  v109 = [(SUCorePolicy *)self updateMetricEventFields];
  v110 = [v109 copyWithZone:a3];
  [v10 setUpdateMetricEventFields:v110];

  v111 = [(SUCorePolicy *)self updateMetricContext];
  v112 = [v111 copyWithZone:a3];
  [v10 setUpdateMetricContext:v112];

  v113 = [(SUCorePolicy *)self defaultDescriptorValues];
  v114 = [v113 copyWithZone:a3];
  [v10 setDefaultDescriptorValues:v114];

  [v10 setEnablePreSUStaging:{-[SUCorePolicy enablePreSUStaging](self, "enablePreSUStaging")}];
  [v10 setEnablePreSUStagingForOptionalAssets:{-[SUCorePolicy enablePreSUStagingForOptionalAssets](self, "enablePreSUStagingForOptionalAssets")}];
  return v10;
}

- (id)description
{
  v114 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v4 = [(SUCorePolicy *)self policyExtensions];
  v5 = [v4 countByEnumeratingWithState:&v109 objects:v113 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v110;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v110 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v109 + 1) + 8 * i);
        v10 = [v9 extensionName];
        [v3 appendFormat:@"\n\t%@:%@", v10, v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v109 objects:v113 count:16];
    }

    while (v6);
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v12 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  [v11 appendFormat:@"    %@\n", v12];

  v13 = [(SUCorePolicy *)self documentationScanPolicy];
  [v11 appendFormat:@"    %@\n", v13];

  v14 = [(SUCorePolicy *)self documentationDownloadPolicy];
  [v11 appendFormat:@"    %@\n", v14];

  v15 = [(SUCorePolicy *)self loadBrainPolicy];
  [v11 appendFormat:@"    %@\n", v15];

  v16 = [(SUCorePolicy *)self downloadPreflightPolicy];
  [v11 appendFormat:@"    %@\n", v16];

  v17 = [(SUCorePolicy *)self wakeupPreflightPolicy];
  [v11 appendFormat:@"    %@\n", v17];

  v18 = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
  [v11 appendFormat:@"    %@\n", v18];

  v19 = [(SUCorePolicy *)self personalizePreflightPolicy];
  [v11 appendFormat:@"    %@\n", v19];

  v20 = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
  [v11 appendFormat:@"    %@\n", v20];

  v21 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  [v11 appendFormat:@"    %@\n", v21];

  v22 = [(SUCorePolicy *)self preparePolicy];
  [v11 appendFormat:@"    %@\n", v22];

  v23 = [(SUCorePolicy *)self suspendPolicy];
  [v11 appendFormat:@"    %@\n", v23];

  v24 = [(SUCorePolicy *)self resumePolicy];
  [v11 appendFormat:@"    %@\n", v24];

  v25 = [(SUCorePolicy *)self applyPolicy];
  [v11 appendFormat:@"    %@\n", v25];

  v26 = [(SUCorePolicy *)self rollbackPolicy];
  [v11 appendFormat:@"    %@\n", v26];

  v80 = objc_alloc(MEMORY[0x277CCACA8]);
  v79 = [(SUCorePolicy *)self specifiedUsedPolicies];
  v85 = [(SUCorePolicy *)self softwareUpdateAssetType];
  v84 = [(SUCorePolicy *)self documentationAssetType];
  v83 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v82 = [(SUCorePolicy *)self prerequisiteProductVersion];
  v27 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v108 = [(SUCorePolicy *)self targetRestoreVersion];
  v107 = [(SUCorePolicy *)self installedSFRVersion];
  v106 = [(SUCorePolicy *)self deviceClass];
  v105 = [(SUCorePolicy *)self hwModelStr];
  v104 = [(SUCorePolicy *)self productType];
  v103 = [(SUCorePolicy *)self releaseType];
  if ([(SUCorePolicy *)self isInternal])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v78 = v28;
  if ([(SUCorePolicy *)self restrictToFull])
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  v77 = v29;
  if ([(SUCorePolicy *)self allowSameVersion])
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  v75 = v30;
  if ([(SUCorePolicy *)self background])
  {
    v31 = @"YES";
  }

  else
  {
    v31 = @"NO";
  }

  v74 = v31;
  if ([(SUCorePolicy *)self allowsCellular])
  {
    v32 = @"YES";
  }

  else
  {
    v32 = @"NO";
  }

  v73 = v32;
  if ([(SUCorePolicy *)self checkAvailableSpace])
  {
    v33 = @"YES";
  }

  else
  {
    v33 = @"NO";
  }

  v72 = v33;
  if ([(SUCorePolicy *)self useReserveSpace])
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  v71 = v34;
  v102 = [SUCoreSpace cacheDeleteUrgencyName:[(SUCorePolicy *)self cacheDeleteUrgency]];
  v101 = [(SUCorePolicy *)self userAgentString];
  if ([(SUCorePolicy *)self userInitiated])
  {
    v35 = @"YES";
  }

  else
  {
    v35 = @"NO";
  }

  v68 = v35;
  if ([(SUCorePolicy *)self skipVolumeSealing])
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v67 = v36;
  v100 = [(SUCorePolicy *)self stringForQoS:[(SUCorePolicy *)self qualityOfService]];
  v99 = [(SUCorePolicy *)self targetVolumeUUID];
  v98 = [(SUCorePolicy *)self updateVolumePath];
  if ([(SUCorePolicy *)self performPreflightEncryptedCheck])
  {
    v37 = @"YES";
  }

  else
  {
    v37 = @"NO";
  }

  v65 = v37;
  if ([(SUCorePolicy *)self performPreflightSnapshotCheck])
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  v64 = v38;
  v97 = [(SUCorePolicy *)self updateBrainLocationOverride];
  [(SUCorePolicy *)self ssoToken];
  v76 = v39 = @"none";
  if (v76)
  {
    v40 = @"present";
  }

  else
  {
    v40 = @"none";
  }

  v63 = v40;
  v96 = [(SUCorePolicy *)self personalizedManifestRootsPath];
  v95 = [(SUCorePolicy *)self personalizationServerURL];
  v94 = [(SUCorePolicy *)self proxyHostName];
  v93 = [(SUCorePolicy *)self proxyPortNumber];
  v70 = [(SUCorePolicy *)self localAuthenticationContext];
  if (v70)
  {
    v41 = @"present";
  }

  else
  {
    v41 = @"none";
  }

  v62 = v41;
  v69 = [(SUCorePolicy *)self downloadAuthorizationHeader];
  if (v69)
  {
    v42 = @"present";
  }

  else
  {
    v42 = @"none";
  }

  v61 = v42;
  v92 = [(SUCorePolicy *)self localAuthenticationUserID];
  v66 = [(SUCorePolicy *)self mdmBootstrapToken];
  if (v66)
  {
    v43 = @"present";
  }

  else
  {
    v43 = @"none";
  }

  v60 = v43;
  if ([(SUCorePolicy *)self bridgeOSIgnoreMinimumVersionCheck])
  {
    v44 = @"YES";
  }

  else
  {
    v44 = @"NO";
  }

  v59 = v44;
  v91 = [(SUCorePolicy *)self bridgeOSDownloadDirectory];
  if ([(SUCorePolicy *)self enableEmbeddedOSInstall])
  {
    v45 = @"YES";
  }

  else
  {
    v45 = @"NO";
  }

  v58 = v45;
  if ([(SUCorePolicy *)self enableBridgeOSInstall])
  {
    v46 = @"YES";
  }

  else
  {
    v46 = @"NO";
  }

  v57 = v46;
  if ([(SUCorePolicy *)self enableOSPersonalization])
  {
    v47 = @"YES";
  }

  else
  {
    v47 = @"NO";
  }

  v56 = v47;
  v90 = [(SUCorePolicy *)self updateMetricEventFields];
  v89 = [(SUCorePolicy *)self updateMetricContext];
  v88 = [(SUCorePolicy *)self defaultDescriptorValues];
  v87 = [(SUCorePolicy *)self assetAudienceUUID];
  v86 = [(SUCorePolicy *)self alternateAssetAudienceUUID];
  if ([(SUCorePolicy *)self disableAlternateUpdate])
  {
    v48 = @"YES";
  }

  else
  {
    v48 = @"NO";
  }

  if ([(SUCorePolicy *)self disableSplatCombo])
  {
    v49 = @"YES";
  }

  else
  {
    v49 = @"NO";
  }

  v50 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
  v81 = v27;
  if (v50)
  {
    v39 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
  }

  if ([(SUCorePolicy *)self enablePreSUStaging])
  {
    v51 = @"YES";
  }

  else
  {
    v51 = @"NO";
  }

  if ([(SUCorePolicy *)self enablePreSUStagingForOptionalAssets])
  {
    v52 = @"YES";
  }

  else
  {
    v52 = @"NO";
  }

  v53 = objc_msgSend(v80, "initWithFormat:", @"\n[>>>\n    SubPolicies(specifiedUsedPolicies:0x%llX)\n%@    AssetTypes(softwareUpdateAssetType:%@|documentationAssetType:%@)\n    Versions(prerequisiteBuildVersion:%@|prerequisiteProductVersion:%@|prerequisiteRestoreVersion:%@|targetRestoreVersion:%@|installedSFRVersion:%@)\n    Device(deviceClass:%@|hwModelStr:%@|productType:%@|releaseType:%@|isInternal:%@)\n    Config(restrictToFull:%@|allowSameVersion:%@|background:%@|allowsCellular:%@|checkAvailableSpace:%@|useReserveSpace:%@|cacheDeleteUrgency:%@|userAgentString:%@|userInitiated:%@|skipVolumeSealing:%@|qualityOfService:%@)\n    Target(targetVolumeUUID:%@|updateVolumePath:%@)\n    Preflight(performPreflightEncryptedCheck:%@|performPreflightSnapshotCheck:%@|updateBrainLocationOverride:%@)\n    Personalization(SSOToken:%@|personalizedManifestRootsPath:%@|personalizationServerURL:%@|proxyHostName:%@|proxyPortNumber:%@)\n    Authentication(localAuthenticationContext:%@|downloadAuthorizationHeader:%@|localAuthenticationUserID:%@|mdmBootstrapToken:%@)\n    BridgeOS(bridgeOSIgnoreMinimumVersionCheck:%@|bridgeOSDownloadDirectory:%@|enableEmbeddedOSInstall:%@|enableBridgeOSInstall:%@|enableOSPersonalization:%@)\n    Metrics(updateMetricEventFields:%@|updateMetricContext:%@\n    Defaults(defaultDescriptorValues:%@|assetAudienceUUID:%@|alternateAssetAudienceUUID:%@|disableAlternateUpdate:%@|disableSplombo:%@|mobileAssetPurposeOverride:%@)\n    PSUS(enable:%@|enableForOptionalAssets:%@)\n    Extensions(%@)\n<<<]"), v79, v11, v85, v84, v83, v82, v81, v108, v107, v106, v105, v104, v103, v78, v77, v75, v74, v73, v72, v71, v102, v101, v68, v67, v100, v99, v98, v65, v64, v97, v63, v96, v95, v94, v93, v62, v61, v92, v60, v59, v91, v58, v57, v56, v90, v89, v88, v87, v86, v48, v49, v39, v51, v52, v3;
  if (v50)
  {
  }

  v54 = *MEMORY[0x277D85DE8];

  return v53;
}

- (id)summary
{
  v3 = [(SUCorePolicy *)self policyExtensions];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(SUCorePolicy *)self policyExtensions];
    v6 = [&stru_28469CC48 stringByAppendingFormat:@"|extensions(%lu)", objc_msgSend(v5, "count")];
  }

  else
  {
    v6 = &stru_28469CC48;
  }

  if ([(SUCorePolicy *)self specifiedUsedPolicies]!= 127)
  {
    v7 = [(__CFString *)v6 stringByAppendingFormat:@"|SubPolCfg=%llX", [(SUCorePolicy *)self specifiedUsedPolicies]];

    v6 = v7;
  }

  v8 = [(SUCorePolicy *)self softwareUpdateScanPolicy];

  if (v8)
  {
    v9 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    v10 = [v9 summary];
    v11 = [(__CFString *)v6 stringByAppendingFormat:@"|UpdateScan=%@", v10];

    v6 = v11;
  }

  v12 = [(SUCorePolicy *)self documentationScanPolicy];

  if (v12)
  {
    v13 = [(SUCorePolicy *)self documentationScanPolicy];
    v14 = [v13 summary];
    v15 = [(__CFString *)v6 stringByAppendingFormat:@"|DocScan=%@", v14];

    v6 = v15;
  }

  v16 = [(SUCorePolicy *)self documentationDownloadPolicy];

  if (v16)
  {
    v17 = [(SUCorePolicy *)self documentationDownloadPolicy];
    v18 = [v17 summary];
    v19 = [(__CFString *)v6 stringByAppendingFormat:@"|DocDownload=%@", v18];

    v6 = v19;
  }

  v20 = [(SUCorePolicy *)self loadBrainPolicy];

  if (v20)
  {
    v21 = [(SUCorePolicy *)self loadBrainPolicy];
    v22 = [v21 summary];
    v23 = [(__CFString *)v6 stringByAppendingFormat:@"|LoadBrainUpdate=%@", v22];

    v6 = v23;
  }

  v24 = [(SUCorePolicy *)self downloadPreflightPolicy];

  if (v24)
  {
    v25 = [(SUCorePolicy *)self downloadPreflightPolicy];
    v26 = [v25 summary];
    v27 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightDownload=%@", v26];

    v6 = v27;
  }

  v28 = [(SUCorePolicy *)self wakeupPreflightPolicy];

  if (v28)
  {
    v29 = [(SUCorePolicy *)self wakeupPreflightPolicy];
    v30 = [v29 summary];
    v31 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightWakeup=%@", v30];

    v6 = v31;
  }

  v32 = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];

  if (v32)
  {
    v33 = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
    v34 = [v33 summary];
    v35 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightPrerequisiteCheck=%@", v34];

    v6 = v35;
  }

  v36 = [(SUCorePolicy *)self personalizePreflightPolicy];

  if (v36)
  {
    v37 = [(SUCorePolicy *)self personalizePreflightPolicy];
    v38 = [v37 summary];
    v39 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightPersonalize=%@", v38];

    v6 = v39;
  }

  v40 = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];

  if (v40)
  {
    v41 = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
    v42 = [v41 summary];
    v43 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightFDRRecovery=%@", v42];

    v6 = v43;
  }

  v44 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];

  if (v44)
  {
    v45 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    v46 = [v45 summary];
    v47 = [(__CFString *)v6 stringByAppendingFormat:@"|DownloadSU=%@", v46];

    v6 = v47;
  }

  v48 = [(SUCorePolicy *)self preparePolicy];

  if (v48)
  {
    v49 = [(SUCorePolicy *)self preparePolicy];
    v50 = [v49 summary];
    v51 = [(__CFString *)v6 stringByAppendingFormat:@"|PrepareUpdate=%@", v50];

    v6 = v51;
  }

  v52 = [(SUCorePolicy *)self suspendPolicy];

  if (v52)
  {
    v53 = [(SUCorePolicy *)self suspendPolicy];
    v54 = [v53 summary];
    v55 = [(__CFString *)v6 stringByAppendingFormat:@"|SuspendUpdate=%@", v54];

    v6 = v55;
  }

  v56 = [(SUCorePolicy *)self resumePolicy];

  if (v56)
  {
    v57 = [(SUCorePolicy *)self resumePolicy];
    v58 = [v57 summary];
    v59 = [(__CFString *)v6 stringByAppendingFormat:@"|ResumeUpdate=%@", v58];

    v6 = v59;
  }

  v60 = [(SUCorePolicy *)self applyPolicy];

  if (v60)
  {
    v61 = [(SUCorePolicy *)self applyPolicy];
    v62 = [v61 summary];
    v63 = [(__CFString *)v6 stringByAppendingFormat:@"|ApplyUpdate=%@", v62];

    v6 = v63;
  }

  v64 = [(SUCorePolicy *)self rollbackPolicy];

  if (v64)
  {
    v65 = [(SUCorePolicy *)self rollbackPolicy];
    v66 = [v65 summary];
    v67 = [(__CFString *)v6 stringByAppendingFormat:@"|rollbackUpdate=%@", v66];

    v6 = v67;
  }

  v68 = [(SUCorePolicy *)self targetVolumeUUID];

  if (v68)
  {
    v69 = [(SUCorePolicy *)self targetVolumeUUID];
    v70 = [(__CFString *)v6 stringByAppendingFormat:@"|targetVolumeUUID=%@", v69];

    v6 = v70;
  }

  v71 = [(SUCorePolicy *)self deviceClass];

  if (v71)
  {
    v72 = [(SUCorePolicy *)self deviceClass];
    v73 = [(__CFString *)v6 stringByAppendingFormat:@"|deviceClass=%@", v72];

    v6 = v73;
  }

  v74 = [(SUCorePolicy *)self hwModelStr];

  if (v74)
  {
    v75 = [(SUCorePolicy *)self hwModelStr];
    v76 = [(__CFString *)v6 stringByAppendingFormat:@"|hwModelStr=%@", v75];

    v6 = v76;
  }

  v77 = [(SUCorePolicy *)self productType];

  if (v77)
  {
    v78 = [(SUCorePolicy *)self productType];
    v79 = [(__CFString *)v6 stringByAppendingFormat:@"|productType=%@", v78];

    v6 = v79;
  }

  v80 = [(SUCorePolicy *)self releaseType];

  if (v80)
  {
    v81 = [(SUCorePolicy *)self releaseType];
    v82 = [(__CFString *)v6 stringByAppendingFormat:@"|releaseType=%@", v81];

    v6 = v81;
  }

  else
  {
    v82 = [(__CFString *)v6 stringByAppendingString:@"|releaseType=customer"];
  }

  if (![(SUCorePolicy *)self checkAvailableSpace])
  {
    v83 = [v82 stringByAppendingString:@"|!checkSpace"];

    v82 = v83;
  }

  if ([(SUCorePolicy *)self cacheDeleteUrgency]!= -1)
  {
    v84 = [SUCoreSpace cacheDeleteUrgencyName:[(SUCorePolicy *)self cacheDeleteUrgency]];
    v85 = [v82 stringByAppendingFormat:@"|deleteUrgency=%@", v84];

    v82 = v85;
  }

  v86 = [(SUCorePolicy *)self userAgentString];

  if (v86)
  {
    v87 = [(SUCorePolicy *)self userAgentString];
    v88 = [v82 stringByAppendingFormat:@"|userAgentString=%@", v87];

    v82 = v88;
  }

  if ([(SUCorePolicy *)self performPreflightEncryptedCheck])
  {
    v89 = [v82 stringByAppendingString:@"|performPreflightEncryptedCheck=YES"];

    v82 = v89;
  }

  if ([(SUCorePolicy *)self performPreflightSnapshotCheck])
  {
    v90 = [v82 stringByAppendingString:@"|performPreflightSnapshotCheck=YES"];

    v82 = v90;
  }

  v91 = [(SUCorePolicy *)self updateVolumePath];

  if (v91)
  {
    v92 = [(SUCorePolicy *)self updateVolumePath];
    v93 = [v82 stringByAppendingFormat:@"|updateVolumePath=%@", v92];

    v82 = v93;
  }

  v94 = [(SUCorePolicy *)self ssoToken];
  if (v94)
  {
    v95 = @"|withSSO";
  }

  else
  {
    v95 = @"|noSSO";
  }

  v96 = [v82 stringByAppendingString:v95];

  v97 = [(SUCorePolicy *)self personalizationServerURL];

  if (v97)
  {
    v98 = [(SUCorePolicy *)self personalizationServerURL];
    v99 = [v96 stringByAppendingFormat:@"|personalizationServerURL=%@", v98];

    v96 = v99;
  }

  v100 = [(SUCorePolicy *)self proxyHostName];

  if (v100)
  {
    v101 = [(SUCorePolicy *)self proxyHostName];
    v102 = [v96 stringByAppendingFormat:@"|proxyHostName=%@", v101];

    v96 = v102;
  }

  v103 = [(SUCorePolicy *)self proxyPortNumber];

  if (v103)
  {
    v104 = [(SUCorePolicy *)self proxyPortNumber];
    v105 = [v96 stringByAppendingFormat:@"|proxyPortNumber=%@", v104];

    v96 = v105;
  }

  v106 = [(SUCorePolicy *)self updateMetricEventFields];
  if (v106)
  {
    v107 = @"|withUpdateMetricEventFields";
  }

  else
  {
    v107 = @"|noUpdateMetricEventFields";
  }

  v108 = [v96 stringByAppendingString:v107];

  v109 = [(SUCorePolicy *)self updateMetricContext];

  if (v109)
  {
    v110 = [(SUCorePolicy *)self updateMetricContext];
    v111 = [v108 stringByAppendingFormat:@"|updateMetricContext=%@", v110];

    v108 = v111;
  }

  v112 = [(SUCorePolicy *)self assetAudienceUUID];

  if (v112)
  {
    v113 = [(SUCorePolicy *)self assetAudienceUUID];
    v114 = [v108 stringByAppendingFormat:@"|assetAudienceUUID=%@", v113];

    v108 = v114;
  }

  v115 = [(SUCorePolicy *)self alternateAssetAudienceUUID];

  if (v115)
  {
    v116 = [(SUCorePolicy *)self alternateAssetAudienceUUID];
    v117 = [v108 stringByAppendingFormat:@"|alternateAssetAudienceUUID=%@", v116];

    v108 = v117;
  }

  if ([(SUCorePolicy *)self disableAlternateUpdate])
  {
    v118 = [v108 stringByAppendingString:@"|disableAlternateUpdate=YES"];

    v108 = v118;
  }

  if ([(SUCorePolicy *)self disableSplatCombo])
  {
    v119 = [v108 stringByAppendingString:@"|disableSplombo=YES"];

    v108 = v119;
  }

  if ([(SUCorePolicy *)self enablePreSUStaging])
  {
    v120 = [v108 stringByAppendingString:@"|enablePSUS=YES"];

    v108 = v120;
  }

  if ([(SUCorePolicy *)self enablePreSUStagingForOptionalAssets])
  {
    v121 = [v108 stringByAppendingString:@"|enablePSUSForOptionalAssets=YES"];

    v108 = v121;
  }

  if (([v108 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v122 = [v108 stringByAppendingString:@"|"];

    v108 = v122;
  }

  v123 = v108;

  return v108;
}

- (id)assetTypeSummary
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCorePolicy *)self softwareUpdateAssetType];
  v5 = [(SUCorePolicy *)self documentationAssetType];
  v6 = [v3 stringWithFormat:@"|su=%@|doc=%@|", v4, v5];

  return v6;
}

- (id)stringForQoS:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return @"MSUQualityOfServiceUnspecified";
  }

  else
  {
    return off_27892E668[a3 - 1];
  }
}

+ (id)_cleanProductVersion:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 4 && objc_msgSend(v3, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v3 stringByReplacingCharactersInRange:0 withString:{4, &stru_28469CC48}];

    v3 = v4;
  }

  return v3;
}

@end