@interface SAQuery
+ (BOOL)isStagedAppContainer:(container_object_s *)container;
+ (id)getFSPurgeableInfo:(id)info options:(int)options;
+ (id)getVendorNameForBundleIDs:(id)ds;
+ (id)getVendorNameFromBundleRecord:(id)record;
+ (id)guesstimateBundleId:(id)id;
+ (void)enumerateAppPathsOnVolume:(id)volume;
+ (void)enumeratePurgeableAssets:(int)assets block:(id)block;
+ (void)enumerateWithContainerQuery:(unint64_t)query existingQuery:(container_query_s *)existingQuery outQuery:(container_query_s *)outQuery transientContainers:(BOOL)containers stagedContainers:(BOOL)stagedContainers block:(id)block;
+ (void)getAppPathForAppContainer:(id)container identifier:(id)identifier block:(id)block;
+ (void)getAppPathForContainer:(id)container identifier:(id)identifier containerClass:(unint64_t)class personaString:(id)string existingQuery:(container_query_s *)query block:(id)block;
+ (void)getAppPathForDataContainer:(id)container identifier:(id)identifier containerClass:(unint64_t)class personaString:(id)string existingQuery:(container_query_s *)query block:(id)block;
+ (void)getAppPathForInternalDaemonContainer:(id)container identifier:(id)identifier block:(id)block;
+ (void)installedAppGroupsAtVolume:(id)volume;
+ (void)installedAppsAtVolume:(BOOL)volume sortForUrgency:(int)urgency options:(int)options block:(id)block;
@end

@implementation SAQuery

+ (void)installedAppsAtVolume:(BOOL)volume sortForUrgency:(int)urgency options:(int)options block:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FB3C;
  v7[3] = &unk_100065A20;
  v10 = options & 1;
  urgencyCopy = urgency;
  blockCopy = block;
  v6 = blockCopy;
  [SAQuery enumerateAppPathsOnVolume:v7];
}

+ (void)installedAppGroupsAtVolume:(id)volume
{
  volumeCopy = volume;
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
    v16 = volumeCopy;
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

+ (void)enumeratePurgeableAssets:(int)assets block:(id)block
{
  blockCopy = block;
  v4 = blockCopy;
  CacheManagementEnumerateAssets();
}

+ (BOOL)isStagedAppContainer:(container_object_s *)container
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

+ (void)enumerateAppPathsOnVolume:(id)volume
{
  v4 = 0;
  volumeCopy = volume;
  [SAQuery enumerateWithContainerQuery:2 existingQuery:0 outQuery:&v4 transientContainers:0 stagedContainers:0 block:volumeCopy];
  [SAQuery enumerateWithContainerQuery:4 existingQuery:v4 outQuery:0 transientContainers:0 stagedContainers:0 block:volumeCopy];
  [SAQuery enumerateWithContainerQuery:10 existingQuery:v4 outQuery:0 transientContainers:0 stagedContainers:0 block:volumeCopy];
  [SAQuery enumerateWithContainerQuery:1 existingQuery:v4 outQuery:0 transientContainers:1 stagedContainers:1 block:volumeCopy];

  if (v4)
  {
    container_query_free();
  }
}

+ (void)enumerateWithContainerQuery:(unint64_t)query existingQuery:(container_query_s *)existingQuery outQuery:(container_query_s *)outQuery transientContainers:(BOOL)containers stagedContainers:(BOOL)stagedContainers block:(id)block
{
  blockCopy = block;
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
    containersCopy = containers;
    stagedContainersCopy = stagedContainers;
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
    queryCopy = query;
    existingQueryCopy = existingQuery;
    v35 = blockCopy;
    dispatch_apply(v29, 0, block);
    if (outQuery)
    {
      *outQuery = v13;
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

+ (void)getAppPathForInternalDaemonContainer:(id)container identifier:(id)identifier block:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  path = [container path];
  v10 = [SAAppPath appPathWithRecord:0 identifier:identifierCopy dataContainerPath:path personaUniqueString:0 isPlugin:0 isGroup:0];

  blockCopy[2](blockCopy, v10);
}

+ (void)getAppPathForAppContainer:(id)container identifier:(id)identifier block:(id)block
{
  containerCopy = container;
  identifierCopy = identifier;
  blockCopy = block;
  v17 = 0;
  v10 = [LSBundleRecord bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v17];
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
    bundleIdentifier = [v10 bundleIdentifier];
    v14 = [SAAppPath appPathWithRecord:v10 identifier:bundleIdentifier dataContainerPath:0 personaUniqueString:0 isPlugin:0 isGroup:0];

    path = [containerCopy path];
    [v14 addBinaryPath:path];

    blockCopy[2](blockCopy, v14);
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

+ (void)getAppPathForDataContainer:(id)container identifier:(id)identifier containerClass:(unint64_t)class personaString:(id)string existingQuery:(container_query_s *)query block:(id)block
{
  containerCopy = container;
  identifierCopy = identifier;
  stringCopy = string;
  blockCopy = block;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 1;
  if (class == 4)
  {
    v33 = 0;
    v17 = &v33;
    v18 = [LSApplicationExtensionRecord bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v33];
  }

  else
  {
    v32 = 0;
    v17 = &v32;
    v18 = [LSBundleRecord bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v32];
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
    v31 = class == 4;
    v26 = stringCopy;
    queryCopy = query;
    v27 = identifierCopy;
    v29 = v34;
    v28 = blockCopy;
    v22 = objc_retainBlock(v24);
    (v22[2])(v22, containerCopy);

    v23 = v25;
  }

  _Block_object_dispose(v34, 8);
}

+ (void)getAppPathForContainer:(id)container identifier:(id)identifier containerClass:(unint64_t)class personaString:(id)string existingQuery:(container_query_s *)query block:(id)block
{
  containerCopy = container;
  identifierCopy = identifier;
  stringCopy = string;
  blockCopy = block;
  if (class <= 3)
  {
    if (class == 1)
    {
      [self getAppPathForAppContainer:containerCopy identifier:identifierCopy block:blockCopy];
      goto LABEL_12;
    }

    if (class != 2)
    {
      goto LABEL_4;
    }

LABEL_9:
    [self getAppPathForDataContainer:containerCopy identifier:identifierCopy containerClass:class personaString:stringCopy existingQuery:query block:blockCopy];
    goto LABEL_12;
  }

  if (class == 10)
  {
    [self getAppPathForInternalDaemonContainer:containerCopy identifier:identifierCopy block:blockCopy];
    goto LABEL_12;
  }

  if (class == 4)
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

+ (id)getFSPurgeableInfo:(id)info options:(int)options
{
  infoCopy = info;
  valuePtr = (options >> 2) & 1;
  if ((options & 4) != 0)
  {
    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v6 = 0;
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, [infoCopy UTF8String], 0x8000100u);
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

+ (id)getVendorNameFromBundleRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy developerType] == 1)
  {
    artistName2 = @"Apple";
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = recordCopy;
      containingBundleRecord = [v5 containingBundleRecord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        containingBundleRecord2 = [v5 containingBundleRecord];
      }

      else
      {
        containingBundleRecord2 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        containingBundleRecord2 = recordCopy;
      }

      else
      {
        containingBundleRecord2 = 0;
      }
    }

    iTunesMetadata = [containingBundleRecord2 iTunesMetadata];
    artistName = [iTunesMetadata artistName];

    if (artistName)
    {
      artistName2 = [iTunesMetadata artistName];
    }

    else
    {
      artistName2 = @"Unknown";
    }
  }

  return artistName2;
}

+ (id)guesstimateBundleId:(id)id
{
  idCopy = id;
  v4 = [SAQuery getVendorNameFromBundleRecord:idCopy];
  if ([v4 hasPrefix:@"Apple Inc."])
  {
    v5 = SALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [idCopy bundleIdentifier];
      v9 = 136315394;
      v10 = "+[SAQuery guesstimateBundleId:]";
      v11 = 2112;
      v12 = bundleIdentifier;
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

+ (id)getVendorNameForBundleIDs:(id)ds
{
  dsCopy = ds;
  v4 = [SAUtilities breakCommaSeparatedStringToComponents:dsCopy];
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