@interface UAFExpiredAssets
+ (BOOL)assetsExpired:(id)expired error:(id *)error;
+ (BOOL)markAssetsExpired:(id)expired error:(id *)error;
+ (id)expiredTokens:(id *)tokens;
+ (id)loadToken:(id)token error:(id *)error;
+ (id)tokenDir:(id *)dir;
+ (id)tokenFilename:(id)filename;
+ (void)removeToken:(id)token;
@end

@implementation UAFExpiredAssets

+ (id)tokenDir:(id *)dir
{
  v4 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v6 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v12];
  v7 = v12;

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [v6 URLByAppendingPathComponent:@"UnifiedAssetFramework" isDirectory:1];

    v6 = [v9 URLByAppendingPathComponent:@"ExpiredAssets" isDirectory:1];
  }

  objc_autoreleasePoolPop(v4);
  if (dir)
  {
    v10 = v7;
    *dir = v7;
  }

  return v6;
}

+ (id)tokenFilename:(id)filename
{
  v3 = MEMORY[0x1E696AEC0];
  assetSetName = [filename assetSetName];
  v5 = [v3 stringWithFormat:@"%@.%@", assetSetName, @"uaftoken"];

  return v5;
}

+ (BOOL)markAssetsExpired:(id)expired error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  expiredCopy = expired;
  v6 = [UAFExpiredAssets tokenDir:error];
  if (v6 && !*error)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:error];

    if ((v13 & 1) == 0)
    {
      v7 = UAFGetLogCategory(&UAFLogContextClient);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v21 = *error;
      v29 = 136315906;
      v30 = "+[UAFExpiredAssets markAssetsExpired:error:]";
      v31 = 2114;
      v32 = v6;
      v33 = 2114;
      v34 = expiredCopy;
      v35 = 2114;
      v36 = v21;
      v22 = "%s Failed to create expired assets token dir %{public}@ for token %{public}@: %{public}@";
      v23 = v7;
      v24 = 42;
LABEL_13:
      _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, v22, &v29, v24);
      goto LABEL_4;
    }

    v14 = [UAFExpiredAssets tokenFilename:expiredCopy];
    v9 = [v6 URLByAppendingPathComponent:v14 isDirectory:0];

    v15 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:expiredCopy requiringSecureCoding:1 error:error];
    v7 = v15;
    if (*error)
    {
      v16 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *error;
        v29 = 136315650;
        v30 = "+[UAFExpiredAssets markAssetsExpired:error:]";
        v31 = 2114;
        v32 = expiredCopy;
        v33 = 2114;
        v34 = v17;
        v18 = "%s Failed to archive expired assets token %{public}@: %{public}@";
        v19 = v16;
        v20 = 32;
LABEL_20:
        _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, v18, &v29, v20);
      }
    }

    else
    {
      v26 = [v15 writeToURL:v9 options:0 error:error];
      v27 = UAFGetLogCategory(&UAFLogContextClient);
      v16 = v27;
      if (v26)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = 136315650;
          v30 = "+[UAFExpiredAssets markAssetsExpired:error:]";
          v31 = 2114;
          v32 = v9;
          v33 = 2114;
          v34 = expiredCopy;
          _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Wrote expired assets token %{public}@ to %{public}@", &v29, 0x20u);
        }

        v8 = 1;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *error;
        v29 = 136315906;
        v30 = "+[UAFExpiredAssets markAssetsExpired:error:]";
        v31 = 2114;
        v32 = v9;
        v33 = 2114;
        v34 = expiredCopy;
        v35 = 2114;
        v36 = v28;
        v18 = "%s Failed to write expired assets token %{public}@ to %{public}@: %{public}@";
        v19 = v16;
        v20 = 42;
        goto LABEL_20;
      }
    }

    v8 = 0;
LABEL_22:

    goto LABEL_5;
  }

  v7 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v25 = *error;
    v29 = 136315650;
    v30 = "+[UAFExpiredAssets markAssetsExpired:error:]";
    v31 = 2114;
    v32 = expiredCopy;
    v33 = 2114;
    v34 = v25;
    v22 = "%s Failed to get expired assets token dir for %{public}@: %{public}@";
    v23 = v7;
    v24 = 32;
    goto LABEL_13;
  }

LABEL_4:
  v8 = 0;
  v9 = v6;
LABEL_5:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)removeToken:(id)token
{
  v16 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = 0;
  v5 = [defaultManager removeItemAtURL:tokenCopy error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v11 = "+[UAFExpiredAssets removeToken:]";
      v12 = 2114;
      v13 = tokenCopy;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to remove token at %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)loadToken:(id)token error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  v6 = objc_autoreleasePoolPush();
  v20 = 0;
  v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:tokenCopy options:0 error:&v20];
  v8 = v20;
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "+[UAFExpiredAssets loadToken:error:]";
      v23 = 2114;
      v24 = tokenCopy;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to read expired assets token from %{public}@: %{public}@", buf, 0x20u);
    }

LABEL_14:

    v11 = 0;
    v15 = v10;
    goto LABEL_16;
  }

  v19 = 0;
  v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v19];
  v12 = v19;
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v10 = v12;
    v14 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "+[UAFExpiredAssets loadToken:error:]";
      v23 = 2114;
      v24 = tokenCopy;
      v25 = 2114;
      v26 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Failed to unarchive expired assets token from %{public}@: %{public}@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v15 = 0;
LABEL_16:
  objc_autoreleasePoolPop(v6);
  if (error)
  {
    v16 = v15;
    *error = v15;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (BOOL)assetsExpired:(id)expired error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  expiredCopy = expired;
  v6 = [UAFExpiredAssets tokenDir:error];
  if (v6 && !*error)
  {
    v12 = [UAFExpiredAssets tokenFilename:expiredCopy];
    v9 = [v6 URLByAppendingPathComponent:v12 isDirectory:0];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v9 path];
    v15 = [defaultManager fileExistsAtPath:path];

    if (!v15)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v7 = [UAFExpiredAssets loadToken:v9 error:error];
    if (v7 && !*error)
    {
      v16 = [expiredCopy hasIdenticalAssets:v7 includeBootUUID:0];
      v17 = UAFGetLogCategory(&UAFLogContextClient);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v18)
        {
          v19 = *error;
          v22 = 136315906;
          v23 = "+[UAFExpiredAssets assetsExpired:error:]";
          v24 = 2114;
          v25 = v9;
          v26 = 2114;
          v27 = expiredCopy;
          v28 = 2114;
          v29 = v19;
          _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Expired assets token from %{public}@ does match %{public}@: %{public}@", &v22, 0x2Au);
        }

        v8 = 1;
        goto LABEL_6;
      }

      if (v18)
      {
        v21 = *error;
        v22 = 136315906;
        v23 = "+[UAFExpiredAssets assetsExpired:error:]";
        v24 = 2114;
        v25 = v9;
        v26 = 2114;
        v27 = expiredCopy;
        v28 = 2114;
        v29 = v21;
        _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Expired assets token from %{public}@ does not match %{public}@: %{public}@", &v22, 0x2Au);
      }
    }

    [UAFExpiredAssets removeToken:v9];
    v8 = 0;
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = *error;
      v22 = 136315650;
      v23 = "+[UAFExpiredAssets assetsExpired:error:]";
      v24 = 2114;
      v25 = expiredCopy;
      v26 = 2114;
      v27 = v20;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get expired assets token dir for %{public}@: %{public}@", &v22, 0x20u);
    }

    v8 = 0;
    v9 = v6;
  }

LABEL_6:

LABEL_7:
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (id)expiredTokens:(id *)tokens
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = [UAFExpiredAssets tokenDir:?];
  if (v4 && !*tokens)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v28 = *MEMORY[0x1E695DBB8];
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v22 = v4;
    v9 = [defaultManager enumeratorAtURL:v4 includingPropertiesForKeys:v8 options:1 errorHandler:0];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v9;
    v10 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          pathExtension = [v15 pathExtension];
          v17 = [pathExtension isEqualToString:@"uaftoken"];

          if (v17)
          {
            v18 = [UAFExpiredAssets loadToken:v15 error:tokens];
            if (v18 && !*tokens)
            {
              if (!v12)
              {
                v12 = objc_opt_new();
              }

              [v12 addObject:v18];
            }
          }
        }

        v11 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v6 = v12;
    v4 = v22;
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v21 = *tokens;
      *buf = 136315394;
      v30 = "+[UAFExpiredAssets expiredTokens:]";
      v31 = 2114;
      v32 = v21;
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s Failed to get expired assets token dir: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v6;
}

@end