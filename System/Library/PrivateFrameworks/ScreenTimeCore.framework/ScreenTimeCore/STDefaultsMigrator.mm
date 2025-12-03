@interface STDefaultsMigrator
- (BOOL)isMigrationNeeded;
- (id)oldToNewKeyNames;
- (id)remotemanagementdDefaults;
- (void)migrateUserDefaults;
@end

@implementation STDefaultsMigrator

- (id)oldToNewKeyNames
{
  v4[0] = @"SCREENTIME_ENABLED";
  v4[1] = @"SCREENTIME_SYNC_ENABLED";
  v5[0] = @"ScreenTimeEnabled";
  v5[1] = @"SyncEnabled";
  v4[2] = @"SCREENTIME_LAST_TIME_ZONE_NAME";
  v4[3] = @"SCREENTIME_PIN_MIGRATED";
  v5[2] = @"LastTimeZoneName";
  v5[3] = @"PINMigrated";
  v4[4] = @"SCREENTIME_RESTRICTIONS_MIGRATION_HAS_RUN";
  v4[5] = @"SCREENTIME_USAGE_GENESIS_DATE";
  v5[4] = @"RestrictionsMigrationVersion";
  v5[5] = @"UsageGenesisDate";
  v4[6] = @"SCREENTIME_CLOUD_MIRROR_LAST_SYNC_ATTEMPT_DATE";
  v5[6] = @"LastSyncDate";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:7];

  return v2;
}

- (id)remotemanagementdDefaults
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.remotemanagementd"];

  return v2;
}

- (BOOL)isMigrationNeeded
{
  screenTimeDefaults = [(STDefaultsMigrator *)self screenTimeDefaults];
  v3 = [screenTimeDefaults valueForKey:@"ScreenTimeEnabled"];
  v4 = v3 == 0;

  return v4;
}

- (void)migrateUserDefaults
{
  screenTimeDefaults = [(STDefaultsMigrator *)self screenTimeDefaults];
  remotemanagementdDefaults = [(STDefaultsMigrator *)self remotemanagementdDefaults];
  oldToNewKeyNames = [(STDefaultsMigrator *)self oldToNewKeyNames];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [oldToNewKeyNames countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(oldToNewKeyNames);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [oldToNewKeyNames objectForKeyedSubscript:v11];
        v13 = [screenTimeDefaults valueForKey:v12];

        if (!v13)
        {
          v14 = [screenTimeDefaults valueForKey:v11];
          if (v14 || ([remotemanagementdDefaults valueForKey:v11], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v15 = v14;
            [screenTimeDefaults setValue:v14 forKey:v12];
            [screenTimeDefaults setValue:0 forKey:v11];
            ++v8;
          }
        }
      }

      v7 = [oldToNewKeyNames countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v16 = +[STLog screenTimeOrganizationController];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Migrated %d defaults to new names", buf, 8u);
  }
}

@end