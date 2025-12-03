@interface TFBetaLaunchHandleConfiguration
+ (id)configurationFromUserInfo:(id)info;
- (TFBetaLaunchHandleConfiguration)initWithBundleIdentifier:(id)identifier preloadingLaunchInfo:(id)info;
- (TFBetaLaunchHandleConfiguration)initWithBundleURL:(id)l preloadingLaunchInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodedAsUserInfo;
@end

@implementation TFBetaLaunchHandleConfiguration

- (TFBetaLaunchHandleConfiguration)initWithBundleURL:(id)l preloadingLaunchInfo:(id)info
{
  infoCopy = info;
  v7 = [TFBundle bundleIdentifierForBundleURL:l];
  v8 = [v7 copy];

  v9 = [(TFBetaLaunchHandleConfiguration *)self initWithBundleIdentifier:v8 preloadingLaunchInfo:infoCopy];
  return v9;
}

- (TFBetaLaunchHandleConfiguration)initWithBundleIdentifier:(id)identifier preloadingLaunchInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = TFBetaLaunchHandleConfiguration;
  v8 = [(TFBetaLaunchHandleConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    objc_storeStrong(&v8->_launchInfo, info);
  }

  return v8;
}

- (id)encodedAsUserInfo
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  bundleIdentifier = [(TFBetaLaunchHandleConfiguration *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"CONFIG_BUNDLE_ID"];

  launchInfo = [(TFBetaLaunchHandleConfiguration *)self launchInfo];

  if (launchInfo)
  {
    v6 = MEMORY[0x277CCAAB0];
    launchInfo2 = [(TFBetaLaunchHandleConfiguration *)self launchInfo];
    v17 = 0;
    v8 = [v6 archivedDataWithRootObject:launchInfo2 requiringSecureCoding:1 error:&v17];
    v9 = v17;

    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"CONFIG_LAUNCH_INFO_DATA"];
    }

    else
    {
      v10 = +[TFLogConfiguration defaultConfiguration];
      generatedLogger = [v10 generatedLogger];
      if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        bundleIdentifier2 = [(TFBetaLaunchHandleConfiguration *)self bundleIdentifier];
        localizedDescription = [v9 localizedDescription];
        *buf = 138543874;
        v19 = v12;
        v20 = 2114;
        v21 = bundleIdentifier2;
        v22 = 2112;
        v23 = localizedDescription;
        _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode launch info. error = %@", buf, 0x20u);
      }
    }
  }

  return v3;
}

+ (id)configurationFromUserInfo:(id)info
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = [infoCopy objectForKeyedSubscript:@"CONFIG_BUNDLE_ID"];
  if (v4)
  {
    v5 = [infoCopy objectForKeyedSubscript:@"CONFIG_LAUNCH_INFO_DATA"];
    if (v5)
    {
      v15 = 0;
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v15];
      v7 = v15;
      if (v7)
      {
        v8 = +[TFLogConfiguration defaultConfiguration];
        generatedLogger = [v8 generatedLogger];
        if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = v10;
          localizedDescription = [v7 localizedDescription];
          *buf = 138543874;
          v17 = v10;
          v18 = 2114;
          v19 = v4;
          v20 = 2112;
          v21 = localizedDescription;
          _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode launch info. error = %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v13 = [[TFBetaLaunchHandleConfiguration alloc] initWithBundleIdentifier:v4 preloadingLaunchInfo:v6];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TFBetaLaunchHandleConfiguration alloc];
  bundleIdentifier = [(TFBetaLaunchHandleConfiguration *)self bundleIdentifier];
  v6 = [(TFBetaLaunchHandleConfiguration *)v4 initWithBundleIdentifier:bundleIdentifier];

  return v6;
}

@end