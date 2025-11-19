@interface RTPersistenceStore
+ (id)storeBaseName:(id)a3;
- (BOOL)addToCoordinator:(id)a3 lightweightMigration:(BOOL)a4 vacuum:(BOOL)a5 allowMirroring:(BOOL)a6 error:(id *)a7;
- (BOOL)destroyWithCoordinator:(id)a3 error:(id *)a4;
- (BOOL)error:(id *)a3 code:(unint64_t)a4;
- (BOOL)error:(id *)a3 inError:(id)a4;
- (BOOL)openWithCoordinator:(id)a3 configuration:(id)a4 error:(id *)a5;
- (BOOL)rekeyWithCoordinator:(id)a3 keyData:(id)a4 error:(id *)a5;
- (BOOL)removeFromCoordinator:(id)a3 error:(id *)a4;
- (BOOL)removeStoreAtURL:(id)a3 error:(id *)a4;
- (BOOL)updateMetadata:(id)a3 context:(id)a4 coordinator:(id)a5 error:(id *)a6;
- (BOOL)updateMetadata:(id)a3 coordinator:(id)a4 error:(id *)a5;
- (RTPersistenceStore)initWithStoreDescription:(id)a3;
- (id)_normalizeError:(id)a3 storeDescription:(id)a4;
- (id)_validateKeys:(id)a3;
- (id)cachedModelWithError:(id *)a3;
- (id)retrieveMetadataWithCoordinator:(id)a3 error:(id *)a4;
- (id)storeBaseName;
- (id)storeName;
- (id)storeURLsMatchingStoreName;
- (id)storeURLsMatchingStoreNameAtURL:(id)a3;
- (void)dealloc;
- (void)onMirroringDelegateInitialization:(id)a3;
@end

@implementation RTPersistenceStore

- (RTPersistenceStore)initWithStoreDescription:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 shouldAddStoreAsynchronously])
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
      v12 = [MEMORY[0x277CBEB38] dictionary];
      userInfo = v9->_userInfo;
      v9->_userInfo = v12;

      v9->_mirroringDelegateState = 0;
    }

    self = v9;
    v14 = self;
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: storeDescription", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RTPersistenceStore;
  [(RTPersistenceStore *)&v4 dealloc];
}

- (id)storeName
{
  v2 = [(NSPersistentStoreDescription *)self->_storeDescription URL];
  v3 = [v2 lastPathComponent];

  return v3;
}

- (BOOL)error:(id *)a3 code:(unint64_t)a4
{
  if (a3)
  {
    *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:a4 userInfo:0];
  }

  return 0;
}

- (BOOL)error:(id *)a3 inError:(id)a4
{
  v4 = a4;
  if (a3 && a4)
  {
    v4 = a4;
    *a3 = v4;
  }

  return v4 == 0;
}

- (id)_normalizeError:(id)a3 storeDescription:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 domain];
  v8 = *MEMORY[0x277CBE2C8];
  v9 = [v7 isEqualToString:*MEMORY[0x277CBE2C8]];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code")}];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [v5 userInfo];
    v10 = [v12 objectForKeyedSubscript:v8];

    if (v10)
    {
LABEL_3:
      v11 = [v10 intValue];
      if (v11 != 11)
      {
        if (v11 != 23)
        {
          if (v11 == 26)
          {
            goto LABEL_16;
          }

          goto LABEL_13;
        }

LABEL_17:
        v28 = MEMORY[0x277CCACA8];
        v29 = [v6 URL];
        v30 = [v29 path];
        v19 = [v28 stringWithFormat:@"Unable to add persistent store, %@, reason, unavailable", v30];

        v20 = 1;
        goto LABEL_18;
      }

LABEL_16:
      v25 = MEMORY[0x277CCACA8];
      v26 = [v6 URL];
      v27 = [v26 path];
      v19 = [v25 stringWithFormat:@"Unable to add persistent store, %@, reason, corrupt", v27];

      v20 = 3;
      goto LABEL_18;
    }
  }

  v13 = [v5 domain];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCA050]];

  if (v14)
  {
    v15 = [v5 code];
    switch(v15)
    {
      case 259:
        goto LABEL_16;
      case 134090:
        goto LABEL_17;
      case 134100:
        v16 = MEMORY[0x277CCACA8];
        v17 = [v6 URL];
        v18 = [v17 path];
        v19 = [v16 stringWithFormat:@"Unable to add persistent store, %@, reason, incompatible", v18];

        v20 = 2;
        goto LABEL_18;
    }
  }

LABEL_13:
  v21 = MEMORY[0x277CCACA8];
  v22 = [v6 URL];
  v23 = [v22 path];
  v19 = [v21 stringWithFormat:@"Unable to add persistent store, %@, error, %@", v23, v5];

  v24 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v35 = v19;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
  }

  v20 = 0;
LABEL_18:
  v31 = objc_opt_new();
  [v31 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCA450]];
  [v31 setObject:v5 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:v20 userInfo:v31];

  return v32;
}

- (BOOL)openWithCoordinator:(id)a3 configuration:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 name];
  [(NSPersistentStoreDescription *)self->_storeDescription setConfiguration:v10];

  v11 = [v9 isReadOnly];
  [(NSPersistentStoreDescription *)self->_storeDescription setReadOnly:v11];
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
          v15 = [(RTPersistenceStore *)self storeName];
          *buf = 138412290;
          v33 = v15;
          _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "store, %@, running migrator", buf, 0xCu);
        }

        migrator = self->_migrator;
      }

      v16 = [(RTPersistenceMigrator *)migrator run];
      if (v16 <= 1)
      {
        if (!v16)
        {
          v18 = self;
          v19 = a5;
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
    v18 = self;
    v19 = a5;
    v20 = 0;
LABEL_17:
    v17 = [(RTPersistenceStore *)v18 error:v19 code:v20];
    goto LABEL_40;
  }

LABEL_15:
  if (state == 4)
  {
    goto LABEL_16;
  }

LABEL_20:
  v31 = 0;
  v21 = [(RTPersistenceStore *)self addToCoordinator:v8 lightweightMigration:0 vacuum:0 allowMirroring:1 error:&v31];
  v22 = v31;
  v23 = v22;
  v17 = v22 == 0;
  if (!v21 || v22)
  {
    v25 = [v22 code];
    if ((v25 - 2) >= 2 && v25)
    {
      if (v25 != 1 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      p_super = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        v26 = [(RTPersistenceStore *)self storeName];
        *buf = 138412290;
        v33 = v26;
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
          v28 = [(RTPersistenceStore *)self storeName];
          *buf = 138412290;
          v33 = v28;
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
  if (a5)
  {
    v29 = v23;
    *a5 = v23;
  }

LABEL_40:
  return v17;
}

- (BOOL)addToCoordinator:(id)a3 lightweightMigration:(BOOL)a4 vacuum:(BOOL)a5 allowMirroring:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v49 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = [(RTPersistenceStore *)self storeDescription];
  v15 = [v14 shouldAddStoreAsynchronously];

  if (v15)
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

  v17 = [(RTPersistenceStore *)self storeDescription];
  v18 = [v17 shouldAddStoreAsynchronously];

  if (v18)
  {
    v19 = [(RTPersistenceStore *)self storeDescription];
    [v19 setShouldAddStoreAsynchronously:0];
  }

  v20 = [(RTPersistenceStore *)self storeDescription];
  v21 = [v20 copy];

  [v21 setShouldMigrateStoreAutomatically:v10];
  [v21 setShouldInferMappingModelAutomatically:v10];
  [v21 setValue:&unk_28459F1B0 forPragmaNamed:@"cache_spill"];
  if (v8)
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

      v24 = [MEMORY[0x277CCAB98] defaultCenter];
      [v24 addObserver:self selector:sel_onMirroringDelegateInitialization_ name:@"NSPersistentCloudKitContainerEventChangedNotification" object:0];

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

  if (v9)
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
  [v13 addPersistentStoreWithDescription:v21 completionHandler:v40];
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
  v34 = [(RTPersistenceStore *)self error:a7 inError:v33];
  _Block_object_dispose(buf, 8);

  return v34;
}

- (BOOL)removeStoreAtURL:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v30 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "remove store at URL, %@", buf, 0xCu);
      }
    }

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = 0;
    [v8 removeItemAtURL:v6 error:&v28];
    v9 = v28;

    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = MEMORY[0x277CBEBC0];
    v12 = [v6 path];
    v13 = [v12 stringByAppendingString:@"-wal"];
    v14 = [v11 fileURLWithPath:v13];
    v27 = 0;
    [v10 removeItemAtURL:v14 error:&v27];
    v15 = v27;

    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = MEMORY[0x277CBEBC0];
    v18 = [v6 path];
    v19 = [v18 stringByAppendingString:@"-shm"];
    v20 = [v17 fileURLWithPath:v19];
    v26 = 0;
    [v16 removeItemAtURL:v20 error:&v26];
    v21 = v26;

    v22 = _RTSafeArray();

    v23 = _RTMultiErrorCreate();

    v24 = [(RTPersistenceStore *)self error:a4 inError:v23, v15, v21, 1];
  }

  else
  {
    v24 = 1;
  }

  return v24;
}

- (BOOL)removeFromCoordinator:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(RTPersistenceStore *)self storeDescription];
  v9 = [v8 URL];
  v10 = [v7 persistentStoreForURL:v9];

  if (v10)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "remove from coordinator, %@", buf, 0xCu);
      }
    }

    v21 = 0;
    v12 = [v7 removePersistentStore:v10 error:&v21];
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

      v15 = [(RTPersistenceStore *)self _normalizeError:v14 storeDescription:v8];
    }

    mirroringDelegate = self->_mirroringDelegate;
    self->_mirroringDelegate = 0;

    v18 = [(RTPersistenceStore *)self error:a4 inError:v15];
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (BOOL)destroyWithCoordinator:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [(RTPersistenceStore *)self storeDescription];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "destroy with coordinator, %@", buf, 0xCu);
    }
  }

  v10 = [v8 URL];
  v11 = [v8 type];
  v12 = [v8 options];
  v21 = 0;
  v13 = [v7 destroyPersistentStoreAtURL:v10 withType:v11 options:v12 error:&v21];

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

    v15 = [(RTPersistenceStore *)self _normalizeError:v14 storeDescription:v8];
  }

  mirroringDelegate = self->_mirroringDelegate;
  self->_mirroringDelegate = 0;

  v18 = [(RTPersistenceStore *)self error:a4 inError:v15];
  return v18;
}

- (BOOL)rekeyWithCoordinator:(id)a3 keyData:(id)a4 error:(id *)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: coordinator", buf, 2u);
    }

    if (a5)
    {
      v23 = @"coordinator";
LABEL_21:
      _RTErrorInvalidParameterCreate(v23);
      *a5 = v21 = 0;
      goto LABEL_23;
    }

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  if (!v10)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: keyData", buf, 2u);
    }

    if (a5)
    {
      v23 = @"keyData";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  aSelector = a2;
  v12 = [(RTPersistenceStore *)self storeDescription];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "rekey with coordinator, %@", buf, 0xCu);
    }
  }

  v14 = [v12 URL];
  v15 = [v12 type];
  v16 = [v12 options];
  v28 = 0;
  v17 = [v9 _rekeyPersistentStoreAtURL:v14 type:v15 options:v16 withKey:v11 error:&v28];
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

    v19 = [(RTPersistenceStore *)self _normalizeError:v18 storeDescription:v12];
  }

  v21 = [(RTPersistenceStore *)self error:a5 inError:v19];

LABEL_23:
  return v21;
}

- (id)cachedModelWithError:(id *)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = [(RTPersistenceStore *)self storeDescription];
  v7 = MEMORY[0x277CBE4D0];
  v8 = [v6 URL];
  v9 = [v6 options];
  v19 = 0;
  v10 = [v7 cachedModelForPersistentStoreWithURL:v8 options:v9 error:&v19];
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

    v12 = [(RTPersistenceStore *)self _normalizeError:v11 storeDescription:v6];
  }

  if ([(RTPersistenceStore *)self error:a3 inError:v12])
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

- (id)_validateKeys:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)retrieveMetadataWithCoordinator:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
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
      v10 = [v9 lastPathComponent];
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "retrieving metadata of store %@", buf, 0xCu);
    }
  }

  if (v6)
  {
    v11 = [(RTPersistenceStore *)self URL];
    v12 = [v6 persistentStoreForURL:v11];

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
        v15 = [v14 lastPathComponent];
        *buf = 138412290;
        v25 = v15;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "Coordinator did not have any persistent stores with URL %@, adding store", buf, 0xCu);
      }
    }

    v21 = 0;
    v16 = [(RTPersistenceStore *)self addToCoordinator:v6 lightweightMigration:0 vacuum:0 allowMirroring:0 error:&v21];
    v17 = v21;
    if (v16 && !v17)
    {
LABEL_17:
      v18 = [v6 metadataForPersistentStore:v12];
    }

    else
    {
      if (a4)
      {
        v17 = v17;
        *a4 = v17;
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

    if (!a4)
    {
      v18 = 0;
      goto LABEL_27;
    }

    v22 = *MEMORY[0x277CCA450];
    v23 = @"Must pass a valid non-nil coordinator.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:1 userInfo:v12];
    *a4 = v18 = 0;
  }

LABEL_27:

  return v18;
}

- (BOOL)updateMetadata:(id)a3 context:(id)a4 coordinator:(id)a5 error:(id *)a6
{
  v72[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [(RTPersistenceStore *)self URL];
      v15 = [v14 lastPathComponent];
      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "updating metadata %@ of store %@", buf, 0x16u);
    }
  }

  if (!v10)
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

  if (!v11)
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

  if (!v12)
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

  if ([v10 count])
  {
    if (v11)
    {
      if (v12)
      {
        if ([MEMORY[0x277CCAC58] propertyList:v10 isValidForFormat:200])
        {
          v19 = [v10 allKeys];
          v20 = [(RTPersistenceStore *)self _validateKeys:v19];

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

            if (a6)
            {
              v65 = *MEMORY[0x277CCA450];
              v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Trying to update store metadata with keys that are not owned by you.  Keys: %@", v20];
              v66 = v23;
              v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];

              [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:v24];
              *a6 = v25 = 0;
LABEL_63:

              goto LABEL_64;
            }

            v25 = 0;
LABEL_64:

            goto LABEL_65;
          }

          v30 = [(RTPersistenceStore *)self URL];
          v31 = [v12 persistentStoreForURL:v30];

          if (!v31)
          {
            v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              v44 = [(RTPersistenceStore *)self URL];
              v45 = [v44 lastPathComponent];
              *buf = 138412802;
              *&buf[4] = v45;
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
              v47 = [v46 lastPathComponent];
              *buf = 138412290;
              *&buf[4] = v47;
              _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Coordinator did not have any persistent stores with URL %@, returning nil", buf, 0xCu);
            }

            if (a6)
            {
              v63 = *MEMORY[0x277CCA450];
              v36 = MEMORY[0x277CCACA8];
              v37 = [(RTPersistenceStore *)self URL];
              v38 = [v37 lastPathComponent];
              v39 = [v36 stringWithFormat:@"Coordinator did not have any persistent stores with URL %@", v38];
              v64 = v39;
              v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];

              *a6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:v40];
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
          v49 = v12;
          v53 = buf;
          v50 = v10;
          v24 = v31;
          v51 = v24;
          v52 = v11;
          v54 = &v55;
          [v49 performBlockAndWait:v48];
          if (*(v56 + 24) == 1 && !*(*&buf[8] + 40))
          {
            v25 = 1;
            goto LABEL_62;
          }

          if (a6)
          {
            v32 = [*(*&buf[8] + 40) domain];
            v33 = [v32 isEqualToString:@"RTPersistenceErrorDomain"];

            if (v33)
            {
              v25 = 0;
              *a6 = *(*&buf[8] + 40);
LABEL_62:

              _Block_object_dispose(&v55, 8);
              _Block_object_dispose(buf, 8);

              goto LABEL_63;
            }

            v41 = MEMORY[0x277CCA9B8];
            v42 = [*(*&buf[8] + 40) userInfo];
            *a6 = [v41 errorWithDomain:@"RTPersistenceErrorDomain" code:0 userInfo:v42];
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

        if (a6)
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

      if (a6)
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

      if (a6)
      {
        v71 = *MEMORY[0x277CCA450];
        v72[0] = @"Must pass a valid non-nil context.";
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
        v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:1 userInfo:v20];
LABEL_43:
        v25 = 0;
        *a6 = v27;
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

- (BOOL)updateMetadata:(id)a3 coordinator:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBE440];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithConcurrencyType:1];
  [v11 setPersistentStoreCoordinator:v9];
  v12 = [MEMORY[0x277CCAC38] processInfo];
  v13 = [v12 processName];
  [v11 setTransactionAuthor:v13];

  LOBYTE(a5) = [(RTPersistenceStore *)self updateMetadata:v10 context:v11 coordinator:v9 error:a5];
  return a5;
}

- (void)onMirroringDelegateInitialization:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 name];
      v19 = 138412290;
      v20 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "onMirroringDelegateInitialization: notification name, %@", &v19, 0xCu);
    }
  }

  v7 = [v4 name];
  v8 = [v7 isEqual:@"NSPersistentCloudKitContainerEventChangedNotification"];

  if (v8)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x277CBE1F8]];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v4 name];
        v19 = 138412546;
        v20 = v12;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "notification name, %@, event, %@", &v19, 0x16u);
      }
    }

    if ([v10 type])
    {
      goto LABEL_22;
    }

    v13 = [v10 endDate];

    if (!v13)
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
    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = [v4 userInfo];
    [v17 postNotificationName:v16 object:self userInfo:v18];

LABEL_22:
  }
}

- (id)storeURLsMatchingStoreName
{
  v3 = [(RTPersistenceStore *)self URL];
  v4 = [(RTPersistenceStore *)self storeURLsMatchingStoreNameAtURL:v3];

  return v4;
}

- (id)storeURLsMatchingStoreNameAtURL:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 hasDirectoryPath];
    v7 = v5;
    v8 = v7;
    v9 = v7;
    if ((v6 & 1) == 0)
    {
      v9 = [v7 URLByDeletingLastPathComponent];
    }

    v10 = [MEMORY[0x277CCAA00] sortedContentsOfDirectoryAtURL:v9 withExtension:@"sqlite"];
    v11 = MEMORY[0x277CCAC30];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __54__RTPersistenceStore_storeURLsMatchingStoreNameAtURL___block_invoke;
    v18 = &unk_2788CF288;
    v19 = self;
    v20 = v8;
    v12 = [v11 predicateWithBlock:&v15];
    v13 = [v10 filteredArrayUsingPredicate:{v12, v15, v16, v17, v18, v19}];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fileSystemURL", buf, 2u);
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

+ (id)storeBaseName:(id)a3
{
  if (a3)
  {
    v3 = [a3 lastPathComponent];
    v4 = [v3 stringByDeletingPathExtension];
    v5 = [v4 rangeOfString:@"-V"];
    v7 = v6;

    if (v5 != 0x7FFFFFFFFFFFFFFFLL || v7)
    {
      v8 = [v3 substringWithRange:{0, v5}];
    }

    else
    {
      v8 = [v3 stringByDeletingPathExtension];
    }

    v10 = v8;
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