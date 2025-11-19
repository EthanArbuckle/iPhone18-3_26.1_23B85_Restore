@interface UserDataClient
- (UsageMetrics)_appUsageMetricsUsingCacheDeleteData:(SEL)a3;
- (UsageMetrics)_cacheDeleteUsageMetricsUsingCacheDeleteData:(SEL)a3;
- (UsageMetrics)_fileUsageMetrics;
- (UsageMetrics)_iCloudUsageMetrics;
- (id)installedAssetMetrics;
@end

@implementation UserDataClient

- (UsageMetrics)_cacheDeleteUsageMetricsUsingCacheDeleteData:(SEL)a3
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  v5 = a4;
  v6 = [v5 valueForKey:@"com.apple.mobile.cache_delete_geo_tile_loader"];
  [v6 longLongValue];
  v7 = ATGetPhysicalSizeForLogicalSize();

  v8 = [v5 valueForKey:@"com.apple.WebBookmarks.CacheDelete"];
  [v8 longLongValue];
  v9 = ATGetPhysicalSizeForLogicalSize();

  v10 = [v5 valueForKey:@"com.apple.mobileassetd.cache-delete"];
  [v10 longLongValue];
  v11 = ATGetPhysicalSizeForLogicalSize();

  v12 = [v5 valueForKey:@"com.apple.itunesstored.CacheDelete"];

  [v12 longLongValue];
  v13 = ATGetPhysicalSizeForLogicalSize();

  v14 = v9 + v7 + v11 + v13;
  retstr->var2 = v14;
  v15 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = v14;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "found %lld bytes of purgeable user data from CacheDelete", &v17, 0xCu);
  }

  return result;
}

- (UsageMetrics)_appUsageMetricsUsingCacheDeleteData:(SEL)a3
{
  v5 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3810000000;
  v18 = &unk_38AF;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v6 = [v5 valueForKey:@"com.apple.mobile.cache_delete_app_container_caches"];
  [v6 longLongValue];
  v16[6] = ATGetPhysicalSizeForLogicalSize();

  v16[5] = v16[6];
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1184;
  v14[3] = &unk_8260;
  v14[4] = &v15;
  [v7 enumerateBundlesOfType:1 block:v14];

  v8 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v16[4];
    v10 = v16[5];
    v11 = v16[6];
    *buf = 134218496;
    v23 = v9;
    v24 = 2048;
    v25 = v10;
    v26 = 2048;
    v27 = v11;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "found %lld app docs, %lld bytes (%lld bytes purgeable)", buf, 0x20u);
  }

  v12 = v16;
  *&retstr->var0 = *(v16 + 2);
  retstr->var2 = v12[6];
  _Block_object_dispose(&v15, 8);

  return result;
}

- (UsageMetrics)_iCloudUsageMetrics
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1798;
  v38 = sub_17A8;
  v39 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_17B0;
  v31[3] = &unk_8238;
  v33 = &v34;
  dsema = dispatch_semaphore_create(0);
  v32 = dsema;
  v3 = v31;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v4 = off_C6A8;
  v43 = off_C6A8;
  if (!off_C6A8)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_18A8;
    v46 = &unk_8288;
    v47 = &v40;
    sub_18A8(buf);
    v4 = v41[3];
  }

  _Block_object_dispose(&v40, 8);
  if (!v4)
  {
    v21 = +[NSAssertionHandler currentHandler];
    v22 = [NSString stringWithUTF8String:"void soft_BRGetTotalApplicationDocumentUsage(void (^__strong)(NSDictionary *__strong, NSError *__strong))"];
    [v21 handleFailureInFunction:v22 file:@"UserDataClient.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v4(v3);

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (v35[5])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v35[5];
    v5 = [obj countByEnumeratingWithState:&v27 objects:v44 count:16];
    if (v5)
    {
      v26 = 0;
      v6 = 0;
      v7 = 0;
      v8 = *v28;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [v35[5] objectForKey:v10];
            v12 = [v11 valueForKey:@"Total Size"];
            [v12 longLongValue];
            v13 = ATGetPhysicalSizeForLogicalSize();

            v14 = [v11 valueForKey:@"Evictable Size"];
            [v14 longLongValue];
            v15 = ATGetPhysicalSizeForLogicalSize();

            v16 = [v11 valueForKey:@"Document Count"];
            v17 = [v16 unsignedLongLongValue];

            v6 += v13;
            v26 += v15;
            v7 += v17;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v27 objects:v44 count:16];
      }

      while (v5);
    }

    else
    {
      v26 = 0;
      v6 = 0;
      v7 = 0;
    }

    v18 = v26;
  }

  else
  {
    v18 = 0;
    v6 = 0;
    v7 = 0;
  }

  retstr->var0 = v7;
  retstr->var1 = v6;
  retstr->var2 = v18;
  v19 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    *&buf[22] = 2048;
    v46 = v18;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "found %lld icloud data files, %lld bytes (%lld purgeable)", buf, 0x20u);
  }

  _Block_object_dispose(&v34, 8);
  return result;
}

- (UsageMetrics)_fileUsageMetrics
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [&off_8BF8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(&off_8BF8);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        *buf = 0;
        v11 = ATGetUsageForPath();
        v7 += *buf;
        v6 += v11;
      }

      v5 = [&off_8BF8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
    retstr->var0 = v7;
    retstr->var1 = v6;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v12 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v19 = v7;
    v20 = 2048;
    v21 = v6;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "found %lld system data files, %lld bytes", buf, 0x16u);
  }

  return result;
}

- (id)installedAssetMetrics
{
  v3 = CacheDeleteCopyItemizedPurgeableSpaceWithInfo();
  v4 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "including purgeable user data from CacheDelete: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v82 = 0x3810000000;
  v83 = &unk_38AF;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3810000000;
  v71 = &unk_38AF;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3810000000;
  v64 = &unk_38AF;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3810000000;
  v57 = &unk_38AF;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v5 = dispatch_group_create();
  v6 = +[NSThread currentThread];
  v7 = [v6 qualityOfService];

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, v7, 0);
  v10 = dispatch_queue_create("com.apple.amp.UserDataClient.updateQueue", v9);

  dispatch_group_enter(v5);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_21E0;
  block[3] = &unk_81E8;
  p_buf = &buf;
  block[4] = self;
  v11 = v5;
  v52 = v11;
  dispatch_async(v10, block);
  dispatch_group_enter(v11);
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_2234;
  v48[3] = &unk_81E8;
  v50 = &v68;
  v48[4] = self;
  v12 = v11;
  v49 = v12;
  dispatch_async(v10, v48);
  dispatch_group_enter(v12);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_2288;
  v44[3] = &unk_8210;
  v47 = &v61;
  v44[4] = self;
  v13 = v3;
  v45 = v13;
  v14 = v12;
  v46 = v14;
  dispatch_async(v10, v44);
  dispatch_group_enter(v14);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_22E0;
  v40[3] = &unk_8210;
  v43 = &v54;
  v40[4] = self;
  v35 = v13;
  v41 = v35;
  v15 = v14;
  v42 = v15;
  v39 = v10;
  dispatch_async(v10, v40);
  v36 = v15;
  dispatch_group_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v37 = *(*(&buf + 1) + 32);
  v38 = *(*(&buf + 1) + 40);
  v17 = v69[4];
  v16 = v69[5];
  v18 = v62[4];
  v19 = v62[5];
  v21 = v55[4];
  v20 = v55[5];
  v22 = *(*(&buf + 1) + 48);
  v23 = v69[6];
  v24 = v62[6];
  v25 = v55[6];
  _ATLogCategorySyncBundle();
  v26 = v17 + v37 + v18 + v21;
  v27 = v16 + v38 + v19 + v20;
  v29 = v28 = v23 + v22 + v24 + v25;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *v75 = 134218496;
    v76 = v26;
    v77 = 2048;
    v78 = v27;
    v79 = 2048;
    v80 = v28;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "found %lld items, %lld bytes, (%lld bytes purgeable)", v75, 0x20u);
  }

  v30 = [NSNumber numberWithUnsignedLongLong:v26];
  v31 = [NSNumber numberWithUnsignedLongLong:v27];
  v32 = [NSNumber numberWithUnsignedLongLong:v28];
  v33 = [NSDictionary dictionaryWithObjectsAndKeys:v30, @"_Count", v31, @"_PhysicalSize", v32, @"_PurgeableSize", 0];

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&buf, 8);

  return v33;
}

@end