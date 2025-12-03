@interface RMMigrationSystemContainer
- (BOOL)_directoryExistsAtURL:(id)l;
- (BOOL)_migrateFromURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)_moveDirectory:(id)directory fromURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)_okToMigrateFromURL:(id)l toURL:(id)rL;
- (BOOL)executeReturningError:(id *)error;
@end

@implementation RMMigrationSystemContainer

- (BOOL)executeReturningError:(id *)error
{
  if (+[RMBundle managementScope]== 1)
  {
    v5 = +[RMLocations oldBaseDirectoryURLInSystemDomain];
    v6 = [RMLocations baseDirectoryURLCreateIfNeeded:1];
    if ([(RMMigrationSystemContainer *)self _okToMigrateFromURL:v5 toURL:v6])
    {
      v7 = [(RMMigrationSystemContainer *)self _migrateFromURL:v5 toURL:v6 error:error];

      return v7;
    }
  }

  v9 = +[RMLog migrationSystemContainer];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000561DC();
  }

  return 1;
}

- (BOOL)_okToMigrateFromURL:(id)l toURL:(id)rL
{
  v6 = DatabaseDirectoryName;
  rLCopy = rL;
  v8 = [l URLByAppendingPathComponent:v6];
  v9 = [rLCopy URLByAppendingPathComponent:v6];

  v10 = [(RMMigrationSystemContainer *)self _directoryExistsAtURL:v8];
  v11 = [(RMMigrationSystemContainer *)self _directoryExistsAtURL:v9];
  if ((v10 & 1) == 0)
  {
    v12 = +[RMLog migrationSystemContainer];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_100056218();
    }
  }

  if (v11)
  {
    v13 = +[RMLog migrationSystemContainer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100056254();
    }
  }

  return (v11 ^ 1) & v10;
}

- (BOOL)_directoryExistsAtURL:(id)l
{
  v7 = 0;
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  path = [lCopy path];

  LOBYTE(lCopy) = [v4 fileExistsAtPath:path isDirectory:&v7];
  return lCopy & v7;
}

- (BOOL)_migrateFromURL:(id)l toURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v10 = +[RMLog migrationSystemContainer];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_100056290();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v22[0] = DatabaseDirectoryName;
  v22[1] = StatusDirectoryName;
  v22[2] = IdentitiesDirectoryName;
  v22[3] = HTTPLogsDirectoryName;
  v11 = [NSArray arrayWithObjects:v22 count:4, 0];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (![(RMMigrationSystemContainer *)self _moveDirectory:*(*(&v18 + 1) + 8 * i) fromURL:lCopy toURL:rLCopy error:error])
        {
          v16 = 0;
          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_13:

  return v16;
}

- (BOOL)_moveDirectory:(id)directory fromURL:(id)l toURL:(id)rL error:(id *)error
{
  directoryCopy = directory;
  rLCopy = rL;
  v11 = [l URLByAppendingPathComponent:directoryCopy];
  v12 = [rLCopy URLByAppendingPathComponent:directoryCopy];

  v31 = 0;
  v13 = +[NSFileManager defaultManager];
  path = [v11 path];
  v15 = [v13 fileExistsAtPath:path isDirectory:&v31];

  if ((v15 & 1) == 0)
  {
    v26 = +[RMLog migrationSystemContainer];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sub_1000562CC();
    }

    v24 = 0;
    goto LABEL_12;
  }

  path2 = [v11 path];
  path3 = [v12 path];
  v30[1] = 0;
  v18 = DMCSafelyCopyItemAtPathToDestinationPath();
  v19 = 0;

  v20 = +[RMLog migrationSystemContainer];
  v21 = v20;
  if (v18)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_100056340();
    }

    v22 = +[NSFileManager defaultManager];
    v30[0] = v19;
    v23 = [v22 removeItemAtURL:v11 error:v30];
    v24 = v30[0];

    if ((v23 & 1) == 0)
    {
      v25 = +[RMLog migrationSystemContainer];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000563B4();
      }
    }

LABEL_12:
    v27 = 1;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10005537C();
  }

  v27 = 0;
  if (error && v19)
  {
    v28 = v19;
    v27 = 0;
    *error = v19;
  }

  v24 = v19;
LABEL_19:

  return v27;
}

@end