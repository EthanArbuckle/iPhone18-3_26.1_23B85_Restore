@interface IPAAdjustmentVersionInfo
+ (id)_frameworkVersion;
+ (id)currentVersionInfo;
+ (id)frameworkVersion;
+ (id)systemBuildVersion;
+ (id)versionInfoFromArchivalRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVersionInfo:(id)info;
- (id)archivalRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation IPAAdjustmentVersionInfo

- (BOOL)isEqualToVersionInfo:(id)info
{
  infoCopy = info;
  platform = [(IPAAdjustmentVersionInfo *)self platform];
  if (platform || ([infoCopy platform], (appVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    platform2 = [infoCopy platform];
    platform3 = [(IPAAdjustmentVersionInfo *)self platform];
    v9 = [platform2 isEqual:platform3];

    if (platform)
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

  buildNumber = [(IPAAdjustmentVersionInfo *)self buildNumber];
  if (buildNumber || ([infoCopy buildNumber], (appVersion2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    buildNumber2 = [infoCopy buildNumber];
    buildNumber3 = [(IPAAdjustmentVersionInfo *)self buildNumber];
    v13 = [buildNumber2 isEqual:buildNumber3];

    if (buildNumber)
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

  appVersion = [(IPAAdjustmentVersionInfo *)self appVersion];
  if (!appVersion)
  {
    appVersion2 = [infoCopy appVersion];
    if (!appVersion2)
    {
      goto LABEL_17;
    }
  }

  appVersion3 = [infoCopy appVersion];
  appVersion4 = [(IPAAdjustmentVersionInfo *)self appVersion];
  v17 = [appVersion3 isEqual:appVersion4];

  if (!appVersion)
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
  schemaRevision = [infoCopy schemaRevision];
  v19 = schemaRevision == [(IPAAdjustmentVersionInfo *)self schemaRevision];
LABEL_20:

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAdjustmentVersionInfo *)self isEqualToVersionInfo:equalCopy];

  return v5;
}

- (id)archivalRepresentation
{
  v3 = objc_opt_new();
  platform = [(IPAAdjustmentVersionInfo *)self platform];

  if (platform)
  {
    platform2 = [(IPAAdjustmentVersionInfo *)self platform];
    [v3 setObject:platform2 forKeyedSubscript:@"platform"];
  }

  buildNumber = [(IPAAdjustmentVersionInfo *)self buildNumber];

  if (buildNumber)
  {
    buildNumber2 = [(IPAAdjustmentVersionInfo *)self buildNumber];
    [v3 setObject:buildNumber2 forKeyedSubscript:@"buildNumber"];
  }

  appVersion = [(IPAAdjustmentVersionInfo *)self appVersion];

  if (appVersion)
  {
    appVersion2 = [(IPAAdjustmentVersionInfo *)self appVersion];
    [v3 setObject:appVersion2 forKeyedSubscript:@"appVersion"];
  }

  if ([(IPAAdjustmentVersionInfo *)self schemaRevision])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IPAAdjustmentVersionInfo schemaRevision](self, "schemaRevision")}];
    [v3 setObject:v10 forKeyedSubscript:@"schemaRevision"];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  platform = [(IPAAdjustmentVersionInfo *)self platform];
  [v4 setPlatform:platform];

  buildNumber = [(IPAAdjustmentVersionInfo *)self buildNumber];
  [v4 setBuildNumber:buildNumber];

  appVersion = [(IPAAdjustmentVersionInfo *)self appVersion];
  [v4 setAppVersion:appVersion];

  [v4 setSchemaRevision:{-[IPAAdjustmentVersionInfo schemaRevision](self, "schemaRevision")}];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  platform = [(IPAAdjustmentVersionInfo *)self platform];
  buildNumber = [(IPAAdjustmentVersionInfo *)self buildNumber];
  appVersion = [(IPAAdjustmentVersionInfo *)self appVersion];
  v8 = [v3 stringWithFormat:@"<%@:%p platform=%@ buildNumber=%@ appVersion=%@ schemaRevision=%ld>", v4, self, platform, buildNumber, appVersion, -[IPAAdjustmentVersionInfo schemaRevision](self, "schemaRevision")];

  return v8;
}

+ (id)versionInfoFromArchivalRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    v5 = [representationCopy objectForKeyedSubscript:@"platform"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setPlatform:v5];
    }

    v6 = [representationCopy objectForKeyedSubscript:@"buildNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setBuildNumber:v6];
    }

    v7 = [representationCopy objectForKeyedSubscript:@"appVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setAppVersion:v7];
    }

    v8 = [representationCopy objectForKeyedSubscript:@"schemaRevision"];
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
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v4 = v3;
  if (!v3)
  {
    v6 = IPAAdjustmentGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_25E5BB000, v6, OS_LOG_TYPE_ERROR, "Bundle not found for class: %@", &v13, 0xCu);
    }

    goto LABEL_13;
  }

  infoDictionary = [v3 infoDictionary];
  v6 = infoDictionary;
  if (infoDictionary)
  {
    v7 = [infoDictionary objectForKey:*MEMORY[0x277CBED58]];
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

    bundlePath = [v4 bundlePath];
    v13 = 138412290;
    selfCopy = bundlePath;
    v11 = "Failed to get version for bundle at path: %@";
    goto LABEL_11;
  }

  v9 = IPAAdjustmentGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    bundlePath = [v4 bundlePath];
    v13 = 138412290;
    selfCopy = bundlePath;
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
  block[4] = self;
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
  systemBuildVersion = [self systemBuildVersion];
  [v3 setBuildNumber:systemBuildVersion];

  frameworkVersion = [self frameworkVersion];
  [v3 setAppVersion:frameworkVersion];

  [v3 setSchemaRevision:1];

  return v3;
}

@end