@interface SCROBrailleUIPersistenceManager
+ (id)sharedInstance;
- (id)_brailleUIDataDirectory;
- (id)_cloudDataDirectory;
- (id)_filePathForCache:(id)cache;
- (id)_loadDataFromFile:(id)file;
- (id)_localDataDirectory;
- (id)getValueForKey:(id)key cache:(id)cache;
- (void)_accessCache:(id)cache withKey:(id)key setValue:(id)value getValue:(id *)getValue maxRecordCount:(int64_t)count;
@end

@implementation SCROBrailleUIPersistenceManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[SCROBrailleUIPersistenceManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_0;

  return v3;
}

uint64_t __49__SCROBrailleUIPersistenceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SCROBrailleUIPersistenceManager);
  sharedInstance__sharedInstance_0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (id)getValueForKey:(id)key cache:(id)cache
{
  v6 = 0;
  [(SCROBrailleUIPersistenceManager *)self _accessCache:cache withKey:key setValue:0 getValue:&v6 maxRecordCount:0x7FFFFFFFFFFFFFFFLL];
  v4 = v6;

  return v4;
}

- (void)_accessCache:(id)cache withKey:(id)key setValue:(id)value getValue:(id *)getValue maxRecordCount:(int64_t)count
{
  v51 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  keyCopy = key;
  valueCopy = value;
  v38 = [(SCROBrailleUIPersistenceManager *)self _filePathForCache:cacheCopy];
  v13 = [(SCROBrailleUIPersistenceManager *)self _loadDataFromFile:?];
  v14 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v50 count:16];
  v37 = valueCopy;
  if (v16)
  {
    v34 = cacheCopy;
    v17 = 0;
    v18 = *v41;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        if ([v20 count] == 2)
        {
          v21 = [v20 objectAtIndex:0];
          v22 = [keyCopy isEqualToString:v21];

          if (v22)
          {
            v23 = [v20 objectAtIndex:1];

            v17 = v23;
          }

          else
          {
            [v14 addObject:v20];
          }
        }

        else
        {
          v24 = _SCROD_LOG();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v45 = v38;
            _os_log_impl(&dword_26490B000, v24, OS_LOG_TYPE_DEFAULT, "Corrupted Braille UI repository file: %{public}@", buf, 0xCu);
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v16);

    valueCopy = v37;
    if (!v37)
    {
      cacheCopy = v34;
      if (!v17)
      {
        v25 = 0;
        v16 = 0;
        goto LABEL_21;
      }

      v48 = keyCopy;
      v26 = &v48;
      v16 = v17;
      goto LABEL_19;
    }

    cacheCopy = v34;
  }

  else
  {

    v17 = 0;
    v25 = 0;
    if (!valueCopy)
    {
      goto LABEL_21;
    }
  }

  v16 = v17;
  v49 = keyCopy;
  v26 = &v49;
  v17 = valueCopy;
LABEL_19:
  v26[1] = v17;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  if (v25)
  {
    [v14 insertObject:v25 atIndex:0];
  }

LABEL_21:
  v27 = v14;
  if (count != 0x7FFFFFFFFFFFFFFFLL && [v14 count] > count)
  {
    [v14 removeObjectsInRange:{count, objc_msgSend(v14, "count") - count}];
  }

  v28 = [MEMORY[0x277CBEBC0] fileURLWithPath:v38];
  v39 = 0;
  v29 = [v14 writeToURL:v28 error:&v39];
  v30 = v39;

  if (!v29 || v30)
  {
    v31 = _SCROD_LOG();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v45 = v38;
      v46 = 2112;
      v47 = v30;
      _os_log_impl(&dword_26490B000, v31, OS_LOG_TYPE_DEFAULT, "Braille UI failed to save cache to %@ with error %@", buf, 0x16u);
    }
  }

  if (getValue)
  {
    v32 = v16;
    *getValue = v16;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_brailleUIDataDirectory
{
  v19 = *MEMORY[0x277D85DE8];
  _cloudDataDirectory = [(SCROBrailleUIPersistenceManager *)self _cloudDataDirectory];
  _localDataDirectory = [(SCROBrailleUIPersistenceManager *)self _localDataDirectory];
  v5 = _localDataDirectory;
  if (_cloudDataDirectory)
  {
    v6 = _cloudDataDirectory;
  }

  else
  {
    v6 = _localDataDirectory;
  }

  v7 = v6;
  if (v7)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:v7]& 1) != 0)
    {
LABEL_8:
      v12 = v7;
      goto LABEL_15;
    }

    v16 = 0;
    v9 = [defaultManager createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v16];
    v10 = v16;
    v11 = v10;
    if (v9)
    {

      goto LABEL_8;
    }

    v13 = _SCROD_LOG();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Error creating Braille UI directory: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    defaultManager = _SCROD_LOG();
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26490B000, defaultManager, OS_LOG_TYPE_DEFAULT, "Error creating Braille UI directory URL", buf, 2u);
    }
  }

  v12 = 0;
LABEL_15:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_cloudDataDirectory
{
  v2 = +[SCROBrailleUIFinderApp cloudRootURL];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 URLByAppendingPathComponent:@".BrailleUI" isDirectory:1];
    path = [v4 path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)_localDataDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  lastObject = [v2 lastObject];

  v4 = [lastObject stringByAppendingPathComponent:@"Accessibility"];
  v5 = [v4 stringByAppendingPathComponent:@"BrailleUI"];

  return v5;
}

- (id)_filePathForCache:(id)cache
{
  cacheCopy = cache;
  _brailleUIDataDirectory = [(SCROBrailleUIPersistenceManager *)self _brailleUIDataDirectory];
  v6 = [cacheCopy stringByAppendingString:@"-cache.plist"];

  v7 = [_brailleUIDataDirectory stringByAppendingPathComponent:v6];

  return v7;
}

- (id)_loadDataFromFile:(id)file
{
  v12 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:fileCopy];
  [SCROBrailleUIUtilities tryDownloadingIfNeededForURL:v4];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:fileCopy])
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:fileCopy];
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = _SCROD_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = fileCopy;
      _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Error loading data from Braille UI repository: %{public}@", &v10, 0xCu);
    }
  }

  v6 = 0;
LABEL_7:

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

@end