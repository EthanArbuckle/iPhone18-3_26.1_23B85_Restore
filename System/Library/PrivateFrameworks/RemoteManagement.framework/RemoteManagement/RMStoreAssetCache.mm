@interface RMStoreAssetCache
+ (BOOL)cacheAssetWithIdentifier:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 data:(id)a6 error:(id *)a7;
+ (BOOL)cacheAssetWithIdentifier:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 fileURL:(id)a6 error:(id *)a7;
+ (BOOL)removeAllCachedAssetsForStoreIdentifier:(id)a3 error:(id *)a4;
+ (BOOL)removeCachedAsset:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 error:(id *)a6;
+ (id)cachedAssetDataWithIdentifier:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 error:(id *)a6;
+ (id)cachedAssetFileWithIdentifier:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 error:(id *)a6;
@end

@implementation RMStoreAssetCache

+ (BOOL)cacheAssetWithIdentifier:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 data:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v26 = 0;
  v13 = [RMStoreAssetCache _cacheFileForAssetWithIdentifier:v11 serverToken:a4 storeIdentifier:a5 createIfNeeded:1 error:&v26];
  v14 = v26;
  v15 = v14;
  if (v13)
  {
    v25 = v14;
    v16 = [v12 writeToURL:v13 options:0 error:&v25];
    v17 = v25;

    v18 = +[RMLog storeAssetCache];
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10006DA64();
      }

      v20 = 1;
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10006D9FC();
      }

      v20 = 0;
      if (a7 && v17)
      {
        v23 = v17;
        v20 = 0;
        *a7 = v17;
      }
    }
  }

  else
  {
    v21 = +[RMLog storeAssetCache];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10006DACC();
    }

    v20 = 0;
    if (a7 && v15)
    {
      v22 = v15;
      v20 = 0;
      *a7 = v15;
    }

    v17 = v15;
  }

  return v20;
}

+ (BOOL)cacheAssetWithIdentifier:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 fileURL:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v25 = 0;
  v13 = [RMStoreAssetCache _cacheFileForAssetWithIdentifier:v11 serverToken:a4 storeIdentifier:a5 createIfNeeded:1 error:&v25];
  v14 = v25;
  if (v13)
  {
    v15 = +[NSFileManager defaultManager];
    v24 = v14;
    v16 = [v15 copyItemAtURL:v12 toURL:v13 error:&v24];
    v17 = v24;

    v18 = +[RMLog storeAssetCache];
    v19 = v18;
    if (v16)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10006DB9C();
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10006DB34();
      }

      if (a7 && v17)
      {
        v22 = v17;
        *a7 = v17;
      }
    }
  }

  else
  {
    v20 = +[RMLog storeAssetCache];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10006DC04();
    }

    v16 = 0;
    if (a7 && v14)
    {
      v21 = v14;
      v16 = 0;
      *a7 = v14;
    }

    v17 = v14;
  }

  return v16;
}

+ (id)cachedAssetDataWithIdentifier:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v23 = 0;
  v10 = [RMStoreAssetCache _cacheFileForAssetWithIdentifier:v9 serverToken:a4 storeIdentifier:a5 createIfNeeded:0 error:&v23];
  v11 = v23;
  v12 = +[NSFileManager defaultManager];
  if (v10 && ([v10 path], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "fileExistsAtPath:", v13), v13, (v14 & 1) != 0))
  {
    v22 = v11;
    v15 = [NSData dataWithContentsOfURL:v10 options:0 error:&v22];
    v16 = v22;

    v17 = +[RMLog storeAssetCache];
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10006DC6C();
      }

      v15 = v15;
      v19 = v15;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10006DCD4();
      }

      if (a6 && v16)
      {
        v21 = v16;
        *a6 = v16;
      }

      v19 = 0;
    }
  }

  else
  {
    v15 = +[RMLog storeAssetCache];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10006DD3C();
    }

    v19 = 0;
    v16 = v11;
  }

  return v19;
}

+ (id)cachedAssetFileWithIdentifier:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 error:(id *)a6
{
  v8 = a3;
  v18 = 0;
  v9 = [RMStoreAssetCache _cacheFileForAssetWithIdentifier:v8 serverToken:a4 storeIdentifier:a5 createIfNeeded:0 error:&v18];
  v10 = v18;
  v11 = +[NSFileManager defaultManager];
  if (v9 && ([v9 path], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "fileExistsAtPath:", v12), v12, (v13 & 1) != 0))
  {
    v14 = +[RMLog storeAssetCache];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10006DDA4();
    }

    v15 = v9;
  }

  else
  {
    v16 = +[RMLog storeAssetCache];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10006DE0C();
    }

    v15 = 0;
  }

  return v15;
}

+ (BOOL)removeCachedAsset:(id)a3 serverToken:(id)a4 storeIdentifier:(id)a5 error:(id *)a6
{
  v9 = a3;
  v24 = 0;
  v10 = [RMStoreAssetCache _cacheFileForAssetWithIdentifier:v9 serverToken:a4 storeIdentifier:a5 createIfNeeded:0 error:&v24];
  v11 = v24;
  v12 = +[NSFileManager defaultManager];
  if (v10 && ([v10 path], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "fileExistsAtPath:", v13), v13, (v14 & 1) != 0))
  {
    v23 = v11;
    v15 = [v12 removeItemAtURL:v10 error:&v23];
    v16 = v23;

    v17 = +[RMLog storeAssetCache];
    v18 = v17;
    if (v15)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_10006DEDC();
      }

      v19 = 1;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10006DE74();
      }

      v19 = 0;
      if (a6 && v16)
      {
        v21 = v16;
        v19 = 0;
        *a6 = v16;
      }
    }

    v11 = v16;
  }

  else
  {
    v20 = +[RMLog storeAssetCache];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_10006DF44();
    }

    v19 = 1;
  }

  return v19;
}

+ (BOOL)removeAllCachedAssetsForStoreIdentifier:(id)a3 error:(id *)a4
{
  v5 = a3;
  v20 = 0;
  v6 = [RMStoreAssetCache _cacheDirectoryForStoreWithIdentifier:v5 createIfNeeded:0 error:&v20];
  v7 = v20;
  v8 = +[NSFileManager defaultManager];
  if (v6 && ([v6 path], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "fileExistsAtPath:", v9), v9, (v10 & 1) != 0))
  {
    v19 = v7;
    v11 = [v8 removeItemAtURL:v6 error:&v19];
    v12 = v19;

    v13 = +[RMLog storeAssetCache];
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_10006E014();
      }

      v15 = 1;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10006DFAC();
      }

      v15 = 0;
      if (a4 && v12)
      {
        v17 = v12;
        v15 = 0;
        *a4 = v12;
      }
    }

    v7 = v12;
  }

  else
  {
    v16 = +[RMLog storeAssetCache];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10006E07C();
    }

    v15 = 1;
  }

  return v15;
}

@end