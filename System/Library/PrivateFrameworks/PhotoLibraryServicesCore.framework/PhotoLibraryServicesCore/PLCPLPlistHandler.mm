@interface PLCPLPlistHandler
+ (BOOL)CPLPlistFileExistsWithPathManager:(id)a3;
+ (id)_cplPlistURLWithPathManager:(id)a3 verb:(id)a4;
+ (id)_readCPLPlistWithPathManager:(id)a3;
+ (id)readCPLPlistObjectWithKey:(id)a3 pathManager:(id)a4;
+ (void)deleteCPLPlistWithPathManager:(id)a3;
+ (void)initialize;
+ (void)saveCPLPlistObject:(id)a3 forKey:(id)a4 pathManager:(id)a5;
@end

@implementation PLCPLPlistHandler

+ (void)deleteCPLPlistWithPathManager:(id)a3
{
  v3 = [a1 _cplPlistURLWithPathManager:a3 verb:@"deleting"];
  v4 = v3;
  if (v3)
  {
    v5 = cplPlistQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PLCPLPlistHandler_deleteCPLPlistWithPathManager___block_invoke;
    block[3] = &unk_1E79329F0;
    v7 = v3;
    dispatch_async(v5, block);
  }
}

void __51__PLCPLPlistHandler_deleteCPLPlistWithPathManager___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v9];
  v5 = v9;
  v6 = v5;
  if ((v4 & 1) == 0 && (PLIsErrorFileNotFound(v5) & 1) == 0)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1AA9BD000, v7, OS_LOG_TYPE_ERROR, "Error trying to remove mobileCPL.plist at path %@: %@", buf, 0x16u);
    }
  }
}

+ (void)saveCPLPlistObject:(id)a3 forKey:(id)a4 pathManager:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a1 _cplPlistURLWithPathManager:a5 verb:@"writing"];
  v11 = v10;
  if (v10)
  {
    v12 = cplPlistQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PLCPLPlistHandler_saveCPLPlistObject_forKey_pathManager___block_invoke;
    block[3] = &unk_1E7930348;
    v14 = v10;
    v15 = v8;
    v16 = v9;
    dispatch_async(v12, block);
  }
}

void __59__PLCPLPlistHandler_saveCPLPlistObject_forKey_pathManager___block_invoke(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v22 = 0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v2 error:&v22];
  v4 = v22;
  v5 = [v3 mutableCopy];

  if (v5)
  {
    goto LABEL_6;
  }

  v6 = PLIsErrorFileNotFound(v4);
  v7 = PLBackendGetLog();
  v5 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      *buf = 136446466;
      v24 = "+[PLCPLPlistHandler saveCPLPlistObject:forKey:pathManager:]_block_invoke";
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Could not read mobileCPL.plist at path %@: File doesn't exist", buf, 0x16u);
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
LABEL_6:
    v9 = a1[5];
    if (v9)
    {
      [v5 setObject:v9 forKey:a1[6]];
    }

    else
    {
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = a1[6];
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEBUG, "Object is nil, deleting key %@ from mobileCPL.plist", buf, 0xCu);
      }

      [v5 removeObjectForKey:a1[6]];
    }

    v21 = 0;
    v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v21];
    v13 = v21;

    if (v12)
    {
      v14 = a1[4];
      v20 = v13;
      v15 = [v12 writeToURL:v14 options:1073741825 error:&v20];
      v4 = v20;

      if (v15)
      {
LABEL_19:

        goto LABEL_20;
      }

      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = a1[4];
        *buf = 138412802;
        v24 = v5;
        v25 = 2112;
        v26 = v17;
        v27 = 2112;
        v28 = v4;
        _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "Error saving mobileCPL.plist: %@ at path %@: %@", buf, 0x20u);
      }

      v13 = v4;
    }

    else
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = a1[4];
        *buf = 138412802;
        v24 = v5;
        v25 = 2112;
        v26 = v18;
        v27 = 2112;
        v28 = v13;
        _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "Error trying to serialize data: %@ to write to mobileCPL.plist at path %@: %@", buf, 0x20u);
      }
    }

    v4 = v13;
    goto LABEL_19;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v19 = a1[4];
    *buf = 136446722;
    v24 = "+[PLCPLPlistHandler saveCPLPlistObject:forKey:pathManager:]_block_invoke";
    v25 = 2112;
    v26 = v19;
    v27 = 2112;
    v28 = v4;
    _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_ERROR, "%{public}s: Error reading mobileCPL.plist at path %@: %@", buf, 0x20u);
  }

LABEL_20:
}

+ (id)readCPLPlistObjectWithKey:(id)a3 pathManager:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _readCPLPlistWithPathManager:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:v6];
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1AA9BD000, v10, OS_LOG_TYPE_DEBUG, "Reading %@ from mobileCPL.plist: %@", &v12, 0x16u);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_readCPLPlistWithPathManager:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _cplPlistURLWithPathManager:v4 verb:@"reading"];
  v6 = v5;
  if (!v5)
  {
    v17 = 0;
    goto LABEL_12;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__3390;
  v34 = __Block_byref_object_dispose__3391;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3390;
  v28 = __Block_byref_object_dispose__3391;
  v29 = 0;
  v7 = cplPlistQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PLCPLPlistHandler__readCPLPlistWithPathManager___block_invoke;
  block[3] = &unk_1E7930210;
  v22 = &v24;
  v8 = v5;
  v21 = v8;
  v23 = &v30;
  dispatch_sync(v7, block);
  v9 = v25[5];
  if (!v9)
  {
    v10 = PLIsErrorFileNotFound(v31[5]);
    v11 = PLBackendGetLog();
    v12 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v37 = "+[PLCPLPlistHandler _readCPLPlistWithPathManager:]";
        v38 = 2112;
        v39 = v8;
        v13 = "%{public}s: Could not read mobileCPL.plist at path %@: File doesn't exist";
        v14 = v12;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 22;
LABEL_9:
        _os_log_impl(&dword_1AA9BD000, v14, v15, v13, buf, v16);
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v18 = v31[5];
      *buf = 136446722;
      v37 = "+[PLCPLPlistHandler _readCPLPlistWithPathManager:]";
      v38 = 2112;
      v39 = v8;
      v40 = 2112;
      v41 = v18;
      v13 = "%{public}s: Error reading mobileCPL.plist at path %@: %@";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 32;
      goto LABEL_9;
    }

    v9 = v25[5];
  }

  v17 = v9;

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

LABEL_12:

  return v17;
}

void __50__PLCPLPlistHandler__readCPLPlistWithPathManager___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (BOOL)CPLPlistFileExistsWithPathManager:(id)a3
{
  v3 = [a1 _cplPlistURLWithPathManager:a3 verb:@"checking existence of"];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v3 path];
    v6 = [v4 fileExistsAtPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_cplPlistURLWithPathManager:(id)a3 verb:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v7 = [v5 photoDirectoryWithType:14 leafType:3 createIfNeeded:1 error:&v13];
  v8 = v13;
  v9 = [v7 stringByAppendingPathComponent:@"mobileCPL.plist"];
  if (v9)
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9 isDirectory:0];
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543874;
      v15 = v6;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_1AA9BD000, v11, OS_LOG_TYPE_FAULT, "Error %{public}@ mobileCPL.plist, path is nil, pathManager: %@, error: %@", buf, 0x20u);
    }

    v10 = 0;
  }

  return v10;
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_3404);
  }
}

void __31__PLCPLPlistHandler_initialize__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v0 = dispatch_queue_create("com.apple.assetsd.PLCPLPlistHandler.cplPlistQueue", v2);
  v1 = cplPlistQueue;
  cplPlistQueue = v0;
}

@end