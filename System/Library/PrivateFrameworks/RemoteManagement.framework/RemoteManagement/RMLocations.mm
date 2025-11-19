@interface RMLocations
+ (BOOL)fixFilePermissionsForURL:(id)a3;
+ (NSURL)managedObjectModelURL;
+ (NSURL)xpcServiceDirectoryURL;
+ (id)URLWithResolvedSymlinksFromURL:(id)a3 error:(id *)a4;
+ (id)_rootDirectoryURLInDomain:(int64_t)a3 error:(id *)a4;
+ (id)baseDirectoryURLInDomain:(int64_t)a3 createIfNeeded:(BOOL)a4;
+ (id)darwinCacheDirectoryURL;
+ (id)darwinTemporaryDirectoryURL;
+ (id)darwinUserDirectoryURL;
+ (id)dataVaultDirectoryURLInDomain:(int64_t)a3 createIfNeeded:(BOOL)a4;
+ (id)homeDirectoryURL;
+ (void)_oneTimeDataVaultConversionInDomain:(int64_t)a3 dataVaultDirectoryURL:(id)a4;
+ (void)darwinCacheDirectoryURL;
+ (void)darwinTemporaryDirectoryURL;
+ (void)darwinUserDirectoryURL;
+ (void)homeDirectoryURL;
@end

@implementation RMLocations

+ (id)_rootDirectoryURLInDomain:(int64_t)a3 error:(id *)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__RMLocations__rootDirectoryURLInDomain_error___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  if (_rootDirectoryURLInDomain_error__onceToken != -1)
  {
    dispatch_once(&_rootDirectoryURLInDomain_error__onceToken, block);
  }

  v4 = _rootDirectoryURLInDomain_error__containerURL;

  return v4;
}

void __47__RMLocations__rootDirectoryURLInDomain_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    v4 = MEMORY[0x1E695DFF8];
    v2 = NSHomeDirectory();
    v3 = v4;
    goto LABEL_5;
  }

  v1 = DMCSystemContainerPathWithBundleIdentifier();
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x1E695DFF8];
LABEL_5:
    v5 = [v3 fileURLWithPath:v2];

    v6 = [v5 URLByAppendingPathComponent:@"Library/Application Support"];
    v7 = _rootDirectoryURLInDomain_error__containerURL;
    _rootDirectoryURLInDomain_error__containerURL = v6;

    goto LABEL_6;
  }

  v5 = +[RMLog locations];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __47__RMLocations__rootDirectoryURLInDomain_error___block_invoke_cold_1();
  }

LABEL_6:
}

+ (id)baseDirectoryURLInDomain:(int64_t)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v21 = 0;
  v6 = [a1 _rootDirectoryURLInDomain:a3 error:&v21];
  v7 = v21;
  if (!v6)
  {
    v8 = +[RMLog locations];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[RMLocations baseDirectoryURLInDomain:createIfNeeded:];
    }
  }

  if (a3)
  {
    v9 = @"com.apple.remotemanagementd";
  }

  else
  {
    v9 = @"com.apple.RemoteManagementAgent";
  }

  v10 = [v6 URLByAppendingPathComponent:v9 isDirectory:1];
  v11 = v10;
  if (v4)
  {
    v20 = v7;
    DirectoryAtURL = createDirectoryAtURL(v10, a3, &v20);
    v13 = v20;

    if ((DirectoryAtURL & 1) == 0)
    {
      v14 = +[RMLog locations];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        +[RMLocations baseDirectoryURLInDomain:createIfNeeded:];
      }
    }

    v15 = [v11 path];
    DMCSetSkipBackupAttributeToItemAtPath();
  }

  else
  {
    v13 = v7;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__RMLocations_baseDirectoryURLInDomain_createIfNeeded___block_invoke;
  block[3] = &unk_1E8706038;
  v16 = v11;
  v19 = v16;
  if (baseDirectoryURLInDomain_createIfNeeded__onceToken != -1)
  {
    dispatch_once(&baseDirectoryURLInDomain_createIfNeeded__onceToken, block);
  }

  return v16;
}

void __55__RMLocations_baseDirectoryURLInDomain_createIfNeeded___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[RMLog locations];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1E1168000, v2, OS_LOG_TYPE_INFO, "Base directory is %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)dataVaultDirectoryURLInDomain:(int64_t)a3 createIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = [a1 baseDirectoryURLInDomain:? createIfNeeded:?];
  if (!v7)
  {
    v11 = +[RMLog locations];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[RMLocations dataVaultDirectoryURLInDomain:createIfNeeded:];
    }

    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  v16 = 0;
  DirectoryAtURL = createDirectoryAtURL(v7, a3, &v16);
  v9 = v16;
  if ((DirectoryAtURL & 1) == 0)
  {
    v10 = +[RMLog locations];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[RMLocations dataVaultDirectoryURLInDomain:createIfNeeded:];
    }
  }

LABEL_11:
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [v7 path];
  v14 = [v12 fileExistsAtPath:v13 isDirectory:0];

  if (v14)
  {
    [a1 _oneTimeDataVaultConversionInDomain:a3 dataVaultDirectoryURL:v7];
  }

  return v7;
}

+ (void)_oneTimeDataVaultConversionInDomain:(int64_t)a3 dataVaultDirectoryURL:(id)a4
{
  v4 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__RMLocations__oneTimeDataVaultConversionInDomain_dataVaultDirectoryURL___block_invoke;
  block[3] = &unk_1E8706038;
  v8 = v4;
  v5 = _oneTimeDataVaultConversionInDomain_dataVaultDirectoryURL__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&_oneTimeDataVaultConversionInDomain_dataVaultDirectoryURL__onceToken, block);
  }
}

void __73__RMLocations__oneTimeDataVaultConversionInDomain_dataVaultDirectoryURL___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = +[RMLog locations];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1E1168000, v2, OS_LOG_TYPE_INFO, "Data Vault directory is %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (NSURL)managedObjectModelURL
{
  v2 = +[RMBundle remoteManagementBundle];
  v3 = [v2 URLForResource:@"RemoteManagement" withExtension:@"momd"];

  return v3;
}

+ (NSURL)xpcServiceDirectoryURL
{
  v2 = +[RMBundle remoteManagementBundle];
  v3 = [v2 URLForResource:@"XPCServices" withExtension:0];

  return v3;
}

+ (id)homeDirectoryURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = NSHomeDirectory();
  v4 = [v2 fileURLWithPath:v3];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    +[RMLocations homeDirectoryURL];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__RMLocations_homeDirectoryURL__block_invoke;
  block[3] = &unk_1E8706038;
  v10 = v4;
  v5 = homeDirectoryURL_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&homeDirectoryURL_onceToken, block);
  }

  v7 = [RMLocations URLWithResolvedSymlinksFromURL:v6 error:0];

  return v7;
}

void __31__RMLocations_homeDirectoryURL__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1E1168000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Home directory is %{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)darwinUserDirectoryURL
{
  v17 = *MEMORY[0x1E69E9840];
  bzero(v16, 0x400uLL);
  if (!confstr(0x10000, v16, 0x400uLL) || (v2 = realpath_DARWIN_EXTSN(v16, 0)) == 0 || (v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v2 length:strlen(v2) encoding:4 freeWhenDone:1], objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v3), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = __error();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[(RMLocations *)v5];
    }

    v4 = 0;
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __37__RMLocations_darwinUserDirectoryURL__block_invoke;
  v14 = &unk_1E8706038;
  v15 = v4;
  v6 = darwinUserDirectoryURL_onceToken;
  v7 = v4;
  if (v6 != -1)
  {
    dispatch_once(&darwinUserDirectoryURL_onceToken, &v11);
  }

  v8 = [RMLocations URLWithResolvedSymlinksFromURL:v7 error:0, v11, v12, v13, v14];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __37__RMLocations_darwinUserDirectoryURL__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1E1168000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Darwin Cache directory is %{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)darwinCacheDirectoryURL
{
  v17 = *MEMORY[0x1E69E9840];
  bzero(v16, 0x400uLL);
  if (!confstr(65538, v16, 0x400uLL) || (v2 = realpath_DARWIN_EXTSN(v16, 0)) == 0 || (v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v2 length:strlen(v2) encoding:4 freeWhenDone:1], objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v3), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = __error();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[(RMLocations *)v5];
    }

    v4 = 0;
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __38__RMLocations_darwinCacheDirectoryURL__block_invoke;
  v14 = &unk_1E8706038;
  v15 = v4;
  v6 = darwinCacheDirectoryURL_onceToken;
  v7 = v4;
  if (v6 != -1)
  {
    dispatch_once(&darwinCacheDirectoryURL_onceToken, &v11);
  }

  v8 = [RMLocations URLWithResolvedSymlinksFromURL:v7 error:0, v11, v12, v13, v14];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __38__RMLocations_darwinCacheDirectoryURL__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1E1168000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Darwin Cache directory is %{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)darwinTemporaryDirectoryURL
{
  v17 = *MEMORY[0x1E69E9840];
  bzero(v16, 0x400uLL);
  if (!confstr(65537, v16, 0x400uLL) || (v2 = realpath_DARWIN_EXTSN(v16, 0)) == 0 || (v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v2 length:strlen(v2) encoding:4 freeWhenDone:1], objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", v3), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = __error();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[(RMLocations *)v5];
    }

    v4 = 0;
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __42__RMLocations_darwinTemporaryDirectoryURL__block_invoke;
  v14 = &unk_1E8706038;
  v15 = v4;
  v6 = darwinTemporaryDirectoryURL_onceToken;
  v7 = v4;
  if (v6 != -1)
  {
    dispatch_once(&darwinTemporaryDirectoryURL_onceToken, &v11);
  }

  v8 = [RMLocations URLWithResolvedSymlinksFromURL:v7 error:0, v11, v12, v13, v14];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __42__RMLocations_darwinTemporaryDirectoryURL__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1E1168000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Darwin Temporary directory is %{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

+ (BOOL)fixFilePermissionsForURL:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[RMLog locations];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v25 = v3;
    _os_log_impl(&dword_1E1168000, v4, OS_LOG_TYPE_INFO, "Trying to fix permissions: %{public}@", buf, 0xCu);
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v3 path];
  v21 = 0;
  v7 = [v5 attributesOfItemAtPath:v6 error:&v21];
  v8 = v21;

  if (v7)
  {
    v9 = *MEMORY[0x1E696A370];
    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E696A370]];
    v11 = v10;
    if (v10 && [v10 intValue])
    {
      v12 = +[RMLog locations];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[RMLocations fixFilePermissionsForURL:];
      }

      v13 = v8;
    }

    else
    {
      v22 = v9;
      v23 = &unk_1F5C0CEC0;
      v14 = 1;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = [v3 path];
      v20 = v8;
      v17 = [v5 setAttributes:v15 ofItemAtPath:v16 error:&v20];
      v13 = v20;

      if (v17)
      {
LABEL_13:
        v8 = v13;
        goto LABEL_17;
      }

      v12 = +[RMLog locations];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[RMLocations fixFilePermissionsForURL:];
      }
    }

    v14 = 0;
    goto LABEL_13;
  }

  v11 = +[RMLog locations];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[RMLocations fixFilePermissionsForURL:];
  }

  v14 = 0;
LABEL_17:

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void __96__RMLocations__applicationSupportChildDirectoryURLInDomain_createIfNeeded_childName_descriptor___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[RMLog locations];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1E1168000, v2, OS_LOG_TYPE_INFO, "%{public}@ directory is %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __87__RMLocations__dataVaultChildDirectoryURLInDomain_createIfNeeded_childName_descriptor___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = +[RMLog locations];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_1E1168000, v2, OS_LOG_TYPE_INFO, "%{public}@ directory is %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)URLWithResolvedSymlinksFromURL:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 path];
  v7 = open([v6 fileSystemRepresentation], 0x8000, 0);

  if (v7 >= 1)
  {
    if (fcntl(v7, 50, v27) != -1)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v27];
      close(v7);
      if (v8)
      {
        a4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];

        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v15 = *__error();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[RMLocations URLWithResolvedSymlinksFromURL:error:];
      if (a4)
      {
        goto LABEL_12;
      }
    }

    else if (a4)
    {
LABEL_12:
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A798];
      v25 = *MEMORY[0x1E696A998];
      v26 = v5;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v19 = [v16 errorWithDomain:v17 code:v15 userInfo:v18];

      if (v19)
      {
        v20 = v19;
        *a4 = v19;
      }
    }

    close(v7);
LABEL_16:
    a4 = 0;
    goto LABEL_17;
  }

  v9 = *__error();
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  +[RMLocations URLWithResolvedSymlinksFromURL:error:];
  if (a4)
  {
LABEL_7:
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A798];
    v23 = *MEMORY[0x1E696A998];
    v24 = v5;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v13 = [v10 errorWithDomain:v11 code:v9 userInfo:v12];

    if (v13)
    {
      v14 = v13;
      *a4 = v13;
    }

    goto LABEL_16;
  }

LABEL_17:

  v21 = *MEMORY[0x1E69E9840];

  return a4;
}

+ (void)baseDirectoryURLInDomain:createIfNeeded:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)baseDirectoryURLInDomain:createIfNeeded:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v0, v1, "Unable to create root directory at %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)dataVaultDirectoryURLInDomain:createIfNeeded:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)dataVaultDirectoryURLInDomain:createIfNeeded:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1(&dword_1E1168000, v0, v1, "Unable to create Data Vault at %{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)homeDirectoryURL
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)darwinUserDirectoryURL
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)darwinCacheDirectoryURL
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)darwinTemporaryDirectoryURL
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)fixFilePermissionsForURL:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fixFilePermissionsForURL:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)fixFilePermissionsForURL:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_applicationSupportChildDirectoryURLInDomain:createIfNeeded:childName:descriptor:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_dataVaultChildDirectoryURLInDomain:createIfNeeded:childName:descriptor:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)URLWithResolvedSymlinksFromURL:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

@end