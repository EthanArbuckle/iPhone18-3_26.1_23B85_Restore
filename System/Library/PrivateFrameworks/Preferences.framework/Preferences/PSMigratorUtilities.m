@interface PSMigratorUtilities
- (void)_migrateKey:(id)a3 domain:(id)a4 toKey:(id)a5 toDomain:(id)a6 migrateCloud:(BOOL)a7;
@end

@implementation PSMigratorUtilities

- (void)_migrateKey:(id)a3 domain:(id)a4 toKey:(id)a5 toDomain:(id)a6 migrateCloud:(BOOL)a7
{
  v7 = a7;
  v33 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = CFPreferencesCopyAppValue(v11, v12);
  v16 = CFPreferencesCopyAppValue(v13, v14);
  if (v15)
  {
    v17 = _PSLoggingFacility();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v25 = 138412546;
        v26 = v12;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "Removing defunct pref '%@' '%@'", &v25, 0x16u);
      }
    }

    else
    {
      if (v18)
      {
        v25 = 138413058;
        v26 = v12;
        v27 = 2112;
        v28 = v11;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "Migrating pref '%@' '%@' => '%@' '%@'", &v25, 0x2Au);
      }

      CFPreferencesSetAppValue(v13, v15, v14);
    }

    CFPreferencesSetAppValue(v11, 0, v12);
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v7)
  {
    v19 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v12];
    v20 = [v19 objectForKey:v11];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v14];
      v22 = [v21 objectForKey:v13];
      v23 = _PSLoggingFacility();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          v25 = 138412546;
          v26 = v12;
          v27 = 2112;
          v28 = v11;
          _os_log_impl(&dword_18B008000, v23, OS_LOG_TYPE_DEFAULT, "Removing defunct cloud pref '%@' '%@'", &v25, 0x16u);
        }
      }

      else
      {
        if (v24)
        {
          v25 = 138413058;
          v26 = v12;
          v27 = 2112;
          v28 = v11;
          v29 = 2112;
          v30 = v14;
          v31 = 2112;
          v32 = v13;
          _os_log_impl(&dword_18B008000, v23, OS_LOG_TYPE_DEFAULT, "Migrating cloud pref from '%@' '%@' => '%@' %@'", &v25, 0x2Au);
        }

        [v21 setBool:objc_msgSend(v20 forKey:{"BOOLValue"), v13}];
      }

      [v19 removeObjectForKey:v11];
    }
  }
}

@end