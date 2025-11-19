@interface RTDefaultsManager
- (BOOL)_generateDiagnosticFilesAtURL:(id)a3 error:(id *)a4;
- (RTDefaultsManager)init;
- (RTDefaultsManager)initWithUserDefaults:(id)a3 customDomain:(id)a4;
- (id)copyKeyListContainingString:(id)a3;
- (id)objectForKey:(id)a3;
- (id)objectForKey:(id)a3 domain:(id)a4;
- (id)objectForKey:(id)a3 value:(id)a4;
- (void)_shutdownWithHandler:(id)a3;
- (void)addDomain:(id)a3;
- (void)fetchDiagnosticLogsWithHandler:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)notifyUpdatedKeys:(id)a3;
- (void)registerDefault:(id)a3 forKey:(id)a4;
- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 domain:(id)a5;
@end

@implementation RTDefaultsManager

- (RTDefaultsManager)init
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CCAA00] pathInCacheDirectory:@"defaults.plist"];
  v5 = [(RTDefaultsManager *)self initWithUserDefaults:v3 customDomain:v4];

  return v5;
}

- (RTDefaultsManager)initWithUserDefaults:(id)a3 customDomain:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = RTDefaultsManager;
    v9 = [(RTNotifier *)&v13 init];
    p_isa = &v9->super.super.super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_userDefaults, a3);
      if (v8)
      {
        [p_isa[4] addSuiteNamed:v8];
      }
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_shutdownWithHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)registerDefault:(id)a3 forKey:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  userDefaults = self->_userDefaults;
  v10 = a4;
  v11[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [(RTUserDefaults *)userDefaults registerDefaults:v9];
}

- (void)addDomain:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(RTUserDefaults *)self->_userDefaults addSuiteNamed:v4];
    [(RTUserDefaults *)self->_userDefaults rt_refreshDomain:v4];
    v5 = [(RTUserDefaults *)self->_userDefaults rt_copyKeyListForDomain:v4];
    [(RTDefaultsManager *)self notifyUpdatedKeys:v5];
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "[RTDefaultsManager addDomain:]";
      v9 = 1024;
      v10 = 150;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: domain (in %s:%d)", &v7, 0x12u);
    }
  }
}

- (id)objectForKey:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [(RTUserDefaults *)self->_userDefaults objectForKey:?];
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[RTDefaultsManager objectForKey:]";
      v8 = 1024;
      v9 = 165;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key (in %s:%d)", &v6, 0x12u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    [(RTUserDefaults *)self->_userDefaults setObject:a3 forKey:v6];
    [(RTUserDefaults *)self->_userDefaults rt_synchronize];
    v8 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
    [(RTDefaultsManager *)self notifyUpdatedKeys:v7];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[RTDefaultsManager setObject:forKey:]";
      v11 = 1024;
      v12 = 177;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key (in %s:%d)", buf, 0x12u);
    }
  }
}

- (id)objectForKey:(id)a3 domain:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [(RTUserDefaults *)self->_userDefaults rt_objectForKey:v6 domain:v7];
      goto LABEL_11;
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[RTDefaultsManager objectForKey:domain:]";
      v15 = 1024;
      v16 = 192;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key (in %s:%d)", &v13, 0x12u);
    }

    if (v8)
    {
      goto LABEL_10;
    }
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315394;
    v14 = "[RTDefaultsManager objectForKey:domain:]";
    v15 = 1024;
    v16 = 193;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: domain (in %s:%d)", &v13, 0x12u);
  }

LABEL_10:
  v9 = 0;
LABEL_11:

  return v9;
}

- (void)setObject:(id)a3 forKey:(id)a4 domain:(id)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      [(RTUserDefaults *)self->_userDefaults rt_setObject:v8 forKey:v9 domain:v10];
      [(RTUserDefaults *)self->_userDefaults rt_synchronizeDomain:v11];
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[RTDefaultsManager setObject:forKey:domain:]";
    v16 = 1024;
    v17 = 208;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: key (in %s:%d)", &v14, 0x12u);
  }

  if (!v11)
  {
LABEL_7:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[RTDefaultsManager setObject:forKey:domain:]";
      v16 = 1024;
      v17 = 209;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: domain (in %s:%d)", &v14, 0x12u);
    }
  }

LABEL_10:
}

- (void)notifyUpdatedKeys:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__RTDefaultsManager_notifyUpdatedKeys___block_invoke;
    v6[3] = &unk_2788C4A70;
    v7 = v4;
    v8 = self;
    dispatch_async(v5, v6);
  }
}

void __39__RTDefaultsManager_notifyUpdatedKeys___block_invoke(uint64_t a1)
{
  v2 = [[RTDefaultsManagerNotificationDefaultsChanged alloc] initWithUpdatedKeys:*(a1 + 32)];
  [*(a1 + 40) postNotification:v2];
}

- (id)copyKeyListContainingString:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(RTUserDefaults *)self->_userDefaults dictionaryRepresentation];
    v6 = [v5 allKeys];
    v7 = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 containsString:{v4, v15}])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keySubstring", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)objectForKey:(id)a3 value:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(RTDefaultsManager *)self objectForKey:v7];
  if (!v9)
  {
    v9 = v8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDefaults);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, key, %@, value, %@", &v13, 0x20u);
    }
  }

  return v9;
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTDefaultsManagerNotificationDefaultsChanged];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDefaults);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = 138412802;
      v13 = v11;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@, observer, %@", &v12, 0x20u);
    }
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[(RTNotification *)RTDefaultsManagerNotificationDefaultsChanged];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityDefaults);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      v12 = 138412802;
      v13 = v11;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, unsupported notification, %@, observer, %@", &v12, 0x20u);
    }
  }
}

- (BOOL)_generateDiagnosticFilesAtURL:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = [a3 path];
  v8 = [MEMORY[0x277CCAA00] routinePreferencesPath];
  v9 = [v7 stringByAppendingPathComponent:v8];

  v10 = [v9 stringByDeletingLastPathComponent];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  if (v12)
  {
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@ %@, creating destination directory, %@", buf, 0x20u);
    }
  }

  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v27 = 0;
  v18 = [v17 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v27];
  v19 = v27;

  if (v18 && !v19)
  {
LABEL_8:
    v19 = [(RTUserDefaults *)self->_userDefaults dictionaryRepresentation];
    [v19 writeToFile:v9 atomically:0];
    v20 = 1;
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      *buf = 138413058;
      v29 = v25;
      v30 = 2112;
      v31 = v26;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v19;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@ %@, failed to create directory, %@, error, %@", buf, 0x2Au);
    }

    if (a4)
    {
      v23 = v19;
      v20 = 0;
      *a4 = v19;
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

- (void)sendDiagnosticsToURL:(id)a3 options:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTDefaultsManager_sendDiagnosticsToURL_options_handler___block_invoke;
  block[3] = &unk_2788C47F8;
  v19 = v11;
  v20 = a2;
  block[4] = self;
  v17 = v10;
  v18 = v9;
  v13 = v9;
  v14 = v11;
  v15 = v10;
  dispatch_async(v12, block);
}

void __58__RTDefaultsManager_sendDiagnosticsToURL_options_handler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = *(a1 + 40);
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@ %@, options, %@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) hasMask:1])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v18 = 0;
    v9 = [v7 _generateDiagnosticFilesAtURL:v8 error:&v18];
    v10 = v18;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 64));
        v15 = v14;
        v16 = @"NO";
        *buf = 138413058;
        v20 = v13;
        v21 = 2112;
        if (v9)
        {
          v16 = @"YES";
        }

        v22 = v14;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@ %@, success, %@, error, %@", buf, 0x2Au);
      }
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v10);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)fetchDiagnosticLogsWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__RTDefaultsManager_fetchDiagnosticLogsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __52__RTDefaultsManager_fetchDiagnosticLogsWithHandler___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCACA8];
  v3 = [*(a1 + 32) objectForKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastImportDate"];
  v4 = [v3 stringFromDate];
  v5 = [v2 stringWithFormat:@"Last Import Date, %@", v4];
  v11[0] = v5;
  v6 = MEMORY[0x277CCACA8];
  v7 = [*(a1 + 32) objectForKey:@"RTDefaultsPersistenceMirroringManagerBackgroundLastExportDate"];
  v8 = [v7 stringFromDate];
  v9 = [v6 stringWithFormat:@"Last Export Date, %@", v8];
  v11[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  (*(*(a1 + 40) + 16))();
}

@end