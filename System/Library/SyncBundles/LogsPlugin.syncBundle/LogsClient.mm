@interface LogsClient
- (id)installedAssetMetrics;
@end

@implementation LogsClient

- (id)installedAssetMetrics
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [&off_4300 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v15;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(&off_4300);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = ATGetUsageForPath();
        v9 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109634;
          v19 = 0;
          v20 = 2048;
          v21 = v8;
          v22 = 2114;
          v23 = v7;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "found %d files [%lld bytes] of logs in '%{public}@'", buf, 0x1Cu);
        }

        v4 += v8;
      }

      v3 = [&off_4300 countByEnumeratingWithState:&v14 objects:v24 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v10 = [NSNumber numberWithUnsignedLongLong:0];
  v11 = [NSNumber numberWithUnsignedLongLong:v4];
  v12 = [NSDictionary dictionaryWithObjectsAndKeys:v10, @"_Count", v11, @"_PhysicalSize", 0];

  return v12;
}

@end