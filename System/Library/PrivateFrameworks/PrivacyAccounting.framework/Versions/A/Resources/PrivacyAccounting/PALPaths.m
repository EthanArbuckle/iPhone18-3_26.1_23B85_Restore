@interface PALPaths
- (BOOL)createDirectories:(id *)a3;
- (NSString)biomeDirectory;
- (NSString)settingsFile;
- (PALPaths)initWithRootDirectory:(id)a3;
- (void)removeBiomeDirectory;
@end

@implementation PALPaths

- (NSString)biomeDirectory
{
  v2 = [(PALPaths *)self rootDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"Biome"];

  return v3;
}

- (PALPaths)initWithRootDirectory:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PALPaths;
  v5 = [(PALPaths *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    rootDirectory = v5->_rootDirectory;
    v5->_rootDirectory = v6;
  }

  return v5;
}

- (NSString)settingsFile
{
  v2 = [(PALPaths *)self rootDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"privacyaccountingd.plist"];

  return v3;
}

- (BOOL)createDirectories:(id *)a3
{
  v5 = +[NSFileManager defaultManager];
  v6 = [(PALPaths *)self rootDirectory];
  v30[0] = v6;
  v7 = [(PALPaths *)self biomeDirectory];
  v30[1] = v7;
  v8 = [NSArray arrayWithObjects:v30 count:2];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    *&v11 = 138543362;
    v22 = v11;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        if (([v5 fileExistsAtPath:{v15, v22, v23}] & 1) == 0)
        {
          v16 = [v5 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:a3];
          v17 = sub_100005738();
          v18 = v17;
          if (!v16)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10000588C(v15, a3, v18);
            }

            v20 = sub_100005738();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100005918(v20);
            }

            v19 = 0;
            goto LABEL_19;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v22;
            v28 = v15;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Created directory: %{public}@", buf, 0xCu);
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v19 = 1;
LABEL_19:

  return v19;
}

- (void)removeBiomeDirectory
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(PALPaths *)self biomeDirectory];
  v8 = 0;
  v5 = [v3 removeItemAtPath:v4 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = sub_100005738();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100005970(self, v6, v7);
    }
  }
}

@end