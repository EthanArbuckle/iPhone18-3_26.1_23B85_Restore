@interface RTPersistenceStore
+ (id)storeBaseName:(id)name;
- (BOOL)addToCoordinator:(id)coordinator lightweightMigration:(BOOL)migration vacuum:(BOOL)vacuum allowMirroring:(BOOL)mirroring error:(id *)error;
- (BOOL)destroyWithCoordinator:(id)coordinator error:(id *)error;
- (BOOL)error:(id *)error code:(unint64_t)code;
- (BOOL)error:(id *)error inError:(id)inError;
- (BOOL)openWithCoordinator:(id)coordinator configuration:(id)configuration error:(id *)error;
- (BOOL)rekeyWithCoordinator:(id)coordinator keyData:(id)data error:(id *)error;
- (BOOL)removeFromCoordinator:(id)coordinator error:(id *)error;
- (BOOL)removeStoreAtURL:(id)l error:(id *)error;
- (BOOL)updateMetadata:(id)metadata context:(id)context coordinator:(id)coordinator error:(id *)error;
- (BOOL)updateMetadata:(id)metadata coordinator:(id)coordinator error:(id *)error;
- (RTPersistenceStore)initWithStoreDescription:(id)description;
- (id)_normalizeError:(id)error storeDescription:(id)description;
- (id)_validateKeys:(id)keys;
- (id)cachedModelWithError:(id *)error;
- (id)retrieveMetadataWithCoordinator:(id)coordinator error:(id *)error;
- (id)storeBaseName;
- (id)storeName;
- (id)storeURLsMatchingStoreName;
- (id)storeURLsMatchingStoreNameAtURL:(id)l;
- (void)dealloc;
- (void)onMirroringDelegateInitialization:(id)initialization;
@end

@implementation RTPersistenceStore

- (RTPersistenceStore)initWithStoreDescription:(id)description
{
  v22 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v5 = descriptionCopy;
  if (descriptionCopy)
  {
    if ([descriptionCopy shouldAddStoreAsynchronously])
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[RTPersistenceStore initWithStoreDescription:]";
        v20 = 1024;
        v21 = 51;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !storeDescription.shouldAddStoreAsynchronously (in %s:%d)", buf, 0x12u);
      }
    }

    if ([v5 shouldMigrateStoreAutomatically])
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[RTPersistenceStore initWithStoreDescription:]";
        v20 = 1024;
        v21 = 52;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !storeDescription.shouldMigrateStoreAutomatically (in %s:%d)", buf, 0x12u);
      }
    }

    if ([v5 shouldInferMappingModelAutomatically])
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[RTPersistenceStore initWithStoreDescription:]";
        v20 = 1024;
        v21 = 53;
        _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !storeDescription.shouldInferMappingModelAutomatically (in %s:%d)", buf, 0x12u);
      }
    }

    v17.receiver = self;
    v17.super_class = RTPersistenceStore;
    v9 = [(RTPersistenceStore *)&v17 init];
    if (v9)
    {
      v10 = [v5 copy];
      storeDescription = v9->_storeDescription;
      v9->_storeDescription = v10;

      [(NSPersistentStoreDescription *)v9->_storeDescription setShouldAddStoreAsynchronously:0];
      [(NSPersistentStoreDescription *)v9->_storeDescription setShouldMigrateStoreAutomatically:0];
      [(NSPersistentStoreDescription *)v9->_storeDescription setShouldInferMappingModelAutomatically:0];
      v9->_state = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      userInfo = v9->_userInfo;
      v9->_userInfo = dictionary;

      v9->_mirroringDelegateState = 0;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: storeDescription", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = RTPersistenceStore;
  [(RTPersistenceStore *)&v4 dealloc];
}

- (id)storeName
{
  v2 = [(NSPersistentStoreDescription *)self->_storeDescription URL];
  lastPathComponent = [v2 lastPathComponent];

  return lastPathComponent;
}

- (BOOL)error:(id *)error code:(unint64_t)code
{
  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:code userInfo:0];
  }

  return 0;
}

- (BOOL)error:(id *)error inError:(id)inError
{
  inErrorCopy2 = inError;
  if (error && inError)
  {
    inErrorCopy2 = inError;
    *error = inErrorCopy2;
  }

  return inErrorCopy2 == 0;
}

- (id)_normalizeError:(id)error storeDescription:(id)description
{
  v36 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  descriptionCopy = description;
  domain = [errorCopy domain];
  v8 = *MEMORY[0x277CBE2C8];
  v9 = [domain isEqualToString:*MEMORY[0x277CBE2C8]];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:v8];

    if (v10)
    {
LABEL_3:
      intValue = [v10 intValue];
      if (intValue != 11)
      {
        if (intValue != 23)
        {
          if (intValue == 26)
          {
            goto LABEL_16;
          }

          goto LABEL_13;
        }

LABEL_17:
        v28 = MEMORY[0x277CCACA8];
        v29 = [descriptionCopy URL];
        path = [v29 path];
        errorCopy = [v28 stringWithFormat:@"Unable to add persistent store, %@, reason, unavailable", path];

        v20 = 1;
        goto LABEL_18;
      }

LABEL_16:
      v25 = MEMORY[0x277CCACA8];
      v26 = [descriptionCopy URL];
      path2 = [v26 path];
      errorCopy = [v25 stringWithFormat:@"Unable to add persistent store, %@, reason, corrupt", path2];

      v20 = 3;
      goto LABEL_18;
    }
  }

  domain2 = [errorCopy domain];
  v14 = [domain2 isEqualToString:*MEMORY[0x277CCA050]];

  if (v14)
  {
    code = [errorCopy code];
    switch(code)
    {
      case 259:
        goto LABEL_16;
      case 134090:
        goto LABEL_17;
      case 134100:
        v16 = MEMORY[0x277CCACA8];
        v17 = [descriptionCopy URL];
        path3 = [v17 path];
        errorCopy = [v16 stringWithFormat:@"Unable to add persistent store, %@, reason, incompatible", path3];

        v20 = 2;
        goto LABEL_18;
    }
  }

LABEL_13:
  v21 = MEMORY[0x277CCACA8];
  v22 = [descriptionCopy URL];
  path4 = [v22 path];
  errorCopy = [v21 stringWithFormat:@"Unable to add persistent store, %@, error, %@", path4, errorCopy];

  v24 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = errorCopy;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v20 = 0;
LABEL_18:
  v31 = objc_opt_new();
  [v31 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA450]];
  [v31 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:v20 userInfo:v31];

  return v32;
}

- (BOOL)openWithCoordinator:(id)coordinator configuration:(id)configuration error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  configurationCopy = configuration;
  name = [configurationCopy name];
  [(NSPersistentStoreDescription *)self->_storeDescription setConfiguration:name];

  isReadOnly = [configurationCopy isReadOnly];
  [(NSPersistentStoreDescription *)self->_storeDescription setReadOnly:isReadOnly];
  state = self->_state;
  if (state <= 2)
  {
    self->_state = 1;
    migrator = self->_migrator;
    if (migrator)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          storeName = [(RTPersistenceStore *)self storeName];
          *buf = 138412290;
          v33 = storeName;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "store, %@, running migrator", buf, 0xCu);
        }

        migrator = self->_migrator;
      }

      v16 = [(RTPersistenceMigrator *)migrator run];
      if (v16 <= 1)
      {
        if (!v16)
        {
          selfCopy2 = self;
          errorCopy2 = error;
          v20 = 1;
          goto LABEL_17;
        }

        if (v16 == 1)
        {
          v17 = 0;
          self->_state = 2;
          goto LABEL_40;
        }

LABEL_14:
        state = self->_state;
        goto LABEL_15;
      }

      if (v16 == 2)
      {
        self->_state = 3;
        goto LABEL_20;
      }

      if (v16 != 3)
      {
        goto LABEL_14;
      }
    }

    self->_state = 4;
LABEL_16:
    selfCopy2 = self;
    errorCopy2 = error;
    v20 = 0;
LABEL_17:
    v17 = [(RTPersistenceStore *)selfCopy2 error:errorCopy2 code:v20];
    goto LABEL_40;
  }

LABEL_15:
  if (state == 4)
  {
    goto LABEL_16;
  }

LABEL_20:
  v31 = 0;
  v21 = [(RTPersistenceStore *)self addToCoordinator:coordinatorCopy lightweightMigration:0 vacuum:0 allowMirroring:1 error:&v31];
  v22 = v31;
  v23 = v22;
  v17 = v22 == 0;
  if (!v21 || v22)
  {
    code = [v22 code];
    if ((code - 2) >= 2 && code)
    {
      if (code != 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      p_super = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        storeName2 = [(RTPersistenceStore *)self storeName];
        *buf = 138412290;
        v33 = storeName2;
        _os_log_impl(&dword_2304B3000, p_super, OS_LOG_TYPE_INFO, "store, %@, is currently unavailable", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          storeName3 = [(RTPersistenceStore *)self storeName];
          *buf = 138412290;
          v33 = storeName3;
          _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "store, %@, couldn't be opened", buf, 0xCu);
        }
      }

      p_super = [(RTPersistenceMigrator *)self->_migrator delegate];
      if (objc_opt_respondsToSelector())
      {
        [p_super persistenceStore:self failedWithError:v23];
      }

      self->_state = 4;
    }
  }

  else
  {
    self->_state = 5;
    p_super = &self->_migrator->super;
    self->_migrator = 0;
  }

LABEL_37:
  if (error)
  {
    v29 = v23;
    *error = v23;
  }

LABEL_40:
  return v17;
}

- (BOOL)addToCoordinator:(id)coordinator lightweightMigration:(BOOL)migration vacuum:(BOOL)vacuum allowMirroring:(BOOL)mirroring error:(id *)error
{
  mirroringCopy = mirroring;
  vacuumCopy = vacuum;
  migrationCopy = migration;
  v49 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  storeDescription = [(RTPersistenceStore *)self storeDescription];
  shouldAddStoreAsynchronously = [storeDescription shouldAddStoreAsynchronously];

  if (shouldAddStoreAsynchronously)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTPersistenceStore addToCoordinator:lightweightMigration:vacuum:allowMirroring:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 288;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Expected shouldAddStoreAsynchronously to be NO (in %s:%d)", buf, 0x12u);
    }
  }

  storeDescription2 = [(RTPersistenceStore *)self storeDescription];
  shouldAddStoreAsynchronously2 = [storeDescription2 shouldAddStoreAsynchronously];

  if (shouldAddStoreAsynchronously2)
  {
    storeDescription3 = [(RTPersistenceStore *)self storeDescription];
    [storeDescription3 setShouldAddStoreAsynchronously:0];
  }

  storeDescription4 = [(RTPersistenceStore *)self storeDescription];
  v21 = [storeDescription4 copy];

  [v21 setShouldMigrateStoreAutomatically:migrationCopy];
  [v21 setShouldInferMappingModelAutomatically:migrationCopy];
  [v21 setValue:&unk_28459F1B0 forPragmaNamed:@"cache_spill"];
  if (mirroringCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "allowing mirroring", buf, 2u);
      }
    }

    if (self->_mirroringDelegateOptions)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "mirroring options are set", buf, 2u);
        }
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel_onMirroringDelegateInitialization_ name:@"NSPersistentCloudKitContainerEventChangedNotification" object:0];

      mirroringDelegate = self->_mirroringDelegate;
      if (!mirroringDelegate)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "creating a new mirroring delegate", buf, 2u);
          }
        }

        v27 = [objc_alloc(MEMORY[0x277CBE398]) initWithOptions:self->_mirroringDelegateOptions];
        v28 = self->_mirroringDelegate;
        self->_mirroringDelegate = v27;

        mirroringDelegate = self->_mirroringDelegate;
      }

      [v21 setOption:mirroringDelegate forMirroringKey:*MEMORY[0x277CBE250]];
    }
  }

  if (vacuumCopy)
  {
    [v21 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE2D0]];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "add persistent store with description, %@", buf, 0xCu);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__128;
  v47 = __Block_byref_object_dispose__128;
  v48 = 0;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __88__RTPersistenceStore_addToCoordinator_lightweightMigration_vacuum_allowMirroring_error___block_invoke;
  v40[3] = &unk_2788CF0C8;
  v40[4] = buf;
  [coordinatorCopy addPersistentStoreWithDescription:v21 completionHandler:v40];
  if (*(*&buf[8] + 40))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      v37 = *(*&buf[8] + 40);
      *v41 = 138412546;
      v42 = v36;
      v43 = 2112;
      v44 = v37;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@ failed, error, %@", v41, 0x16u);
    }

    v31 = [(RTPersistenceStore *)self _normalizeError:*(*&buf[8] + 40) storeDescription:v21];
    v32 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v31;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v33 = 0;
      goto LABEL_38;
    }

    v32 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      v38 = NSStringFromSelector(a2);
      v39 = [v21 URL];
      *v41 = 138412546;
      v42 = v38;
      v43 = 2112;
      v44 = v39;
      _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, "%@ success, added, %@", v41, 0x16u);
    }
  }

  v33 = *(*&buf[8] + 40);
LABEL_38:
  v34 = [(RTPersistenceStore *)self error:error inError:v33];
  _Block_object_dispose(buf, 8);

  return v34;
}

- (BOOL)removeStoreAtURL:(id)l error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = lCopy;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "remove store at URL, %@", buf, 0xCu);
      }
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    [defaultManager removeItemAtURL:lCopy error:&v28];
    v9 = v28;

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = MEMORY[0x277CBEBC0];
    path = [lCopy path];
    v13 = [path stringByAppendingString:@"-wal"];
    v14 = [v11 fileURLWithPath:v13];
    v27 = 0;
    [defaultManager2 removeItemAtURL:v14 error:&v27];
    v15 = v27;

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = MEMORY[0x277CBEBC0];
    path2 = [lCopy path];
    v19 = [path2 stringByAppendingString:@"-shm"];
    v20 = [v17 fileURLWithPath:v19];
    v26 = 0;
    [defaultManager3 removeItemAtURL:v20 error:&v26];
    v21 = v26;

    v22 = _RTSafeArray();

    v23 = _RTMultiErrorCreate();

    v24 = [(RTPersistenceStore *)self error:error inError:v23, v15, v21, 1];
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

- (BOOL)removeFromCoordinator:(id)coordinator error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  storeDescription = [(RTPersistenceStore *)self storeDescription];
  v9 = [storeDescription URL];
  v10 = [coordinatorCopy persistentStoreForURL:v9];

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = storeDescription;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "remove from coordinator, %@", buf, 0xCu);
      }
    }

    v21 = 0;
    v12 = [coordinatorCopy removePersistentStore:v10 error:&v21];
    v13 = v21;
    v14 = v13;
    if (!v12 || (v15 = 0, v13))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = NSStringFromSelector(a2);
        *buf = 138412546;
        v23 = v20;
        v24 = 2112;
        v25 = v14;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@ failed, error, %@", buf, 0x16u);
      }

      v15 = [(RTPersistenceStore *)self _normalizeError:v14 storeDescription:storeDescription];
    }

    mirroringDelegate = self->_mirroringDelegate;
    self->_mirroringDelegate = 0;

    v18 = [(RTPersistenceStore *)self error:error inError:v15];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)destroyWithCoordinator:(id)coordinator error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  storeDescription = [(RTPersistenceStore *)self storeDescription];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = storeDescription;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "destroy with coordinator, %@", buf, 0xCu);
    }
  }

  v10 = [storeDescription URL];
  type = [storeDescription type];
  options = [storeDescription options];
  v21 = 0;
  v13 = [coordinatorCopy destroyPersistentStoreAtURL:v10 withType:type options:options error:&v21];

  v14 = v21;
  if (!v13 || (v15 = 0, v14))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = NSStringFromSelector(a2);
      *buf = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v14;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "%@ failed, error, %@", buf, 0x16u);
    }

    v15 = [(RTPersistenceStore *)self _normalizeError:v14 storeDescription:storeDescription];
  }

  mirroringDelegate = self->_mirroringDelegate;
  self->_mirroringDelegate = 0;

  v18 = [(RTPersistenceStore *)self error:error inError:v15];
  return v18;
}

- (BOOL)rekeyWithCoordinator:(id)coordinator keyData:(id)data error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  dataCopy = data;
  v11 = dataCopy;
  if (!coordinatorCopy)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: coordinator", buf, 2u);
    }

    if (error)
    {
      v23 = @"coordinator";
LABEL_21:
      _RTErrorInvalidParameterCreate(v23);
      *error = v21 = 0;
      goto LABEL_23;
    }

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  if (!dataCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyData", buf, 2u);
    }

    if (error)
    {
      v23 = @"keyData";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  aSelector = a2;
  storeDescription = [(RTPersistenceStore *)self storeDescription];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = storeDescription;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "rekey with coordinator, %@", buf, 0xCu);
    }
  }

  v14 = [storeDescription URL];
  type = [storeDescription type];
  options = [storeDescription options];
  v28 = 0;
  v17 = [coordinatorCopy _rekeyPersistentStoreAtURL:v14 type:type options:options withKey:v11 error:&v28];
  v18 = v28;

  if (!v17 || (v19 = 0, v18))
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v26 = NSStringFromSelector(aSelector);
      *buf = 138412546;
      v30 = v26;
      v31 = 2112;
      v32 = v18;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "%@ failed, error, %@", buf, 0x16u);
    }

    v19 = [(RTPersistenceStore *)self _normalizeError:v18 storeDescription:storeDescription];
  }

  v21 = [(RTPersistenceStore *)self error:error inError:v19];

LABEL_23:
  return v21;
}

- (id)cachedModelWithError:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  storeDescription = [(RTPersistenceStore *)self storeDescription];
  v7 = MEMORY[0x277CBE4D0];
  v8 = [storeDescription URL];
  options = [storeDescription options];
  v19 = 0;
  v10 = [v7 cachedModelForPersistentStoreWithURL:v8 options:options error:&v19];
  v11 = v19;

  v12 = 0;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      v21 = v18;
      v22 = 2112;
      v23 = v11;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@ failed, error, %@", buf, 0x16u);
    }

    v12 = [(RTPersistenceStore *)self _normalizeError:v11 storeDescription:storeDescription];
  }

  if ([(RTPersistenceStore *)self error:error inError:v12])
  {
    v15 = v10;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (id)_validateKeys:(id)keys
{
  v17 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = keysCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 hasPrefix:{@"RT", v12}] & 1) == 0)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return array;
}

- (id)retrieveMetadataWithCoordinator:(id)coordinator error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  if (!coordinatorCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTPersistenceStore retrieveMetadataWithCoordinator:error:]";
      v26 = 1024;
      v27 = 489;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: coordinator (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(RTPersistenceStore *)self URL];
      lastPathComponent = [v9 lastPathComponent];
      *buf = 138412290;
      v25 = lastPathComponent;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "retrieving metadata of store %@", buf, 0xCu);
    }
  }

  if (coordinatorCopy)
  {
    v11 = [(RTPersistenceStore *)self URL];
    v12 = [coordinatorCopy persistentStoreForURL:v11];

    if (v12)
    {
      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(RTPersistenceStore *)self URL];
        lastPathComponent2 = [v14 lastPathComponent];
        *buf = 138412290;
        v25 = lastPathComponent2;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "Coordinator did not have any persistent stores with URL %@, adding store", buf, 0xCu);
      }
    }

    v21 = 0;
    v16 = [(RTPersistenceStore *)self addToCoordinator:coordinatorCopy lightweightMigration:0 vacuum:0 allowMirroring:0 error:&v21];
    v17 = v21;
    if (v16 && !v17)
    {
LABEL_17:
      v18 = [coordinatorCopy metadataForPersistentStore:v12];
    }

    else
    {
      if (error)
      {
        v17 = v17;
        *error = v17;
      }

      v12 = 0;
      v18 = 0;
    }
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Must pass a valid non-nil coordinator, returning nil.", buf, 2u);
    }

    if (!error)
    {
      v18 = 0;
      goto LABEL_27;
    }

    v22 = *MEMORY[0x277CCA450];
    v23 = @"Must pass a valid non-nil coordinator.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:1 userInfo:v12];
    *error = v18 = 0;
  }

LABEL_27:

  return v18;
}

- (BOOL)updateMetadata:(id)metadata context:(id)context coordinator:(id)coordinator error:(id *)error
{
  v72[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  contextCopy = context;
  coordinatorCopy = coordinator;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(RTPersistenceStore *)self URL];
      lastPathComponent = [v14 lastPathComponent];
      *buf = 138412546;
      *&buf[4] = metadataCopy;
      *&buf[12] = 2112;
      *&buf[14] = lastPathComponent;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "updating metadata %@ of store %@", buf, 0x16u);
    }
  }

  if (!metadataCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTPersistenceStore updateMetadata:context:coordinator:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 535;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keysAndValues (in %s:%d)", buf, 0x12u);
    }
  }

  if (!contextCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTPersistenceStore updateMetadata:context:coordinator:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 536;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: context (in %s:%d)", buf, 0x12u);
    }
  }

  if (!coordinatorCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[RTPersistenceStore updateMetadata:context:coordinator:error:]";
      *&buf[12] = 1024;
      *&buf[14] = 537;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: coordinator (in %s:%d)", buf, 0x12u);
    }
  }

  if ([metadataCopy count])
  {
    if (contextCopy)
    {
      if (coordinatorCopy)
      {
        if ([MEMORY[0x277CCAC58] propertyList:metadataCopy isValidForFormat:200])
        {
          allKeys = [metadataCopy allKeys];
          v20 = [(RTPersistenceStore *)self _validateKeys:allKeys];

          if ([v20 count])
          {
            v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              *&buf[4] = v20;
              *&buf[12] = 2080;
              *&buf[14] = "[RTPersistenceStore updateMetadata:context:coordinator:error:]";
              *&buf[22] = 1024;
              LODWORD(v60) = 587;
              _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Trying to update store metadata with keys that are not owned by you.  Keys: %@ (in %s:%d)", buf, 0x1Cu);
            }
          }

          if ([v20 count])
          {
            v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v20;
              _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Error updating metadata, caller passed bad keys, %@", buf, 0xCu);
            }

            if (error)
            {
              v65 = *MEMORY[0x277CCA450];
              v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Trying to update store metadata with keys that are not owned by you.  Keys: %@", v20];
              v66 = v23;
              v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];

              [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:v24];
              *error = v25 = 0;
LABEL_63:

              goto LABEL_64;
            }

            v25 = 0;
LABEL_64:

            goto LABEL_65;
          }

          v30 = [(RTPersistenceStore *)self URL];
          v31 = [coordinatorCopy persistentStoreForURL:v30];

          if (!v31)
          {
            v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v44 = [(RTPersistenceStore *)self URL];
              lastPathComponent2 = [v44 lastPathComponent];
              *buf = 138412802;
              *&buf[4] = lastPathComponent2;
              *&buf[12] = 2080;
              *&buf[14] = "[RTPersistenceStore updateMetadata:context:coordinator:error:]";
              *&buf[22] = 1024;
              LODWORD(v60) = 602;
              _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Coordinator did not have any persistent stores with URL %@ (in %s:%d)", buf, 0x1Cu);
            }

            v35 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v46 = [(RTPersistenceStore *)self URL];
              lastPathComponent3 = [v46 lastPathComponent];
              *buf = 138412290;
              *&buf[4] = lastPathComponent3;
              _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Coordinator did not have any persistent stores with URL %@, returning nil", buf, 0xCu);
            }

            if (error)
            {
              v63 = *MEMORY[0x277CCA450];
              v36 = MEMORY[0x277CCACA8];
              v37 = [(RTPersistenceStore *)self URL];
              lastPathComponent4 = [v37 lastPathComponent];
              v39 = [v36 stringWithFormat:@"Coordinator did not have any persistent stores with URL %@", lastPathComponent4];
              v64 = v39;
              v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];

              *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:v40];
            }

            v24 = 0;
            v25 = 0;
            goto LABEL_63;
          }

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v60 = __Block_byref_object_copy__128;
          v61 = __Block_byref_object_dispose__128;
          v62 = 0;
          v55 = 0;
          v56 = &v55;
          v57 = 0x2020000000;
          v58 = 0;
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __63__RTPersistenceStore_updateMetadata_context_coordinator_error___block_invoke;
          v48[3] = &unk_2788CF260;
          v48[4] = self;
          v49 = coordinatorCopy;
          v53 = buf;
          v50 = metadataCopy;
          v24 = v31;
          v51 = v24;
          v52 = contextCopy;
          v54 = &v55;
          [v49 performBlockAndWait:v48];
          if (*(v56 + 24) == 1 && !*(*&buf[8] + 40))
          {
            v25 = 1;
            goto LABEL_62;
          }

          if (error)
          {
            domain = [*(*&buf[8] + 40) domain];
            v33 = [domain isEqualToString:@"RTPersistenceErrorDomain"];

            if (v33)
            {
              v25 = 0;
              *error = *(*&buf[8] + 40);
LABEL_62:

              _Block_object_dispose(&v55, 8);
              _Block_object_dispose(buf, 8);

              goto LABEL_63;
            }

            v41 = MEMORY[0x277CCA9B8];
            userInfo = [*(*&buf[8] + 40) userInfo];
            *error = [v41 errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:userInfo];
          }

          v25 = 0;
          goto LABEL_62;
        }

        v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "An object or key in the metadata is invalid for serialization to store metadata.", buf, 2u);
        }

        if (error)
        {
          v67 = *MEMORY[0x277CCA450];
          v68 = @"An object or key in the metadata is invalid for serialization to store metadata.";
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:v20];
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      v28 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Error updating metadata, caller must pass a valid non-nil coordinator.", buf, 2u);
      }

      if (error)
      {
        v69 = *MEMORY[0x277CCA450];
        v70 = @"Must pass a valid non-nil coordinator.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:1 userInfo:v20];
        goto LABEL_43;
      }
    }

    else
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Error updating metadata, caller must pass a valid non-nil context.", buf, 2u);
      }

      if (error)
      {
        v71 = *MEMORY[0x277CCA450];
        v72[0] = @"Must pass a valid non-nil context.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:1 userInfo:v20];
LABEL_43:
        v25 = 0;
        *error = v27;
        goto LABEL_64;
      }
    }

LABEL_44:
    v25 = 0;
    goto LABEL_65;
  }

  v25 = 1;
LABEL_65:

  return v25;
}

void __63__RTPersistenceStore_updateMetadata_context_coordinator_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 72) + 8);
  v24 = *(v4 + 40);
  v5 = [v2 retrieveMetadataWithCoordinator:v3 error:&v24];
  objc_storeStrong((v4 + 40), v24);
  v6 = [v5 mutableCopy];

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    [v6 addEntriesFromDictionary:*(a1 + 48)];
    [*(a1 + 40) setMetadata:v6 forPersistentStore:*(a1 + 56)];
    v7 = objc_opt_new();
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__128;
    v22 = __Block_byref_object_dispose__128;
    v23 = 0;
    v8 = *(a1 + 64);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__RTPersistenceStore_updateMetadata_context_coordinator_error___block_invoke_2;
    v12[3] = &unk_2788CC288;
    v16 = &v18;
    v13 = *(a1 + 40);
    v9 = v7;
    v14 = v9;
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v15 = v10;
    v17 = v11;
    [v8 performBlockAndWait:v12];
    *(*(*(a1 + 80) + 8) + 24) = v19[5] != 0;

    _Block_object_dispose(&v18, 8);
  }
}

void __63__RTPersistenceStore_updateMetadata_context_coordinator_error___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 executeRequest:v3 withContext:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)updateMetadata:(id)metadata coordinator:(id)coordinator error:(id *)error
{
  v8 = MEMORY[0x277CBE440];
  coordinatorCopy = coordinator;
  metadataCopy = metadata;
  v11 = [[v8 alloc] initWithConcurrencyType:1];
  [v11 setPersistentStoreCoordinator:coordinatorCopy];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  [v11 setTransactionAuthor:processName];

  LOBYTE(error) = [(RTPersistenceStore *)self updateMetadata:metadataCopy context:v11 coordinator:coordinatorCopy error:error];
  return error;
}

- (void)onMirroringDelegateInitialization:(id)initialization
{
  v23 = *MEMORY[0x277D85DE8];
  initializationCopy = initialization;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      name = [initializationCopy name];
      v19 = 138412290;
      v20 = name;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "onMirroringDelegateInitialization: notification name, %@", &v19, 0xCu);
    }
  }

  name2 = [initializationCopy name];
  v8 = [name2 isEqual:@"NSPersistentCloudKitContainerEventChangedNotification"];

  if (v8)
  {
    userInfo = [initializationCopy userInfo];
    v10 = [userInfo objectForKey:*MEMORY[0x277CBE1F8]];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        name3 = [initializationCopy name];
        v19 = 138412546;
        v20 = name3;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "notification name, %@, event, %@", &v19, 0x16u);
      }
    }

    if ([v10 type])
    {
      goto LABEL_22;
    }

    endDate = [v10 endDate];

    if (!endDate)
    {
      goto LABEL_22;
    }

    if ([v10 succeeded])
    {
      v14 = 1;
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = @"RTPersistenceStoreMirroringDelegateDidInitializeNotificationName";
        goto LABEL_21;
      }

      v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      v14 = 1;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v19) = 0;
        v14 = 1;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "mirroring delegate did initialize", &v19, 2u);
      }

      v16 = @"RTPersistenceStoreMirroringDelegateDidInitializeNotificationName";
    }

    else
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v19) = 0;
        v14 = 2;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "mirroring delegate failed to initialize", &v19, 2u);
        v16 = @"RTPersistenceStoreMirroringDelegateFailedToInitializeNotificationName";
      }

      else
      {
        v16 = @"RTPersistenceStoreMirroringDelegateFailedToInitializeNotificationName";
        v14 = 2;
      }
    }

LABEL_21:
    [(RTPersistenceStore *)self setMirroringDelegateState:v14];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    userInfo2 = [initializationCopy userInfo];
    [defaultCenter postNotificationName:v16 object:self userInfo:userInfo2];

LABEL_22:
  }
}

- (id)storeURLsMatchingStoreName
{
  v3 = [(RTPersistenceStore *)self URL];
  v4 = [(RTPersistenceStore *)self storeURLsMatchingStoreNameAtURL:v3];

  return v4;
}

- (id)storeURLsMatchingStoreNameAtURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    hasDirectoryPath = [lCopy hasDirectoryPath];
    v7 = v5;
    v8 = v7;
    uRLByDeletingLastPathComponent = v7;
    if ((hasDirectoryPath & 1) == 0)
    {
      uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
    }

    v10 = [MEMORY[0x277CCAA00] sortedContentsOfDirectoryAtURL:uRLByDeletingLastPathComponent withExtension:@"sqlite"];
    v11 = MEMORY[0x277CCAC30];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __54__RTPersistenceStore_storeURLsMatchingStoreNameAtURL___block_invoke;
    v18 = &unk_2788CF288;
    selfCopy = self;
    v20 = v8;
    v12 = [v11 predicateWithBlock:&v15];
    v13 = [v10 filteredArrayUsingPredicate:{v12, v15, v16, v17, v18, selfCopy}];
  }

  else
  {
    uRLByDeletingLastPathComponent = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fileSystemURL", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

uint64_t __54__RTPersistenceStore_storeURLsMatchingStoreNameAtURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RTPersistenceStore storeBaseName:v3];
  v5 = [*(a1 + 32) storeBaseName];
  v6 = [v4 isEqualToString:v5];

  if (v6 && ([v3 lastPathComponent], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsString:", @".bak"), v7, (v8 & 1) == 0))
  {
    v10 = [v3 lastPathComponent];
    v11 = [*(a1 + 40) lastPathComponent];
    v12 = [v10 isEqual:v11];

    v9 = v12 ^ 1u;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)storeBaseName
{
  v2 = [(RTPersistenceStore *)self URL];
  v3 = [RTPersistenceStore storeBaseName:v2];

  return v3;
}

+ (id)storeBaseName:(id)name
{
  if (name)
  {
    lastPathComponent = [name lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v5 = [stringByDeletingPathExtension rangeOfString:@"-V"];
    v7 = v6;

    if (v5 != 0x7FFFFFFFFFFFFFFFLL || v7)
    {
      stringByDeletingPathExtension2 = [lastPathComponent substringWithRange:{0, v5}];
    }

    else
    {
      stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];
    }

    v10 = stringByDeletingPathExtension2;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: storeURL", v12, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end