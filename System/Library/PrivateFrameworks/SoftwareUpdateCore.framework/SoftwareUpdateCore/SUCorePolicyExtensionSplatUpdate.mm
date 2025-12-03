@interface SUCorePolicyExtensionSplatUpdate
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyExtensionSplatUpdate)init;
- (SUCorePolicyExtensionSplatUpdate)initWithCoder:(id)coder;
- (id)_stringRemovingParenthesis:(id)parenthesis;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)filterSoftwareUpdateAssetArray:(id)array;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)extendMASoftwareUpdateCatalogDownloadOptions:(id)options;
@end

@implementation SUCorePolicyExtensionSplatUpdate

- (SUCorePolicyExtensionSplatUpdate)init
{
  v37.receiver = self;
  v37.super_class = SUCorePolicyExtensionSplatUpdate;
  v2 = [(SUCorePolicyExtension *)&v37 init];
  if (v2)
  {
    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1RestoreVersion = [mEMORY[0x277D64418] splatCryptex1RestoreVersion];
    installedSplatRestoreVersion = v2->_installedSplatRestoreVersion;
    v2->_installedSplatRestoreVersion = splatCryptex1RestoreVersion;

    mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ProductVersion = [mEMORY[0x277D64418]2 splatCryptex1ProductVersion];
    installedSplatProductVersion = v2->_installedSplatProductVersion;
    v2->_installedSplatProductVersion = splatCryptex1ProductVersion;

    mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ProductVersionExtra = [mEMORY[0x277D64418]3 splatCryptex1ProductVersionExtra];
    installedSplatProductVersionExtra = v2->_installedSplatProductVersionExtra;
    v2->_installedSplatProductVersionExtra = splatCryptex1ProductVersionExtra;

    mEMORY[0x277D64418]4 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1BuildVersion = [mEMORY[0x277D64418]4 splatCryptex1BuildVersion];
    installedSplatBuildVersion = v2->_installedSplatBuildVersion;
    v2->_installedSplatBuildVersion = splatCryptex1BuildVersion;

    mEMORY[0x277D64418]5 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ReleaseType = [mEMORY[0x277D64418]5 splatCryptex1ReleaseType];
    installedSplatReleaseType = v2->_installedSplatReleaseType;
    v2->_installedSplatReleaseType = splatCryptex1ReleaseType;

    mEMORY[0x277D64418]6 = [MEMORY[0x277D64418] sharedDevice];
    releaseType = [mEMORY[0x277D64418]6 releaseType];
    if (releaseType)
    {
      v20 = v2->_installedSplatReleaseType;

      if (v20)
      {
LABEL_6:
        mEMORY[0x277D64418]7 = [MEMORY[0x277D64418] sharedDevice];
        restoreVersion = [mEMORY[0x277D64418]7 restoreVersion];
        installedBaseOSRestoreVersion = v2->_installedBaseOSRestoreVersion;
        v2->_installedBaseOSRestoreVersion = restoreVersion;

        mEMORY[0x277D64418]8 = [MEMORY[0x277D64418] sharedDevice];
        productVersion = [mEMORY[0x277D64418]8 productVersion];
        installedBaseOSProductVersion = v2->_installedBaseOSProductVersion;
        v2->_installedBaseOSProductVersion = productVersion;

        mEMORY[0x277D64418]9 = [MEMORY[0x277D64418] sharedDevice];
        buildVersion = [mEMORY[0x277D64418]9 buildVersion];
        installedBaseOSBuildVersion = v2->_installedBaseOSBuildVersion;
        v2->_installedBaseOSBuildVersion = buildVersion;

        mEMORY[0x277D64418]10 = [MEMORY[0x277D64418] sharedDevice];
        releaseType2 = [mEMORY[0x277D64418]10 releaseType];
        installedBaseOSReleaseType = v2->_installedBaseOSReleaseType;
        v2->_installedBaseOSReleaseType = releaseType2;

        requestedSplatRestoreVersion = v2->_requestedSplatRestoreVersion;
        v2->_requestedSplatRestoreVersion = 0;

        v2->_allowSameRestoreVersion = 0;
        return v2;
      }

      mEMORY[0x277D64418]6 = [MEMORY[0x277D64418] sharedDevice];
      releaseType3 = [mEMORY[0x277D64418]6 releaseType];
      v22 = v2->_installedSplatReleaseType;
      v2->_installedSplatReleaseType = releaseType3;
    }

    goto LABEL_6;
  }

  return v2;
}

- (id)_stringRemovingParenthesis:(id)parenthesis
{
  parenthesisCopy = parenthesis;
  v4 = parenthesisCopy;
  if (parenthesisCopy)
  {
    v5 = objc_msgSend(parenthesisCopy, "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_28469CC48;
    v6 = [v5 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_28469CC48);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)filterSoftwareUpdateAssetArray:(id)array
{
  v122 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v104 objects:v121 count:16];
  v91 = v5;
  if (!v6)
  {
    goto LABEL_46;
  }

  v7 = v6;
  v8 = 0x277D28000uLL;
  v97 = *v105;
  selfCopy = self;
  do
  {
    v9 = 0;
    v95 = v7;
    do
    {
      if (*v105 != v97)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v104 + 1) + 8 * v9);
      v11 = *(v8 + 2496);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        attributes = [v10 attributes];
        oslog4 = [attributes safeStringForKey:@"ReleaseType"];

        v14 = MEMORY[0x277D643F8];
        mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
        releaseType = [mEMORY[0x277D64418] releaseType];
        LOBYTE(v14) = [v14 stringIsEqual:oslog4 to:releaseType];

        if (v14)
        {
          selfCopy2 = self;
          v18 = v5;
          attributes2 = [v10 attributes];
          v20 = [attributes2 safeObjectForKey:@"Revoked" ofClass:objc_opt_class()];

          v94 = v20;
          bOOLValue = [v20 BOOLValue];
          attributes3 = [v10 attributes];
          v23 = [attributes3 safeStringForKey:@"RestoreVersion"];

          v24 = objc_alloc(MEMORY[0x277D64490]);
          v25 = selfCopy2;
          installedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)selfCopy2 installedSplatRestoreVersion];
          v27 = [v24 initWithRestoreVersion:installedSplatRestoreVersion];

          v28 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v23];
          v93 = v27;
          v96 = v28;
          if ([v27 isComparable:v28])
          {
            v29 = [v27 compare:v28];
            v30 = v29;
            if (bOOLValue)
            {
              v5 = v18;
              if (v29)
              {
                mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
                oslog = [mEMORY[0x277D64460] oslog];

                oslog3 = v94;
                if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  selfCopy7 = v23;
                  v111 = 2114;
                  v112 = oslog4;
                  v113 = 2114;
                  v114 = @"NO";
                  v34 = oslog;
                  goto LABEL_26;
                }
              }

              else
              {
                [v89 addObject:v10];
                mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
                oslog = [mEMORY[0x277D64460]2 oslog];

                oslog3 = v94;
                if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  selfCopy7 = v23;
                  v111 = 2114;
                  v112 = oslog4;
                  v113 = 2114;
                  v114 = @"YES";
                  v34 = oslog;
LABEL_26:
                  _os_log_impl(&dword_23193C000, v34, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering revoked asset by restore version, restoreVersion=%{public}@, releaseType=%{public}@ | keep=%{public}@", buf, 0x20u);
                }
              }
            }

            else
            {
              installedSplatProductVersionExtra = [(SUCorePolicyExtensionSplatUpdate *)v25 installedSplatProductVersionExtra];
              v43 = [(SUCorePolicyExtensionSplatUpdate *)v25 _stringRemovingParenthesis:installedSplatProductVersionExtra];
              v44 = v43;
              v45 = &stru_28469CC48;
              if (v43)
              {
                v45 = v43;
              }

              oslog = v45;

              attributes4 = [v10 attributes];
              v47 = [attributes4 safeStringForKey:@"ProductVersionExtra"];
              v48 = [(SUCorePolicyExtensionSplatUpdate *)v25 _stringRemovingParenthesis:v47];

              if (v48)
              {
                v49 = [oslog compare:v48 options:1]== -1;
              }

              else
              {
                v49 = 0;
              }

              oslog3 = v94;
              if (v30 == -1 || !v30 && ([(SUCorePolicyExtensionSplatUpdate *)selfCopy allowSameRestoreVersion]|| v49))
              {
                [v90 addObject:v10];
                v51 = 1;
              }

              else
              {
                v51 = 0;
              }

              mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
              oslog2 = [mEMORY[0x277D64460]3 oslog];

              if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
              {
                allowSameRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)selfCopy allowSameRestoreVersion];
                *buf = 138544642;
                v55 = @"YES";
                if (allowSameRestoreVersion)
                {
                  v56 = @"YES";
                }

                else
                {
                  v56 = @"NO";
                }

                selfCopy7 = v23;
                if (!v51)
                {
                  v55 = @"NO";
                }

                v111 = 2114;
                v112 = oslog4;
                v113 = 2114;
                v114 = oslog;
                v115 = 2114;
                v116 = v48;
                v117 = 2114;
                v118 = v56;
                v119 = 2114;
                v120 = v55;
                _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering update asset by restore version, restoreVersion=%{public}@, releaseType=%{public}@ installedProductVersionExtra=%{public}@ targetProductVersionExtra=%{public}@ allowSameRestoreVersion=%{public}@ | keep=%{public}@", buf, 0x3Eu);
              }

              v5 = v91;
            }

            v7 = v95;
          }

          else
          {
            mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
            oslog = [mEMORY[0x277D64460]4 oslog];

            v5 = v18;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              selfCopy7 = selfCopy;
              v111 = 2114;
              v112 = v27;
              v113 = 2114;
              v114 = v96;
              _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ Incomparable RestoreVersion. Skipping asset for installedSplatRestoreVersion=%{public}@ targetSplatRestoreVersion=%{public}@", buf, 0x20u);
            }

            v7 = v95;
            oslog3 = v94;
          }

          self = selfCopy;
        }

        else
        {
          mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
          oslog3 = [mEMORY[0x277D64460]5 oslog];

          v7 = v95;
          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
            releaseType2 = [mEMORY[0x277D64418]2 releaseType];
            *buf = 138543874;
            selfCopy7 = self;
            v111 = 2114;
            v112 = oslog4;
            v113 = 2114;
            v114 = releaseType2;
            _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "%{public}@ Incompatible asset ReleaseType: %{public}@ Device ReleaseType: %{public}@", buf, 0x20u);
          }
        }

        v8 = 0x277D28000;
        goto LABEL_44;
      }

      mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
      oslog4 = [mEMORY[0x277D64460]6 oslog];

      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138543618;
        selfCopy7 = self;
        v111 = 2112;
        v112 = v37;
        _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "%{public}@ Unexpected type in MobileAsset asset array: %@", buf, 0x16u);
      }

LABEL_44:

      ++v9;
    }

    while (v7 != v9);
    v7 = [v5 countByEnumeratingWithState:&v104 objects:v121 count:16];
  }

  while (v7);
LABEL_46:

  v57 = objc_alloc(MEMORY[0x277D64408]);
  v58 = [v57 initWithProjectName:*MEMORY[0x277D64540]];
  lastObject = [v58 getStringConfigForKey:*MEMORY[0x277D64508]];

  if (lastObject)
  {
    goto LABEL_57;
  }

  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v61 = v90;
  v62 = [v61 countByEnumeratingWithState:&v100 objects:v108 count:16];
  if (v62)
  {
    v63 = v62;
    v64 = *v101;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v101 != v64)
        {
          objc_enumerationMutation(v61);
        }

        attributes5 = [*(*(&v100 + 1) + 8 * i) attributes];
        v67 = [attributes5 safeStringForKey:@"ProductVersionExtra"];

        if (v67)
        {
          [v60 addObject:v67];
        }
      }

      v63 = [v61 countByEnumeratingWithState:&v100 objects:v108 count:16];
    }

    while (v63);
  }

  v68 = [v60 sortedArrayUsingSelector:sel_compare_];
  lastObject = [v68 lastObject];

  if (lastObject)
  {
LABEL_57:
    mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
    oslog5 = [mEMORY[0x277D64460]7 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [v90 count];
      *buf = 134218242;
      selfCopy7 = v71;
      v111 = 2114;
      v112 = lastObject;
      _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu update assets before filtering for productVersionExtra=%{public}@", buf, 0x16u);
    }

    v72 = MEMORY[0x277CCAC30];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __67__SUCorePolicyExtensionSplatUpdate_filterSoftwareUpdateAssetArray___block_invoke;
    v98[3] = &unk_27892C8F8;
    lastObject = lastObject;
    v99 = lastObject;
    v73 = [v72 predicateWithBlock:v98];
    v74 = [v90 filteredArrayUsingPredicate:v73];

    v61 = [v74 mutableCopy];
    mEMORY[0x277D64460]8 = [MEMORY[0x277D64460] sharedLogger];
    oslog6 = [mEMORY[0x277D64460]8 oslog];

    if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
    {
      v77 = [v61 count];
      *buf = 134218242;
      selfCopy7 = v77;
      v111 = 2114;
      v112 = lastObject;
      _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu update assets left after filtering for productVersionExtra=%{public}@", buf, 0x16u);
    }

    v78 = v91;
  }

  else
  {
    v78 = v91;
  }

  if (![v61 count])
  {
    v82 = [v89 count];
    mEMORY[0x277D64460]9 = [MEMORY[0x277D64460] sharedLogger];
    oslog7 = [mEMORY[0x277D64460]9 oslog];

    v84 = os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT);
    if (v82)
    {
      v78 = v91;
      if (v84)
      {
        *buf = 138543618;
        selfCopy7 = self;
        v111 = 2082;
        v112 = "[SUCorePolicyExtensionSplatUpdate filterSoftwareUpdateAssetArray:]";
        v85 = "%{public}@ %{public}s - Returning splat rollback";
LABEL_72:
        _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, v85, buf, 0x16u);
      }
    }

    else
    {
      v78 = v91;
      if (v84)
      {
        *buf = 138543618;
        selfCopy7 = self;
        v111 = 2082;
        v112 = "[SUCorePolicyExtensionSplatUpdate filterSoftwareUpdateAssetArray:]";
        v85 = "%{public}@ %{public}s - Returning empty asset set";
        goto LABEL_72;
      }
    }

    v81 = v89;
    goto LABEL_74;
  }

  mEMORY[0x277D64460]10 = [MEMORY[0x277D64460] sharedLogger];
  oslog7 = [mEMORY[0x277D64460]10 oslog];

  if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy7 = self;
    v111 = 2082;
    v112 = "[SUCorePolicyExtensionSplatUpdate filterSoftwareUpdateAssetArray:]";
    _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s - Returning splat updates", buf, 0x16u);
  }

  v81 = v61;
LABEL_74:

  v86 = v81;
  v87 = *MEMORY[0x277D85DE8];
  return v81;
}

uint64_t __67__SUCorePolicyExtensionSplatUpdate_filterSoftwareUpdateAssetArray___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D643F8];
  v5 = [v3 attributes];
  v6 = [v5 safeStringForKey:@"ProductVersionExtra"];
  v7 = [v4 stringIsEqual:v6 to:*(a1 + 32)];

  v8 = [MEMORY[0x277D64460] sharedLogger];
  v9 = [v8 oslog];

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [v3 attributes];
    v12 = [v11 safeStringForKey:@"ProductVersionExtra"];
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
    _os_log_impl(&dword_23193C000, v9, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering update asset for productVersionExtra=%{public}@, assetProductVersionExtra=%{public}@ | keep=%{public}@", &v17, 0x20u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)extendMASoftwareUpdateCatalogDownloadOptions:(id)options
{
  v46 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    hasSplat = [mEMORY[0x277D64418] hasSplat];

    if (hasSplat)
    {
      installedBaseOSReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
      [optionsCopy setPrerequisiteReleaseType:installedBaseOSReleaseType];

      prerequisiteReleaseType = [optionsCopy prerequisiteReleaseType];
      v9 = [@"|" stringByAppendingFormat:@"releaseType:%@|", prerequisiteReleaseType];

      [optionsCopy setAllowSameVersion:{-[SUCorePolicyExtensionSplatUpdate allowSameRestoreVersion](self, "allowSameRestoreVersion")}];
      allowSameVersion = [optionsCopy allowSameVersion];
      v11 = @"NO";
      if (allowSameVersion)
      {
        v11 = @"YES";
      }

      v12 = [v9 stringByAppendingFormat:@"allowSameVersion:%@|", v11];

      additionalServerParams = [optionsCopy additionalServerParams];
      installedBaseOSBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
      [additionalServerParams setSafeObject:installedBaseOSBuildVersion forKey:@"Build"];

      additionalServerParams2 = [optionsCopy additionalServerParams];
      v16 = [additionalServerParams2 safeStringForKey:@"Build"];
      v17 = [v12 stringByAppendingFormat:@"%@:%@|", @"Build", v16];

      additionalServerParams3 = [optionsCopy additionalServerParams];
      installedSplatProductVersionExtra = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
      [additionalServerParams3 setSafeObject:installedSplatProductVersionExtra forKey:@"ProductVersionExtra"];

      additionalServerParams4 = [optionsCopy additionalServerParams];
      v21 = [additionalServerParams4 safeStringForKey:@"ProductVersionExtra"];
      v22 = [v17 stringByAppendingFormat:@"%@:%@|", @"ProductVersionExtra", v21];

      additionalServerParams5 = [optionsCopy additionalServerParams];
      installedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
      [additionalServerParams5 setSafeObject:installedSplatRestoreVersion forKey:@"InstalledSplatRestoreVersion"];

      additionalServerParams6 = [optionsCopy additionalServerParams];
      v26 = [additionalServerParams6 safeStringForKey:@"InstalledSplatRestoreVersion"];
      v27 = [v22 stringByAppendingFormat:@"%@:%@|", @"InstalledSplatRestoreVersion", v26];

      additionalServerParams7 = [optionsCopy additionalServerParams];
      requestedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
      [additionalServerParams7 setSafeObject:requestedSplatRestoreVersion forKey:@"RequestedRestoreVersion"];

      additionalServerParams8 = [optionsCopy additionalServerParams];
      v31 = [additionalServerParams8 safeStringForKey:@"RequestedRestoreVersion"];
      v32 = [v27 stringByAppendingFormat:@"%@:%@|", @"RequestedRestoreVersion", v31];

      additionalServerParams9 = [optionsCopy additionalServerParams];
      if ([(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion])
      {
        v34 = @"true";
      }

      else
      {
        v34 = @"false";
      }

      [additionalServerParams9 setSafeObject:v34 forKey:@"AllowSameRestoreVersion"];

      additionalServerParams10 = [optionsCopy additionalServerParams];
      v36 = [additionalServerParams10 safeStringForKey:@"AllowSameRestoreVersion"];
      v37 = [v32 stringByAppendingFormat:@"%@:%@|", @"AllowSameRestoreVersion", v36];
    }

    else
    {
      additionalServerParams10 = [MEMORY[0x277D64428] sharedDiag];
      v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ without hasSplat = YES, yet calling extendMASoftwareUpdateCatalogDownloadOptions (no extended download options will be added)", self];
      [additionalServerParams10 trackAnomaly:@"[POLICY] DOWNLOAD_OPTIONS" forReason:v36 withResult:8102 withError:0];
      v37 = @"|";
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v44 = 2114;
      v45 = v37;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading software update catalog with extended download options: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Options class is not MAMsuDownloadOptions, so unable to set splat options.", buf, 2u);
    }

    v37 = @"|";
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (SUCorePolicyExtensionSplatUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = SUCorePolicyExtensionSplatUpdate;
  v5 = [(SUCorePolicyExtension *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatRestoreVersion"];
    installedSplatRestoreVersion = v5->_installedSplatRestoreVersion;
    v5->_installedSplatRestoreVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatBuildVersion"];
    installedSplatBuildVersion = v5->_installedSplatBuildVersion;
    v5->_installedSplatBuildVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatProductVersion"];
    installedSplatProductVersion = v5->_installedSplatProductVersion;
    v5->_installedSplatProductVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatProductVersionExtra"];
    installedSplatProductVersionExtra = v5->_installedSplatProductVersionExtra;
    v5->_installedSplatProductVersionExtra = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatReleaseType"];
    installedSplatReleaseType = v5->_installedSplatReleaseType;
    v5->_installedSplatReleaseType = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedBaseOSRestoreVersion"];
    installedBaseOSRestoreVersion = v5->_installedBaseOSRestoreVersion;
    v5->_installedBaseOSRestoreVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedBaseOSBuildVersion"];
    installedBaseOSBuildVersion = v5->_installedBaseOSBuildVersion;
    v5->_installedBaseOSBuildVersion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedBaseOSProductVersion"];
    installedBaseOSProductVersion = v5->_installedBaseOSProductVersion;
    v5->_installedBaseOSProductVersion = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installedBaseOSReleaseType"];
    installedBaseOSReleaseType = v5->_installedBaseOSReleaseType;
    v5->_installedBaseOSReleaseType = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedSplatRestoreVersion"];
    requestedSplatRestoreVersion = v5->_requestedSplatRestoreVersion;
    v5->_requestedSplatRestoreVersion = v24;

    v5->_allowSameRestoreVersion = [coderCopy decodeBoolForKey:@"allowSameRestoreVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  installedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
  [coderCopy encodeObject:installedSplatRestoreVersion forKey:@"installedSplatRestoreVersion"];

  installedSplatBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
  [coderCopy encodeObject:installedSplatBuildVersion forKey:@"installedSplatBuildVersion"];

  installedSplatProductVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
  [coderCopy encodeObject:installedSplatProductVersion forKey:@"installedSplatProductVersion"];

  installedSplatProductVersionExtra = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
  [coderCopy encodeObject:installedSplatProductVersionExtra forKey:@"installedSplatProductVersionExtra"];

  installedSplatReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
  [coderCopy encodeObject:installedSplatReleaseType forKey:@"installedSplatReleaseType"];

  installedBaseOSRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
  [coderCopy encodeObject:installedBaseOSRestoreVersion forKey:@"installedBaseOSRestoreVersion"];

  installedBaseOSBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
  [coderCopy encodeObject:installedBaseOSBuildVersion forKey:@"installedBaseOSBuildVersion"];

  installedBaseOSProductVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
  [coderCopy encodeObject:installedBaseOSProductVersion forKey:@"installedBaseOSProductVersion"];

  installedBaseOSReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
  [coderCopy encodeObject:installedBaseOSReleaseType forKey:@"installedBaseOSReleaseType"];

  requestedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
  [coderCopy encodeObject:requestedSplatRestoreVersion forKey:@"requestedSplatRestoreVersion"];

  [coderCopy encodeBool:-[SUCorePolicyExtensionSplatUpdate allowSameRestoreVersion](self forKey:{"allowSameRestoreVersion"), @"allowSameRestoreVersion"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v34) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = MEMORY[0x277D643F8];
      installedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatRestoreVersion];
      installedSplatRestoreVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
      if ([v6 stringIsEqual:installedSplatRestoreVersion to:installedSplatRestoreVersion2])
      {
        v9 = MEMORY[0x277D643F8];
        installedSplatBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatBuildVersion];
        installedSplatBuildVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
        if ([v9 stringIsEqual:installedSplatBuildVersion to:installedSplatBuildVersion2])
        {
          v12 = MEMORY[0x277D643F8];
          installedSplatProductVersion = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatProductVersion];
          [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
          v48 = v49 = installedSplatProductVersion;
          if ([v12 stringIsEqual:installedSplatProductVersion to:v48])
          {
            v14 = MEMORY[0x277D643F8];
            installedSplatProductVersionExtra = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatProductVersionExtra];
            installedSplatProductVersionExtra2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
            v47 = installedSplatProductVersionExtra;
            if ([v14 stringIsEqual:installedSplatProductVersionExtra to:installedSplatProductVersionExtra2])
            {
              v16 = MEMORY[0x277D643F8];
              installedSplatReleaseType = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatReleaseType];
              installedSplatReleaseType2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
              v45 = installedSplatReleaseType;
              if ([v16 stringIsEqual:installedSplatReleaseType to:installedSplatReleaseType2])
              {
                v18 = MEMORY[0x277D643F8];
                installedBaseOSRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)v5 installedBaseOSRestoreVersion];
                installedBaseOSRestoreVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
                v43 = installedBaseOSRestoreVersion;
                if ([v18 stringIsEqual:installedBaseOSRestoreVersion to:installedBaseOSRestoreVersion2])
                {
                  v20 = MEMORY[0x277D643F8];
                  installedBaseOSBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)v5 installedBaseOSBuildVersion];
                  installedBaseOSBuildVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
                  v41 = installedBaseOSBuildVersion;
                  if ([v20 stringIsEqual:installedBaseOSBuildVersion to:installedBaseOSBuildVersion2])
                  {
                    v22 = MEMORY[0x277D643F8];
                    installedBaseOSProductVersion = [(SUCorePolicyExtensionSplatUpdate *)v5 installedBaseOSProductVersion];
                    installedBaseOSProductVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
                    v39 = installedBaseOSProductVersion;
                    if ([v22 stringIsEqual:installedBaseOSProductVersion to:installedBaseOSProductVersion2])
                    {
                      v24 = MEMORY[0x277D643F8];
                      installedBaseOSReleaseType = [(SUCorePolicyExtensionSplatUpdate *)v5 installedBaseOSReleaseType];
                      installedBaseOSReleaseType2 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
                      v37 = installedBaseOSReleaseType;
                      v27 = installedBaseOSReleaseType;
                      v28 = installedBaseOSReleaseType2;
                      if ([v24 stringIsEqual:v27 to:installedBaseOSReleaseType2])
                      {
                        v29 = MEMORY[0x277D643F8];
                        requestedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)v5 requestedSplatRestoreVersion];
                        requestedSplatRestoreVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
                        v32 = v29;
                        v33 = requestedSplatRestoreVersion2;
                        if ([v32 stringIsEqual:requestedSplatRestoreVersion to:?])
                        {
                          allowSameRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)v5 allowSameRestoreVersion];
                          v34 = allowSameRestoreVersion ^ [(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion]^ 1;
                        }

                        else
                        {
                          LOBYTE(v34) = 0;
                        }
                      }

                      else
                      {
                        LOBYTE(v34) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v34) = 0;
                    }
                  }

                  else
                  {
                    LOBYTE(v34) = 0;
                  }
                }

                else
                {
                  LOBYTE(v34) = 0;
                }
              }

              else
              {
                LOBYTE(v34) = 0;
              }
            }

            else
            {
              LOBYTE(v34) = 0;
            }
          }

          else
          {
            LOBYTE(v34) = 0;
          }
        }

        else
        {
          LOBYTE(v34) = 0;
        }
      }

      else
      {
        LOBYTE(v34) = 0;
      }
    }

    else
    {
      LOBYTE(v34) = 0;
    }
  }

  return v34;
}

- (id)summary
{
  installedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];

  if (installedSplatRestoreVersion)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    installedSplatRestoreVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
    v6 = [v4 initWithFormat:@"|installedSplatRestoreVersion=%@", installedSplatRestoreVersion2];
    v7 = [&stru_28469CC48 stringByAppendingString:v6];
  }

  else
  {
    v7 = &stru_28469CC48;
  }

  installedSplatProductVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];

  if (installedSplatProductVersion)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    installedSplatProductVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
    v11 = [v9 initWithFormat:@"|installedSplatProductVersion=%@", installedSplatProductVersion2];
    v12 = [(__CFString *)v7 stringByAppendingString:v11];

    v7 = v12;
  }

  installedSplatProductVersionExtra = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];

  if (installedSplatProductVersionExtra)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    installedSplatProductVersionExtra2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
    v16 = [v14 initWithFormat:@"|installedSplatProductVersionExtra=%@", installedSplatProductVersionExtra2];
    v17 = [(__CFString *)v7 stringByAppendingString:v16];

    v7 = v17;
  }

  installedSplatReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];

  if (installedSplatReleaseType)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    installedSplatReleaseType2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
    v21 = [v19 initWithFormat:@"|installedSplatReleaseType=%@", installedSplatReleaseType2];
    v22 = [(__CFString *)v7 stringByAppendingString:v21];

    v7 = v22;
  }

  installedSplatBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];

  if (installedSplatBuildVersion)
  {
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    installedSplatBuildVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
    v26 = [v24 initWithFormat:@"|installedSplatBuildVersion=%@", installedSplatBuildVersion2];
    v27 = [(__CFString *)v7 stringByAppendingString:v26];

    v7 = v27;
  }

  installedBaseOSRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];

  if (installedBaseOSRestoreVersion)
  {
    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    installedBaseOSRestoreVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
    v31 = [v29 initWithFormat:@"|installedBaseOSRestoreVersion=%@", installedBaseOSRestoreVersion2];
    v32 = [(__CFString *)v7 stringByAppendingString:v31];

    v7 = v32;
  }

  installedBaseOSProductVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];

  if (installedBaseOSProductVersion)
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    installedBaseOSProductVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
    v36 = [v34 initWithFormat:@"|installedBaseOSProductVersion=%@", installedBaseOSProductVersion2];
    v37 = [(__CFString *)v7 stringByAppendingString:v36];

    v7 = v37;
  }

  installedBaseOSReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];

  if (installedBaseOSReleaseType)
  {
    v39 = objc_alloc(MEMORY[0x277CCACA8]);
    installedBaseOSReleaseType2 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
    v41 = [v39 initWithFormat:@"|installedBaseOSReleaseType=%@", installedBaseOSReleaseType2];
    v42 = [(__CFString *)v7 stringByAppendingString:v41];

    v7 = v42;
  }

  installedBaseOSBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];

  if (installedBaseOSBuildVersion)
  {
    v44 = objc_alloc(MEMORY[0x277CCACA8]);
    installedBaseOSBuildVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
    v46 = [v44 initWithFormat:@"|installedBaseOSBuildVersion=%@", installedBaseOSBuildVersion2];
    v47 = [(__CFString *)v7 stringByAppendingString:v46];

    v7 = v47;
  }

  requestedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];

  if (requestedSplatRestoreVersion)
  {
    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    requestedSplatRestoreVersion2 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
    v51 = [v49 initWithFormat:@"|requestedSplatRestoreVersion=%@", requestedSplatRestoreVersion2];
    v52 = [(__CFString *)v7 stringByAppendingString:v51];

    v7 = v52;
  }

  v53 = objc_alloc(MEMORY[0x277CCACA8]);
  allowSameRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion];
  v55 = @"NO";
  if (allowSameRestoreVersion)
  {
    v55 = @"YES";
  }

  v56 = [v53 initWithFormat:@"|allowSameRestoreVersion=%@", v55];
  v57 = [(__CFString *)v7 stringByAppendingString:v56];

  if (([v57 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v58 = [v57 stringByAppendingString:@"|"];

    v57 = v58;
  }

  return v57;
}

- (id)description
{
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  extensionName = [(SUCorePolicyExtensionSplatUpdate *)self extensionName];
  installedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
  installedSplatBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
  installedSplatProductVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
  installedSplatProductVersionExtra = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
  installedSplatReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
  installedBaseOSRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
  installedBaseOSBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
  installedBaseOSProductVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
  installedBaseOSReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
  requestedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
  allowSameRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion];
  v13 = @"NO";
  if (allowSameRestoreVersion)
  {
    v13 = @"YES";
  }

  v18 = [v17 initWithFormat:@"%@(installedSplatRestoreVersion:%@|installedSplatBuildVersion:%@|installedSplatProductVersion:%@|installedSplatProductVersionExtra:%@|installedSplatReleaseType:%@|installedBaseOSRestoreVersion:%@|installedBaseOSBuildVersion:%@|installedBaseOSProductVersion:%@|installedBaseOSReleaseType:%@|requestedSplatRestoreVersion:%@|allowSameRestoreVersion:%@)", extensionName, installedSplatRestoreVersion, installedSplatBuildVersion, installedSplatProductVersion, installedSplatProductVersionExtra, installedSplatReleaseType, installedBaseOSRestoreVersion, installedBaseOSBuildVersion, installedBaseOSProductVersion, installedBaseOSReleaseType, requestedSplatRestoreVersion, v13];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SUCorePolicyExtensionSplatUpdate);
  installedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatRestoreVersion:installedSplatRestoreVersion];

  installedSplatBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatBuildVersion:installedSplatBuildVersion];

  installedSplatProductVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatProductVersion:installedSplatProductVersion];

  installedSplatProductVersionExtra = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatProductVersionExtra:installedSplatProductVersionExtra];

  installedSplatReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatReleaseType:installedSplatReleaseType];

  installedBaseOSRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledBaseOSRestoreVersion:installedBaseOSRestoreVersion];

  installedBaseOSBuildVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledBaseOSBuildVersion:installedBaseOSBuildVersion];

  installedBaseOSProductVersion = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledBaseOSProductVersion:installedBaseOSProductVersion];

  installedBaseOSReleaseType = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledBaseOSReleaseType:installedBaseOSReleaseType];

  requestedSplatRestoreVersion = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setRequestedSplatRestoreVersion:requestedSplatRestoreVersion];

  [(SUCorePolicyExtensionSplatUpdate *)v4 setAllowSameRestoreVersion:[(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion]];
  return v4;
}

@end