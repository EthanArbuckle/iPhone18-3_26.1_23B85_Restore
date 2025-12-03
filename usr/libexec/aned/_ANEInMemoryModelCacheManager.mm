@interface _ANEInMemoryModelCacheManager
+ (BOOL)removeFilesFromDirectory:(id)directory notAccessedInSeconds:(double)seconds;
+ (BOOL)removeStaleModelsAtPath:(id)path;
- (BOOL)removeAllModelsForBundleID:(id)d;
- (BOOL)removeStaleModels;
- (_ANEInMemoryModelCacheManager)initWithURL:(id)l createDirectory:(BOOL)directory;
- (id)URLForBundleID:(id)d;
- (id)URLForModelHash:(id)hash bundleID:(id)d;
- (id)cachedModelPathMatchingHash:(id)hash csIdentity:(id)identity;
- (id)getDiskSpaceForBundleID:(id)d;
- (void)scheduleMaintenanceWithName:(id)name directoryPaths:(id)paths;
@end

@implementation _ANEInMemoryModelCacheManager

- (_ANEInMemoryModelCacheManager)initWithURL:(id)l createDirectory:(BOOL)directory
{
  directoryCopy = directory;
  lCopy = l;
  v18.receiver = self;
  v18.super_class = _ANEInMemoryModelCacheManager;
  v9 = [(_ANEInMemoryModelCacheManager *)&v18 init];
  if (v9)
  {
    if (directoryCopy)
    {
      v10 = +[NSFileManager defaultManager];
      path = [lCopy path];
      v17 = 0;
      v12 = [v10 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v17];
      v13 = v17;

      if ((v12 & 1) == 0)
      {
        v14 = +[_ANELog daemon];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = NSStringFromSelector(a2);
          *buf = 138412802;
          v20 = v16;
          v21 = 2112;
          v22 = lCopy;
          v23 = 2112;
          v24 = v13;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@: FAILED creating cacheDir=%@ : err=%@", buf, 0x20u);
        }
      }
    }

    objc_storeStrong(&v9->_cacheDir, l);
  }

  return v9;
}

- (id)URLForBundleID:(id)d
{
  dCopy = d;
  cacheDir = [(_ANEInMemoryModelCacheManager *)self cacheDir];
  v6 = [cacheDir URLByAppendingPathComponent:dCopy isDirectory:1];

  return v6;
}

- (id)URLForModelHash:(id)hash bundleID:(id)d
{
  hashCopy = hash;
  dCopy = d;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_ANEInMemoryModelCacheManager *)self URLForBundleID:dCopy];
  v10 = [v9 URLByAppendingPathComponent:hashCopy isDirectory:1];

  objc_autoreleasePoolPop(v8);

  return v10;
}

- (id)cachedModelPathMatchingHash:(id)hash csIdentity:(id)identity
{
  hashCopy = hash;
  identityCopy = identity;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_ANEInMemoryModelCacheManager *)self URLForModelHash:hashCopy bundleID:identityCopy];
  v10 = +[_ANEStrings modelBinaryName];
  v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:0];

  path = [v11 path];

  objc_autoreleasePoolPop(v8);

  return path;
}

- (BOOL)removeAllModelsForBundleID:(id)d
{
  v3 = [(_ANEInMemoryModelCacheManager *)self URLForBundleID:d];
  path = [v3 path];
  v5 = [_ANEStorageHelper removeDirectoryAtPath:path];

  return v5;
}

- (id)getDiskSpaceForBundleID:(id)d
{
  v3 = [(_ANEInMemoryModelCacheManager *)self URLForBundleID:d];
  path = [v3 path];
  v5 = [_ANEStorageHelper sizeOfModelCacheAtPath:path purgeSubdirectories:0];

  return v5;
}

+ (BOOL)removeFilesFromDirectory:(id)directory notAccessedInSeconds:(double)seconds
{
  directoryCopy = directory;
  v6 = [NSDate dateWithTimeIntervalSinceNow:-seconds];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:directoryCopy];
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    v10 = nextObject;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [directoryCopy stringByAppendingPathComponent:v10];
      v20 = 0;
      if ([v7 fileExistsAtPath:v12 isDirectory:&v20])
      {
        v13 = [_ANEStorageHelper getAccessTimeForFilePath:v12];
        if (v13)
        {
          [_ANEStorageHelper removeFilePath:v12 ifDate:v13 olderThanSecond:v6];
        }

        else
        {
          v14 = v6;
          v15 = +[_ANELog daemon];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v18 = NSStringFromSelector(a2);
            *buf = 138412546;
            v22 = v18;
            v23 = 2112;
            v24 = v12;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@: Missing access time for %@", buf, 0x16u);
          }

          v6 = v14;
        }
      }

      objc_autoreleasePoolPop(v11);
      nextObject2 = [v8 nextObject];

      v10 = nextObject2;
    }

    while (nextObject2);
  }

  return 1;
}

+ (BOOL)removeStaleModelsAtPath:(id)path
{
  pathCopy = path;
  v5 = objc_autoreleasePoolPush();
  [objc_opt_class() removeFilesFromDirectory:pathCopy notAccessedInSeconds:{objc_msgSend(self, "notRecentlyUsedSecondsThreshold")}];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)removeStaleModels
{
  cacheDir = [(_ANEInMemoryModelCacheManager *)self cacheDir];
  path = [cacheDir path];

  v4 = [objc_opt_class() removeStaleModelsAtPath:path];
  return v4;
}

- (void)scheduleMaintenanceWithName:(id)name directoryPaths:(id)paths
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100007AEC;
  v11 = &unk_100030808;
  nameCopy = name;
  selfCopy = self;
  v5 = nameCopy;
  v6 = objc_retainBlock(&v8);
  v7 = [_ANETask taskWithName:v5 period:86400 handler:v6, v8, v9, v10, v11];
  [_ANETaskManager registerTask:v7];
}

@end