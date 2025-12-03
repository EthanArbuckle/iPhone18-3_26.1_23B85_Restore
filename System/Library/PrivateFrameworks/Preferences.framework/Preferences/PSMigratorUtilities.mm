@interface PSMigratorUtilities
- (void)_migrateKey:(id)key domain:(id)domain toKey:(id)toKey toDomain:(id)toDomain migrateCloud:(BOOL)cloud;
@end

@implementation PSMigratorUtilities

- (void)_migrateKey:(id)key domain:(id)domain toKey:(id)toKey toDomain:(id)toDomain migrateCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  v33 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  domainCopy = domain;
  toKeyCopy = toKey;
  toDomainCopy = toDomain;
  v15 = CFPreferencesCopyAppValue(keyCopy, domainCopy);
  v16 = CFPreferencesCopyAppValue(toKeyCopy, toDomainCopy);
  if (v15)
  {
    v17 = _PSLoggingFacility();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        v25 = 138412546;
        v26 = domainCopy;
        v27 = 2112;
        v28 = keyCopy;
        _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "Removing defunct pref '%@' '%@'", &v25, 0x16u);
      }
    }

    else
    {
      if (v18)
      {
        v25 = 138413058;
        v26 = domainCopy;
        v27 = 2112;
        v28 = keyCopy;
        v29 = 2112;
        v30 = toDomainCopy;
        v31 = 2112;
        v32 = toKeyCopy;
        _os_log_impl(&dword_18B008000, v17, OS_LOG_TYPE_DEFAULT, "Migrating pref '%@' '%@' => '%@' '%@'", &v25, 0x2Au);
      }

      CFPreferencesSetAppValue(toKeyCopy, v15, toDomainCopy);
    }

    CFPreferencesSetAppValue(keyCopy, 0, domainCopy);
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (cloudCopy)
  {
    v19 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:domainCopy];
    v20 = [v19 objectForKey:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:toDomainCopy];
      v22 = [v21 objectForKey:toKeyCopy];
      v23 = _PSLoggingFacility();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          v25 = 138412546;
          v26 = domainCopy;
          v27 = 2112;
          v28 = keyCopy;
          _os_log_impl(&dword_18B008000, v23, OS_LOG_TYPE_DEFAULT, "Removing defunct cloud pref '%@' '%@'", &v25, 0x16u);
        }
      }

      else
      {
        if (v24)
        {
          v25 = 138413058;
          v26 = domainCopy;
          v27 = 2112;
          v28 = keyCopy;
          v29 = 2112;
          v30 = toDomainCopy;
          v31 = 2112;
          v32 = toKeyCopy;
          _os_log_impl(&dword_18B008000, v23, OS_LOG_TYPE_DEFAULT, "Migrating cloud pref from '%@' '%@' => '%@' %@'", &v25, 0x2Au);
        }

        [v21 setBool:objc_msgSend(v20 forKey:{"BOOLValue"), toKeyCopy}];
      }

      [v19 removeObjectForKey:keyCopy];
    }
  }
}

@end