@interface PKDAnnotationStore
+ (id)confstrURL:(int)a3;
+ (id)globalURL;
- (BOOL)loadDb:(id)a3 error:(id *)a4;
- (BOOL)saveDb:(id *)a3;
- (PKDAnnotationStore)initWithDatabase:(id)a3 externalProviders:(id)a4;
- (id)annotationForIdentifier:(id)a3;
- (id)annotationForPlugIn:(id)a3;
- (id)containerURL;
- (id)defaultDatabaseURL;
- (void)containerURL;
- (void)defaultDatabaseURL;
- (void)setAnnotation:(id)a3 forPlugIn:(id)a4;
@end

@implementation PKDAnnotationStore

- (PKDAnnotationStore)initWithDatabase:(id)a3 externalProviders:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = PKDAnnotationStore;
  v8 = [(PKDAnnotationStore *)&v40 init];
  v9 = v8;
  if (v8)
  {
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = [(PKDAnnotationStore *)v8 defaultDatabaseURL];
    }

    annotationsURL = v9->_annotationsURL;
    v9->_annotationsURL = v10;

    objc_storeStrong(&v9->_external, a4);
    v12 = objc_autoreleasePoolPush();
    v13 = [(PKDAnnotationStore *)v9 annotationsURL];
    v39 = 0;
    v14 = [(PKDAnnotationStore *)v9 loadDb:v13 error:&v39];
    v15 = v39;

    if (v14)
    {
      v16 = v15;
LABEL_28:

      objc_autoreleasePoolPop(v12);
      goto LABEL_29;
    }

    if ([v15 code] != &stru_B8.reserved3)
    {
      v17 = pklog_handle_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [PKDAnnotationStore initWithDatabase:externalProviders:];
      }
    }

    v18 = [(PKDAnnotationStore *)v9 external];
    v19 = [v18 um];
    v20 = [v19 isMultiUser];

    if (v20)
    {
      v21 = +[PKDAnnotationStore globalURL];
      v38 = v15;
      v22 = [(PKDAnnotationStore *)v9 loadDb:v21 error:&v38];
      v16 = v38;

      if (!v22)
      {
        goto LABEL_26;
      }

      v23 = pklog_handle_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "migrating shared annotations", buf, 2u);
      }

      v36 = v16;
      v24 = [(PKDAnnotationStore *)v9 saveDb:&v36];
      v25 = v36;

      if (v24)
      {
        goto LABEL_25;
      }

      v26 = pklog_handle_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [PKDAnnotationStore initWithDatabase:externalProviders:];
      }
    }

    else
    {
      v27 = [(PKDAnnotationStore *)v9 containerURL];
      v35 = v15;
      v28 = [(PKDAnnotationStore *)v9 loadDb:v27 error:&v35];
      v16 = v35;

      if (!v28)
      {
        goto LABEL_26;
      }

      v29 = pklog_handle_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "migrating shared annotations", buf, 2u);
      }

      v34 = v16;
      v30 = [(PKDAnnotationStore *)v9 saveDb:&v34];
      v25 = v34;

      if (v30)
      {
LABEL_25:
        v16 = v25;
LABEL_26:
        v31 = [(PKDAnnotationStore *)v9 annotations];

        if (!v31)
        {
          v32 = objc_opt_new();
          [(PKDAnnotationStore *)v9 setAnnotations:v32];
        }

        goto LABEL_28;
      }

      v26 = pklog_handle_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [PKDAnnotationStore initWithDatabase:externalProviders:];
      }
    }

    goto LABEL_25;
  }

LABEL_29:

  return v9;
}

- (id)annotationForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PKDAnnotationStore *)self annotations];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)annotationForPlugIn:(id)a3
{
  v4 = a3;
  v5 = [(PKDAnnotationStore *)self annotations];
  v6 = [v4 annotationKey];

  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (void)setAnnotation:(id)a3 forPlugIn:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 annotationKey];
  if (v6)
  {
    v9 = PKAnnotationElectionKey;
    v10 = [v6 objectForKeyedSubscript:PKAnnotationElectionKey];
    if (v10)
    {
      v11 = [(PKDAnnotationStore *)self annotations];
      v12 = [v11 objectForKeyedSubscript:v8];
      v13 = [v12 objectForKeyedSubscript:v9];

      v14 = [v7 attributes];
      v15 = [v14 objectForKeyedSubscript:PKProtocolAttribute];

      if (v15 && (!v13 || ([v13 isEqual:v10] & 1) == 0))
      {
        v16 = [v7 identifier];
        v17 = [v7 version];
        if ([v10 integerValue] == &dword_0 + 1)
        {
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }

        pkdMessageTraceStateChange(v16, v17, v15, v18);
      }
    }

    v19 = [(PKDAnnotationStore *)self annotations];
    v20 = [v19 objectForKeyedSubscript:v8];
    v21 = [v20 mutableCopy];

    if (!v21)
    {
      v21 = objc_opt_new();
    }

    [v21 addEntriesFromDictionary:v6];
    v22 = [(PKDAnnotationStore *)self annotations];
    [v22 setObject:v21 forKeyedSubscript:v8];
  }

  else
  {
    v10 = [(PKDAnnotationStore *)self annotations];
    [v10 removeObjectForKey:v8];
  }

  v23 = objc_autoreleasePoolPush();
  v27 = 0;
  v24 = [(PKDAnnotationStore *)self saveDb:&v27];
  v25 = v27;
  if ((v24 & 1) == 0)
  {
    v26 = pklog_handle_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [PKDAnnotationStore setAnnotation:forPlugIn:];
    }
  }

  objc_autoreleasePoolPop(v23);
}

- (BOOL)loadDb:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(PKDAnnotationStore *)self external];
  v8 = [v7 filesystem];
  v9 = [v8 dataWithContentsOfURL:v6 options:0 error:a4];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:a4];
  v11 = v10;
  if (!v10)
  {

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v12 = [v10 objectForKeyedSubscript:PKVersionAnnotationsKey];
  v13 = [v12 integerValue];

  v14 = v13 == &dword_10;
  if (v13 == &dword_10)
  {
    v15 = [v11 objectForKeyedSubscript:PKDataAnnotationsKey];
    [(PKDAnnotationStore *)self setAnnotations:v15];
  }

  else
  {
    v15 = [[NSString alloc] initWithFormat:@"found database version %d needed version %d", v13, 16];
    if (a4)
    {
      *a4 = pkError();
    }
  }

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v14;
}

- (BOOL)saveDb:(id *)a3
{
  v15[0] = &off_2A198;
  v14[0] = PKVersionAnnotationsKey;
  v14[1] = PKDataAnnotationsKey;
  v5 = [(PKDAnnotationStore *)self annotations];
  v15[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:a3];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [(PKDAnnotationStore *)self external];
  v9 = [v8 filesystem];
  v10 = [(PKDAnnotationStore *)self annotationsURL];
  v11 = [v9 writeToURL:v10 withData:v7 options:268435457 error:a3];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
LABEL_4:
    v12 = 0;
  }

  return v12;
}

- (id)defaultDatabaseURL
{
  v19 = NSFilePosixPermissions;
  v20 = &off_2A1B0;
  v3 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v4 = [(PKDAnnotationStore *)self external];
  v5 = [v4 um];
  v6 = [v5 isMultiUser];

  if (v6)
  {
    v7 = [(PKDAnnotationStore *)self containerURL];
    v8 = objc_autoreleasePoolPush();
    v9 = [[NSURL alloc] initFileURLWithPath:@"com.apple.pluginkit" isDirectory:1 relativeToURL:v7];
    v10 = [(PKDAnnotationStore *)self external];
    v11 = [v10 filesystem];
    v18 = 0;
    v12 = [v11 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v3 error:&v18];
    v13 = v18;

    if ((v12 & 1) == 0)
    {
      v14 = pklog_handle_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PKDAnnotationStore defaultDatabaseURL];
      }
    }

    v15 = [[NSURL alloc] initFileURLWithPath:@"Annotations" relativeToURL:v9];
    v16 = pklog_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(PKDAnnotationStore *)v15 defaultDatabaseURL];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v15 = [objc_opt_class() globalURL];
  }

  return v15;
}

+ (id)confstrURL:(int)a3
{
  if (confstr(a3, v6, 0x400uLL) - 1024 <= 0xFFFFFFFFFFFFFC00)
  {
    v3 = pklog_handle_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PKDAnnotationStore confstrURL:v3];
    }

    [NSException raise:NSInternalInconsistencyException format:@"unable to locate user directory: errno %d", *__error()];
  }

  v4 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:v6 isDirectory:1 relativeToURL:0];

  return v4;
}

+ (id)globalURL
{
  v2 = [[NSURL alloc] initFileURLWithPath:@"/var/db/PlugInKit-Annotations"];

  return v2;
}

- (id)containerURL
{
  v8 = 1;
  v2 = [(PKDAnnotationStore *)self external];
  v3 = [v2 container];
  v4 = [v3 create_or_lookup_path_for_current_user:10 identifier:"com.apple.pkd" create_if_necessary:1 transient:0 out_existed:0 out_error:&v8];

  if (v4)
  {
    v5 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:v4 isDirectory:1 relativeToURL:0];
    free(v4);
  }

  else
  {
    v6 = pklog_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(PKDAnnotationStore *)&v8 containerURL];
    }

    [NSException raise:NSInternalInconsistencyException format:@"unable to locate user container: error %llu", v8];
    v5 = 0;
  }

  return v5;
}

- (void)initWithDatabase:externalProviders:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [v0 annotationsURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, v2, v3, "unable to load annotation database at [%{public}@] error: %{public}@ (resetting)", v4, v5, v6, v7, v8);
}

- (void)initWithDatabase:externalProviders:.cold.2()
{
  OUTLINED_FUNCTION_2();
  v1 = [v0 annotationsURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, v2, v3, "unable to save migrated annotations to [%{public}@] error: %{public}@", v4, v5, v6, v7, v8);
}

- (void)initWithDatabase:externalProviders:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v1 = [v0 annotationsURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, v2, v3, "unable to save migrated annotations to %{public}@ error:%{public}@", v4, v5, v6, v7, v8);
}

- (void)setAnnotation:forPlugIn:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [v0 annotationsURL];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_0, v2, v3, "unable to save annotations to [%{public}@] error: %{public}@", v4, v5, v6, v7, v8);
}

- (void)defaultDatabaseURL
{
  v3 = [a1 path];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "annotations are stored at [%{public}@]", &v4, 0xCu);
}

+ (void)confstrURL:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_0, a1, OS_LOG_TYPE_ERROR, "failed to obtain user directory: errno=%{darwin.errno}d", v3, 8u);
}

- (void)containerURL
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "failed to get storage container: error=%llu", &v3, 0xCu);
}

@end