@interface PPSFeatureFlagReader
- (BOOL)hasEntitlements;
- (PPSFeatureFlagReader)init;
- (void)getFeatureFlags:(id)flags;
@end

@implementation PPSFeatureFlagReader

- (PPSFeatureFlagReader)init
{
  v9.receiver = self;
  v9.super_class = PPSFeatureFlagReader;
  v2 = [(PPSFeatureFlagReader *)&v9 init];
  if (v2)
  {
    signal(15, 1);
    v3 = dispatch_get_global_queue(21, 0);
    [(PPSFeatureFlagReader *)v2 setSigterm_queue:v3];

    sigterm_queue = [(PPSFeatureFlagReader *)v2 sigterm_queue];
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, sigterm_queue);
    [(PPSFeatureFlagReader *)v2 setSigterm_source:v5];

    sigterm_source = [(PPSFeatureFlagReader *)v2 sigterm_source];
    dispatch_source_set_event_handler(sigterm_source, &stru_1000042B8);

    sigterm_source2 = [(PPSFeatureFlagReader *)v2 sigterm_source];
    dispatch_activate(sigterm_source2);
  }

  return v2;
}

- (void)getFeatureFlags:(id)flags
{
  flagsCopy = flags;
  context = objc_autoreleasePoolPush();
  if ([(PPSFeatureFlagReader *)self hasEntitlements])
  {
    v4 = +[FFConfiguration shared];
    domains = [v4 domains];

    if (![domains count])
    {
      v6 = logPPSFeatureFlagReader();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100001ED0(v6);
      }

      flagsCopy[2](flagsCopy, &__NSArray0__struct);
    }

    v7 = logPPSFeatureFlagReader();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100001F14(domains, v7);
    }

    v33 = +[NSMutableArray array];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = domains;
    v30 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v30)
    {
      v29 = *v41;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v41 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v40 + 1) + 8 * i);
          v9 = +[FFConfiguration shared];
          v32 = [v9 featuresForDomain:v8];

          if ([v32 count])
          {
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = v32;
            v10 = [v34 countByEnumeratingWithState:&v36 objects:v50 count:16];
            if (v10)
            {
              v35 = *v37;
              do
              {
                v11 = 0;
                do
                {
                  if (*v37 != v35)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v12 = *(*(&v36 + 1) + 8 * v11);
                  v13 = +[FFConfiguration shared];
                  v14 = [v13 stateForFeature:v12 domain:v8];

                  if (v14)
                  {
                    v15 = +[FFConfiguration shared];
                    v16 = [v15 defaultStateForFeature:v12 domain:v8];

                    if (!v16 || (v17 = [v16 value], v17 != objc_msgSend(v14, "value")))
                    {
                      attributes = [v16 attributes];
                      v19 = [attributes objectForKeyedSubscript:@"TargetRelease"];
                      value = [v19 value];
                      v21 = logPPSFeatureFlagReader();
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412802;
                        v45 = v8;
                        v46 = 2112;
                        v47 = v12;
                        v48 = 2112;
                        v49 = v19;
                        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "[PPSFeatureFlagReader] FFDomain: %@, FFName: %@, FFTargetRelease: %@", buf, 0x20u);
                      }

                      v22 = +[NSMutableDictionary dictionary];
                      [v22 setObject:v8 forKeyedSubscript:@"Domain"];
                      [v22 setObject:v12 forKeyedSubscript:@"FeatureName"];
                      v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 value]);
                      [v22 setObject:v23 forKeyedSubscript:@"State"];

                      if (value)
                      {
                        v24 = value;
                      }

                      else
                      {
                        v24 = @"Unknown";
                      }

                      [v22 setObject:v24 forKeyedSubscript:@"TargetRelease"];
                      [v33 addObject:v22];
                    }
                  }

                  v11 = v11 + 1;
                }

                while (v10 != v11);
                v10 = [v34 countByEnumeratingWithState:&v36 objects:v50 count:16];
              }

              while (v10);
            }
          }
        }

        v30 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v30);
    }

    flagsCopy[2](flagsCopy, v33);
  }

  else
  {
    v25 = logPPSFeatureFlagReader();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100001E8C(v25);
    }

    flagsCopy[2](flagsCopy, &__NSArray0__struct);
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)hasEntitlements
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = [v2 valueForEntitlement:@"com.apple.powerlog.PPSFeatureFlagReader.launch-xpc"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = logPPSFeatureFlagReader();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10000207C(v7, [v2 processIdentifier], v5);
    }

    v4 = 0;
  }

  return v4;
}

@end