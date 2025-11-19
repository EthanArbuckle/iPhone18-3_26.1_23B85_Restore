@interface SUCorePolicyExtensionSplatUpdate
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyExtensionSplatUpdate)init;
- (SUCorePolicyExtensionSplatUpdate)initWithCoder:(id)a3;
- (id)_stringRemovingParenthesis:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)filterSoftwareUpdateAssetArray:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)extendMASoftwareUpdateCatalogDownloadOptions:(id)a3;
@end

@implementation SUCorePolicyExtensionSplatUpdate

- (SUCorePolicyExtensionSplatUpdate)init
{
  v37.receiver = self;
  v37.super_class = SUCorePolicyExtensionSplatUpdate;
  v2 = [(SUCorePolicyExtension *)&v37 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D64418] sharedDevice];
    v4 = [v3 splatCryptex1RestoreVersion];
    installedSplatRestoreVersion = v2->_installedSplatRestoreVersion;
    v2->_installedSplatRestoreVersion = v4;

    v6 = [MEMORY[0x277D64418] sharedDevice];
    v7 = [v6 splatCryptex1ProductVersion];
    installedSplatProductVersion = v2->_installedSplatProductVersion;
    v2->_installedSplatProductVersion = v7;

    v9 = [MEMORY[0x277D64418] sharedDevice];
    v10 = [v9 splatCryptex1ProductVersionExtra];
    installedSplatProductVersionExtra = v2->_installedSplatProductVersionExtra;
    v2->_installedSplatProductVersionExtra = v10;

    v12 = [MEMORY[0x277D64418] sharedDevice];
    v13 = [v12 splatCryptex1BuildVersion];
    installedSplatBuildVersion = v2->_installedSplatBuildVersion;
    v2->_installedSplatBuildVersion = v13;

    v15 = [MEMORY[0x277D64418] sharedDevice];
    v16 = [v15 splatCryptex1ReleaseType];
    installedSplatReleaseType = v2->_installedSplatReleaseType;
    v2->_installedSplatReleaseType = v16;

    v18 = [MEMORY[0x277D64418] sharedDevice];
    v19 = [v18 releaseType];
    if (v19)
    {
      v20 = v2->_installedSplatReleaseType;

      if (v20)
      {
LABEL_6:
        v23 = [MEMORY[0x277D64418] sharedDevice];
        v24 = [v23 restoreVersion];
        installedBaseOSRestoreVersion = v2->_installedBaseOSRestoreVersion;
        v2->_installedBaseOSRestoreVersion = v24;

        v26 = [MEMORY[0x277D64418] sharedDevice];
        v27 = [v26 productVersion];
        installedBaseOSProductVersion = v2->_installedBaseOSProductVersion;
        v2->_installedBaseOSProductVersion = v27;

        v29 = [MEMORY[0x277D64418] sharedDevice];
        v30 = [v29 buildVersion];
        installedBaseOSBuildVersion = v2->_installedBaseOSBuildVersion;
        v2->_installedBaseOSBuildVersion = v30;

        v32 = [MEMORY[0x277D64418] sharedDevice];
        v33 = [v32 releaseType];
        installedBaseOSReleaseType = v2->_installedBaseOSReleaseType;
        v2->_installedBaseOSReleaseType = v33;

        requestedSplatRestoreVersion = v2->_requestedSplatRestoreVersion;
        v2->_requestedSplatRestoreVersion = 0;

        v2->_allowSameRestoreVersion = 0;
        return v2;
      }

      v18 = [MEMORY[0x277D64418] sharedDevice];
      v21 = [v18 releaseType];
      v22 = v2->_installedSplatReleaseType;
      v2->_installedSplatReleaseType = v21;
    }

    goto LABEL_6;
  }

  return v2;
}

- (id)_stringRemovingParenthesis:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = objc_msgSend(v3, "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_28469CC48;
    v6 = [v5 stringByReplacingOccurrencesOfString:@"" withString:?], &stru_28469CC48);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)filterSoftwareUpdateAssetArray:(id)a3
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v89 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v104 objects:v121 count:16];
  v91 = v5;
  if (!v6)
  {
    goto LABEL_46;
  }

  v7 = v6;
  v8 = 0x277D28000uLL;
  v97 = *v105;
  v92 = self;
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
        v12 = [v10 attributes];
        v13 = [v12 safeStringForKey:@"ReleaseType"];

        v14 = MEMORY[0x277D643F8];
        v15 = [MEMORY[0x277D64418] sharedDevice];
        v16 = [v15 releaseType];
        LOBYTE(v14) = [v14 stringIsEqual:v13 to:v16];

        if (v14)
        {
          v17 = self;
          v18 = v5;
          v19 = [v10 attributes];
          v20 = [v19 safeObjectForKey:@"Revoked" ofClass:objc_opt_class()];

          v94 = v20;
          v21 = [v20 BOOLValue];
          v22 = [v10 attributes];
          v23 = [v22 safeStringForKey:@"RestoreVersion"];

          v24 = objc_alloc(MEMORY[0x277D64490]);
          v25 = v17;
          v26 = [(SUCorePolicyExtensionSplatUpdate *)v17 installedSplatRestoreVersion];
          v27 = [v24 initWithRestoreVersion:v26];

          v28 = [objc_alloc(MEMORY[0x277D64490]) initWithRestoreVersion:v23];
          v93 = v27;
          v96 = v28;
          if ([v27 isComparable:v28])
          {
            v29 = [v27 compare:v28];
            v30 = v29;
            if (v21)
            {
              v5 = v18;
              if (v29)
              {
                v31 = [MEMORY[0x277D64460] sharedLogger];
                v32 = [v31 oslog];

                v33 = v94;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  v110 = v23;
                  v111 = 2114;
                  v112 = v13;
                  v113 = 2114;
                  v114 = @"NO";
                  v34 = v32;
                  goto LABEL_26;
                }
              }

              else
              {
                [v89 addObject:v10];
                v50 = [MEMORY[0x277D64460] sharedLogger];
                v32 = [v50 oslog];

                v33 = v94;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  v110 = v23;
                  v111 = 2114;
                  v112 = v13;
                  v113 = 2114;
                  v114 = @"YES";
                  v34 = v32;
LABEL_26:
                  _os_log_impl(&dword_23193C000, v34, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering revoked asset by restore version, restoreVersion=%{public}@, releaseType=%{public}@ | keep=%{public}@", buf, 0x20u);
                }
              }
            }

            else
            {
              v42 = [(SUCorePolicyExtensionSplatUpdate *)v25 installedSplatProductVersionExtra];
              v43 = [(SUCorePolicyExtensionSplatUpdate *)v25 _stringRemovingParenthesis:v42];
              v44 = v43;
              v45 = &stru_28469CC48;
              if (v43)
              {
                v45 = v43;
              }

              v32 = v45;

              v46 = [v10 attributes];
              v47 = [v46 safeStringForKey:@"ProductVersionExtra"];
              v48 = [(SUCorePolicyExtensionSplatUpdate *)v25 _stringRemovingParenthesis:v47];

              if (v48)
              {
                v49 = [v32 compare:v48 options:1]== -1;
              }

              else
              {
                v49 = 0;
              }

              v33 = v94;
              if (v30 == -1 || !v30 && ([(SUCorePolicyExtensionSplatUpdate *)v92 allowSameRestoreVersion]|| v49))
              {
                [v90 addObject:v10];
                v51 = 1;
              }

              else
              {
                v51 = 0;
              }

              v52 = [MEMORY[0x277D64460] sharedLogger];
              v53 = [v52 oslog];

              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = [(SUCorePolicyExtensionSplatUpdate *)v92 allowSameRestoreVersion];
                *buf = 138544642;
                v55 = @"YES";
                if (v54)
                {
                  v56 = @"YES";
                }

                else
                {
                  v56 = @"NO";
                }

                v110 = v23;
                if (!v51)
                {
                  v55 = @"NO";
                }

                v111 = 2114;
                v112 = v13;
                v113 = 2114;
                v114 = v32;
                v115 = 2114;
                v116 = v48;
                v117 = 2114;
                v118 = v56;
                v119 = 2114;
                v120 = v55;
                _os_log_impl(&dword_23193C000, v53, OS_LOG_TYPE_DEFAULT, "[POLICY] filtering update asset by restore version, restoreVersion=%{public}@, releaseType=%{public}@ installedProductVersionExtra=%{public}@ targetProductVersionExtra=%{public}@ allowSameRestoreVersion=%{public}@ | keep=%{public}@", buf, 0x3Eu);
              }

              v5 = v91;
            }

            v7 = v95;
          }

          else
          {
            v41 = [MEMORY[0x277D64460] sharedLogger];
            v32 = [v41 oslog];

            v5 = v18;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v110 = v92;
              v111 = 2114;
              v112 = v27;
              v113 = 2114;
              v114 = v96;
              _os_log_impl(&dword_23193C000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Incomparable RestoreVersion. Skipping asset for installedSplatRestoreVersion=%{public}@ targetSplatRestoreVersion=%{public}@", buf, 0x20u);
            }

            v7 = v95;
            v33 = v94;
          }

          self = v92;
        }

        else
        {
          v38 = [MEMORY[0x277D64460] sharedLogger];
          v33 = [v38 oslog];

          v7 = v95;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v39 = [MEMORY[0x277D64418] sharedDevice];
            v40 = [v39 releaseType];
            *buf = 138543874;
            v110 = self;
            v111 = 2114;
            v112 = v13;
            v113 = 2114;
            v114 = v40;
            _os_log_impl(&dword_23193C000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Incompatible asset ReleaseType: %{public}@ Device ReleaseType: %{public}@", buf, 0x20u);
          }
        }

        v8 = 0x277D28000;
        goto LABEL_44;
      }

      v35 = [MEMORY[0x277D64460] sharedLogger];
      v13 = [v35 oslog];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138543618;
        v110 = self;
        v111 = 2112;
        v112 = v37;
        _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Unexpected type in MobileAsset asset array: %@", buf, 0x16u);
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
  v59 = [v58 getStringConfigForKey:*MEMORY[0x277D64508]];

  if (v59)
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

        v66 = [*(*(&v100 + 1) + 8 * i) attributes];
        v67 = [v66 safeStringForKey:@"ProductVersionExtra"];

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
  v59 = [v68 lastObject];

  if (v59)
  {
LABEL_57:
    v69 = [MEMORY[0x277D64460] sharedLogger];
    v70 = [v69 oslog];

    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = [v90 count];
      *buf = 134218242;
      v110 = v71;
      v111 = 2114;
      v112 = v59;
      _os_log_impl(&dword_23193C000, v70, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu update assets before filtering for productVersionExtra=%{public}@", buf, 0x16u);
    }

    v72 = MEMORY[0x277CCAC30];
    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = __67__SUCorePolicyExtensionSplatUpdate_filterSoftwareUpdateAssetArray___block_invoke;
    v98[3] = &unk_27892C8F8;
    v59 = v59;
    v99 = v59;
    v73 = [v72 predicateWithBlock:v98];
    v74 = [v90 filteredArrayUsingPredicate:v73];

    v61 = [v74 mutableCopy];
    v75 = [MEMORY[0x277D64460] sharedLogger];
    v76 = [v75 oslog];

    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = [v61 count];
      *buf = 134218242;
      v110 = v77;
      v111 = 2114;
      v112 = v59;
      _os_log_impl(&dword_23193C000, v76, OS_LOG_TYPE_DEFAULT, "[POLICY] %lu update assets left after filtering for productVersionExtra=%{public}@", buf, 0x16u);
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
    v83 = [MEMORY[0x277D64460] sharedLogger];
    v80 = [v83 oslog];

    v84 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
    if (v82)
    {
      v78 = v91;
      if (v84)
      {
        *buf = 138543618;
        v110 = self;
        v111 = 2082;
        v112 = "[SUCorePolicyExtensionSplatUpdate filterSoftwareUpdateAssetArray:]";
        v85 = "%{public}@ %{public}s - Returning splat rollback";
LABEL_72:
        _os_log_impl(&dword_23193C000, v80, OS_LOG_TYPE_DEFAULT, v85, buf, 0x16u);
      }
    }

    else
    {
      v78 = v91;
      if (v84)
      {
        *buf = 138543618;
        v110 = self;
        v111 = 2082;
        v112 = "[SUCorePolicyExtensionSplatUpdate filterSoftwareUpdateAssetArray:]";
        v85 = "%{public}@ %{public}s - Returning empty asset set";
        goto LABEL_72;
      }
    }

    v81 = v89;
    goto LABEL_74;
  }

  v79 = [MEMORY[0x277D64460] sharedLogger];
  v80 = [v79 oslog];

  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v110 = self;
    v111 = 2082;
    v112 = "[SUCorePolicyExtensionSplatUpdate filterSoftwareUpdateAssetArray:]";
    _os_log_impl(&dword_23193C000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s - Returning splat updates", buf, 0x16u);
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

- (void)extendMASoftwareUpdateCatalogDownloadOptions:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277D64418] sharedDevice];
    v6 = [v5 hasSplat];

    if (v6)
    {
      v7 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
      [v4 setPrerequisiteReleaseType:v7];

      v8 = [v4 prerequisiteReleaseType];
      v9 = [@"|" stringByAppendingFormat:@"releaseType:%@|", v8];

      [v4 setAllowSameVersion:{-[SUCorePolicyExtensionSplatUpdate allowSameRestoreVersion](self, "allowSameRestoreVersion")}];
      v10 = [v4 allowSameVersion];
      v11 = @"NO";
      if (v10)
      {
        v11 = @"YES";
      }

      v12 = [v9 stringByAppendingFormat:@"allowSameVersion:%@|", v11];

      v13 = [v4 additionalServerParams];
      v14 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
      [v13 setSafeObject:v14 forKey:@"Build"];

      v15 = [v4 additionalServerParams];
      v16 = [v15 safeStringForKey:@"Build"];
      v17 = [v12 stringByAppendingFormat:@"%@:%@|", @"Build", v16];

      v18 = [v4 additionalServerParams];
      v19 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
      [v18 setSafeObject:v19 forKey:@"ProductVersionExtra"];

      v20 = [v4 additionalServerParams];
      v21 = [v20 safeStringForKey:@"ProductVersionExtra"];
      v22 = [v17 stringByAppendingFormat:@"%@:%@|", @"ProductVersionExtra", v21];

      v23 = [v4 additionalServerParams];
      v24 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
      [v23 setSafeObject:v24 forKey:@"InstalledSplatRestoreVersion"];

      v25 = [v4 additionalServerParams];
      v26 = [v25 safeStringForKey:@"InstalledSplatRestoreVersion"];
      v27 = [v22 stringByAppendingFormat:@"%@:%@|", @"InstalledSplatRestoreVersion", v26];

      v28 = [v4 additionalServerParams];
      v29 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
      [v28 setSafeObject:v29 forKey:@"RequestedRestoreVersion"];

      v30 = [v4 additionalServerParams];
      v31 = [v30 safeStringForKey:@"RequestedRestoreVersion"];
      v32 = [v27 stringByAppendingFormat:@"%@:%@|", @"RequestedRestoreVersion", v31];

      v33 = [v4 additionalServerParams];
      if ([(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion])
      {
        v34 = @"true";
      }

      else
      {
        v34 = @"false";
      }

      [v33 setSafeObject:v34 forKey:@"AllowSameRestoreVersion"];

      v35 = [v4 additionalServerParams];
      v36 = [v35 safeStringForKey:@"AllowSameRestoreVersion"];
      v37 = [v32 stringByAppendingFormat:@"%@:%@|", @"AllowSameRestoreVersion", v36];
    }

    else
    {
      v35 = [MEMORY[0x277D64428] sharedDiag];
      v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ without hasSplat = YES, yet calling extendMASoftwareUpdateCatalogDownloadOptions (no extended download options will be added)", self];
      [v35 trackAnomaly:@"[POLICY] DOWNLOAD_OPTIONS" forReason:v36 withResult:8102 withError:0];
      v37 = @"|";
    }

    v40 = [MEMORY[0x277D64460] sharedLogger];
    v39 = [v40 oslog];

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v43 = self;
      v44 = 2114;
      v45 = v37;
      _os_log_impl(&dword_23193C000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading software update catalog with extended download options: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v38 = [MEMORY[0x277D64460] sharedLogger];
    v39 = [v38 oslog];

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v39, OS_LOG_TYPE_DEFAULT, "Options class is not MAMsuDownloadOptions, so unable to set splat options.", buf, 2u);
    }

    v37 = @"|";
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (SUCorePolicyExtensionSplatUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SUCorePolicyExtensionSplatUpdate;
  v5 = [(SUCorePolicyExtension *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatRestoreVersion"];
    installedSplatRestoreVersion = v5->_installedSplatRestoreVersion;
    v5->_installedSplatRestoreVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatBuildVersion"];
    installedSplatBuildVersion = v5->_installedSplatBuildVersion;
    v5->_installedSplatBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatProductVersion"];
    installedSplatProductVersion = v5->_installedSplatProductVersion;
    v5->_installedSplatProductVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatProductVersionExtra"];
    installedSplatProductVersionExtra = v5->_installedSplatProductVersionExtra;
    v5->_installedSplatProductVersionExtra = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedSplatReleaseType"];
    installedSplatReleaseType = v5->_installedSplatReleaseType;
    v5->_installedSplatReleaseType = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedBaseOSRestoreVersion"];
    installedBaseOSRestoreVersion = v5->_installedBaseOSRestoreVersion;
    v5->_installedBaseOSRestoreVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedBaseOSBuildVersion"];
    installedBaseOSBuildVersion = v5->_installedBaseOSBuildVersion;
    v5->_installedBaseOSBuildVersion = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedBaseOSProductVersion"];
    installedBaseOSProductVersion = v5->_installedBaseOSProductVersion;
    v5->_installedBaseOSProductVersion = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installedBaseOSReleaseType"];
    installedBaseOSReleaseType = v5->_installedBaseOSReleaseType;
    v5->_installedBaseOSReleaseType = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedSplatRestoreVersion"];
    requestedSplatRestoreVersion = v5->_requestedSplatRestoreVersion;
    v5->_requestedSplatRestoreVersion = v24;

    v5->_allowSameRestoreVersion = [v4 decodeBoolForKey:@"allowSameRestoreVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
  [v14 encodeObject:v4 forKey:@"installedSplatRestoreVersion"];

  v5 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
  [v14 encodeObject:v5 forKey:@"installedSplatBuildVersion"];

  v6 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
  [v14 encodeObject:v6 forKey:@"installedSplatProductVersion"];

  v7 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
  [v14 encodeObject:v7 forKey:@"installedSplatProductVersionExtra"];

  v8 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
  [v14 encodeObject:v8 forKey:@"installedSplatReleaseType"];

  v9 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
  [v14 encodeObject:v9 forKey:@"installedBaseOSRestoreVersion"];

  v10 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
  [v14 encodeObject:v10 forKey:@"installedBaseOSBuildVersion"];

  v11 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
  [v14 encodeObject:v11 forKey:@"installedBaseOSProductVersion"];

  v12 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
  [v14 encodeObject:v12 forKey:@"installedBaseOSReleaseType"];

  v13 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
  [v14 encodeObject:v13 forKey:@"requestedSplatRestoreVersion"];

  [v14 encodeBool:-[SUCorePolicyExtensionSplatUpdate allowSameRestoreVersion](self forKey:{"allowSameRestoreVersion"), @"allowSameRestoreVersion"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v34) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = MEMORY[0x277D643F8];
      v7 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatRestoreVersion];
      v8 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
      if ([v6 stringIsEqual:v7 to:v8])
      {
        v9 = MEMORY[0x277D643F8];
        v10 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatBuildVersion];
        v11 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
        if ([v9 stringIsEqual:v10 to:v11])
        {
          v12 = MEMORY[0x277D643F8];
          v13 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatProductVersion];
          [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
          v48 = v49 = v13;
          if ([v12 stringIsEqual:v13 to:v48])
          {
            v14 = MEMORY[0x277D643F8];
            v15 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatProductVersionExtra];
            v46 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
            v47 = v15;
            if ([v14 stringIsEqual:v15 to:v46])
            {
              v16 = MEMORY[0x277D643F8];
              v17 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedSplatReleaseType];
              v44 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
              v45 = v17;
              if ([v16 stringIsEqual:v17 to:v44])
              {
                v18 = MEMORY[0x277D643F8];
                v19 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedBaseOSRestoreVersion];
                v42 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
                v43 = v19;
                if ([v18 stringIsEqual:v19 to:v42])
                {
                  v20 = MEMORY[0x277D643F8];
                  v21 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedBaseOSBuildVersion];
                  v40 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
                  v41 = v21;
                  if ([v20 stringIsEqual:v21 to:v40])
                  {
                    v22 = MEMORY[0x277D643F8];
                    v23 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedBaseOSProductVersion];
                    v38 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
                    v39 = v23;
                    if ([v22 stringIsEqual:v23 to:v38])
                    {
                      v24 = MEMORY[0x277D643F8];
                      v25 = [(SUCorePolicyExtensionSplatUpdate *)v5 installedBaseOSReleaseType];
                      v26 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
                      v37 = v25;
                      v27 = v25;
                      v28 = v26;
                      if ([v24 stringIsEqual:v27 to:v26])
                      {
                        v29 = MEMORY[0x277D643F8];
                        v30 = [(SUCorePolicyExtensionSplatUpdate *)v5 requestedSplatRestoreVersion];
                        v31 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
                        v32 = v29;
                        v33 = v31;
                        if ([v32 stringIsEqual:v30 to:?])
                        {
                          v36 = [(SUCorePolicyExtensionSplatUpdate *)v5 allowSameRestoreVersion];
                          v34 = v36 ^ [(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion]^ 1;
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
  v3 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
    v6 = [v4 initWithFormat:@"|installedSplatRestoreVersion=%@", v5];
    v7 = [&stru_28469CC48 stringByAppendingString:v6];
  }

  else
  {
    v7 = &stru_28469CC48;
  }

  v8 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
    v11 = [v9 initWithFormat:@"|installedSplatProductVersion=%@", v10];
    v12 = [(__CFString *)v7 stringByAppendingString:v11];

    v7 = v12;
  }

  v13 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
    v16 = [v14 initWithFormat:@"|installedSplatProductVersionExtra=%@", v15];
    v17 = [(__CFString *)v7 stringByAppendingString:v16];

    v7 = v17;
  }

  v18 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];

  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
    v21 = [v19 initWithFormat:@"|installedSplatReleaseType=%@", v20];
    v22 = [(__CFString *)v7 stringByAppendingString:v21];

    v7 = v22;
  }

  v23 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    v25 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
    v26 = [v24 initWithFormat:@"|installedSplatBuildVersion=%@", v25];
    v27 = [(__CFString *)v7 stringByAppendingString:v26];

    v7 = v27;
  }

  v28 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];

  if (v28)
  {
    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
    v31 = [v29 initWithFormat:@"|installedBaseOSRestoreVersion=%@", v30];
    v32 = [(__CFString *)v7 stringByAppendingString:v31];

    v7 = v32;
  }

  v33 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];

  if (v33)
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
    v36 = [v34 initWithFormat:@"|installedBaseOSProductVersion=%@", v35];
    v37 = [(__CFString *)v7 stringByAppendingString:v36];

    v7 = v37;
  }

  v38 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];

  if (v38)
  {
    v39 = objc_alloc(MEMORY[0x277CCACA8]);
    v40 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
    v41 = [v39 initWithFormat:@"|installedBaseOSReleaseType=%@", v40];
    v42 = [(__CFString *)v7 stringByAppendingString:v41];

    v7 = v42;
  }

  v43 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];

  if (v43)
  {
    v44 = objc_alloc(MEMORY[0x277CCACA8]);
    v45 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
    v46 = [v44 initWithFormat:@"|installedBaseOSBuildVersion=%@", v45];
    v47 = [(__CFString *)v7 stringByAppendingString:v46];

    v7 = v47;
  }

  v48 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];

  if (v48)
  {
    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    v50 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
    v51 = [v49 initWithFormat:@"|requestedSplatRestoreVersion=%@", v50];
    v52 = [(__CFString *)v7 stringByAppendingString:v51];

    v7 = v52;
  }

  v53 = objc_alloc(MEMORY[0x277CCACA8]);
  v54 = [(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion];
  v55 = @"NO";
  if (v54)
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
  v16 = [(SUCorePolicyExtensionSplatUpdate *)self extensionName];
  v3 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
  v4 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
  v5 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
  v15 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
  v6 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
  v7 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
  v8 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
  v9 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
  v10 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
  v11 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
  v12 = [(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion];
  v13 = @"NO";
  if (v12)
  {
    v13 = @"YES";
  }

  v18 = [v17 initWithFormat:@"%@(installedSplatRestoreVersion:%@|installedSplatBuildVersion:%@|installedSplatProductVersion:%@|installedSplatProductVersionExtra:%@|installedSplatReleaseType:%@|installedBaseOSRestoreVersion:%@|installedBaseOSBuildVersion:%@|installedBaseOSProductVersion:%@|installedBaseOSReleaseType:%@|requestedSplatRestoreVersion:%@|allowSameRestoreVersion:%@)", v16, v3, v4, v5, v15, v6, v7, v8, v9, v10, v11, v13];

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SUCorePolicyExtensionSplatUpdate);
  v5 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatRestoreVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatRestoreVersion:v5];

  v6 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatBuildVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatBuildVersion:v6];

  v7 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatProductVersion:v7];

  v8 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatProductVersionExtra];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatProductVersionExtra:v8];

  v9 = [(SUCorePolicyExtensionSplatUpdate *)self installedSplatReleaseType];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledSplatReleaseType:v9];

  v10 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSRestoreVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledBaseOSRestoreVersion:v10];

  v11 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSBuildVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledBaseOSBuildVersion:v11];

  v12 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSProductVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledBaseOSProductVersion:v12];

  v13 = [(SUCorePolicyExtensionSplatUpdate *)self installedBaseOSReleaseType];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setInstalledBaseOSReleaseType:v13];

  v14 = [(SUCorePolicyExtensionSplatUpdate *)self requestedSplatRestoreVersion];
  [(SUCorePolicyExtensionSplatUpdate *)v4 setRequestedSplatRestoreVersion:v14];

  [(SUCorePolicyExtensionSplatUpdate *)v4 setAllowSameRestoreVersion:[(SUCorePolicyExtensionSplatUpdate *)self allowSameRestoreVersion]];
  return v4;
}

@end