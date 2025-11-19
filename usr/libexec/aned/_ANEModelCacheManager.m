@interface _ANEModelCacheManager
+ (BOOL)createModelCacheRetain:(id)a3;
+ (BOOL)isSystemModelPath:(id)a3;
+ (BOOL)removeIfStaleBinary:(id)a3 forModelPath:(id)a4;
+ (BOOL)saveSourceModelPath:(id)a3 outputModelDirectory:(id)a4;
+ (id)cachedModelRetainNameFor:(id)a3;
+ (id)cachedSourceModelStoreNameFor:(id)a3;
+ (void)initialize;
- (BOOL)cacheURLIdentifierForModel:(id)a3 useSourceURL:(BOOL)a4 withReply:(id)a5;
- (BOOL)garbageCollectDanglingModels;
- (BOOL)removeAllModelsForBundleID:(id)a3;
- (BOOL)scanAllPartitionsForModel:(id)a3 csIdentity:(id)a4 expunge:(BOOL)a5;
- (_ANEModelCacheManager)initWithURL:(id)a3 createDirectory:(BOOL)a4;
- (id)URLForBundleID:(id)a3;
- (id)URLForModel:(id)a3 bundleID:(id)a4 useSourceURL:(BOOL)a5 forAllSegments:(BOOL)a6 aotCacheUrlIdentifier:(id)a7;
- (id)cachedModelAllSegmentsPathFor:(id)a3 csIdentity:(id)a4;
- (id)cachedModelRetainNameFor:(id)a3 csIdentity:(id)a4;
- (id)cachedSourceModelStoreNameFor:(id)a3 csIdentity:(id)a4;
- (id)filePathForModel:(id)a3 bundleID:(id)a4;
- (id)getDiskSpaceForBundleID:(id)a3;
- (id)getModelBinaryPathFromURLIdentifier:(id)a3 bundleID:(id)a4;
- (void)scheduleMaintenanceWithName:(id)a3 directoryPaths:(id)a4;
- (void)startDanglingModelGC;
@end

@implementation _ANEModelCacheManager

+ (void)initialize
{
  if (qword_100036500 != -1)
  {
    sub_10001DF28();
  }
}

- (_ANEModelCacheManager)initWithURL:(id)a3 createDirectory:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v19.receiver = self;
  v19.super_class = _ANEModelCacheManager;
  v9 = [(_ANEModelCacheManager *)&v19 init];
  if (v9)
  {
    if (v4)
    {
      v10 = +[NSFileManager defaultManager];
      v11 = [v8 path];
      v18 = 0;
      v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v18];
      v13 = v18;

      if ((v12 & 1) == 0)
      {
        v14 = qword_100036510;
        if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
        {
          v16 = v14;
          v17 = NSStringFromSelector(a2);
          *buf = 138412802;
          v21 = v17;
          v22 = 2112;
          v23 = v8;
          v24 = 2112;
          v25 = v13;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@: FAILED creating cacheDir=%@ : err=%@", buf, 0x20u);
        }
      }
    }

    objc_storeStrong(&v9->_cacheDir, a3);
  }

  return v9;
}

+ (BOOL)isSystemModelPath:(id)a3
{
  v3 = a3;
  v4 = +[_ANEStrings systemLibraryPath];
  v5 = [v3 hasPrefix:v4];

  return v5;
}

- (id)URLForModel:(id)a3 bundleID:(id)a4 useSourceURL:(BOOL)a5 forAllSegments:(BOOL)a6 aotCacheUrlIdentifier:(id)a7
{
  v36 = a6;
  v37 = a5;
  v11 = a3;
  v40 = a4;
  v39 = a7;
  context = objc_autoreleasePoolPush();
  v12 = [v11 modelURL];
  v41 = [v12 path];

  v13 = +[NSXPCConnection currentConnection];
  if (!v13)
  {
    v14 = qword_100036510;
    if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
    {
      sub_10001DF3C(v14, a2);
    }
  }

  v15 = +[_ANEStrings processModelShareAccessEntitlement];
  v16 = [v13 valueForEntitlement:v15];
  v17 = v16;
  if (v16 && [v16 BOOLValue])
  {
    v18 = qword_100036510;
    v19 = 1;
    if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_INFO))
    {
      v20 = v18;
      v21 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v21;
      *&buf[12] = 1024;
      *&buf[14] = [v13 processIdentifier];
      *&buf[18] = 2112;
      *&buf[20] = v15;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@: client(%d) : has entitlement(%@)", buf, 0x1Cu);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((v19 | [objc_opt_class() isSystemModelPath:v41]))
  {
    v22 = +[_ANEStrings systemModelsCacheDirectory];
  }

  else
  {
    v22 = v40;
  }

  v23 = v22;
  v24 = [(_ANEModelCacheManager *)self URLForBundleID:v22];
  v25 = [v11 getCacheURLIdentifier];
  v26 = v25 == 0;

  if (v26)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_10000DF68;
    v50 = sub_10000DF78;
    v51 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_10000DF68;
    v47 = sub_10000DF78;
    v48 = 0;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10000DF80;
    v42[3] = &unk_100030998;
    v42[4] = buf;
    v42[5] = &v43;
    [(_ANEModelCacheManager *)self cacheURLIdentifierForModel:v11 useSourceURL:v37 withReply:v42];
    if (v39)
    {
      v30 = [v39 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];
      v31 = [v24 URLByAppendingPathComponent:v30 isDirectory:1];
      v32 = [v31 URLByAppendingPathComponent:@"shapes" isDirectory:1];
      v33 = [v32 URLByAppendingPathComponent:*(*&buf[8] + 40) isDirectory:1];
    }

    else
    {
      v33 = [v24 URLByAppendingPathComponent:*(*&buf[8] + 40) isDirectory:1];
    }

    if (v36)
    {
      v34 = v33;
    }

    else
    {
      v34 = [v33 URLByAppendingPathComponent:v44[5] isDirectory:1];
    }

    v29 = v34;

    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v27 = [v11 getCacheURLIdentifier];
    v28 = [v27 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

    v29 = [v24 URLByAppendingPathComponent:v28 isDirectory:1];
  }

  objc_autoreleasePoolPop(context);

  return v29;
}

- (BOOL)cacheURLIdentifierForModel:(id)a3 useSourceURL:(BOOL)a4 withReply:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6 || [v8 identifierSource] == 2)
  {
    v10 = [v8 sourceURL];
  }

  else
  {
    v10 = [v8 modelURL];
  }

  v11 = v10;
  v12 = [v10 path];

  v13 = [_ANEHashEncoding hexStringForString:v12];
  v14 = [v8 key];
  v15 = [_ANEHashEncoding hexStringForString:v14];

  v16 = qword_100036510;
  if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = NSStringFromSelector(a2);
    v23 = 138412802;
    v24 = v18;
    v25 = 2112;
    *v26 = v12;
    *&v26[8] = 1024;
    *&v26[10] = [v8 identifierSource];
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@: modelPathStr:%@ model.identifierSource:%u", &v23, 0x1Cu);
  }

  v19 = qword_100036510;
  if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = NSStringFromSelector(a2);
    v23 = 138413058;
    v24 = v21;
    v25 = 1024;
    *v26 = v6;
    *&v26[4] = 2112;
    *&v26[6] = v13;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@: useSourceURL:%u hexStr:%@ keyHexStr:%@", &v23, 0x26u);
  }

  v9[2](v9, v13, v15);

  return 1;
}

- (id)getModelBinaryPathFromURLIdentifier:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = [(_ANEModelCacheManager *)self URLForBundleID:a4];
  v8 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"/"];

  v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];
  v10 = [v9 path];

  return v10;
}

- (id)cachedModelAllSegmentsPathFor:(id)a3 csIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_ANEModelCacheManager *)self URLForModel:v6 bundleID:v7 forAllSegments:1 aotCacheUrlIdentifier:0];
  v10 = [v9 path];

  objc_autoreleasePoolPop(v8);

  return v10;
}

- (id)cachedSourceModelStoreNameFor:(id)a3 csIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_ANEModelCacheManager *)self URLForModel:v6 bundleID:v7];
  v10 = [v9 path];

  v11 = [objc_opt_class() cachedSourceModelStoreNameFor:v10];

  objc_autoreleasePoolPop(v8);

  return v11;
}

+ (id)cachedSourceModelStoreNameFor:(id)a3
{
  v3 = a3;
  v4 = +[_ANEStrings modelSourceStoreName];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (BOOL)saveSourceModelPath:(id)a3 outputModelDirectory:(id)a4
{
  v6 = a3;
  v7 = [_ANEModelCacheManager cachedSourceModelStoreNameFor:a4];
  v14 = 0;
  v8 = [v6 writeToFile:v7 atomically:1 encoding:4 error:&v14];
  v9 = v14;
  if ((v8 & 1) == 0)
  {
    v10 = qword_100036510;
    if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = NSStringFromSelector(a2);
      *buf = 138413058;
      v16 = v13;
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%@: FAILED storing sourceModelPath=%@ to %@ : err=%@", buf, 0x2Au);
    }
  }

  return v8;
}

- (id)cachedModelRetainNameFor:(id)a3 csIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_ANEModelCacheManager *)self URLForModel:v6 bundleID:v7];
  v10 = [v9 path];

  v11 = [objc_opt_class() cachedModelRetainNameFor:v10];

  objc_autoreleasePoolPop(v8);

  return v11;
}

+ (id)cachedModelRetainNameFor:(id)a3
{
  v3 = a3;
  v4 = +[_ANEStrings modelCacheRetainName];
  v5 = [v3 stringByAppendingPathComponent:v4];

  return v5;
}

+ (BOOL)createModelCacheRetain:(id)a3
{
  v4 = [_ANEModelCacheManager cachedModelRetainNameFor:a3];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 createFileAtPath:v4 contents:0 attributes:0];

  if ((v6 & 1) == 0)
  {
    v7 = qword_100036510;
    if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
    {
      sub_10001DFE4(v7, a2, v4);
    }
  }

  return v6;
}

+ (BOOL)removeIfStaleBinary:(id)a3 forModelPath:(id)a4
{
  v5 = a3;
  v32 = a4;
  v6 = +[NSFileManager defaultManager];
  v34 = 0;
  v7 = [v6 attributesOfItemAtPath:v5 error:&v34];
  v8 = v34;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:NSFileCreationDate];
    v10 = [v7 objectForKeyedSubscript:NSFileModificationDate];
    v33 = v8;
    v11 = [v6 attributesOfItemAtPath:v32 error:&v33];
    v12 = v33;

    v30 = v11;
    if (v11)
    {
      v13 = [v11 objectForKeyedSubscript:NSFileCreationDate];
      v14 = [v11 objectForKeyedSubscript:NSFileModificationDate];
      v29 = [v9 compare:v13];
      v15 = v10;
      v16 = [v10 compare:v14];

      if (v29 != -1 && v16 + 1 != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = v10;
      v22 = qword_100036510;
      if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_INFO))
      {
        v23 = v22;
        v24 = NSStringFromSelector(a2);
        *buf = 138412802;
        v36 = v24;
        v37 = 2112;
        v38 = v32;
        v39 = 2112;
        v40 = v12;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@: attributesOfItemAtPath:%@ returned nil : err=%@ : Forcing removal!", buf, 0x20u);
      }
    }

    if ([_ANEStorageHelper removeDirectoryAtPath:v5])
    {
      v21 = 1;
LABEL_18:

      goto LABEL_19;
    }

    v25 = qword_100036510;
    if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
    {
      v27 = v25;
      v28 = NSStringFromSelector(a2);
      *buf = 138412802;
      v36 = v28;
      v37 = 2112;
      v38 = v5;
      v39 = 2112;
      v40 = v12;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@: FAILED to remove %@ : err=%@", buf, 0x20u);
    }

LABEL_17:
    v21 = 0;
    goto LABEL_18;
  }

  v18 = qword_100036510;
  if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_INFO))
  {
    v19 = v18;
    v20 = NSStringFromSelector(a2);
    *buf = 138412802;
    v36 = v20;
    v37 = 2112;
    v38 = v5;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@: attributesOfItemAtPath:%@ returned nil : err=%@", buf, 0x20u);
  }

  v21 = 0;
  v12 = v8;
LABEL_19:

  return v21;
}

- (id)URLForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(_ANEModelCacheManager *)self cacheDir];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  return v6;
}

- (BOOL)removeAllModelsForBundleID:(id)a3
{
  v3 = [(_ANEModelCacheManager *)self URLForBundleID:a3];
  v4 = [v3 path];
  v5 = [_ANEStorageHelper removeDirectoryAtPath:v4];

  return v5;
}

- (id)filePathForModel:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_ANEModelCacheManager *)self URLForBundleID:v7];
  v10 = [v6 modelURL];
  v11 = [v10 path];
  v12 = [_ANEHashEncoding hexStringForString:v11];

  v13 = [v9 path];
  v14 = [v13 stringByAppendingPathComponent:v12];

  objc_autoreleasePoolPop(v8);

  return v14;
}

- (id)getDiskSpaceForBundleID:(id)a3
{
  v3 = [(_ANEModelCacheManager *)self URLForBundleID:a3];
  v4 = [v3 path];
  v5 = [_ANEStorageHelper sizeOfModelCacheAtPath:v4 purgeSubdirectories:0];

  return v5;
}

- (BOOL)garbageCollectDanglingModels
{
  v2 = [(_ANEModelCacheManager *)self cacheDir];
  v3 = [_ANEStorageHelper garbageCollectDanglingModelsAtPath:v2];

  return v3;
}

- (void)startDanglingModelGC
{
  v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.private.ANEStorageMaintainer"];
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____ANEStorageMaintainerProtocol];
  [v4 setRemoteObjectInterface:v5];

  [v4 resume];
  if (!v4)
  {
    v6 = qword_100036510;
    if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
    {
      sub_10001E0A0(v6, a2);
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000F0FC;
  v10[3] = &unk_1000309C0;
  v11 = @"com.apple.private.ANEStorageMaintainer";
  v12 = a2;
  v7 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v8 = [(_ANEModelCacheManager *)self cacheDir];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F15C;
  v9[3] = &unk_1000309E0;
  v9[4] = a2;
  [v7 purgeDanglingModelsAt:v8 withReply:v9];

  [v4 invalidate];
}

- (void)scheduleMaintenanceWithName:(id)a3 directoryPaths:(id)a4
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000F32C;
  v11 = &unk_100030808;
  v12 = a3;
  v13 = self;
  v5 = v12;
  v6 = objc_retainBlock(&v8);
  v7 = [_ANETask taskWithName:v5 period:86400 handler:v6, v8, v9, v10, v11];
  [_ANETaskManager registerTask:v7];
}

- (BOOL)scanAllPartitionsForModel:(id)a3 csIdentity:(id)a4 expunge:(BOOL)a5
{
  v78 = a5;
  v8 = a3;
  v80 = a4;
  v74 = mach_continuous_time();
  p_cache = &OBJC_METACLASS____ANEXPCServiceHelper.cache;
  v10 = os_signpost_id_generate(qword_100036510);
  v11 = +[NSFileManager defaultManager];
  v12 = [(_ANEModelCacheManager *)self cacheDir];
  v107 = NSURLIsRegularFileKey;
  v13 = [NSArray arrayWithObjects:&v107 count:1];
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_10000FEE8;
  v94[3] = &unk_100030950;
  aSelector = a2;
  v94[4] = a2;
  v76 = v11;
  v14 = [v11 enumeratorAtURL:v12 includingPropertiesForKeys:v13 options:0 errorHandler:v94];

  [v8 string_id];
  kdebug_trace();
  v15 = qword_100036510;
  v16 = v15;
  spid = v10;
  v84 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v17 = [v8 string_id];
    *buf = 134218240;
    v96 = v17;
    v97 = 1024;
    *v98 = 1;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, v10, "_ANED_PURGE_COMPILED_MODEL", "model.string_id:%llu %u", buf, 0x12u);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = v14;
  v18 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
  v87 = v8;
  if (v18)
  {
    v81 = 0;
    v79 = 1;
    v19 = &ANECCreateModelDictionary_ptr;
    v20 = *v91;
    v85 = *v91;
    while (1)
    {
      v21 = 0;
      v83 = v18;
      do
      {
        if (*v91 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v90 + 1) + 8 * v21);
        v23 = [v22 lastPathComponent];
        v24 = [v19[141] modelBinaryName];
        v25 = [v23 isEqualToString:v24];

        if (v25)
        {
          v26 = [v22 URLByDeletingLastPathComponent];
          v27 = [v19[141] modelSourceStoreName];
          v28 = [v26 URLByAppendingPathComponent:v27];

          v89 = 0;
          v29 = [NSString stringWithContentsOfURL:v28 encoding:4 error:&v89];
          v30 = v89;
          if (!v29)
          {
            v47 = p_cache[162];
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v66 = v47;
              v67 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              v96 = v67;
              v97 = 2112;
              *v98 = v28;
              *&v98[8] = 2112;
              v99 = v30;
              _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "%@: Nil sourcePathname! : srcStoreURL=%@ : lErr=%@", buf, 0x20u);
            }

            [v87 string_id];
            kdebug_trace();
            v48 = p_cache[162];
            v32 = v48;
            if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
            {
              v49 = [v87 string_id];
              *buf = 134218240;
              v96 = v49;
              v97 = 1024;
              *v98 = 2;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_EVENT, spid, "_ANED_PURGE_COMPILED_MODEL", "model.string_id:%llu %u", buf, 0x12u);
            }

            goto LABEL_42;
          }

          v31 = [v87 modelURL];
          v32 = [v31 path];

          v33 = p_cache[162];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v62 = v33;
            v63 = NSStringFromSelector(aSelector);
            v64 = [v29 length];
            v65 = [v32 length];
            *buf = 138413314;
            v96 = v63;
            v97 = 2112;
            *v98 = v29;
            *&v98[8] = 2048;
            v99 = v64;
            v18 = v83;
            v100 = 2112;
            v101 = v32;
            v102 = 2048;
            v103 = v65;
            _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "%@: [ sourcePathname=%@ %lu : modelPathname=%@ %lu ]", buf, 0x34u);

            p_cache = (&OBJC_METACLASS____ANEXPCServiceHelper + 16);
          }

          if (![v32 isEqualToString:v29])
          {
            v50 = p_cache[162];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              v51 = v50;
              v52 = NSStringFromSelector(aSelector);
              v53 = [v29 length];
              v54 = [v32 length];
              *buf = 138413570;
              v96 = v52;
              v97 = 2112;
              *v98 = v26;
              *&v98[8] = 2112;
              v99 = v29;
              v100 = 2048;
              v101 = v53;
              v102 = 2112;
              v103 = v32;
              v104 = 2048;
              v105 = v54;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%@: modelDirURL=%@ : NOT removing [ sourcePathname=%@ %lu : modelPathname=%@ %lu ]", buf, 0x3Eu);

              v18 = v83;
            }

            v19 = &ANECCreateModelDictionary_ptr;
            goto LABEL_42;
          }

          [v22 pathComponents];
          v35 = v34 = p_cache;
          v36 = [v35 objectAtIndex:9];
          v37 = v34[162];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v38 = v37;
            v39 = NSStringFromSelector(aSelector);
            *buf = 138412546;
            v96 = v39;
            v97 = 2112;
            *v98 = v36;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%@: pathCsIdentity %@", buf, 0x16u);

            v18 = v83;
          }

          if (([v80 isEqualToString:v36] & 1) == 0)
          {
            v55 = qword_100036510;
            if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v96 = v36;
              v97 = 2112;
              *v98 = v80;
              *&v98[8] = 2112;
              v99 = v32;
              _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "pathCsIdentity %@ is not matching csIdentity input%@ for model: %@", buf, 0x20u);
            }

            goto LABEL_41;
          }

          ++v81;
          if (v78)
          {
            v88 = v30;
            v40 = [v76 removeItemAtURL:v26 error:&v88];
            v41 = v88;

            v42 = qword_100036510;
            v79 = v40;
            if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_INFO))
            {
              log = v42;
              v43 = NSStringFromSelector(aSelector);
              v44 = v43;
              *buf = 138412802;
              v45 = @"Success!";
              if (!v40)
              {
                v45 = v41;
              }

              v96 = v43;
              v97 = 2112;
              *v98 = v26;
              *&v98[8] = 2112;
              v99 = v45;
              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%@: Remove modelDirURL=%@ : %@", buf, 0x20u);

              v46 = v87;
              v30 = v41;
              v18 = v83;
LABEL_37:
              [v46 string_id];
              kdebug_trace();
              v59 = qword_100036510;
              v60 = v59;
              if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
              {
                v61 = [v87 string_id];
                *buf = 134218496;
                v96 = v61;
                v97 = 1024;
                *v98 = 3;
                *&v98[4] = 1024;
                *&v98[6] = v79 & 1;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_EVENT, spid, "_ANED_PURGE_COMPILED_MODEL", "model.string_id:%llu %u ok:%u", buf, 0x18u);
              }

LABEL_41:
              v19 = &ANECCreateModelDictionary_ptr;

              p_cache = (&OBJC_METACLASS____ANEXPCServiceHelper + 16);
LABEL_42:

              v20 = v85;
              goto LABEL_43;
            }

            v30 = v41;
LABEL_35:
            v18 = v83;
          }

          else
          {
            v56 = qword_100036510;
            if (os_log_type_enabled(qword_100036510, OS_LOG_TYPE_INFO))
            {
              v57 = v56;
              v58 = NSStringFromSelector(aSelector);
              *buf = 138412802;
              v96 = v58;
              v97 = 2112;
              *v98 = v26;
              *&v98[8] = 2048;
              v99 = v81;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%@: Found modelDirURL=%@ : total so far (%lu)", buf, 0x20u);

              goto LABEL_35;
            }
          }

          v46 = v87;
          goto LABEL_37;
        }

LABEL_43:
        v21 = v21 + 1;
      }

      while (v18 != v21);
      v18 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
      if (!v18)
      {
        v18 = v81 != 0;
        v68 = v79;
        goto LABEL_47;
      }
    }
  }

  v68 = 1;
LABEL_47:

  if (v78)
  {
    LOBYTE(v18) = v68;
  }

  [v87 string_id];
  kdebug_trace();
  v69 = p_cache[162];
  v70 = v69;
  if (v84 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v72 = p_cache[162];
  }

  else
  {
    if (os_signpost_enabled(v69))
    {
      v71 = [v87 string_id];
      *buf = 134218496;
      v96 = v71;
      v97 = 1024;
      *v98 = 5;
      *&v98[4] = 1024;
      *&v98[6] = v18 & 1;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_EVENT, spid, "_ANED_PURGE_COMPILED_MODEL", "model.string_id:%llu %u ok:%u", buf, 0x18u);
    }

    v72 = p_cache[162];
    if (os_signpost_enabled(v72))
    {
      *buf = 134349056;
      v96 = v74;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, OS_SIGNPOST_EVENT, spid, "_ANED_PURGE_COMPILED_MODEL", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
    }
  }

  return v18 & 1;
}

@end