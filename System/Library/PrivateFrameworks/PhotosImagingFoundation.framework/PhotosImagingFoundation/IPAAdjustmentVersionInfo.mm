@interface IPAAdjustmentVersionInfo
+ (id)_frameworkVersion;
+ (id)currentVersionInfo;
+ (id)frameworkVersion;
+ (id)systemBuildVersion;
+ (id)versionInfoFromArchivalRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToVersionInfo:(id)a3;
- (id)archivalRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation IPAAdjustmentVersionInfo

- (BOOL)isEqualToVersionInfo:(id)a3
{
  v5 = a3;
  v6 = [(IPAAdjustmentVersionInfo *)self platform];
  if (v6 || ([v5 platform], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = [v5 platform];
    v8 = [(IPAAdjustmentVersionInfo *)self platform];
    v9 = [v7 isEqual:v8];

    if (v6)
    {

      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v10 = [(IPAAdjustmentVersionInfo *)self buildNumber];
  if (v10 || ([v5 buildNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = [v5 buildNumber];
    v12 = [(IPAAdjustmentVersionInfo *)self buildNumber];
    v13 = [v11 isEqual:v12];

    if (v10)
    {

      if (!v13)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if ((v13 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  v14 = [(IPAAdjustmentVersionInfo *)self appVersion];
  if (!v14)
  {
    v3 = [v5 appVersion];
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  v15 = [v5 appVersion];
  v16 = [(IPAAdjustmentVersionInfo *)self appVersion];
  v17 = [v15 isEqual:v16];

  if (!v14)
  {

    if (v17)
    {
      goto LABEL_17;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  if (!v17)
  {
    goto LABEL_19;
  }

LABEL_17:
  v18 = [v5 schemaRevision];
  v19 = v18 == [(IPAAdjustmentVersionInfo *)self schemaRevision];
LABEL_20:

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAdjustmentVersionInfo *)self isEqualToVersionInfo:v4];

  return v5;
}

- (id)archivalRepresentation
{
  v3 = objc_opt_new();
  v4 = [(IPAAdjustmentVersionInfo *)self platform];

  if (v4)
  {
    v5 = [(IPAAdjustmentVersionInfo *)self platform];
    [v3 setObject:v5 forKeyedSubscript:@"platform"];
  }

  v6 = [(IPAAdjustmentVersionInfo *)self buildNumber];

  if (v6)
  {
    v7 = [(IPAAdjustmentVersionInfo *)self buildNumber];
    [v3 setObject:v7 forKeyedSubscript:@"buildNumber"];
  }

  v8 = [(IPAAdjustmentVersionInfo *)self appVersion];

  if (v8)
  {
    v9 = [(IPAAdjustmentVersionInfo *)self appVersion];
    [v3 setObject:v9 forKeyedSubscript:@"appVersion"];
  }

  if ([(IPAAdjustmentVersionInfo *)self schemaRevision])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IPAAdjustmentVersionInfo schemaRevision](self, "schemaRevision")}];
    [v3 setObject:v10 forKeyedSubscript:@"schemaRevision"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(IPAAdjustmentVersionInfo *)self platform];
  [v4 setPlatform:v5];

  v6 = [(IPAAdjustmentVersionInfo *)self buildNumber];
  [v4 setBuildNumber:v6];

  v7 = [(IPAAdjustmentVersionInfo *)self appVersion];
  [v4 setAppVersion:v7];

  [v4 setSchemaRevision:{-[IPAAdjustmentVersionInfo schemaRevision](self, "schemaRevision")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(IPAAdjustmentVersionInfo *)self platform];
  v6 = [(IPAAdjustmentVersionInfo *)self buildNumber];
  v7 = [(IPAAdjustmentVersionInfo *)self appVersion];
  v8 = [v3 stringWithFormat:@"<%@:%p platform=%@ buildNumber=%@ appVersion=%@ schemaRevision=%ld>", v4, self, v5, v6, v7, -[IPAAdjustmentVersionInfo schemaRevision](self, "schemaRevision")];

  return v8;
}

+ (id)versionInfoFromArchivalRepresentation:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    v5 = [v3 objectForKeyedSubscript:@"platform"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setPlatform:v5];
    }

    v6 = [v3 objectForKeyedSubscript:@"buildNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setBuildNumber:v6];
    }

    v7 = [v3 objectForKeyedSubscript:@"appVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setAppVersion:v7];
    }

    v8 = [v3 objectForKeyedSubscript:@"schemaRevision"];
    if (objc_opt_respondsToSelector())
    {
      [v4 setSchemaRevision:{objc_msgSend(v8, "integerValue")}];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_frameworkVersion
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v4 = v3;
  if (!v3)
  {
    v6 = IPAAdjustmentGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = a1;
      _os_log_impl(&dword_25E5BB000, v6, OS_LOG_TYPE_ERROR, "Bundle not found for class: %@", &v13, 0xCu);
    }

    goto LABEL_13;
  }

  v5 = [v3 infoDictionary];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:*MEMORY[0x277CBED58]];
    if (v7)
    {
      v8 = v7;
      goto LABEL_14;
    }

    v9 = IPAAdjustmentGetLog();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v10 = [v4 bundlePath];
    v13 = 138412290;
    v14 = v10;
    v11 = "Failed to get version for bundle at path: %@";
    goto LABEL_11;
  }

  v9 = IPAAdjustmentGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v4 bundlePath];
    v13 = 138412290;
    v14 = v10;
    v11 = "Failed to load Info.plist for bundle at path: %@";
LABEL_11:
    _os_log_impl(&dword_25E5BB000, v9, OS_LOG_TYPE_ERROR, v11, &v13, 0xCu);
  }

LABEL_12:

LABEL_13:
  v8 = 0;
LABEL_14:

  return v8;
}

+ (id)frameworkVersion
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__IPAAdjustmentVersionInfo_frameworkVersion__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (frameworkVersion_onceToken != -1)
  {
    dispatch_once(&frameworkVersion_onceToken, block);
  }

  v2 = frameworkVersion_version;

  return v2;
}

uint64_t __44__IPAAdjustmentVersionInfo_frameworkVersion__block_invoke(uint64_t a1)
{
  frameworkVersion_version = [*(a1 + 32) _frameworkVersion];

  return MEMORY[0x2821F96F8]();
}

+ (id)systemBuildVersion
{
  if (systemBuildVersion_onceToken != -1)
  {
    dispatch_once(&systemBuildVersion_onceToken, &__block_literal_global);
  }

  v3 = systemBuildVersion_buildVersion;

  return v3;
}

uint64_t __46__IPAAdjustmentVersionInfo_systemBuildVersion__block_invoke()
{
  systemBuildVersion_buildVersion = _CFCopySystemVersionDictionaryValue();

  return MEMORY[0x2821F96F8]();
}

+ (id)currentVersionInfo
{
  v3 = objc_opt_new();
  [v3 setPlatform:@"OSX"];
  v4 = [a1 systemBuildVersion];
  [v3 setBuildNumber:v4];

  v5 = [a1 frameworkVersion];
  [v3 setAppVersion:v5];

  [v3 setSchemaRevision:1];

  return v3;
}

@end