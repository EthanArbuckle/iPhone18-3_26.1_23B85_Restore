@interface NSPersistentStoreCoordinator
- (BOOL)destroyPersistentStoreWithDescription:(id)a3 error:(id *)a4;
@end

@implementation NSPersistentStoreCoordinator

- (BOOL)destroyPersistentStoreWithDescription:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (_TUIsInternalInstall())
  {
    v25 = a4;
    v7 = [v6 URL];
    v8 = [v7 lastPathComponent];
    v9 = [v8 stringByDeletingPathExtension];
    v10 = [v9 stringByAppendingString:@"-corrupt"];

    v11 = [v7 pathExtension];
    if (v11)
    {
      v12 = [v10 stringByAppendingPathExtension:v11];

      v10 = v12;
    }

    v13 = [v7 URLByDeletingLastPathComponent];
    v14 = [v13 URLByAppendingPathComponent:v10 isDirectory:0];

    v15 = [v6 options];
    v16 = [v6 type];
    v26 = 0;
    v17 = [(NSPersistentStoreCoordinator *)self replacePersistentStoreAtURL:v14 destinationOptions:v15 withPersistentStoreFromURL:v7 sourceOptions:v15 storeType:v16 error:&v26];
    v18 = v26;

    if ((v17 & 1) == 0)
    {
      v19 = FTCServiceLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10000CBC0(v6, v18, v19);
      }
    }

    a4 = v25;
  }

  v20 = [v6 URL];
  v21 = [v6 type];
  v22 = [v6 options];
  v23 = [(NSPersistentStoreCoordinator *)self destroyPersistentStoreAtURL:v20 withType:v21 options:v22 error:a4];

  return v23;
}

@end