@interface TFBetaLaunchHandleConfiguration
+ (id)configurationFromUserInfo:(id)a3;
- (TFBetaLaunchHandleConfiguration)initWithBundleIdentifier:(id)a3 preloadingLaunchInfo:(id)a4;
- (TFBetaLaunchHandleConfiguration)initWithBundleURL:(id)a3 preloadingLaunchInfo:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodedAsUserInfo;
@end

@implementation TFBetaLaunchHandleConfiguration

- (TFBetaLaunchHandleConfiguration)initWithBundleURL:(id)a3 preloadingLaunchInfo:(id)a4
{
  v6 = a4;
  v7 = [TFBundle bundleIdentifierForBundleURL:a3];
  v8 = [v7 copy];

  v9 = [(TFBetaLaunchHandleConfiguration *)self initWithBundleIdentifier:v8 preloadingLaunchInfo:v6];
  return v9;
}

- (TFBetaLaunchHandleConfiguration)initWithBundleIdentifier:(id)a3 preloadingLaunchInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = TFBetaLaunchHandleConfiguration;
  v8 = [(TFBetaLaunchHandleConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v9;

    objc_storeStrong(&v8->_launchInfo, a4);
  }

  return v8;
}

- (id)encodedAsUserInfo
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  v4 = [(TFBetaLaunchHandleConfiguration *)self bundleIdentifier];
  [v3 setObject:v4 forKeyedSubscript:@"CONFIG_BUNDLE_ID"];

  v5 = [(TFBetaLaunchHandleConfiguration *)self launchInfo];

  if (v5)
  {
    v6 = MEMORY[0x277CCAAB0];
    v7 = [(TFBetaLaunchHandleConfiguration *)self launchInfo];
    v17 = 0;
    v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v17];
    v9 = v17;

    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"CONFIG_LAUNCH_INFO_DATA"];
    }

    else
    {
      v10 = +[TFLogConfiguration defaultConfiguration];
      v11 = [v10 generatedLogger];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = [(TFBetaLaunchHandleConfiguration *)self bundleIdentifier];
        v15 = [v9 localizedDescription];
        *buf = 138543874;
        v19 = v12;
        v20 = 2114;
        v21 = v14;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_26D2C7000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode launch info. error = %@", buf, 0x20u);
      }
    }
  }

  return v3;
}

+ (id)configurationFromUserInfo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"CONFIG_BUNDLE_ID"];
  if (v4)
  {
    v5 = [v3 objectForKeyedSubscript:@"CONFIG_LAUNCH_INFO_DATA"];
    if (v5)
    {
      v15 = 0;
      v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v15];
      v7 = v15;
      if (v7)
      {
        v8 = +[TFLogConfiguration defaultConfiguration];
        v9 = [v8 generatedLogger];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = v10;
          v12 = [v7 localizedDescription];
          *buf = 138543874;
          v17 = v10;
          v18 = 2114;
          v19 = v4;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&dword_26D2C7000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode launch info. error = %@", buf, 0x20u);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TFBetaLaunchHandleConfiguration alloc];
  v5 = [(TFBetaLaunchHandleConfiguration *)self bundleIdentifier];
  v6 = [(TFBetaLaunchHandleConfiguration *)v4 initWithBundleIdentifier:v5];

  return v6;
}

@end