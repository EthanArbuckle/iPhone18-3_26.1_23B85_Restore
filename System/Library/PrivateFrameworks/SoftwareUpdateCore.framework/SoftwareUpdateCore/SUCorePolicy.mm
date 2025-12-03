@interface SUCorePolicy
+ (BOOL)getAllowSameProductVersionPredicateResultWithAssetOSVersion:(id)version assetBuildVersion:(id)buildVersion prerequisiteProductVersion:(id)productVersion prerequisiteBuildVersion:(id)prerequisiteBuildVersion;
+ (BOOL)getNoAllowSameProductVersionPredicateResultWithAssetOSVersion:(id)version assetBuildVersion:(id)buildVersion prerequisiteProductVersion:(id)productVersion prerequisiteBuildVersion:(id)prerequisiteBuildVersion;
+ (id)_cleanProductVersion:(id)version;
- (BOOL)allowSameVersion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRequestedPMVSupervisedPolicy;
- (BOOL)isSplatPolicy;
- (BOOL)isSupervisedAndRequestingInvalidOS:(id *)s;
- (BOOL)isSupervisedPolicy;
- (BOOL)restrictToFull;
- (SUCorePolicy)initWithCoder:(id)coder;
- (SUCorePolicy)initWithSoftwareUpdateAssetType:(id)type documentationAssetType:(id)assetType updateBrainAssetType:(id)brainAssetType usingExtensions:(id)extensions;
- (SUCorePolicy)initWithSoftwareUpdateAssetType:(id)type documentationAssetType:(id)assetType usingPolicies:(int64_t)policies usingExtensions:(id)extensions;
- (id)assetTypeSummary;
- (id)constructDocumentationMAAssetQueryWithDocID:(id)d purpose:(id)purpose;
- (id)constructMADocumentationAssetDownloadOptionsWithUUID:(id)d;
- (id)constructMADocumentationCatalogDownloadOptionsWithUUID:(id)d usingDescriptor:(id)descriptor;
- (id)constructMASoftwareUpdateAssetDownloadOptionsWithUUID:(id)d;
- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)d assetAudience:(id)audience;
- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)purpose;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mdmPathName;
- (id)requestedProductMarketingVersion;
- (id)setUpdateMetricEventFieldsFromDictionary:(id)dictionary;
- (id)stringForQoS:(int)s;
- (id)summary;
- (int64_t)delayPeriodDays;
- (void)encodeWithCoder:(id)coder;
- (void)selectDocumentationAsset:(id *)asset fromAssetQuery:(id)query;
- (void)selectSoftwareUpdateMajorPrimaryAsset:(id *)asset majorSecondaryAsset:(id *)secondaryAsset minorPrimaryAsset:(id *)primaryAsset minorSecondaryAsset:(id *)minorSecondaryAsset fromAssetQuery:(id)query;
- (void)selectSoftwareUpdatePrimaryAsset:(id *)asset secondaryAsset:(id *)secondaryAsset fromAssetQuery:(id)query;
- (void)updateApplyOptionsWithExtensions:(id)extensions;
- (void)updateRollbackOptionsWithExtensions:(id)extensions;
@end

@implementation SUCorePolicy

- (SUCorePolicy)initWithSoftwareUpdateAssetType:(id)type documentationAssetType:(id)assetType usingPolicies:(int64_t)policies usingExtensions:(id)extensions
{
  v118 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  assetTypeCopy = assetType;
  extensionsCopy = extensions;
  v114.receiver = self;
  v114.super_class = SUCorePolicy;
  v13 = [(SUCorePolicy *)&v114 init];
  if (v13)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
      summary = [mEMORY[0x277D64418] summary];
      *buf = 138543362;
      v117 = summary;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] Using SUCoreDevice for policy: %{public}@", buf, 0xCu);
    }

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    *(v13 + 5) = policies;
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

    if (typeCopy)
    {
      v49 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:typeCopy];
    }

    else
    {
      v49 = 0;
    }

    v50 = *(v13 + 21);
    *(v13 + 21) = v49;

    if (assetTypeCopy)
    {
      v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:assetTypeCopy];
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
    v109 = extensionsCopy;
    v54 = extensionsCopy;
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

    mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
    buildVersion = [mEMORY[0x277D64418]2 buildVersion];
    v64 = *(v13 + 24);
    *(v13 + 24) = buildVersion;

    mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
    productVersion = [mEMORY[0x277D64418]3 productVersion];
    v67 = *(v13 + 25);
    *(v13 + 25) = productVersion;

    mEMORY[0x277D64418]4 = [MEMORY[0x277D64418] sharedDevice];
    restoreVersion = [mEMORY[0x277D64418]4 restoreVersion];
    v70 = *(v13 + 26);
    *(v13 + 26) = restoreVersion;

    v71 = *(v13 + 27);
    *(v13 + 27) = 0;

    mEMORY[0x277D64418]5 = [MEMORY[0x277D64418] sharedDevice];
    sfrBuildVersion = [mEMORY[0x277D64418]5 sfrBuildVersion];
    v74 = *(v13 + 28);
    *(v13 + 28) = sfrBuildVersion;

    mEMORY[0x277D64418]6 = [MEMORY[0x277D64418] sharedDevice];
    deviceClass = [mEMORY[0x277D64418]6 deviceClass];
    v77 = *(v13 + 29);
    *(v13 + 29) = deviceClass;

    mEMORY[0x277D64418]7 = [MEMORY[0x277D64418] sharedDevice];
    hwModelString = [mEMORY[0x277D64418]7 hwModelString];
    v80 = *(v13 + 30);
    *(v13 + 30) = hwModelString;

    mEMORY[0x277D64418]8 = [MEMORY[0x277D64418] sharedDevice];
    productType = [mEMORY[0x277D64418]8 productType];
    v83 = *(v13 + 31);
    *(v13 + 31) = productType;

    mEMORY[0x277D64418]9 = [MEMORY[0x277D64418] sharedDevice];
    releaseType = [mEMORY[0x277D64418]9 releaseType];
    v86 = *(v13 + 32);
    *(v13 + 32) = releaseType;

    mEMORY[0x277D64418]10 = [MEMORY[0x277D64418] sharedDevice];
    v13[12] = [mEMORY[0x277D64418]10 isInternal];

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
    extensionsCopy = v109;
  }

  v107 = *MEMORY[0x277D85DE8];
  return v13;
}

- (SUCorePolicy)initWithSoftwareUpdateAssetType:(id)type documentationAssetType:(id)assetType updateBrainAssetType:(id)brainAssetType usingExtensions:(id)extensions
{
  typeCopy = type;
  assetTypeCopy = assetType;
  extensionsCopy = extensions;
  v13 = MEMORY[0x277CCACA8];
  brainAssetTypeCopy = brainAssetType;
  brainAssetTypeCopy = [[v13 alloc] initWithFormat:@"this method has been deprecated (and was called with updateBrainAssetType=%@): initWithSoftwareUpdateAssetType:documentationAssetType:updateBrainAssetType:usingExtensions", brainAssetTypeCopy];

  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  v17 = mEMORY[0x277D64428];
  if (brainAssetTypeCopy)
  {
    [mEMORY[0x277D64428] trackFault:@"[POLICY] INIT" forReason:brainAssetTypeCopy withResult:8123 withError:0];

    selfCopy = 0;
  }

  else
  {
    [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] INIT" forReason:brainAssetTypeCopy withResult:8123 withError:0];

    self = [(SUCorePolicy *)self initWithSoftwareUpdateAssetType:typeCopy documentationAssetType:assetTypeCopy usingExtensions:extensionsCopy];
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)restrictToFull
{
  softwareUpdateScanPolicy = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  restrictToFull = [softwareUpdateScanPolicy restrictToFull];

  return restrictToFull;
}

- (BOOL)allowSameVersion
{
  softwareUpdateScanPolicy = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  allowSameVersion = [softwareUpdateScanPolicy allowSameVersion];

  return allowSameVersion;
}

- (id)constructSoftwareUpdateMAAssetQueryWithPurpose:(id)purpose
{
  v86 = *MEMORY[0x277D85DE8];
  purposeCopy = purpose;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] constructSoftwareUpdateMAAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  softwareUpdateAssetType = [(SUCorePolicy *)self softwareUpdateAssetType];

  if (!softwareUpdateAssetType)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] CONSTRUCT_SU_QUERY" forReason:@"softwareUpdateAssetType was unexpectedly nil withResult:client is required to init with softwareUpdateAssetType" withError:{8118, 0}];
    goto LABEL_32;
  }

  v8 = objc_alloc(MEMORY[0x277D289D8]);
  softwareUpdateAssetType2 = [(SUCorePolicy *)self softwareUpdateAssetType];
  softwareUpdateAssetType = [v8 initWithType:softwareUpdateAssetType2 andPurpose:purposeCopy];

  null = [MEMORY[0x277CBEB68] null];
  purposeCopy = [@"|" stringByAppendingFormat:@"purpose:%@|", purposeCopy];
  softwareUpdateScanPolicy = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  if (([softwareUpdateScanPolicy restrictToFull] & 1) != 0 || (-[SUCorePolicy prerequisiteProductVersion](self, "prerequisiteProductVersion"), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
  }

  else
  {
    v14 = v13;
    prerequisiteBuildVersion = [(SUCorePolicy *)self prerequisiteBuildVersion];

    if (prerequisiteBuildVersion)
    {
      softwareUpdateScanPolicy2 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
      restrictToIncremental = [softwareUpdateScanPolicy2 restrictToIncremental];

      v18 = MEMORY[0x277CBEB18];
      prerequisiteBuildVersion2 = [(SUCorePolicy *)self prerequisiteBuildVersion];
      v20 = prerequisiteBuildVersion2;
      if (restrictToIncremental)
      {
        v21 = [v18 arrayWithObjects:{prerequisiteBuildVersion2, 0}];
        [softwareUpdateAssetType addKeyValueArray:@"PrerequisiteBuild" with:v21];

        v22 = MEMORY[0x277CBEB18];
        prerequisiteProductVersion = [(SUCorePolicy *)self prerequisiteProductVersion];
        v24 = [v22 arrayWithObjects:{prerequisiteProductVersion, 0}];
        [softwareUpdateAssetType addKeyValueArray:@"PrerequisiteOSVersion" with:v24];

        v25 = objc_alloc(MEMORY[0x277CCACA8]);
        prerequisiteBuildVersion3 = [(SUCorePolicy *)self prerequisiteBuildVersion];
        prerequisiteProductVersion2 = [(SUCorePolicy *)self prerequisiteProductVersion];
        v28 = [v25 initWithFormat:@"prerequisite:(incr)%@:%@|", prerequisiteBuildVersion3, prerequisiteProductVersion2];
      }

      else
      {
        v70 = [v18 arrayWithObjects:{null, prerequisiteBuildVersion2, 0}];
        [softwareUpdateAssetType addKeyValueArray:@"PrerequisiteBuild" with:v70];

        v71 = MEMORY[0x277CBEB18];
        prerequisiteProductVersion3 = [(SUCorePolicy *)self prerequisiteProductVersion];
        v73 = [v71 arrayWithObjects:{null, prerequisiteProductVersion3, 0}];
        [softwareUpdateAssetType addKeyValueArray:@"PrerequisiteOSVersion" with:v73];

        v74 = objc_alloc(MEMORY[0x277CCACA8]);
        prerequisiteBuildVersion3 = [(SUCorePolicy *)self prerequisiteBuildVersion];
        prerequisiteProductVersion2 = [(SUCorePolicy *)self prerequisiteProductVersion];
        v28 = [v74 initWithFormat:@"prerequisite:%@:%@|", prerequisiteBuildVersion3, prerequisiteProductVersion2];
      }

      v75 = v28;
      v31 = [purposeCopy stringByAppendingString:v28];

      purposeCopy = prerequisiteBuildVersion3;
      goto LABEL_11;
    }
  }

  v29 = [MEMORY[0x277CBEB18] arrayWithObject:null];
  [softwareUpdateAssetType addKeyValueArray:@"PrerequisiteBuild" with:v29];

  v30 = [MEMORY[0x277CBEB18] arrayWithObject:null];
  [softwareUpdateAssetType addKeyValueArray:@"PrerequisiteOSVersion" with:v30];

  v31 = [purposeCopy stringByAppendingString:@"prerequisite:(full)|"];
LABEL_11:

  hwModelStr = [(SUCorePolicy *)self hwModelStr];

  v33 = objc_alloc(MEMORY[0x277CBEB18]);
  v34 = v33;
  if (hwModelStr)
  {
    hwModelStr2 = [(SUCorePolicy *)self hwModelStr];
    v36 = [v34 initWithObjects:{null, hwModelStr2, 0}];
    [softwareUpdateAssetType addKeyValueArray:@"SupportedDeviceModels" with:v36];
  }

  else
  {
    hwModelStr2 = [v33 initWithObjects:{null, 0}];
    [softwareUpdateAssetType addKeyValueArray:@"SupportedDeviceModels" with:hwModelStr2];
  }

  v38 = objc_alloc(MEMORY[0x277CCACA8]);
  hwModelStr3 = [(SUCorePolicy *)self hwModelStr];
  v40 = [v38 initWithFormat:@"hwModelStr:%@|", hwModelStr3];
  v41 = [v31 stringByAppendingString:v40];

  productType = [(SUCorePolicy *)self productType];

  if (productType)
  {
    v43 = objc_alloc(MEMORY[0x277CBEB18]);
    productType2 = [(SUCorePolicy *)self productType];
    v45 = [v43 initWithObjects:{null, productType2, 0}];
    [softwareUpdateAssetType addKeyValueArray:@"SupportedDevices" with:v45];
  }

  v46 = objc_alloc(MEMORY[0x277CCACA8]);
  productType3 = [(SUCorePolicy *)self productType];
  v48 = [v46 initWithFormat:@"productType:%@|", productType3];
  v49 = [v41 stringByAppendingString:v48];

  releaseType = [(SUCorePolicy *)self releaseType];

  v78 = purposeCopy;
  if (releaseType)
  {
    releaseType2 = [(SUCorePolicy *)self releaseType];
    [softwareUpdateAssetType addKeyValuePair:@"ReleaseType" with:releaseType2];

    v52 = objc_alloc(MEMORY[0x277CCACA8]);
    releaseType3 = [(SUCorePolicy *)self releaseType];
    v54 = [v52 initWithFormat:@"releaseType:%@|", releaseType3];
    v55 = [v49 stringByAppendingString:v54];

    v49 = releaseType3;
  }

  else
  {
    v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{null, 0}];
    [softwareUpdateAssetType addKeyValueArray:@"ReleaseType" with:v56];

    v55 = [v49 stringByAppendingString:@"releaseType:customer|"];
  }

  v77 = null;

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = v55;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] querying SU metadata: %{public}@", buf, 0xCu);
  }

  v76 = v55;

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v60 = [policyExtensions countByEnumeratingWithState:&v79 objects:v83 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v64 = *(*(&v79 + 1) + 8 * i);
        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v64 extensionName];
          *buf = 138543362;
          selfCopy = extensionName;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] extending query for extension %{public}@", buf, 0xCu);
        }

        [v64 extendSoftwareUpdateMAAssetQuery:softwareUpdateAssetType];
      }

      v61 = [policyExtensions countByEnumeratingWithState:&v79 objects:v83 count:16];
    }

    while (v61);
  }

  mEMORY[0x277D64428] = v77;
  purposeCopy = v78;
LABEL_32:

  v68 = *MEMORY[0x277D85DE8];

  return softwareUpdateAssetType;
}

- (id)constructDocumentationMAAssetQueryWithDocID:(id)d purpose:(id)purpose
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  purposeCopy = purpose;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] constructDocumentationMAAssetQueryWithDocID for policy: %{public}@", buf, 0xCu);
  }

  documentationAssetType = [(SUCorePolicy *)self documentationAssetType];

  if (documentationAssetType)
  {
    v11 = objc_alloc(MEMORY[0x277D289D8]);
    documentationAssetType2 = [(SUCorePolicy *)self documentationAssetType];
    documentationAssetType = [v11 initWithType:documentationAssetType2 andPurpose:purposeCopy];

    [documentationAssetType addKeyValuePair:@"SUDocumentationID" with:dCopy];
    deviceClass = [(SUCorePolicy *)self deviceClass];
    [documentationAssetType addKeyValuePair:@"Device" with:deviceClass];

    v34 = dCopy;
    dCopy = [@"|" stringByAppendingFormat:@"documentationID:%@|", dCopy];
    deviceClass2 = [(SUCorePolicy *)self deviceClass];
    v16 = [dCopy stringByAppendingFormat:@"deviceClass:%@|", deviceClass2];

    v33 = purposeCopy;
    purposeCopy = [v16 stringByAppendingFormat:@"purpose:%@|", purposeCopy];

    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = purposeCopy;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] documentation asset query options: %{public}@", buf, 0xCu);
    }

    v32 = purposeCopy;

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    policyExtensions = [(SUCorePolicy *)self policyExtensions];
    v21 = [policyExtensions countByEnumeratingWithState:&v35 objects:v39 count:16];
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
            objc_enumerationMutation(policyExtensions);
          }

          v25 = *(*(&v35 + 1) + 8 * i);
          mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
          oslog3 = [mEMORY[0x277D64460]3 oslog];

          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            extensionName = [v25 extensionName];
            *buf = 138543362;
            selfCopy = extensionName;
            _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] extending documentation options for extension %{public}@", buf, 0xCu);
          }

          [v25 extendDocumentationMAAssetQuery:documentationAssetType];
        }

        v22 = [policyExtensions countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v22);
    }

    purposeCopy = v33;
    dCopy = v34;
    mEMORY[0x277D64428] = v32;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] CONSTRUCT_DOC_QUERY" forReason:@"documentationAssetType was unexpectedly nil withResult:client is required to init with documentationAssetType" withError:{8118, 0}];
  }

  v30 = *MEMORY[0x277D85DE8];

  return documentationAssetType;
}

- (void)selectSoftwareUpdatePrimaryAsset:(id *)asset secondaryAsset:(id *)secondaryAsset fromAssetQuery:(id)query
{
  v138 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] selectSoftwareUpdatePrimaryAsset:secondaryAsset:fromAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  if (!asset)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    mEMORY[0x277D64428]2 = mEMORY[0x277D64428];
    v16 = @"selectSoftwareUpdatePrimaryAsset called with unexpected nil primaryAsset param";
LABEL_13:
    [mEMORY[0x277D64428] trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v16 withResult:8102 withError:0];
    goto LABEL_92;
  }

  if (!secondaryAsset)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    mEMORY[0x277D64428]2 = mEMORY[0x277D64428];
    v16 = @"selectSoftwareUpdatePrimaryAsset called with unexpected nil secondaryAsset param";
    goto LABEL_13;
  }

  prerequisiteProductVersion = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (!prerequisiteProductVersion)
  {
    prerequisiteBuildVersion = [(SUCorePolicy *)self prerequisiteBuildVersion];
    if (prerequisiteBuildVersion)
    {

LABEL_16:
      mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      prerequisiteProductVersion2 = [(SUCorePolicy *)self prerequisiteProductVersion];
      prerequisiteBuildVersion2 = [(SUCorePolicy *)self prerequisiteBuildVersion];
      v21 = [v18 initWithFormat:@"selectSoftwareUpdatePrimaryAsset called with unexpected nil/non-nil values for prerequisiteProductVersion (%@) and prerequisiteBuildVersion (%@)", prerequisiteProductVersion2, prerequisiteBuildVersion2];
      [mEMORY[0x277D64428]2 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v21 withResult:8116 withError:0];

      goto LABEL_92;
    }
  }

  prerequisiteProductVersion3 = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (prerequisiteProductVersion3)
  {
    prerequisiteBuildVersion3 = [(SUCorePolicy *)self prerequisiteBuildVersion];

    if (prerequisiteProductVersion)
    {
    }

    if (!prerequisiteBuildVersion3)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (prerequisiteProductVersion)
    {
    }
  }

  mEMORY[0x277D64428]2 = [queryCopy SUCoreBorder_results];
  v22 = [mEMORY[0x277D64428]2 count];
  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  v25 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (!v22)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 SU query results (before filtering)", buf, 2u);
    }

    goto LABEL_91;
  }

  v116 = queryCopy;
  if (v25)
  {
    v26 = [mEMORY[0x277D64428]2 count];
    *buf = 134217984;
    selfCopy = v26;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu SU query results (before filtering)", buf, 0xCu);
  }

  assetCopy = asset;
  secondaryAssetCopy = secondaryAsset;

  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  oslog2 = [(SUCorePolicy *)self policyExtensions];
  v27 = [oslog2 countByEnumeratingWithState:&v128 objects:v137 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v129;
    do
    {
      v30 = 0;
      v31 = mEMORY[0x277D64428]2;
      do
      {
        if (*v129 != v29)
        {
          objc_enumerationMutation(oslog2);
        }

        v32 = *(*(&v128 + 1) + 8 * v30);
        v33 = [v32 filterSoftwareUpdateAssetArray:v31];

        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v33 count];
          extensionName = [v32 extensionName];
          *buf = 134218242;
          selfCopy = v36;
          v135 = 2114;
          v136 = extensionName;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
        }

        mEMORY[0x277D64428]2 = v33;
        if (![v33 count])
        {
          mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
          oslog4 = [mEMORY[0x277D64460]4 oslog];

          if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found, stopping filtering early", buf, 2u);
          }

          queryCopy = v116;
          goto LABEL_91;
        }

        ++v30;
        v31 = v33;
      }

      while (v28 != v30);
      v28 = [oslog2 countByEnumeratingWithState:&v128 objects:v137 count:16];
    }

    while (v28);
  }

  prerequisiteProductVersion4 = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (!prerequisiteProductVersion4 || (v39 = prerequisiteProductVersion4, [(SUCorePolicy *)self prerequisiteBuildVersion], v40 = objc_claimAutoreleasedReturnValue(), v40, v39, !v40))
  {
    v44 = mEMORY[0x277D64428]2;
    mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
    oslog5 = [mEMORY[0x277D64460]5 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[POLICY] not filtering for productVersion or buildVersion in SUCorePolicy", buf, 2u);
    }

    v113 = 0;
    goto LABEL_49;
  }

  softwareUpdateScanPolicy = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  if ([softwareUpdateScanPolicy allowSameVersion])
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

  isSplatPolicy = [(SUCorePolicy *)self isSplatPolicy];

  if (isSplatPolicy)
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
  v44 = [mEMORY[0x277D64428]2 filteredArrayUsingPredicate:v113];
  mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
  oslog5 = [mEMORY[0x277D64460]6 oslog];

  if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
  {
    v51 = [v44 count];
    *buf = 134217984;
    selfCopy = v51;
    _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for productVersion in SUCorePolicy", buf, 0xCu);
  }

LABEL_49:

  v52 = [v44 sortedArrayUsingComparator:&__block_literal_global_10];
  lastObject = [v52 lastObject];
  attributes = [lastObject attributes];
  v55 = [attributes safeStringForKey:@"OSVersion"];
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

  mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
  oslog6 = [mEMORY[0x277D64460]7 oslog];

  if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
  {
    v63 = [v60 count];
    *buf = 134217984;
    selfCopy = v63;
    _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highestProductVersionAssets in SUCorePolicy", buf, 0xCu);
  }

  v111 = v58;
  if (![v60 count])
  {
    mEMORY[0x277D64460]8 = [MEMORY[0x277D64460] sharedLogger];
    oslog7 = [mEMORY[0x277D64460]8 oslog];

    v110 = oslog7;
    if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found", buf, 2u);
    }

    v95 = 0;
    v96 = 0;
    v91 = 0;
    oslog2 = 0;
    queryCopy = v116;
    v97 = v112;
    goto LABEL_90;
  }

  v64 = [v60 sortedArrayUsingComparator:&__block_literal_global_621];
  lastObject2 = [v64 lastObject];
  attributes2 = [lastObject2 attributes];
  v67 = [attributes2 objectForKeyedSubscript:@"Build"];

  v68 = MEMORY[0x277CCAC30];
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __79__SUCorePolicy_selectSoftwareUpdatePrimaryAsset_secondaryAsset_fromAssetQuery___block_invoke_2_622;
  v122[3] = &unk_27892C8F8;
  v69 = v67;
  v123 = v69;
  v70 = [v68 predicateWithBlock:v122];
  v71 = [v64 filteredArrayUsingPredicate:v70];

  mEMORY[0x277D64460]9 = [MEMORY[0x277D64460] sharedLogger];
  oslog8 = [mEMORY[0x277D64460]9 oslog];

  if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [v71 count];
    *buf = 134217984;
    selfCopy = v74;
    _os_log_impl(&dword_23193C000, oslog8, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highestBuildVersionAssets in SUCorePolicy", buf, 0xCu);
  }

  v109 = v64;
  v110 = v71;
  v108 = v69;
  if (![v71 count])
  {
    mEMORY[0x277D64460]10 = [MEMORY[0x277D64460] sharedLogger];
    oslog9 = [mEMORY[0x277D64460]10 oslog];

    if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog9, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found", buf, 2u);
    }

    v91 = 0;
    oslog2 = 0;
    queryCopy = v116;
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

    v92 = secondaryAssetCopy;
    queryCopy = v116;
LABEL_83:
    mEMORY[0x277D64460]11 = [MEMORY[0x277D64460] sharedLogger];
    oslog10 = [mEMORY[0x277D64460]11 oslog];

    if (os_log_type_enabled(oslog10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog10, OS_LOG_TYPE_DEFAULT, "[POLICY] query to locate update asset did not find pure partial or full; selecting first with highest build", buf, 2u);
    }

    oslog2 = [v117 firstObject];
    goto LABEL_87;
  }

  v77 = v76;
  v105 = v60;
  v106 = v44;
  v107 = mEMORY[0x277D64428]2;
  oslog2 = 0;
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
        attributes3 = [*(*(&v118 + 1) + 8 * i) attributes];
        v85 = [attributes3 objectForKeyedSubscript:@"PrerequisiteBuild"];
        if (v85)
        {
          v86 = v85;
          attributes4 = [v81 attributes];
          v88 = [attributes4 objectForKeyedSubscript:@"PrerequisiteOSVersion"];

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

      if (!oslog2)
      {
        attributes5 = [v81 attributes];
        v83 = [attributes5 objectForKeyedSubscript:@"PrerequisiteBuild"];
        if (v83)
        {

          oslog2 = 0;
        }

        else
        {
          attributes6 = [v81 attributes];
          v90 = [attributes6 objectForKeyedSubscript:@"PrerequisiteOSVersion"];

          if (v90)
          {
            oslog2 = 0;
          }

          else
          {
            oslog2 = v81;
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
    v91 = oslog2;
    oslog2 = v78;
    v92 = secondaryAssetCopy;
    queryCopy = v116;
    v44 = v106;
    mEMORY[0x277D64428]2 = v107;
    v60 = v105;
    goto LABEL_88;
  }

  v92 = secondaryAssetCopy;
  queryCopy = v116;
  v44 = v106;
  mEMORY[0x277D64428]2 = v107;
  v60 = v105;
  if (!oslog2)
  {
    goto LABEL_83;
  }

LABEL_87:
  v91 = 0;
LABEL_88:
  v102 = oslog2;
  *assetCopy = oslog2;
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

+ (BOOL)getAllowSameProductVersionPredicateResultWithAssetOSVersion:(id)version assetBuildVersion:(id)buildVersion prerequisiteProductVersion:(id)productVersion prerequisiteBuildVersion:(id)prerequisiteBuildVersion
{
  versionCopy = version;
  buildVersionCopy = buildVersion;
  productVersionCopy = productVersion;
  prerequisiteBuildVersionCopy = prerequisiteBuildVersion;
  if ([versionCopy compare:productVersionCopy options:64] == 1)
  {
    v13 = 1;
  }

  else if ([versionCopy compare:productVersionCopy options:64])
  {
    v13 = 0;
  }

  else
  {
    v13 = [buildVersionCopy compare:prerequisiteBuildVersionCopy options:64] != -1;
  }

  return v13;
}

+ (BOOL)getNoAllowSameProductVersionPredicateResultWithAssetOSVersion:(id)version assetBuildVersion:(id)buildVersion prerequisiteProductVersion:(id)productVersion prerequisiteBuildVersion:(id)prerequisiteBuildVersion
{
  versionCopy = version;
  buildVersionCopy = buildVersion;
  productVersionCopy = productVersion;
  prerequisiteBuildVersionCopy = prerequisiteBuildVersion;
  if ([versionCopy compare:productVersionCopy options:64] == 1)
  {
    v13 = 1;
  }

  else if ([versionCopy compare:productVersionCopy options:64])
  {
    v13 = 0;
  }

  else
  {
    v13 = [buildVersionCopy compare:prerequisiteBuildVersionCopy options:64] == 1;
  }

  return v13;
}

- (void)selectSoftwareUpdateMajorPrimaryAsset:(id *)asset majorSecondaryAsset:(id *)secondaryAsset minorPrimaryAsset:(id *)primaryAsset minorSecondaryAsset:(id *)minorSecondaryAsset fromAssetQuery:(id)query
{
  v192 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] Select major/minor software update for policy: %{public}@", buf, 0xCu);
  }

  if (asset)
  {
    *asset = 0;
  }

  if (secondaryAsset)
  {
    *secondaryAsset = 0;
  }

  if (primaryAsset)
  {
    *primaryAsset = 0;
  }

  if (minorSecondaryAsset)
  {
    *minorSecondaryAsset = 0;
  }

  if (!asset)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v19 = mEMORY[0x277D64428];
    v20 = @"Select major/minor software update called with unexpected nil majorPrimaryAsset param";
LABEL_25:
    [mEMORY[0x277D64428] trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v20 withResult:8102 withError:0];
    goto LABEL_26;
  }

  if (!secondaryAsset)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v19 = mEMORY[0x277D64428];
    v20 = @"Select major/minor software update called with unexpected nil majorSecondaryAsset param";
    goto LABEL_25;
  }

  if (!primaryAsset)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v19 = mEMORY[0x277D64428];
    v20 = @"Select major/minor software update called with unexpected nil minorPrimaryAsset param";
    goto LABEL_25;
  }

  if (!minorSecondaryAsset)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v19 = mEMORY[0x277D64428];
    v20 = @"Select major/minor software update called with unexpected nil minorSecondaryAsset param";
    goto LABEL_25;
  }

  prerequisiteProductVersion = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (!prerequisiteProductVersion)
  {
    prerequisiteBuildVersion = [(SUCorePolicy *)self prerequisiteBuildVersion];
    if (prerequisiteBuildVersion)
    {

LABEL_29:
      [MEMORY[0x277D64428] sharedDiag];
      v19 = v23 = self;
      v24 = objc_alloc(MEMORY[0x277CCACA8]);
      prerequisiteProductVersion2 = [(SUCorePolicy *)v23 prerequisiteProductVersion];
      prerequisiteBuildVersion2 = [(SUCorePolicy *)v23 prerequisiteBuildVersion];
      v27 = [v24 initWithFormat:@"Select major/minor software update called with unexpected nil/non-nil values for prerequisiteProductVersion (%@) and prerequisiteBuildVersion (%@)", prerequisiteProductVersion2, prerequisiteBuildVersion2];
      [v19 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:v27 withResult:8116 withError:0];

      goto LABEL_26;
    }
  }

  prerequisiteProductVersion3 = [(SUCorePolicy *)self prerequisiteProductVersion];
  if (prerequisiteProductVersion3)
  {
    prerequisiteBuildVersion3 = [(SUCorePolicy *)self prerequisiteBuildVersion];

    if (prerequisiteProductVersion)
    {
    }

    if (!prerequisiteBuildVersion3)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (prerequisiteProductVersion)
    {
    }
  }

  v28 = objc_alloc(MEMORY[0x277D64490]);
  prerequisiteRestoreVersion = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v30 = [v28 initWithRestoreVersion:prerequisiteRestoreVersion];
  selfCopy2 = self;
  v19 = v30;

  v160 = selfCopy2;
  prerequisiteRestoreVersion2 = [(SUCorePolicy *)selfCopy2 prerequisiteRestoreVersion];

  if (!prerequisiteRestoreVersion2 || !v19)
  {
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428]2 trackError:@"[POLICY] SELECT_UPDATE_ASSET" forReason:@"Select major/minor software update called with unexpected nil prerequisiteRestoreVersion property or inability to parse version string" withResult:8116 withError:0];
    goto LABEL_130;
  }

  sUCoreBorder_results = [queryCopy SUCoreBorder_results];
  v34 = [sUCoreBorder_results count];
  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  v37 = oslog2;
  v38 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (!v34)
  {
    if (v38)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 SU query results (before filtering)", buf, 2u);
    }

    mEMORY[0x277D64428]2 = sUCoreBorder_results;
    goto LABEL_129;
  }

  if (v38)
  {
    v39 = [sUCoreBorder_results count];
    *buf = 134217984;
    selfCopy = v39;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu SU query results (before filtering)", buf, 0xCu);
  }

  assetCopy = asset;
  secondaryAssetCopy = secondaryAsset;
  primaryAssetCopy = primaryAsset;
  minorSecondaryAssetCopy = minorSecondaryAsset;
  v158 = queryCopy;
  v159 = v19;

  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  policyExtensions = [(SUCorePolicy *)v160 policyExtensions];
  v41 = [policyExtensions countByEnumeratingWithState:&v181 objects:v191 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v182;
    mEMORY[0x277D64428]2 = sUCoreBorder_results;
    do
    {
      v45 = 0;
      v46 = mEMORY[0x277D64428]2;
      do
      {
        if (*v182 != v43)
        {
          objc_enumerationMutation(policyExtensions);
        }

        v47 = *(*(&v181 + 1) + 8 * v45);
        v48 = [v47 filterSoftwareUpdateAssetArray:v46];

        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [v48 count];
          [v47 extensionName];
          v53 = v52 = policyExtensions;
          *buf = 134218242;
          selfCopy = v51;
          v189 = 2114;
          v190 = v53;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);

          policyExtensions = v52;
        }

        mEMORY[0x277D64428]2 = v48;
        if (![v48 count])
        {
          v54 = policyExtensions;
          mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
          oslog4 = [mEMORY[0x277D64460]4 oslog];

          if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 assets found, stopping filtering early", buf, 2u);
          }

          queryCopy = v158;
          v19 = v159;
          v37 = v54;
          goto LABEL_129;
        }

        ++v45;
        v46 = v48;
      }

      while (v42 != v45);
      v42 = [policyExtensions countByEnumeratingWithState:&v181 objects:v191 count:16];
    }

    while (v42);
  }

  else
  {
    mEMORY[0x277D64428]2 = sUCoreBorder_results;
  }

  softwareUpdateScanPolicy = [(SUCorePolicy *)v160 softwareUpdateScanPolicy];
  shouldScanForMinorUpdates = [softwareUpdateScanPolicy shouldScanForMinorUpdates];

  v153 = mEMORY[0x277D64428]2;
  if (!shouldScanForMinorUpdates)
  {
    v97 = 0;
    firstObject = 0;
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
  v61 = [mEMORY[0x277D64428]2 filteredArrayUsingPredicate:v60];

  mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
  oslog5 = [mEMORY[0x277D64460]5 oslog];

  if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
  {
    v64 = [v61 count];
    *buf = 134217984;
    selfCopy = v64;
    _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for minor assets in SUCorePolicy", buf, 0xCu);
  }

  v65 = [v61 sortedArrayUsingComparator:&__block_literal_global_644];
  lastObject = [v65 lastObject];
  attributes = [lastObject attributes];
  v68 = [attributes safeStringForKey:@"RestoreVersion"];

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

  mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
  oslog6 = [mEMORY[0x277D64460]6 oslog];

  if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
  {
    v74 = [v71 count];
    *buf = 134217984;
    selfCopy = v74;
    _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highest minor assets in SUCorePolicy", buf, 0xCu);
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
    mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
    oslog7 = [mEMORY[0x277D64460]7 oslog];

    if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "[POLICY] query to locate minor update asset did not find pure partial or full; selecting first with highest build", buf, 2u);
    }

    firstObject = [v75 firstObject];
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
        attributes2 = [*(*(&v172 + 1) + 8 * v81) attributes];
        v86 = [attributes2 safeStringForKey:@"PrerequisiteBuild"];
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

      attributes3 = [v82 attributes];
      v84 = [attributes3 safeStringForKey:@"PrerequisiteBuild"];
      if (v84)
      {

LABEL_75:
        v78 = 0;
        goto LABEL_76;
      }

      attributes4 = [v82 attributes];
      v94 = [attributes4 safeStringForKey:@"PrerequisiteOSVersion"];

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
    firstObject = v79;
    mEMORY[0x277D64428]2 = v153;
    goto LABEL_90;
  }

  mEMORY[0x277D64428]2 = v153;
  if (!v78)
  {
    goto LABEL_84;
  }

  firstObject = v78;
LABEL_89:
  v96 = v75;
  v97 = 0;
LABEL_90:

LABEL_91:
  v19 = v159;
  v100 = 0x277D64000uLL;
  softwareUpdateScanPolicy2 = [(SUCorePolicy *)v160 softwareUpdateScanPolicy];
  shouldScanForMajorUpdates = [softwareUpdateScanPolicy2 shouldScanForMajorUpdates];

  if (!shouldScanForMajorUpdates)
  {
    mEMORY[0x277D64460]8 = [MEMORY[0x277D64460] sharedLogger];
    oslog8 = [mEMORY[0x277D64460]8 oslog];

    if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
    {
      softwareUpdateScanPolicy3 = [(SUCorePolicy *)v160 softwareUpdateScanPolicy];
      v139 = +[SUCorePolicySoftwareUpdateScan nameForScanUpdateType:](SUCorePolicySoftwareUpdateScan, "nameForScanUpdateType:", [softwareUpdateScanPolicy3 scanUpdateType]);
      *buf = 138543362;
      selfCopy = v139;
      _os_log_impl(&dword_23193C000, oslog8, OS_LOG_TYPE_DEFAULT, "[POLICY] not scanning for major software update assets as scan update type is %{public}@", buf, 0xCu);
    }

    firstObject2 = 0;
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
  v105 = [mEMORY[0x277D64428]2 filteredArrayUsingPredicate:v104];

  mEMORY[0x277D64460]9 = [MEMORY[0x277D64460] sharedLogger];
  oslog9 = [mEMORY[0x277D64460]9 oslog];

  if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
  {
    v108 = [v105 count];
    *buf = 134217984;
    selfCopy = v108;
    _os_log_impl(&dword_23193C000, oslog9, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for major assets in SUCorePolicy", buf, 0xCu);
  }

  v161 = v105;
  v109 = [v105 sortedArrayUsingComparator:&__block_literal_global_648];
  lastObject2 = [v109 lastObject];
  attributes5 = [lastObject2 attributes];
  v112 = [attributes5 safeStringForKey:@"RestoreVersion"];

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

  mEMORY[0x277D64460]10 = [MEMORY[0x277D64460] sharedLogger];
  oslog10 = [mEMORY[0x277D64460]10 oslog];

  if (os_log_type_enabled(oslog10, OS_LOG_TYPE_DEFAULT))
  {
    v118 = [v115 count];
    *buf = 134217984;
    selfCopy = v118;
    _os_log_impl(&dword_23193C000, oslog10, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu assets left after filtering for highest major assets in SUCorePolicy", buf, 0xCu);
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

    mEMORY[0x277D64428]2 = v153;
LABEL_121:
    sharedLogger = [*(v100 + 1120) sharedLogger];
    oslog11 = [sharedLogger oslog];

    if (os_log_type_enabled(oslog11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog11, OS_LOG_TYPE_DEFAULT, "[POLICY] query to locate major update asset did not find pure partial or full; selecting first with highest build", buf, 2u);
    }

    v119 = v163;
    firstObject2 = [v163 firstObject];
    goto LABEL_126;
  }

  v121 = v120;
  v147 = v97;
  firstObject2 = 0;
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
      if (firstObject2)
      {
        goto LABEL_102;
      }

      attributes6 = [*(*(&v164 + 1) + 8 * v125) attributes];
      v130 = [attributes6 safeStringForKey:@"PrerequisiteBuild"];
      if (!v130)
      {

        goto LABEL_102;
      }

      v131 = v130;
      attributes7 = [v126 attributes];
      v133 = [attributes7 safeStringForKey:@"PrerequisiteOSVersion"];

      v119 = v163;
      if (!v133)
      {
LABEL_102:
        if (!v123)
        {
          attributes8 = [v126 attributes];
          v128 = [attributes8 safeStringForKey:@"PrerequisiteBuild"];
          if (v128)
          {

            v123 = 0;
          }

          else
          {
            attributes9 = [v126 attributes];
            v135 = [attributes9 safeStringForKey:@"PrerequisiteOSVersion"];

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
        firstObject2 = v126;
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

  if (firstObject2)
  {
    v19 = v159;
    mEMORY[0x277D64428]2 = v153;
    v97 = v147;
    goto LABEL_127;
  }

  v19 = v159;
  mEMORY[0x277D64428]2 = v153;
  v100 = 0x277D64000;
  v97 = v147;
  if (!v123)
  {
    goto LABEL_121;
  }

  firstObject2 = v123;
LABEL_126:
  v123 = 0;
LABEL_127:

  oslog8 = v171;
LABEL_128:

  v142 = firstObject2;
  *assetCopy = firstObject2;
  v143 = v123;
  *secondaryAssetCopy = v123;
  v37 = firstObject;
  v144 = firstObject;
  *primaryAssetCopy = firstObject;
  v145 = v97;
  *minorSecondaryAssetCopy = v97;

  queryCopy = v158;
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

- (void)selectDocumentationAsset:(id *)asset fromAssetQuery:(id)query
{
  v42 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] selectDocumentationAsset:fromAssetQuery for policy: %{public}@", buf, 0xCu);
  }

  if (!asset)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackError:@"[POLICY] SELECT_DOC_ASSET" forReason:@"selectDocumentationAsset called with unexpected nil docAsset param" withResult:8102 withError:0];
    goto LABEL_27;
  }

  mEMORY[0x277D64428] = [queryCopy SUCoreBorder_results];
  if (![mEMORY[0x277D64428] count])
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:

      goto LABEL_27;
    }

    *buf = 0;
    v27 = "[POLICY] 0 doc query results (before filtering)";
LABEL_25:
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
    goto LABEL_26;
  }

  assetCopy = asset;
  v32 = queryCopy;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy2 = self;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v11 = [policyExtensions countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    while (2)
    {
      v14 = 0;
      v15 = mEMORY[0x277D64428];
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(policyExtensions);
        }

        v16 = *(*(&v33 + 1) + 8 * v14);
        mEMORY[0x277D64428] = [v16 filterDocumentationAssetArray:v15];

        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [mEMORY[0x277D64428] count];
          extensionName = [v16 extensionName];
          *buf = 134218242;
          selfCopy = v19;
          v39 = 2114;
          v40 = extensionName;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu doc assets left after filtering from SUCorePolicyExtension %{public}@", buf, 0x16u);
        }

        if (![mEMORY[0x277D64428] count])
        {
          mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
          oslog4 = [mEMORY[0x277D64460]4 oslog];

          if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[POLICY] 0 doc assets found, stopping filtering early", buf, 2u);
          }

          queryCopy = v32;
          goto LABEL_27;
        }

        ++v14;
        v15 = mEMORY[0x277D64428];
      }

      while (v12 != v14);
      v12 = [policyExtensions countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if ([mEMORY[0x277D64428] count] >= 2)
  {
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ doc query with %lu results when only 1 expected", selfCopy2, objc_msgSend(mEMORY[0x277D64428], "count")];
    [mEMORY[0x277D64428]2 trackAnomaly:@"[POLICY] SELECT_DOC_ASSET" forReason:v22 withResult:8116 withError:0];
  }

  queryCopy = v32;
  if (![mEMORY[0x277D64428] count])
  {
    mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]5 oslog];

    if (!os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v27 = "[POLICY] 0 doc assets found";
    goto LABEL_25;
  }

  *assetCopy = [mEMORY[0x277D64428] objectAtIndexedSubscript:0];
LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
}

- (id)constructMASoftwareUpdateCatalogDownloadOptionsWithUUID:(id)d assetAudience:(id)audience
{
  v197 = *MEMORY[0x277D85DE8];
  dCopy = d;
  audienceCopy = audience;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v194 = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMASoftwareUpdateCatalogDownloadOptionsWithUUID for policy: %{public}@", buf, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277D28A18]);
  if (!v10)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    mEMORY[0x277D64428]2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create software update catalog download options", self];
    [mEMORY[0x277D64428] trackError:@"SU_CATALOG_DOWNLOAD_OPTIONS" forReason:mEMORY[0x277D64428]2 withResult:8100 withError:0];
LABEL_38:

    v82 = @"|";
    policyExtensions = mEMORY[0x277D64428];
    mEMORY[0x277D64428] = 0;
    goto LABEL_90;
  }

  mEMORY[0x277D64428] = v10;
  softwareUpdateScanPolicy = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  additionalServerParams = [softwareUpdateScanPolicy additionalServerParams];

  if (additionalServerParams)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    softwareUpdateScanPolicy2 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    additionalServerParams2 = [softwareUpdateScanPolicy2 additionalServerParams];
    v17 = [v14 initWithDictionary:additionalServerParams2];
    [mEMORY[0x277D64428] setAdditionalServerParams:v17];
  }

  else
  {
    softwareUpdateScanPolicy2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [mEMORY[0x277D64428] setAdditionalServerParams:softwareUpdateScanPolicy2];
  }

  additionalServerParams3 = [mEMORY[0x277D64428] additionalServerParams];

  if (!additionalServerParams3)
  {
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    v81 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create software update catalog download options additional server params", self];
    [mEMORY[0x277D64428]2 trackError:@"SU_CATALOG_DOWNLOAD_OPTIONS" forReason:v81 withResult:8100 withError:0];

    goto LABEL_38;
  }

  softwareUpdateScanPolicy3 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  specifiedFields = [softwareUpdateScanPolicy3 specifiedFields];

  if ((specifiedFields & 0x100) != 0)
  {
    additionalServerParams4 = [mEMORY[0x277D64428] additionalServerParams];
    softwareUpdateScanPolicy4 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    sessionId = [softwareUpdateScanPolicy4 sessionId];
    [additionalServerParams4 setSafeObject:sessionId forKey:@"SessionId"];
  }

  softwareUpdateScanPolicy5 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  specifiedFields2 = [softwareUpdateScanPolicy5 specifiedFields];

  if ((specifiedFields2 & 0x200) != 0)
  {
    additionalServerParams5 = [mEMORY[0x277D64428] additionalServerParams];
    softwareUpdateScanPolicy6 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    rampingScanType = [softwareUpdateScanPolicy6 rampingScanType];
    [additionalServerParams5 setSafeObject:rampingScanType forKey:@"DeviceCheck"];
  }

  [mEMORY[0x277D64428] setSessionId:dCopy];
  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  sessionId2 = [mEMORY[0x277D64428] sessionId];
  v32 = [v30 initWithFormat:@"scanUUID:%@|", sessionId2];
  v33 = [@"|" stringByAppendingString:v32];

  softwareUpdateScanPolicy7 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  [mEMORY[0x277D64428] setDiscretionary:{objc_msgSend(softwareUpdateScanPolicy7, "discretionary")}];

  softwareUpdateScanPolicy8 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  LOWORD(v32) = [softwareUpdateScanPolicy8 specifiedFields];

  if ((v32 & 0x1000) != 0)
  {
    softwareUpdateScanPolicy9 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [mEMORY[0x277D64428] setDisableUI:{objc_msgSend(softwareUpdateScanPolicy9, "disableUI")}];
  }

  softwareUpdateScanPolicy10 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  specifiedFields3 = [softwareUpdateScanPolicy10 specifiedFields];

  if ((specifiedFields3 & 2) != 0)
  {
    softwareUpdateScanPolicy11 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [mEMORY[0x277D64428] setAllowsCellularAccess:{objc_msgSend(softwareUpdateScanPolicy11, "allowsCellular")}];
  }

  softwareUpdateScanPolicy12 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  specifiedFields4 = [softwareUpdateScanPolicy12 specifiedFields];

  if ((specifiedFields4 & 8) != 0)
  {
    softwareUpdateScanPolicy13 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [mEMORY[0x277D64428] setRequiresPowerPluggedIn:{objc_msgSend(softwareUpdateScanPolicy13, "requiresPowerPluggedIn")}];
  }

  softwareUpdateScanPolicy14 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  specifiedFields5 = [softwareUpdateScanPolicy14 specifiedFields];

  if ((specifiedFields5 & 0x40) != 0)
  {
    softwareUpdateScanPolicy15 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [mEMORY[0x277D64428] setAllowSameVersion:{objc_msgSend(softwareUpdateScanPolicy15, "allowSameVersion")}];
  }

  v187 = dCopy;
  softwareUpdateScanPolicy16 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  specifiedFields6 = [softwareUpdateScanPolicy16 specifiedFields];

  if ((specifiedFields6 & 0x800) != 0)
  {
    softwareUpdateScanPolicy17 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [mEMORY[0x277D64428] setLiveServerCatalogOnly:{objc_msgSend(softwareUpdateScanPolicy17, "liveServerCatalogOnly")}];
  }

  prerequisiteProductVersion = [(SUCorePolicy *)self prerequisiteProductVersion];
  [mEMORY[0x277D64428] setPrerequisiteProductVersion:prerequisiteProductVersion];

  prerequisiteBuildVersion = [(SUCorePolicy *)self prerequisiteBuildVersion];
  [mEMORY[0x277D64428] setPrerequisiteBuildVersion:prerequisiteBuildVersion];

  releaseType = [(SUCorePolicy *)self releaseType];
  [mEMORY[0x277D64428] setPrerequisiteReleaseType:releaseType];

  additionalServerParams6 = [mEMORY[0x277D64428] additionalServerParams];
  prerequisiteRestoreVersion = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  [additionalServerParams6 setSafeObject:prerequisiteRestoreVersion forKey:@"RestoreVersion"];

  additionalServerParams7 = [mEMORY[0x277D64428] additionalServerParams];
  targetRestoreVersion = [(SUCorePolicy *)self targetRestoreVersion];
  [additionalServerParams7 setSafeObject:targetRestoreVersion forKey:@"TargetRestoreVersion"];

  additionalServerParams8 = [mEMORY[0x277D64428] additionalServerParams];
  installedSFRVersion = [(SUCorePolicy *)self installedSFRVersion];
  [additionalServerParams8 setSafeObject:installedSFRVersion forKey:@"InstalledSFRVersion"];

  additionalServerParams9 = [mEMORY[0x277D64428] additionalServerParams];
  softwareUpdateScanPolicy18 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  if ([softwareUpdateScanPolicy18 allowSameVersion])
  {
    v60 = @"true";
  }

  else
  {
    v60 = @"false";
  }

  [additionalServerParams9 setSafeObject:v60 forKey:@"AllowSameBuildVersion"];

  additionalServerParams10 = [mEMORY[0x277D64428] additionalServerParams];
  softwareUpdateScanPolicy19 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  if ([softwareUpdateScanPolicy19 allowSameVersion])
  {
    v63 = @"true";
  }

  else
  {
    v63 = @"false";
  }

  [additionalServerParams10 setSafeObject:v63 forKey:@"AllowSameRestoreVersion"];

  additionalServerParams11 = [mEMORY[0x277D64428] additionalServerParams];
  productType = [(SUCorePolicy *)self productType];
  [additionalServerParams11 setSafeObject:productType forKey:@"ProductType"];

  additionalServerParams12 = [mEMORY[0x277D64428] additionalServerParams];
  hwModelStr = [(SUCorePolicy *)self hwModelStr];
  [additionalServerParams12 setSafeObject:hwModelStr forKey:@"HWModelStr"];

  additionalServerParams13 = [mEMORY[0x277D64428] additionalServerParams];
  deviceClass = [(SUCorePolicy *)self deviceClass];
  [additionalServerParams13 setSafeObject:deviceClass forKey:@"DeviceName"];

  additionalServerParams14 = [mEMORY[0x277D64428] additionalServerParams];
  prerequisiteBuildVersion2 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  [additionalServerParams14 setSafeObject:prerequisiteBuildVersion2 forKey:@"BuildVersion"];

  softwareUpdateScanPolicy20 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  LOBYTE(prerequisiteBuildVersion2) = [softwareUpdateScanPolicy20 specifiedFields];

  if ((prerequisiteBuildVersion2 & 0x80) != 0)
  {
    softwareUpdateScanPolicy21 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    [mEMORY[0x277D64428] setTimeoutIntervalForResource:{-[NSObject downloadTimeoutSecs](softwareUpdateScanPolicy21, "downloadTimeoutSecs")}];
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

    [mEMORY[0x277D64428] setTimeoutIntervalForResource:v73];
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    softwareUpdateScanPolicy21 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(softwareUpdateScanPolicy21, OS_LOG_TYPE_DEFAULT))
    {
      softwareUpdateScanPolicy22 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
      downloadTimeoutSecs = [softwareUpdateScanPolicy22 downloadTimeoutSecs];
      timeoutIntervalForResource = [mEMORY[0x277D64428] timeoutIntervalForResource];
      isInternal = [(SUCorePolicy *)self isInternal];
      *buf = 67109634;
      v80 = @"YES";
      if (!isInternal)
      {
        v80 = @"NO";
      }

      *v194 = downloadTimeoutSecs;
      *&v194[4] = 2048;
      *&v194[6] = timeoutIntervalForResource;
      v195 = 2114;
      v196 = v80;
      _os_log_impl(&dword_23193C000, softwareUpdateScanPolicy21, OS_LOG_TYPE_DEFAULT, "[POLICY] downloadTimeoutSecs is %d, setting timeoutIntervalForResource to %ld (isInternal=%{public}@)", buf, 0x1Cu);
    }
  }

  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (downloadAuthorizationHeader)
  {
    downloadAuthorizationHeader2 = [(SUCorePolicy *)self downloadAuthorizationHeader];
    [mEMORY[0x277D64428] setDownloadAuthorizationHeader:downloadAuthorizationHeader2];
  }

  if (audienceCopy)
  {
    v86 = [audienceCopy copy];
    [mEMORY[0x277D64428] setLiveAssetAudienceUUID:v86];

    mobileAssetPurposeOverride = [(SUCorePolicy *)self mobileAssetPurposeOverride];
    if (mobileAssetPurposeOverride)
    {
      mobileAssetPurposeOverride2 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
      v89 = [mobileAssetPurposeOverride2 copy];
      [mEMORY[0x277D64428] setPurpose:v89];
    }

    else
    {
      mobileAssetPurposeOverride2 = [audienceCopy copy];
      [mEMORY[0x277D64428] setPurpose:mobileAssetPurposeOverride2];
    }

    v93 = @"purpose(param):%@|";
    v94 = @"assetAudience(param):%@|";
LABEL_52:

    liveAssetAudienceUUID = [mEMORY[0x277D64428] liveAssetAudienceUUID];
    v97 = [v33 stringByAppendingFormat:v94, liveAssetAudienceUUID];

    purpose = [mEMORY[0x277D64428] purpose];
    v33 = [v97 stringByAppendingFormat:v93, purpose];

    goto LABEL_53;
  }

  assetAudienceUUID = [(SUCorePolicy *)self assetAudienceUUID];

  if (assetAudienceUUID)
  {
    assetAudienceUUID2 = [(SUCorePolicy *)self assetAudienceUUID];
    v92 = [assetAudienceUUID2 copy];
    [mEMORY[0x277D64428] setLiveAssetAudienceUUID:v92];

    mobileAssetPurposeOverride = [(SUCorePolicy *)self mobileAssetPurposeOverride];
    if (mobileAssetPurposeOverride)
    {
      [(SUCorePolicy *)self mobileAssetPurposeOverride];
    }

    else
    {
      [(SUCorePolicy *)self assetAudienceUUID];
    }
    mobileAssetPurposeOverride2 = ;
    v95 = [mobileAssetPurposeOverride2 copy];
    [mEMORY[0x277D64428] setPurpose:v95];

    v93 = @"purpose(self):%@|";
    v94 = @"assetAudience(self):%@|";
    goto LABEL_52;
  }

LABEL_53:
  v186 = audienceCopy;
  v99 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([mEMORY[0x277D64428] discretionary])
  {
    v100 = @"YES";
  }

  else
  {
    v100 = @"NO";
  }

  v100 = [v99 initWithFormat:@"discretionary:%@|", v100];
  v102 = [v33 stringByAppendingString:v100];

  v103 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([mEMORY[0x277D64428] allowsCellularAccess])
  {
    v104 = @"YES";
  }

  else
  {
    v104 = @"NO";
  }

  v104 = [v103 initWithFormat:@"allowsCellular:%@|", v104];
  v106 = [v102 stringByAppendingString:v104];

  v107 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([mEMORY[0x277D64428] requiresPowerPluggedIn])
  {
    v108 = @"YES";
  }

  else
  {
    v108 = @"NO";
  }

  v108 = [v107 initWithFormat:@"requiresPowerPluggedIn:%@|", v108];
  v110 = [v106 stringByAppendingString:v108];

  v111 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([mEMORY[0x277D64428] allowSameVersion])
  {
    v112 = @"YES";
  }

  else
  {
    v112 = @"NO";
  }

  v112 = [v111 initWithFormat:@"allowSameVersion:%@|", v112];
  v114 = [v110 stringByAppendingString:v112];

  v115 = objc_alloc(MEMORY[0x277CCACA8]);
  prerequisiteProductVersion2 = [mEMORY[0x277D64428] prerequisiteProductVersion];
  v116 = [v115 initWithFormat:@"prerequisiteProductVersion:%@|", prerequisiteProductVersion2];
  v118 = [v114 stringByAppendingString:v116];

  v119 = objc_alloc(MEMORY[0x277CCACA8]);
  prerequisiteBuildVersion3 = [mEMORY[0x277D64428] prerequisiteBuildVersion];
  v120 = [v119 initWithFormat:@"prerequisiteBuildVersion:%@|", prerequisiteBuildVersion3];
  v122 = [v118 stringByAppendingString:v120];

  v123 = objc_alloc(MEMORY[0x277CCACA8]);
  prerequisiteRestoreVersion2 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v124 = [v123 initWithFormat:@"prerequisiteRestoreVersion:%@|", prerequisiteRestoreVersion2];
  v126 = [v122 stringByAppendingString:v124];

  v127 = objc_alloc(MEMORY[0x277CCACA8]);
  targetRestoreVersion2 = [(SUCorePolicy *)self targetRestoreVersion];
  v128 = [v127 initWithFormat:@"targetRestoreVersion:%@|", targetRestoreVersion2];
  v130 = [v126 stringByAppendingString:v128];

  v131 = objc_alloc(MEMORY[0x277CCACA8]);
  installedSFRVersion2 = [(SUCorePolicy *)self installedSFRVersion];
  v132 = [v131 initWithFormat:@"installedSFRVersion:%@|", installedSFRVersion2];
  v134 = [v130 stringByAppendingString:v132];

  v135 = objc_alloc(MEMORY[0x277CCACA8]);
  prerequisiteReleaseType = [mEMORY[0x277D64428] prerequisiteReleaseType];
  v136 = [v135 initWithFormat:@"prerequisiteReleaseType:%@|", prerequisiteReleaseType];
  v138 = [v134 stringByAppendingString:v136];

  v139 = objc_alloc(MEMORY[0x277CCACA8]);
  productType2 = [(SUCorePolicy *)self productType];
  v140 = [v139 initWithFormat:@"productType:%@|", productType2];
  v142 = [v138 stringByAppendingString:v140];

  v143 = objc_alloc(MEMORY[0x277CCACA8]);
  hwModelStr2 = [(SUCorePolicy *)self hwModelStr];
  v144 = [v143 initWithFormat:@"hwModelStr:%@|", hwModelStr2];
  v146 = [v142 stringByAppendingString:v144];

  v147 = objc_alloc(MEMORY[0x277CCACA8]);
  deviceClass2 = [(SUCorePolicy *)self deviceClass];
  v148 = [v147 initWithFormat:@"deviceClass:%@|", deviceClass2];
  v150 = [v146 stringByAppendingString:v148];

  v151 = objc_alloc(MEMORY[0x277CCACA8]);
  prerequisiteBuildVersion4 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v152 = [v151 initWithFormat:@"buildVersion:%@|", prerequisiteBuildVersion4];
  softwareUpdateScanPolicy24 = [v150 stringByAppendingString:v152];

  v155 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout:%ld|", objc_msgSend(mEMORY[0x277D64428], "timeoutIntervalForResource")];
  v156 = [softwareUpdateScanPolicy24 stringByAppendingString:v155];

  v157 = objc_alloc(MEMORY[0x277CCACA8]);
  softwareUpdateScanPolicy23 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  specifiedFields7 = [softwareUpdateScanPolicy23 specifiedFields];
  if ((specifiedFields7 & 0x100) != 0)
  {
    softwareUpdateScanPolicy24 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    sessionId3 = [softwareUpdateScanPolicy24 sessionId];
  }

  else
  {
    sessionId3 = @"nil";
  }

  v160 = [v157 initWithFormat:@"sessionId:%@|", sessionId3];
  v162 = [v156 stringByAppendingString:v160];

  if ((specifiedFields7 & 0x100) != 0)
  {
  }

  v163 = objc_alloc(MEMORY[0x277CCACA8]);
  softwareUpdateScanPolicy25 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  specifiedFields8 = [softwareUpdateScanPolicy25 specifiedFields];
  if ((specifiedFields8 & 0x200) != 0)
  {
    softwareUpdateScanPolicy24 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    rampingScanType2 = [softwareUpdateScanPolicy24 rampingScanType];
  }

  else
  {
    rampingScanType2 = @"nil";
  }

  v166 = [v163 initWithFormat:@"rampingScanType:%@|", rampingScanType2];
  v168 = [v162 stringByAppendingString:v166];

  if ((specifiedFields8 & 0x200) != 0)
  {
  }

  v169 = objc_alloc(MEMORY[0x277CCACA8]);
  liveServerCatalogOnly = [mEMORY[0x277D64428] liveServerCatalogOnly];
  v171 = @"NO";
  if (liveServerCatalogOnly)
  {
    v171 = @"YES";
  }

  v171 = [v169 initWithFormat:@"liveServerCatalogOnly:%@|", v171];
  v82 = [v168 stringByAppendingString:v171];

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v194 = v82;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] software update catalog download options: %{public}@", buf, 0xCu);
  }

  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v175 = [policyExtensions countByEnumeratingWithState:&v188 objects:v192 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v179 = *(*(&v188 + 1) + 8 * i);
        mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]4 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v179 extensionName];
          *buf = 138543362;
          *v194 = extensionName;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] extending software update catalog download options for extension %{public}@", buf, 0xCu);
        }

        [v179 extendMASoftwareUpdateCatalogDownloadOptions:mEMORY[0x277D64428]];
      }

      v176 = [policyExtensions countByEnumeratingWithState:&v188 objects:v192 count:16];
    }

    while (v176);
    audienceCopy = v186;
    dCopy = v187;
    v82 = v185;
  }

  else
  {
    audienceCopy = v186;
    dCopy = v187;
  }

LABEL_90:

  v183 = *MEMORY[0x277D85DE8];

  return mEMORY[0x277D64428];
}

- (id)constructMADocumentationCatalogDownloadOptionsWithUUID:(id)d usingDescriptor:(id)descriptor
{
  v145 = *MEMORY[0x277D85DE8];
  dCopy = d;
  descriptorCopy = descriptor;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v142 = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMADocumentationCatalogDownloadOptionsWithUUID for policy: %{public}@", buf, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x277D28A18]);
  if (!v10)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    mEMORY[0x277D64428]2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create documentation catalog download options", self];
    [mEMORY[0x277D64428] trackError:@"DOC_CATALOG_DOWNLOAD_OPTIONS" forReason:mEMORY[0x277D64428]2 withResult:8100 withError:0];
LABEL_40:

    v119 = @"|";
    policyExtensions = mEMORY[0x277D64428];
    mEMORY[0x277D64428] = 0;
    goto LABEL_65;
  }

  mEMORY[0x277D64428] = v10;
  documentationScanPolicy = [(SUCorePolicy *)self documentationScanPolicy];
  additionalServerParams = [documentationScanPolicy additionalServerParams];

  if (additionalServerParams)
  {
    v14 = objc_alloc(MEMORY[0x277CBEB38]);
    documentationScanPolicy2 = [(SUCorePolicy *)self documentationScanPolicy];
    additionalServerParams2 = [documentationScanPolicy2 additionalServerParams];
    v17 = [v14 initWithDictionary:additionalServerParams2];
    [mEMORY[0x277D64428] setAdditionalServerParams:v17];
  }

  else
  {
    documentationScanPolicy2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [mEMORY[0x277D64428] setAdditionalServerParams:documentationScanPolicy2];
  }

  additionalServerParams3 = [mEMORY[0x277D64428] additionalServerParams];

  if (!additionalServerParams3)
  {
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    v102 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create documentation catalog download options additional server params", self];
    [mEMORY[0x277D64428]2 trackError:@"DOC_CATALOG_DOWNLOAD_OPTIONS" forReason:v102 withResult:8100 withError:0];

    goto LABEL_40;
  }

  [mEMORY[0x277D64428] setSessionId:dCopy];
  documentationScanPolicy3 = [(SUCorePolicy *)self documentationScanPolicy];
  [mEMORY[0x277D64428] setDiscretionary:{objc_msgSend(documentationScanPolicy3, "discretionary")}];

  documentationScanPolicy4 = [(SUCorePolicy *)self documentationScanPolicy];
  specifiedFields = [documentationScanPolicy4 specifiedFields];

  if ((specifiedFields & 0x40) != 0)
  {
    documentationScanPolicy5 = [(SUCorePolicy *)self documentationScanPolicy];
    [mEMORY[0x277D64428] setDisableUI:{objc_msgSend(documentationScanPolicy5, "disableUI")}];
  }

  documentationScanPolicy6 = [(SUCorePolicy *)self documentationScanPolicy];
  specifiedFields2 = [documentationScanPolicy6 specifiedFields];

  if ((specifiedFields2 & 2) != 0)
  {
    documentationScanPolicy7 = [(SUCorePolicy *)self documentationScanPolicy];
    [mEMORY[0x277D64428] setAllowsCellularAccess:{objc_msgSend(documentationScanPolicy7, "allowsCellular")}];
  }

  documentationScanPolicy8 = [(SUCorePolicy *)self documentationScanPolicy];
  specifiedFields3 = [documentationScanPolicy8 specifiedFields];

  if ((specifiedFields3 & 8) != 0)
  {
    documentationScanPolicy9 = [(SUCorePolicy *)self documentationScanPolicy];
    [mEMORY[0x277D64428] setRequiresPowerPluggedIn:{objc_msgSend(documentationScanPolicy9, "requiresPowerPluggedIn")}];
  }

  documentationScanPolicy10 = [(SUCorePolicy *)self documentationScanPolicy];
  specifiedFields4 = [documentationScanPolicy10 specifiedFields];

  if ((specifiedFields4 & 0x20) != 0)
  {
    documentationScanPolicy11 = [(SUCorePolicy *)self documentationScanPolicy];
    [mEMORY[0x277D64428] setLiveServerCatalogOnly:{objc_msgSend(documentationScanPolicy11, "liveServerCatalogOnly")}];
  }

  v135 = dCopy;
  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (downloadAuthorizationHeader)
  {
    downloadAuthorizationHeader2 = [(SUCorePolicy *)self downloadAuthorizationHeader];
    [mEMORY[0x277D64428] setDownloadAuthorizationHeader:downloadAuthorizationHeader2];
  }

  additionalServerParams4 = [mEMORY[0x277D64428] additionalServerParams];
  productType = [(SUCorePolicy *)self productType];
  [additionalServerParams4 setSafeObject:productType forKey:@"ProductType"];

  additionalServerParams5 = [mEMORY[0x277D64428] additionalServerParams];
  hwModelStr = [(SUCorePolicy *)self hwModelStr];
  [additionalServerParams5 setSafeObject:hwModelStr forKey:@"HWModelStr"];

  additionalServerParams6 = [mEMORY[0x277D64428] additionalServerParams];
  deviceClass = [(SUCorePolicy *)self deviceClass];
  [additionalServerParams6 setSafeObject:deviceClass forKey:@"DeviceName"];

  additionalServerParams7 = [mEMORY[0x277D64428] additionalServerParams];
  prerequisiteBuildVersion = [(SUCorePolicy *)self prerequisiteBuildVersion];
  [additionalServerParams7 setSafeObject:prerequisiteBuildVersion forKey:@"BuildVersion"];

  v43 = objc_alloc(MEMORY[0x277CCACA8]);
  sessionId = [mEMORY[0x277D64428] sessionId];
  v45 = [v43 initWithFormat:@"scanUUID:%@|", sessionId];
  v46 = [@"|" stringByAppendingString:v45];

  v47 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([mEMORY[0x277D64428] discretionary])
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
  if ([mEMORY[0x277D64428] allowsCellularAccess])
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
  if ([mEMORY[0x277D64428] requiresPowerPluggedIn])
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
  if ([mEMORY[0x277D64428] liveServerCatalogOnly])
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
  productType2 = [(SUCorePolicy *)self productType];
  v65 = [v63 initWithFormat:@"productType:%@|", productType2];
  v66 = [v62 stringByAppendingString:v65];

  v67 = objc_alloc(MEMORY[0x277CCACA8]);
  hwModelStr2 = [(SUCorePolicy *)self hwModelStr];
  v69 = [v67 initWithFormat:@"hwModelStr:%@|", hwModelStr2];
  v70 = [v66 stringByAppendingString:v69];

  v71 = objc_alloc(MEMORY[0x277CCACA8]);
  deviceClass2 = [(SUCorePolicy *)self deviceClass];
  v73 = [v71 initWithFormat:@"deviceClass:%@|", deviceClass2];
  v74 = [v70 stringByAppendingString:v73];

  v75 = objc_alloc(MEMORY[0x277CCACA8]);
  prerequisiteBuildVersion2 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v77 = [v75 initWithFormat:@"buildVersion:%@|", prerequisiteBuildVersion2];
  v78 = [v74 stringByAppendingString:v77];

  additionalServerParams8 = [mEMORY[0x277D64428] additionalServerParams];
  documentationID = [descriptorCopy documentationID];
  [additionalServerParams8 setSafeObject:documentationID forKey:@"SUDocumentationID"];

  additionalServerParams9 = [mEMORY[0x277D64428] additionalServerParams];
  deviceClass3 = [(SUCorePolicy *)self deviceClass];
  [additionalServerParams9 setSafeObject:deviceClass3 forKey:@"DeviceName"];

  v83 = objc_alloc(MEMORY[0x277CCACA8]);
  additionalServerParams10 = [mEMORY[0x277D64428] additionalServerParams];
  v85 = [additionalServerParams10 safeStringForKey:@"SUDocumentationID"];
  v86 = [v83 initWithFormat:@"documentationID:%@", v85];
  v87 = [v78 stringByAppendingString:v86];

  v88 = objc_alloc(MEMORY[0x277CCACA8]);
  additionalServerParams11 = [mEMORY[0x277D64428] additionalServerParams];
  v90 = [additionalServerParams11 safeStringForKey:@"DeviceName"];
  v91 = [v88 initWithFormat:@"deviceClass:%@", v90];
  v92 = [v87 stringByAppendingString:v91];

  documentationScanPolicy12 = [(SUCorePolicy *)self documentationScanPolicy];
  LOBYTE(additionalServerParams11) = [documentationScanPolicy12 specifiedFields];

  if ((additionalServerParams11 & 0x10) != 0)
  {
    documentationScanPolicy13 = [(SUCorePolicy *)self documentationScanPolicy];
    [mEMORY[0x277D64428] setTimeoutIntervalForResource:{-[NSObject downloadTimeoutSecs](documentationScanPolicy13, "downloadTimeoutSecs")}];
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

    [mEMORY[0x277D64428] setTimeoutIntervalForResource:v94];
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    documentationScanPolicy13 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(documentationScanPolicy13, OS_LOG_TYPE_DEFAULT))
    {
      documentationScanPolicy14 = [(SUCorePolicy *)self documentationScanPolicy];
      downloadTimeoutSecs = [documentationScanPolicy14 downloadTimeoutSecs];
      timeoutIntervalForResource = [mEMORY[0x277D64428] timeoutIntervalForResource];
      isInternal = [(SUCorePolicy *)self isInternal];
      *buf = 67109634;
      v101 = @"NO";
      if (isInternal)
      {
        v101 = @"YES";
      }

      *v142 = downloadTimeoutSecs;
      *&v142[4] = 2048;
      *&v142[6] = timeoutIntervalForResource;
      v143 = 2114;
      v144 = v101;
      _os_log_impl(&dword_23193C000, documentationScanPolicy13, OS_LOG_TYPE_DEFAULT, "[POLICY] downloadTimeoutSecs is %d, setting timeoutIntervalForResource to %ld (isInternal=%{public}@)", buf, 0x1Cu);
    }
  }

  v105 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout:%ld|", objc_msgSend(mEMORY[0x277D64428], "timeoutIntervalForResource")];
  v119 = [v92 stringByAppendingString:v105];

  assetAudienceUUID = [descriptorCopy assetAudienceUUID];

  if (assetAudienceUUID)
  {
    assetAudienceUUID2 = [descriptorCopy assetAudienceUUID];
    v108 = [assetAudienceUUID2 copy];
    [mEMORY[0x277D64428] setLiveAssetAudienceUUID:v108];

    mobileAssetPurposeOverride = [(SUCorePolicy *)self mobileAssetPurposeOverride];
    if (mobileAssetPurposeOverride)
    {
      [(SUCorePolicy *)self mobileAssetPurposeOverride];
    }

    else
    {
      [descriptorCopy assetAudienceUUID];
    }
    v113 = ;
    v114 = @"purpose(param):%@";
    v115 = @"liveAssetAudienceUUID(param):%@";
LABEL_52:
    v116 = [v113 copy];
    [mEMORY[0x277D64428] setPurpose:v116];

    liveAssetAudienceUUID = [mEMORY[0x277D64428] liveAssetAudienceUUID];
    v117 = [(__CFString *)v119 stringByAppendingFormat:v115, liveAssetAudienceUUID];

    purpose = [mEMORY[0x277D64428] purpose];
    v119 = [v117 stringByAppendingFormat:v114, purpose];

    goto LABEL_53;
  }

  assetAudienceUUID3 = [(SUCorePolicy *)self assetAudienceUUID];

  if (assetAudienceUUID3)
  {
    assetAudienceUUID4 = [(SUCorePolicy *)self assetAudienceUUID];
    v112 = [assetAudienceUUID4 copy];
    [mEMORY[0x277D64428] setLiveAssetAudienceUUID:v112];

    mobileAssetPurposeOverride = [(SUCorePolicy *)self mobileAssetPurposeOverride];
    if (mobileAssetPurposeOverride)
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
  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v142 = v119;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] documentation catalog download options: %{public}@", buf, 0xCu);
  }

  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v122 = [policyExtensions countByEnumeratingWithState:&v136 objects:v140 count:16];
  if (v122)
  {
    v123 = v122;
    v134 = v119;
    v124 = mEMORY[0x277D64428];
    v125 = descriptorCopy;
    v126 = *v137;
    do
    {
      for (i = 0; i != v123; ++i)
      {
        if (*v137 != v126)
        {
          objc_enumerationMutation(policyExtensions);
        }

        v128 = *(*(&v136 + 1) + 8 * i);
        mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]4 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v128 extensionName];
          *buf = 138543362;
          *v142 = extensionName;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] extending documentation catalog download options for extension %{public}@", buf, 0xCu);
        }

        [v128 extendMADocumentationCatalogDownloadOptions:v124 descriptor:v125];
      }

      v123 = [policyExtensions countByEnumeratingWithState:&v136 objects:v140 count:16];
    }

    while (v123);
    v119 = v134;
    dCopy = v135;
    descriptorCopy = v125;
    mEMORY[0x277D64428] = v124;
  }

LABEL_65:

  v132 = *MEMORY[0x277D85DE8];

  return mEMORY[0x277D64428];
}

- (id)constructMASoftwareUpdateAssetDownloadOptionsWithUUID:(id)d
{
  v75 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMASoftwareUpdateAssetDownloadOptionsWithUUID for policy: %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277D28A18]);
  if (!v7)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    mEMORY[0x277D64428]2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create software update asset download options", self];
    [mEMORY[0x277D64428] trackError:@"SU_ASSET_DOWNLOAD_OPTIONS" forReason:mEMORY[0x277D64428]2 withResult:8100 withError:0];
LABEL_31:

    v48 = @"|";
    policyExtensions = mEMORY[0x277D64428];
    mEMORY[0x277D64428] = 0;
    goto LABEL_45;
  }

  mEMORY[0x277D64428] = v7;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [mEMORY[0x277D64428] setAdditionalServerParams:v9];

  additionalServerParams = [mEMORY[0x277D64428] additionalServerParams];

  if (!additionalServerParams)
  {
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create software update asset download options additional server params", self];
    [mEMORY[0x277D64428]2 trackError:@"SU_ASSET_DOWNLOAD_OPTIONS" forReason:v50 withResult:8100 withError:0];

    goto LABEL_31;
  }

  [mEMORY[0x277D64428] setSessionId:dCopy];
  softwareUpdateDownloadPolicy = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  [mEMORY[0x277D64428] setDiscretionary:{objc_msgSend(softwareUpdateDownloadPolicy, "discretionary")}];

  softwareUpdateDownloadPolicy2 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  specifiedFields = [softwareUpdateDownloadPolicy2 specifiedFields];

  if (specifiedFields < 0)
  {
    softwareUpdateDownloadPolicy3 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [mEMORY[0x277D64428] setDisableUI:{objc_msgSend(softwareUpdateDownloadPolicy3, "disableUI")}];
  }

  softwareUpdateDownloadPolicy4 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  specifiedFields2 = [softwareUpdateDownloadPolicy4 specifiedFields];

  if ((specifiedFields2 & 2) != 0)
  {
    softwareUpdateDownloadPolicy5 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [mEMORY[0x277D64428] setAllowsCellularAccess:{objc_msgSend(softwareUpdateDownloadPolicy5, "allowsCellular")}];
  }

  softwareUpdateDownloadPolicy6 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  specifiedFields3 = [softwareUpdateDownloadPolicy6 specifiedFields];

  if ((specifiedFields3 & 0x10) != 0)
  {
    softwareUpdateDownloadPolicy7 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [mEMORY[0x277D64428] setRequiresPowerPluggedIn:{objc_msgSend(softwareUpdateDownloadPolicy7, "requiresPowerPluggedIn")}];
  }

  softwareUpdateDownloadPolicy8 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  specifiedFields4 = [softwareUpdateDownloadPolicy8 specifiedFields];

  if ((specifiedFields4 & 0x40) != 0)
  {
    softwareUpdateDownloadPolicy9 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [mEMORY[0x277D64428] setAllowsExpensiveAccess:{objc_msgSend(softwareUpdateDownloadPolicy9, "requiresInexpensiveAccess") ^ 1}];
  }

  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (downloadAuthorizationHeader)
  {
    downloadAuthorizationHeader2 = [(SUCorePolicy *)self downloadAuthorizationHeader];
    [mEMORY[0x277D64428] setDownloadAuthorizationHeader:downloadAuthorizationHeader2];
  }

  v26 = objc_alloc(MEMORY[0x277CCACA8]);
  sessionId = [mEMORY[0x277D64428] sessionId];
  v28 = [v26 initWithFormat:@"scanUUID:%@|", sessionId];
  v29 = [@"|" stringByAppendingString:v28];

  v30 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([mEMORY[0x277D64428] discretionary])
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
  if ([mEMORY[0x277D64428] allowsCellularAccess])
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
  if ([mEMORY[0x277D64428] requiresPowerPluggedIn])
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
  if ([mEMORY[0x277D64428] allowsExpensiveAccess])
  {
    v43 = @"YES";
  }

  else
  {
    v43 = @"NO";
  }

  v44 = [v42 initWithFormat:@"allowsExpensiveAccess:%@|", v43];
  v45 = [v41 stringByAppendingString:v44];

  softwareUpdateDownloadPolicy10 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  specifiedFields5 = [softwareUpdateDownloadPolicy10 specifiedFields];

  v67 = dCopy;
  if ((specifiedFields5 & 0x20) != 0)
  {
    softwareUpdateDownloadPolicy11 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    [mEMORY[0x277D64428] setTimeoutIntervalForResource:{objc_msgSend(softwareUpdateDownloadPolicy11, "downloadTimeoutSecs")}];

    v53 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout:%ld|", objc_msgSend(mEMORY[0x277D64428], "timeoutIntervalForResource")];
    v48 = [v45 stringByAppendingString:v53];

    v45 = v53;
  }

  else
  {
    v48 = [v45 stringByAppendingString:@"timeout:MobileAsset|"];
  }

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = v48;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] software update asset download options: %{public}@", buf, 0xCu);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v56 = [policyExtensions countByEnumeratingWithState:&v68 objects:v72 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v60 = *(*(&v68 + 1) + 8 * i);
        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v60 extensionName];
          *buf = 138543362;
          selfCopy = extensionName;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] extending software update asset download options for extension %{public}@", buf, 0xCu);
        }

        [v60 extendMASoftwareUpdateAssetDownloadOptions:mEMORY[0x277D64428]];
      }

      v57 = [policyExtensions countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v57);
    v48 = v66;
    dCopy = v67;
  }

LABEL_45:

  v64 = *MEMORY[0x277D85DE8];

  return mEMORY[0x277D64428];
}

- (id)constructMADocumentationAssetDownloadOptionsWithUUID:(id)d
{
  v73 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] constructMADocumentationAssetDownloadOptionsWithUUID for policy: %{public}@", buf, 0xCu);
  }

  v7 = objc_alloc_init(MEMORY[0x277D28A18]);
  if (!v7)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    mEMORY[0x277D64428]2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create documentation asset download options", self];
    [mEMORY[0x277D64428] trackError:@"DOC_ASSET_DOWNLOAD_OPTIONS" forReason:mEMORY[0x277D64428]2 withResult:8100 withError:0];
LABEL_41:

    v48 = @"|";
    policyExtensions = mEMORY[0x277D64428];
    mEMORY[0x277D64428] = 0;
    goto LABEL_42;
  }

  mEMORY[0x277D64428] = v7;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [mEMORY[0x277D64428] setAdditionalServerParams:v9];

  additionalServerParams = [mEMORY[0x277D64428] additionalServerParams];

  if (!additionalServerParams)
  {
    mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
    v61 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unable to create documentation asset download options additional server params", self];
    [mEMORY[0x277D64428]2 trackError:@"DOC_ASSET_DOWNLOAD_OPTIONS" forReason:v61 withResult:8100 withError:0];

    goto LABEL_41;
  }

  [mEMORY[0x277D64428] setSessionId:dCopy];
  documentationDownloadPolicy = [(SUCorePolicy *)self documentationDownloadPolicy];
  [mEMORY[0x277D64428] setDiscretionary:{objc_msgSend(documentationDownloadPolicy, "discretionary")}];

  documentationDownloadPolicy2 = [(SUCorePolicy *)self documentationDownloadPolicy];
  specifiedFields = [documentationDownloadPolicy2 specifiedFields];

  if ((specifiedFields & 0x40) != 0)
  {
    documentationDownloadPolicy3 = [(SUCorePolicy *)self documentationDownloadPolicy];
    [mEMORY[0x277D64428] setDisableUI:{objc_msgSend(documentationDownloadPolicy3, "disableUI")}];
  }

  documentationDownloadPolicy4 = [(SUCorePolicy *)self documentationDownloadPolicy];
  specifiedFields2 = [documentationDownloadPolicy4 specifiedFields];

  if ((specifiedFields2 & 2) != 0)
  {
    documentationDownloadPolicy5 = [(SUCorePolicy *)self documentationDownloadPolicy];
    [mEMORY[0x277D64428] setAllowsCellularAccess:{objc_msgSend(documentationDownloadPolicy5, "allowsCellular")}];
  }

  documentationDownloadPolicy6 = [(SUCorePolicy *)self documentationDownloadPolicy];
  specifiedFields3 = [documentationDownloadPolicy6 specifiedFields];

  if ((specifiedFields3 & 8) != 0)
  {
    documentationDownloadPolicy7 = [(SUCorePolicy *)self documentationDownloadPolicy];
    [mEMORY[0x277D64428] setRequiresPowerPluggedIn:{objc_msgSend(documentationDownloadPolicy7, "requiresPowerPluggedIn")}];
  }

  documentationDownloadPolicy8 = [(SUCorePolicy *)self documentationDownloadPolicy];
  specifiedFields4 = [documentationDownloadPolicy8 specifiedFields];

  if ((specifiedFields4 & 0x20) != 0)
  {
    documentationDownloadPolicy9 = [(SUCorePolicy *)self documentationDownloadPolicy];
    [mEMORY[0x277D64428] setAllowsExpensiveAccess:{objc_msgSend(documentationDownloadPolicy9, "requiresInexpensiveAccess") ^ 1}];
  }

  documentationDownloadPolicy10 = [(SUCorePolicy *)self documentationDownloadPolicy];
  [mEMORY[0x277D64428] setTimeoutIntervalForResource:{objc_msgSend(documentationDownloadPolicy10, "downloadTimeoutSecs")}];

  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];

  if (downloadAuthorizationHeader)
  {
    downloadAuthorizationHeader2 = [(SUCorePolicy *)self downloadAuthorizationHeader];
    [mEMORY[0x277D64428] setDownloadAuthorizationHeader:downloadAuthorizationHeader2];
  }

  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  sessionId = [mEMORY[0x277D64428] sessionId];
  v29 = [v27 initWithFormat:@"scanUUID:%@|", sessionId];
  v30 = [@"|" stringByAppendingString:v29];

  v31 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([mEMORY[0x277D64428] discretionary])
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
  if ([mEMORY[0x277D64428] allowsCellularAccess])
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
  if ([mEMORY[0x277D64428] requiresPowerPluggedIn])
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
  if ([mEMORY[0x277D64428] allowsExpensiveAccess])
  {
    v44 = @"YES";
  }

  else
  {
    v44 = @"NO";
  }

  v45 = [v43 initWithFormat:@"allowsExpensiveAccess:%@|", v44];
  v46 = [v42 stringByAppendingString:v45];

  v47 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"timeout:%ld|", objc_msgSend(mEMORY[0x277D64428], "timeoutIntervalForResource")];
  v48 = [v46 stringByAppendingString:v47];

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = v48;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] documentation asset download options: %{public}@", buf, 0xCu);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v52 = [policyExtensions countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v52)
  {
    v53 = v52;
    v64 = v48;
    v65 = dCopy;
    v54 = *v67;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v67 != v54)
        {
          objc_enumerationMutation(policyExtensions);
        }

        v56 = *(*(&v66 + 1) + 8 * i);
        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          extensionName = [v56 extensionName];
          *buf = 138543362;
          selfCopy = extensionName;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[POLICY] extending documentation asset download options for extension %{public}@", buf, 0xCu);
        }

        [v56 extendMADocumentationAssetDownloadOptions:mEMORY[0x277D64428]];
      }

      v53 = [policyExtensions countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v53);
    v48 = v64;
    dCopy = v65;
  }

LABEL_42:

  v62 = *MEMORY[0x277D85DE8];

  return mEMORY[0x277D64428];
}

- (id)setUpdateMetricEventFieldsFromDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(SUCorePolicy *)self setUpdateMetricEventFields:0];
  if (dictionaryCopy)
  {
    v20 = dictionaryCopy;
    selfCopy = self;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = dictionaryCopy;
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
            mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
            v15 = [mEMORY[0x277D643F8] buildError:8102 underlying:0 description:v13];

            mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
            [mEMORY[0x277D64428] trackAnomaly:@"SET_UPDATE_METRIC_EVENT_FIELDS" forReason:v13 withResult:8102 withError:v15];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [(SUCorePolicy *)selfCopy setUpdateMetricEventFields:v5];
    dictionaryCopy = v20;
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)updateApplyOptionsWithExtensions:(id)extensions
{
  v24 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] updateApplyOptionsWithExtensions for policy: %{public}@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v8 = [policyExtensions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
          oslog2 = [mEMORY[0x277D64460]2 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            extensionName = [v12 extensionName];
            *buf = 138543362;
            selfCopy = extensionName;
            _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] extending query for extension %{public}@", buf, 0xCu);
          }

          [v12 extendMSUApplyOptions:extensionsCopy];
        }
      }

      v9 = [policyExtensions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateRollbackOptionsWithExtensions:(id)extensions
{
  v24 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[POLICY] updateRollbackOptionsWithExtensions for policy: %{public}@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v8 = [policyExtensions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
          oslog2 = [mEMORY[0x277D64460]2 oslog];

          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            extensionName = [v12 extensionName];
            *buf = 138543362;
            selfCopy = extensionName;
            _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] extending rollback options for extension %{public}@", buf, 0xCu);
          }

          [v12 extendMSURollbackOptions:extensionsCopy];
        }
      }

      v9 = [policyExtensions countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v3 = [policyExtensions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 |= [v8 isSplatPolicy];
        }
      }

      v4 = [policyExtensions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v3 = [policyExtensions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 |= [v8 isSupervisedPolicy];
        }
      }

      v4 = [policyExtensions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v3 = [policyExtensions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v5 |= [v8 isRequestedPMVSupervisedPolicy];
        }
      }

      v4 = [policyExtensions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v3 = [policyExtensions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          requestedProductMarketingVersion = [v8 requestedProductMarketingVersion];

          v5 = requestedProductMarketingVersion;
        }
      }

      v4 = [policyExtensions countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (BOOL)isSupervisedAndRequestingInvalidOS:(id *)s
{
  if (s)
  {
    *s = @"policy is valid by default";
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
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v3 = [policyExtensions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    delayPeriodDays = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(policyExtensions);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          delayPeriodDays = [v8 delayPeriodDays];
        }
      }

      v4 = [policyExtensions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    delayPeriodDays = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return delayPeriodDays;
}

- (id)mdmPathName
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v3 = [policyExtensions countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          mdmPathName = [v8 mdmPathName];

          v5 = mdmPathName;
        }
      }

      v4 = [policyExtensions countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (SUCorePolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v108.receiver = self;
  v108.super_class = SUCorePolicy;
  v5 = [(SUCorePolicy *)&v108 init];
  if (v5)
  {
    v5->_specifiedUsedPolicies = [coderCopy decodeInt64ForKey:@"SpecifiedPolicies"];
    v5->_restrictToFull = [coderCopy decodeBoolForKey:@"RestrictToFull"];
    v5->_allowSameVersion = [coderCopy decodeBoolForKey:@"AllowSameVersion"];
    v5->_background = [coderCopy decodeBoolForKey:@"Background"];
    v5->_allowsCellular = [coderCopy decodeBoolForKey:@"AllowsCellular"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UpdateScanPolicy"];
    softwareUpdateScanPolicy = v5->_softwareUpdateScanPolicy;
    v5->_softwareUpdateScanPolicy = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationScanPolicy"];
    documentationScanPolicy = v5->_documentationScanPolicy;
    v5->_documentationScanPolicy = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationDownloadPolicy"];
    documentationDownloadPolicy = v5->_documentationDownloadPolicy;
    v5->_documentationDownloadPolicy = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LoadBrainUpdatePolicy"];
    loadBrainPolicy = v5->_loadBrainPolicy;
    v5->_loadBrainPolicy = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreflightDownloadPolicy"];
    downloadPreflightPolicy = v5->_downloadPreflightPolicy;
    v5->_downloadPreflightPolicy = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreflightWakeupPolicy"];
    wakeupPreflightPolicy = v5->_wakeupPreflightPolicy;
    v5->_wakeupPreflightPolicy = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreflightPrerequisiteCheckPolicy"];
    prerequisiteCheckPreflightPolicy = v5->_prerequisiteCheckPreflightPolicy;
    v5->_prerequisiteCheckPreflightPolicy = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreflightPersonalizePolicy"];
    personalizePreflightPolicy = v5->_personalizePreflightPolicy;
    v5->_personalizePreflightPolicy = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreflightFDRRecoveryPolicy"];
    fdrRecoveryPreflightPolicy = v5->_fdrRecoveryPreflightPolicy;
    v5->_fdrRecoveryPreflightPolicy = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DownloadSoftwareUpdatePolicy"];
    softwareUpdateDownloadPolicy = v5->_softwareUpdateDownloadPolicy;
    v5->_softwareUpdateDownloadPolicy = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrepareUpdatePolicy"];
    preparePolicy = v5->_preparePolicy;
    v5->_preparePolicy = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SuspendUpdatePolicy"];
    suspendPolicy = v5->_suspendPolicy;
    v5->_suspendPolicy = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ResumeUpdatePolicy"];
    resumePolicy = v5->_resumePolicy;
    v5->_resumePolicy = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ApplyUpdatePolicy"];
    applyPolicy = v5->_applyPolicy;
    v5->_applyPolicy = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RollbackUpdatePolicy"];
    rollbackPolicy = v5->_rollbackPolicy;
    v5->_rollbackPolicy = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetType"];
    softwareUpdateAssetType = v5->_softwareUpdateAssetType;
    v5->_softwareUpdateAssetType = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetType"];
    documentationAssetType = v5->_documentationAssetType;
    v5->_documentationAssetType = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TargetVolumeUUID"];
    targetVolumeUUID = v5->_targetVolumeUUID;
    v5->_targetVolumeUUID = v40;

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = [v42 setWithObjects:{v43, objc_opt_class(), 0}];
    v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"PolicyExtensions"];
    policyExtensions = v5->_policyExtensions;
    v5->_policyExtensions = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteBuildVersion"];
    prerequisiteBuildVersion = v5->_prerequisiteBuildVersion;
    v5->_prerequisiteBuildVersion = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteProductVersion"];
    prerequisiteProductVersion = v5->_prerequisiteProductVersion;
    v5->_prerequisiteProductVersion = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteRestoreVersion"];
    prerequisiteRestoreVersion = v5->_prerequisiteRestoreVersion;
    v5->_prerequisiteRestoreVersion = v51;

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TargetRestoreVersion"];
    targetRestoreVersion = v5->_targetRestoreVersion;
    v5->_targetRestoreVersion = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstalledSFRVersion"];
    installedSFRVersion = v5->_installedSFRVersion;
    v5->_installedSFRVersion = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceClass"];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v57;

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HWModelStr"];
    hwModelStr = v5->_hwModelStr;
    v5->_hwModelStr = v59;

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    productType = v5->_productType;
    v5->_productType = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseType"];
    releaseType = v5->_releaseType;
    v5->_releaseType = v63;

    v5->_isInternal = [coderCopy decodeBoolForKey:@"IsInternal"];
    v5->_checkAvailableSpace = [coderCopy decodeBoolForKey:@"CheckAvailableSpace"];
    v5->_useReserveSpace = [coderCopy decodeBoolForKey:@"UseReserveSpace"];
    v5->_cacheDeleteUrgency = [coderCopy decodeIntForKey:@"CacheDeleteUrgency"];
    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserAgentString"];
    userAgentString = v5->_userAgentString;
    v5->_userAgentString = v65;

    v5->_performPreflightEncryptedCheck = [coderCopy decodeBoolForKey:@"PerformPreflightEncryptedCheck"];
    v5->_performPreflightSnapshotCheck = [coderCopy decodeBoolForKey:@"PerformPreflightSnapshotCheck"];
    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UpdateVolumePath"];
    updateVolumePath = v5->_updateVolumePath;
    v5->_updateVolumePath = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSOToken"];
    ssoToken = v5->_ssoToken;
    v5->_ssoToken = v69;

    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PersonalizedManifestRootsPath"];
    personalizedManifestRootsPath = v5->_personalizedManifestRootsPath;
    v5->_personalizedManifestRootsPath = v71;

    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocalAuthenticationContext"];
    localAuthenticationContext = v5->_localAuthenticationContext;
    v5->_localAuthenticationContext = v73;

    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocalAuthenticationUserID"];
    localAuthenticationUserID = v5->_localAuthenticationUserID;
    v5->_localAuthenticationUserID = v75;

    v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MDMBootstrapToken"];
    mdmBootstrapToken = v5->_mdmBootstrapToken;
    v5->_mdmBootstrapToken = v77;

    v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DownloadAuthorizationHeader"];
    downloadAuthorizationHeader = v5->_downloadAuthorizationHeader;
    v5->_downloadAuthorizationHeader = v79;

    v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UpdateBrainLocationOverride"];
    updateBrainLocationOverride = v5->_updateBrainLocationOverride;
    v5->_updateBrainLocationOverride = v81;

    v83 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetAudienceUUID"];
    assetAudienceUUID = v5->_assetAudienceUUID;
    v5->_assetAudienceUUID = v83;

    v85 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AlternateAssetAudienceUUID"];
    alternateAssetAudienceUUID = v5->_alternateAssetAudienceUUID;
    v5->_alternateAssetAudienceUUID = v85;

    v5->_disableAlternateUpdate = [coderCopy decodeBoolForKey:@"DisableAlternateUpdate"];
    v5->_disableSplatCombo = [coderCopy decodeBoolForKey:@"DisableSplombo"];
    v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PersonalizationServerURL"];
    personalizationServerURL = v5->_personalizationServerURL;
    v5->_personalizationServerURL = v87;

    v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxyHostName"];
    proxyHostName = v5->_proxyHostName;
    v5->_proxyHostName = v89;

    v91 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProxyPortNumber"];
    proxyPortNumber = v5->_proxyPortNumber;
    v5->_proxyPortNumber = v91;

    v5->_bridgeOSIgnoreMinimumVersionCheck = [coderCopy decodeBoolForKey:@"BridgeOSIgnoreMinimumVersionCheck"];
    v93 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BridgeOSDownloadDirectory"];
    bridgeOSDownloadDirectory = v5->_bridgeOSDownloadDirectory;
    v5->_bridgeOSDownloadDirectory = v93;

    v5->_enableEmbeddedOSInstall = [coderCopy decodeBoolForKey:@"EnableEmbeddedOSInstall"];
    v5->_enableBridgeOSInstall = [coderCopy decodeBoolForKey:@"EnableBridgeOSInstall"];
    v5->_enableOSPersonalization = [coderCopy decodeBoolForKey:@"EnableOSPersonalization"];
    v5->_userInitiated = [coderCopy decodeBoolForKey:@"UserInitiated"];
    v5->_skipVolumeSealing = [coderCopy decodeBoolForKey:@"SkipVolumeSealing"];
    v5->_qualityOfService = [coderCopy decodeIntForKey:@"QualityOfService"];
    v95 = objc_alloc(MEMORY[0x277CBEB98]);
    v96 = objc_opt_class();
    v97 = [v95 initWithObjects:{v96, objc_opt_class(), 0}];
    v98 = [coderCopy decodeObjectOfClasses:v97 forKey:@"UpdateMetricEventFields"];
    updateMetricEventFields = v5->_updateMetricEventFields;
    v5->_updateMetricEventFields = v98;

    v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UpdateMetricContext"];
    updateMetricContext = v5->_updateMetricContext;
    v5->_updateMetricContext = v100;

    v102 = objc_alloc(MEMORY[0x277CBEB98]);
    v103 = objc_opt_class();
    v104 = [v102 initWithObjects:{v103, objc_opt_class(), 0}];
    v105 = [coderCopy decodeObjectOfClasses:v104 forKey:@"DefaultDescriptorValues"];
    defaultDescriptorValues = v5->_defaultDescriptorValues;
    v5->_defaultDescriptorValues = v105;

    v5->_enablePreSUStaging = [coderCopy decodeBoolForKey:@"EnablePSUSAssets"];
    v5->_enablePreSUStagingForOptionalAssets = [coderCopy decodeBoolForKey:@"EnablePSUSForOptionalAssets"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicy specifiedUsedPolicies](self forKey:{"specifiedUsedPolicies"), @"SpecifiedPolicies"}];
  [coderCopy encodeBool:-[SUCorePolicy restrictToFull](self forKey:{"restrictToFull"), @"RestrictToFull"}];
  [coderCopy encodeBool:-[SUCorePolicy allowSameVersion](self forKey:{"allowSameVersion"), @"AllowSameVersion"}];
  [coderCopy encodeBool:-[SUCorePolicy background](self forKey:{"background"), @"Background"}];
  [coderCopy encodeBool:-[SUCorePolicy allowsCellular](self forKey:{"allowsCellular"), @"AllowsCellular"}];
  softwareUpdateScanPolicy = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  [coderCopy encodeObject:softwareUpdateScanPolicy forKey:@"UpdateScanPolicy"];

  documentationScanPolicy = [(SUCorePolicy *)self documentationScanPolicy];
  [coderCopy encodeObject:documentationScanPolicy forKey:@"DocumentationScanPolicy"];

  documentationDownloadPolicy = [(SUCorePolicy *)self documentationDownloadPolicy];
  [coderCopy encodeObject:documentationDownloadPolicy forKey:@"DocumentationDownloadPolicy"];

  loadBrainPolicy = [(SUCorePolicy *)self loadBrainPolicy];
  [coderCopy encodeObject:loadBrainPolicy forKey:@"LoadBrainUpdatePolicy"];

  downloadPreflightPolicy = [(SUCorePolicy *)self downloadPreflightPolicy];
  [coderCopy encodeObject:downloadPreflightPolicy forKey:@"PreflightDownloadPolicy"];

  wakeupPreflightPolicy = [(SUCorePolicy *)self wakeupPreflightPolicy];
  [coderCopy encodeObject:wakeupPreflightPolicy forKey:@"PreflightWakeupPolicy"];

  prerequisiteCheckPreflightPolicy = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
  [coderCopy encodeObject:prerequisiteCheckPreflightPolicy forKey:@"PreflightPrerequisiteCheckPolicy"];

  personalizePreflightPolicy = [(SUCorePolicy *)self personalizePreflightPolicy];
  [coderCopy encodeObject:personalizePreflightPolicy forKey:@"PreflightPersonalizePolicy"];

  fdrRecoveryPreflightPolicy = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
  [coderCopy encodeObject:fdrRecoveryPreflightPolicy forKey:@"PreflightFDRRecoveryPolicy"];

  softwareUpdateDownloadPolicy = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  [coderCopy encodeObject:softwareUpdateDownloadPolicy forKey:@"DownloadSoftwareUpdatePolicy"];

  preparePolicy = [(SUCorePolicy *)self preparePolicy];
  [coderCopy encodeObject:preparePolicy forKey:@"PrepareUpdatePolicy"];

  suspendPolicy = [(SUCorePolicy *)self suspendPolicy];
  [coderCopy encodeObject:suspendPolicy forKey:@"SuspendUpdatePolicy"];

  resumePolicy = [(SUCorePolicy *)self resumePolicy];
  [coderCopy encodeObject:resumePolicy forKey:@"ResumeUpdatePolicy"];

  applyPolicy = [(SUCorePolicy *)self applyPolicy];
  [coderCopy encodeObject:applyPolicy forKey:@"ApplyUpdatePolicy"];

  rollbackPolicy = [(SUCorePolicy *)self rollbackPolicy];
  [coderCopy encodeObject:rollbackPolicy forKey:@"RollbackUpdatePolicy"];

  softwareUpdateAssetType = [(SUCorePolicy *)self softwareUpdateAssetType];
  [coderCopy encodeObject:softwareUpdateAssetType forKey:@"SoftwareUpdateAssetType"];

  documentationAssetType = [(SUCorePolicy *)self documentationAssetType];
  [coderCopy encodeObject:documentationAssetType forKey:@"DocumentationAssetType"];

  targetVolumeUUID = [(SUCorePolicy *)self targetVolumeUUID];
  [coderCopy encodeObject:targetVolumeUUID forKey:@"TargetVolumeUUID"];

  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  [coderCopy encodeObject:policyExtensions forKey:@"PolicyExtensions"];

  prerequisiteBuildVersion = [(SUCorePolicy *)self prerequisiteBuildVersion];
  [coderCopy encodeObject:prerequisiteBuildVersion forKey:@"PrerequisiteBuildVersion"];

  prerequisiteProductVersion = [(SUCorePolicy *)self prerequisiteProductVersion];
  [coderCopy encodeObject:prerequisiteProductVersion forKey:@"PrerequisiteProductVersion"];

  prerequisiteRestoreVersion = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  [coderCopy encodeObject:prerequisiteRestoreVersion forKey:@"PrerequisiteRestoreVersion"];

  targetRestoreVersion = [(SUCorePolicy *)self targetRestoreVersion];
  [coderCopy encodeObject:targetRestoreVersion forKey:@"TargetRestoreVersion"];

  installedSFRVersion = [(SUCorePolicy *)self installedSFRVersion];
  [coderCopy encodeObject:installedSFRVersion forKey:@"InstalledSFRVersion"];

  deviceClass = [(SUCorePolicy *)self deviceClass];
  [coderCopy encodeObject:deviceClass forKey:@"DeviceClass"];

  hwModelStr = [(SUCorePolicy *)self hwModelStr];
  [coderCopy encodeObject:hwModelStr forKey:@"HWModelStr"];

  productType = [(SUCorePolicy *)self productType];
  [coderCopy encodeObject:productType forKey:@"ProductType"];

  releaseType = [(SUCorePolicy *)self releaseType];
  [coderCopy encodeObject:releaseType forKey:@"ReleaseType"];

  [coderCopy encodeBool:-[SUCorePolicy isInternal](self forKey:{"isInternal"), @"IsInternal"}];
  [coderCopy encodeBool:-[SUCorePolicy checkAvailableSpace](self forKey:{"checkAvailableSpace"), @"CheckAvailableSpace"}];
  [coderCopy encodeBool:-[SUCorePolicy useReserveSpace](self forKey:{"useReserveSpace"), @"UseReserveSpace"}];
  [coderCopy encodeInt:-[SUCorePolicy cacheDeleteUrgency](self forKey:{"cacheDeleteUrgency"), @"CacheDeleteUrgency"}];
  userAgentString = [(SUCorePolicy *)self userAgentString];
  [coderCopy encodeObject:userAgentString forKey:@"UserAgentString"];

  [coderCopy encodeBool:-[SUCorePolicy performPreflightEncryptedCheck](self forKey:{"performPreflightEncryptedCheck"), @"PerformPreflightEncryptedCheck"}];
  [coderCopy encodeBool:-[SUCorePolicy performPreflightSnapshotCheck](self forKey:{"performPreflightSnapshotCheck"), @"PerformPreflightSnapshotCheck"}];
  updateVolumePath = [(SUCorePolicy *)self updateVolumePath];
  [coderCopy encodeObject:updateVolumePath forKey:@"UpdateVolumePath"];

  ssoToken = [(SUCorePolicy *)self ssoToken];
  [coderCopy encodeObject:ssoToken forKey:@"SSOToken"];

  personalizedManifestRootsPath = [(SUCorePolicy *)self personalizedManifestRootsPath];
  [coderCopy encodeObject:personalizedManifestRootsPath forKey:@"PersonalizedManifestRootsPath"];

  localAuthenticationContext = [(SUCorePolicy *)self localAuthenticationContext];
  [coderCopy encodeObject:localAuthenticationContext forKey:@"LocalAuthenticationContext"];

  localAuthenticationUserID = [(SUCorePolicy *)self localAuthenticationUserID];
  [coderCopy encodeObject:localAuthenticationUserID forKey:@"LocalAuthenticationUserID"];

  mdmBootstrapToken = [(SUCorePolicy *)self mdmBootstrapToken];
  [coderCopy encodeObject:mdmBootstrapToken forKey:@"MDMBootstrapToken"];

  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];
  [coderCopy encodeObject:downloadAuthorizationHeader forKey:@"DownloadAuthorizationHeader"];

  updateBrainLocationOverride = [(SUCorePolicy *)self updateBrainLocationOverride];
  [coderCopy encodeObject:updateBrainLocationOverride forKey:@"UpdateBrainLocationOverride"];

  assetAudienceUUID = [(SUCorePolicy *)self assetAudienceUUID];
  [coderCopy encodeObject:assetAudienceUUID forKey:@"AssetAudienceUUID"];

  alternateAssetAudienceUUID = [(SUCorePolicy *)self alternateAssetAudienceUUID];
  [coderCopy encodeObject:alternateAssetAudienceUUID forKey:@"AlternateAssetAudienceUUID"];

  [coderCopy encodeBool:-[SUCorePolicy disableAlternateUpdate](self forKey:{"disableAlternateUpdate"), @"DisableAlternateUpdate"}];
  [coderCopy encodeBool:-[SUCorePolicy disableSplatCombo](self forKey:{"disableSplatCombo"), @"DisableSplombo"}];
  personalizationServerURL = [(SUCorePolicy *)self personalizationServerURL];
  [coderCopy encodeObject:personalizationServerURL forKey:@"PersonalizationServerURL"];

  proxyHostName = [(SUCorePolicy *)self proxyHostName];
  [coderCopy encodeObject:proxyHostName forKey:@"ProxyHostName"];

  proxyPortNumber = [(SUCorePolicy *)self proxyPortNumber];
  [coderCopy encodeObject:proxyPortNumber forKey:@"ProxyPortNumber"];

  [coderCopy encodeBool:-[SUCorePolicy bridgeOSIgnoreMinimumVersionCheck](self forKey:{"bridgeOSIgnoreMinimumVersionCheck"), @"BridgeOSIgnoreMinimumVersionCheck"}];
  bridgeOSDownloadDirectory = [(SUCorePolicy *)self bridgeOSDownloadDirectory];
  [coderCopy encodeObject:bridgeOSDownloadDirectory forKey:@"BridgeOSDownloadDirectory"];

  [coderCopy encodeBool:-[SUCorePolicy enableEmbeddedOSInstall](self forKey:{"enableEmbeddedOSInstall"), @"EnableEmbeddedOSInstall"}];
  [coderCopy encodeBool:-[SUCorePolicy enableBridgeOSInstall](self forKey:{"enableBridgeOSInstall"), @"EnableBridgeOSInstall"}];
  [coderCopy encodeBool:-[SUCorePolicy enableOSPersonalization](self forKey:{"enableOSPersonalization"), @"EnableOSPersonalization"}];
  [coderCopy encodeBool:-[SUCorePolicy userInitiated](self forKey:{"userInitiated"), @"UserInitiated"}];
  [coderCopy encodeBool:-[SUCorePolicy skipVolumeSealing](self forKey:{"skipVolumeSealing"), @"SkipVolumeSealing"}];
  [coderCopy encodeInt:-[SUCorePolicy qualityOfService](self forKey:{"qualityOfService"), @"QualityOfService"}];
  updateMetricEventFields = [(SUCorePolicy *)self updateMetricEventFields];
  [coderCopy encodeObject:updateMetricEventFields forKey:@"UpdateMetricEventFields"];

  updateMetricContext = [(SUCorePolicy *)self updateMetricContext];
  [coderCopy encodeObject:updateMetricContext forKey:@"UpdateMetricContext"];

  defaultDescriptorValues = [(SUCorePolicy *)self defaultDescriptorValues];
  [coderCopy encodeObject:defaultDescriptorValues forKey:@"DefaultDescriptorValues"];

  [coderCopy encodeBool:-[SUCorePolicy enablePreSUStaging](self forKey:{"enablePreSUStaging"), @"EnablePSUSAssets"}];
  [coderCopy encodeBool:-[SUCorePolicy enablePreSUStagingForOptionalAssets](self forKey:{"enablePreSUStagingForOptionalAssets"), @"EnablePSUSForOptionalAssets"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
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

  v5 = equalCopy;
  specifiedUsedPolicies = [(SUCorePolicy *)self specifiedUsedPolicies];
  specifiedUsedPolicies2 = [(SUCorePolicy *)v5 specifiedUsedPolicies];
  v232 = specifiedUsedPolicies;
  if (specifiedUsedPolicies != specifiedUsedPolicies2 || (-[SUCorePolicy softwareUpdateScanPolicy](self, "softwareUpdateScanPolicy"), v8 = objc_claimAutoreleasedReturnValue(), -[SUCorePolicy softwareUpdateScanPolicy](v5, "softwareUpdateScanPolicy"), v221 = v8, v220 = objc_claimAutoreleasedReturnValue(), ![v8 isEqual:?]))
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

  documentationScanPolicy = [(SUCorePolicy *)self documentationScanPolicy];
  [(SUCorePolicy *)v5 documentationScanPolicy];
  v216 = v217 = documentationScanPolicy;
  if (![documentationScanPolicy isEqual:?])
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

  documentationDownloadPolicy = [(SUCorePolicy *)self documentationDownloadPolicy];
  [(SUCorePolicy *)v5 documentationDownloadPolicy];
  v214 = v215 = documentationDownloadPolicy;
  if (![documentationDownloadPolicy isEqual:?])
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

  loadBrainPolicy = [(SUCorePolicy *)self loadBrainPolicy];
  [(SUCorePolicy *)v5 loadBrainPolicy];
  v212 = v213 = loadBrainPolicy;
  if (![loadBrainPolicy isEqual:?])
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

  downloadPreflightPolicy = [(SUCorePolicy *)self downloadPreflightPolicy];
  [(SUCorePolicy *)v5 downloadPreflightPolicy];
  v210 = v211 = downloadPreflightPolicy;
  if (![downloadPreflightPolicy isEqual:?])
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

  wakeupPreflightPolicy = [(SUCorePolicy *)self wakeupPreflightPolicy];
  [(SUCorePolicy *)v5 wakeupPreflightPolicy];
  v208 = v209 = wakeupPreflightPolicy;
  if (![wakeupPreflightPolicy isEqual:?])
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

  prerequisiteCheckPreflightPolicy = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
  [(SUCorePolicy *)v5 prerequisiteCheckPreflightPolicy];
  v206 = v207 = prerequisiteCheckPreflightPolicy;
  if (![prerequisiteCheckPreflightPolicy isEqual:?])
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

  personalizePreflightPolicy = [(SUCorePolicy *)self personalizePreflightPolicy];
  [(SUCorePolicy *)v5 personalizePreflightPolicy];
  v204 = v205 = personalizePreflightPolicy;
  if (![personalizePreflightPolicy isEqual:?])
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

  fdrRecoveryPreflightPolicy = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
  [(SUCorePolicy *)v5 fdrRecoveryPreflightPolicy];
  v202 = v203 = fdrRecoveryPreflightPolicy;
  if (![fdrRecoveryPreflightPolicy isEqual:?])
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

  softwareUpdateDownloadPolicy = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  [(SUCorePolicy *)v5 softwareUpdateDownloadPolicy];
  v200 = v201 = softwareUpdateDownloadPolicy;
  if (![softwareUpdateDownloadPolicy isEqual:?])
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

  preparePolicy = [(SUCorePolicy *)self preparePolicy];
  [(SUCorePolicy *)v5 preparePolicy];
  v198 = v199 = preparePolicy;
  if (![preparePolicy isEqual:?])
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

  suspendPolicy = [(SUCorePolicy *)self suspendPolicy];
  [(SUCorePolicy *)v5 suspendPolicy];
  v196 = v197 = suspendPolicy;
  if (![suspendPolicy isEqual:?])
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

  resumePolicy = [(SUCorePolicy *)self resumePolicy];
  v218 = v5;
  [(SUCorePolicy *)v5 resumePolicy];
  v194 = v195 = resumePolicy;
  if (![resumePolicy isEqual:?])
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

  applyPolicy = [(SUCorePolicy *)self applyPolicy];
  [(SUCorePolicy *)v5 applyPolicy];
  v192 = v193 = applyPolicy;
  if (![applyPolicy isEqual:?])
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

  rollbackPolicy = [(SUCorePolicy *)self rollbackPolicy];
  rollbackPolicy2 = [(SUCorePolicy *)v5 rollbackPolicy];
  v191 = rollbackPolicy;
  if (![rollbackPolicy isEqual:?])
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
  softwareUpdateAssetType = [(SUCorePolicy *)v5 softwareUpdateAssetType];
  softwareUpdateAssetType2 = [(SUCorePolicy *)self softwareUpdateAssetType];
  v189 = softwareUpdateAssetType;
  if (![v23 stringIsEqual:softwareUpdateAssetType to:?])
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
  documentationAssetType = [(SUCorePolicy *)v5 documentationAssetType];
  documentationAssetType2 = [(SUCorePolicy *)self documentationAssetType];
  v187 = documentationAssetType;
  if (![v25 stringIsEqual:documentationAssetType to:?])
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
  targetVolumeUUID = [(SUCorePolicy *)v5 targetVolumeUUID];
  targetVolumeUUID2 = [(SUCorePolicy *)self targetVolumeUUID];
  v185 = targetVolumeUUID;
  if (![v27 stringIsEqual:targetVolumeUUID to:?])
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
  prerequisiteBuildVersion = [(SUCorePolicy *)v5 prerequisiteBuildVersion];
  prerequisiteBuildVersion2 = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v183 = prerequisiteBuildVersion;
  if (![v29 stringIsEqual:prerequisiteBuildVersion to:?])
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
  prerequisiteProductVersion = [(SUCorePolicy *)v5 prerequisiteProductVersion];
  prerequisiteProductVersion2 = [(SUCorePolicy *)self prerequisiteProductVersion];
  v181 = prerequisiteProductVersion;
  if (![v31 stringIsEqual:prerequisiteProductVersion to:?])
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
  prerequisiteRestoreVersion = [(SUCorePolicy *)v5 prerequisiteRestoreVersion];
  prerequisiteRestoreVersion2 = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v179 = prerequisiteRestoreVersion;
  if (![v33 stringIsEqual:prerequisiteRestoreVersion to:?])
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
  targetRestoreVersion = [(SUCorePolicy *)v5 targetRestoreVersion];
  targetRestoreVersion2 = [(SUCorePolicy *)self targetRestoreVersion];
  v177 = targetRestoreVersion;
  if (![v35 stringIsEqual:targetRestoreVersion to:?])
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
  installedSFRVersion = [(SUCorePolicy *)v5 installedSFRVersion];
  installedSFRVersion2 = [(SUCorePolicy *)self installedSFRVersion];
  v175 = installedSFRVersion;
  if (![v37 stringIsEqual:installedSFRVersion to:?])
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
  deviceClass = [(SUCorePolicy *)v5 deviceClass];
  deviceClass2 = [(SUCorePolicy *)self deviceClass];
  v173 = deviceClass;
  if (![v39 stringIsEqual:deviceClass to:?])
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
  hwModelStr = [(SUCorePolicy *)v5 hwModelStr];
  hwModelStr2 = [(SUCorePolicy *)self hwModelStr];
  v171 = hwModelStr;
  if (![v41 stringIsEqual:hwModelStr to:?])
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
  productType = [(SUCorePolicy *)v5 productType];
  productType2 = [(SUCorePolicy *)self productType];
  v169 = productType;
  if (![v43 stringIsEqual:productType to:?])
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
  releaseType = [(SUCorePolicy *)v218 releaseType];
  releaseType2 = [(SUCorePolicy *)self releaseType];
  v167 = releaseType;
  if (![v45 stringIsEqual:releaseType to:?] || (v47 = -[SUCorePolicy isInternal](v218, "isInternal"), v47 != -[SUCorePolicy isInternal](self, "isInternal")) || (v48 = -[SUCorePolicy checkAvailableSpace](v218, "checkAvailableSpace"), v48 != -[SUCorePolicy checkAvailableSpace](self, "checkAvailableSpace")) || (v49 = -[SUCorePolicy useReserveSpace](v218, "useReserveSpace"), v49 != -[SUCorePolicy useReserveSpace](self, "useReserveSpace")) || (v50 = -[SUCorePolicy restrictToFull](v218, "restrictToFull"), v50 != -[SUCorePolicy restrictToFull](self, "restrictToFull")) || (v51 = -[SUCorePolicy allowSameVersion](v218, "allowSameVersion"), v51 != -[SUCorePolicy allowSameVersion](self, "allowSameVersion")) || (v52 = -[SUCorePolicy background](v218, "background"), v52 != -[SUCorePolicy background](self, "background")) || (v53 = -[SUCorePolicy allowsCellular](v218, "allowsCellular"), v53 != -[SUCorePolicy allowsCellular](self, "allowsCellular")))
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
  userAgentString = [(SUCorePolicy *)v218 userAgentString];
  userAgentString2 = [(SUCorePolicy *)self userAgentString];
  v165 = userAgentString;
  if (![v76 stringIsEqual:userAgentString to:?] || (v78 = -[SUCorePolicy performPreflightEncryptedCheck](v218, "performPreflightEncryptedCheck"), v78 != -[SUCorePolicy performPreflightEncryptedCheck](self, "performPreflightEncryptedCheck")) || (v79 = -[SUCorePolicy performPreflightSnapshotCheck](v218, "performPreflightSnapshotCheck"), v79 != -[SUCorePolicy performPreflightSnapshotCheck](self, "performPreflightSnapshotCheck")))
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
  ssoToken = [(SUCorePolicy *)v218 ssoToken];
  ssoToken2 = [(SUCorePolicy *)self ssoToken];
  v163 = ssoToken;
  if (![v80 dataIsEqual:ssoToken to:?] || (v82 = -[SUCorePolicy cacheDeleteUrgency](v218, "cacheDeleteUrgency"), v82 != -[SUCorePolicy cacheDeleteUrgency](self, "cacheDeleteUrgency")))
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
  updateVolumePath = [(SUCorePolicy *)v218 updateVolumePath];
  updateVolumePath2 = [(SUCorePolicy *)self updateVolumePath];
  v161 = updateVolumePath;
  if (![v83 stringIsEqual:updateVolumePath to:?])
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
  personalizedManifestRootsPath = [(SUCorePolicy *)v218 personalizedManifestRootsPath];
  personalizedManifestRootsPath2 = [(SUCorePolicy *)self personalizedManifestRootsPath];
  v159 = personalizedManifestRootsPath;
  if (![v85 stringIsEqual:personalizedManifestRootsPath to:?])
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
  localAuthenticationContext = [(SUCorePolicy *)v218 localAuthenticationContext];
  localAuthenticationContext2 = [(SUCorePolicy *)self localAuthenticationContext];
  v157 = localAuthenticationContext;
  if (![v87 dataIsEqual:localAuthenticationContext to:?])
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
  localAuthenticationUserID = [(SUCorePolicy *)v218 localAuthenticationUserID];
  localAuthenticationUserID2 = [(SUCorePolicy *)self localAuthenticationUserID];
  v155 = localAuthenticationUserID;
  if (![v89 numberIsEqual:localAuthenticationUserID to:?])
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
  mdmBootstrapToken = [(SUCorePolicy *)v218 mdmBootstrapToken];
  mdmBootstrapToken2 = [(SUCorePolicy *)self mdmBootstrapToken];
  v153 = mdmBootstrapToken;
  if (![v91 stringIsEqual:mdmBootstrapToken to:?])
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
  downloadAuthorizationHeader = [(SUCorePolicy *)v218 downloadAuthorizationHeader];
  downloadAuthorizationHeader2 = [(SUCorePolicy *)self downloadAuthorizationHeader];
  v151 = downloadAuthorizationHeader;
  if (![v93 stringIsEqual:downloadAuthorizationHeader to:?])
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
  updateBrainLocationOverride = [(SUCorePolicy *)v218 updateBrainLocationOverride];
  updateBrainLocationOverride2 = [(SUCorePolicy *)self updateBrainLocationOverride];
  v149 = updateBrainLocationOverride;
  if (![v95 stringIsEqual:updateBrainLocationOverride to:?])
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
  assetAudienceUUID = [(SUCorePolicy *)v218 assetAudienceUUID];
  assetAudienceUUID2 = [(SUCorePolicy *)self assetAudienceUUID];
  v147 = assetAudienceUUID;
  if (![v97 stringIsEqual:assetAudienceUUID to:?])
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
  alternateAssetAudienceUUID = [(SUCorePolicy *)v218 alternateAssetAudienceUUID];
  alternateAssetAudienceUUID2 = [(SUCorePolicy *)self alternateAssetAudienceUUID];
  v145 = alternateAssetAudienceUUID;
  if (![v99 stringIsEqual:alternateAssetAudienceUUID to:?] || (v101 = -[SUCorePolicy disableAlternateUpdate](v218, "disableAlternateUpdate"), v101 != -[SUCorePolicy disableAlternateUpdate](self, "disableAlternateUpdate")) || (v102 = -[SUCorePolicy disableSplatCombo](v218, "disableSplatCombo"), v102 != -[SUCorePolicy disableSplatCombo](self, "disableSplatCombo")))
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
  personalizationServerURL = [(SUCorePolicy *)v218 personalizationServerURL];
  personalizationServerURL2 = [(SUCorePolicy *)self personalizationServerURL];
  v143 = personalizationServerURL;
  if (![v103 stringIsEqual:personalizationServerURL to:?])
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
  proxyHostName = [(SUCorePolicy *)v218 proxyHostName];
  proxyHostName2 = [(SUCorePolicy *)self proxyHostName];
  v141 = proxyHostName;
  if (![v105 stringIsEqual:proxyHostName to:?])
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
  proxyPortNumber = [(SUCorePolicy *)v218 proxyPortNumber];
  proxyPortNumber2 = [(SUCorePolicy *)self proxyPortNumber];
  v139 = proxyPortNumber;
  if (![v107 numberIsEqual:proxyPortNumber to:?] || (v109 = -[SUCorePolicy bridgeOSIgnoreMinimumVersionCheck](v218, "bridgeOSIgnoreMinimumVersionCheck"), v109 != -[SUCorePolicy bridgeOSIgnoreMinimumVersionCheck](self, "bridgeOSIgnoreMinimumVersionCheck")))
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
  bridgeOSDownloadDirectory = [(SUCorePolicy *)v218 bridgeOSDownloadDirectory];
  bridgeOSDownloadDirectory2 = [(SUCorePolicy *)self bridgeOSDownloadDirectory];
  v137 = bridgeOSDownloadDirectory;
  if (![v110 stringIsEqual:bridgeOSDownloadDirectory to:?] || (v112 = -[SUCorePolicy enableEmbeddedOSInstall](v218, "enableEmbeddedOSInstall"), v112 != -[SUCorePolicy enableEmbeddedOSInstall](self, "enableEmbeddedOSInstall")) || (v113 = -[SUCorePolicy enableBridgeOSInstall](v218, "enableBridgeOSInstall"), v113 != -[SUCorePolicy enableBridgeOSInstall](self, "enableBridgeOSInstall")) || (v114 = -[SUCorePolicy enableOSPersonalization](v218, "enableOSPersonalization"), v114 != -[SUCorePolicy enableOSPersonalization](self, "enableOSPersonalization")) || (v115 = -[SUCorePolicy userInitiated](v218, "userInitiated"), v115 != -[SUCorePolicy userInitiated](self, "userInitiated")) || (v116 = -[SUCorePolicy skipVolumeSealing](v218, "skipVolumeSealing"), v116 != -[SUCorePolicy skipVolumeSealing](self, "skipVolumeSealing")) || (v117 = -[SUCorePolicy qualityOfService](v218, "qualityOfService"), v117 != -[SUCorePolicy qualityOfService](self, "qualityOfService")))
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
  updateMetricEventFields = [(SUCorePolicy *)v218 updateMetricEventFields];
  updateMetricEventFields2 = [(SUCorePolicy *)self updateMetricEventFields];
  v135 = updateMetricEventFields;
  if (![v118 dictionaryIsEqual:updateMetricEventFields to:?])
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
  updateMetricContext = [(SUCorePolicy *)v218 updateMetricContext];
  updateMetricContext2 = [(SUCorePolicy *)self updateMetricContext];
  v133 = updateMetricContext;
  if (![v120 stringIsEqual:updateMetricContext to:?])
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
  defaultDescriptorValues = [(SUCorePolicy *)v218 defaultDescriptorValues];
  defaultDescriptorValues2 = [(SUCorePolicy *)self defaultDescriptorValues];
  v131 = defaultDescriptorValues;
  if (![v122 dictionaryIsEqual:defaultDescriptorValues to:?] || (v124 = -[SUCorePolicy enablePreSUStaging](v218, "enablePreSUStaging"), v124 != -[SUCorePolicy enablePreSUStaging](self, "enablePreSUStaging")) || (v125 = -[SUCorePolicy enablePreSUStagingForOptionalAssets](v218, "enablePreSUStagingForOptionalAssets"), v125 != -[SUCorePolicy enablePreSUStagingForOptionalAssets](self, "enablePreSUStagingForOptionalAssets")))
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
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v5 = v218;
  policyExtensions2 = [(SUCorePolicy *)v218 policyExtensions];
  v129 = policyExtensions;
  v58 = [v126 arrayIsEqual:policyExtensions to:policyExtensions2];
  v7 = policyExtensions2;
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
    v219 = equalCopy;
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
    equalCopy = v219;
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

  if (v232 == specifiedUsedPolicies2)
  {
  }

LABEL_137:
  return v58;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  softwareUpdateAssetType = [(SUCorePolicy *)self softwareUpdateAssetType];
  documentationAssetType = [(SUCorePolicy *)self documentationAssetType];
  specifiedUsedPolicies = [(SUCorePolicy *)self specifiedUsedPolicies];
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v10 = [v5 initWithSoftwareUpdateAssetType:softwareUpdateAssetType documentationAssetType:documentationAssetType usingPolicies:specifiedUsedPolicies usingExtensions:policyExtensions];

  softwareUpdateScanPolicy = [v10 softwareUpdateScanPolicy];
  specifiedFields = [softwareUpdateScanPolicy specifiedFields];

  documentationScanPolicy = [v10 documentationScanPolicy];
  specifiedFields2 = [documentationScanPolicy specifiedFields];

  documentationDownloadPolicy = [v10 documentationDownloadPolicy];
  specifiedFields3 = [documentationDownloadPolicy specifiedFields];

  loadBrainPolicy = [v10 loadBrainPolicy];
  specifiedFields4 = [loadBrainPolicy specifiedFields];

  downloadPreflightPolicy = [v10 downloadPreflightPolicy];
  specifiedFields5 = [downloadPreflightPolicy specifiedFields];

  softwareUpdateDownloadPolicy = [v10 softwareUpdateDownloadPolicy];
  specifiedFields6 = [softwareUpdateDownloadPolicy specifiedFields];

  [v10 setRestrictToFull:{-[SUCorePolicy restrictToFull](self, "restrictToFull")}];
  [v10 setAllowSameVersion:{-[SUCorePolicy allowSameVersion](self, "allowSameVersion")}];
  [v10 setBackground:{-[SUCorePolicy background](self, "background")}];
  [v10 setAllowsCellular:{-[SUCorePolicy allowsCellular](self, "allowsCellular")}];
  softwareUpdateScanPolicy2 = [v10 softwareUpdateScanPolicy];
  [softwareUpdateScanPolicy2 setSpecifiedFields:specifiedFields];

  documentationScanPolicy2 = [v10 documentationScanPolicy];
  [documentationScanPolicy2 setSpecifiedFields:specifiedFields2];

  documentationDownloadPolicy2 = [v10 documentationDownloadPolicy];
  [documentationDownloadPolicy2 setSpecifiedFields:specifiedFields3];

  loadBrainPolicy2 = [v10 loadBrainPolicy];
  [loadBrainPolicy2 setSpecifiedFields:specifiedFields4];

  downloadPreflightPolicy2 = [v10 downloadPreflightPolicy];
  [downloadPreflightPolicy2 setSpecifiedFields:specifiedFields5];

  softwareUpdateDownloadPolicy2 = [v10 softwareUpdateDownloadPolicy];
  [softwareUpdateDownloadPolicy2 setSpecifiedFields:specifiedFields6];

  softwareUpdateScanPolicy3 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  v30 = [softwareUpdateScanPolicy3 copyWithZone:zone];
  [v10 setSoftwareUpdateScanPolicy:v30];

  documentationScanPolicy3 = [(SUCorePolicy *)self documentationScanPolicy];
  v32 = [documentationScanPolicy3 copyWithZone:zone];
  [v10 setDocumentationScanPolicy:v32];

  documentationDownloadPolicy3 = [(SUCorePolicy *)self documentationDownloadPolicy];
  v34 = [documentationDownloadPolicy3 copyWithZone:zone];
  [v10 setDocumentationDownloadPolicy:v34];

  loadBrainPolicy3 = [(SUCorePolicy *)self loadBrainPolicy];
  v36 = [loadBrainPolicy3 copyWithZone:zone];
  [v10 setLoadBrainPolicy:v36];

  downloadPreflightPolicy3 = [(SUCorePolicy *)self downloadPreflightPolicy];
  v38 = [downloadPreflightPolicy3 copyWithZone:zone];
  [v10 setDownloadPreflightPolicy:v38];

  wakeupPreflightPolicy = [(SUCorePolicy *)self wakeupPreflightPolicy];
  v40 = [wakeupPreflightPolicy copyWithZone:zone];
  [v10 setWakeupPreflightPolicy:v40];

  prerequisiteCheckPreflightPolicy = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
  v42 = [prerequisiteCheckPreflightPolicy copyWithZone:zone];
  [v10 setPrerequisiteCheckPreflightPolicy:v42];

  personalizePreflightPolicy = [(SUCorePolicy *)self personalizePreflightPolicy];
  v44 = [personalizePreflightPolicy copyWithZone:zone];
  [v10 setPersonalizePreflightPolicy:v44];

  fdrRecoveryPreflightPolicy = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
  v46 = [fdrRecoveryPreflightPolicy copyWithZone:zone];
  [v10 setFdrRecoveryPreflightPolicy:v46];

  softwareUpdateDownloadPolicy3 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  v48 = [softwareUpdateDownloadPolicy3 copyWithZone:zone];
  [v10 setSoftwareUpdateDownloadPolicy:v48];

  preparePolicy = [(SUCorePolicy *)self preparePolicy];
  v50 = [preparePolicy copyWithZone:zone];
  [v10 setPreparePolicy:v50];

  suspendPolicy = [(SUCorePolicy *)self suspendPolicy];
  v52 = [suspendPolicy copyWithZone:zone];
  [v10 setSuspendPolicy:v52];

  resumePolicy = [(SUCorePolicy *)self resumePolicy];
  v54 = [resumePolicy copyWithZone:zone];
  [v10 setResumePolicy:v54];

  applyPolicy = [(SUCorePolicy *)self applyPolicy];
  v56 = [applyPolicy copyWithZone:zone];
  [v10 setApplyPolicy:v56];

  rollbackPolicy = [(SUCorePolicy *)self rollbackPolicy];
  v58 = [rollbackPolicy copyWithZone:zone];
  [v10 setRollbackPolicy:v58];

  prerequisiteBuildVersion = [(SUCorePolicy *)self prerequisiteBuildVersion];
  v60 = [prerequisiteBuildVersion copyWithZone:zone];
  [v10 setPrerequisiteBuildVersion:v60];

  prerequisiteProductVersion = [(SUCorePolicy *)self prerequisiteProductVersion];
  v62 = [prerequisiteProductVersion copyWithZone:zone];
  [v10 setPrerequisiteProductVersion:v62];

  prerequisiteRestoreVersion = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  v64 = [prerequisiteRestoreVersion copyWithZone:zone];
  [v10 setPrerequisiteRestoreVersion:v64];

  targetRestoreVersion = [(SUCorePolicy *)self targetRestoreVersion];
  v66 = [targetRestoreVersion copyWithZone:zone];
  [v10 setTargetRestoreVersion:v66];

  installedSFRVersion = [(SUCorePolicy *)self installedSFRVersion];
  v68 = [installedSFRVersion copyWithZone:zone];
  [v10 setInstalledSFRVersion:v68];

  targetVolumeUUID = [(SUCorePolicy *)self targetVolumeUUID];
  v70 = [targetVolumeUUID copyWithZone:zone];
  [v10 setTargetVolumeUUID:v70];

  deviceClass = [(SUCorePolicy *)self deviceClass];
  v72 = [deviceClass copyWithZone:zone];
  [v10 setDeviceClass:v72];

  hwModelStr = [(SUCorePolicy *)self hwModelStr];
  v74 = [hwModelStr copyWithZone:zone];
  [v10 setHwModelStr:v74];

  productType = [(SUCorePolicy *)self productType];
  v76 = [productType copyWithZone:zone];
  [v10 setProductType:v76];

  releaseType = [(SUCorePolicy *)self releaseType];
  v78 = [releaseType copyWithZone:zone];
  [v10 setReleaseType:v78];

  [v10 setIsInternal:{-[SUCorePolicy isInternal](self, "isInternal")}];
  [v10 setCheckAvailableSpace:{-[SUCorePolicy checkAvailableSpace](self, "checkAvailableSpace")}];
  [v10 setUseReserveSpace:{-[SUCorePolicy useReserveSpace](self, "useReserveSpace")}];
  [v10 setCacheDeleteUrgency:{-[SUCorePolicy cacheDeleteUrgency](self, "cacheDeleteUrgency")}];
  userAgentString = [(SUCorePolicy *)self userAgentString];
  v80 = [userAgentString copyWithZone:zone];
  [v10 setUserAgentString:v80];

  [v10 setPerformPreflightEncryptedCheck:{-[SUCorePolicy performPreflightEncryptedCheck](self, "performPreflightEncryptedCheck")}];
  [v10 setPerformPreflightSnapshotCheck:{-[SUCorePolicy performPreflightSnapshotCheck](self, "performPreflightSnapshotCheck")}];
  updateVolumePath = [(SUCorePolicy *)self updateVolumePath];
  v82 = [updateVolumePath copyWithZone:zone];
  [v10 setUpdateVolumePath:v82];

  ssoToken = [(SUCorePolicy *)self ssoToken];
  v84 = [ssoToken copyWithZone:zone];
  [v10 setSsoToken:v84];

  personalizedManifestRootsPath = [(SUCorePolicy *)self personalizedManifestRootsPath];
  v86 = [personalizedManifestRootsPath copyWithZone:zone];
  [v10 setPersonalizedManifestRootsPath:v86];

  localAuthenticationContext = [(SUCorePolicy *)self localAuthenticationContext];
  v88 = [localAuthenticationContext copyWithZone:zone];
  [v10 setLocalAuthenticationContext:v88];

  localAuthenticationUserID = [(SUCorePolicy *)self localAuthenticationUserID];
  v90 = [localAuthenticationUserID copyWithZone:zone];
  [v10 setLocalAuthenticationUserID:v90];

  mdmBootstrapToken = [(SUCorePolicy *)self mdmBootstrapToken];
  v92 = [mdmBootstrapToken copyWithZone:zone];
  [v10 setMdmBootstrapToken:v92];

  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];
  v94 = [downloadAuthorizationHeader copyWithZone:zone];
  [v10 setDownloadAuthorizationHeader:v94];

  updateBrainLocationOverride = [(SUCorePolicy *)self updateBrainLocationOverride];
  v96 = [updateBrainLocationOverride copyWithZone:zone];
  [v10 setUpdateBrainLocationOverride:v96];

  assetAudienceUUID = [(SUCorePolicy *)self assetAudienceUUID];
  v98 = [assetAudienceUUID copyWithZone:zone];
  [v10 setAssetAudienceUUID:v98];

  alternateAssetAudienceUUID = [(SUCorePolicy *)self alternateAssetAudienceUUID];
  v100 = [alternateAssetAudienceUUID copyWithZone:zone];
  [v10 setAlternateAssetAudienceUUID:v100];

  [v10 setDisableAlternateUpdate:{-[SUCorePolicy disableAlternateUpdate](self, "disableAlternateUpdate")}];
  [v10 setDisableSplatCombo:{-[SUCorePolicy disableSplatCombo](self, "disableSplatCombo")}];
  personalizationServerURL = [(SUCorePolicy *)self personalizationServerURL];
  v102 = [personalizationServerURL copyWithZone:zone];
  [v10 setPersonalizationServerURL:v102];

  proxyHostName = [(SUCorePolicy *)self proxyHostName];
  v104 = [proxyHostName copyWithZone:zone];
  [v10 setProxyHostName:v104];

  proxyPortNumber = [(SUCorePolicy *)self proxyPortNumber];
  v106 = [proxyPortNumber copyWithZone:zone];
  [v10 setProxyPortNumber:v106];

  [v10 setBridgeOSIgnoreMinimumVersionCheck:{-[SUCorePolicy bridgeOSIgnoreMinimumVersionCheck](self, "bridgeOSIgnoreMinimumVersionCheck")}];
  bridgeOSDownloadDirectory = [(SUCorePolicy *)self bridgeOSDownloadDirectory];
  v108 = [bridgeOSDownloadDirectory copyWithZone:zone];
  [v10 setBridgeOSDownloadDirectory:v108];

  [v10 setEnableEmbeddedOSInstall:{-[SUCorePolicy enableEmbeddedOSInstall](self, "enableEmbeddedOSInstall")}];
  [v10 setEnableBridgeOSInstall:{-[SUCorePolicy enableBridgeOSInstall](self, "enableBridgeOSInstall")}];
  [v10 setEnableOSPersonalization:{-[SUCorePolicy enableOSPersonalization](self, "enableOSPersonalization")}];
  [v10 setUserInitiated:{-[SUCorePolicy userInitiated](self, "userInitiated")}];
  [v10 setSkipVolumeSealing:{-[SUCorePolicy skipVolumeSealing](self, "skipVolumeSealing")}];
  [v10 setQualityOfService:{-[SUCorePolicy qualityOfService](self, "qualityOfService")}];
  updateMetricEventFields = [(SUCorePolicy *)self updateMetricEventFields];
  v110 = [updateMetricEventFields copyWithZone:zone];
  [v10 setUpdateMetricEventFields:v110];

  updateMetricContext = [(SUCorePolicy *)self updateMetricContext];
  v112 = [updateMetricContext copyWithZone:zone];
  [v10 setUpdateMetricContext:v112];

  defaultDescriptorValues = [(SUCorePolicy *)self defaultDescriptorValues];
  v114 = [defaultDescriptorValues copyWithZone:zone];
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
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v5 = [policyExtensions countByEnumeratingWithState:&v109 objects:v113 count:16];
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
          objc_enumerationMutation(policyExtensions);
        }

        v9 = *(*(&v109 + 1) + 8 * i);
        extensionName = [v9 extensionName];
        [v3 appendFormat:@"\n\t%@:%@", extensionName, v9];
      }

      v6 = [policyExtensions countByEnumeratingWithState:&v109 objects:v113 count:16];
    }

    while (v6);
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  softwareUpdateScanPolicy = [(SUCorePolicy *)self softwareUpdateScanPolicy];
  [v11 appendFormat:@"    %@\n", softwareUpdateScanPolicy];

  documentationScanPolicy = [(SUCorePolicy *)self documentationScanPolicy];
  [v11 appendFormat:@"    %@\n", documentationScanPolicy];

  documentationDownloadPolicy = [(SUCorePolicy *)self documentationDownloadPolicy];
  [v11 appendFormat:@"    %@\n", documentationDownloadPolicy];

  loadBrainPolicy = [(SUCorePolicy *)self loadBrainPolicy];
  [v11 appendFormat:@"    %@\n", loadBrainPolicy];

  downloadPreflightPolicy = [(SUCorePolicy *)self downloadPreflightPolicy];
  [v11 appendFormat:@"    %@\n", downloadPreflightPolicy];

  wakeupPreflightPolicy = [(SUCorePolicy *)self wakeupPreflightPolicy];
  [v11 appendFormat:@"    %@\n", wakeupPreflightPolicy];

  prerequisiteCheckPreflightPolicy = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
  [v11 appendFormat:@"    %@\n", prerequisiteCheckPreflightPolicy];

  personalizePreflightPolicy = [(SUCorePolicy *)self personalizePreflightPolicy];
  [v11 appendFormat:@"    %@\n", personalizePreflightPolicy];

  fdrRecoveryPreflightPolicy = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
  [v11 appendFormat:@"    %@\n", fdrRecoveryPreflightPolicy];

  softwareUpdateDownloadPolicy = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
  [v11 appendFormat:@"    %@\n", softwareUpdateDownloadPolicy];

  preparePolicy = [(SUCorePolicy *)self preparePolicy];
  [v11 appendFormat:@"    %@\n", preparePolicy];

  suspendPolicy = [(SUCorePolicy *)self suspendPolicy];
  [v11 appendFormat:@"    %@\n", suspendPolicy];

  resumePolicy = [(SUCorePolicy *)self resumePolicy];
  [v11 appendFormat:@"    %@\n", resumePolicy];

  applyPolicy = [(SUCorePolicy *)self applyPolicy];
  [v11 appendFormat:@"    %@\n", applyPolicy];

  rollbackPolicy = [(SUCorePolicy *)self rollbackPolicy];
  [v11 appendFormat:@"    %@\n", rollbackPolicy];

  v80 = objc_alloc(MEMORY[0x277CCACA8]);
  specifiedUsedPolicies = [(SUCorePolicy *)self specifiedUsedPolicies];
  softwareUpdateAssetType = [(SUCorePolicy *)self softwareUpdateAssetType];
  documentationAssetType = [(SUCorePolicy *)self documentationAssetType];
  prerequisiteBuildVersion = [(SUCorePolicy *)self prerequisiteBuildVersion];
  prerequisiteProductVersion = [(SUCorePolicy *)self prerequisiteProductVersion];
  prerequisiteRestoreVersion = [(SUCorePolicy *)self prerequisiteRestoreVersion];
  targetRestoreVersion = [(SUCorePolicy *)self targetRestoreVersion];
  installedSFRVersion = [(SUCorePolicy *)self installedSFRVersion];
  deviceClass = [(SUCorePolicy *)self deviceClass];
  hwModelStr = [(SUCorePolicy *)self hwModelStr];
  productType = [(SUCorePolicy *)self productType];
  releaseType = [(SUCorePolicy *)self releaseType];
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
  userAgentString = [(SUCorePolicy *)self userAgentString];
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
  targetVolumeUUID = [(SUCorePolicy *)self targetVolumeUUID];
  updateVolumePath = [(SUCorePolicy *)self updateVolumePath];
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
  updateBrainLocationOverride = [(SUCorePolicy *)self updateBrainLocationOverride];
  [(SUCorePolicy *)self ssoToken];
  v76 = mobileAssetPurposeOverride2 = @"none";
  if (v76)
  {
    v40 = @"present";
  }

  else
  {
    v40 = @"none";
  }

  v63 = v40;
  personalizedManifestRootsPath = [(SUCorePolicy *)self personalizedManifestRootsPath];
  personalizationServerURL = [(SUCorePolicy *)self personalizationServerURL];
  proxyHostName = [(SUCorePolicy *)self proxyHostName];
  proxyPortNumber = [(SUCorePolicy *)self proxyPortNumber];
  localAuthenticationContext = [(SUCorePolicy *)self localAuthenticationContext];
  if (localAuthenticationContext)
  {
    v41 = @"present";
  }

  else
  {
    v41 = @"none";
  }

  v62 = v41;
  downloadAuthorizationHeader = [(SUCorePolicy *)self downloadAuthorizationHeader];
  if (downloadAuthorizationHeader)
  {
    v42 = @"present";
  }

  else
  {
    v42 = @"none";
  }

  v61 = v42;
  localAuthenticationUserID = [(SUCorePolicy *)self localAuthenticationUserID];
  mdmBootstrapToken = [(SUCorePolicy *)self mdmBootstrapToken];
  if (mdmBootstrapToken)
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
  bridgeOSDownloadDirectory = [(SUCorePolicy *)self bridgeOSDownloadDirectory];
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
  updateMetricEventFields = [(SUCorePolicy *)self updateMetricEventFields];
  updateMetricContext = [(SUCorePolicy *)self updateMetricContext];
  defaultDescriptorValues = [(SUCorePolicy *)self defaultDescriptorValues];
  assetAudienceUUID = [(SUCorePolicy *)self assetAudienceUUID];
  alternateAssetAudienceUUID = [(SUCorePolicy *)self alternateAssetAudienceUUID];
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

  mobileAssetPurposeOverride = [(SUCorePolicy *)self mobileAssetPurposeOverride];
  v81 = prerequisiteRestoreVersion;
  if (mobileAssetPurposeOverride)
  {
    mobileAssetPurposeOverride2 = [(SUCorePolicy *)self mobileAssetPurposeOverride];
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

  v53 = objc_msgSend(v80, "initWithFormat:", @"\n[>>>\n    SubPolicies(specifiedUsedPolicies:0x%llX)\n%@    AssetTypes(softwareUpdateAssetType:%@|documentationAssetType:%@)\n    Versions(prerequisiteBuildVersion:%@|prerequisiteProductVersion:%@|prerequisiteRestoreVersion:%@|targetRestoreVersion:%@|installedSFRVersion:%@)\n    Device(deviceClass:%@|hwModelStr:%@|productType:%@|releaseType:%@|isInternal:%@)\n    Config(restrictToFull:%@|allowSameVersion:%@|background:%@|allowsCellular:%@|checkAvailableSpace:%@|useReserveSpace:%@|cacheDeleteUrgency:%@|userAgentString:%@|userInitiated:%@|skipVolumeSealing:%@|qualityOfService:%@)\n    Target(targetVolumeUUID:%@|updateVolumePath:%@)\n    Preflight(performPreflightEncryptedCheck:%@|performPreflightSnapshotCheck:%@|updateBrainLocationOverride:%@)\n    Personalization(SSOToken:%@|personalizedManifestRootsPath:%@|personalizationServerURL:%@|proxyHostName:%@|proxyPortNumber:%@)\n    Authentication(localAuthenticationContext:%@|downloadAuthorizationHeader:%@|localAuthenticationUserID:%@|mdmBootstrapToken:%@)\n    BridgeOS(bridgeOSIgnoreMinimumVersionCheck:%@|bridgeOSDownloadDirectory:%@|enableEmbeddedOSInstall:%@|enableBridgeOSInstall:%@|enableOSPersonalization:%@)\n    Metrics(updateMetricEventFields:%@|updateMetricContext:%@\n    Defaults(defaultDescriptorValues:%@|assetAudienceUUID:%@|alternateAssetAudienceUUID:%@|disableAlternateUpdate:%@|disableSplombo:%@|mobileAssetPurposeOverride:%@)\n    PSUS(enable:%@|enableForOptionalAssets:%@)\n    Extensions(%@)\n<<<]"), specifiedUsedPolicies, v11, softwareUpdateAssetType, documentationAssetType, prerequisiteBuildVersion, prerequisiteProductVersion, v81, targetRestoreVersion, installedSFRVersion, deviceClass, hwModelStr, productType, releaseType, v78, v77, v75, v74, v73, v72, v71, v102, userAgentString, v68, v67, v100, targetVolumeUUID, updateVolumePath, v65, v64, updateBrainLocationOverride, v63, personalizedManifestRootsPath, personalizationServerURL, proxyHostName, proxyPortNumber, v62, v61, localAuthenticationUserID, v60, v59, bridgeOSDownloadDirectory, v58, v57, v56, updateMetricEventFields, updateMetricContext, defaultDescriptorValues, assetAudienceUUID, alternateAssetAudienceUUID, v48, v49, mobileAssetPurposeOverride2, v51, v52, v3;
  if (mobileAssetPurposeOverride)
  {
  }

  v54 = *MEMORY[0x277D85DE8];

  return v53;
}

- (id)summary
{
  policyExtensions = [(SUCorePolicy *)self policyExtensions];
  v4 = [policyExtensions count];

  if (v4)
  {
    policyExtensions2 = [(SUCorePolicy *)self policyExtensions];
    v6 = [&stru_28469CC48 stringByAppendingFormat:@"|extensions(%lu)", objc_msgSend(policyExtensions2, "count")];
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

  softwareUpdateScanPolicy = [(SUCorePolicy *)self softwareUpdateScanPolicy];

  if (softwareUpdateScanPolicy)
  {
    softwareUpdateScanPolicy2 = [(SUCorePolicy *)self softwareUpdateScanPolicy];
    summary = [softwareUpdateScanPolicy2 summary];
    v11 = [(__CFString *)v6 stringByAppendingFormat:@"|UpdateScan=%@", summary];

    v6 = v11;
  }

  documentationScanPolicy = [(SUCorePolicy *)self documentationScanPolicy];

  if (documentationScanPolicy)
  {
    documentationScanPolicy2 = [(SUCorePolicy *)self documentationScanPolicy];
    summary2 = [documentationScanPolicy2 summary];
    v15 = [(__CFString *)v6 stringByAppendingFormat:@"|DocScan=%@", summary2];

    v6 = v15;
  }

  documentationDownloadPolicy = [(SUCorePolicy *)self documentationDownloadPolicy];

  if (documentationDownloadPolicy)
  {
    documentationDownloadPolicy2 = [(SUCorePolicy *)self documentationDownloadPolicy];
    summary3 = [documentationDownloadPolicy2 summary];
    v19 = [(__CFString *)v6 stringByAppendingFormat:@"|DocDownload=%@", summary3];

    v6 = v19;
  }

  loadBrainPolicy = [(SUCorePolicy *)self loadBrainPolicy];

  if (loadBrainPolicy)
  {
    loadBrainPolicy2 = [(SUCorePolicy *)self loadBrainPolicy];
    summary4 = [loadBrainPolicy2 summary];
    v23 = [(__CFString *)v6 stringByAppendingFormat:@"|LoadBrainUpdate=%@", summary4];

    v6 = v23;
  }

  downloadPreflightPolicy = [(SUCorePolicy *)self downloadPreflightPolicy];

  if (downloadPreflightPolicy)
  {
    downloadPreflightPolicy2 = [(SUCorePolicy *)self downloadPreflightPolicy];
    summary5 = [downloadPreflightPolicy2 summary];
    v27 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightDownload=%@", summary5];

    v6 = v27;
  }

  wakeupPreflightPolicy = [(SUCorePolicy *)self wakeupPreflightPolicy];

  if (wakeupPreflightPolicy)
  {
    wakeupPreflightPolicy2 = [(SUCorePolicy *)self wakeupPreflightPolicy];
    summary6 = [wakeupPreflightPolicy2 summary];
    v31 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightWakeup=%@", summary6];

    v6 = v31;
  }

  prerequisiteCheckPreflightPolicy = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];

  if (prerequisiteCheckPreflightPolicy)
  {
    prerequisiteCheckPreflightPolicy2 = [(SUCorePolicy *)self prerequisiteCheckPreflightPolicy];
    summary7 = [prerequisiteCheckPreflightPolicy2 summary];
    v35 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightPrerequisiteCheck=%@", summary7];

    v6 = v35;
  }

  personalizePreflightPolicy = [(SUCorePolicy *)self personalizePreflightPolicy];

  if (personalizePreflightPolicy)
  {
    personalizePreflightPolicy2 = [(SUCorePolicy *)self personalizePreflightPolicy];
    summary8 = [personalizePreflightPolicy2 summary];
    v39 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightPersonalize=%@", summary8];

    v6 = v39;
  }

  fdrRecoveryPreflightPolicy = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];

  if (fdrRecoveryPreflightPolicy)
  {
    fdrRecoveryPreflightPolicy2 = [(SUCorePolicy *)self fdrRecoveryPreflightPolicy];
    summary9 = [fdrRecoveryPreflightPolicy2 summary];
    v43 = [(__CFString *)v6 stringByAppendingFormat:@"|PreflightFDRRecovery=%@", summary9];

    v6 = v43;
  }

  softwareUpdateDownloadPolicy = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];

  if (softwareUpdateDownloadPolicy)
  {
    softwareUpdateDownloadPolicy2 = [(SUCorePolicy *)self softwareUpdateDownloadPolicy];
    summary10 = [softwareUpdateDownloadPolicy2 summary];
    v47 = [(__CFString *)v6 stringByAppendingFormat:@"|DownloadSU=%@", summary10];

    v6 = v47;
  }

  preparePolicy = [(SUCorePolicy *)self preparePolicy];

  if (preparePolicy)
  {
    preparePolicy2 = [(SUCorePolicy *)self preparePolicy];
    summary11 = [preparePolicy2 summary];
    v51 = [(__CFString *)v6 stringByAppendingFormat:@"|PrepareUpdate=%@", summary11];

    v6 = v51;
  }

  suspendPolicy = [(SUCorePolicy *)self suspendPolicy];

  if (suspendPolicy)
  {
    suspendPolicy2 = [(SUCorePolicy *)self suspendPolicy];
    summary12 = [suspendPolicy2 summary];
    v55 = [(__CFString *)v6 stringByAppendingFormat:@"|SuspendUpdate=%@", summary12];

    v6 = v55;
  }

  resumePolicy = [(SUCorePolicy *)self resumePolicy];

  if (resumePolicy)
  {
    resumePolicy2 = [(SUCorePolicy *)self resumePolicy];
    summary13 = [resumePolicy2 summary];
    v59 = [(__CFString *)v6 stringByAppendingFormat:@"|ResumeUpdate=%@", summary13];

    v6 = v59;
  }

  applyPolicy = [(SUCorePolicy *)self applyPolicy];

  if (applyPolicy)
  {
    applyPolicy2 = [(SUCorePolicy *)self applyPolicy];
    summary14 = [applyPolicy2 summary];
    v63 = [(__CFString *)v6 stringByAppendingFormat:@"|ApplyUpdate=%@", summary14];

    v6 = v63;
  }

  rollbackPolicy = [(SUCorePolicy *)self rollbackPolicy];

  if (rollbackPolicy)
  {
    rollbackPolicy2 = [(SUCorePolicy *)self rollbackPolicy];
    summary15 = [rollbackPolicy2 summary];
    v67 = [(__CFString *)v6 stringByAppendingFormat:@"|rollbackUpdate=%@", summary15];

    v6 = v67;
  }

  targetVolumeUUID = [(SUCorePolicy *)self targetVolumeUUID];

  if (targetVolumeUUID)
  {
    targetVolumeUUID2 = [(SUCorePolicy *)self targetVolumeUUID];
    v70 = [(__CFString *)v6 stringByAppendingFormat:@"|targetVolumeUUID=%@", targetVolumeUUID2];

    v6 = v70;
  }

  deviceClass = [(SUCorePolicy *)self deviceClass];

  if (deviceClass)
  {
    deviceClass2 = [(SUCorePolicy *)self deviceClass];
    v73 = [(__CFString *)v6 stringByAppendingFormat:@"|deviceClass=%@", deviceClass2];

    v6 = v73;
  }

  hwModelStr = [(SUCorePolicy *)self hwModelStr];

  if (hwModelStr)
  {
    hwModelStr2 = [(SUCorePolicy *)self hwModelStr];
    v76 = [(__CFString *)v6 stringByAppendingFormat:@"|hwModelStr=%@", hwModelStr2];

    v6 = v76;
  }

  productType = [(SUCorePolicy *)self productType];

  if (productType)
  {
    productType2 = [(SUCorePolicy *)self productType];
    v79 = [(__CFString *)v6 stringByAppendingFormat:@"|productType=%@", productType2];

    v6 = v79;
  }

  releaseType = [(SUCorePolicy *)self releaseType];

  if (releaseType)
  {
    releaseType2 = [(SUCorePolicy *)self releaseType];
    v82 = [(__CFString *)v6 stringByAppendingFormat:@"|releaseType=%@", releaseType2];

    v6 = releaseType2;
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

  userAgentString = [(SUCorePolicy *)self userAgentString];

  if (userAgentString)
  {
    userAgentString2 = [(SUCorePolicy *)self userAgentString];
    v88 = [v82 stringByAppendingFormat:@"|userAgentString=%@", userAgentString2];

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

  updateVolumePath = [(SUCorePolicy *)self updateVolumePath];

  if (updateVolumePath)
  {
    updateVolumePath2 = [(SUCorePolicy *)self updateVolumePath];
    v93 = [v82 stringByAppendingFormat:@"|updateVolumePath=%@", updateVolumePath2];

    v82 = v93;
  }

  ssoToken = [(SUCorePolicy *)self ssoToken];
  if (ssoToken)
  {
    v95 = @"|withSSO";
  }

  else
  {
    v95 = @"|noSSO";
  }

  v96 = [v82 stringByAppendingString:v95];

  personalizationServerURL = [(SUCorePolicy *)self personalizationServerURL];

  if (personalizationServerURL)
  {
    personalizationServerURL2 = [(SUCorePolicy *)self personalizationServerURL];
    v99 = [v96 stringByAppendingFormat:@"|personalizationServerURL=%@", personalizationServerURL2];

    v96 = v99;
  }

  proxyHostName = [(SUCorePolicy *)self proxyHostName];

  if (proxyHostName)
  {
    proxyHostName2 = [(SUCorePolicy *)self proxyHostName];
    v101 = [v96 stringByAppendingFormat:@"|proxyHostName=%@", proxyHostName2];

    v96 = v101;
  }

  proxyPortNumber = [(SUCorePolicy *)self proxyPortNumber];

  if (proxyPortNumber)
  {
    proxyPortNumber2 = [(SUCorePolicy *)self proxyPortNumber];
    v104 = [v96 stringByAppendingFormat:@"|proxyPortNumber=%@", proxyPortNumber2];

    v96 = v104;
  }

  updateMetricEventFields = [(SUCorePolicy *)self updateMetricEventFields];
  if (updateMetricEventFields)
  {
    v107 = @"|withUpdateMetricEventFields";
  }

  else
  {
    v107 = @"|noUpdateMetricEventFields";
  }

  v108 = [v96 stringByAppendingString:v107];

  updateMetricContext = [(SUCorePolicy *)self updateMetricContext];

  if (updateMetricContext)
  {
    updateMetricContext2 = [(SUCorePolicy *)self updateMetricContext];
    v110 = [v108 stringByAppendingFormat:@"|updateMetricContext=%@", updateMetricContext2];

    v108 = v110;
  }

  assetAudienceUUID = [(SUCorePolicy *)self assetAudienceUUID];

  if (assetAudienceUUID)
  {
    assetAudienceUUID2 = [(SUCorePolicy *)self assetAudienceUUID];
    v113 = [v108 stringByAppendingFormat:@"|assetAudienceUUID=%@", assetAudienceUUID2];

    v108 = v113;
  }

  alternateAssetAudienceUUID = [(SUCorePolicy *)self alternateAssetAudienceUUID];

  if (alternateAssetAudienceUUID)
  {
    alternateAssetAudienceUUID2 = [(SUCorePolicy *)self alternateAssetAudienceUUID];
    v116 = [v108 stringByAppendingFormat:@"|alternateAssetAudienceUUID=%@", alternateAssetAudienceUUID2];

    v108 = v116;
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
  softwareUpdateAssetType = [(SUCorePolicy *)self softwareUpdateAssetType];
  documentationAssetType = [(SUCorePolicy *)self documentationAssetType];
  v6 = [v3 stringWithFormat:@"|su=%@|doc=%@|", softwareUpdateAssetType, documentationAssetType];

  return v6;
}

- (id)stringForQoS:(int)s
{
  if ((s - 1) > 4)
  {
    return @"MSUQualityOfServiceUnspecified";
  }

  else
  {
    return off_27892E668[s - 1];
  }
}

+ (id)_cleanProductVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy length] >= 4 && objc_msgSend(versionCopy, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [versionCopy stringByReplacingCharactersInRange:0 withString:{4, &stru_28469CC48}];

    versionCopy = v4;
  }

  return versionCopy;
}

@end