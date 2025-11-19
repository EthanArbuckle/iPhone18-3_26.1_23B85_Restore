@interface SUCorePolicyExtensionManagedUpdates
+ (id)nameForMDMSoftwareUpdatePath:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRequestedPMVSupervisedPolicy;
- (SUCorePolicyExtensionManagedUpdates)init;
- (SUCorePolicyExtensionManagedUpdates)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mdmPathName;
- (id)summary;
- (int64_t)delayPeriodDays;
- (void)encodeWithCoder:(id)a3;
- (void)extendMADocumentationCatalogDownloadOptions:(id)a3 descriptor:(id)a4;
- (void)extendMASoftwareUpdateAssetDownloadOptions:(id)a3;
- (void)extendMASoftwareUpdateCatalogDownloadOptions:(id)a3;
- (void)extendMSUApplyOptions:(id)a3;
@end

@implementation SUCorePolicyExtensionManagedUpdates

- (SUCorePolicyExtensionManagedUpdates)init
{
  v6.receiver = self;
  v6.super_class = SUCorePolicyExtensionManagedUpdates;
  v2 = [(SUCorePolicyExtension *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_supervised = 0;
    requestedPMV = v2->_requestedPMV;
    v2->_requestedPMV = 0;

    v3->_MDMUseDelayPeriod = 0;
    v3->_delayPeriodSecs = 0;
    v3->_mdmSoftwareUpdatePath = 0;
  }

  return v3;
}

- (void)extendMASoftwareUpdateCatalogDownloadOptions:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SUCorePolicyExtensionManagedUpdates *)self supervised];
    v6 = @"NO";
    if (v5)
    {
      v6 = @"YES";
    }

    v7 = [@"|" stringByAppendingFormat:@"supervised:%@|", v6];
    if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
    {
      [v4 setSupervised:{-[SUCorePolicyExtensionManagedUpdates supervised](self, "supervised")}];
      v8 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];

      if (v8)
      {
        v9 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
        [v4 setRequestedProductVersion:v9];

        v10 = [v4 requestedProductVersion];
        v11 = [(__CFString *)v7 stringByAppendingFormat:@"requestedPMV:%@|", v10];

        v7 = v11;
      }

      if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
      {
        if ([(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs]< 0)
        {
          v12 = [MEMORY[0x277D64428] sharedDiag];
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ with MDMUseDelayPeriod, yet delayPeriodSecs < 0 (ignoring delay period)", self];
          [v12 trackAnomaly:@"[POLICY] DOWNLOAD_OPTIONS" forReason:v17 withResult:8102 withError:0];
        }

        else
        {
          [v4 setDelayPeriod:{-[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](self, "delayPeriodSecs") / 86400}];
          -[__CFString stringByAppendingFormat:](v7, "stringByAppendingFormat:", @"delayPeriod:%ld|", [v4 delayPeriod]);
          v7 = v12 = v7;
        }
      }

      v18 = [v4 additionalServerParams];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self, "mdmSoftwareUpdatePath")}];
      [v18 setSafeObject:v19 forKey:@"MDMSoftwareUpdatePath"];

      v20 = [v4 additionalServerParams];
      v21 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
      [v20 setSafeObject:v21 forKey:@"MDMSoftwareUpdatePathName"];

      v22 = [v4 additionalServerParams];
      v23 = -[__CFString stringByAppendingFormat:](v7, "stringByAppendingFormat:", @"%@:%lld|", @"MDMSoftwareUpdatePath", [v22 safeULLForKey:@"MDMSoftwareUpdatePath"]);

      v15 = [v4 additionalServerParams];
      v16 = [v15 safeStringForKey:@"MDMSoftwareUpdatePathName"];
      v7 = [v23 stringByAppendingFormat:@"%@:%@|", @"MDMSoftwareUpdatePathName", v16];
    }

    else
    {
      v15 = [MEMORY[0x277D64428] sharedDiag];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ without supervised = YES, yet calling extendMASoftwareUpdateCatalogDownloadOptions (no extended download options will be added)", self];
      [v15 trackAnomaly:@"[POLICY] DOWNLOAD_OPTIONS" forReason:v16 withResult:8102 withError:0];
    }

    v24 = [MEMORY[0x277D64460] sharedLogger];
    v14 = [v24 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v27 = self;
      v28 = 2114;
      v29 = v7;
      _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading software update catalog with extended download options: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v13 = [MEMORY[0x277D64460] sharedLogger];
    v14 = [v13 oslog];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "Options class is not MAMsuDownloadOptions, so unable to set managed options.", buf, 2u);
    }

    v7 = @"|";
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)extendMADocumentationCatalogDownloadOptions:(id)a3 descriptor:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
    {
      [v6 setSupervised:{-[SUCorePolicyExtensionManagedUpdates supervised](self, "supervised")}];
      v8 = [v6 supervised];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      v10 = [@"|" stringByAppendingFormat:@"supervised:%@|", v9];
      v11 = [v7 productVersion];
      [v6 setRequestedProductVersion:v11];

      v12 = [v6 requestedProductVersion];
      v13 = [v10 stringByAppendingFormat:@"requestedPMV:%@|", v12];

      v14 = [v6 additionalServerParams];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self, "mdmSoftwareUpdatePath")}];
      [v14 setSafeObject:v15 forKey:@"MDMSoftwareUpdatePath"];

      v16 = [v6 additionalServerParams];
      v17 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
      [v16 setSafeObject:v17 forKey:@"MDMSoftwareUpdatePathName"];

      v18 = [v6 additionalServerParams];
      v19 = [v13 stringByAppendingFormat:@"%@:%lld|", @"MDMSoftwareUpdatePath", objc_msgSend(v18, "safeULLForKey:", @"MDMSoftwareUpdatePath"];

      v20 = [v6 additionalServerParams];
      v21 = [v20 safeStringForKey:@"MDMSoftwareUpdatePathName"];
      v22 = [v19 stringByAppendingFormat:@"%@:%@|", @"MDMSoftwareUpdatePathName", v21];
    }

    else
    {
      v22 = @"|";
    }

    v25 = [MEMORY[0x277D64460] sharedLogger];
    v24 = [v25 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v28 = self;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading documentation catalog with extended download options: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v23 = [MEMORY[0x277D64460] sharedLogger];
    v24 = [v23 oslog];

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "Options class is not MAMsuDownloadOptions, so unable to set managed options.", buf, 2u);
    }

    v22 = @"|";
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)extendMASoftwareUpdateAssetDownloadOptions:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];

  if (v5)
  {
    v6 = [v4 additionalServerParams];
    v7 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
    [v6 setSafeObject:v7 forKey:@"RequestedProductVersion"];

    v8 = [v4 additionalServerParams];
    v9 = [v8 safeStringForKey:@"RequestedProductVersion"];
    v10 = [@"|" stringByAppendingFormat:@"%@:%@|", @"RequestedProductVersion", v9];
  }

  else
  {
    v10 = @"|";
  }

  if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
  {
    if ([(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs]< 0)
    {
      v13 = [MEMORY[0x277D64428] sharedDiag];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ with MDMUseDelayPeriod, yet delayPeriodSecs < 0 (ignoring delay period)", self];
      [v13 trackAnomaly:@"[POLICY] DOWNLOAD_OPTIONS" forReason:v14 withResult:8102 withError:0];
    }

    else
    {
      v11 = [v4 additionalServerParams];
      v12 = [MEMORY[0x277CCABB0] numberWithLong:{-[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](self, "delayPeriodSecs")}];
      [v11 setSafeObject:v12 forKey:@"DelayPeriod"];

      v13 = [v4 additionalServerParams];
      v14 = [v13 safeObjectForKey:@"DelayPeriod" ofClass:objc_opt_class()];
      v15 = [(__CFString *)v10 stringByAppendingFormat:@"%@:%@|", @"DelayPeriod", v14];

      v10 = v15;
    }
  }

  v16 = [v4 additionalServerParams];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self, "mdmSoftwareUpdatePath")}];
  [v16 setSafeObject:v17 forKey:@"MDMSoftwareUpdatePath"];

  v18 = [v4 additionalServerParams];
  v19 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
  [v18 setSafeObject:v19 forKey:@"MDMSoftwareUpdatePathName"];

  v20 = [v4 additionalServerParams];
  if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
  {
    v21 = @"true";
  }

  else
  {
    v21 = @"false";
  }

  [v20 setSafeObject:v21 forKey:@"DelayRequested"];

  v22 = [v4 additionalServerParams];
  if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    v23 = @"true";
  }

  else
  {
    v23 = @"false";
  }

  [v22 setSafeObject:v23 forKey:@"Supervised"];

  v24 = [v4 additionalServerParams];
  v25 = [v24 safeStringForKey:@"DelayRequested"];
  v26 = [(__CFString *)v10 stringByAppendingFormat:@"%@:%@|", @"DelayRequested", v25];

  v27 = [v4 additionalServerParams];
  v28 = [v27 safeStringForKey:@"Supervised"];
  v29 = [v26 stringByAppendingFormat:@"%@:%@|", @"Supervised", v28];

  v30 = [v4 additionalServerParams];
  v31 = [v29 stringByAppendingFormat:@"%@:%lld|", @"MDMSoftwareUpdatePath", objc_msgSend(v30, "safeULLForKey:", @"MDMSoftwareUpdatePath"];

  v32 = [v4 additionalServerParams];
  v33 = [v32 safeStringForKey:@"MDMSoftwareUpdatePathName"];
  v34 = [v31 stringByAppendingFormat:@"%@:%@|", @"MDMSoftwareUpdatePathName", v33];

  v35 = [MEMORY[0x277D64460] sharedLogger];
  v36 = [v35 oslog];

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v39 = self;
    v40 = 2114;
    v41 = v34;
    _os_log_impl(&dword_23193C000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading software update asset with extended download options: %{public}@", buf, 0x16u);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)extendMSUApplyOptions:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    CFDictionaryAddValue(v4, *MEMORY[0x277D29380], *MEMORY[0x277CBED28]);
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"enabledManagedRequest|"];
    v6 = [@"|" stringByAppendingString:v5];
  }

  else
  {
    v6 = @"|";
  }

  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ MSU apply options with extended options: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRequestedPMVSupervisedPolicy
{
  if (![(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    return 0;
  }

  v3 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)delayPeriodDays
{
  if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
  {
    return [(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs]/ 86400;
  }

  else
  {
    return 0;
  }
}

- (id)mdmPathName
{
  v3 = [(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath];
  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      v4 = [MEMORY[0x277D64428] sharedDiag];
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown mdmPath value: %lu", -[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self, "mdmSoftwareUpdatePath")];
      [v4 trackAnomaly:@"[POLICY] SCAN_OPTIONS" forReason:v5 withResult:8102 withError:0];

      v3 = 0;
    }
  }

  else
  {
    v3 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
  }

  return v3;
}

- (SUCorePolicyExtensionManagedUpdates)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyExtensionManagedUpdates;
  v5 = [(SUCorePolicyExtension *)&v9 init];
  if (v5)
  {
    v5->_supervised = [v4 decodeBoolForKey:@"Supervised"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestedPMV"];
    requestedPMV = v5->_requestedPMV;
    v5->_requestedPMV = v6;

    v5->_MDMUseDelayPeriod = [v4 decodeBoolForKey:@"MDMUseDelayPeriod"];
    v5->_delayPeriodSecs = [v4 decodeIntegerForKey:@"DelayPeriodSecs"];
    v5->_mdmSoftwareUpdatePath = [v4 decodeIntegerForKey:@"MDMSoftwareUpdatePath"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:-[SUCorePolicyExtensionManagedUpdates supervised](self forKey:{"supervised"), @"Supervised"}];
  v4 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
  [v5 encodeObject:v4 forKey:@"RequestedPMV"];

  [v5 encodeBool:-[SUCorePolicyExtensionManagedUpdates MDMUseDelayPeriod](self forKey:{"MDMUseDelayPeriod"), @"MDMUseDelayPeriod"}];
  [v5 encodeInteger:-[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](self forKey:{"delayPeriodSecs"), @"DelayPeriodSecs"}];
  [v5 encodeInteger:-[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self forKey:{"mdmSoftwareUpdatePath"), @"MDMSoftwareUpdatePath"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCorePolicyExtensionManagedUpdates *)v5 supervised];
      if (v6 == [(SUCorePolicyExtensionManagedUpdates *)self supervised])
      {
        v8 = MEMORY[0x277D643F8];
        v9 = [(SUCorePolicyExtensionManagedUpdates *)v5 requestedPMV];
        v10 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
        if ([v8 stringIsEqual:v9 to:v10] && (v11 = -[SUCorePolicyExtensionManagedUpdates MDMUseDelayPeriod](v5, "MDMUseDelayPeriod"), v11 == -[SUCorePolicyExtensionManagedUpdates MDMUseDelayPeriod](self, "MDMUseDelayPeriod")) && (v12 = -[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](v5, "delayPeriodSecs"), v12 == -[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](self, "delayPeriodSecs")))
        {
          v13 = [(SUCorePolicyExtensionManagedUpdates *)v5 mdmSoftwareUpdatePath];
          v7 = v13 == [(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath];
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)nameForMDMSoftwareUpdatePath:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"SUCoreMDMSoftwareUpdatePathUnknown(%ld)", a3];
  }

  else
  {
    v4 = off_27892DF08[a3];
  }

  return v4;
}

- (id)summary
{
  if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    v3 = [&stru_28469CC48 stringByAppendingString:@"|supervised"];
  }

  else
  {
    v3 = &stru_28469CC48;
  }

  v4 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];

  if (v4)
  {
    v5 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
    v6 = [(__CFString *)v3 stringByAppendingFormat:@"|requestedPMV=%@", v5];

    v3 = v6;
  }

  if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
  {
    v7 = [(__CFString *)v3 stringByAppendingFormat:@"|MDMDelay=%ld", [(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs]];

    v3 = v7;
  }

  if ([(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath])
  {
    v8 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
    v9 = [(__CFString *)v3 stringByAppendingFormat:@"|mdmSoftwareUpdatePath=%@", v8];

    v3 = v9;
  }

  if (([(__CFString *)v3 isEqualToString:&stru_28469CC48]& 1) == 0)
  {
    v10 = [(__CFString *)v3 stringByAppendingString:@"|"];

    v3 = v10;
  }

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SUCorePolicyExtensionManagedUpdates *)self extensionName];
  if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
  if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs];
  v9 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
  v10 = [v3 initWithFormat:@"%@(supervised:%@|requestedPMV:%@|MDMUseDelayPeriod:%@|delayPeriodSecs:%ld|mdmSoftwareUpdatePath:%@)", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(SUCorePolicyExtensionManagedUpdates);
  [(SUCorePolicyExtensionManagedUpdates *)v5 setSupervised:[(SUCorePolicyExtensionManagedUpdates *)self supervised]];
  v6 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
  v7 = [v6 copyWithZone:a3];
  [(SUCorePolicyExtensionManagedUpdates *)v5 setRequestedPMV:v7];

  [(SUCorePolicyExtensionManagedUpdates *)v5 setMDMUseDelayPeriod:[(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod]];
  [(SUCorePolicyExtensionManagedUpdates *)v5 setDelayPeriodSecs:[(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs]];
  [(SUCorePolicyExtensionManagedUpdates *)v5 setMdmSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
  return v5;
}

@end