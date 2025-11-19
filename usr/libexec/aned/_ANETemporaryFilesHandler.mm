@interface _ANETemporaryFilesHandler
+ (BOOL)removeFilesFromDirectory:(id)a3 olderThanSeconds:(double)a4;
- (BOOL)doCleanupDirectory:(id)a3;
- (_ANETemporaryFilesHandler)init;
- (_ANETemporaryFilesHandler)initWithTemporaryDirectoryPath:(id)a3 cloneDirectoryPath:(id)a4;
- (void)scheduleMaintenanceWithName:(id)a3 directoryPaths:(id)a4;
@end

@implementation _ANETemporaryFilesHandler

- (_ANETemporaryFilesHandler)initWithTemporaryDirectoryPath:(id)a3 cloneDirectoryPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _ANETemporaryFilesHandler;
  v9 = [(_ANETemporaryFilesHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_tempDirectoryPath, a3);
    objc_storeStrong(&v10->_cloneDirectoryPath, a4);
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

+ (BOOL)removeFilesFromDirectory:(id)a3 olderThanSeconds:(double)a4
{
  v5 = a3;
  v6 = [NSDate dateWithTimeIntervalSinceNow:-a4];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v5];
  v9 = [v8 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [v5 stringByAppendingPathComponent:v10];
      v17 = 0;
      if ([v7 fileExistsAtPath:v12 isDirectory:&v17])
      {
        v13 = [v7 attributesOfItemAtPath:v12 error:0];
        v14 = [v13 fileCreationDate];

        [_ANEStorageHelper removeFilePath:v12 ifDate:v14 olderThanSecond:v6];
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v8 nextObject];

      v10 = v15;
    }

    while (v15);
  }

  return 1;
}

- (BOOL)doCleanupDirectory:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  [NSFileManager ane_addWriteModeForPath:v3];
  [objc_opt_class() removeFilesFromDirectory:v3 olderThanSeconds:7200.0];
  objc_autoreleasePoolPop(v4);

  return 1;
}

- (void)scheduleMaintenanceWithName:(id)a3 directoryPaths:(id)a4
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1000097F4;
  v13 = &unk_100030808;
  v14 = a4;
  v15 = self;
  v6 = v14;
  v7 = a3;
  v8 = objc_retainBlock(&v10);
  v9 = [_ANETask taskWithName:v7 period:7200 handler:v8, v10, v11, v12, v13];

  [_ANETaskManager registerTask:v9];
}

@end