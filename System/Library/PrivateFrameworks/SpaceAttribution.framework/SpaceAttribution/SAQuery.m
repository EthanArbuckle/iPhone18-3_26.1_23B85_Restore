@interface SAQuery
+ (BOOL)isStagedAppContainer:(container_object_s *)a3;
+ (id)getFSPurgeableInfo:(id)a3 options:(int)a4;
+ (id)getVendorNameForBundleIDs:(id)a3;
+ (id)getVendorNameFromBundleRecord:(id)a3;
+ (id)guesstimateBundleId:(id)a3;
+ (void)enumerateAppPathsOnVolume:(id)a3;
+ (void)enumeratePurgeableAssets:(int)a3 block:(id)a4;
+ (void)enumerateWithContainerQuery:(unint64_t)a3 existingQuery:(container_query_s *)a4 outQuery:(container_query_s *)a5 transientContainers:(BOOL)a6 stagedContainers:(BOOL)a7 block:(id)a8;
+ (void)getAppPathForAppContainer:(id)a3 identifier:(id)a4 block:(id)a5;
+ (void)getAppPathForContainer:(id)a3 identifier:(id)a4 containerClass:(unint64_t)a5 personaString:(id)a6 existingQuery:(container_query_s *)a7 block:(id)a8;
+ (void)getAppPathForDataContainer:(id)a3 identifier:(id)a4 containerClass:(unint64_t)a5 personaString:(id)a6 existingQuery:(container_query_s *)a7 block:(id)a8;
+ (void)getAppPathForInternalDaemonContainer:(id)a3 identifier:(id)a4 block:(id)a5;
+ (void)installedAppGroupsAtVolume:(id)a3;
+ (void)installedAppsAtVolume:(BOOL)a3 sortForUrgency:(int)a4 options:(int)a5 block:(id)a6;
@end

@implementation SAQuery

+ (void)installedAppsAtVolume:(BOOL)a3 sortForUrgency:(int)a4 options:(int)a5 block:(id)a6
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FB3C;
  v7[3] = &unk_100065A20;
  v10 = a5 & 1;
  v9 = a4;
  v8 = a6;
  v6 = v8;
  [SAQuery enumerateAppPathsOnVolume:v7];
}

+ (void)installedAppGroupsAtVolume:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  if (container_query_create())
  {
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v16 = v3;
    iterate_results_sync = container_query_iterate_results_sync();
    container_query_get_last_error();
    v6 = container_error_copy_unlocalized_description();
    if (iterate_results_sync)
    {
      v7 = SALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        sub_100041394();
      }
    }

    else
    {
      v7 = SALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10004132C();
      }
    }

    free(v6);
    container_query_free();
    v8 = v16;
  }

  else
  {
    v8 = SALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000413FC(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  _Block_object_dispose(v17, 8);
  objc_autoreleasePoolPop(v4);
}

+ (void)enumeratePurgeableAssets:(int)a3 block:(id)a4
{
  v5 = a4;
  v4 = v5;
  CacheManagementEnumerateAssets();
}

+ (BOOL)isStagedAppContainer:(container_object_s *)a3
{
  path = container_get_path();
  if (path)
  {
    v9 = 0;
    v4 = container_copy_info();
    if (!v4)
    {
      v6 = SALog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000415D4(path, &v9);
      }

      LOBYTE(path) = 0;
      goto LABEL_15;
    }

    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [v6 objectForKeyedSubscript:@"com.apple.MobileContainerManager.StagedUpdateContainer"];
        LOBYTE(path) = v7 != 0;
LABEL_14:

LABEL_15:
        return path;
      }

      v7 = SALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100041504();
      }
    }

    else
    {
      v7 = SALog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10004156C();
      }
    }

    v6 = 0;
    LOBYTE(path) = 0;
    goto LABEL_14;
  }

  return path;
}

+ (void)enumerateAppPathsOnVolume:(id)a3
{
  v4 = 0;
  v3 = a3;
  [SAQuery enumerateWithContainerQuery:2 existingQuery:0 outQuery:&v4 transientContainers:0 stagedContainers:0 block:v3];
  [SAQuery enumerateWithContainerQuery:4 existingQuery:v4 outQuery:0 transientContainers:0 stagedContainers:0 block:v3];
  [SAQuery enumerateWithContainerQuery:10 existingQuery:v4 outQuery:0 transientContainers:0 stagedContainers:0 block:v3];
  [SAQuery enumerateWithContainerQuery:1 existingQuery:v4 outQuery:0 transientContainers:1 stagedContainers:1 block:v3];

  if (v4)
  {
    container_query_free();
  }
}

+ (void)enumerateWithContainerQuery:(unint64_t)a3 existingQuery:(container_query_s *)a4 outQuery:(container_query_s *)a5 transientContainers:(BOOL)a6 stagedContainers:(BOOL)a7 block:(id)a8
{
  v12 = a8;
  context = objc_autoreleasePoolPush();
  v13 = container_query_create();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v48 = 1;
  if (v13)
  {
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    container_query_set_transient();
    v38 = _NSConcreteStackBlock;
    v39 = 3221225472;
    v40 = sub_100030500;
    v41 = &unk_100065A98;
    v45 = a6;
    v46 = a7;
    v16 = v14;
    v42 = v16;
    v17 = v15;
    v43 = v17;
    v44 = v47;
    iterate_results_sync = container_query_iterate_results_sync();
    container_query_get_last_error();
    v19 = container_error_copy_unlocalized_description();
    if (iterate_results_sync)
    {
      v20 = SALog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_100041394();
      }
    }

    else
    {
      v20 = SALog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10004132C();
      }
    }

    free(v19);
    v29 = [v16 count];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100030748;
    block[3] = &unk_100065AC0;
    v33 = v17;
    v34 = v16;
    v36 = a3;
    v37 = a4;
    v35 = v12;
    dispatch_apply(v29, 0, block);
    if (a5)
    {
      *a5 = v13;
    }

    else
    {
      container_query_free();
    }

    v21 = v42;
  }

  else
  {
    v21 = SALog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000413FC(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  _Block_object_dispose(v47, 8);
  objc_autoreleasePoolPop(context);
}

+ (void)getAppPathForInternalDaemonContainer:(id)a3 identifier:(id)a4 block:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 path];
  v10 = [SAAppPath appPathWithRecord:0 identifier:v8 dataContainerPath:v9 personaUniqueString:0 isPlugin:0 isGroup:0];

  v7[2](v7, v10);
}

+ (void)getAppPathForAppContainer:(id)a3 identifier:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v17 = 0;
  v10 = [LSBundleRecord bundleRecordWithBundleIdentifier:v8 allowPlaceholder:1 error:&v17];
  v11 = v17;
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v15 = [v10 bundleIdentifier];
    v14 = [SAAppPath appPathWithRecord:v10 identifier:v15 dataContainerPath:0 personaUniqueString:0 isPlugin:0 isGroup:0];

    v16 = [v7 path];
    [v14 addBinaryPath:v16];

    v9[2](v9, v14);
  }

  else
  {
    v14 = SALog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004164C();
    }
  }
}

+ (void)getAppPathForDataContainer:(id)a3 identifier:(id)a4 containerClass:(unint64_t)a5 personaString:(id)a6 existingQuery:(container_query_s *)a7 block:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 1;
  if (a5 == 4)
  {
    v33 = 0;
    v17 = &v33;
    v18 = [LSApplicationExtensionRecord bundleRecordWithBundleIdentifier:v14 allowPlaceholder:1 error:&v33];
  }

  else
  {
    v32 = 0;
    v17 = &v32;
    v18 = [LSBundleRecord bundleRecordWithBundleIdentifier:v14 allowPlaceholder:1 error:&v32];
  }

  v19 = v18;
  v20 = *v17;
  v21 = v20;
  if (!v19 || v20)
  {
    v23 = SALog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004164C();
    }
  }

  else
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100030C8C;
    v24[3] = &unk_100065AE8;
    v25 = v19;
    v31 = a5 == 4;
    v26 = v15;
    v30 = a7;
    v27 = v14;
    v29 = v34;
    v28 = v16;
    v22 = objc_retainBlock(v24);
    (v22[2])(v22, v13);

    v23 = v25;
  }

  _Block_object_dispose(v34, 8);
}

+ (void)getAppPathForContainer:(id)a3 identifier:(id)a4 containerClass:(unint64_t)a5 personaString:(id)a6 existingQuery:(container_query_s *)a7 block:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  if (a5 <= 3)
  {
    if (a5 == 1)
    {
      [a1 getAppPathForAppContainer:v14 identifier:v15 block:v17];
      goto LABEL_12;
    }

    if (a5 != 2)
    {
      goto LABEL_4;
    }

LABEL_9:
    [a1 getAppPathForDataContainer:v14 identifier:v15 containerClass:a5 personaString:v16 existingQuery:a7 block:v17];
    goto LABEL_12;
  }

  if (a5 == 10)
  {
    [a1 getAppPathForInternalDaemonContainer:v14 identifier:v15 block:v17];
    goto LABEL_12;
  }

  if (a5 == 4)
  {
    goto LABEL_9;
  }

LABEL_4:
  v18 = SALog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100041990();
  }

LABEL_12:
}

+ (id)getFSPurgeableInfo:(id)a3 options:(int)a4
{
  v5 = a3;
  valuePtr = (a4 >> 2) & 1;
  if ((a4 & 4) != 0)
  {
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v6 = 0;
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, [v5 UTF8String], 0x8000100u);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(Mutable, @"CACHE_DELETE_VOLUME", v7);
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"CACHE_DELETE_NO_CACHE", v6);
  }

  v9 = CacheDeleteCopyItemizedPurgeableSpaceWithInfo();
  v10 = [v9 copy];
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

+ (id)getVendorNameFromBundleRecord:(id)a3
{
  v3 = a3;
  if ([v3 developerType] == 1)
  {
    v4 = @"Apple";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = [v5 containingBundleRecord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v5 containingBundleRecord];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v3;
      }

      else
      {
        v7 = 0;
      }
    }

    v8 = [v7 iTunesMetadata];
    v9 = [v8 artistName];

    if (v9)
    {
      v4 = [v8 artistName];
    }

    else
    {
      v4 = @"Unknown";
    }
  }

  return v4;
}

+ (id)guesstimateBundleId:(id)a3
{
  v3 = a3;
  v4 = [SAQuery getVendorNameFromBundleRecord:v3];
  if ([v4 hasPrefix:@"Apple Inc."])
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 bundleIdentifier];
      v9 = 136315394;
      v10 = "+[SAQuery guesstimateBundleId:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: Shorten Apple Inc for %@", &v9, 0x16u);
    }

    v7 = @"Apple";
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

+ (id)getVendorNameForBundleIDs:(id)a3
{
  v3 = a3;
  v4 = [SAUtilities breakCommaSeparatedStringToComponents:v3];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100031958;
  v21 = sub_100031968;
  v22 = [NSMutableSet setWithCapacity:5];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100031970;
  v16[3] = &unk_100065760;
  v16[4] = &v17;
  [v4 enumerateObjectsUsingBlock:v16];
  if ([v18[5] count])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_100031958;
    v14 = sub_100031968;
    v15 = 0;
    v5 = v18[5];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000319FC;
    v9[3] = &unk_100065B10;
    v9[4] = &v10;
    [v5 enumerateObjectsUsingBlock:v9];
    v6 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000419F8();
    }

    v6 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v6;
}

@end