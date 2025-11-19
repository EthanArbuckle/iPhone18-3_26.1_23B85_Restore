@interface SCROBrailleUIPersistenceManager
+ (id)sharedInstance;
- (id)_brailleUIDataDirectory;
- (id)_cloudDataDirectory;
- (id)_filePathForCache:(id)a3;
- (id)_loadDataFromFile:(id)a3;
- (id)_localDataDirectory;
- (id)getValueForKey:(id)a3 cache:(id)a4;
- (void)_accessCache:(id)a3 withKey:(id)a4 setValue:(id)a5 getValue:(id *)a6 maxRecordCount:(int64_t)a7;
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

- (id)getValueForKey:(id)a3 cache:(id)a4
{
  v6 = 0;
  [(SCROBrailleUIPersistenceManager *)self _accessCache:a4 withKey:a3 setValue:0 getValue:&v6 maxRecordCount:0x7FFFFFFFFFFFFFFFLL];
  v4 = v6;

  return v4;
}

- (void)_accessCache:(id)a3 withKey:(id)a4 setValue:(id)a5 getValue:(id *)a6 maxRecordCount:(int64_t)a7
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v38 = [(SCROBrailleUIPersistenceManager *)self _filePathForCache:v10];
  v13 = [(SCROBrailleUIPersistenceManager *)self _loadDataFromFile:?];
  v14 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v50 count:16];
  v37 = v12;
  if (v16)
  {
    v34 = v10;
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
          v22 = [v11 isEqualToString:v21];

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

    v12 = v37;
    if (!v37)
    {
      v10 = v34;
      if (!v17)
      {
        v25 = 0;
        v16 = 0;
        goto LABEL_21;
      }

      v48 = v11;
      v26 = &v48;
      v16 = v17;
      goto LABEL_19;
    }

    v10 = v34;
  }

  else
  {

    v17 = 0;
    v25 = 0;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v16 = v17;
  v49 = v11;
  v26 = &v49;
  v17 = v12;
LABEL_19:
  v26[1] = v17;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  if (v25)
  {
    [v14 insertObject:v25 atIndex:0];
  }

LABEL_21:
  v27 = v14;
  if (a7 != 0x7FFFFFFFFFFFFFFFLL && [v14 count] > a7)
  {
    [v14 removeObjectsInRange:{a7, objc_msgSend(v14, "count") - a7}];
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

  if (a6)
  {
    v32 = v16;
    *a6 = v16;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_brailleUIDataDirectory
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(SCROBrailleUIPersistenceManager *)self _cloudDataDirectory];
  v4 = [(SCROBrailleUIPersistenceManager *)self _localDataDirectory];
  v5 = v4;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  if (v7)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v8 fileExistsAtPath:v7]& 1) != 0)
    {
LABEL_8:
      v12 = v7;
      goto LABEL_15;
    }

    v16 = 0;
    v9 = [v8 createDirectoryAtPath:v7 withIntermediateDirectories:1 attributes:0 error:&v16];
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
    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Error creating Braille UI directory URL", buf, 2u);
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
    v5 = [v4 path];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_localDataDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 lastObject];

  v4 = [v3 stringByAppendingPathComponent:@"Accessibility"];
  v5 = [v4 stringByAppendingPathComponent:@"BrailleUI"];

  return v5;
}

- (id)_filePathForCache:(id)a3
{
  v4 = a3;
  v5 = [(SCROBrailleUIPersistenceManager *)self _brailleUIDataDirectory];
  v6 = [v4 stringByAppendingString:@"-cache.plist"];

  v7 = [v5 stringByAppendingPathComponent:v6];

  return v7;
}

- (id)_loadDataFromFile:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  [SCROBrailleUIUtilities tryDownloadingIfNeededForURL:v4];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v5 fileExistsAtPath:v3])
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v3];
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = _SCROD_LOG();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v3;
      _os_log_impl(&dword_26490B000, v7, OS_LOG_TYPE_DEFAULT, "Error loading data from Braille UI repository: %{public}@", &v10, 0xCu);
    }
  }

  v6 = 0;
LABEL_7:

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

@end