@interface _ANETemporaryFilesHandler
+ (BOOL)removeFilesFromDirectory:(id)directory olderThanSeconds:(double)seconds;
- (BOOL)doCleanupDirectory:(id)directory;
- (_ANETemporaryFilesHandler)init;
- (_ANETemporaryFilesHandler)initWithTemporaryDirectoryPath:(id)path cloneDirectoryPath:(id)directoryPath;
- (void)scheduleMaintenanceWithName:(id)name directoryPaths:(id)paths;
@end

@implementation _ANETemporaryFilesHandler

- (_ANETemporaryFilesHandler)initWithTemporaryDirectoryPath:(id)path cloneDirectoryPath:(id)directoryPath
{
  pathCopy = path;
  directoryPathCopy = directoryPath;
  v12.receiver = self;
  v12.super_class = _ANETemporaryFilesHandler;
  v9 = [(_ANETemporaryFilesHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tempDirectoryPath, path);
    objc_storeStrong(&v10->_cloneDirectoryPath, directoryPath);
  }

  return v10;
}

- (_ANETemporaryFilesHandler)init
{
  v3 = +[_ANEStrings tempDirectory];
  v4 = +[_ANEStrings cloneDirectory];
  v5 = [(_ANETemporaryFilesHandler *)self initWithTemporaryDirectoryPath:v3 cloneDirectoryPath:v4];

  return v5;
}

+ (BOOL)removeFilesFromDirectory:(id)directory olderThanSeconds:(double)seconds
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
      v17 = 0;
      if ([v7 fileExistsAtPath:v12 isDirectory:&v17])
      {
        v13 = [v7 attributesOfItemAtPath:v12 error:0];
        fileCreationDate = [v13 fileCreationDate];

        [_ANEStorageHelper removeFilePath:v12 ifDate:fileCreationDate olderThanSecond:v6];
      }

      objc_autoreleasePoolPop(v11);
      nextObject2 = [v8 nextObject];

      v10 = nextObject2;
    }

    while (nextObject2);
  }

  return 1;
}

- (BOOL)doCleanupDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = objc_autoreleasePoolPush();
  [NSFileManager ane_addWriteModeForPath:directoryCopy];
  [objc_opt_class() removeFilesFromDirectory:directoryCopy olderThanSeconds:7200.0];
  objc_autoreleasePoolPop(v4);

  return 1;
}

- (void)scheduleMaintenanceWithName:(id)name directoryPaths:(id)paths
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000097F4;
  v13 = &unk_100030808;
  pathsCopy = paths;
  selfCopy = self;
  v6 = pathsCopy;
  nameCopy = name;
  v8 = objc_retainBlock(&v10);
  v9 = [_ANETask taskWithName:nameCopy period:7200 handler:v8, v10, v11, v12, v13];

  [_ANETaskManager registerTask:v9];
}

@end