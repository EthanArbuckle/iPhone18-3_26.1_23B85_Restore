@interface UAFAutoAssetInstance
+ (BOOL)clear:(id)a3 path:(id)a4;
+ (BOOL)decomposeSaveFileURL:(id)a3 assetSetName:(id *)a4 atomicInstance:(id *)a5;
+ (id)instanceDirURL;
+ (id)saveFileURL:(id)a3;
@end

@implementation UAFAutoAssetInstance

+ (id)instanceDirURL
{
  v2 = +[UAFCommonUtilities getDefaultStoragePath];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2 isDirectory:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)saveFileURL:(id)a3
{
  v3 = a3;
  v4 = +[UAFAutoAssetInstance instanceDirURL];

  if (v4)
  {
    v5 = +[UAFAutoAssetInstance instanceDirURL];
    v6 = [v5 URLByAppendingPathComponent:v3 isDirectory:0];

    v4 = [v6 URLByAppendingPathExtension:@"instance"];
  }

  return v4;
}

+ (BOOL)decomposeSaveFileURL:(id)a3 assetSetName:(id *)a4 atomicInstance:(id *)a5
{
  v7 = a3;
  v8 = v7;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = [v7 pathExtension];
  v10 = [v9 isEqualToString:@"instance"];

  if (v10)
  {
    v11 = [v8 lastPathComponent];
    v12 = [v11 stringByDeletingPathExtension];

    v13 = [v12 rangeOfString:@"@" options:4];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0;
      if (!a4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = v13;
      v15 = [v12 substringFromIndex:v13 + v14];
      v17 = [v12 substringToIndex:v16];

      v12 = v17;
      if (!a4)
      {
LABEL_11:
        if (a5)
        {
          v19 = v15;
          *a5 = v15;
        }

        goto LABEL_14;
      }
    }

    v18 = v12;
    *a4 = v12;
    goto LABEL_11;
  }

LABEL_14:

  return v10;
}

+ (BOOL)clear:(id)a3 path:(id)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    [MEMORY[0x1E695DFF8] URLWithString:v6];
  }

  else
  {
    +[UAFAutoAssetInstance instanceDirURL];
  }
  v7 = ;
  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v47[0] = *MEMORY[0x1E695DBB8];
    v9 = 1;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];
    v11 = [v8 enumeratorAtURL:v7 includingPropertiesForKeys:v10 options:1 errorHandler:0];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v28 = v7;
      v29 = v6;
      v14 = 0;
      v15 = *v37;
      v30 = v5;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v36 + 1) + 8 * i);
          v34 = 0;
          v35 = 0;
          v18 = [UAFAutoAssetInstance decomposeSaveFileURL:v17 assetSetName:&v35 atomicInstance:&v34, v28];
          v19 = v35;
          v20 = v34;
          if (v18 && (!v5 || [v19 isEqualToString:v5]))
          {
            v32 = v20;
            v21 = [MEMORY[0x1E696AC08] defaultManager];
            v33 = v14;
            v22 = [v21 removeItemAtURL:v17 error:&v33];
            v23 = v33;

            v24 = UAFGetLogCategory(&UAFLogContextClient);
            v25 = v24;
            if ((v22 & 1) == 0)
            {
              v6 = v29;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v41 = "+[UAFAutoAssetInstance clear:path:]";
                v42 = 2112;
                v43 = v17;
                v44 = 2114;
                v45 = v23;
                _os_log_error_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_ERROR, "%s Failed to remove %@: %{public}@", buf, 0x20u);
              }

              v9 = 0;
              v5 = v30;
              goto LABEL_24;
            }

            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v41 = "+[UAFAutoAssetInstance clear:path:]";
              v42 = 2112;
              v43 = v17;
              _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s Removed %@", buf, 0x16u);
            }

            v14 = v23;
            v5 = v30;
            v20 = v32;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v9 = 1;
      v23 = v14;
      v6 = v29;
LABEL_24:
      v7 = v28;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
    v9 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

@end