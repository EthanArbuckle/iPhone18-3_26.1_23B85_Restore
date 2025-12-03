@interface PKDAnnotationStore
+ (id)confstrURL:(int)l;
+ (id)globalURL;
- (BOOL)loadDb:(id)db error:(id *)error;
- (BOOL)saveDb:(id *)db;
- (PKDAnnotationStore)initWithDatabase:(id)database externalProviders:(id)providers;
- (id)annotationForIdentifier:(id)identifier;
- (id)annotationForPlugIn:(id)in;
- (id)containerURL;
- (id)defaultDatabaseURL;
- (void)containerURL;
- (void)defaultDatabaseURL;
- (void)setAnnotation:(id)annotation forPlugIn:(id)in;
@end

@implementation PKDAnnotationStore

- (PKDAnnotationStore)initWithDatabase:(id)database externalProviders:(id)providers
{
  databaseCopy = database;
  providersCopy = providers;
  v40.receiver = self;
  v40.super_class = PKDAnnotationStore;
  v8 = [(PKDAnnotationStore *)&v40 init];
  v9 = v8;
  if (v8)
  {
    if (databaseCopy)
    {
      defaultDatabaseURL = databaseCopy;
    }

    else
    {
      defaultDatabaseURL = [(PKDAnnotationStore *)v8 defaultDatabaseURL];
    }

    annotationsURL = v9->_annotationsURL;
    v9->_annotationsURL = defaultDatabaseURL;

    objc_storeStrong(&v9->_external, providers);
    v12 = objc_autoreleasePoolPush();
    annotationsURL = [(PKDAnnotationStore *)v9 annotationsURL];
    v39 = 0;
    v14 = [(PKDAnnotationStore *)v9 loadDb:annotationsURL error:&v39];
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

    external = [(PKDAnnotationStore *)v9 external];
    v19 = [external um];
    isMultiUser = [v19 isMultiUser];

    if (isMultiUser)
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
      containerURL = [(PKDAnnotationStore *)v9 containerURL];
      v35 = v15;
      v28 = [(PKDAnnotationStore *)v9 loadDb:containerURL error:&v35];
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
        annotations = [(PKDAnnotationStore *)v9 annotations];

        if (!annotations)
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

- (id)annotationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  annotations = [(PKDAnnotationStore *)self annotations];
  v6 = [annotations objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)annotationForPlugIn:(id)in
{
  inCopy = in;
  annotations = [(PKDAnnotationStore *)self annotations];
  annotationKey = [inCopy annotationKey];

  v7 = [annotations objectForKeyedSubscript:annotationKey];

  return v7;
}

- (void)setAnnotation:(id)annotation forPlugIn:(id)in
{
  annotationCopy = annotation;
  inCopy = in;
  annotationKey = [inCopy annotationKey];
  if (annotationCopy)
  {
    v9 = PKAnnotationElectionKey;
    annotations4 = [annotationCopy objectForKeyedSubscript:PKAnnotationElectionKey];
    if (annotations4)
    {
      annotations = [(PKDAnnotationStore *)self annotations];
      v12 = [annotations objectForKeyedSubscript:annotationKey];
      v13 = [v12 objectForKeyedSubscript:v9];

      attributes = [inCopy attributes];
      v15 = [attributes objectForKeyedSubscript:PKProtocolAttribute];

      if (v15 && (!v13 || ([v13 isEqual:annotations4] & 1) == 0))
      {
        identifier = [inCopy identifier];
        version = [inCopy version];
        if ([annotations4 integerValue] == &dword_0 + 1)
        {
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }

        pkdMessageTraceStateChange(identifier, version, v15, v18);
      }
    }

    annotations2 = [(PKDAnnotationStore *)self annotations];
    v20 = [annotations2 objectForKeyedSubscript:annotationKey];
    v21 = [v20 mutableCopy];

    if (!v21)
    {
      v21 = objc_opt_new();
    }

    [v21 addEntriesFromDictionary:annotationCopy];
    annotations3 = [(PKDAnnotationStore *)self annotations];
    [annotations3 setObject:v21 forKeyedSubscript:annotationKey];
  }

  else
  {
    annotations4 = [(PKDAnnotationStore *)self annotations];
    [annotations4 removeObjectForKey:annotationKey];
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

- (BOOL)loadDb:(id)db error:(id *)error
{
  dbCopy = db;
  external = [(PKDAnnotationStore *)self external];
  filesystem = [external filesystem];
  v9 = [filesystem dataWithContentsOfURL:dbCopy options:0 error:error];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:error];
  v11 = v10;
  if (!v10)
  {

LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v12 = [v10 objectForKeyedSubscript:PKVersionAnnotationsKey];
  integerValue = [v12 integerValue];

  v14 = integerValue == &dword_10;
  if (integerValue == &dword_10)
  {
    v15 = [v11 objectForKeyedSubscript:PKDataAnnotationsKey];
    [(PKDAnnotationStore *)self setAnnotations:v15];
  }

  else
  {
    v15 = [[NSString alloc] initWithFormat:@"found database version %d needed version %d", integerValue, 16];
    if (error)
    {
      *error = pkError();
    }
  }

  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v14;
}

- (BOOL)saveDb:(id *)db
{
  v15[0] = &off_2A198;
  v14[0] = PKVersionAnnotationsKey;
  v14[1] = PKDataAnnotationsKey;
  annotations = [(PKDAnnotationStore *)self annotations];
  v15[1] = annotations;
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:100 options:0 error:db];
  if (!v7)
  {
    goto LABEL_4;
  }

  external = [(PKDAnnotationStore *)self external];
  filesystem = [external filesystem];
  annotationsURL = [(PKDAnnotationStore *)self annotationsURL];
  v11 = [filesystem writeToURL:annotationsURL withData:v7 options:268435457 error:db];

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
  external = [(PKDAnnotationStore *)self external];
  v5 = [external um];
  isMultiUser = [v5 isMultiUser];

  if (isMultiUser)
  {
    containerURL = [(PKDAnnotationStore *)self containerURL];
    v8 = objc_autoreleasePoolPush();
    v9 = [[NSURL alloc] initFileURLWithPath:@"com.apple.pluginkit" isDirectory:1 relativeToURL:containerURL];
    external2 = [(PKDAnnotationStore *)self external];
    filesystem = [external2 filesystem];
    v18 = 0;
    v12 = [filesystem createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v3 error:&v18];
    v13 = v18;

    if ((v12 & 1) == 0)
    {
      v14 = pklog_handle_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PKDAnnotationStore defaultDatabaseURL];
      }
    }

    globalURL = [[NSURL alloc] initFileURLWithPath:@"Annotations" relativeToURL:v9];
    v16 = pklog_handle_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [(PKDAnnotationStore *)globalURL defaultDatabaseURL];
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    globalURL = [objc_opt_class() globalURL];
  }

  return globalURL;
}

+ (id)confstrURL:(int)l
{
  if (confstr(l, v6, 0x400uLL) - 1024 <= 0xFFFFFFFFFFFFFC00)
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
  external = [(PKDAnnotationStore *)self external];
  container = [external container];
  v4 = [container create_or_lookup_path_for_current_user:10 identifier:"com.apple.pkd" create_if_necessary:1 transient:0 out_existed:0 out_error:&v8];

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
  path = [self path];
  v4 = 138543362;
  v5 = path;
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
  v2 = *self;
  v3 = 134217984;
  v4 = v2;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "failed to get storage container: error=%llu", &v3, 0xCu);
}

@end