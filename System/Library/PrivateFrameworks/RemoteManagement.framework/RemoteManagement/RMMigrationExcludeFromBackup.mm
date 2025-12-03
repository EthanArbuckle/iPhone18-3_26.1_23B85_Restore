@interface RMMigrationExcludeFromBackup
- (BOOL)executeReturningError:(id *)error;
@end

@implementation RMMigrationExcludeFromBackup

- (BOOL)executeReturningError:(id *)error
{
  v4 = [RMLocations baseDirectoryURLCreateIfNeeded:0];
  v5 = +[NSFileManager defaultManager];
  path = [v4 path];
  v7 = [v5 fileExistsAtPath:path];

  if (!v7)
  {
    v11 = +[RMLog migrationExcludeFromBackup];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1000540B4(v11);
    }

    goto LABEL_7;
  }

  path2 = [v4 path];
  v9 = DMCSetSkipBackupAttributeToItemAtPath();

  v10 = +[RMLog migrationExcludeFromBackup];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100054190(v11);
    }

LABEL_7:
    v12 = 1;
    goto LABEL_8;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000540F8(v4, v11);
  }

  if (!error)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v14 = +[RMErrorUtilities createInternalError];
  v11 = v14;
  if (v14)
  {
    v15 = v14;
    v12 = 0;
    *error = v11;
  }

  else
  {
    v12 = 0;
  }

LABEL_8:

LABEL_9:
  return v12;
}

@end