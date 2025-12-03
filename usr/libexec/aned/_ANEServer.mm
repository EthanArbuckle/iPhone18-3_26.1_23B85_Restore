@interface _ANEServer
+ (void)initialize;
- (_ANEServer)init;
- (_ANEServer)initWithDataVaultDirectory:(id)directory dataVaultStorageClass:(id)class buildVersion:(id)version tempDirectory:(id)tempDirectory cloneDirectory:(id)cloneDirectory;
- (id)compileAsNeededAndLoadCachedModel:(id)model csIdentity:(id)identity sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos modelFilePath:(id *)path modelAttributes:(id *)attributes error:(id *)self0;
- (id)initUser;
- (void)_handleIOKitEvent:(id)event;
- (void)beginRealTimeTaskWithReply:(id)reply;
- (void)compiledModelExistsFor:(id)for withReply:(id)reply;
- (void)compiledModelExistsMatchingHash:(id)hash withReply:(id)reply;
- (void)doCompileModel:(id)model csIdentity:(id)identity sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos withReply:(id)reply;
- (void)echo:(id)echo withReply:(id)reply;
- (void)endRealTimeTaskWithReply:(id)reply;
- (void)handleIOKitEvent:(id)event;
- (void)handleLaunchServicesEvent:(id)event userInfo:(id)info;
- (void)loadModel:(id)model sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos withReply:(id)reply;
- (void)loadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos withReply:(id)reply;
- (void)purgeCompiledModel:(id)model withReply:(id)reply;
- (void)purgeCompiledModelMatchingHash:(id)hash withReply:(id)reply;
- (void)reportTelemetryToPPS:(id)s playload:(id)playload;
- (void)start;
- (void)startUser;
- (void)unloadModel:(id)model options:(id)options qos:(unsigned int)qos withReply:(id)reply;
@end

@implementation _ANEServer

+ (void)initialize
{
  qword_100036518 = +[_ANELog daemon];

  _objc_release_x1();
}

- (_ANEServer)init
{
  v3 = +[_ANEStrings modelDataVaultDirectory];
  v4 = +[_ANEStrings dataVaultStorageClass];
  v5 = +[_ANEDeviceInfo buildVersion];
  v6 = +[_ANEStrings tempDirectory];
  v7 = +[_ANEStrings cloneDirectory];
  v8 = [(_ANEServer *)self initWithDataVaultDirectory:v3 dataVaultStorageClass:v4 buildVersion:v5 tempDirectory:v6 cloneDirectory:v7];

  return v8;
}

- (id)initUser
{
  v3 = +[_ANEStrings userModelDataVaultDirectory];
  v4 = +[_ANEStrings dataVaultStorageClass];
  v5 = +[_ANEDeviceInfo buildVersion];
  v6 = +[_ANEStrings userTempDirectory];
  v7 = +[_ANEStrings userCloneDirectory];
  v8 = [(_ANEServer *)self initWithDataVaultDirectory:v3 dataVaultStorageClass:v4 buildVersion:v5 tempDirectory:v6 cloneDirectory:v7];

  return v8;
}

- (_ANEServer)initWithDataVaultDirectory:(id)directory dataVaultStorageClass:(id)class buildVersion:(id)version tempDirectory:(id)tempDirectory cloneDirectory:(id)cloneDirectory
{
  directoryCopy = directory;
  classCopy = class;
  versionCopy = version;
  tempDirectoryCopy = tempDirectory;
  cloneDirectoryCopy = cloneDirectory;
  v107.receiver = self;
  v107.super_class = _ANEServer;
  v13 = [(_ANEServer *)&v107 init];
  v100 = v13;
  if (v13)
  {
    v14 = +[NSUUID UUID];
    uuidANECompilerServiceRegular = v13->_uuidANECompilerServiceRegular;
    v13->_uuidANECompilerServiceRegular = v14;

    v16 = +[NSUUID UUID];
    uuidANECompilerServiceLongerDuration = v13->_uuidANECompilerServiceLongerDuration;
    v13->_uuidANECompilerServiceLongerDuration = v16;

    v18 = dispatch_semaphore_create(2);
    v109[0] = v18;
    v19 = dispatch_semaphore_create(2);
    v109[1] = v19;
    v20 = dispatch_semaphore_create(2);
    v109[2] = v20;
    v21 = dispatch_semaphore_create(2);
    v109[3] = v21;
    v22 = dispatch_semaphore_create(2);
    v109[4] = v22;
    v23 = dispatch_semaphore_create(2);
    v109[5] = v23;
    v24 = dispatch_semaphore_create(2);
    v109[6] = v24;
    v25 = dispatch_semaphore_create(2);
    v109[7] = v25;
    v26 = [NSArray arrayWithObjects:v109 count:8];
    semaArray = v100->_semaArray;
    v100->_semaArray = v26;

    v28 = qword_100036518;
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v111 = "[_ANEServer initWithDataVaultDirectory:dataVaultStorageClass:buildVersion:tempDirectory:cloneDirectory:]";
      v112 = 2112;
      v113 = directoryCopy;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s: dataVaultDirectory=%@", buf, 0x16u);
    }

    v29 = +[NSFileManager defaultManager];
    v30 = classCopy;
    uTF8String = [classCopy UTF8String];
    if ([v29 fileExistsAtPath:directoryCopy])
    {
      v32 = directoryCopy;
      v33 = v32;
      uTF8String2 = [v32 UTF8String];
      v35 = qword_100036518;
      if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_DEBUG))
      {
        sub_10001E2A0(uTF8String2, v35);
      }

      if (rootless_check_datavault_flag() == 1)
      {
        v36 = qword_100036518;
        if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v111 = "convertToDataVaultAsNeeded";
          v112 = 2080;
          v113 = uTF8String2;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s: cacheDirectory=%s needs conversion to Data Vault", buf, 0x16u);
        }

        if (chmod(uTF8String2, 0x1C0u))
        {
          v37 = qword_100036518;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v85 = *__error();
            v86 = __error();
            v87 = strerror(*v86);
            *buf = 136316162;
            v111 = "convertToDataVaultAsNeeded";
            v112 = 2080;
            v113 = uTF8String2;
            v114 = 1024;
            *v115 = 448;
            *&v115[4] = 1024;
            *&v115[6] = v85;
            *&v115[10] = 2080;
            *&v115[12] = v87;
            _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s: chmod(%s, %o) FAILED : errno=%d (%s)", buf, 0x2Cu);
          }
        }

        if (rootless_convert_to_datavault())
        {
          v38 = qword_100036518;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v91 = *__error();
            v92 = __error();
            v93 = strerror(*v92);
            *buf = 136316162;
            v111 = "convertToDataVaultAsNeeded";
            v112 = 2080;
            v113 = uTF8String2;
            v114 = 2080;
            *v115 = uTF8String;
            *&v115[8] = 1024;
            *&v115[10] = v91;
            *&v115[14] = 2080;
            *&v115[16] = v93;
            _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s: rootless_convert_to_datavault(%s, %s) FAILED : errno=%d (%s)", buf, 0x30u);
          }
        }
      }
    }

    else
    {
      v39 = directoryCopy;
      v40 = +[NSFileManager defaultManager];
      v41 = v39;
      uTF8String3 = [v39 UTF8String];
      stringByDeletingLastPathComponent = [v39 stringByDeletingLastPathComponent];
      v44 = qword_100036518;
      if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v111 = "createDataVault";
        v112 = 2080;
        v113 = uTF8String3;
        v114 = 2112;
        *v115 = stringByDeletingLastPathComponent;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_INFO, "%s: Need to create cacheDirectory=%s as Data Vault. pathToDataVault=%@", buf, 0x20u);
      }

      v108 = 0;
      v45 = [v40 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v108];
      v46 = v108;
      if (v45)
      {
        if (rootless_mkdir_datavault())
        {
          v47 = qword_100036518;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            v88 = *__error();
            v89 = __error();
            v90 = strerror(*v89);
            *buf = 136316418;
            v111 = "createDataVault";
            v112 = 2080;
            v113 = uTF8String3;
            v114 = 1024;
            *v115 = 448;
            *&v115[4] = 2080;
            *&v115[6] = uTF8String;
            *&v115[14] = 1024;
            *&v115[16] = v88;
            *&v115[20] = 2080;
            *&v115[22] = v90;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%s: rootless_mkdir_datavault(%s, %o, %s) FAILED : errno=%d (%s)", buf, 0x36u);
          }
        }
      }

      else if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
      {
        sub_10001E224();
      }
    }

    v99 = [directoryCopy stringByAppendingPathComponent:versionCopy];
    v48 = qword_100036518;
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v111 = "[_ANEServer initWithDataVaultDirectory:dataVaultStorageClass:buildVersion:tempDirectory:cloneDirectory:]";
      v112 = 2112;
      v113 = v99;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "%s: buildSpecificModelStorageDirectory=%@", buf, 0x16u);
    }

    if ([v29 fileExistsAtPath:v99])
    {
      v49 = 0;
    }

    else
    {
      v50 = [v29 enumeratorAtPath:directoryCopy];
      v49 = 0;
      *&v51 = 136315650;
      v94 = v51;
      while (1)
      {
        nextObject = [v50 nextObject];
        if (!nextObject)
        {
          break;
        }

        v53 = [directoryCopy stringByAppendingPathComponent:nextObject];
        LOBYTE(v108) = 0;
        if ([v29 fileExistsAtPath:v53 isDirectory:&v108])
        {
          v54 = +[NSFileManager defaultManager];
          v106 = v49;
          v55 = [v54 removeItemAtPath:v53 error:&v106];
          v56 = v106;

          v57 = qword_100036518;
          if (v55)
          {
            if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
            {
              *buf = v94;
              v111 = "[_ANEServer initWithDataVaultDirectory:dataVaultStorageClass:buildVersion:tempDirectory:cloneDirectory:]";
              v112 = 2112;
              v113 = v53;
              v114 = 2112;
              *v115 = v56;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s: Removed %@ : error=%@", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
          {
            *buf = v94;
            v111 = "[_ANEServer initWithDataVaultDirectory:dataVaultStorageClass:buildVersion:tempDirectory:cloneDirectory:]";
            v112 = 2112;
            v113 = v53;
            v114 = 2112;
            *v115 = v56;
            _os_log_error_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "%s: Failed to remove %@ : error=%@", buf, 0x20u);
          }
        }

        else
        {
          v56 = v49;
        }

        v49 = v56;
      }
    }

    v105 = v49;
    v58 = [v29 createDirectoryAtPath:v99 withIntermediateDirectories:1 attributes:0 error:&v105];
    v59 = v105;

    if ((v58 & 1) == 0 && os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
    {
      sub_10001E32C();
    }

    v60 = +[_ANEStrings modelAssetsCacheName];
    v61 = [v99 stringByAppendingPathComponent:v60];

    v62 = qword_100036518;
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v111 = "[_ANEServer initWithDataVaultDirectory:dataVaultStorageClass:buildVersion:tempDirectory:cloneDirectory:]";
      v112 = 2112;
      v113 = v61;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_INFO, "%s: modelAssetsCacheDirectory=%@", buf, 0x16u);
    }

    v104 = v59;
    v63 = [v29 createDirectoryAtPath:v61 withIntermediateDirectories:1 attributes:0 error:&v104];
    v64 = v104;

    if ((v63 & 1) == 0 && os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
    {
      sub_10001E3A8();
    }

    v65 = +[_ANEStrings inMemoryModelCacheName];
    v66 = [v99 stringByAppendingPathComponent:v65];

    v67 = qword_100036518;
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v111 = "[_ANEServer initWithDataVaultDirectory:dataVaultStorageClass:buildVersion:tempDirectory:cloneDirectory:]";
      v112 = 2112;
      v113 = v66;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "%s: inMemoryModelCacheDirectory=%@", buf, 0x16u);
    }

    v103 = v64;
    v68 = [v29 createDirectoryAtPath:v66 withIntermediateDirectories:1 attributes:0 error:&v103];
    v69 = v103;

    v70 = v69;
    if ((v68 & 1) == 0 && os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
    {
      sub_10001E424();
    }

    v71 = qword_100036518;
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v111 = "[_ANEServer initWithDataVaultDirectory:dataVaultStorageClass:buildVersion:tempDirectory:cloneDirectory:]";
      v112 = 2112;
      v113 = tempDirectoryCopy;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_INFO, "%s: tempDirectory=%@", buf, 0x16u);
    }

    v102 = v69;
    v72 = [v29 createDirectoryAtPath:tempDirectoryCopy withIntermediateDirectories:1 attributes:0 error:&v102];
    v73 = v102;

    v74 = v73;
    if ((v72 & 1) == 0 && os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
    {
      sub_10001E4A0();
    }

    v75 = qword_100036518;
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v111 = "[_ANEServer initWithDataVaultDirectory:dataVaultStorageClass:buildVersion:tempDirectory:cloneDirectory:]";
      v112 = 2112;
      v113 = cloneDirectoryCopy;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "%s: cloneDirectory=%@", buf, 0x16u);
    }

    v101 = v73;
    v76 = [v29 createDirectoryAtPath:cloneDirectoryCopy withIntermediateDirectories:1 attributes:0 error:&v101];
    v77 = v101;

    if ((v76 & 1) == 0 && os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
    {
      sub_10001E51C();
    }

    v78 = [NSURL fileURLWithPath:v61 isDirectory:1];
    v79 = [[_ANEModelCacheManager alloc] initWithURL:v78];
    modelAssetCacheManager = v100->_modelAssetCacheManager;
    v100->_modelAssetCacheManager = v79;

    v81 = [NSURL fileURLWithPath:v66 isDirectory:1];
    v82 = [[_ANEInMemoryModelCacheManager alloc] initWithURL:v81];
    modelCacheManager = v100->_modelCacheManager;
    v100->_modelCacheManager = v82;
  }

  return v100;
}

- (void)start
{
  v4 = qword_100036518;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001E598();
  }

  v5 = objc_opt_new();
  v6 = +[_ANEStrings tempDirectory];
  v24[0] = v6;
  v7 = +[_ANEStrings cloneDirectory];
  v24[1] = v7;
  v8 = [NSArray arrayWithObjects:v24 count:2];

  [v5 scheduleMaintenanceWithName:@"com.apple.aned.temporaryFilesMaintenance" directoryPaths:v8];
  v9 = qword_100036518;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001E5E8();
  }

  modelCacheManager = [(_ANEServer *)self modelCacheManager];
  [modelCacheManager scheduleMaintenanceWithName:@"com.apple.aned.modelCacheGC" directoryPaths:&__NSArray0__struct];

  v11 = qword_100036518;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001E638();
  }

  modelAssetCacheManager = [(_ANEServer *)self modelAssetCacheManager];
  [modelAssetCacheManager scheduleMaintenanceWithName:@"com.apple.aned.danglingModelsGC" directoryPaths:&__NSArray0__struct];

  v13 = +[_ANEStrings machServiceName];
  v14 = _ANEDaemonInterface();
  v15 = [_ANEXPCServiceHelper serviceWithName:v13 interface:v14 delegate:self requiresEntitlement:0 entitlementString:&stru_100030B88];
  unrestricted = self->_unrestricted;
  self->_unrestricted = v15;

  v17 = +[_ANEStrings machServiceNamePrivate];
  v18 = _ANEDaemonInterfacePrivate();
  v19 = +[_ANEStrings restrictedAccessEntitlement];
  v20 = [_ANEXPCServiceHelper serviceWithName:v17 interface:v18 delegate:self requiresEntitlement:1 entitlementString:v19];
  restricted = self->_restricted;
  self->_restricted = v20;

  v22 = qword_100036518;
  if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Ready to accept restricted and unrestricted XPC connections", v23, 2u);
  }

  self->_isRootDaemon = 1;
}

- (void)startUser
{
  v4 = qword_100036518;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001E688();
  }

  v5 = objc_opt_new();
  v6 = +[_ANEStrings userTempDirectory];
  v19[0] = v6;
  v7 = +[_ANEStrings userCloneDirectory];
  v19[1] = v7;
  v8 = [NSArray arrayWithObjects:v19 count:2];

  [v5 scheduleMaintenanceWithName:@"com.apple.aneuserd.temporaryFilesMaintenance" directoryPaths:v8];
  v9 = qword_100036518;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001E6D8();
  }

  modelCacheManager = [(_ANEServer *)self modelCacheManager];
  [modelCacheManager scheduleMaintenanceWithName:@"com.apple.aneuserd.modelCacheGC" directoryPaths:&__NSArray0__struct];

  v11 = qword_100036518;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001E728();
  }

  modelAssetCacheManager = [(_ANEServer *)self modelAssetCacheManager];
  [modelAssetCacheManager scheduleMaintenanceWithName:@"com.apple.aneuserd.danglingModelsGC" directoryPaths:&__NSArray0__struct];

  v13 = +[_ANEStrings userMachServiceName];
  v14 = _ANEDaemonInterface();
  v15 = [_ANEXPCServiceHelper serviceWithName:v13 interface:v14 delegate:self requiresEntitlement:0 entitlementString:&stru_100030B88];
  unrestrictedUser = self->_unrestrictedUser;
  self->_unrestrictedUser = v15;

  v17 = qword_100036518;
  if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "User daemon is ready to accept unrestrictedUser XPC connections", v18, 2u);
  }

  self->_isRootDaemon = 0;
}

- (void)handleLaunchServicesEvent:(id)event userInfo:(id)info
{
  eventCopy = event;
  infoCopy = info;
  v27 = eventCopy;
  if ([eventCopy isEqualToString:@"com.apple.LaunchServices.applicationRegistered"])
  {
    v26 = infoCopy;
    v8 = [infoCopy objectForKeyedSubscript:@"bundleIDs"];
    v25 = [v8 copy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = qword_100036518;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001E778();
      }

      goto LABEL_26;
    }

    v24 = +[LSApplicationWorkspace defaultWorkspace];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v25;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v10)
    {
      v11 = *v34;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          v14 = qword_100036518;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = NSStringFromSelector(a2);
            *buf = 138412546;
            v39 = v15;
            v40 = 2112;
            v41 = v13;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16, v24];
      }

      while (v10);
    }

    infoCopy = v26;
  }

  if ([eventCopy isEqualToString:{@"com.apple.LaunchServices.applicationUnregistered", v24}])
  {
    v26 = infoCopy;
    v16 = qword_100036518;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E7C8();
    }

    [v26 objectForKeyedSubscript:@"bundleIDs"];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v17 = v30 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v18)
    {
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          modelAssetCacheManager = [(_ANEServer *)self modelAssetCacheManager];
          [modelAssetCacheManager removeAllModelsForBundleID:v21];

          modelCacheManager = [(_ANEServer *)self modelCacheManager];
          [modelCacheManager removeAllModelsForBundleID:v21];
        }

        v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v18);
    }

    v25 = v17;
LABEL_26:

    infoCopy = v26;
  }
}

- (void)_handleIOKitEvent:(id)event
{
  eventCopy = event;
  v4 = +[_ANEStrings launchIOKitEvent];
  if ([eventCopy isEqualToString:v4])
  {

    goto LABEL_4;
  }

  v5 = +[_ANEStrings launchUserIOKitEvent];
  v6 = [eventCopy isEqualToString:v5];

  if (v6)
  {
LABEL_4:
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_DEBUG))
    {
      sub_10001E874();
    }

    os_unfair_lock_lock_with_options();
    if (!off_100036530)
    {
      v7 = qword_100036538;
      if (!qword_100036538)
      {
        v7 = dlopen("/System/Library/PrivateFrameworks/ANEServices.framework/ANEServices", 4);
        qword_100036538 = v7;
        if (!v7)
        {
          os_unfair_lock_unlock(&unk_100036528);
LABEL_12:
          if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_DEBUG))
          {
            sub_10001E8DC();
          }

          goto LABEL_16;
        }
      }

      off_100036530 = dlsym(v7, "ANEServicesInitializePlatformServices");
    }

    os_unfair_lock_unlock(&unk_100036528);
    if (off_100036530)
    {
      (off_100036530)(0, 0);
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E80C();
  }

LABEL_16:
}

- (void)handleIOKitEvent:(id)event
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100011EB4;
  v5[3] = &unk_100030A08;
  v5[4] = self;
  eventCopy = event;
  v3 = qword_100036520;
  v4 = eventCopy;
  if (v3 != -1)
  {
    dispatch_once(&qword_100036520, v5);
  }
}

- (void)beginRealTimeTaskWithReply:(id)reply
{
  replyCopy = reply;
  v5 = objc_autoreleasePoolPush();
  v6 = +[NSXPCConnection currentConnection];
  if (v6)
  {
    if ([_ANEXPCServiceHelper allowRestrictedAccessFor:v6])
    {
      v7 = 1;
      replyCopy[2](replyCopy, 1, 0);
    }

    else
    {
      v9 = NSStringFromSelector(a2);
      v10 = [_ANEErrors entitlementErrorForMethod:v9];
      (replyCopy)[2](replyCopy, 0, v10);

      v7 = 0;
    }
  }

  else
  {
    v8 = qword_100036518;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }

    replyCopy[2](replyCopy, 0, 0);
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  if (v7)
  {
    v11 = qword_100036518;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", &v13, 0xCu);
    }
  }
}

- (void)endRealTimeTaskWithReply:(id)reply
{
  replyCopy = reply;
  v5 = objc_autoreleasePoolPush();
  v6 = +[NSXPCConnection currentConnection];
  if (v6)
  {
    if ([_ANEXPCServiceHelper allowRestrictedAccessFor:v6])
    {
      v7 = 1;
      replyCopy[2](replyCopy, 1, 0);
    }

    else
    {
      v9 = NSStringFromSelector(a2);
      v10 = [_ANEErrors entitlementErrorForMethod:v9];
      (replyCopy)[2](replyCopy, 0, v10);

      v7 = 0;
    }
  }

  else
  {
    v8 = qword_100036518;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }

    replyCopy[2](replyCopy, 0, 0);
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  if (v7)
  {
    v11 = qword_100036518;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@", &v13, 0xCu);
    }
  }
}

- (void)echo:(id)echo withReply:(id)reply
{
  echoCopy = echo;
  replyCopy = reply;
  v8 = objc_autoreleasePoolPush();
  v9 = +[NSXPCConnection currentConnection];
  if (v9)
  {
    if ([_ANEXPCServiceHelper allowRestrictedAccessFor:v9])
    {
      v10 = 1;
      replyCopy[2](replyCopy, 1, 0);
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      v13 = [_ANEErrors entitlementErrorForMethod:v12];
      (replyCopy)[2](replyCopy, 0, v13);

      v10 = 0;
    }
  }

  else
  {
    v11 = qword_100036518;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }

    replyCopy[2](replyCopy, 0, 0);
    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);
  if (v10)
  {
    v14 = qword_100036518;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = NSStringFromSelector(a2);
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = echoCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%@: %@", &v16, 0x16u);
    }
  }
}

- (void)reportTelemetryToPPS:(id)s playload:(id)playload
{
  sCopy = s;
  playloadCopy = playload;
  v8 = objc_autoreleasePoolPush();
  v9 = +[NSXPCConnection currentConnection];
  if (v9)
  {
    v10 = [playloadCopy mutableCopy];
    [v9 auditToken];
    v11 = +[_ANEModelToken codeSigningIDFor:processIdentifier:](_ANEModelToken, "codeSigningIDFor:processIdentifier:", &v14, [v9 processIdentifier]);
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = &stru_100030B88;
    }

    [v10 setObject:v13 forKeyedSubscript:@"csIdentity"];
    [_ANEDataReporter reportTelemetryToPPS:sCopy playload:v10];
  }

  else
  {
    v10 = +[_ANELog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (void)compiledModelExistsFor:(id)for withReply:(id)reply
{
  forCopy = for;
  replyCopy = reply;
  v9 = mach_continuous_time();
  spid = os_signpost_id_generate(qword_100036518);
  [forCopy string_id];
  kdebug_trace();
  v10 = +[NSXPCConnection currentConnection];
  v11 = v10;
  if (v10)
  {
    [v10 auditToken];
    v12 = +[_ANEModelToken codeSigningIDFor:processIdentifier:](_ANEModelToken, "codeSigningIDFor:processIdentifier:", buf, [v11 processIdentifier]);
    v42 = v9;
    if (v12)
    {
      v13 = [forCopy key];
      v14 = [v13 isEqualToString:kANEModelKeyAllSegmentsValue];

      if (v14)
      {
        modelAssetCacheManager = [(_ANEServer *)self modelAssetCacheManager];
        v43 = [modelAssetCacheManager cachedModelAllSegmentsPathFor:forCopy csIdentity:v12];

        if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_DEBUG))
        {
          sub_10001EA0C();
        }

        modelAssetCacheManager2 = [(_ANEServer *)self modelAssetCacheManager];
        v17 = [modelAssetCacheManager2 scanAllPartitionsForModel:forCopy csIdentity:v12 expunge:0];

        v18 = qword_100036518;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          sub_10001EA74();
        }

        getCacheURLIdentifier = [forCopy getCacheURLIdentifier];
        v20 = 0;
        replyCopy[2](replyCopy, v17, getCacheURLIdentifier, 0);
      }

      else
      {
        modelAssetCacheManager3 = [(_ANEServer *)self modelAssetCacheManager];
        v43 = [modelAssetCacheManager3 cachedModelPathFor:forCopy csIdentity:v12];

        if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_DEBUG))
        {
          sub_10001E9A4();
        }

        v46 = &__NSDictionary0__struct;
        v31 = [_ANEStorageHelper memoryMapModelAtPath:v43 modelAttributes:&v46];
        v20 = v31;
        getCacheURLIdentifier = v46;
        if (v31)
        {
          getCacheURLIdentifier2 = [forCopy getCacheURLIdentifier];
          v33 = getCacheURLIdentifier2 == 0;

          if (v33)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v52 = sub_100013134;
            v53 = sub_100013144;
            v54 = 0;
            *v47 = 0;
            *&v47[8] = v47;
            *&v47[16] = 0x3032000000;
            v48 = sub_100013134;
            v49 = sub_100013144;
            v50 = 0;
            modelAssetCacheManager4 = [(_ANEServer *)self modelAssetCacheManager];
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_10001314C;
            v45[3] = &unk_100030A30;
            v45[4] = buf;
            v45[5] = v47;
            [modelAssetCacheManager4 cacheURLIdentifierForModel:forCopy useSourceURL:0 withReply:v45];

            v35 = *(*&buf[8] + 40);
            v36 = [NSString stringWithFormat:@"%@_%@", v35, *(*&v47[8] + 40)];
            [forCopy setCacheURLIdentifier:v36];

            _Block_object_dispose(v47, 8);
            _Block_object_dispose(buf, 8);
          }
        }

        getCacheURLIdentifier3 = [forCopy getCacheURLIdentifier];
        replyCopy[2](replyCopy, (v31 != 0), getCacheURLIdentifier3, 0);
      }

      [forCopy string_id];
      kdebug_trace();
      v38 = qword_100036518;
      v39 = v38;
      if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v41 = qword_100036518;
      }

      else
      {
        if (os_signpost_enabled(v38))
        {
          string_id = [forCopy string_id];
          *v47 = 134218240;
          *&v47[4] = string_id;
          *&v47[12] = 1024;
          *&v47[14] = 1;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_EVENT, spid, "_ANED_COMPILED_MODEL_EXISTS", "model.string_id:%llu status:%u", v47, 0x12u);
        }

        v41 = qword_100036518;
        if (os_signpost_enabled(v41))
        {
          *v47 = 134349056;
          *&v47[4] = v42;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_EVENT, spid, "_ANED_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", v47, 0xCu);
        }
      }
    }

    else
    {
      v24 = qword_100036518;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001EACC();
      }

      v25 = NSStringFromSelector(a2);
      v26 = [_ANEErrors missingCodeSigningErrorForMethod:v25];
      (replyCopy)[2](replyCopy, 0, 0, v26);

      [forCopy string_id];
      kdebug_trace();
      v27 = qword_100036518;
      v28 = v27;
      if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v20 = qword_100036518;
      }

      else
      {
        if (os_signpost_enabled(v27))
        {
          string_id2 = [forCopy string_id];
          *buf = 134218240;
          *&buf[4] = string_id2;
          *&buf[12] = 1024;
          *&buf[14] = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, spid, "_ANED_COMPILED_MODEL_EXISTS", "model.string_id:%llu status:%u", buf, 0x12u);
        }

        v20 = qword_100036518;
        if (os_signpost_enabled(v20))
        {
          *buf = 134349056;
          *&buf[4] = v9;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, spid, "_ANED_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v21 = qword_100036518;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }

    replyCopy[2](replyCopy, 0, 0, 0);
    [forCopy string_id];
    kdebug_trace();
    v22 = qword_100036518;
    v23 = v22;
    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v12 = qword_100036518;
    }

    else
    {
      if (os_signpost_enabled(v22))
      {
        *buf = 134218240;
        *&buf[4] = [forCopy string_id];
        *&buf[12] = 1024;
        *&buf[14] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_EVENT, spid, "_ANED_COMPILED_MODEL_EXISTS", "model.string_id:%llu status:%u", buf, 0x12u);
      }

      v12 = qword_100036518;
      if (os_signpost_enabled(v12))
      {
        *buf = 134349056;
        *&buf[4] = v9;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, spid, "_ANED_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }
  }
}

- (void)purgeCompiledModel:(id)model withReply:(id)reply
{
  modelCopy = model;
  replyCopy = reply;
  v9 = mach_continuous_time();
  spid = os_signpost_id_generate(qword_100036518);
  [modelCopy string_id];
  kdebug_trace();
  v10 = +[NSXPCConnection currentConnection];
  v11 = v10;
  v65 = v9;
  if (v10)
  {
    [v10 auditToken];
    v12 = +[_ANEModelToken codeSigningIDFor:processIdentifier:](_ANEModelToken, "codeSigningIDFor:processIdentifier:", v67, [v11 processIdentifier]);
    if (v12)
    {
      modelURL = [modelCopy modelURL];
      path = [modelURL path];
      v15 = [_ANEModelCacheManager isSystemModelPath:path];

      if (!v15)
      {
        v63 = +[_ANEStrings processModelShareAccessEntitlement];
        v64 = [v11 valueForEntitlement:?];
        if (v64 && [v64 BOOLValue])
        {
          v32 = qword_100036518;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = NSStringFromSelector(a2);
            processIdentifier = [v11 processIdentifier];
            *v67 = 138412802;
            string_id5 = v33;
            v69 = 1024;
            *v70 = processIdentifier;
            *&v70[4] = 2112;
            *&v70[6] = v63;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%@: client(%d) : has entitlement(%@)", v67, 0x1Cu);
          }

          v35 = qword_100036518;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            sub_10001EB10();
          }

          v36 = NSStringFromSelector(a2);
          v37 = [_ANEErrors systemModelPurgeNotAllowedForMethod:v36];
          replyCopy[2](replyCopy, 0, v37);

          [modelCopy string_id];
          kdebug_trace();
          v38 = qword_100036518;
          v39 = v38;
          if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {

            v41 = qword_100036518;
          }

          else
          {
            if (os_signpost_enabled(v38))
            {
              string_id = [modelCopy string_id];
              *buf = 134218240;
              v74 = string_id;
              v75 = 1024;
              v76 = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "model.string_id:%llu status:%u", buf, 0x12u);
            }

            v41 = qword_100036518;
            if (os_signpost_enabled(v41))
            {
              *buf = 134349056;
              v74 = v65;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
            }
          }
        }

        else
        {
          v42 = [modelCopy key];
          v43 = [v42 isEqualToString:kANEModelKeyAllSegmentsValue];

          modelAssetCacheManager = [(_ANEServer *)self modelAssetCacheManager];
          if (v43)
          {
            [modelAssetCacheManager cachedModelAllSegmentsPathFor:modelCopy csIdentity:v12];
          }

          else
          {
            [modelAssetCacheManager cachedModelPathFor:modelCopy csIdentity:v12];
          }
          v62 = ;

          if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_DEBUG))
          {
            sub_10001EB54();
          }

          v61 = [_ANEStorageHelper removeDirectoryAtPath:v62];
          modelAssetCacheManager2 = [(_ANEServer *)self modelAssetCacheManager];
          if (v43)
          {
            [modelAssetCacheManager2 URLForModel:modelCopy bundleID:v12 forAllSegments:1];
          }

          else
          {
            [modelAssetCacheManager2 URLForModel:modelCopy bundleID:v12];
          }
          v46 = ;
          path2 = [v46 path];

          v48 = [path2 stringByAppendingPathComponent:@"shapes/"];
          [_ANEStorageHelper removeShapesDirectoryAtPath:v48];

          v49 = +[_ANEStrings modelPurgeInAllPartitionsEntitlement];

          v63 = v49;
          v50 = [v11 valueForEntitlement:v49];

          v64 = v50;
          if (v50 && [v50 BOOLValue])
          {
            v51 = qword_100036518;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
            {
              v59 = NSStringFromSelector(a2);
              bOOLValue = [v64 BOOLValue];
              *v67 = 138413058;
              string_id5 = v59;
              v69 = 2112;
              *v70 = modelCopy;
              *&v70[8] = 2112;
              *&v70[10] = v63;
              v71 = 1024;
              v72 = bOOLValue;
              _os_log_debug_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "%@: Expunge %@ from ALL partitions. [%@ = %d]", v67, 0x26u);
            }

            modelAssetCacheManager3 = [(_ANEServer *)self modelAssetCacheManager];
            v53 = [modelAssetCacheManager3 scanAllPartitionsForModel:modelCopy csIdentity:v12 expunge:1];

            if ((v53 & 1) == 0)
            {
              v54 = qword_100036518;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                NSStringFromSelector(a2);
                objc_claimAutoreleasedReturnValue();
                sub_10001EBBC();
              }
            }
          }

          replyCopy[2](replyCopy, v61, 0);
          [modelCopy string_id];
          kdebug_trace();
          v55 = qword_100036518;
          v56 = v55;
          if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {

            v58 = qword_100036518;
          }

          else
          {
            if (os_signpost_enabled(v55))
            {
              string_id2 = [modelCopy string_id];
              *v67 = 134218240;
              string_id5 = string_id2;
              v69 = 1024;
              *v70 = 1;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v56, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "model.string_id:%llu status:%u", v67, 0x12u);
            }

            v58 = qword_100036518;
            if (os_signpost_enabled(v58))
            {
              *v67 = 134349056;
              string_id5 = v65;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v58, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "%{public, signpost.description:begin_time}llu ", v67, 0xCu);
            }
          }

          v41 = v62;
        }

        v22 = v63;
        goto LABEL_63;
      }

      v16 = qword_100036518;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001EC00();
      }

      v17 = NSStringFromSelector(a2);
      v18 = [_ANEErrors systemModelPurgeNotAllowedForMethod:v17];
      replyCopy[2](replyCopy, 0, v18);

      [modelCopy string_id];
      kdebug_trace();
      v19 = qword_100036518;
      v20 = v19;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (os_signpost_enabled(v19))
        {
          string_id3 = [modelCopy string_id];
          *buf = 134218240;
          v74 = string_id3;
          v75 = 1024;
          v76 = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "model.string_id:%llu status:%u", buf, 0x12u);
        }

        v22 = qword_100036518;
        if (!os_signpost_enabled(v22))
        {
          goto LABEL_63;
        }

        *buf = 134349056;
        v74 = v65;
        v23 = buf;
        goto LABEL_25;
      }
    }

    else
    {
      v27 = qword_100036518;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001EACC();
      }

      v28 = NSStringFromSelector(a2);
      v29 = [_ANEErrors missingCodeSigningErrorForMethod:v28];
      replyCopy[2](replyCopy, 0, v29);

      [modelCopy string_id];
      kdebug_trace();
      v19 = qword_100036518;
      v30 = v19;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (os_signpost_enabled(v19))
        {
          string_id4 = [modelCopy string_id];
          *v67 = 134218240;
          string_id5 = string_id4;
          v69 = 1024;
          *v70 = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "model.string_id:%llu status:%u", v67, 0x12u);
        }

        v22 = qword_100036518;
        if (!os_signpost_enabled(v22))
        {
          goto LABEL_63;
        }

        *v67 = 134349056;
        string_id5 = v65;
        v23 = v67;
LABEL_25:
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "%{public, signpost.description:begin_time}llu ", v23, 0xCu);
LABEL_63:

        goto LABEL_64;
      }
    }

    v22 = qword_100036518;
    goto LABEL_63;
  }

  v24 = qword_100036518;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001E960();
  }

  replyCopy[2](replyCopy, 0, 0);
  [modelCopy string_id];
  kdebug_trace();
  v25 = qword_100036518;
  v26 = v25;
  if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v12 = qword_100036518;
  }

  else
  {
    if (os_signpost_enabled(v25))
    {
      *v67 = 134218240;
      string_id5 = [modelCopy string_id];
      v69 = 1024;
      *v70 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "model.string_id:%llu status:%u", v67, 0x12u);
    }

    v12 = qword_100036518;
    if (os_signpost_enabled(v12))
    {
      *v67 = 134349056;
      string_id5 = v65;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_PURGE_COMPILED", "%{public, signpost.description:begin_time}llu ", v67, 0xCu);
    }
  }

LABEL_64:
}

- (void)loadModel:(id)model sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos withReply:(id)reply
{
  modelCopy = model;
  extensionCopy = extension;
  optionsCopy = options;
  replyCopy = reply;
  v195 = mach_continuous_time();
  spid = os_signpost_id_generate(qword_100036518);
  [modelCopy string_id];
  kdebug_trace();
  v201 = os_transaction_create();
  qosCopy = qos;
  context = objc_autoreleasePoolPush();
  v199 = +[NSXPCConnection currentConnection];
  if (!v199)
  {
    v23 = qword_100036518;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }

    if (replyCopy)
    {
      (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, 0, 0);
    }

    [modelCopy string_id];
    kdebug_trace();
    v20 = qword_100036518;
    v24 = v20;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (os_signpost_enabled(v20))
      {
        *buf = 67109632;
        *v222 = qos;
        *&v222[4] = 2048;
        *&v222[6] = [modelCopy string_id];
        *&v222[14] = 1024;
        *&v222[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v22 = qword_100036518;
      if (!os_signpost_enabled(v22))
      {
        goto LABEL_21;
      }

LABEL_20:
      *buf = 134349056;
      *v222 = v195;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
LABEL_21:
      v25 = v22;
LABEL_26:
      v29 = 0;
      goto LABEL_172;
    }

LABEL_25:

    v25 = qword_100036518;
    goto LABEL_26;
  }

  v15 = [modelCopy key];
  v16 = [v15 isEqualToString:kANEModelKeyAllSegmentsValue];

  if (v16)
  {
    v17 = qword_100036518;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [modelCopy key];
      objc_claimAutoreleasedReturnValue();
      sub_10001EC44();
    }

    if (replyCopy)
    {
      v18 = NSStringFromSelector(a2);
      v19 = [_ANEErrors invalidModelKeyErrorForMethod:v18];
      (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, 0, v19);
    }

    [modelCopy string_id];
    kdebug_trace();
    v20 = qword_100036518;
    v21 = v20;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (os_signpost_enabled(v20))
      {
        *buf = 67109632;
        *v222 = qosCopy;
        *&v222[4] = 2048;
        *&v222[6] = [modelCopy string_id];
        *&v222[14] = 1024;
        *&v222[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v22 = qword_100036518;
      if (!os_signpost_enabled(v22))
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_25;
  }

  modelURL = [modelCopy modelURL];
  pathComponents = [modelURL pathComponents];

  v194 = pathComponents;
  if ([pathComponents count])
  {
    if ([pathComponents count] == 1)
    {
      modelURL2 = [modelCopy modelURL];
      path = [modelURL2 path];
    }

    else
    {
      modelURL2 = [pathComponents objectAtIndexedSubscript:{objc_msgSend(pathComponents, "count") - 2}];
      v31 = [pathComponents objectAtIndexedSubscript:{objc_msgSend(pathComponents, "count") - 1}];
      path = [modelURL2 stringByAppendingPathComponent:v31];
    }
  }

  else
  {
    v30 = qword_100036518;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v222 = modelCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "No model pathName? %@", buf, 0xCu);
    }

    path = @"Unknown";
  }

  processIdentifier = [v199 processIdentifier];
  [v199 auditToken];
  v192 = [_ANEModelToken tokenWithAuditToken:buf modelIdentifier:path processIdentifier:processIdentifier];
  teamIdentity = [v192 teamIdentity];
  v34 = teamIdentity == 0;

  if (v34)
  {
    v35 = qword_100036518;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = NSStringFromSelector(a2);
      *buf = 138412546;
      *v222 = v36;
      *&v222[8] = 1024;
      *&v222[10] = processIdentifier;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%@: client(%d) : missing teamIdentifier", buf, 0x12u);
    }
  }

  csIdentity = [v192 csIdentity];
  if (csIdentity)
  {
    if (+[_ANEQoSMapper aneRealTimeTaskQoS]!= qosCopy || [_ANEXPCServiceHelper allowRestrictedAccessFor:v199])
    {
      v37 = [optionsCopy objectForKeyedSubscript:kANEFModelTypeKey];
      v185 = [v37 isEqualToString:kANEFModelPreCompiledValue];

      v181 = [optionsCopy objectForKeyedSubscript:kANEFIntermediateBufferHandleKey];
      unsignedIntegerValue = [v181 unsignedIntegerValue];
      v38 = [optionsCopy objectForKeyedSubscript:off_1000363B0];
      bOOLValue = [v38 BOOLValue];

      modelURL3 = [modelCopy modelURL];
      path2 = [modelURL3 path];
      v183 = [_ANEDataReporter reportClient:csIdentity modelName:path2];

      v41 = qword_100036518;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = NSStringFromSelector(a2);
        perfStatsMask = [modelCopy perfStatsMask];
        *buf = 138413826;
        *v222 = v42;
        *&v222[8] = 2112;
        *&v222[10] = csIdentity;
        *&v222[18] = 2112;
        *&v222[20] = modelCopy;
        *&v222[28] = 1024;
        *&v222[30] = v185;
        *&v222[34] = 1024;
        *&v222[36] = bOOLValue;
        *&v222[40] = 2112;
        *&v222[42] = v183;
        *&v222[50] = 1024;
        *&v222[52] = perfStatsMask;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "START: %@: csIdentity=%@ : model=%@ : isPreCompiledModel=%d : existsInCache=%d : coreAnalyticsClientType=%@ StatsMask=%d", buf, 0x3Cu);
      }

      v44 = [optionsCopy objectForKeyedSubscript:kANEFMemoryPoolIDKey];
      unsignedLongLongValue = [v44 unsignedLongLongValue];

      dsema = [&__NSDictionary0__struct mutableCopy];
      if (bOOLValue)
      {
        v45 = [optionsCopy objectForKeyedSubscript:off_1000363A8];
        v46 = v45 == 0;

        if (v46 || (v47 = [NSString alloc], [optionsCopy objectForKeyedSubscript:off_1000363A8], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v47, "initWithString:", v48), v48, !v49))
        {
          v49 = qword_100036518;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            sub_10001EF98();
            v189 = 0;
            v29 = 0;
LABEL_170:

            v80 = v181;
            goto LABEL_171;
          }

LABEL_117:
          v189 = 0;
          v29 = 0;
          goto LABEL_170;
        }

        if ([csIdentity containsString:@"../"])
        {
          v50 = qword_100036518;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            sub_10001EF54();
          }

LABEL_116:

          goto LABEL_117;
        }

        if ([v49 containsString:@".."])
        {
          v50 = qword_100036518;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            sub_10001EF10();
          }

          goto LABEL_116;
        }

        modelCacheManager = [(_ANEServer *)self modelCacheManager];
        v180 = [modelCacheManager cachedModelPathMatchingHash:v49 csIdentity:csIdentity];

        v107 = qword_100036518;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
        {
          v108 = NSStringFromSelector(a2);
          sub_10001EC8C(v108);
        }

        v58 = v180;
        if ((v185 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (!v185)
        {
          v206 = dsema;
          v207 = 0;
          v205 = 0;
          v182 = [(_ANEServer *)self compileAsNeededAndLoadCachedModel:modelCopy csIdentity:csIdentity sandboxExtension:extensionCopy options:optionsCopy qos:qosCopy modelFilePath:&v207 modelAttributes:&v206 error:&v205];
          v179 = v207;
          v174 = v206;

          v75 = v205;
          goto LABEL_89;
        }

        v58 = 0;
      }

      modelURL4 = [modelCopy modelURL];
      path3 = [modelURL4 path];

      v60 = qword_100036518;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v147 = NSStringFromSelector(a2);
        *buf = 138412802;
        *v222 = v147;
        *&v222[8] = 2112;
        *&v222[10] = path3;
        *&v222[18] = 1024;
        *&v222[20] = bOOLValue;
        _os_log_debug_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "%@: Loading pre-compiled model modelFilePath=%@ : existsInCache=%d", buf, 0x1Cu);
      }

      modelURL5 = [modelCopy modelURL];
      path4 = [modelURL5 path];
      v63 = [_ANEHashEncoding hexStringForString:path4];

      v64 = [modelCopy key];
      v65 = [_ANEHashEncoding hexStringForString:v64];

      v66 = [NSString stringWithFormat:@"%@_%@", v63, v65];
      v67 = qword_100036518;
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        v68 = NSStringFromSelector(a2);
        sub_10001ECF8(v68);
      }

      [modelCopy setCacheURLIdentifier:v66];
      v58 = path3;
LABEL_64:
      v209 = 0;
      v179 = v58;
      v69 = [_ANESandboxingHelper consumeSandboxExtension:extensionCopy forModel:modelCopy error:&v209];
      v188 = v209;
      v208 = dsema;
      v182 = [_ANEStorageHelper memoryMapModelAtPath:v58 isPrecompiled:v185 modelAttributes:&v208];
      v174 = v208;

      if (v188)
      {
        v70 = qword_100036518;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v71 = NSStringFromSelector(a2);
          sub_10001ED54(v71);
        }
      }

      if (!v182)
      {
        v72 = qword_100036518;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v73 = NSStringFromSelector(a2);
          *buf = 138412802;
          *v222 = v73;
          *&v222[8] = 2112;
          *&v222[10] = v179;
          *&v222[18] = 1024;
          *&v222[20] = bOOLValue;
          _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "%@: No model at modelFilePath=%@ : existsInCache=%d", buf, 0x1Cu);
        }
      }

      if (([_ANESandboxingHelper releaseSandboxExtension:extensionCopy handle:v69]& 1) == 0)
      {
        v74 = qword_100036518;
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v149 = NSStringFromSelector(a2);
          v150 = *__error();
          *buf = 138413058;
          *v222 = v149;
          *&v222[8] = 2112;
          *&v222[10] = extensionCopy;
          *&v222[18] = 2048;
          *&v222[20] = v69;
          *&v222[28] = 1024;
          *&v222[30] = v150;
          _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "%@: releaseSandboxExtension:(%@) handle:(%lld) failed (%d)", buf, 0x26u);
        }
      }

      v75 = 0;
LABEL_89:
      v189 = v75;
      v81 = [optionsCopy objectForKeyedSubscript:kANEFPerformanceStatsMaskKey];
      v175 = v81;
      if (v81)
      {
        [modelCopy setPerfStatsMask:{+[_ANEPerformanceStats driverMaskForANEFMask:](_ANEPerformanceStats, "driverMaskForANEFMask:", objc_msgSend(v81, "unsignedIntValue"))}];
      }

      v82 = qword_100036518;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = NSStringFromSelector(a2);
        *buf = 138412546;
        *v222 = v83;
        *&v222[8] = 2112;
        *&v222[10] = v175;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "%@: ANEF Perf Stats mask: %@", buf, 0x16u);
      }

      if (v182)
      {
        v171 = [v182 length];
        v84 = [_ANEQoSMapper queueIndexForQoS:qosCopy];
        semaArray = [(_ANEServer *)self semaArray];
        dsemaa = [semaArray objectAtIndexedSubscript:v84];

        v86 = dispatch_time(0, 30000000000);
        if (dispatch_semaphore_wait(dsemaa, v86))
        {
          if (replyCopy)
          {
            getCacheURLIdentifier = [modelCopy getCacheURLIdentifier];
            v88 = NSStringFromSelector(a2);
            v89 = [_ANEErrors timeoutErrorForMethod:v88];
            (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, getCacheURLIdentifier, v89);
          }

          [modelCopy string_id];
          kdebug_trace();
          v90 = qword_100036518;
          v91 = v90;
          if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {

            v93 = qword_100036518;
          }

          else
          {
            if (os_signpost_enabled(v90))
            {
              string_id = [modelCopy string_id];
              *buf = 67109632;
              *v222 = qosCopy;
              *&v222[4] = 2048;
              *&v222[6] = string_id;
              *&v222[14] = 1024;
              *&v222[16] = 0;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v91, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
            }

            v93 = qword_100036518;
            if (os_signpost_enabled(v93))
            {
              *buf = 134349056;
              *v222 = v195;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
            }
          }

          v29 = 0;
LABEL_169:

          dsema = v174;
          v49 = v182;
          goto LABEL_170;
        }

        v97 = qword_100036518;
        if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
        {
          v98 = NSStringFromSelector(a2);
          sub_10001EDB0(v98);
        }

        v164 = [_ANEProgramCache programForConnection:v199 model:modelCopy bundleID:csIdentity];
        [v164 setIntermediateBufferHandle:unsignedIntegerValue];
        [v164 setIsNewInstance:0];
        if ((+[_ANEDeviceInfo isExcessivePowerDrainWhenIdle]& 1) != 0)
        {
          bOOLValue3 = 1;
        }

        else
        {
          bOOLValue3 = [_ANEXPCServiceHelper allowAggressivePowerSavingFor:v199];
        }

        v157 = [optionsCopy objectForKeyedSubscript:kANEFEnablePowerSavingKey];
        if (v157)
        {
          v100 = qword_100036518;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
          {
            v151 = NSStringFromSelector(a2);
            bOOLValue2 = [v157 BOOLValue];
            *buf = 138412802;
            *v222 = v151;
            *&v222[8] = 1024;
            *&v222[10] = bOOLValue3;
            *&v222[14] = 1024;
            *&v222[16] = bOOLValue2;
            _os_log_debug_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEBUG, "%@: enableAggressivePowerSaving=%d :  powerSavingsRequested=%d", buf, 0x18u);
          }

          bOOLValue3 = [v157 BOOLValue];
        }

        v169 = bOOLValue3;
        v163 = [optionsCopy objectForKeyedSubscript:kANEFModelIdentityStrKey];
        if (v163)
        {
          v101 = qword_100036518;
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
          {
            v102 = NSStringFromSelector(a2);
            sub_10001EE0C(v102);
          }
        }

        v159 = [optionsCopy objectForKeyedSubscript:kANEFEnableLateLatchKey];
        if (v159)
        {
          v103 = qword_100036518;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
          {
            v104 = NSStringFromSelector(a2);
            [v159 BOOLValue];
            sub_10001EE68();
          }

          bOOLValue4 = [v159 BOOLValue];
        }

        else
        {
          bOOLValue4 = 0;
        }

        v158 = [optionsCopy objectForKeyedSubscript:kANEFSkipPreparePhaseKey];
        v168 = bOOLValue4;
        if (v158)
        {
          v109 = qword_100036518;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            v110 = NSStringFromSelector(a2);
            [v158 BOOLValue];
            sub_10001EEBC();
          }

          bOOLValue5 = [v158 BOOLValue];
        }

        else
        {
          bOOLValue5 = 0;
        }

        v112 = [optionsCopy objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];
        v113 = v112 == 0;

        if (v113)
        {
          v162 = 0;
        }

        else
        {
          v162 = [optionsCopy objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];
        }

        v161 = +[NSDate date];
        perfStatsMask2 = [modelCopy perfStatsMask];
        processIdentifier2 = [v199 processIdentifier];
        getCacheURLIdentifier2 = [modelCopy getCacheURLIdentifier];
        v117 = [optionsCopy objectForKeyedSubscript:kANEFKeepModelMemoryWiredKey];
        v204 = v189;
        LOBYTE(v156) = [v117 BOOLValue];
        LODWORD(v155) = processIdentifier2;
        LOBYTE(v154) = v168;
        HIDWORD(v153) = perfStatsMask2;
        LOBYTE(v153) = bOOLValue5;
        v160 = [v164 createProgramInstanceForModel:v182 modelToken:v192 modelFilePath:v179 qos:qosCopy isPreCompiled:v185 enablePowerSaving:v169 skipPreparePhase:v153 statsMask:unsignedLongLongValue memoryPoolID:v154 enableLateLatch:v163 modelIdentityStr:v155 owningPid:getCacheURLIdentifier2 cacheUrlIdentifier:v162 aotCacheUrlIdentifier:v156 optOutOfModelMemoryUnwiring:&v204 error:?];
        v170 = v204;

        v118 = +[NSDate date];
        [v118 timeIntervalSinceDate:v161];
        v120 = v119;
        if (v160)
        {
          programHandle = [v164 programHandle];
          unsignedIntegerValue = [v164 intermediateBufferHandle];
          queueDepth = [v164 queueDepth];
          HIDWORD(v166) = [v164 numInputs];
          LODWORD(v166) = [v164 numOutputs];
          wiredMemory = [v164 wiredMemory];
          createSymbolMapping = [v164 createSymbolMapping];
          [v174 setObject:createSymbolMapping forKeyedSubscript:kANEFModelDescriptionKey];
          v122 = qword_100036518;
          if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
          {
            modelURL6 = [modelCopy modelURL];
            path5 = [modelURL6 path];
            *buf = 134219010;
            *v222 = v171;
            *&v222[8] = 2048;
            *&v222[10] = wiredMemory;
            *&v222[18] = 2112;
            *&v222[20] = csIdentity;
            *&v222[28] = 2112;
            *&v222[30] = path5;
            *&v222[38] = 2112;
            *&v222[40] = createSymbolMapping;
            _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "[ANE Model Stats] : modelSize=%lu : wiredMemory=%ld : csIdentity=%@ : model=%@ : symbolMappings=%@", buf, 0x34u);
          }
        }

        else
        {
          wiredMemory = 0;
          v166 = 0;
          programHandle = 0;
          queueDepth = 0;
        }

        dispatch_semaphore_signal(dsemaa);

        v95 = v120 * 1000.0;
        if (v160)
        {
          [_ANEDataReporter addValue:1 forScalarKey:@"ANEModelLoaded"];
          if (!replyCopy)
          {
            v127 = 1;
            goto LABEL_157;
          }

          v125 = [v174 copy];
          getCacheURLIdentifier3 = [modelCopy getCacheURLIdentifier];
          (*(replyCopy + 2))(replyCopy, 1, v125, programHandle, unsignedIntegerValue, queueDepth, getCacheURLIdentifier3, 0);

          v127 = 1;
          goto LABEL_155;
        }

        v96 = v170;
      }

      else
      {
        v94 = qword_100036518;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          v148 = NSStringFromSelector(a2);
          *buf = 138413314;
          *v222 = v148;
          *&v222[8] = 2112;
          *&v222[10] = modelCopy;
          *&v222[18] = 2112;
          *&v222[20] = csIdentity;
          *&v222[28] = 1024;
          *&v222[30] = v185;
          *&v222[34] = 2112;
          *&v222[36] = v189;
          _os_log_error_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, "%@: Model load failed. model=%@ : csIdentity=%@ : isPreCompiledModel=%d : lErr=%@", buf, 0x30u);
        }

        v171 = 0;
        wiredMemory = 0;
        v166 = 0;
        programHandle = 0;
        queueDepth = 0;
        v95 = 0.0;
        v96 = v189;
      }

      [_ANEDataReporter addValue:1 forScalarKey:@"ModelFailsToLoad"];
      if (!replyCopy)
      {
        v127 = 0;
        v170 = v96;
        goto LABEL_157;
      }

      v125 = [v174 copy];
      v127 = 0;
      (*(replyCopy + 2))(replyCopy, 0, v125, 0, 0, 0, 0, v96);
      v170 = v96;
LABEL_155:

LABEL_157:
      v128 = qword_100036518;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
      {
        v129 = NSStringFromSelector(a2);
        *buf = 138414082;
        *v222 = v129;
        *&v222[8] = 2112;
        *&v222[10] = csIdentity;
        *&v222[18] = 2112;
        *&v222[20] = modelCopy;
        *&v222[28] = 1024;
        *&v222[30] = v185;
        *&v222[34] = 2048;
        *&v222[36] = programHandle;
        *&v222[44] = 2048;
        *&v222[46] = unsignedIntegerValue;
        *&v222[54] = 2048;
        v223 = wiredMemory;
        v224 = 1024;
        v225 = queueDepth;
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_INFO, "END: %@: csIdentity=%@ : model=%@ : isPreCompiledModel=%d : programHandle=%llu : intermediateBufferHandle=%llu :wiredMemory=%ld : queueDepth=%d", buf, 0x4Au);
      }

      modelURL7 = [modelCopy modelURL];
      if (modelURL7)
      {
        [modelCopy modelURL];
      }

      else
      {
        [modelCopy sourceURL];
      }
      v131 = ;
      v203 = &stru_100030B88;
      v132 = [_ANEStrings trimmedModelPath:v131 trimmedPath:&v203];
      dsemaa = v203;

      v212[0] = @"csIdentity";
      v212[1] = @"modelURL";
      v213[0] = csIdentity;
      v213[1] = dsemaa;
      v212[2] = @"privacy_score";
      v214 = [NSNumber numberWithBool:v132];
      v212[3] = @"programHandle";
      v190 = v214;
      v215 = [NSNumber numberWithUnsignedLongLong:programHandle];
      v212[4] = @"isPrecompiled";
      v177 = v215;
      v133 = [NSNumber numberWithBool:v185];
      v216 = v133;
      v212[5] = @"cacheHit";
      v134 = [NSNumber numberWithBool:bOOLValue];
      v217 = v134;
      v212[6] = @"modelLoadingTime";
      v135 = [NSNumber numberWithDouble:v95];
      v218 = v135;
      v212[7] = @"modelSize";
      v136 = [NSNumber numberWithUnsignedLong:v171];
      v219 = v136;
      v212[8] = @"modelLoaded";
      v137 = [NSNumber numberWithBool:v127];
      v220 = v137;
      v138 = [NSDictionary dictionaryWithObjects:v213 forKeys:v212 count:9];
      [_ANEDataReporter reportTelemetryToPPS:@"modelLoad" playload:v138];

      [modelCopy string_id];
      kdebug_trace();
      v139 = qword_100036518;
      v140 = v139;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
      {
        string_id2 = [modelCopy string_id];
        *buf = 67109888;
        *v222 = qosCopy;
        *&v222[4] = 2048;
        *&v222[6] = string_id2;
        *&v222[14] = 1024;
        *&v222[16] = HIDWORD(v166);
        *&v222[20] = 1024;
        *&v222[22] = v166;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "qos:%u model.string_id:%llu numInputs:%u numOutputs:%u", buf, 0x1Eu);
      }

      [modelCopy string_id];
      [v182 length];
      kdebug_trace();
      v142 = qword_100036518;
      v93 = v142;
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v142))
      {
        string_id3 = [modelCopy string_id];
        v144 = [v182 length];
        *buf = 67109888;
        *v222 = qosCopy;
        *&v222[4] = 2048;
        *&v222[6] = string_id3;
        *&v222[14] = 2048;
        *&v222[16] = v144;
        *&v222[24] = 2048;
        *&v222[26] = wiredMemory;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v93, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "qos:%u model.string_id:%llu cachedModel.length:%lu wiredMemory:%lu", buf, 0x26u);
      }

      v29 = 1;
      v189 = v170;
      goto LABEL_169;
    }

    if (replyCopy)
    {
      v76 = NSStringFromSelector(a2);
      v77 = [_ANEErrors entitlementErrorForMethod:v76];
      (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, 0, v77);
    }

    [modelCopy string_id];
    kdebug_trace();
    v54 = qword_100036518;
    v78 = v54;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (os_signpost_enabled(v54))
      {
        string_id4 = [modelCopy string_id];
        *buf = 67109632;
        *v222 = qosCopy;
        *&v222[4] = 2048;
        *&v222[6] = string_id4;
        *&v222[14] = 1024;
        *&v222[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v57 = qword_100036518;
      if (!os_signpost_enabled(v57))
      {
        goto LABEL_85;
      }

      goto LABEL_84;
    }

LABEL_105:

    v80 = qword_100036518;
    goto LABEL_106;
  }

  v51 = qword_100036518;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001EFDC();
  }

  if (replyCopy)
  {
    v52 = NSStringFromSelector(a2);
    v53 = [_ANEErrors missingCodeSigningErrorForMethod:v52];
    (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, 0, v53);
  }

  [modelCopy string_id];
  kdebug_trace();
  v54 = qword_100036518;
  v55 = v54;
  if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_105;
  }

  if (os_signpost_enabled(v54))
  {
    string_id5 = [modelCopy string_id];
    *buf = 67109632;
    *v222 = qosCopy;
    *&v222[4] = 2048;
    *&v222[6] = string_id5;
    *&v222[14] = 1024;
    *&v222[16] = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
  }

  v57 = qword_100036518;
  if (!os_signpost_enabled(v57))
  {
    goto LABEL_85;
  }

LABEL_84:
  *buf = 134349056;
  *v222 = v195;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
LABEL_85:
  v80 = v57;
LABEL_106:
  v29 = 0;
LABEL_171:

  v25 = path;
LABEL_172:

  objc_autoreleasePoolPop(context);
  if (v29)
  {
    v145 = qword_100036518;
    v146 = v145;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v145))
    {
      *v210 = 134349056;
      v211 = v195;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v146, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_LOAD", "%{public, signpost.description:begin_time}llu ", v210, 0xCu);
    }
  }
}

- (void)loadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos withReply:(id)reply
{
  instanceCopy = instance;
  optionsCopy = options;
  paramsCopy = params;
  replyCopy = reply;
  v98 = mach_continuous_time();
  spid = os_signpost_id_generate(qword_100036518);
  [instanceCopy string_id];
  kdebug_trace();
  v105 = os_transaction_create();
  v12 = qword_100036518;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138412802;
    *v114 = v13;
    *&v114[8] = 2112;
    *&v114[10] = instanceCopy;
    *&v114[18] = 2112;
    *&v114[20] = optionsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@: model:%@ options:%@", buf, 0x20u);
  }

  context = objc_autoreleasePoolPush();
  v14 = +[NSXPCConnection currentConnection];
  v103 = v14;
  if (!v14)
  {
    v28 = qword_100036518;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }

    if (replyCopy)
    {
      v29 = NSStringFromSelector(a2);
      v30 = [_ANEErrors programLoadNewInstanceErrorForMethod:v29];
      (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, 0, v30);
    }

    [instanceCopy string_id];
    kdebug_trace();
    v31 = qword_100036518;
    v32 = v31;
    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v17 = qword_100036518;
    }

    else
    {
      if (os_signpost_enabled(v31))
      {
        string_id = [instanceCopy string_id];
        *buf = 67109632;
        *v114 = qos;
        *&v114[4] = 2048;
        *&v114[6] = string_id;
        *&v114[14] = 1024;
        *&v114[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v17 = qword_100036518;
      if (os_signpost_enabled(v17))
      {
        *buf = 134349056;
        *v114 = v98;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }

    goto LABEL_42;
  }

  if (!+[_ANEDeviceInfo isInternalBuild](_ANEDeviceInfo, "isInternalBuild") || (+[_ANEStrings adapterWeightsAccessEntitlementBypassBootArg], v15 = objc_claimAutoreleasedReturnValue(), v16 = [_ANEDeviceInfo isBoolBootArgSetTrue:v15], v15, !v16))
  {
    v17 = +[_ANEStrings adapterWeightsAccessEntitlement];
    v18 = [v14 valueForEntitlement:v17];
    v19 = v18;
    if (v18 && ([v18 BOOLValue] & 1) != 0)
    {

      goto LABEL_11;
    }

    v34 = qword_100036518;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      bOOLValue = [v19 BOOLValue];
      *buf = 136315906;
      *v114 = "[_ANEServer loadModelNewInstance:options:modelInstParams:qos:withReply:]";
      *&v114[8] = 2112;
      *&v114[10] = instanceCopy;
      *&v114[18] = 2112;
      *&v114[20] = v17;
      v115 = 1024;
      LODWORD(v116) = bOOLValue;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s: %@ : No entitlement! [%@ = %d]", buf, 0x26u);
    }

    if (replyCopy)
    {
      v35 = NSStringFromSelector(a2);
      v36 = [_ANEErrors programLoadNewInstanceErrorForMethod:v35];
      (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, 0, v36);
    }

    [instanceCopy string_id];
    kdebug_trace();
    v37 = qword_100036518;
    v38 = v37;
    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v40 = qword_100036518;
    }

    else
    {
      if (os_signpost_enabled(v37))
      {
        string_id2 = [instanceCopy string_id];
        *buf = 67109632;
        *v114 = qos;
        *&v114[4] = 2048;
        *&v114[6] = string_id2;
        *&v114[14] = 1024;
        *&v114[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v40 = qword_100036518;
      if (os_signpost_enabled(v40))
      {
        *buf = 134349056;
        *v114 = v98;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }

LABEL_42:
    v99 = 0;
    goto LABEL_90;
  }

  v17 = qword_100036518;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    +[_ANEStrings adapterWeightsAccessEntitlementBypassBootArg];
    objc_claimAutoreleasedReturnValue();
    sub_10001F03C();
  }

LABEL_11:

  v17 = [optionsCopy objectForKeyedSubscript:kANEFBaseModelIdentifierKey];
  if (!v17)
  {
    v41 = qword_100036518;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001F11C();
    }

    if (replyCopy)
    {
      v42 = NSStringFromSelector(a2);
      v43 = [_ANEErrors baseModelIdentifierNotFoundForNewInstanceMethod:v42];
      (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, 0, v43);
    }

    [instanceCopy string_id];
    kdebug_trace();
    v44 = qword_100036518;
    v45 = v44;
    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v47 = qword_100036518;
    }

    else
    {
      if (os_signpost_enabled(v44))
      {
        string_id3 = [instanceCopy string_id];
        *buf = 67109632;
        *v114 = qos;
        *&v114[4] = 2048;
        *&v114[6] = string_id3;
        *&v114[14] = 1024;
        *&v114[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v47 = qword_100036518;
      if (os_signpost_enabled(v47))
      {
        *buf = 134349056;
        *v114 = v98;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v47, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }

    v99 = 0;
    goto LABEL_89;
  }

  processIdentifier = [v14 processIdentifier];
  [v14 auditToken];
  v95 = [_ANEModelToken tokenWithAuditToken:buf modelIdentifier:v17 processIdentifier:processIdentifier];
  teamIdentity = [v95 teamIdentity];
  v22 = teamIdentity == 0;

  if (v22)
  {
    v23 = qword_100036518;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = NSStringFromSelector(a2);
      *buf = 138412546;
      *v114 = v24;
      *&v114[8] = 1024;
      *&v114[10] = processIdentifier;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%@: client(%d) : missing teamIdentifier", buf, 0x12u);
    }
  }

  csIdentity = [v95 csIdentity];
  v99 = csIdentity != 0;
  v96 = csIdentity;
  if (!csIdentity)
  {
    v48 = qword_100036518;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001EFDC();
    }

    if (replyCopy)
    {
      v49 = NSStringFromSelector(a2);
      v50 = [_ANEErrors missingCodeSigningErrorForMethod:v49];
      (*(replyCopy + 2))(replyCopy, 0, &__NSDictionary0__struct, 0, 0, 0, 0, v50);
    }

    [instanceCopy string_id];
    kdebug_trace();
    v51 = qword_100036518;
    v52 = v51;
    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v54 = qword_100036518;
    }

    else
    {
      if (os_signpost_enabled(v51))
      {
        string_id4 = [instanceCopy string_id];
        *buf = 67109632;
        *v114 = qos;
        *&v114[4] = 2048;
        *&v114[6] = string_id4;
        *&v114[14] = 1024;
        *&v114[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v54 = qword_100036518;
      if (os_signpost_enabled(v54))
      {
        *buf = 134349056;
        *v114 = v98;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v54, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }

    goto LABEL_88;
  }

  v92 = [&__NSDictionary0__struct mutableCopy];
  v26 = [optionsCopy objectForKeyedSubscript:kANEFIntermediateBufferHandleKey];
  v86 = v26;
  if (v26)
  {
    unsignedLongLongValue = [v26 unsignedLongLongValue];
    v27 = qword_100036518;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001F084();
    }
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  v55 = qword_100036518;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001F0D8();
  }

  v97 = [_ANEProgramCache programForConnection:v103 model:instanceCopy bundleID:v96];
  [v97 setIntermediateBufferHandle:unsignedLongLongValue];
  [v97 setIsNewInstance:1];
  v110 = 0;
  v90 = +[NSDate date];
  v109 = 0;
  v56 = [v97 createProgramInstanceWithWeights:paramsCopy modelToken:v95 qos:qos baseModelIdentifier:v17 owningPid:processIdentifier numWeightFiles:&v110 error:&v109];
  v88 = v109;
  v85 = +[NSDate date];
  [v85 timeIntervalSinceDate:v90];
  v58 = v57;
  if (v56)
  {
    programHandle = [v97 programHandle];
    unsignedLongLongValue = [v97 intermediateBufferHandle];
    queueDepth = [v97 queueDepth];
    HIDWORD(v87) = [v97 numInputs];
    LODWORD(v87) = [v97 numOutputs];
    wiredMemory = [v97 wiredMemory];
    createSymbolMapping = [v97 createSymbolMapping];
    [v92 setObject:createSymbolMapping forKeyedSubscript:kANEFModelDescriptionKey];
    v61 = qword_100036518;
    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
    {
      *buf = 134219010;
      *v114 = wiredMemory;
      *&v114[8] = 2112;
      *&v114[10] = v96;
      *&v114[18] = 2112;
      *&v114[20] = instanceCopy;
      v115 = 2112;
      v116 = createSymbolMapping;
      v117 = 2048;
      v118 = programHandle;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "[ANE Model Stats] : wiredMemory=%ld : csIdentity=%@ : model=%@ : symbolMappings=%@ :programHandle = %llu", buf, 0x34u);
    }

    [_ANEDataReporter addValue:1 forScalarKey:@"ANEModelNewInstanceLoaded"];
    if (!replyCopy)
    {
      goto LABEL_76;
    }

    v62 = [v92 copy];
    getCacheURLIdentifier = [instanceCopy getCacheURLIdentifier];
    (*(replyCopy + 2))(replyCopy, 1, v62, programHandle, unsignedLongLongValue, queueDepth, getCacheURLIdentifier, 0);
  }

  else
  {
    [_ANEDataReporter addValue:1 forScalarKey:@"ModelNewInstanceFailsToLoad"];
    if (!replyCopy)
    {
      programHandle = 0;
      LODWORD(queueDepth) = 0;
      v87 = 0;
      wiredMemory = 0;
      goto LABEL_76;
    }

    v62 = [v92 copy];
    (*(replyCopy + 2))(replyCopy, 0, v62, 0, 0, 0, 0, v88);
    programHandle = 0;
    LODWORD(queueDepth) = 0;
    v87 = 0;
    wiredMemory = 0;
  }

LABEL_76:
  v64 = qword_100036518;
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    v65 = NSStringFromSelector(a2);
    *buf = 138413826;
    *v114 = v65;
    *&v114[8] = 2112;
    *&v114[10] = v96;
    *&v114[18] = 2112;
    *&v114[20] = instanceCopy;
    v115 = 2048;
    v116 = programHandle;
    v117 = 2048;
    v118 = unsignedLongLongValue;
    v119 = 2048;
    v120 = wiredMemory;
    v121 = 1024;
    v122 = queueDepth;
    _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "END: %@: csIdentity=%@ : model=%@ : programHandle=%llu : intermediateBufferHandle=%llu :wiredMemory=%ld : queueDepth=%d", buf, 0x44u);
  }

  modelURL = [instanceCopy modelURL];
  if (modelURL)
  {
    [instanceCopy modelURL];
  }

  else
  {
    [instanceCopy sourceURL];
  }
  v67 = ;
  v108 = &stru_100030B88;
  v68 = [_ANEStrings trimmedModelPath:v67 trimmedPath:&v108];
  v94 = v108;

  v111[0] = @"csIdentity";
  v111[1] = @"modelURL";
  v112[0] = v96;
  v112[1] = v94;
  v111[2] = @"privacy_score";
  v69 = [NSNumber numberWithBool:v68];
  v112[2] = v69;
  v111[3] = @"programHandle";
  v70 = [NSNumber numberWithUnsignedLongLong:programHandle];
  v71 = v56;
  v112[3] = v70;
  v111[4] = @"numWeightFiles";
  v72 = [NSNumber numberWithUnsignedInt:v110];
  v112[4] = v72;
  v111[5] = @"modelLoadingTime";
  v73 = [NSNumber numberWithDouble:v58 * 1000.0];
  v112[5] = v73;
  v111[6] = @"newInstanceLoaded";
  v74 = [NSNumber numberWithBool:v71];
  v112[6] = v74;
  v75 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:7];
  [_ANEDataReporter reportTelemetryToPPS:@"newInstanceModelLoad" playload:v75];

  [instanceCopy string_id];
  kdebug_trace();
  v76 = qword_100036518;
  v77 = v76;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
  {
    string_id5 = [instanceCopy string_id];
    *buf = 67109888;
    *v114 = qos;
    *&v114[4] = 2048;
    *&v114[6] = string_id5;
    *&v114[14] = 1024;
    *&v114[16] = HIDWORD(v87);
    *&v114[20] = 1024;
    *&v114[22] = v87;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "qos:%u model.string_id:%llu numInputs:%u numOutputs:%u", buf, 0x1Eu);
  }

  [instanceCopy string_id];
  kdebug_trace();
  v79 = qword_100036518;
  v80 = v79;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v79))
  {
    string_id6 = [instanceCopy string_id];
    *buf = 67109632;
    *v114 = qos;
    *&v114[4] = 2048;
    *&v114[6] = string_id6;
    *&v114[14] = 2048;
    *&v114[16] = wiredMemory;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v80, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "qos:%u model.string_id:%llu wiredMemory:%lu", buf, 0x1Cu);
  }

  v54 = v88;
LABEL_88:

  v47 = v95;
LABEL_89:

LABEL_90:
  objc_autoreleasePoolPop(context);
  if (v99)
  {
    v82 = qword_100036518;
    v83 = v82;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
    {
      *buf = 134349056;
      *v114 = v98;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v83, OS_SIGNPOST_EVENT, spid, "_ANED_ADAPTER_LOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
    }
  }
}

- (void)unloadModel:(id)model options:(id)options qos:(unsigned int)qos withReply:(id)reply
{
  modelCopy = model;
  optionsCopy = options;
  replyCopy = reply;
  v65 = mach_continuous_time();
  spid = os_signpost_id_generate(qword_100036518);
  [modelCopy string_id];
  kdebug_trace();
  context = objc_autoreleasePoolPush();
  v12 = qword_100036518;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    *v71 = v13;
    *&v71[8] = 2112;
    *&v71[10] = modelCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "START: %@: %@", buf, 0x16u);
  }

  v14 = +[NSXPCConnection currentConnection];
  v15 = v14;
  if (v14)
  {
    [v14 auditToken];
    v64 = +[_ANEModelToken codeSigningIDFor:processIdentifier:](_ANEModelToken, "codeSigningIDFor:processIdentifier:", buf, [v15 processIdentifier]);
    if (v64)
    {
      if (modelCopy)
      {
        v16 = [modelCopy key];
        v17 = [v16 isEqualToString:kANEModelKeyAllSegmentsValue];

        if (!v17)
        {
          v41 = [optionsCopy objectForKeyedSubscript:kANEFModelTypeKey];
          v63 = [v41 isEqualToString:kANEFModelPreCompiledValue];

          v42 = [_ANEQoSMapper queueIndexForQoS:qos];
          semaArray = [(_ANEServer *)self semaArray];
          v24 = [semaArray objectAtIndexedSubscript:v42];

          v44 = dispatch_time(0, 30000000000);
          v45 = dispatch_semaphore_wait(v24, v44);
          v35 = v45 == 0;
          v46 = qword_100036518;
          v47 = v46;
          if (v45)
          {
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              sub_10001F170();
            }

            v48 = NSStringFromSelector(a2);
            v49 = [_ANEErrors timeoutErrorForMethod:v48];
            replyCopy[2](replyCopy, 0, v49);

            [modelCopy string_id];
            kdebug_trace();
            v50 = qword_100036518;
            v51 = v50;
            if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
            {

              v53 = qword_100036518;
            }

            else
            {
              if (os_signpost_enabled(v50))
              {
                string_id = [modelCopy string_id];
                *buf = 67109632;
                *v71 = qos;
                *&v71[4] = 2048;
                *&v71[6] = string_id;
                *&v71[14] = 1024;
                *&v71[16] = 0;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v51, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
              }

              v53 = qword_100036518;
              if (os_signpost_enabled(v53))
              {
                *buf = 134349056;
                *v71 = v65;
                _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
              }
            }
          }

          else
          {
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v58 = NSStringFromSelector(a2);
              cacheURLIdentifier = [modelCopy cacheURLIdentifier];
              *buf = 138412802;
              v62 = v58;
              *v71 = v58;
              *&v71[8] = 2112;
              *&v71[10] = v15;
              *&v71[18] = 2112;
              v72 = cacheURLIdentifier;
              v60 = cacheURLIdentifier;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%@:  removeProgramForConnection: %@, Model cacheURLIdentifier:%@", buf, 0x20u);
            }

            [_ANEProgramCache removeProgramForConnection:v15 model:modelCopy bundleID:v64];
            replyCopy[2](replyCopy, 1, 0);
            dispatch_semaphore_signal(v24);
            v53 = qword_100036518;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              v61 = NSStringFromSelector(a2);
              *buf = 138413058;
              *v71 = v61;
              *&v71[8] = 2112;
              *&v71[10] = v64;
              *&v71[18] = 2112;
              v72 = modelCopy;
              v73 = 1024;
              v74 = v63;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "END: %@: %@ : %@ : %d", buf, 0x26u);
            }
          }

          goto LABEL_47;
        }

        v18 = qword_100036518;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [modelCopy key];
          objc_claimAutoreleasedReturnValue();
          sub_10001EC44();
        }

        v19 = NSStringFromSelector(a2);
        v20 = [_ANEErrors invalidModelKeyErrorForMethod:v19];
        replyCopy[2](replyCopy, 0, v20);

        [modelCopy string_id];
        kdebug_trace();
        v21 = qword_100036518;
        v22 = v21;
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          if (os_signpost_enabled(v21))
          {
            string_id2 = [modelCopy string_id];
            *buf = 67109632;
            *v71 = qos;
            *&v71[4] = 2048;
            *&v71[6] = string_id2;
            *&v71[14] = 1024;
            *&v71[16] = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
          }

          v24 = qword_100036518;
          if (!os_signpost_enabled(v24))
          {
            goto LABEL_46;
          }

          goto LABEL_36;
        }

LABEL_45:

        v24 = qword_100036518;
        goto LABEL_46;
      }

      v36 = qword_100036518;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001F1B4();
      }

      v37 = NSStringFromSelector(a2);
      v38 = [_ANEErrors invalidModelErrorForMethod:v37];
      replyCopy[2](replyCopy, 0, v38);

      [0 string_id];
      kdebug_trace();
      v21 = qword_100036518;
      v39 = v21;
      if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_45;
      }

      if (os_signpost_enabled(v21))
      {
        string_id3 = [0 string_id];
        *buf = 67109632;
        *v71 = qos;
        *&v71[4] = 2048;
        *&v71[6] = string_id3;
        *&v71[14] = 1024;
        *&v71[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v39, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v24 = qword_100036518;
      if (!os_signpost_enabled(v24))
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = qword_100036518;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001EACC();
      }

      v31 = NSStringFromSelector(a2);
      v32 = [_ANEErrors missingCodeSigningErrorForMethod:v31];
      replyCopy[2](replyCopy, 0, v32);

      [modelCopy string_id];
      kdebug_trace();
      v21 = qword_100036518;
      v33 = v21;
      if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_45;
      }

      if (os_signpost_enabled(v21))
      {
        string_id4 = [modelCopy string_id];
        *buf = 67109632;
        *v71 = qos;
        *&v71[4] = 2048;
        *&v71[6] = string_id4;
        *&v71[14] = 1024;
        *&v71[16] = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v24 = qword_100036518;
      if (!os_signpost_enabled(v24))
      {
        goto LABEL_46;
      }
    }

LABEL_36:
    *buf = 134349056;
    *v71 = v65;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
LABEL_46:
    v35 = 0;
LABEL_47:

    v29 = v64;
    goto LABEL_48;
  }

  v25 = qword_100036518;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001E960();
  }

  replyCopy[2](replyCopy, 0, 0);
  [modelCopy string_id];
  kdebug_trace();
  v26 = qword_100036518;
  v27 = v26;
  if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v29 = qword_100036518;
  }

  else
  {
    if (os_signpost_enabled(v26))
    {
      string_id5 = [modelCopy string_id];
      *buf = 67109632;
      *v71 = qos;
      *&v71[4] = 2048;
      *&v71[6] = string_id5;
      *&v71[14] = 1024;
      *&v71[16] = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
    }

    v29 = qword_100036518;
    if (os_signpost_enabled(v29))
    {
      *buf = 134349056;
      *v71 = v65;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
    }
  }

  v35 = 0;
LABEL_48:

  objc_autoreleasePoolPop(context);
  if (v35)
  {
    [modelCopy string_id];
    kdebug_trace();
    v54 = qword_100036518;
    v55 = v54;
    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v57 = qword_100036518;
    }

    else
    {
      if (os_signpost_enabled(v54))
      {
        string_id6 = [modelCopy string_id];
        *buf = 67109632;
        *v71 = qos;
        *&v71[4] = 2048;
        *&v71[6] = string_id6;
        *&v71[14] = 1024;
        *&v71[16] = 1;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "qos:%u model.string_id:%llu status:%u", buf, 0x18u);
      }

      v57 = qword_100036518;
      if (os_signpost_enabled(v57))
      {
        *buf = 134349056;
        *v71 = v65;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v57, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_UNLOAD", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }
  }
}

- (void)compiledModelExistsMatchingHash:(id)hash withReply:(id)reply
{
  hashCopy = hash;
  replyCopy = reply;
  kdebug_trace();
  v9 = mach_continuous_time();
  v10 = os_signpost_id_generate(qword_100036518);
  v11 = +[NSXPCConnection currentConnection];
  v12 = v11;
  v30 = v9;
  if (v11)
  {
    [v11 auditToken];
    v13 = +[_ANEModelToken codeSigningIDFor:processIdentifier:](_ANEModelToken, "codeSigningIDFor:processIdentifier:", v34, [v12 processIdentifier]);
    if (v13)
    {
      modelCacheManager = [(_ANEServer *)self modelCacheManager];
      v15 = [modelCacheManager cachedModelPathMatchingHash:hashCopy csIdentity:v13];

      v16 = qword_100036518;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001F1F8();
      }

      v31 = &__NSDictionary0__struct;
      v17 = [_ANEStorageHelper memoryMapModelAtPath:v15 modelAttributes:&v31];
      v18 = v31;
      replyCopy[2](replyCopy, v17 != 0, 0);
      kdebug_trace();
      v19 = qword_100036518;
      v20 = v19;
      if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v21 = qword_100036518;
      }

      else
      {
        if (os_signpost_enabled(v19))
        {
          *buf = 67109376;
          *v33 = 0;
          *&v33[4] = 1024;
          *&v33[6] = 1;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_EVENT, v10, "_ANED_COMPILED_MODEL_EXISTS", "qos:%u status:%u", buf, 0xEu);
        }

        v21 = qword_100036518;
        if (os_signpost_enabled(v21))
        {
          *buf = 134349056;
          *v33 = v30;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, v10, "_ANED_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
        }
      }
    }

    else
    {
      v25 = qword_100036518;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001EACC();
      }

      v26 = NSStringFromSelector(a2);
      v27 = [_ANEErrors missingCodeSigningErrorForMethod:v26];
      (replyCopy)[2](replyCopy, 0, v27);

      kdebug_trace();
      v28 = qword_100036518;
      v29 = v28;
      if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v15 = qword_100036518;
      }

      else
      {
        if (os_signpost_enabled(v28))
        {
          *v34 = 67109376;
          LODWORD(v35[0]) = 0;
          WORD2(v35[0]) = 1024;
          *(v35 + 6) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_EVENT, v10, "_ANED_COMPILED_MODEL_EXISTS", "qos:%u status:%u", v34, 0xEu);
        }

        v15 = qword_100036518;
        if (os_signpost_enabled(v15))
        {
          *v34 = 134349056;
          v35[0] = v30;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, v10, "_ANED_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", v34, 0xCu);
        }
      }
    }
  }

  else
  {
    v22 = qword_100036518;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }

    replyCopy[2](replyCopy, 0, 0);
    kdebug_trace();
    v23 = qword_100036518;
    v24 = v23;
    if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v13 = qword_100036518;
    }

    else
    {
      if (os_signpost_enabled(v23))
      {
        *v34 = 67109376;
        LODWORD(v35[0]) = 0;
        WORD2(v35[0]) = 1024;
        *(v35 + 6) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, v10, "_ANED_COMPILED_MODEL_EXISTS", "qos:%u status:%u", v34, 0xEu);
      }

      v13 = qword_100036518;
      if (os_signpost_enabled(v13))
      {
        *v34 = 134349056;
        v35[0] = v30;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, v10, "_ANED_COMPILED_MODEL_EXISTS", "%{public, signpost.description:begin_time}llu ", v34, 0xCu);
      }
    }
  }
}

- (void)purgeCompiledModelMatchingHash:(id)hash withReply:(id)reply
{
  hashCopy = hash;
  replyCopy = reply;
  kdebug_trace();
  v9 = mach_continuous_time();
  v10 = os_signpost_id_generate(qword_100036518);
  v11 = +[NSXPCConnection currentConnection];
  v12 = v11;
  if (v11)
  {
    [v11 auditToken];
    v13 = +[_ANEModelToken codeSigningIDFor:processIdentifier:](_ANEModelToken, "codeSigningIDFor:processIdentifier:", buf, [v12 processIdentifier]);
    if (v13)
    {
      modelCacheManager = [(_ANEServer *)self modelCacheManager];
      v15 = [modelCacheManager cachedModelPathMatchingHash:hashCopy csIdentity:v13];

      v16 = qword_100036518;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001F23C();
      }

      replyCopy[2](replyCopy, [_ANEStorageHelper removeDirectoryAtPath:v15], 0);
      kdebug_trace();
      v17 = qword_100036518;
      v18 = v17;
      if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v19 = qword_100036518;
      }

      else
      {
        if (os_signpost_enabled(v17))
        {
          v28 = 67109376;
          *v29 = 0;
          *&v29[4] = 1024;
          *&v29[6] = 1;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_EVENT, v10, "_ANED_PURGE_COMPILED_MODEL", "qos:%u status:%u", &v28, 0xEu);
        }

        v19 = qword_100036518;
        if (os_signpost_enabled(v19))
        {
          v28 = 134349056;
          *v29 = v9;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, v10, "_ANED_PURGE_COMPILED_MODEL", "%{public, signpost.description:begin_time}llu ", &v28, 0xCu);
        }
      }
    }

    else
    {
      v23 = qword_100036518;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        sub_10001EACC();
      }

      v24 = NSStringFromSelector(a2);
      v25 = [_ANEErrors missingCodeSigningErrorForMethod:v24];
      (replyCopy)[2](replyCopy, 0, v25);

      kdebug_trace();
      v26 = qword_100036518;
      v27 = v26;
      if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {

        v15 = qword_100036518;
      }

      else
      {
        if (os_signpost_enabled(v26))
        {
          *buf = 67109376;
          LODWORD(v31[0]) = 0;
          WORD2(v31[0]) = 1024;
          *(v31 + 6) = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_EVENT, v10, "_ANED_PURGE_COMPILED_MODEL", "qos:%u status:%u", buf, 0xEu);
        }

        v15 = qword_100036518;
        if (os_signpost_enabled(v15))
        {
          *buf = 134349056;
          v31[0] = v9;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_EVENT, v10, "_ANED_PURGE_COMPILED_MODEL", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v20 = qword_100036518;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_10001E960();
    }

    replyCopy[2](replyCopy, 0, 0);
    kdebug_trace();
    v21 = qword_100036518;
    v22 = v21;
    if (v10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {

      v13 = qword_100036518;
    }

    else
    {
      if (os_signpost_enabled(v21))
      {
        *buf = 67109376;
        LODWORD(v31[0]) = 0;
        WORD2(v31[0]) = 1024;
        *(v31 + 6) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, v10, "_ANED_PURGE_COMPILED_MODEL", "qos:%u status:%u", buf, 0xEu);
      }

      v13 = qword_100036518;
      if (os_signpost_enabled(v13))
      {
        *buf = 134349056;
        v31[0] = v9;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, v10, "_ANED_PURGE_COMPILED_MODEL", "%{public, signpost.description:begin_time}llu ", buf, 0xCu);
      }
    }
  }
}

- (id)compileAsNeededAndLoadCachedModel:(id)model csIdentity:(id)identity sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos modelFilePath:(id *)path modelAttributes:(id *)attributes error:(id *)self0
{
  modelCopy = model;
  identityCopy = identity;
  extensionCopy = extension;
  optionsCopy = options;
  v57 = identityCopy;
  if (![identityCopy containsString:@"../"])
  {
    v19 = [optionsCopy objectForKeyedSubscript:off_1000363A8];

    if (v19 && (v20 = [NSString alloc], [optionsCopy objectForKeyedSubscript:off_1000363A8], v21 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v20, "initWithString:", v21), v21, v17))
    {
      if ([v17 containsString:@".."])
      {
        v22 = qword_100036518;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          sub_10001F280();
        }

        v18 = 0;
        goto LABEL_57;
      }

      modelCacheManager = [(_ANEServer *)self modelCacheManager];
      v22 = [modelCacheManager cachedModelPathMatchingHash:v17 csIdentity:v57];
      v25 = 1;
    }

    else
    {
      modelCacheManager = [(_ANEServer *)self modelAssetCacheManager];
      v24 = [optionsCopy objectForKeyedSubscript:kANEFModelCacheIdentifierUsingSourceURLKey];
      v22 = [modelCacheManager cachedModelPathFor:modelCopy csIdentity:v57 useSourceURL:{objc_msgSend(v24, "BOOLValue")}];

      v25 = 0;
      v17 = 0;
    }

    if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_DEBUG))
    {
      sub_10001F2C4();
    }

    v26 = [optionsCopy objectForKeyedSubscript:kANEFModelHasCacheURLIdentifierKey];
    pathCopy = path;
    bOOLValue = [v26 BOOLValue];

    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = sub_100013134;
    v73 = sub_100013144;
    v74 = 0;
    if (bOOLValue)
    {
      v53 = -1;
    }

    else
    {
      obj = 0;
      v53 = [_ANESandboxingHelper consumeSandboxExtension:extensionCopy forModel:modelCopy error:&obj];
      objc_storeStrong(&v74, obj);
      if (v53 < 0 && v70[5])
      {
        v18 = 0;
LABEL_56:
        _Block_object_dispose(&v69, 8);

LABEL_57:
        goto LABEL_58;
      }

      if ((v25 & 1) == 0)
      {
        modelURL = [modelCopy modelURL];
        path = [modelURL path];
        v30 = [_ANEModelCacheManager removeIfStaleBinary:v22 forModelPath:path];

        if (v30)
        {
          v31 = qword_100036518;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = NSStringFromSelector(a2);
            *buf = 138412546;
            *&buf[4] = v32;
            *&buf[12] = 2112;
            *&buf[14] = v22;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "%@: Stale model at %@ removed from cache", buf, 0x16u);
          }
        }
      }
    }

    v65 = &__NSDictionary0__struct;
    v18 = [_ANEStorageHelper memoryMapModelAtPath:v22 modelAttributes:&v65];
    v33 = v65;
    if (v18)
    {
      v34 = 3;
    }

    else
    {
      v34 = 5;
    }

    [modelCopy updateModelAttributes:v33 state:v34];
    if (!v18 && ((bOOLValue ^ 1) & 1) == 0)
    {
      v35 = +[NSFileManager defaultManager];
      buf[0] = 0;
      if (([v35 fileExistsAtPath:v22 isDirectory:buf] & 1) == 0)
      {
        v36 = qword_100036518;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          sub_10001F32C();
        }
      }

      v37 = NSStringFromSelector(a2);
      v38 = [_ANEErrors fileNotFoundErrorForMethod:v37];
      v39 = v70[5];
      v70[5] = v38;
    }

    if (!((v18 != 0) | bOOLValue & 1))
    {
      v40 = qword_100036518;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v50 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v50;
        *&buf[12] = 2112;
        *&buf[14] = modelCopy;
        *&buf[22] = 2112;
        v68 = v57;
        _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "%@: No model in cache, kicking off compilation. model=%@ : csIdentity=%@", buf, 0x20u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v68) = 1;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10001B608;
      v60[3] = &unk_100030A58;
      v62 = buf;
      v64 = a2;
      v41 = modelCopy;
      v61 = v41;
      v63 = &v69;
      [(_ANEServer *)self doCompileModel:v41 csIdentity:v57 sandboxExtension:extensionCopy options:optionsCopy qos:qos withReply:v60];
      if (*(*&buf[8] + 24) == 1)
      {
        v59 = v33;
        v18 = [_ANEStorageHelper memoryMapModelAtPath:v22 modelAttributes:&v59];
        v42 = v59;

        if (v18)
        {
          v43 = 3;
        }

        else
        {
          v43 = 5;
        }

        [v41 updateModelAttributes:v42 state:v43];
        v44 = [optionsCopy objectForKeyedSubscript:kANEFPerformanceStatsMaskKey];
        v45 = v44;
        if (v44)
        {
          [v41 setPerfStatsMask:{+[_ANEPerformanceStats driverMaskForANEFMask:](_ANEPerformanceStats, "driverMaskForANEFMask:", objc_msgSend(v44, "unsignedIntValue"))}];
        }
      }

      else
      {
        [v41 modelAttributes];
        *attributes = v18 = 0;
        v42 = v33;
      }

      _Block_object_dispose(buf, 8);
      v33 = v42;
    }

    if ((bOOLValue & 1) == 0 && ([_ANESandboxingHelper releaseSandboxExtension:extensionCopy handle:v53]& 1) == 0)
    {
      v46 = qword_100036518;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v51 = *__error();
        *buf = 138412802;
        *&buf[4] = extensionCopy;
        *&buf[12] = 2048;
        *&buf[14] = v53;
        *&buf[22] = 1024;
        LODWORD(v68) = v51;
        _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "releaseSandboxExtension:(%@) handle:(%lld) failed (%d)", buf, 0x1Cu);
      }
    }

    v47 = v22;
    *pathCopy = v22;
    if (v18)
    {
      *attributes = [modelCopy modelAttributes];
    }

    if (error)
    {
      v48 = v70[5];
      if (v48)
      {
        *error = [v48 copy];
      }
    }

    goto LABEL_56;
  }

  v17 = qword_100036518;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    sub_10001F370();
  }

  v18 = 0;
LABEL_58:

  return v18;
}

- (void)doCompileModel:(id)model csIdentity:(id)identity sandboxExtension:(id)extension options:(id)options qos:(unsigned int)qos withReply:(id)reply
{
  modelCopy = model;
  identityCopy = identity;
  extensionCopy = extension;
  optionsCopy = options;
  replyCopy = reply;
  context = objc_autoreleasePoolPush();
  v88 = modelCopy;
  v16 = [optionsCopy objectForKeyedSubscript:kANEFModelTypeKey];
  LODWORD(options) = [v16 isEqualToString:kANEFModelPreCompiledValue];

  if (!options)
  {
    [modelCopy string_id];
    kdebug_trace();
    v17 = os_signpost_id_generate(qword_100036518);
    v18 = qword_100036518;
    v19 = v18;
    spid = v17;
    v20 = v17 - 1;
    if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 67109632;
      *&buf[8] = 1024;
      *&buf[10] = 1;
      *&buf[14] = 2048;
      *&buf[16] = [modelCopy string_id];
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_COMPILE_CONT", "%u %u model.string_id:%llu", buf, 0x18u);
    }

    v77 = v20;

    v21 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.ANECompilerService"];
    v22 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL____ANECompilerServiceProtocol];
    [v21 setRemoteObjectInterface:v22];

    v23 = [optionsCopy objectForKeyedSubscript:kANEFCompilationInitiatedByE5MLKey];
    bOOLValue = [v23 BOOLValue];

    v85 = +[NSXPCConnection currentConnection];
    v81 = +[_ANEStrings secondaryANECompilerServiceAccessEntitlement];
    v84 = [v85 valueForEntitlement:?];
    if (v84 && ([v84 BOOLValue] & bOOLValue) == 1)
    {
      v25 = qword_100036518;
      if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Using secondary (longer duration) ANECompilerService", buf, 2u);
      }

      v26 = 64;
    }

    else
    {
      v27 = qword_100036518;
      if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Using primary (regular) ANECompilerService", buf, 2u);
      }

      v26 = 72;
    }

    [v21 _setUUID:*(&self->super.isa + v26)];
    [v21 resume];
    if (!v21)
    {
      v28 = qword_100036518;
      if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_ERROR))
      {
        sub_10001F3B4(v28);
      }
    }

    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_10001C940;
    v108[3] = &unk_100030A80;
    v109 = @"com.apple.ANECompilerService";
    v29 = replyCopy;
    v110 = v29;
    v83 = [v21 synchronousRemoteObjectProxyWithErrorHandler:v108];
    v107 = 0;
    v30 = [_ANESandboxingHelper consumeSandboxExtension:extensionCopy forModel:modelCopy error:&v107];
    v31 = v107;
    if ((v30 & 0x8000000000000000) != 0 && v31)
    {
      goto LABEL_64;
    }

    v72 = v30;
    v75 = v31;
    v32 = [optionsCopy objectForKeyedSubscript:off_1000363A8];
    v33 = v32 == 0;

    if (v33)
    {
      v80 = 0;
    }

    else
    {
      v34 = [NSString alloc];
      v35 = [optionsCopy objectForKeyedSubscript:off_1000363A8];
      v80 = [v34 initWithString:v35];
    }

    v36 = [optionsCopy objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];
    v37 = v36 == 0;

    if (v37)
    {
      v78 = 0;
    }

    else
    {
      v78 = [optionsCopy objectForKeyedSubscript:kANEFAOTCacheUrlIdentifierKey];
    }

    if (v80)
    {
      if ([identityCopy containsString:@"../"])
      {
        v38 = qword_100036518;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          v39 = v38;
          sub_10001F47C();
LABEL_36:
          v38 = v39;
          goto LABEL_63;
        }

        goto LABEL_63;
      }

      if ([v80 containsString:@".."])
      {
        v38 = qword_100036518;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          v39 = v38;
          sub_10001F438();
          goto LABEL_36;
        }

LABEL_63:

        v31 = v75;
LABEL_64:

        goto LABEL_65;
      }

      modelCacheManager = [(_ANEServer *)self modelCacheManager];
      v51 = [modelCacheManager URLForModelHash:v80 bundleID:identityCopy];
      path = [v51 path];
    }

    else
    {
      v40 = [optionsCopy objectForKeyedSubscript:kANEFModelCacheIdentifierUsingSourceURLKey];
      bOOLValue2 = [v40 BOOLValue];

      modelAssetCacheManager = [(_ANEServer *)self modelAssetCacheManager];
      modelCacheManager = [modelAssetCacheManager URLForModel:v88 bundleID:identityCopy useSourceURL:bOOLValue2 aotCacheUrlIdentifier:v78];

      path2 = [modelCacheManager path];
      getCacheURLIdentifier = [v88 getCacheURLIdentifier];
      path = path2;
      LODWORD(modelAssetCacheManager) = getCacheURLIdentifier == 0;

      if (modelAssetCacheManager)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v117 = sub_100013134;
        *v118 = sub_100013144;
        *&v118[8] = 0;
        v101 = 0;
        v102 = &v101;
        v103 = 0x3032000000;
        v104 = sub_100013134;
        v105 = sub_100013144;
        v106 = 0;
        modelAssetCacheManager2 = [(_ANEServer *)self modelAssetCacheManager];
        v100[0] = _NSConcreteStackBlock;
        v100[1] = 3221225472;
        v100[2] = sub_10001C9D8;
        v100[3] = &unk_100030A30;
        v100[4] = buf;
        v100[5] = &v101;
        [modelAssetCacheManager2 cacheURLIdentifierForModel:v88 useSourceURL:bOOLValue2 withReply:v100];

        v47 = v102[5];
        if (v78)
        {
          v48 = [NSString stringWithFormat:@"%@_shapes_%@_%@", v78, *(*&buf[8] + 40), v47];
          modelAssetCacheManager3 = [(_ANEServer *)self modelAssetCacheManager];
          v71 = v48;
          v50 = [modelAssetCacheManager3 getModelBinaryPathFromURLIdentifier:v78 bundleID:identityCopy];
          v73 = [NSString stringWithFormat:@"%@/", v50];
        }

        else
        {
          [NSString stringWithFormat:@"%@_%@", *(*&buf[8] + 40), v47];
          v71 = v73 = 0;
        }

        v52 = qword_100036518;
        if (os_log_type_enabled(qword_100036518, OS_LOG_TYPE_INFO))
        {
          *v111 = 138412290;
          *&v111[4] = v71;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "cacheURLIdentifier:%@", v111, 0xCu);
        }

        _Block_object_dispose(&v101, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_43;
      }
    }

    v73 = 0;
    v71 = 0;
LABEL_43:

    v74 = [NSURL fileURLWithPath:path isDirectory:1];
    v53 = +[NSFileManager defaultManager];
    [v53 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:0];

    v54 = qword_100036518;
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      modelURL = [v88 modelURL];
      sourceURL = [v88 sourceURL];
      v57 = [v88 key];
      *buf = 138413570;
      *&buf[4] = modelURL;
      *&buf[12] = 2112;
      *&buf[14] = sourceURL;
      *&buf[22] = 2112;
      v117 = identityCopy;
      *v118 = 2112;
      *&v118[2] = v57;
      *&v118[10] = 2112;
      *&v118[12] = v74;
      v119 = 2112;
      v120 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "Calling ANECompilerService: modelURL=%@ : sourceURL=%@ : csIdentity=%@ : key=%@ : outputURL=%@ : options=%@", buf, 0x3Eu);
    }

    v96 = 0;
    v97 = &v96;
    v98 = 0x2020000000;
    v99 = 1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v117 = sub_100013134;
    *v118 = sub_100013144;
    *&v118[8] = 0;
    v101 = 0;
    v102 = &v101;
    v103 = 0x3032000000;
    v104 = sub_100013134;
    v105 = sub_100013144;
    v106 = &__NSDictionary0__struct;
    if (self->_isRootDaemon)
    {
      +[_ANEStrings tempDirectory];
    }

    else
    {
      +[_ANEStrings userTempDirectory];
    }
    v58 = ;
    if (self->_isRootDaemon)
    {
      +[_ANEStrings cloneDirectory];
    }

    else
    {
      +[_ANEStrings userCloneDirectory];
    }
    v59 = ;
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_10001CA7C;
    v90[3] = &unk_100030AA8;
    v92 = &v96;
    v93 = &v101;
    v94 = buf;
    v60 = v88;
    v91 = v60;
    v95 = spid;
    [v83 compileModelAt:v60 csIdentity:identityCopy sandboxExtension:extensionCopy options:optionsCopy tempDirectory:v58 cloneDirectory:v59 outputURL:v74 aotModelBinaryPath:v73 withReply:v90];

    if (v29)
    {
      (*(v29 + 2))(v29, *(v97 + 24), v102[5], v71, *(*&buf[8] + 40));
    }

    [v21 invalidate];
    v61 = [_ANESandboxingHelper releaseSandboxExtension:extensionCopy handle:v72];
    *(v97 + 24) = v61;
    if ((v61 & 1) == 0)
    {
      v62 = qword_100036518;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        v70 = *__error();
        *v111 = 138412802;
        *&v111[4] = extensionCopy;
        *&v111[12] = 2048;
        *v112 = v72;
        *&v112[8] = 1024;
        LODWORD(v113) = v70;
        _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "releaseSandboxExtension:(%@) handle:(%lld) failed (%d)", v111, 0x1Cu);
      }
    }

    [v60 string_id];
    kdebug_trace();
    v63 = qword_100036518;
    v64 = v63;
    if (v77 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
    {
      string_id = [v60 string_id];
      *v111 = 67109632;
      *&v111[8] = 1024;
      *&v111[10] = 3;
      *v112 = 2048;
      *&v112[2] = string_id;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v64, OS_SIGNPOST_EVENT, spid, "_ANED_MODEL_COMPILE_CONT", "%u %u model.string_id:%llu", v111, 0x18u);
    }

    v66 = qword_100036518;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = NSStringFromSelector(a2);
      modelURL2 = [v60 modelURL];
      v69 = [v60 key];
      *v111 = 138413058;
      *&v111[4] = v67;
      *&v111[12] = 2112;
      *v112 = identityCopy;
      *&v112[8] = 2112;
      v113 = modelURL2;
      v114 = 2112;
      v115 = v69;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "END: %@: %@ : %@ : %@", v111, 0x2Au);
    }

    _Block_object_dispose(&v101, 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v96, 8);
    v38 = path;
    goto LABEL_63;
  }

  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, 1, &__NSDictionary0__struct, 0, 0);
  }

LABEL_65:
  objc_autoreleasePoolPop(context);
}

@end