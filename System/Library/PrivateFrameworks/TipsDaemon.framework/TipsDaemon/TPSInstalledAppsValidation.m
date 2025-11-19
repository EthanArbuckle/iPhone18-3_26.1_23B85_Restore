@interface TPSInstalledAppsValidation
- (TPSInstalledAppsValidation)initWithInstalledAppInfo:(id)a3;
- (id)description;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSInstalledAppsValidation

- (TPSInstalledAppsValidation)initWithInstalledAppInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSInstalledAppsValidation;
  v6 = [(TPSInstalledAppsValidation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfo, a3);
  }

  return v7;
}

- (void)validateWithCompletion:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSInstalledAppsValidation *)self appInfo];
  v6 = [v5 bundleID];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277CC1E70]);
    v9 = [(TPSInstalledAppsValidation *)self appInfo];
    v10 = [v9 bundleID];
    v11 = [v8 initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];

    if ([MEMORY[0x277D716E8] isRecordValid:v11])
    {
      v12 = [v11 shortVersionString];
      v13 = [(TPSInstalledAppsValidation *)self appInfo];
      v14 = [v13 minVersion];
      v15 = [(TPSInstalledAppsValidation *)self appInfo];
      v16 = [v15 maxVersion];
      v17 = v12;
      v18 = v14;
      v19 = v16;
      if (![v17 length] || objc_msgSend(v18, "length") && objc_msgSend(v17, "compare:options:", v18, 64) == -1)
      {
        v20 = 0;
      }

      else if ([v19 length])
      {
        v20 = [v17 compare:v19 options:64] != 1;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }

    v25 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [(TPSInstalledAppsValidation *)self validateWithCompletion:v20, v25];
    }
  }

  else
  {
    v11 = [MEMORY[0x277D71778] targeting];
    v20 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = v21;
      v23 = [(TPSInstalledAppsValidation *)self appInfo];
      v24 = [v23 debugDescription];
      v27 = 138412802;
      v28 = v21;
      v29 = 2112;
      v30 = v24;
      v31 = 1024;
      v32 = 1;
      _os_log_impl(&dword_232D6F000, v11, OS_LOG_TYPE_INFO, "%@ - no bundleID specified in appInfo: %@, Valid: %d", &v27, 0x1Cu);
    }
  }

  v4[2](v4, v20, 0);
  v26 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TPSInstalledAppsValidation *)self appInfo];
  v7 = [v6 debugDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p appInfo = %@>", v5, self, v7];;

  return v8;
}

- (void)validateWithCompletion:(NSObject *)a3 .cold.1(void *a1, char a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = v6;
  v8 = [a1 appInfo];
  v9 = [v8 debugDescription];
  v11 = 138412802;
  v12 = v6;
  v13 = 2112;
  v14 = v9;
  v15 = 1024;
  v16 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - checking installed app: %@, Valid: %d", &v11, 0x1Cu);

  v10 = *MEMORY[0x277D85DE8];
}

@end