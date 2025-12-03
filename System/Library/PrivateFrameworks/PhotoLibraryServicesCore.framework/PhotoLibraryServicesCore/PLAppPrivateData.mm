@interface PLAppPrivateData
+ (BOOL)_validateBundleRootWithPathManager:(id)manager;
+ (id)_appPrivateDataFolderURLWithPathManager:(id)manager createIfNeeded:(BOOL)needed;
+ (id)appPrivateDataContentsWithBundleID:(id)d pathManager:(id)manager;
+ (id)appPrivateDataForLibraryURL:(id)l;
- (BOOL)_saveToFilesystemWithError:(id *)error;
- (BOOL)setValue:(id)value forKey:(id)key error:(id *)error;
- (BOOL)setValue:(id)value forKeyPath:(id)path error:(id *)error;
- (BOOL)setValuesForKeysWithDictionary:(id)dictionary error:(id *)error;
- (PLAppPrivateData)initWithLibraryURL:(id)l alternateDictionaryStorageURL:(id)rL;
- (id)_dictionaryStorageURLPreparedForWriting:(BOOL)writing;
- (id)allKeys;
- (id)debugDescription;
- (id)dictionaryWithValuesForKeys:(id)keys;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (void)_readFromFilesystemWithDictionaryStorageURL:(id)l;
- (void)_recursiveCreateSubDictionariesIfMissing:(id)missing index:(unint64_t)index parentDictionary:(id)dictionary;
- (void)setValue:(id)value forKey:(id)key;
- (void)setValue:(id)value forKeyPath:(id)path;
- (void)setValuesForKeysWithDictionary:(id)dictionary;
@end

@implementation PLAppPrivateData

- (void)setValuesForKeysWithDictionary:(id)dictionary
{
  v10[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v8 = 0;
  LOBYTE(self) = [(PLAppPrivateData *)self setValuesForKeysWithDictionary:dictionaryCopy error:&v8];
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

- (BOOL)setValuesForKeysWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backingDictionary = [(PLAppPrivateData *)selfCopy backingDictionary];
  [backingDictionary setValuesForKeysWithDictionary:dictionaryCopy];

  LOBYTE(error) = [(PLAppPrivateData *)selfCopy _saveToFilesystemWithError:error];
  objc_sync_exit(selfCopy);

  return error;
}

- (id)dictionaryWithValuesForKeys:(id)keys
{
  keysCopy = keys;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backingDictionary = [(PLAppPrivateData *)selfCopy backingDictionary];
  v7 = [backingDictionary dictionaryWithValuesForKeys:keysCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)allKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backingDictionary = [(PLAppPrivateData *)selfCopy backingDictionary];
  allKeys = [backingDictionary allKeys];

  objc_sync_exit(selfCopy);

  return allKeys;
}

- (void)setValue:(id)value forKeyPath:(id)path
{
  v13[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  pathCopy = path;
  v11 = 0;
  LOBYTE(self) = [(PLAppPrivateData *)self setValue:valueCopy forKeyPath:pathCopy error:&v11];
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

- (BOOL)setValue:(id)value forKeyPath:(id)path error:(id *)error
{
  valueCopy = value;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [pathCopy componentsSeparatedByString:@"."];
  backingDictionary = [(PLAppPrivateData *)selfCopy backingDictionary];
  [(PLAppPrivateData *)selfCopy _recursiveCreateSubDictionariesIfMissing:v11 index:0 parentDictionary:backingDictionary];

  backingDictionary2 = [(PLAppPrivateData *)selfCopy backingDictionary];
  [backingDictionary2 setValue:valueCopy forKeyPath:pathCopy];

  LOBYTE(error) = [(PLAppPrivateData *)selfCopy _saveToFilesystemWithError:error];
  objc_sync_exit(selfCopy);

  return error;
}

- (void)_recursiveCreateSubDictionariesIfMissing:(id)missing index:(unint64_t)index parentDictionary:(id)dictionary
{
  missingCopy = missing;
  dictionaryCopy = dictionary;
  v9 = index + 1;
  if ([missingCopy count] > index + 1)
  {
    v10 = [missingCopy objectAtIndex:index];
    v11 = [dictionaryCopy objectForKey:v10];
    v12 = [dictionaryCopy objectForKey:v10];

    if (!v12)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];

      [dictionaryCopy setObject:dictionary forKey:v10];
      v11 = dictionary;
    }

    [(PLAppPrivateData *)self _recursiveCreateSubDictionariesIfMissing:missingCopy index:v9 parentDictionary:v11];
  }
}

- (id)valueForKeyPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backingDictionary = [(PLAppPrivateData *)selfCopy backingDictionary];
  v7 = [backingDictionary valueForKeyPath:pathCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setValue:(id)value forKey:(id)key
{
  v13[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  v11 = 0;
  LOBYTE(self) = [(PLAppPrivateData *)self setValue:valueCopy forKey:keyCopy error:&v11];
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

- (BOOL)setValue:(id)value forKey:(id)key error:(id *)error
{
  valueCopy = value;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backingDictionary = [(PLAppPrivateData *)selfCopy backingDictionary];
  [backingDictionary setValue:valueCopy forKey:keyCopy];

  LOBYTE(error) = [(PLAppPrivateData *)selfCopy _saveToFilesystemWithError:error];
  objc_sync_exit(selfCopy);

  return error;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  backingDictionary = [(PLAppPrivateData *)selfCopy backingDictionary];
  v7 = [backingDictionary valueForKey:keyCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_readFromFilesystemWithDictionaryStorageURL:(id)l
{
  v27 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [MEMORY[0x1E695DF48] inputStreamWithURL:lCopy];
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
      path = [lCopy path];
      *buf = 138412546;
      v24 = v11;
      v25 = 2112;
      v26 = path;
      v13 = "Successfully read %@ from file %@";
      v14 = v9;
      v15 = OS_LOG_TYPE_DEBUG;
      v16 = 22;
    }

    else
    {
      userInfo = [v8 userInfo];
      v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      domain = [v9 domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A798]])
      {
        code = [v9 code];

        if (code == 2)
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

      path = [lCopy path];
      *buf = 138412290;
      v24 = path;
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
  backingDictionary = [(PLAppPrivateData *)self backingDictionary];

  if (!backingDictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(PLAppPrivateData *)self setBackingDictionary:dictionary];
  }
}

- (BOOL)_saveToFilesystemWithError:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x1E696AE40];
  backingDictionary = [(PLAppPrivateData *)selfCopy backingDictionary];
  v33 = 0;
  v7 = [v5 dataWithPropertyList:backingDictionary format:100 options:0 error:&v33];
  v8 = v33;

  if (v7)
  {
    v9 = [(PLAppPrivateData *)selfCopy _dictionaryStorageURLPreparedForWriting:1];
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
        path = [v9 path];
        *buf = 134218242;
        v35 = v14;
        v36 = 2112;
        v37 = path;
        _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_DEBUG, "%ld bytes written to %@", buf, 0x16u);
      }

      v16 = 1;
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        path2 = [v9 path];
        *buf = 138412546;
        v35 = path2;
        v36 = 2112;
        v37 = v11;
        _os_log_impl(&dword_1AA9BD000, v13, OS_LOG_TYPE_ERROR, "Failed to write property list to %@. Error: %@", buf, 0x16u);
      }

      if (PLIsErrorEqualToCode(v11, *MEMORY[0x1E696A250], 513))
      {
        v31 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path3 = [v9 path];
        v20 = [defaultManager fileExistsAtPath:path3 isDirectory:&v31];

        v42[0] = *MEMORY[0x1E695DBF0];
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
        v22 = [v9 resourceValuesForKeys:v21 error:0];

        path4 = [v9 path];
        v24 = [PLSandboxHelper processCanWriteSandboxForPath:path4];

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

  if (error)
  {
    v29 = v11;
    *error = v11;
  }

  objc_sync_exit(selfCopy);
  return v16;
}

- (id)_dictionaryStorageURLPreparedForWriting:(BOOL)writing
{
  v3 = [objc_opt_class() _appPrivateDataFolderURLWithPathManager:self->_pathManager createIfNeeded:writing];
  v4 = [v3 URLByAppendingPathComponent:@"appPrivateData.plist"];

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _dictionaryStorageURL = [(PLAppPrivateData *)self _dictionaryStorageURL];
  path = [_dictionaryStorageURL path];
  v8 = [v3 stringWithFormat:@"%@<%p> (%@): %@", v5, self, path, self->_backingDictionary];

  return v8;
}

- (PLAppPrivateData)initWithLibraryURL:(id)l alternateDictionaryStorageURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v15.receiver = self;
  v15.super_class = PLAppPrivateData;
  v9 = [(PLAppPrivateData *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryURL, l);
    v11 = [[PLPhotoLibraryPathManager alloc] initWithLibraryURL:v10->_libraryURL];
    pathManager = v10->_pathManager;
    v10->_pathManager = v11;

    if ([objc_opt_class() _validateBundleRootWithPathManager:v10->_pathManager])
    {
      if (rLCopy)
      {
        [(PLAppPrivateData *)v10 _readFromFilesystemWithDictionaryStorageURL:rLCopy];
      }

      else
      {
        _dictionaryStorageURL = [(PLAppPrivateData *)v10 _dictionaryStorageURL];
        [(PLAppPrivateData *)v10 _readFromFilesystemWithDictionaryStorageURL:_dictionaryStorageURL];
      }
    }

    else
    {

      v10 = 0;
    }
  }

  return v10;
}

+ (id)appPrivateDataContentsWithBundleID:(id)d pathManager:(id)manager
{
  dCopy = d;
  managerCopy = manager;
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  if (PLIsReallyAssetsd_isAssetsd)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAppPrivateData.m" lineNumber:255 description:{@"Invalid parameter not satisfying: %@", @"bundleID"}];

    if (managerCopy)
    {
      goto LABEL_4;
    }

LABEL_12:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLAppPrivateData.m" lineNumber:256 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
    v9 = 0;
    goto LABEL_7;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLAppPrivateData.m" lineNumber:254 description:{@"Invalid parameter not satisfying: %@", @"PLIsReallyAssetsd()"}];

  if (!dCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (!managerCopy)
  {
    goto LABEL_12;
  }

LABEL_4:
  pl_dispatch_once(&PLIsReallyAssetsd_didCheckReadOnly, &__block_literal_global_129_3947);
  v9 = 0;
  if (dCopy && ((PLIsReallyAssetsd_isAssetsd | __PLIsAssetsdProxyService) & 1) != 0)
  {
    v10 = [self _appPrivateDataFolderURLWithPathManager:managerCopy createIfNeeded:0];
    uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
    v12 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:dCopy];

    v13 = [v12 URLByAppendingPathComponent:@"appPrivateData.plist"];
    v14 = [PLAppPrivateData alloc];
    libraryURL = [managerCopy libraryURL];
    v16 = [(PLAppPrivateData *)v14 initWithLibraryURL:libraryURL alternateDictionaryStorageURL:v13];

    allKeys = [(PLAppPrivateData *)v16 allKeys];
    v9 = [(PLAppPrivateData *)v16 dictionaryWithValuesForKeys:allKeys];
  }

LABEL_7:

  return v9;
}

+ (id)_appPrivateDataFolderURLWithPathManager:(id)manager createIfNeeded:(BOOL)needed
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [manager photoDirectoryWithType:5 createIfNeeded:needed error:0];
  v6 = [v4 fileURLWithPath:v5];

  return v6;
}

+ (BOOL)_validateBundleRootWithPathManager:(id)manager
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v3 = [manager validateCreationRequestWithError:&v7];
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

+ (id)appPrivateDataForLibraryURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!sPathToObjectMap)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v7 = sPathToObjectMap;
    sPathToObjectMap = strongToWeakObjectsMapTable;
  }

  path = [lCopy path];
  v9 = [sPathToObjectMap objectForKey:path];
  if (!v9)
  {
    v9 = [[PLAppPrivateData alloc] initWithLibraryURL:lCopy alternateDictionaryStorageURL:0];
    if (v9)
    {
      [sPathToObjectMap setObject:v9 forKey:path];
    }
  }

  objc_sync_exit(selfCopy);

  return v9;
}

@end