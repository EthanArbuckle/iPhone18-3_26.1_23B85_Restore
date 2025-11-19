@interface UAFAutoAssetHistory
+ (BOOL)_createHistoryDirIfNeeded:(id)a3 error:(id *)a4;
+ (BOOL)_persistAssetSetInfo:(id)a3 assetSetIdentifier:(id)a4 isEliminating:(BOOL)a5 jsonData:(id)a6 error:(id *)a7;
+ (BOOL)_writeAssetInfoToFile:(id)a3 data:(id)a4 filePath:(id)a5 error:(id *)a6;
+ (id)_getAutoAssetSetInfo:(id)a3 entries:(id)a4 includeAssetVersion:(BOOL)a5;
+ (id)_getPersistAssetInfoPath;
+ (id)getPersistedAssetInfo;
+ (void)persistAssetSetInfoLocked:(id)a3 atomicEntries:(id)a4 autoAssetSet:(id)a5 isEliminating:(BOOL)a6 reason:(id)a7;
@end

@implementation UAFAutoAssetHistory

+ (id)_getAutoAssetSetInfo:(id)a3 entries:(id)a4 includeAssetVersion:(BOOL)a5
{
  v5 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = 0x1E695D000uLL;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = [v7 assetSetIdentifier];
  v31 = v10;
  v32 = v7;
  if (v11)
  {
    v12 = [v7 assetSetIdentifier];
    [v10 setObject:v12 forKeyedSubscript:@"assetSetIdentifier"];
  }

  else
  {
    [v10 setObject:&stru_1F3B6B510 forKeyedSubscript:@"assetSetIdentifier"];
  }

  v13 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v8;
  v36 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v36)
  {
    v35 = *v38;
    v33 = v5;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [*(v9 + 3984) dictionary];
        v17 = [v15 assetSelector];
        v18 = [v17 assetSpecifier];

        if (v18)
        {
          v19 = [v15 assetSelector];
          v20 = [v19 assetSpecifier];

          if (!v5)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v20 = &stru_1F3B6B510;
          if (!v5)
          {
LABEL_14:
            [v16 setObject:v20 forKeyedSubscript:@"assetSpecifier"];
            goto LABEL_20;
          }
        }

        v21 = [*(v9 + 3984) dictionary];
        [v21 setObject:v20 forKeyedSubscript:@"assetSpecifier"];
        v22 = [v15 assetSelector];
        v23 = [v22 assetVersion];
        if (v23)
        {
          v24 = [v15 assetSelector];
          [v24 assetVersion];
          v26 = v25 = v13;
          [v21 setObject:v26 forKeyedSubscript:@"assetVersion"];

          v13 = v25;
          v5 = v33;
          v9 = 0x1E695D000;
        }

        else
        {
          [v21 setObject:&stru_1F3B6B510 forKeyedSubscript:@"assetVersion"];
        }

        if (v21)
        {
          v27 = v21;
        }

        else
        {
          v27 = &unk_1F3B732E8;
        }

        [v16 setObject:v27 forKeyedSubscript:@"assetSelector"];

LABEL_20:
        if ([v15 assetLockedInhibitsRemoval])
        {
          v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "assetLockedInhibitsRemoval")}];
          [v16 setObject:v28 forKeyedSubscript:@"assetLockedInhibitsRemoval"];
        }

        [v13 addObject:v16];
      }

      v36 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v36);
  }

  if ([v13 count])
  {
    [v31 setObject:v13 forKeyedSubscript:@"autoAssetEntries"];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)_getPersistAssetInfoPath
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[UAFCommonUtilities getDefaultStoragePath];
  v8[0] = v3;
  v8[1] = @"history";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v5 = [v2 pathWithComponents:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)getPersistedAssetInfo
{
  v42[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = +[UAFAutoAssetHistory _getPersistAssetInfoPath];
  if ([v2 fileExistsAtPath:v4])
  {
    v25 = v4;
    [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v37 = 0;
    v24 = v26 = v2;
    v5 = [v2 contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
    v6 = v37;
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@.%@", @"cur", @"json"];
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@.%@", @"prev", @"json"];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v30 = *v34;
      v9 = v3;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = [v11 lastPathComponent];
          if (v12)
          {
            v13 = v12;
            if (([(__CFString *)v12 hasSuffix:v29]& 1) != 0)
            {
              v14 = @"cur";
            }

            else if ([(__CFString *)v13 hasSuffix:v27])
            {
              v14 = @"prev";
            }

            else
            {
              v14 = @"unknown";
            }
          }

          else
          {
            v14 = @"unknown";
            v13 = @"unknown";
          }

          v32 = v6;
          v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11 options:2 error:&v32];
          v16 = v32;

          if (v16 || !v15)
          {
            v19 = @"unknown error";
            if (v16)
            {
              v19 = v16;
            }

            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to get data from persisted info URL '%@', err = '%@'", v11, v19];
            v6 = v16;
          }

          else
          {
            v31 = 0;
            v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:&v31];
            v6 = v31;
            if (v6)
            {
              v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to parse data from persisted info URL '%@', err = '%@'", v11, v6];

              v17 = v18;
            }
          }

          v3 = v9;
          v38[0] = @"assetSetInfo";
          v38[1] = @"filename";
          v39[0] = v17;
          v39[1] = v13;
          v38[2] = @"history";
          v39[2] = v14;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
          [v9 addObject:v20];
        }

        v8 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v8);
    }

    v4 = v25;
    v2 = v26;
    v21 = v24;
  }

  else
  {
    v41 = @"error";
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no info available, topdir '%@' does not exist", v4];
    v42[0] = v6;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [v3 addObject:v21];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)_createHistoryDirIfNeeded:(id)a3 error:(id *)a4
{
  v38[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v24 = 0;
  if (![v6 fileExistsAtPath:v5 isDirectory:&v24])
  {
    v29 = *MEMORY[0x1E696A370];
    v8 = [MEMORY[0x1E696AD98] numberWithShort:448];
    v30 = v8;
    v7 = 1;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v10 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v9 error:a4];

    if (v10)
    {
      goto LABEL_22;
    }

    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      v13 = *MEMORY[0x1E696A578];
      if (*a4)
      {
        v27[0] = *MEMORY[0x1E696A578];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create UAF history directory path at '%@'", v5];
        v27[1] = *MEMORY[0x1E696AA08];
        v28[0] = v14;
        v28[1] = *a4;
        v15 = MEMORY[0x1E695DF20];
        v16 = v28;
        v17 = v27;
LABEL_11:
        v19 = 2;
LABEL_20:
        v21 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v19];
        *a4 = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v12 userInfo:v21];

        goto LABEL_21;
      }

      v25 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create UAF history directory path at '%@'", v5];
      v26 = v14;
      v15 = MEMORY[0x1E695DF20];
      v16 = &v26;
      v17 = &v25;
LABEL_19:
      v19 = 1;
      goto LABEL_20;
    }

    v14 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "+[UAFAutoAssetHistory _createHistoryDirIfNeeded:error:]";
      v33 = 2112;
      v34 = v5;
      v20 = "%s failed to create UAF history directory path at '%@'";
LABEL_16:
      _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    }

LABEL_21:

    v7 = 0;
    goto LABEL_22;
  }

  if ((v24 & 1) == 0)
  {
    if (a4)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = UAFErrorCodeAssetHistoryPathExistsIsNotDir;
      v18 = *MEMORY[0x1E696A578];
      if (*a4)
      {
        v37[0] = *MEMORY[0x1E696A578];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF history directory path exists but is not a directory, not preserving info, path is '%@'", v5];
        v38[0] = v14;
        v37[1] = *MEMORY[0x1E696AA08];
        v38[1] = *a4;
        v15 = MEMORY[0x1E695DF20];
        v16 = v38;
        v17 = v37;
        goto LABEL_11;
      }

      v35 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF history directory path exists but is not a directory, not preserving info, path is '%@'", v5];
      v36 = v14;
      v15 = MEMORY[0x1E695DF20];
      v16 = &v36;
      v17 = &v35;
      goto LABEL_19;
    }

    v14 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "+[UAFAutoAssetHistory _createHistoryDirIfNeeded:error:]";
      v33 = 2112;
      v34 = v5;
      v20 = "%s UAF history directory path exists but is not a directory, not preserving info, path is '%@'";
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (BOOL)_writeAssetInfoToFile:(id)a3 data:(id)a4 filePath:(id)a5 error:(id *)a6
{
  v48[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [UAFCommonUtilities openFD:v11 oflags:1537 mode:420 error:a6];
  if ((v12 & 0x80000000) != 0)
  {
    if (a6)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      v25 = *MEMORY[0x1E696A578];
      if (*a6)
      {
        v47[0] = *MEMORY[0x1E696A578];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", v9, v11];
        v47[1] = *MEMORY[0x1E696AA08];
        v26 = *a6;
        v48[0] = v14;
        v48[1] = v26;
        v27 = MEMORY[0x1E695DF20];
        v28 = v48;
        v29 = v47;
        v30 = 2;
      }

      else
      {
        v45 = *MEMORY[0x1E696A578];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", v9, v11];
        v46 = v14;
        v27 = MEMORY[0x1E695DF20];
        v28 = &v46;
        v29 = &v45;
        v30 = 1;
      }

      v31 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v30];
      *a6 = [v23 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v24 userInfo:v31];
    }

    else
    {
      v14 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v40 = "+[UAFAutoAssetHistory _writeAssetInfoToFile:data:filePath:error:]";
        v41 = 2112;
        v42 = v9;
        v43 = 2112;
        v44 = v11;
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", buf, 0x20u);
      }
    }

    goto LABEL_18;
  }

  v13 = 1;
  v14 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v12 closeOnDealloc:1];
  if (([v14 writeData:v10 error:a6]& 1) == 0)
  {
    if (a6)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      v17 = *MEMORY[0x1E696A578];
      if (*a6)
      {
        v37[0] = *MEMORY[0x1E696A578];
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", v9, v11];
        v37[1] = *MEMORY[0x1E696AA08];
        v38[0] = v18;
        v38[1] = *a6;
        v19 = MEMORY[0x1E695DF20];
        v20 = v38;
        v21 = v37;
        v22 = 2;
      }

      else
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", v9, v11, *MEMORY[0x1E696A578]];
        v36 = v18;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v36;
        v21 = &v35;
        v22 = 1;
      }

      v32 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
      *a6 = [v15 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v16 userInfo:v32];
    }

    else
    {
      v18 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v40 = "+[UAFAutoAssetHistory _writeAssetInfoToFile:data:filePath:error:]";
        v41 = 2112;
        v42 = v9;
        v43 = 2112;
        v44 = v11;
        _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", buf, 0x20u);
      }
    }

LABEL_18:
    v13 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)_persistAssetSetInfo:(id)a3 assetSetIdentifier:(id)a4 isEliminating:(BOOL)a5 jsonData:(id)a6 error:(id *)a7
{
  v69[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v50 = a6;
  v13 = +[UAFAutoAssetManager getSerialQueue];
  dispatch_assert_queue_V2(v13);

  if ([@"configuration" isEqualToString:v11])
  {
    v49 = v11;
    v14 = @"uafConfiguredLog";
  }

  else
  {
    if (([@"locked" isEqualToString:v11] & 1) == 0)
    {
      if (a7)
      {
        v25 = MEMORY[0x1E696ABC0];
        v26 = UAFErrorCodeAssetHistoryUnknownType;
        v27 = *MEMORY[0x1E696A578];
        if (*a7)
        {
          v68[0] = *MEMORY[0x1E696A578];
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", v11];
          v68[1] = *MEMORY[0x1E696AA08];
          v69[0] = v28;
          v69[1] = *a7;
          v29 = MEMORY[0x1E695DF20];
          v30 = v69;
          v31 = v68;
          v32 = 2;
        }

        else
        {
          v66 = *MEMORY[0x1E696A578];
          v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", v11];
          v67 = v28;
          v29 = MEMORY[0x1E695DF20];
          v30 = &v67;
          v31 = &v66;
          v32 = 1;
        }

        v41 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
        *a7 = [v25 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v26 userInfo:v41];
      }

      else
      {
        v28 = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v57 = "+[UAFAutoAssetHistory _persistAssetSetInfo:assetSetIdentifier:isEliminating:jsonData:error:]";
          v58 = 2112;
          v59 = v11;
          _os_log_error_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_ERROR, "%s unknown infoType '%@'", buf, 0x16u);
        }
      }

      v18 = 0;
      v15 = 0;
      v21 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_29;
    }

    v49 = v11;
    v14 = @"uafLockedLog";
  }

  v15 = +[UAFAutoAssetHistory _getPersistAssetInfoPath];
  if (![UAFAutoAssetHistory _createHistoryDirIfNeeded:v15 error:a7])
  {
    v18 = 0;
    v21 = 0;
    v16 = 0;
    v17 = 0;
    v24 = 0;
    v11 = v49;
    goto LABEL_31;
  }

  v48 = v12;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@-%@", v15, v12, v14];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v16, @"cur", @"json"];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v16, @"prev", @"json"];
  v51 = 0;
  v19 = [UAFCommonUtilities rename:v17 toPath:v18 error:&v51];
  v20 = v51;
  v21 = v20;
  if (v19)
  {
    v22 = [v20 code];
    v23 = [v21 domain];
    if (v22 != 2 && [*MEMORY[0x1E696A798] isEqualToString:v23])
    {
      log = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v57 = "+[UAFAutoAssetHistory _persistAssetSetInfo:assetSetIdentifier:isEliminating:jsonData:error:]";
        v58 = 2114;
        v59 = v17;
        v60 = 2114;
        v61 = v18;
        v62 = 2114;
        v63 = v23;
        v64 = 2048;
        v65 = v22;
        _os_log_impl(&dword_1BCF2C000, log, OS_LOG_TYPE_DEFAULT, "%s failed to rename current persisted info file '%{public}@' to previous '%{public}@', domain = '%{public}@', code = %ld", buf, 0x34u);
      }
    }
  }

  if (!a5)
  {
    v33 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17 isDirectory:0];
    v12 = v48;
    if (v33)
    {
      v28 = v33;
      v24 = [UAFAutoAssetHistory _writeAssetInfoToFile:v48 data:v50 filePath:v17 error:a7];
      v11 = v49;
LABEL_30:

      goto LABEL_31;
    }

    if (a7)
    {
      loga = MEMORY[0x1E696ABC0];
      v34 = UAFErrorCodeAssetHistoryFailedToCreateObject;
      v35 = *MEMORY[0x1E696A578];
      v11 = v49;
      if (*a7)
      {
        v54[0] = *MEMORY[0x1E696A578];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", v49];
        v54[1] = *MEMORY[0x1E696AA08];
        v55[0] = v36;
        v55[1] = *a7;
        v37 = MEMORY[0x1E695DF20];
        v38 = v55;
        v39 = v54;
        v40 = 2;
      }

      else
      {
        v52 = *MEMORY[0x1E696A578];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", v49];
        v53 = v36;
        v37 = MEMORY[0x1E695DF20];
        v38 = &v53;
        v39 = &v52;
        v40 = 1;
      }

      v45 = [v37 dictionaryWithObjects:v38 forKeys:v39 count:v40];
      *a7 = [loga errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v34 userInfo:v45];

      v28 = 0;
      v24 = 0;
      v12 = v48;
      goto LABEL_30;
    }

    v44 = UAFGetLogCategory(&UAFLogContextMAConfig);
    v11 = v49;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v57 = "+[UAFAutoAssetHistory _persistAssetSetInfo:assetSetIdentifier:isEliminating:jsonData:error:]";
      v58 = 2112;
      v59 = v49;
      _os_log_error_impl(&dword_1BCF2C000, v44, OS_LOG_TYPE_ERROR, "%s unknown infoType '%@'", buf, 0x16u);
    }

    v28 = 0;
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  v24 = 1;
  v12 = v48;
  v11 = v49;
LABEL_31:

  v42 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (void)persistAssetSetInfoLocked:(id)a3 atomicEntries:(id)a4 autoAssetSet:(id)a5 isEliminating:(BOOL)a6 reason:(id)a7
{
  v8 = a6;
  v82[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v13 assetSetIdentifier];
  if (v8)
  {
    v51 = v8;
    v16 = [MEMORY[0x1E695DEF0] data];
    v52 = 0;
    v17 = 0;
    v55 = 0;
  }

  else
  {
    v55 = [MEMORY[0x1E695DF70] array];
    if (!v55)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v71 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
        v72 = 2114;
        v73 = v15;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to create array for atomic entries for persisting info about locked asset set '%{public}@', not persisting information", buf, 0x16u);
      }

      v52 = 0;
      v16 = 0;
      v17 = 0;
      v55 = 0;
      goto LABEL_53;
    }

    v21 = [MEMORY[0x1E695DF90] dictionary];
    if (!v21)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v71 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
        v72 = 2114;
        v73 = v15;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to create output dictionary for persisting info about locked asset set '%{public}@', not persisting information", buf, 0x16u);
      }

      v52 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_53;
    }

    v51 = 0;
    v47 = v14;
    if (v14)
    {
      v22 = v14;
    }

    else
    {
      v22 = @"<no reason provided>";
    }

    v81[0] = @"reason";
    v81[1] = @"timestamp";
    v82[0] = v22;
    v23 = v21;
    v24 = [MEMORY[0x1E695DF00] date];
    v25 = [UAFCommonUtilities getISO8601Timestamp:v24 withFractionalSeconds:1];
    v82[1] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
    [v23 setObject:v26 forKeyedSubscript:@"UAFHistoryMetadata"];

    v50 = v11;
    if (v11)
    {
      v27 = v11;
    }

    else
    {
      v27 = &stru_1F3B6B510;
    }

    [v23 setObject:v27 forKeyedSubscript:@"atomicInstance"];
    v28 = [v13 autoAssetEntries];
    v48 = v13;
    v29 = [UAFAutoAssetHistory _getAutoAssetSetInfo:v13 entries:v28 includeAssetVersion:1];
    v52 = v23;
    [v23 setObject:v29 forKeyedSubscript:@"autoAssetSet"];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v49 = v12;
    obj = v12;
    v56 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
    if (v56)
    {
      v54 = *v67;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v67 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v66 + 1) + 8 * i);
          v78[0] = @"fullAssetSelector";
          v76[0] = @"assetSpecifier";
          v32 = [v31 fullAssetSelector];
          v33 = [v32 assetSpecifier];
          if (v33)
          {
            v63 = [v31 fullAssetSelector];
            v59 = [v63 assetSpecifier];
            v34 = v59;
          }

          else
          {
            v34 = &stru_1F3B6B510;
          }

          v77[0] = v34;
          v76[1] = @"assetVersion";
          v35 = [v31 fullAssetSelector];
          v36 = [v35 assetVersion];
          if (v36)
          {
            v62 = [v31 fullAssetSelector];
            v58 = [v62 assetVersion];
            v37 = v58;
          }

          else
          {
            v37 = &stru_1F3B6B510;
          }

          v77[1] = v37;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
          v79[0] = v38;
          v78[1] = @"assetID";
          v39 = [v31 assetID];
          if (v39)
          {
            v61 = [v31 assetID];
            v40 = v61;
          }

          else
          {
            v40 = &stru_1F3B6B510;
          }

          v79[1] = v40;
          v78[2] = @"localContentURL";
          v41 = [v31 localContentURL];
          if (v41)
          {
            v60 = [v31 localContentURL];
            v57 = [v60 absoluteString];
            v42 = v57;
          }

          else
          {
            v42 = &stru_1F3B6B510;
          }

          v79[2] = v42;
          v78[3] = @"inhibitedFromEmergencyRemoval";
          v43 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v31, "inhibitedFromEmergencyRemoval")}];
          v79[3] = v43;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:4];

          if (v41)
          {
          }

          if (v39)
          {
          }

          if (v36)
          {
          }

          if (v33)
          {
          }

          [v55 addObject:v44];
        }

        v56 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v56);
    }

    [v52 setObject:v55 forKeyedSubscript:@"atomicEntries"];
    v65 = 0;
    v16 = [UAFCommonUtilities serializeDictToJSONData:v52 error:&v65];
    v17 = v65;
    if (!v16)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      v12 = v49;
      v11 = v50;
      v15 = v46;
      v14 = v47;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v71 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
        v72 = 2114;
        v73 = v46;
        v74 = 2114;
        v75 = v17;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s could not serialize output dictionary to json, not persisting info about locked asset set '%{public}@', error is '%{public}@'", buf, 0x20u);
      }

      v16 = 0;
      v13 = v48;
      goto LABEL_53;
    }

    v12 = v49;
    v11 = v50;
    v14 = v47;
    v13 = v48;
    v15 = v46;
  }

  v18 = v17;
  v64 = v17;
  v19 = [UAFAutoAssetHistory _persistAssetSetInfo:@"locked" assetSetIdentifier:v15 isEliminating:v51 jsonData:v16 error:&v64];
  v17 = v64;

  if (!v19 || v17)
  {
    v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v71 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
      v72 = 2114;
      v73 = v15;
      v74 = 2114;
      v75 = v17;
      _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to persist info for locked assetSetIdentifier '%{public}@', error is '%{public}@'", buf, 0x20u);
    }

LABEL_53:
  }

  v45 = *MEMORY[0x1E69E9840];
}

@end