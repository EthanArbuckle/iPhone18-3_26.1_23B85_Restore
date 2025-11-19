@interface PHAMusicJobReadWriteApplicationPreferences
+ (id)libraryScopedMusicWorkerPreferencesForLibrary:(id)a3;
+ (void)updateLibraryScopedMusicWorkerPreferencesWithEntriesFromDictionary:(id)a3 keysToRemove:(id)a4 photoLibrary:(id)a5;
@end

@implementation PHAMusicJobReadWriteApplicationPreferences

+ (id)libraryScopedMusicWorkerPreferencesForLibrary:(id)a3
{
  v4 = a3;
  v5 = musicPersistentStorageDirectoryURLForLibrary(v4);
  v6 = [v5 URLByAppendingPathComponent:@"PhotoAnalysisMusicPreferences.plist"];

  v7 = a1;
  objc_sync_enter(v7);
  if (v6)
  {
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v6];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v7);

  return v8;
}

+ (void)updateLibraryScopedMusicWorkerPreferencesWithEntriesFromDictionary:(id)a3 keysToRemove:(id)a4 photoLibrary:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = musicPersistentStorageDirectoryURLForLibrary(v10);
  v12 = [v11 URLByAppendingPathComponent:@"PhotoAnalysisMusicPreferences.plist"];

  if (v12)
  {
    v13 = a1;
    objc_sync_enter(v13);
    v14 = [PHAMusicJobReadWriteApplicationPreferences libraryScopedMusicWorkerPreferencesForLibrary:v10];
    v15 = [MEMORY[0x277CBEB38] dictionary];
    if ([v14 count])
    {
      [v15 addEntriesFromDictionary:v14];
    }

    if ([v8 count])
    {
      [v15 addEntriesFromDictionary:v8];
    }

    if ([v9 count])
    {
      [v15 removeObjectsForKeys:v9];
    }

    if (([v15 isEqual:v14] & 1) == 0)
    {
      v24 = 0;
      v16 = [MEMORY[0x277CCAC58] dataWithPropertyList:v15 format:100 options:0 error:&v24];
      v17 = v24;
      v18 = v17;
      if (v16)
      {
        v23 = v17;
        v19 = [v16 writeToURL:v12 options:1073741825 error:&v23];
        v22 = v23;

        if (v19)
        {
          goto LABEL_14;
        }

        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_13);
        }

        v20 = __PXLog_genericOSLog;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v22;
          _os_log_error_impl(&dword_22FA28000, v20, OS_LOG_TYPE_ERROR, "Unable to write library-scoped service preferences for music activity: %{public}@", buf, 0xCu);
          v18 = v22;
        }

        else
        {
LABEL_14:
          v18 = v22;
        }
      }

      else
      {
        if (__PXLog_genericOnceToken != -1)
        {
          dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_10);
        }

        v21 = __PXLog_genericOSLog;
        if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v18;
          _os_log_error_impl(&dword_22FA28000, v21, OS_LOG_TYPE_ERROR, "Unable to serialize library-scoped service preferences for music activity: %{public}@", buf, 0xCu);
        }
      }
    }

    objc_sync_exit(v13);
  }
}

uint64_t __139__PHAMusicJobReadWriteApplicationPreferences_updateLibraryScopedMusicWorkerPreferencesWithEntriesFromDictionary_keysToRemove_photoLibrary___block_invoke_11()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

uint64_t __139__PHAMusicJobReadWriteApplicationPreferences_updateLibraryScopedMusicWorkerPreferencesWithEntriesFromDictionary_keysToRemove_photoLibrary___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

@end