@interface RMMigrationStatusPath
- (BOOL)_migrateStatusDirectory:(id)a3 error:(id *)a4;
- (BOOL)_moveDirectoryFromURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)executeReturningError:(id *)a3;
- (id)_configurationTypePrefixes;
- (id)_transformName:(id)a3;
- (void)_migrateURL:(id)a3;
@end

@implementation RMMigrationStatusPath

- (BOOL)executeReturningError:(id *)a3
{
  v5 = [RMLocations statusDirectoryURLCreateIfNeeded:0];
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:0];

  if (v8)
  {
    v9 = [(RMMigrationStatusPath *)self _migrateStatusDirectory:v5 error:a3];
  }

  else
  {
    v10 = +[RMLog migrationStatusPath];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1000552BC(v10);
    }

    v9 = 1;
  }

  return v9;
}

- (BOOL)_migrateStatusDirectory:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  v8 = [v6 path];
  v24 = 0;
  v9 = [v7 contentsOfDirectoryAtPath:v8 error:&v24];
  v10 = v24;

  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v6 URLByAppendingPathComponent:{*(*(&v20 + 1) + 8 * v15), v20}];
          [(RMMigrationStatusPath *)self _migrateURL:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v17 = +[RMLog migrationStatusPath];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100055300();
    }

    if (a4 && v10)
    {
      v18 = v10;
      *a4 = v10;
    }
  }

  return v9 != 0;
}

- (void)_migrateURL:(id)a3
{
  v4 = a3;
  v5 = +[NSFileManager defaultManager];
  v6 = [v4 path];
  v26 = 0;
  v7 = [v5 contentsOfDirectoryAtPath:v6 error:&v26];
  v8 = v26;

  if (v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v8;
      v20 = v7;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = [v4 URLByAppendingPathComponent:{*(*(&v22 + 1) + 8 * i), v19, v20}];
          v14 = [v13 pathComponents];
          v15 = [v14 mutableCopy];

          v16 = [v15 lastObject];
          [v15 removeLastObject];
          v17 = [(RMMigrationStatusPath *)self _transformName:v16];
          if (v17)
          {
            [v15 addObject:v17];
            v18 = [NSURL fileURLWithPathComponents:v15];
            [(RMMigrationStatusPath *)self _moveDirectoryFromURL:v13 toURL:v18 error:0];
          }

          else
          {
            v18 = +[RMLog migrationStatusPath];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v28 = v13;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Ignoring status directory %{public}@", buf, 0xCu);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v10);
      v8 = v19;
      v7 = v20;
    }
  }

  else
  {
    obj = +[RMLog migrationStatusPath];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_100055300();
    }
  }
}

- (id)_configurationTypePrefixes
{
  if (qword_1000E69A8 != -1)
  {
    sub_100055368();
  }

  v3 = off_1000E6420;

  return v3;
}

- (id)_transformName:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(RMMigrationStatusPath *)self _configurationTypePrefixes];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v4 hasPrefix:v9])
        {
          v6 = [v4 substringFromIndex:{objc_msgSend(v9, "length")}];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)_moveDirectoryFromURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[NSFileManager defaultManager];
  v16 = 0;
  v10 = [v9 moveItemAtURL:v7 toURL:v8 error:&v16];
  v11 = v16;

  v12 = +[RMLog migrationStatusPath];
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1000553E4();
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10005537C();
    }

    if (a5 && v11)
    {
      v14 = v11;
      *a5 = v11;
    }
  }

  return v10;
}

@end