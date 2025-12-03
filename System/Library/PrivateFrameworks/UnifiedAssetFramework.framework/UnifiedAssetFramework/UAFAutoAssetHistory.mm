@interface UAFAutoAssetHistory
+ (BOOL)_createHistoryDirIfNeeded:(id)needed error:(id *)error;
+ (BOOL)_persistAssetSetInfo:(id)info assetSetIdentifier:(id)identifier isEliminating:(BOOL)eliminating jsonData:(id)data error:(id *)error;
+ (BOOL)_writeAssetInfoToFile:(id)file data:(id)data filePath:(id)path error:(id *)error;
+ (id)_getAutoAssetSetInfo:(id)info entries:(id)entries includeAssetVersion:(BOOL)version;
+ (id)_getPersistAssetInfoPath;
+ (id)getPersistedAssetInfo;
+ (void)persistAssetSetInfoLocked:(id)locked atomicEntries:(id)entries autoAssetSet:(id)set isEliminating:(BOOL)eliminating reason:(id)reason;
@end

@implementation UAFAutoAssetHistory

+ (id)_getAutoAssetSetInfo:(id)info entries:(id)entries includeAssetVersion:(BOOL)version
{
  versionCopy = version;
  v42 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  entriesCopy = entries;
  v9 = 0x1E695D000uLL;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  assetSetIdentifier = [infoCopy assetSetIdentifier];
  v31 = dictionary;
  v32 = infoCopy;
  if (assetSetIdentifier)
  {
    assetSetIdentifier2 = [infoCopy assetSetIdentifier];
    [dictionary setObject:assetSetIdentifier2 forKeyedSubscript:@"assetSetIdentifier"];
  }

  else
  {
    [dictionary setObject:&stru_1F3B6B510 forKeyedSubscript:@"assetSetIdentifier"];
  }

  v13 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = entriesCopy;
  v36 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v36)
  {
    v35 = *v38;
    v33 = versionCopy;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v38 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        dictionary2 = [*(v9 + 3984) dictionary];
        assetSelector = [v15 assetSelector];
        assetSpecifier = [assetSelector assetSpecifier];

        if (assetSpecifier)
        {
          assetSelector2 = [v15 assetSelector];
          assetSpecifier2 = [assetSelector2 assetSpecifier];

          if (!versionCopy)
          {
            goto LABEL_14;
          }
        }

        else
        {
          assetSpecifier2 = &stru_1F3B6B510;
          if (!versionCopy)
          {
LABEL_14:
            [dictionary2 setObject:assetSpecifier2 forKeyedSubscript:@"assetSpecifier"];
            goto LABEL_20;
          }
        }

        dictionary3 = [*(v9 + 3984) dictionary];
        [dictionary3 setObject:assetSpecifier2 forKeyedSubscript:@"assetSpecifier"];
        assetSelector3 = [v15 assetSelector];
        assetVersion = [assetSelector3 assetVersion];
        if (assetVersion)
        {
          assetSelector4 = [v15 assetSelector];
          [assetSelector4 assetVersion];
          v26 = v25 = v13;
          [dictionary3 setObject:v26 forKeyedSubscript:@"assetVersion"];

          v13 = v25;
          versionCopy = v33;
          v9 = 0x1E695D000;
        }

        else
        {
          [dictionary3 setObject:&stru_1F3B6B510 forKeyedSubscript:@"assetVersion"];
        }

        if (dictionary3)
        {
          v27 = dictionary3;
        }

        else
        {
          v27 = &unk_1F3B732E8;
        }

        [dictionary2 setObject:v27 forKeyedSubscript:@"assetSelector"];

LABEL_20:
        if ([v15 assetLockedInhibitsRemoval])
        {
          v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "assetLockedInhibitsRemoval")}];
          [dictionary2 setObject:v28 forKeyedSubscript:@"assetLockedInhibitsRemoval"];
        }

        [v13 addObject:dictionary2];
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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  array = [MEMORY[0x1E695DF70] array];
  v4 = +[UAFAutoAssetHistory _getPersistAssetInfoPath];
  if ([defaultManager fileExistsAtPath:v4])
  {
    v25 = v4;
    [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v37 = 0;
    v24 = v26 = defaultManager;
    v5 = [defaultManager contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
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
      v9 = array;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          lastPathComponent = [v11 lastPathComponent];
          if (lastPathComponent)
          {
            v13 = lastPathComponent;
            if (([(__CFString *)lastPathComponent hasSuffix:v29]& 1) != 0)
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

          array = v9;
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
    defaultManager = v26;
    v21 = v24;
  }

  else
  {
    v41 = @"error";
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no info available, topdir '%@' does not exist", v4];
    v42[0] = v6;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    [array addObject:v21];
  }

  v22 = *MEMORY[0x1E69E9840];

  return array;
}

+ (BOOL)_createHistoryDirIfNeeded:(id)needed error:(id *)error
{
  v38[2] = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v24 = 0;
  if (![defaultManager fileExistsAtPath:neededCopy isDirectory:&v24])
  {
    v29 = *MEMORY[0x1E696A370];
    v8 = [MEMORY[0x1E696AD98] numberWithShort:448];
    v30 = v8;
    v7 = 1;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v10 = [defaultManager createDirectoryAtPath:neededCopy withIntermediateDirectories:1 attributes:v9 error:error];

    if (v10)
    {
      goto LABEL_22;
    }

    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      v13 = *MEMORY[0x1E696A578];
      if (*error)
      {
        v27[0] = *MEMORY[0x1E696A578];
        neededCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create UAF history directory path at '%@'", neededCopy];
        v27[1] = *MEMORY[0x1E696AA08];
        v28[0] = neededCopy;
        v28[1] = *error;
        v15 = MEMORY[0x1E695DF20];
        v16 = v28;
        v17 = v27;
LABEL_11:
        v19 = 2;
LABEL_20:
        v21 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v19];
        *error = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v12 userInfo:v21];

        goto LABEL_21;
      }

      v25 = *MEMORY[0x1E696A578];
      neededCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create UAF history directory path at '%@'", neededCopy];
      v26 = neededCopy;
      v15 = MEMORY[0x1E695DF20];
      v16 = &v26;
      v17 = &v25;
LABEL_19:
      v19 = 1;
      goto LABEL_20;
    }

    neededCopy = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(neededCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "+[UAFAutoAssetHistory _createHistoryDirIfNeeded:error:]";
      v33 = 2112;
      v34 = neededCopy;
      v20 = "%s failed to create UAF history directory path at '%@'";
LABEL_16:
      _os_log_error_impl(&dword_1BCF2C000, neededCopy, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
    }

LABEL_21:

    v7 = 0;
    goto LABEL_22;
  }

  if ((v24 & 1) == 0)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = UAFErrorCodeAssetHistoryPathExistsIsNotDir;
      v18 = *MEMORY[0x1E696A578];
      if (*error)
      {
        v37[0] = *MEMORY[0x1E696A578];
        neededCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF history directory path exists but is not a directory, not preserving info, path is '%@'", neededCopy];
        v38[0] = neededCopy;
        v37[1] = *MEMORY[0x1E696AA08];
        v38[1] = *error;
        v15 = MEMORY[0x1E695DF20];
        v16 = v38;
        v17 = v37;
        goto LABEL_11;
      }

      v35 = *MEMORY[0x1E696A578];
      neededCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF history directory path exists but is not a directory, not preserving info, path is '%@'", neededCopy];
      v36 = neededCopy;
      v15 = MEMORY[0x1E695DF20];
      v16 = &v36;
      v17 = &v35;
      goto LABEL_19;
    }

    neededCopy = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(neededCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "+[UAFAutoAssetHistory _createHistoryDirIfNeeded:error:]";
      v33 = 2112;
      v34 = neededCopy;
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

+ (BOOL)_writeAssetInfoToFile:(id)file data:(id)data filePath:(id)path error:(id *)error
{
  v48[2] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  dataCopy = data;
  pathCopy = path;
  v12 = [UAFCommonUtilities openFD:pathCopy oflags:1537 mode:420 error:error];
  if ((v12 & 0x80000000) != 0)
  {
    if (error)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      v25 = *MEMORY[0x1E696A578];
      if (*error)
      {
        v47[0] = *MEMORY[0x1E696A578];
        pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", fileCopy, pathCopy];
        v47[1] = *MEMORY[0x1E696AA08];
        v26 = *error;
        v48[0] = pathCopy;
        v48[1] = v26;
        v27 = MEMORY[0x1E695DF20];
        v28 = v48;
        v29 = v47;
        v30 = 2;
      }

      else
      {
        v45 = *MEMORY[0x1E696A578];
        pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", fileCopy, pathCopy];
        v46 = pathCopy;
        v27 = MEMORY[0x1E695DF20];
        v28 = &v46;
        v29 = &v45;
        v30 = 1;
      }

      v31 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v30];
      *error = [v23 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v24 userInfo:v31];
    }

    else
    {
      pathCopy = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(pathCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v40 = "+[UAFAutoAssetHistory _writeAssetInfoToFile:data:filePath:error:]";
        v41 = 2112;
        v42 = fileCopy;
        v43 = 2112;
        v44 = pathCopy;
        _os_log_error_impl(&dword_1BCF2C000, pathCopy, OS_LOG_TYPE_ERROR, "%s failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", buf, 0x20u);
      }
    }

    goto LABEL_18;
  }

  v13 = 1;
  pathCopy = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v12 closeOnDealloc:1];
  if (([pathCopy writeData:dataCopy error:error]& 1) == 0)
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      v17 = *MEMORY[0x1E696A578];
      if (*error)
      {
        v37[0] = *MEMORY[0x1E696A578];
        pathCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", fileCopy, pathCopy];
        v37[1] = *MEMORY[0x1E696AA08];
        v38[0] = pathCopy2;
        v38[1] = *error;
        v19 = MEMORY[0x1E695DF20];
        v20 = v38;
        v21 = v37;
        v22 = 2;
      }

      else
      {
        pathCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", fileCopy, pathCopy, *MEMORY[0x1E696A578]];
        v36 = pathCopy2;
        v19 = MEMORY[0x1E695DF20];
        v20 = &v36;
        v21 = &v35;
        v22 = 1;
      }

      v32 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
      *error = [v15 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v16 userInfo:v32];
    }

    else
    {
      pathCopy2 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(pathCopy2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v40 = "+[UAFAutoAssetHistory _writeAssetInfoToFile:data:filePath:error:]";
        v41 = 2112;
        v42 = fileCopy;
        v43 = 2112;
        v44 = pathCopy;
        _os_log_error_impl(&dword_1BCF2C000, pathCopy2, OS_LOG_TYPE_ERROR, "%s failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", buf, 0x20u);
      }
    }

LABEL_18:
    v13 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)_persistAssetSetInfo:(id)info assetSetIdentifier:(id)identifier isEliminating:(BOOL)eliminating jsonData:(id)data error:(id *)error
{
  v69[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  identifierCopy = identifier;
  dataCopy = data;
  v13 = +[UAFAutoAssetManager getSerialQueue];
  dispatch_assert_queue_V2(v13);

  if ([@"configuration" isEqualToString:infoCopy])
  {
    v49 = infoCopy;
    v14 = @"uafConfiguredLog";
  }

  else
  {
    if (([@"locked" isEqualToString:infoCopy] & 1) == 0)
    {
      if (error)
      {
        v25 = MEMORY[0x1E696ABC0];
        v26 = UAFErrorCodeAssetHistoryUnknownType;
        v27 = *MEMORY[0x1E696A578];
        if (*error)
        {
          v68[0] = *MEMORY[0x1E696A578];
          infoCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", infoCopy];
          v68[1] = *MEMORY[0x1E696AA08];
          v69[0] = infoCopy;
          v69[1] = *error;
          v29 = MEMORY[0x1E695DF20];
          v30 = v69;
          v31 = v68;
          v32 = 2;
        }

        else
        {
          v66 = *MEMORY[0x1E696A578];
          infoCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", infoCopy];
          v67 = infoCopy;
          v29 = MEMORY[0x1E695DF20];
          v30 = &v67;
          v31 = &v66;
          v32 = 1;
        }

        v41 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
        *error = [v25 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v26 userInfo:v41];
      }

      else
      {
        infoCopy = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(infoCopy, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v57 = "+[UAFAutoAssetHistory _persistAssetSetInfo:assetSetIdentifier:isEliminating:jsonData:error:]";
          v58 = 2112;
          v59 = infoCopy;
          _os_log_error_impl(&dword_1BCF2C000, infoCopy, OS_LOG_TYPE_ERROR, "%s unknown infoType '%@'", buf, 0x16u);
        }
      }

      v18 = 0;
      v15 = 0;
      v21 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_29;
    }

    v49 = infoCopy;
    v14 = @"uafLockedLog";
  }

  v15 = +[UAFAutoAssetHistory _getPersistAssetInfoPath];
  if (![UAFAutoAssetHistory _createHistoryDirIfNeeded:v15 error:error])
  {
    v18 = 0;
    v21 = 0;
    v16 = 0;
    v17 = 0;
    v24 = 0;
    infoCopy = v49;
    goto LABEL_31;
  }

  v48 = identifierCopy;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@-%@", v15, identifierCopy, v14];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v16, @"cur", @"json"];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v16, @"prev", @"json"];
  v51 = 0;
  v19 = [UAFCommonUtilities rename:v17 toPath:v18 error:&v51];
  v20 = v51;
  v21 = v20;
  if (v19)
  {
    code = [v20 code];
    domain = [v21 domain];
    if (code != 2 && [*MEMORY[0x1E696A798] isEqualToString:domain])
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
        v63 = domain;
        v64 = 2048;
        v65 = code;
        _os_log_impl(&dword_1BCF2C000, log, OS_LOG_TYPE_DEFAULT, "%s failed to rename current persisted info file '%{public}@' to previous '%{public}@', domain = '%{public}@', code = %ld", buf, 0x34u);
      }
    }
  }

  if (!eliminating)
  {
    v33 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17 isDirectory:0];
    identifierCopy = v48;
    if (v33)
    {
      infoCopy = v33;
      v24 = [UAFAutoAssetHistory _writeAssetInfoToFile:v48 data:dataCopy filePath:v17 error:error];
      infoCopy = v49;
LABEL_30:

      goto LABEL_31;
    }

    if (error)
    {
      loga = MEMORY[0x1E696ABC0];
      v34 = UAFErrorCodeAssetHistoryFailedToCreateObject;
      v35 = *MEMORY[0x1E696A578];
      infoCopy = v49;
      if (*error)
      {
        v54[0] = *MEMORY[0x1E696A578];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", v49];
        v54[1] = *MEMORY[0x1E696AA08];
        v55[0] = v36;
        v55[1] = *error;
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
      *error = [loga errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v34 userInfo:v45];

      infoCopy = 0;
      v24 = 0;
      identifierCopy = v48;
      goto LABEL_30;
    }

    v44 = UAFGetLogCategory(&UAFLogContextMAConfig);
    infoCopy = v49;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v57 = "+[UAFAutoAssetHistory _persistAssetSetInfo:assetSetIdentifier:isEliminating:jsonData:error:]";
      v58 = 2112;
      v59 = v49;
      _os_log_error_impl(&dword_1BCF2C000, v44, OS_LOG_TYPE_ERROR, "%s unknown infoType '%@'", buf, 0x16u);
    }

    infoCopy = 0;
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  v24 = 1;
  identifierCopy = v48;
  infoCopy = v49;
LABEL_31:

  v42 = *MEMORY[0x1E69E9840];
  return v24;
}

+ (void)persistAssetSetInfoLocked:(id)locked atomicEntries:(id)entries autoAssetSet:(id)set isEliminating:(BOOL)eliminating reason:(id)reason
{
  eliminatingCopy = eliminating;
  v82[2] = *MEMORY[0x1E69E9840];
  lockedCopy = locked;
  entriesCopy = entries;
  setCopy = set;
  reasonCopy = reason;
  assetSetIdentifier = [setCopy assetSetIdentifier];
  if (eliminatingCopy)
  {
    v51 = eliminatingCopy;
    data = [MEMORY[0x1E695DEF0] data];
    v52 = 0;
    v17 = 0;
    array = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if (!array)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v71 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
        v72 = 2114;
        v73 = assetSetIdentifier;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to create array for atomic entries for persisting info about locked asset set '%{public}@', not persisting information", buf, 0x16u);
      }

      v52 = 0;
      data = 0;
      v17 = 0;
      array = 0;
      goto LABEL_53;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (!dictionary)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v71 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
        v72 = 2114;
        v73 = assetSetIdentifier;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to create output dictionary for persisting info about locked asset set '%{public}@', not persisting information", buf, 0x16u);
      }

      v52 = 0;
      data = 0;
      v17 = 0;
      goto LABEL_53;
    }

    v51 = 0;
    v47 = reasonCopy;
    if (reasonCopy)
    {
      v22 = reasonCopy;
    }

    else
    {
      v22 = @"<no reason provided>";
    }

    v81[0] = @"reason";
    v81[1] = @"timestamp";
    v82[0] = v22;
    v23 = dictionary;
    date = [MEMORY[0x1E695DF00] date];
    v25 = [UAFCommonUtilities getISO8601Timestamp:date withFractionalSeconds:1];
    v82[1] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
    [v23 setObject:v26 forKeyedSubscript:@"UAFHistoryMetadata"];

    v50 = lockedCopy;
    if (lockedCopy)
    {
      v27 = lockedCopy;
    }

    else
    {
      v27 = &stru_1F3B6B510;
    }

    [v23 setObject:v27 forKeyedSubscript:@"atomicInstance"];
    autoAssetEntries = [setCopy autoAssetEntries];
    v48 = setCopy;
    v29 = [UAFAutoAssetHistory _getAutoAssetSetInfo:setCopy entries:autoAssetEntries includeAssetVersion:1];
    v52 = v23;
    [v23 setObject:v29 forKeyedSubscript:@"autoAssetSet"];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v49 = entriesCopy;
    obj = entriesCopy;
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
          fullAssetSelector = [v31 fullAssetSelector];
          assetSpecifier = [fullAssetSelector assetSpecifier];
          if (assetSpecifier)
          {
            fullAssetSelector2 = [v31 fullAssetSelector];
            assetSpecifier2 = [fullAssetSelector2 assetSpecifier];
            v34 = assetSpecifier2;
          }

          else
          {
            v34 = &stru_1F3B6B510;
          }

          v77[0] = v34;
          v76[1] = @"assetVersion";
          fullAssetSelector3 = [v31 fullAssetSelector];
          assetVersion = [fullAssetSelector3 assetVersion];
          if (assetVersion)
          {
            fullAssetSelector4 = [v31 fullAssetSelector];
            assetVersion2 = [fullAssetSelector4 assetVersion];
            v37 = assetVersion2;
          }

          else
          {
            v37 = &stru_1F3B6B510;
          }

          v77[1] = v37;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
          v79[0] = v38;
          v78[1] = @"assetID";
          assetID = [v31 assetID];
          if (assetID)
          {
            assetID2 = [v31 assetID];
            v40 = assetID2;
          }

          else
          {
            v40 = &stru_1F3B6B510;
          }

          v79[1] = v40;
          v78[2] = @"localContentURL";
          localContentURL = [v31 localContentURL];
          if (localContentURL)
          {
            localContentURL2 = [v31 localContentURL];
            absoluteString = [localContentURL2 absoluteString];
            v42 = absoluteString;
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

          if (localContentURL)
          {
          }

          if (assetID)
          {
          }

          if (assetVersion)
          {
          }

          if (assetSpecifier)
          {
          }

          [array addObject:v44];
        }

        v56 = [obj countByEnumeratingWithState:&v66 objects:v80 count:16];
      }

      while (v56);
    }

    [v52 setObject:array forKeyedSubscript:@"atomicEntries"];
    v65 = 0;
    data = [UAFCommonUtilities serializeDictToJSONData:v52 error:&v65];
    v17 = v65;
    if (!data)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      entriesCopy = v49;
      lockedCopy = v50;
      assetSetIdentifier = v46;
      reasonCopy = v47;
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

      data = 0;
      setCopy = v48;
      goto LABEL_53;
    }

    entriesCopy = v49;
    lockedCopy = v50;
    reasonCopy = v47;
    setCopy = v48;
    assetSetIdentifier = v46;
  }

  v18 = v17;
  v64 = v17;
  v19 = [UAFAutoAssetHistory _persistAssetSetInfo:@"locked" assetSetIdentifier:assetSetIdentifier isEliminating:v51 jsonData:data error:&v64];
  v17 = v64;

  if (!v19 || v17)
  {
    v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v71 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
      v72 = 2114;
      v73 = assetSetIdentifier;
      v74 = 2114;
      v75 = v17;
      _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to persist info for locked assetSetIdentifier '%{public}@', error is '%{public}@'", buf, 0x20u);
    }

LABEL_53:
  }

  v45 = *MEMORY[0x1E69E9840];
}

@end