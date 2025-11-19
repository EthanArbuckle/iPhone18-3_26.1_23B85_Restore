@interface PLAppPrivateData
+ (BOOL)_validateBundleRootWithPathManager:(id)a3;
+ (id)_appPrivateDataFolderURLWithPathManager:(id)a3 createIfNeeded:(BOOL)a4;
+ (id)appPrivateDataContentsWithBundleID:(id)a3 pathManager:(id)a4;
+ (id)appPrivateDataForLibraryURL:(id)a3;
- (BOOL)_saveToFilesystemWithError:(id *)a3;
- (BOOL)setValue:(id)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)setValue:(id)a3 forKeyPath:(id)a4 error:(id *)a5;
- (BOOL)setValuesForKeysWithDictionary:(id)a3 error:(id *)a4;
- (PLAppPrivateData)initWithLibraryURL:(id)a3 alternateDictionaryStorageURL:(id)a4;
- (id)_dictionaryStorageURLPreparedForWriting:(BOOL)a3;
- (id)allKeys;
- (id)debugDescription;
- (id)dictionaryWithValuesForKeys:(id)a3;
- (id)valueForKey:(id)a3;
- (id)valueForKeyPath:(id)a3;
- (void)_readFromFilesystemWithDictionaryStorageURL:(id)a3;
- (void)_recursiveCreateSubDictionariesIfMissing:(id)a3 index:(unint64_t)a4 parentDictionary:(id)a5;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)setValue:(id)a3 forKeyPath:(id)a4;
- (void)setValuesForKeysWithDictionary:(id)a3;
@end

@implementation PLAppPrivateData

- (void)setValuesForKeysWithDictionary:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v8 = 0;
  LOBYTE(self) = [(PLAppPrivateData *)self setValuesForKeysWithDictionary:v4 error:&v8];
  v5 = v8;
  if ((self & 1) == 0)
  {
    if (v5)
    {
      v9 = *MEMORY[0x1E696AA08];
      v10[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed setting keys with dictionary on app private data" userInfo:v6];
    objc_exception_throw(v7);
  }
}

- (BOOL)setValuesForKeysWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(PLAppPrivateData *)v7 backingDictionary];
  [v8 setValuesForKeysWithDictionary:v6];

  LOBYTE(a4) = [(PLAppPrivateData *)v7 _saveToFilesystemWithError:a4];
  objc_sync_exit(v7);

  return a4;
}

- (id)dictionaryWithValuesForKeys:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(PLAppPrivateData *)v5 backingDictionary];
  v7 = [v6 dictionaryWithValuesForKeys:v4];

  objc_sync_exit(v5);

  return v7;
}

- (id)allKeys
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(PLAppPrivateData *)v2 backingDictionary];
  v4 = [v3 allKeys];

  objc_sync_exit(v2);

  return v4;
}

- (void)setValue:(id)a3 forKeyPath:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11 = 0;
  LOBYTE(self) = [(PLAppPrivateData *)self setValue:v6 forKeyPath:v7 error:&v11];
  v8 = v11;
  if ((self & 1) == 0)
  {
    if (v8)
    {
      v12 = *MEMORY[0x1E696AA08];
      v13[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed setting value for keypath on app private data" userInfo:v9];
    objc_exception_throw(v10);
  }
}

- (BOOL)setValue:(id)a3 forKeyPath:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [v9 componentsSeparatedByString:@"."];
  v12 = [(PLAppPrivateData *)v10 backingDictionary];
  [(PLAppPrivateData *)v10 _recursiveCreateSubDictionariesIfMissing:v11 index:0 parentDictionary:v12];

  v13 = [(PLAppPrivateData *)v10 backingDictionary];
  [v13 setValue:v8 forKeyPath:v9];

  LOBYTE(a5) = [(PLAppPrivateData *)v10 _saveToFilesystemWithError:a5];
  objc_sync_exit(v10);

  return a5;
}

- (void)_recursiveCreateSubDictionariesIfMissing:(id)a3 index:(unint64_t)a4 parentDictionary:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = a4 + 1;
  if ([v14 count] > a4 + 1)
  {
    v10 = [v14 objectAtIndex:a4];
    v11 = [v8 objectForKey:v10];
    v12 = [v8 objectForKey:v10];

    if (!v12)
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];

      [v8 setObject:v13 forKey:v10];
      v11 = v13;
    }

    [(PLAppPrivateData *)self _recursiveCreateSubDictionariesIfMissing:v14 index:v9 parentDictionary:v11];
  }
}

- (id)valueForKeyPath:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(PLAppPrivateData *)v5 backingDictionary];
  v7 = [v6 valueForKeyPath:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11 = 0;
  LOBYTE(self) = [(PLAppPrivateData *)self setValue:v6 forKey:v7 error:&v11];
  v8 = v11;
  if ((self & 1) == 0)
  {
    if (v8)
    {
      v12 = *MEMORY[0x1E696AA08];
      v13[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Failed setting value on app private data" userInfo:v9];
    objc_exception_throw(v10);
  }
}

- (BOOL)setValue:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(PLAppPrivateData *)v10 backingDictionary];
  [v11 setValue:v8 forKey:v9];

  LOBYTE(a5) = [(PLAppPrivateData *)v10 _saveToFilesystemWithError:a5];
  objc_sync_exit(v10);

  return a5;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(PLAppPrivateData *)v5 backingDictionary];
  v7 = [v6 valueForKey:v4];

  objc_sync_exit(v5);

  return v7;
}

- (void)_readFromFilesystemWithDictionaryStorageURL:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF48] inputStreamWithURL:v4];
  v6 = v5;
  if (v5)
  {
    [v5 open];
    v22 = 0;
    v7 = [MEMORY[0x1E696AE40] propertyListWithStream:v6 options:1 format:0 error:&v22];
    v8 = v22;
    [v6 close];
    if (v7)
    {
      [(PLAppPrivateData *)self setBackingDictionary:v7];
      v9 = PLBackendGetLog();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v4 path];
      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      v13 = "Successfully read %@ from file %@";
      v14 = v9;
      v15 = OS_LOG_TYPE_DEBUG;
      v16 = 22;
    }

    else
    {
      v17 = [v8 userInfo];
      v9 = [v17 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      v18 = [v9 domain];
      if ([v18 isEqualToString:*MEMORY[0x1E696A798]])
      {
        v19 = [v9 code];

        if (v19 == 2)
        {
          goto LABEL_13;
        }
      }

      else
      {
      }

      v11 = PLBackendGetLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      v12 = [v4 path];
      *buf = 138412290;
      v24 = v12;
      v13 = "Error reading property list from %@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 12;
    }

    _os_log_impl(&dword_1AA9BD000, v14, v15, v13, buf, v16);

LABEL_12:
    goto LABEL_13;
  }

LABEL_14:
  v20 = [(PLAppPrivateData *)self backingDictionary];

  if (!v20)
  {
    v21 = [MEMORY[0x1E695DF90] dictionary];
    [(PLAppPrivateData *)self setBackingDictionary:v21];
  }
}

- (BOOL)_saveToFilesystemWithError:(id *)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  v5 = MEMORY[0x1E696AE40];
  v6 = [(PLAppPrivateData *)v4 backingDictionary];
  v33 = 0;
  v7 = [v5 dataWithPropertyList:v6 format:100 options:0 error:&v33];
  v8 = v33;

  if (v7)
  {
    v9 = [(PLAppPrivateData *)v4 _dictionaryStorageURLPreparedForWriting:1];
    v32 = v8;
    v10 = [v7 writeToURL:v9 options:1 error:&v32];
    v11 = v32;

    v12 = PLBackendGetLog();
    v13 = v12;
    if (v10)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v7 length];
        v15 = [v9 path];
        *buf = 134218242;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEBUG, "%ld bytes written to %@", buf, 0x16u);
      }

      v16 = 1;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = [v9 path];
        *buf = 138412546;
        v35 = v17;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_ERROR, "Failed to write property list to %@. Error: %@", buf, 0x16u);
      }

      if (PLIsErrorEqualToCode(v11, *MEMORY[0x1E696A250], 513))
      {
        v31 = 0;
        v18 = [MEMORY[0x1E696AC08] defaultManager];
        v19 = [v9 path];
        v20 = [v18 fileExistsAtPath:v19 isDirectory:&v31];

        v42[0] = *MEMORY[0x1E695DBF0];
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
        v22 = [v9 resourceValuesForKeys:v21 error:0];

        v23 = [v9 path];
        v24 = [PLSandboxHelper processCanWriteSandboxForPath:v23];

        v25 = PLBackendGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = [MEMORY[0x1E696AD98] numberWithBool:v20];
          v27 = [MEMORY[0x1E696AD98] numberWithBool:v31];
          v28 = [MEMORY[0x1E696AD98] numberWithBool:v24];
          *buf = 138413058;
          v35 = v26;
          v36 = 2112;
          v37 = v27;
          v38 = 2112;
          v39 = v28;
          v40 = 2112;
          v41 = v22;
          _os_log_impl(&dword_1AA9BD000, v25, OS_LOG_TYPE_ERROR, "_saveToFilesystem: exists? %@ isDirectory? %@ sandboxCanWrite? %@ properties: %@", buf, 0x2Au);
        }
      }

      v16 = 0;
    }
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v8;
      _os_log_impl(&dword_1AA9BD000, v9, OS_LOG_TYPE_ERROR, "Failed to serialize backingDictionary. Error: %@", buf, 0xCu);
    }

    v16 = 0;
    v11 = v8;
  }

  if (a3)
  {
    v29 = v11;
    *a3 = v11;
  }

  objc_sync_exit(v4);
  return v16;
}

- (id)_dictionaryStorageURLPreparedForWriting:(BOOL)a3
{
  v3 = [objc_opt_class() _appPrivateDataFolderURLWithPathManager:self->_pathManager createIfNeeded:a3];
  v4 = [v3 URLByAppendingPathComponent:@"appPrivateData.plist"];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PLAppPrivateData *)self _dictionaryStorageURL];
  v7 = [v6 path];
  v8 = [v3 stringWithFormat:@"%@<%p> (%@): %@", v5, self, v7, self->_backingDictionary];

  return v8;
}

- (PLAppPrivateData)initWithLibraryURL:(id)a3 alternateDictionaryStorageURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PLAppPrivateData;
  v9 = [(PLAppPrivateData *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryURL, a3);
    v11 = [[PLPhotoLibraryPathManager alloc] initWithLibraryURL:v10->_libraryURL];
    pathManager = v10->_pathManager;
    v10->_pathManager = v11;

    if ([objc_opt_class() _validateBundleRootWithPathManager:v10->_pathManager])
    {
      if (v8)
      {
        [(PLAppPrivateData *)v10 _readFromFilesystemWithDictionaryStorageURL:v8];
      }

      else
      {
        v13 = [(PLAppPrivateData *)v10 _dictionaryStorageURL];
        [(PLAppPrivateData *)v10 _readFromFilesystemWithDictionaryStorageURL:v13];
      }
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

+ (id)appPrivateDataContentsWithBundleID:(id)a3 pathManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"PLAppPrivateData.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"bundleID"}];

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_12:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PLAppPrivateData.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    v9 = 0;
    goto LABEL_7;
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"PLAppPrivateData.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];

  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_4:
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  v9 = 0;
  if (v7 && ((PLIsReallyAssetsd_isAssetsd | __PLIsAssetsdProxyService) & 1) != 0)
  {
    v10 = [a1 _appPrivateDataFolderURLWithPathManager:v8 createIfNeeded:0];
    v11 = [v10 URLByDeletingLastPathComponent];
    v12 = [v11 URLByAppendingPathComponent:v7];

    v13 = [v12 URLByAppendingPathComponent:@"appPrivateData.plist"];
    v14 = [PLAppPrivateData alloc];
    v15 = [v8 libraryURL];
    v16 = [(PLAppPrivateData *)v14 initWithLibraryURL:v15 alternateDictionaryStorageURL:v13];

    v17 = [(PLAppPrivateData *)v16 allKeys];
    v9 = [(PLAppPrivateData *)v16 dictionaryWithValuesForKeys:v17];
  }

LABEL_7:

  return v9;
}

+ (id)_appPrivateDataFolderURLWithPathManager:(id)a3 createIfNeeded:(BOOL)a4
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [a3 photoDirectoryWithType:5 createIfNeeded:a4 error:0];
  v6 = [v4 fileURLWithPath:v5];

  return v6;
}

+ (BOOL)_validateBundleRootWithPathManager:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [a3 validateCreationRequestWithError:&v7];
  v4 = v7;
  if ((v3 & 1) == 0)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_FAULT, "AppPrivateData invalid bundle root. Error: %@", buf, 0xCu);
    }
  }

  return v3;
}

+ (id)appPrivateDataForLibraryURL:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  if (!sPathToObjectMap)
  {
    v6 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v7 = sPathToObjectMap;
    sPathToObjectMap = v6;
  }

  v8 = [v4 path];
  v9 = [sPathToObjectMap objectForKey:v8];
  if (!v9)
  {
    v9 = [[PLAppPrivateData alloc] initWithLibraryURL:v4 alternateDictionaryStorageURL:0];
    if (v9)
    {
      [sPathToObjectMap setObject:v9 forKey:v8];
    }
  }

  objc_sync_exit(v5);

  return v9;
}

@end