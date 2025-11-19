@interface TVRCFeatures
+ (void)_deleteGlobalPrefs;
@end

@implementation TVRCFeatures

+ (void)_deleteGlobalPrefs
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = _TVRCGeneralLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v2, OS_LOG_TYPE_DEFAULT, "Deleting keys from GlobalPrefs", buf, 2u);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [&unk_287E66CD0 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(&unk_287E66CD0);
        }

        CFPreferencesSetAppValue(*(*(&v9 + 1) + 8 * v6++), 0, @".GlobalPreferences");
      }

      while (v4 != v6);
      v4 = [&unk_287E66CD0 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }

  if (!CFPreferencesAppSynchronize(*MEMORY[0x277CBF008]))
  {
    v7 = _TVRCGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[(TVRCFeatures *)v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end