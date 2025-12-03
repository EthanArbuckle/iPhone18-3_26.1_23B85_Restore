@interface SUCorePolicyExtensionManagedUpdates
+ (id)nameForMDMSoftwareUpdatePath:(unint64_t)path;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRequestedPMVSupervisedPolicy;
- (SUCorePolicyExtensionManagedUpdates)init;
- (SUCorePolicyExtensionManagedUpdates)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mdmPathName;
- (id)summary;
- (int64_t)delayPeriodDays;
- (void)encodeWithCoder:(id)coder;
- (void)extendMADocumentationCatalogDownloadOptions:(id)options descriptor:(id)descriptor;
- (void)extendMASoftwareUpdateAssetDownloadOptions:(id)options;
- (void)extendMASoftwareUpdateCatalogDownloadOptions:(id)options;
- (void)extendMSUApplyOptions:(id)options;
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

- (void)extendMASoftwareUpdateCatalogDownloadOptions:(id)options
{
  v30 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    supervised = [(SUCorePolicyExtensionManagedUpdates *)self supervised];
    v6 = @"NO";
    if (supervised)
    {
      v6 = @"YES";
    }

    v7 = [@"|" stringByAppendingFormat:@"supervised:%@|", v6];
    if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
    {
      [optionsCopy setSupervised:{-[SUCorePolicyExtensionManagedUpdates supervised](self, "supervised")}];
      requestedPMV = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];

      if (requestedPMV)
      {
        requestedPMV2 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
        [optionsCopy setRequestedProductVersion:requestedPMV2];

        requestedProductVersion = [optionsCopy requestedProductVersion];
        v11 = [(__CFString *)v7 stringByAppendingFormat:@"requestedPMV:%@|", requestedProductVersion];

        v7 = v11;
      }

      if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
      {
        if ([(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs]< 0)
        {
          mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
          v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ with MDMUseDelayPeriod, yet delayPeriodSecs < 0 (ignoring delay period)", self];
          [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] DOWNLOAD_OPTIONS" forReason:v17 withResult:8102 withError:0];
        }

        else
        {
          [optionsCopy setDelayPeriod:{-[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](self, "delayPeriodSecs") / 86400}];
          -[__CFString stringByAppendingFormat:](v7, "stringByAppendingFormat:", @"delayPeriod:%ld|", [optionsCopy delayPeriod]);
          v7 = mEMORY[0x277D64428] = v7;
        }
      }

      additionalServerParams = [optionsCopy additionalServerParams];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self, "mdmSoftwareUpdatePath")}];
      [additionalServerParams setSafeObject:v19 forKey:@"MDMSoftwareUpdatePath"];

      additionalServerParams2 = [optionsCopy additionalServerParams];
      v21 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
      [additionalServerParams2 setSafeObject:v21 forKey:@"MDMSoftwareUpdatePathName"];

      additionalServerParams3 = [optionsCopy additionalServerParams];
      v23 = -[__CFString stringByAppendingFormat:](v7, "stringByAppendingFormat:", @"%@:%lld|", @"MDMSoftwareUpdatePath", [additionalServerParams3 safeULLForKey:@"MDMSoftwareUpdatePath"]);

      additionalServerParams4 = [optionsCopy additionalServerParams];
      v16 = [additionalServerParams4 safeStringForKey:@"MDMSoftwareUpdatePathName"];
      v7 = [v23 stringByAppendingFormat:@"%@:%@|", @"MDMSoftwareUpdatePathName", v16];
    }

    else
    {
      additionalServerParams4 = [MEMORY[0x277D64428] sharedDiag];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ without supervised = YES, yet calling extendMASoftwareUpdateCatalogDownloadOptions (no extended download options will be added)", self];
      [additionalServerParams4 trackAnomaly:@"[POLICY] DOWNLOAD_OPTIONS" forReason:v16 withResult:8102 withError:0];
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v28 = 2114;
      v29 = v7;
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
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Options class is not MAMsuDownloadOptions, so unable to set managed options.", buf, 2u);
    }

    v7 = @"|";
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)extendMADocumentationCatalogDownloadOptions:(id)options descriptor:(id)descriptor
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
    {
      [optionsCopy setSupervised:{-[SUCorePolicyExtensionManagedUpdates supervised](self, "supervised")}];
      supervised = [optionsCopy supervised];
      v9 = @"NO";
      if (supervised)
      {
        v9 = @"YES";
      }

      v10 = [@"|" stringByAppendingFormat:@"supervised:%@|", v9];
      productVersion = [descriptorCopy productVersion];
      [optionsCopy setRequestedProductVersion:productVersion];

      requestedProductVersion = [optionsCopy requestedProductVersion];
      v13 = [v10 stringByAppendingFormat:@"requestedPMV:%@|", requestedProductVersion];

      additionalServerParams = [optionsCopy additionalServerParams];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self, "mdmSoftwareUpdatePath")}];
      [additionalServerParams setSafeObject:v15 forKey:@"MDMSoftwareUpdatePath"];

      additionalServerParams2 = [optionsCopy additionalServerParams];
      v17 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
      [additionalServerParams2 setSafeObject:v17 forKey:@"MDMSoftwareUpdatePathName"];

      additionalServerParams3 = [optionsCopy additionalServerParams];
      v19 = [v13 stringByAppendingFormat:@"%@:%lld|", @"MDMSoftwareUpdatePath", objc_msgSend(additionalServerParams3, "safeULLForKey:", @"MDMSoftwareUpdatePath"];

      additionalServerParams4 = [optionsCopy additionalServerParams];
      v21 = [additionalServerParams4 safeStringForKey:@"MDMSoftwareUpdatePathName"];
      v22 = [v19 stringByAppendingFormat:@"%@:%@|", @"MDMSoftwareUpdatePathName", v21];
    }

    else
    {
      v22 = @"|";
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading documentation catalog with extended download options: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Options class is not MAMsuDownloadOptions, so unable to set managed options.", buf, 2u);
    }

    v22 = @"|";
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)extendMASoftwareUpdateAssetDownloadOptions:(id)options
{
  v42 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  requestedPMV = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];

  if (requestedPMV)
  {
    additionalServerParams = [optionsCopy additionalServerParams];
    requestedPMV2 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
    [additionalServerParams setSafeObject:requestedPMV2 forKey:@"RequestedProductVersion"];

    additionalServerParams2 = [optionsCopy additionalServerParams];
    v9 = [additionalServerParams2 safeStringForKey:@"RequestedProductVersion"];
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
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ with MDMUseDelayPeriod, yet delayPeriodSecs < 0 (ignoring delay period)", self];
      [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] DOWNLOAD_OPTIONS" forReason:v14 withResult:8102 withError:0];
    }

    else
    {
      additionalServerParams3 = [optionsCopy additionalServerParams];
      v12 = [MEMORY[0x277CCABB0] numberWithLong:{-[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](self, "delayPeriodSecs")}];
      [additionalServerParams3 setSafeObject:v12 forKey:@"DelayPeriod"];

      mEMORY[0x277D64428] = [optionsCopy additionalServerParams];
      v14 = [mEMORY[0x277D64428] safeObjectForKey:@"DelayPeriod" ofClass:objc_opt_class()];
      v15 = [(__CFString *)v10 stringByAppendingFormat:@"%@:%@|", @"DelayPeriod", v14];

      v10 = v15;
    }
  }

  additionalServerParams4 = [optionsCopy additionalServerParams];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self, "mdmSoftwareUpdatePath")}];
  [additionalServerParams4 setSafeObject:v17 forKey:@"MDMSoftwareUpdatePath"];

  additionalServerParams5 = [optionsCopy additionalServerParams];
  v19 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
  [additionalServerParams5 setSafeObject:v19 forKey:@"MDMSoftwareUpdatePathName"];

  additionalServerParams6 = [optionsCopy additionalServerParams];
  if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
  {
    v21 = @"true";
  }

  else
  {
    v21 = @"false";
  }

  [additionalServerParams6 setSafeObject:v21 forKey:@"DelayRequested"];

  additionalServerParams7 = [optionsCopy additionalServerParams];
  if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    v23 = @"true";
  }

  else
  {
    v23 = @"false";
  }

  [additionalServerParams7 setSafeObject:v23 forKey:@"Supervised"];

  additionalServerParams8 = [optionsCopy additionalServerParams];
  v25 = [additionalServerParams8 safeStringForKey:@"DelayRequested"];
  v26 = [(__CFString *)v10 stringByAppendingFormat:@"%@:%@|", @"DelayRequested", v25];

  additionalServerParams9 = [optionsCopy additionalServerParams];
  v28 = [additionalServerParams9 safeStringForKey:@"Supervised"];
  v29 = [v26 stringByAppendingFormat:@"%@:%@|", @"Supervised", v28];

  additionalServerParams10 = [optionsCopy additionalServerParams];
  v31 = [v29 stringByAppendingFormat:@"%@:%lld|", @"MDMSoftwareUpdatePath", objc_msgSend(additionalServerParams10, "safeULLForKey:", @"MDMSoftwareUpdatePath"];

  additionalServerParams11 = [optionsCopy additionalServerParams];
  v33 = [additionalServerParams11 safeStringForKey:@"MDMSoftwareUpdatePathName"];
  v34 = [v31 stringByAppendingFormat:@"%@:%@|", @"MDMSoftwareUpdatePathName", v33];

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v40 = 2114;
    v41 = v34;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading software update asset with extended download options: %{public}@", buf, 0x16u);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)extendMSUApplyOptions:(id)options
{
  v14 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    CFDictionaryAddValue(optionsCopy, *MEMORY[0x277D29380], *MEMORY[0x277CBED28]);
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"enabledManagedRequest|"];
    v6 = [@"|" stringByAppendingString:v5];
  }

  else
  {
    v6 = @"|";
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ MSU apply options with extended options: %{public}@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRequestedPMVSupervisedPolicy
{
  if (![(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    return 0;
  }

  requestedPMV = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
  v4 = requestedPMV != 0;

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
  mdmSoftwareUpdatePath = [(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath];
  if ((mdmSoftwareUpdatePath - 1) >= 2)
  {
    if (mdmSoftwareUpdatePath)
    {
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown mdmPath value: %lu", -[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self, "mdmSoftwareUpdatePath")];
      [mEMORY[0x277D64428] trackAnomaly:@"[POLICY] SCAN_OPTIONS" forReason:v5 withResult:8102 withError:0];

      mdmSoftwareUpdatePath = 0;
    }
  }

  else
  {
    mdmSoftwareUpdatePath = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
  }

  return mdmSoftwareUpdatePath;
}

- (SUCorePolicyExtensionManagedUpdates)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyExtensionManagedUpdates;
  v5 = [(SUCorePolicyExtension *)&v9 init];
  if (v5)
  {
    v5->_supervised = [coderCopy decodeBoolForKey:@"Supervised"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RequestedPMV"];
    requestedPMV = v5->_requestedPMV;
    v5->_requestedPMV = v6;

    v5->_MDMUseDelayPeriod = [coderCopy decodeBoolForKey:@"MDMUseDelayPeriod"];
    v5->_delayPeriodSecs = [coderCopy decodeIntegerForKey:@"DelayPeriodSecs"];
    v5->_mdmSoftwareUpdatePath = [coderCopy decodeIntegerForKey:@"MDMSoftwareUpdatePath"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SUCorePolicyExtensionManagedUpdates supervised](self forKey:{"supervised"), @"Supervised"}];
  requestedPMV = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
  [coderCopy encodeObject:requestedPMV forKey:@"RequestedPMV"];

  [coderCopy encodeBool:-[SUCorePolicyExtensionManagedUpdates MDMUseDelayPeriod](self forKey:{"MDMUseDelayPeriod"), @"MDMUseDelayPeriod"}];
  [coderCopy encodeInteger:-[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](self forKey:{"delayPeriodSecs"), @"DelayPeriodSecs"}];
  [coderCopy encodeInteger:-[SUCorePolicyExtensionManagedUpdates mdmSoftwareUpdatePath](self forKey:{"mdmSoftwareUpdatePath"), @"MDMSoftwareUpdatePath"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      supervised = [(SUCorePolicyExtensionManagedUpdates *)v5 supervised];
      if (supervised == [(SUCorePolicyExtensionManagedUpdates *)self supervised])
      {
        v8 = MEMORY[0x277D643F8];
        requestedPMV = [(SUCorePolicyExtensionManagedUpdates *)v5 requestedPMV];
        requestedPMV2 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
        if ([v8 stringIsEqual:requestedPMV to:requestedPMV2] && (v11 = -[SUCorePolicyExtensionManagedUpdates MDMUseDelayPeriod](v5, "MDMUseDelayPeriod"), v11 == -[SUCorePolicyExtensionManagedUpdates MDMUseDelayPeriod](self, "MDMUseDelayPeriod")) && (v12 = -[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](v5, "delayPeriodSecs"), v12 == -[SUCorePolicyExtensionManagedUpdates delayPeriodSecs](self, "delayPeriodSecs")))
        {
          mdmSoftwareUpdatePath = [(SUCorePolicyExtensionManagedUpdates *)v5 mdmSoftwareUpdatePath];
          v7 = mdmSoftwareUpdatePath == [(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath];
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

+ (id)nameForMDMSoftwareUpdatePath:(unint64_t)path
{
  if (path >= 3)
  {
    path = [MEMORY[0x277CCACA8] stringWithFormat:@"SUCoreMDMSoftwareUpdatePathUnknown(%ld)", path];
  }

  else
  {
    path = off_27892DF08[path];
  }

  return path;
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

  requestedPMV = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];

  if (requestedPMV)
  {
    requestedPMV2 = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
    v6 = [(__CFString *)v3 stringByAppendingFormat:@"|requestedPMV=%@", requestedPMV2];

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
  extensionName = [(SUCorePolicyExtensionManagedUpdates *)self extensionName];
  if ([(SUCorePolicyExtensionManagedUpdates *)self supervised])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  requestedPMV = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
  if ([(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  delayPeriodSecs = [(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs];
  v9 = [SUCorePolicyExtensionManagedUpdates nameForMDMSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
  v10 = [v3 initWithFormat:@"%@(supervised:%@|requestedPMV:%@|MDMUseDelayPeriod:%@|delayPeriodSecs:%ld|mdmSoftwareUpdatePath:%@)", extensionName, v5, requestedPMV, v7, delayPeriodSecs, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(SUCorePolicyExtensionManagedUpdates);
  [(SUCorePolicyExtensionManagedUpdates *)v5 setSupervised:[(SUCorePolicyExtensionManagedUpdates *)self supervised]];
  requestedPMV = [(SUCorePolicyExtensionManagedUpdates *)self requestedPMV];
  v7 = [requestedPMV copyWithZone:zone];
  [(SUCorePolicyExtensionManagedUpdates *)v5 setRequestedPMV:v7];

  [(SUCorePolicyExtensionManagedUpdates *)v5 setMDMUseDelayPeriod:[(SUCorePolicyExtensionManagedUpdates *)self MDMUseDelayPeriod]];
  [(SUCorePolicyExtensionManagedUpdates *)v5 setDelayPeriodSecs:[(SUCorePolicyExtensionManagedUpdates *)self delayPeriodSecs]];
  [(SUCorePolicyExtensionManagedUpdates *)v5 setMdmSoftwareUpdatePath:[(SUCorePolicyExtensionManagedUpdates *)self mdmSoftwareUpdatePath]];
  return v5;
}

@end