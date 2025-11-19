@interface WADeviceAnalyticsNetwork
+ (id)networkWith:(id)a3;
- (WADeviceAnalyticsNetwork)initWith:(id)a3;
- (id)description;
@end

@implementation WADeviceAnalyticsNetwork

+ (id)networkWith:(id)a3
{
  v3 = a3;
  v4 = [[WADeviceAnalyticsNetwork alloc] initWith:v3];

  return v4;
}

- (WADeviceAnalyticsNetwork)initWith:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = WADeviceAnalyticsNetwork;
  v5 = [(WADeviceAnalyticsNetwork *)&v34 init];
  if (v5)
  {
    v6 = [v4 ssid];
    ssid = v5->_ssid;
    v5->_ssid = v6;

    v28 = v5;
    v5->_isHome = [v4 isHome];
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = v4;
    v10 = [v4 bss];
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [v15 lan];

          if (!v16)
          {
            v17 = WALogCategoryDeviceStoreHandle();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446722;
              v36 = "[WADeviceAnalyticsNetwork initWith:]";
              v37 = 1024;
              v38 = 1538;
              v39 = 2112;
              v40 = v15;
              _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Warning: nil LAN for %@", buf, 0x1Cu);
            }
          }

          v18 = [v15 lan];
          v19 = [WAPersistentContainer getConstraintsValues:v18];

          [v8 addObject:v19];
          v20 = [v19 allValues];
          v21 = [v15 bssid];
          [(NSDictionary *)v9 setObject:v20 forKeyedSubscript:v21];
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v41 count:16];
      }

      while (v12);
    }

    v5 = v28;
    bssidsAndLans = v28->_bssidsAndLans;
    v28->_bssidsAndLans = v9;
    v23 = v9;

    v24 = [MEMORY[0x1E695DFD8] setWithSet:v8];
    lans = v28->_lans;
    v28->_lans = v24;

    v4 = v29;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v2 = &stru_1F481C4A0;
  if (self->_isHome)
  {
    v2 = @"(isHome)";
  }

  lans = self->_lans;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ lans:%@ bssidsAndLans:%@", self->_ssid, v2, lans, self->_bssidsAndLans];
}

@end