@interface RTPersistenceMigrator
- (RTPersistenceDelegate)delegate;
- (RTPersistenceMigrator)initWithStore:(id)a3 modelProvider:(id)a4 delegate:(id)a5;
- (RTPersistenceModelProvider)modelProvider;
- (RTPersistenceStore)store;
- (id)__findCandidateStoresForImportStepWithStore:(id)a3;
- (id)_coordinatorForModel:(id)a3;
- (unint64_t)__executeImportStepWithSourceStore:(id)a3 sourceCoordinator:(id)a4 destinationStore:(id)a5 destinationCoordinator:(id)a6 model:(id)a7;
- (unint64_t)__prepareImportStepWithSourceStore:(id)a3 sourceCoordinator:(id)a4 destinationStore:(id)a5 destinationCoordinator:(id)a6 model:(id)a7 allowMigration:(BOOL)a8;
- (unint64_t)_executeCacheStep;
- (unint64_t)_executeDestroyStep;
- (unint64_t)_executeImportStep;
- (unint64_t)_executeMigrateStep;
- (unint64_t)_executeOpenStep;
- (unint64_t)_executePrepareStep;
- (unint64_t)_executeRecreateStep;
- (unint64_t)_executeVacuumStep;
- (unint64_t)run;
- (unint64_t)status;
- (void)__cleanupAfterImportWithStore:(id)a3 coordinator:(id)a4;
- (void)_attemptMigration;
- (void)_executeSingleMigrationStep;
@end

@implementation RTPersistenceMigrator

- (RTPersistenceMigrator)initWithStore:(id)a3 modelProvider:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: store";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_14;
  }

  if (!v9)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: modelProvider";
    goto LABEL_13;
  }

  if (!v10)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "Invalid parameter not satisfying: delegate";
      goto LABEL_13;
    }

LABEL_14:

    v14 = 0;
    goto LABEL_15;
  }

  v18.receiver = self;
  v18.super_class = RTPersistenceMigrator;
  v12 = [(RTPersistenceMigrator *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_store, v8);
    objc_storeWeak(&v13->_modelProvider, v9);
    objc_storeWeak(&v13->_delegate, v11);
    v13->_state = 0;
  }

  self = v13;
  v14 = self;
LABEL_15:

  return v14;
}

- (unint64_t)status
{
  if (([(RTPersistenceMigrator *)self state]& 0x8000000000000000) != 0)
  {
    return 1;
  }

  v3 = [(RTPersistenceMigrator *)self state];
  if (v3 == 10)
  {
    return 3;
  }

  else
  {
    return 2 * (v3 == 9);
  }
}

- (unint64_t)run
{
  [(RTPersistenceMigrator *)self _attemptMigration];

  return [(RTPersistenceMigrator *)self status];
}

- (id)_coordinatorForModel:(id)a3
{
  v4 = a3;
  v5 = [(NSPersistentStoreCoordinator *)self->_cachedCoordinator managedObjectModel];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v4];
    cachedCoordinator = self->_cachedCoordinator;
    self->_cachedCoordinator = v7;
  }

  v9 = self->_cachedCoordinator;
  v10 = v9;

  return v9;
}

- (void)_attemptMigration
{
  v22 = *MEMORY[0x277D85DE8];
  if (![(RTPersistenceMigrator *)self status]|| [(RTPersistenceMigrator *)self status]== 1)
  {
    v3 = objc_autoreleasePoolPush();
    self->_state &= ~0x8000000000000000;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_loadWeakRetained(&self->_store);
    if (!v5)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "[RTPersistenceMigrator _attemptMigration]";
        v20 = 1024;
        v21 = 116;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Migrator cannot run without a store. (in %s:%d)", &v18, 0x12u);
      }

      if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:-10000 userInfo:0];
        [WeakRetained persistenceStore:0 failedWithError:v15];
      }

      [(RTPersistenceMigrator *)self setState:10];
      goto LABEL_28;
    }

    v6 = objc_loadWeakRetained(&self->_modelProvider);
    if (v6)
    {
      if (WeakRetained)
      {
        v7 = [MEMORY[0x277CBEAA8] date];
        migrationStartDate = self->_migrationStartDate;
        self->_migrationStartDate = v7;

        if (objc_opt_respondsToSelector())
        {
          [WeakRetained persistenceMigrator:self didStartMigratingStore:v5 withModelProvider:v6];
        }

        do
        {
          v9 = objc_autoreleasePoolPush();
          state = self->_state;
          [(RTPersistenceMigrator *)self _executeSingleMigrationStep];
          v11 = self->_state;
          objc_autoreleasePoolPop(v9);
        }

        while ((v11 & 0x8000000000000000) == 0 && self->_state != state);
        v12 = [MEMORY[0x277CBEAA8] date];
        migrationEndDate = self->_migrationEndDate;
        self->_migrationEndDate = v12;

        if (objc_opt_respondsToSelector())
        {
          [WeakRetained persistenceMigrator:self didFinishMigratingStore:v5 withModelProvider:v6];
        }

        goto LABEL_27;
      }

      v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "[RTPersistenceMigrator _attemptMigration]";
        v20 = 1024;
        v21 = 142;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Migrator cannot run without a delegate. (in %s:%d)", &v18, 0x12u);
      }
    }

    else
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "[RTPersistenceMigrator _attemptMigration]";
        v20 = 1024;
        v21 = 130;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Migrator cannot run without a modelProvider. (in %s:%d)", &v18, 0x12u);
      }

      if (!WeakRetained || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_26;
      }

      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:-9999 userInfo:0];
      [WeakRetained persistenceStore:v5 failedWithError:v17];
    }

LABEL_26:
    [(RTPersistenceMigrator *)self setState:10];
LABEL_27:

LABEL_28:
    objc_autoreleasePoolPop(v3);
  }
}

- (void)_executeSingleMigrationStep
{
  v3 = [(RTPersistenceMigrator *)self state];
  v4 = 0;
  if (v3 <= 4)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          goto LABEL_24;
        }

        v5 = [(RTPersistenceMigrator *)self _executeVacuumStep];
      }

      else
      {
        v5 = [(RTPersistenceMigrator *)self _executeOpenStep];
      }
    }

    else if (v3 == 2)
    {
      v5 = [(RTPersistenceMigrator *)self _executePrepareStep];
    }

    else if (v3 == 3)
    {
      v5 = [(RTPersistenceMigrator *)self _executeCacheStep];
    }

    else
    {
      v5 = [(RTPersistenceMigrator *)self _executeMigrateStep];
    }

    goto LABEL_23;
  }

  if (v3 <= 7)
  {
    if (v3 == 5)
    {
      v5 = [(RTPersistenceMigrator *)self _executeDestroyStep];
    }

    else if (v3 == 6)
    {
      v5 = [(RTPersistenceMigrator *)self _executeRecreateStep];
    }

    else
    {
      v5 = [(RTPersistenceMigrator *)self _executeRekeyStep];
    }

    goto LABEL_23;
  }

  if (v3 == 8)
  {
    v5 = [(RTPersistenceMigrator *)self _executeImportStep];
    goto LABEL_23;
  }

  if (v3 == 9 || v3 == 10)
  {
    v5 = [(RTPersistenceMigrator *)self state];
LABEL_23:
    v4 = v5;
  }

LABEL_24:

  [(RTPersistenceMigrator *)self setState:v4];
}

- (unint64_t)_executeOpenStep
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v5 = objc_loadWeakRetained(&self->_delegate);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [WeakRetained URL];
      v8 = [v7 lastPathComponent];
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "store, %@, migration step, open", buf, 0xCu);
    }
  }

  v9 = objc_loadWeakRetained(&self->_modelProvider);
  v10 = [v9 latestModel];

  v11 = [(RTPersistenceMigrator *)self _coordinatorForModel:v10];
  v19 = 0;
  [WeakRetained addToCoordinator:v11 lightweightMigration:0 vacuum:0 allowMirroring:0 error:&v19];
  v12 = v19;
  v13 = v12;
  if (!v12)
  {
    v15 = 0x8000000000000001;
    goto LABEL_19;
  }

  v14 = [v12 code];
  if (v14 > 1)
  {
    if (v14 != 3)
    {
      if (v14 == 2)
      {
        v15 = 0x8000000000000003;
        goto LABEL_19;
      }

LABEL_16:
      v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = [v13 code];
        *buf = 134218498;
        v21 = v18;
        v22 = 2080;
        v23 = "[RTPersistenceMigrator _executeOpenStep]";
        v24 = 1024;
        v25 = 250;
        _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
      }

      v15 = 0x8000000000000000;
      goto LABEL_19;
    }
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      v15 = 0;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v15 = 0x8000000000000005;
  if (objc_opt_respondsToSelector())
  {
    [v5 persistenceStore:WeakRetained failedWithError:v13];
  }

LABEL_19:

  objc_autoreleasePoolPop(v3);
  return v15;
}

- (unint64_t)_executeVacuumStep
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v5 = objc_loadWeakRetained(&self->_modelProvider);
  v6 = objc_loadWeakRetained(&self->_delegate);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [WeakRetained URL];
      v9 = [v8 lastPathComponent];
      *buf = 138412290;
      v41 = v9;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "store, %@, migration step, vacuum", buf, 0xCu);
    }
  }

  v10 = [v5 latestModel];
  v11 = [(RTPersistenceMigrator *)self _coordinatorForModel:v10];
  v37 = 0;
  v12 = [WeakRetained retrieveMetadataWithCoordinator:v11 error:&v37];
  v13 = v37;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  v15 = [v14 mutableCopy];

  if (!v13)
  {
    v19 = [v15 objectForKeyedSubscript:@"RTPersistentStoreMetadataStoreCorruptKey"];
    v20 = [v19 BOOLValue];

    if (!v20)
    {
      v21 = [v15 objectForKeyedSubscript:@"RTPersistentStoreMetadataStoreTransactionHistorySizeExceededKey"];
      v22 = [v21 BOOLValue];

      if (v22)
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = [(RTPersistenceMigrator *)self store];
        v25 = [v24 storeBaseName];
        v26 = [v23 stringWithFormat:@"Store %@ exceeded maximum transaction history size.", v25];

        v27 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v28 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v41 = v27;
            _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        v38 = *MEMORY[0x277CCA450];
        v39 = v27;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:-9997 userInfo:v29];
        if (objc_opt_respondsToSelector())
        {
          [v6 persistenceStore:WeakRetained failedWithError:v13];
        }
      }

      else
      {
        if (!v6)
        {
          goto LABEL_39;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_39;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_39;
        }

        v31 = [WeakRetained storeBaseName];
        v32 = [v31 isEqualToString:@"Cloud"];

        if (!v32)
        {
          goto LABEL_39;
        }

        v33 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v6 shouldResetCloudStore];
          v35 = @"NO";
          if (v34)
          {
            v35 = @"YES";
          }

          *buf = 138412290;
          v41 = v35;
          _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "force destroy the cloud store for testing only, %@", buf, 0xCu);
        }

        if (![v6 shouldResetCloudStore])
        {
LABEL_39:
          v13 = 0;
          v17 = 8;
          goto LABEL_28;
        }

        [v6 setShouldResetCloudStore:0];
        v13 = 0;
      }

      goto LABEL_27;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:3 userInfo:0];
LABEL_17:
    if (objc_opt_respondsToSelector())
    {
      [v6 persistenceStore:WeakRetained failedWithError:v13];
    }

LABEL_27:
    v17 = 5;
    goto LABEL_28;
  }

  v16 = [v13 code];
  if ((v16 - 2) < 2)
  {
    goto LABEL_17;
  }

  v17 = v16;
  if (v16 == 1)
  {
    goto LABEL_28;
  }

  if (!v16)
  {
    goto LABEL_17;
  }

  v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v36 = [v13 code];
    *buf = 134218498;
    v41 = v36;
    v42 = 2080;
    v43 = "[RTPersistenceMigrator _executeVacuumStep]";
    v44 = 1024;
    v45 = 288;
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
  }

  v17 = 1;
LABEL_28:

  objc_autoreleasePoolPop(v3);
  return v17;
}

- (unint64_t)_executePrepareStep
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = objc_loadWeakRetained(&self->_delegate);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [WeakRetained URL];
      v9 = [v8 lastPathComponent];
      *buf = 138412290;
      v40 = v9;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "store, %@, migration step, prepare", buf, 0xCu);
    }
  }

  v10 = objc_loadWeakRetained(&self->_modelProvider);
  v11 = [v10 latestModel];

  v12 = [(RTPersistenceMigrator *)self _coordinatorForModel:v11];
  v38 = 0;
  v13 = [WeakRetained retrieveMetadataWithCoordinator:v12 error:&v38];
  v14 = v38;
  if (!v14)
  {
    v18 = [v13 objectForKeyedSubscript:@"RTPersistentStoreMetadataAppleIDsKey"];
    if (objc_opt_respondsToSelector())
    {
      v19 = [MEMORY[0x277CBEB98] setWithArray:v18];
      v20 = [v6 store:WeakRetained validateAppleIDs:v19];

      if (v20 == 2)
      {
        v21 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
        [v21 setPersistentStoreCoordinator:v12];
        v22 = [MEMORY[0x277CCAC38] processInfo];
        v23 = [v22 processName];
        [v21 setName:v23];

        v24 = [MEMORY[0x277CCAC38] processInfo];
        v25 = [v24 processName];
        [v21 setTransactionAuthor:v25];

        if ((objc_opt_respondsToSelector() & 1) == 0 || (v37 = 0, v26 = [v6 prepareStore:WeakRetained withContext:v21 error:&v37], v27 = v37, v15 = v27, v26) && !v27)
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __44__RTPersistenceMigrator__executePrepareStep__block_invoke;
          v35[3] = &unk_2788C4EA0;
          v21 = v21;
          v36 = v21;
          [v21 performBlockAndWait:v35];

          v15 = 0;
          v17 = 7;
LABEL_33:

          goto LABEL_34;
        }

        if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v6 persistenceStore:WeakRetained failedWithError:v15];
        }

LABEL_32:
        v17 = 5;
        goto LABEL_33;
      }
    }

    else
    {
      v20 = 1;
    }

    if (!v6 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v15 = 0;
      v17 = 5;
LABEL_34:

      goto LABEL_35;
    }

    if ((v20 - 1) > 3)
    {
      v28 = -9998;
    }

    else
    {
      v28 = qword_230AFE260[v20 - 1];
    }

    v34 = v28;
    v30 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v33 = NSStringFromSelector(a2);
      *buf = 138412546;
      v40 = v33;
      v41 = 2048;
      v42 = v20;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@, failedWithError, %ld", buf, 0x16u);
    }

    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RTPersistenceErrorDomain" code:v34 userInfo:0];
    [v6 persistenceStore:WeakRetained failedWithError:v21];
    v15 = 0;
    goto LABEL_32;
  }

  v15 = v14;
  v16 = [v14 code];
  if ((v16 - 2) >= 2)
  {
    if (v16 != 1)
    {
      if (!v16)
      {
        goto LABEL_9;
      }

      v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v32 = [v15 code];
        *buf = 134218498;
        v40 = v32;
        v41 = 2080;
        v42 = "[RTPersistenceMigrator _executePrepareStep]";
        v43 = 1024;
        v44 = 360;
        _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
      }
    }

    v17 = 2;
    goto LABEL_35;
  }

LABEL_9:
  if (objc_opt_respondsToSelector())
  {
    [v6 persistenceStore:WeakRetained failedWithError:v15];
  }

  v17 = 5;
LABEL_35:

  objc_autoreleasePoolPop(v4);
  return v17;
}

- (unint64_t)_executeCacheStep
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v4 = objc_loadWeakRetained(&self->_modelProvider);
  v5 = objc_loadWeakRetained(&self->_delegate);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [WeakRetained URL];
      v8 = [v7 lastPathComponent];
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "store, %@, migration step, cache", buf, 0xCu);
    }
  }

  v21 = 0;
  v9 = [WeakRetained cachedModelWithError:&v21];
  v10 = v21;
  v11 = v10;
  if (v9)
  {
    v12 = [v4 modelFollowingModel:v9];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v4 latestModel];
    }

    nextModel = self->_nextModel;
    self->_nextModel = v14;

    v16 = 4;
    goto LABEL_16;
  }

  v15 = [v10 code];
  if ((v15 - 2) >= 2)
  {
    if (v15 != 1)
    {
      if (!v15)
      {
        goto LABEL_11;
      }

      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v11 code];
        *buf = 134218498;
        v23 = v20;
        v24 = 2080;
        v25 = "[RTPersistenceMigrator _executeCacheStep]";
        v26 = 1024;
        v27 = 528;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
      }
    }

    v16 = 3;
    goto LABEL_16;
  }

LABEL_11:
  if (objc_opt_respondsToSelector())
  {
    [v5 persistenceStore:WeakRetained failedWithError:v11];
  }

  v16 = 5;
LABEL_16:

  return v16;
}

- (unint64_t)_executeMigrateStep
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v4 = objc_loadWeakRetained(&self->_modelProvider);
  v5 = objc_loadWeakRetained(&self->_delegate);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [WeakRetained URL];
      v8 = [v7 lastPathComponent];
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "store, %@, migration step, migrate", buf, 0xCu);
    }
  }

  if (!self->_nextModel)
  {
    v10 = 0;
    v9 = 0;
    v11 = 1;
    goto LABEL_25;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = v10;
    v13 = v9;
    v9 = [(RTPersistenceMigrator *)self _coordinatorForModel:?];

    v22 = v12;
    v14 = [WeakRetained addToCoordinator:v9 lightweightMigration:1 vacuum:0 allowMirroring:0 error:&v22];
    v10 = v22;

    if ((v14 & 1) == 0)
    {
      break;
    }

    v15 = [v4 modelFollowingModel:self->_nextModel];
    nextModel = self->_nextModel;
    self->_nextModel = v15;

    if (!self->_nextModel)
    {
      goto LABEL_25;
    }
  }

  if (!v10)
  {
    goto LABEL_24;
  }

  v17 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v10;
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "error while adding store to coordinator during migrate step, %@", buf, 0xCu);
  }

  v18 = [v10 code];
  if ((v18 - 2) < 2)
  {
    goto LABEL_17;
  }

  if (v18 == 1)
  {
LABEL_24:
    v11 = 4;
    goto LABEL_25;
  }

  if (v18)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v10 code];
      *buf = 134218498;
      v24 = v21;
      v25 = 2080;
      v26 = "[RTPersistenceMigrator _executeMigrateStep]";
      v27 = 1024;
      v28 = 573;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
    }

    goto LABEL_24;
  }

LABEL_17:
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 persistenceStore:WeakRetained failedWithError:v10];
  }

  v11 = 5;
LABEL_25:

  return v11;
}

- (unint64_t)_executeDestroyStep
{
  v41 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v4 = objc_loadWeakRetained(&self->_delegate);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [WeakRetained URL];
      v7 = [v6 lastPathComponent];
      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "store, %@, migration step, destroy", buf, 0xCu);
    }
  }

  v8 = objc_loadWeakRetained(&self->_modelProvider);
  v9 = [v8 latestModel];

  v10 = [(RTPersistenceMigrator *)self _coordinatorForModel:v9];
  v34 = 0;
  v11 = [WeakRetained removeFromCoordinator:v10 error:&v34];
  v12 = v34;
  v13 = v12;
  if (v11 && !v12)
  {
    if (objc_opt_respondsToSelector())
    {
      v33 = 0;
      [v4 backupPersistenceStore:WeakRetained error:&v33];
      v14 = v33;
      if (v14)
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v14;
          _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "error while backing up store files, %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v32 = 0;
    v18 = [WeakRetained destroyWithCoordinator:v10 error:&v32];
    v19 = v32;
    v20 = v19;
    if (!v18 || v19)
    {
      v21 = [v19 code];
      if ((v21 - 2) >= 2 && v21)
      {
        if (v21 == 1)
        {
          if (objc_opt_respondsToSelector())
          {
            [v4 persistenceStore:WeakRetained failedWithError:v20];
          }
        }

        else
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v30 = [v20 code];
            *buf = 134218498;
            v36 = v30;
            v37 = 2080;
            v38 = "[RTPersistenceMigrator _executeDestroyStep]";
            v39 = 1024;
            v40 = 670;
            _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
          }
        }

        v17 = 5;
      }

      else
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v20;
          _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "error while attempting to destroy with coordinator, %@", buf, 0xCu);
        }

        if (objc_opt_respondsToSelector())
        {
          [v4 persistenceStore:WeakRetained failedWithError:v20];
        }

        v23 = [WeakRetained URL];
        v31 = 0;
        [WeakRetained removeStoreAtURL:v23 error:&v31];
        v24 = v31;

        if (v24 && [v24 code] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v27 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v36 = v24;
            _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "error while forcing file unlink, %@", buf, 0xCu);
          }

          if (objc_opt_respondsToSelector())
          {
            [v4 persistenceStore:WeakRetained failedWithError:v24];
          }

          v17 = 10;
        }

        else
        {
          v17 = 6;
        }
      }
    }

    else
    {
      v17 = 6;
    }

    goto LABEL_49;
  }

  v16 = [v12 code];
  if ((v16 - 2) >= 2)
  {
    if (v16 != 1)
    {
      if (!v16)
      {
        goto LABEL_15;
      }

      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v29 = [v13 code];
        *buf = 134218498;
        v36 = v29;
        v37 = 2080;
        v38 = "[RTPersistenceMigrator _executeDestroyStep]";
        v39 = 1024;
        v40 = 613;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
      }
    }

    v17 = 5;
    goto LABEL_49;
  }

LABEL_15:
  if (objc_opt_respondsToSelector())
  {
    [v4 persistenceStore:WeakRetained failedWithError:v13];
  }

  v17 = 10;
LABEL_49:

  return v17;
}

- (unint64_t)_executeRecreateStep
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v4 = objc_loadWeakRetained(&self->_delegate);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [WeakRetained URL];
      v7 = [v6 lastPathComponent];
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "store, %@, migration step, recreate", buf, 0xCu);
    }
  }

  v8 = objc_loadWeakRetained(&self->_modelProvider);
  v9 = [v8 latestModel];

  v10 = [(RTPersistenceMigrator *)self _coordinatorForModel:v9];
  v29 = 0;
  v11 = [WeakRetained addToCoordinator:v10 lightweightMigration:0 vacuum:0 allowMirroring:0 error:&v29];
  v12 = v29;
  v13 = v12;
  if (v11 && !v12)
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v4 appleIDsForStore:WeakRetained];
      v16 = [v15 allObjects];

      if ([v16 count])
      {
        [v14 setObject:v16 forKeyedSubscript:@"RTPersistentStoreMetadataAppleIDsKey"];
      }
    }

    v28 = 0;
    v17 = [WeakRetained updateMetadata:v14 coordinator:v10 error:&v28];
    v18 = v28;
    v19 = v18;
    if (v17 && !v18)
    {
      v20 = 8;
LABEL_35:

      goto LABEL_36;
    }

    v22 = [v18 code];
    if ((v22 - 2) >= 2)
    {
      if (v22 != 1)
      {
        if (!v22)
        {
          goto LABEL_23;
        }

        v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v27 = [v19 code];
          *buf = 134218498;
          v31 = v27;
          v32 = 2080;
          v33 = "[RTPersistenceMigrator _executeRecreateStep]";
          v34 = 1024;
          v35 = 740;
          _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
        }
      }

      v20 = 6;
      goto LABEL_35;
    }

LABEL_23:
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v4 persistenceStore:WeakRetained failedWithError:v19];
    }

    v20 = 10;
    goto LABEL_35;
  }

  v21 = [v12 code];
  if ((v21 - 2) < 2)
  {
    goto LABEL_17;
  }

  if (v21 == 1)
  {
LABEL_30:
    v20 = 6;
    goto LABEL_36;
  }

  if (v21)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = [v13 code];
      *buf = 134218498;
      v31 = v26;
      v32 = 2080;
      v33 = "[RTPersistenceMigrator _executeRecreateStep]";
      v34 = 1024;
      v35 = 708;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
    }

    goto LABEL_30;
  }

LABEL_17:
  if (objc_opt_respondsToSelector())
  {
    [v4 persistenceStore:WeakRetained failedWithError:v13];
  }

  v20 = 10;
LABEL_36:

  return v20;
}

- (unint64_t)_executeImportStep
{
  v82 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v4 = objc_loadWeakRetained(&self->_modelProvider);
  v5 = [v4 latestModel];
  v6 = [(RTPersistenceMigrator *)self _coordinatorForModel:v5];
  v73 = 0;
  v7 = [WeakRetained retrieveMetadataWithCoordinator:v6 error:&v73];
  v8 = v73;
  if (v8)
  {
    v9 = v8;
    v10 = [v8 code];
    if (v10 >= 4)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v35 = [v9 code];
        *buf = 134218498;
        v77 = v35;
        v78 = 2080;
        v79 = "[RTPersistenceMigrator _executeImportStep]";
        v80 = 1024;
        v81 = 772;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
      }

      v11 = 8;
    }

    else
    {
      v11 = qword_230AFE280[v10];
    }

    goto LABEL_49;
  }

  v12 = [v7 objectForKey:@"RTPersistentStoreMetadataStoreImportKey"];
  v13 = [v12 BOOLValue];

  if ((v13 & 1) == 0)
  {
    v9 = [(RTPersistenceMigrator *)self __findCandidateStoresForImportStepWithStore:WeakRetained];
    if (!v9)
    {
      v11 = 2;
LABEL_50:

      goto LABEL_51;
    }

    v65 = v4;
    v66 = v6;
    v15 = [WeakRetained storeDescription];
    v16 = [v15 copy];

    [v16 setURL:v9];
    v64 = v16;
    v17 = [[RTPersistenceStore alloc] initWithStoreDescription:v16];
    v68 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v5];
    v18 = [WeakRetained storeDescription];
    v19 = [v18 copy];

    v20 = [MEMORY[0x277CCAD78] UUID];
    v21 = [v20 UUIDString];

    v22 = MEMORY[0x277CBEBC0];
    v23 = NSTemporaryDirectory();
    v24 = [v22 fileURLWithPath:v23];
    v62 = v21;
    v25 = [v24 URLByAppendingPathComponent:v21];
    v26 = [v25 URLByAppendingPathExtension:@"sqlite"];
    [v19 setURL:v26];

    v67 = v19;
    v27 = [[RTPersistenceStore alloc] initWithStoreDescription:v19];
    v28 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v5];
    v29 = v17;
    v30 = [(RTPersistenceMigrator *)self __prepareImportStepWithSourceStore:v17 sourceCoordinator:v68 destinationStore:v27 destinationCoordinator:v28 model:v5 allowMigration:1];
    v63 = v17;
    if (v30 != 0x8000000000000008)
    {
      v11 = v30;
      if (v30 == 8)
      {
        v31 = v27;
        v4 = v65;
        v32 = v68;
      }

      else
      {
        v32 = v68;
        [(RTPersistenceMigrator *)self __cleanupAfterImportWithStore:v17 coordinator:v68];
        [(RTPersistenceMigrator *)self __cleanupAfterImportWithStore:v27 coordinator:v28];
        v31 = v27;
        v4 = v65;
      }

      v6 = v66;
      goto LABEL_19;
    }

    v60 = v28;
    v33 = [(RTPersistenceMigrator *)self __executeImportStepWithSourceStore:v17 sourceCoordinator:v68 destinationStore:v27 destinationCoordinator:v28 model:v5];
    if (v33 != 0x8000000000000008)
    {
      v11 = v33;
      v6 = v66;
      if (v33 != 8)
      {
        v47 = v29;
        v32 = v68;
        [(RTPersistenceMigrator *)self __cleanupAfterImportWithStore:v47 coordinator:v68];
        [(RTPersistenceMigrator *)self __cleanupAfterImportWithStore:v27 coordinator:v28];
        v31 = v27;
        v4 = v65;
LABEL_19:
        v34 = v62;
LABEL_48:

        v7 = v64;
LABEL_49:

        goto LABEL_50;
      }

      v31 = v27;
      v4 = v65;
      v32 = v68;
      v34 = v62;
LABEL_47:
      v28 = v60;
      goto LABEL_48;
    }

    v72 = 0;
    [WeakRetained removeFromCoordinator:v66 error:&v72];
    v58 = v72;
    v54 = [WeakRetained URL];
    v57 = [WeakRetained storeDescription];
    v36 = [v57 options];
    v37 = [v67 URL];
    v38 = [v67 options];
    v39 = *MEMORY[0x277CBE2E8];
    v71 = 0;
    v59 = v27;
    v56 = [v68 replacePersistentStoreAtURL:v54 destinationOptions:v36 withPersistentStoreFromURL:v37 sourceOptions:v38 storeType:v39 error:&v71];
    v55 = v71;

    [(RTPersistenceMigrator *)self __cleanupAfterImportWithStore:v29 coordinator:v68];
    [(RTPersistenceMigrator *)self __cleanupAfterImportWithStore:v27 coordinator:v28];
    v11 = 0;
    if (v56)
    {
      v4 = v65;
      v6 = v66;
      v40 = v55;
      if (!v55)
      {
        v70 = 0;
        v41 = [WeakRetained addToCoordinator:v66 lightweightMigration:0 vacuum:0 allowMirroring:0 error:&v70];
        v42 = v70;
        v43 = v42;
        if (v41 && !v42)
        {
          v74 = @"RTPersistentStoreMetadataStoreImportKey";
          v75 = MEMORY[0x277CBEC38];
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v69 = 0;
          [WeakRetained updateMetadata:v44 coordinator:v66 error:&v69];
          v45 = v69;

          if (v45 && [v45 code]>= 4)
          {
            v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v52 = [v45 code];
              *buf = 134218498;
              v77 = v52;
              v78 = 2080;
              v79 = "[RTPersistenceMigrator _executeImportStep]";
              v80 = 1024;
              v81 = 913;
              _os_log_error_impl(&dword_2304B3000, v46, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
            }
          }

          v11 = 2;
LABEL_44:

          v4 = v65;
          goto LABEL_45;
        }

        v48 = [v42 code];
        v49 = v48;
        if ((v48 - 2) >= 2)
        {
          if (v48 == 1)
          {
            v11 = 0;
            goto LABEL_45;
          }

          if (v48)
          {
            v45 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v53 = [v43 code];
              *buf = 134218498;
              v77 = v53;
              v78 = 2080;
              v79 = "[RTPersistenceMigrator _executeImportStep]";
              v80 = 1024;
              v81 = 894;
              _os_log_error_impl(&dword_2304B3000, v45, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
            }

            v11 = 8;
            goto LABEL_44;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v45 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v61 = [WeakRetained URL];
            v50 = [v61 lastPathComponent];
            *buf = 138412546;
            v77 = v50;
            v78 = 2048;
            v79 = v49;
            _os_log_impl(&dword_2304B3000, v45, OS_LOG_TYPE_INFO, "store %@, could not be opened after import, code, %ld", buf, 0x16u);
          }

          v11 = 5;
          goto LABEL_44;
        }

        v11 = 5;
LABEL_45:
      }
    }

    else
    {
      v4 = v65;
      v6 = v66;
      v40 = v55;
    }

    v32 = v68;
    v34 = v62;
    v31 = v59;
    goto LABEL_47;
  }

  v11 = 2;
LABEL_51:

  return v11;
}

- (id)__findCandidateStoresForImportStepWithStore:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationStore", buf, 2u);
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 URL];
      v6 = [v5 lastPathComponent];
      *buf = 138412290;
      v49 = v6;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "store, %@, migration step, import", buf, 0xCu);
    }
  }

  v7 = [v3 storeURLsMatchingStoreName];
  v8 = [MEMORY[0x277CCAA00] sortFilesByName:v7];

  v9 = [v8 count];
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v9)
  {
    if (v10)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v33 = [v3 URL];
        v34 = [v33 lastPathComponent];
        *buf = 138412290;
        v49 = v34;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "no import candidates found for store, %@", buf, 0xCu);
      }

      v32 = 0;
      goto LABEL_39;
    }

LABEL_32:
    v32 = 0;
    goto LABEL_40;
  }

  if (v10)
  {
    v42 = v8;
    v43 = v3;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v44 objects:v53 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      v15 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v44 + 1) + 8 * i);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v18 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = [v17 path];
              v20 = [v19 lastPathComponent];
              *buf = 138412290;
              v49 = v20;
              _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "import candidate found, %@", buf, 0xCu);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v44 objects:v53 count:16];
      }

      while (v13);
    }

    v8 = v42;
    v3 = v43;
  }

  v21 = [v8 lastObject:v42];
  v22 = MEMORY[0x277CCAA00];
  v52[0] = v21;
  v23 = [v3 URL];
  v52[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v25 = [v22 sortFilesByName:v24];

  v26 = [v25 lastObject];
  v27 = [v3 URL];
  LOBYTE(v24) = [v26 isEqual:v27];

  v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v24)
  {
    if (v28)
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [v21 path];
        v31 = [v30 lastPathComponent];
        *buf = 138412290;
        v49 = v31;
        _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "choosing store with path %@ to import", buf, 0xCu);
      }
    }

    v32 = v21;
  }

  else
  {
    if (v28)
    {
      v35 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = [v21 path];
        v37 = [v36 lastPathComponent];
        v38 = [v3 URL];
        v39 = [v38 path];
        v40 = [v39 lastPathComponent];
        *buf = 138412546;
        v49 = v37;
        v50 = 2112;
        v51 = v40;
        _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "import candidate, %@ is a later version that the current version, %@, skipping import.", buf, 0x16u);
      }
    }

    v32 = 0;
  }

LABEL_39:
LABEL_40:

  return v32;
}

- (unint64_t)__prepareImportStepWithSourceStore:(id)a3 sourceCoordinator:(id)a4 destinationStore:(id)a5 destinationCoordinator:(id)a6 model:(id)a7 allowMigration:(BOOL)a8
{
  v8 = a8;
  v47 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (v13)
  {
    if (v14)
    {
      if (v15)
      {
        if (v16)
        {
          if (v17)
          {
            v40 = 0;
            v19 = [v13 addToCoordinator:v14 lightweightMigration:v8 vacuum:0 allowMirroring:0 error:&v40];
            v20 = v40;
            v21 = v20;
            if (v19 && !v20)
            {
              v39 = 0;
              v22 = [v15 addToCoordinator:v16 lightweightMigration:v8 vacuum:0 allowMirroring:0 error:&v39];
              v23 = v39;
              v24 = v23;
              if (v22 && !v23)
              {
                v25 = 0x8000000000000008;
LABEL_46:

                goto LABEL_29;
              }

              v32 = [v23 code];
              v33 = v32;
              if ((v32 - 2) < 2)
              {
LABEL_33:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  v34 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
                  {
                    v38 = [v13 URL];
                    v35 = [v38 lastPathComponent];
                    *buf = 138412546;
                    v42 = v35;
                    v43 = 2048;
                    v44 = v33;
                    _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "destination store %@, could not be prepared for import, code, %ld", buf, 0x16u);
                  }

                  v25 = 2;
LABEL_45:

                  goto LABEL_46;
                }

LABEL_37:
                v25 = 2;
                goto LABEL_46;
              }

              if (v32 != 1)
              {
                if (v32)
                {
                  v34 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    v37 = [v24 code];
                    *buf = 134218498;
                    v42 = v37;
                    v43 = 2080;
                    v44 = "[RTPersistenceMigrator __prepareImportStepWithSourceStore:sourceCoordinator:destinationStore:destinationCoordinator:model:allowMigration:]";
                    v45 = 1024;
                    v46 = 1031;
                    _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
                  }

                  v25 = 8;
                  goto LABEL_45;
                }

                goto LABEL_33;
              }

LABEL_41:
              v25 = 8;
              goto LABEL_46;
            }

            v27 = [v20 code];
            v28 = v27;
            if ((v27 - 2) >= 2)
            {
              if (v27 == 1)
              {
                v25 = 8;
                goto LABEL_29;
              }

              if (v27)
              {
                v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v36 = [v21 code];
                  *buf = 134218498;
                  v42 = v36;
                  v43 = 2080;
                  v44 = "[RTPersistenceMigrator __prepareImportStepWithSourceStore:sourceCoordinator:destinationStore:destinationCoordinator:model:allowMigration:]";
                  v45 = 1024;
                  v46 = 1000;
                  _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Unhandled error code, %ld (in %s:%d)", buf, 0x1Cu);
                }

                goto LABEL_41;
              }
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v24 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                v29 = [v13 URL];
                v30 = [v29 lastPathComponent];
                *buf = 138412546;
                v42 = v30;
                v43 = 2048;
                v44 = v28;
                _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "source store %@, could not be prepared for import, code, %ld", buf, 0x16u);
              }

              goto LABEL_37;
            }

            goto LABEL_28;
          }

          v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v26 = "Invalid parameter not satisfying: model";
            goto LABEL_21;
          }

LABEL_28:
          v25 = 2;
          goto LABEL_29;
        }

        v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        *buf = 0;
        v26 = "Invalid parameter not satisfying: destinationCoordinator";
      }

      else
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_28;
        }

        *buf = 0;
        v26 = "Invalid parameter not satisfying: destinationStore";
      }
    }

    else
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v26 = "Invalid parameter not satisfying: sourceCoordinator";
    }
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: sourceStore";
  }

LABEL_21:
  v25 = 2;
  _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, v26, buf, 2u);
LABEL_29:

  return v25;
}

- (unint64_t)__executeImportStepWithSourceStore:(id)a3 sourceCoordinator:(id)a4 destinationStore:(id)a5 destinationCoordinator:(id)a6 model:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_autoreleasePoolPush();
  if (!v12)
  {
    WeakRetained = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: sourceStore";
      goto LABEL_25;
    }

LABEL_18:
    v26 = 2;
    goto LABEL_19;
  }

  if (!v13)
  {
    WeakRetained = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: sourceCoordinator";
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (!v14)
  {
    WeakRetained = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: destinationStore";
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (!v15)
  {
    WeakRetained = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v28 = "Invalid parameter not satisfying: destinationCoordinator";
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  if (!v16)
  {
    WeakRetained = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: model";
LABEL_25:
    v26 = 2;
    _os_log_error_impl(&dword_2304B3000, WeakRetained, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_19;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = [v12 storeDescription];
  v20 = [v19 configuration];
  v35 = 0;
  v21 = [WeakRetained importSourceStore:v12 sourceCoordinator:v13 destinationStore:v14 destinationCoordinator:v15 managedObjectModel:v16 configuration:v20 error:&v35];
  v30 = v35;

  if (!v21 || v30)
  {
    v27 = v30;
    v23 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v30;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "error during database import, %@", buf, 0xCu);
    }

    v26 = 2;
  }

  else
  {
    v22 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    [v22 setPersistentStoreCoordinator:v13];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __124__RTPersistenceMigrator___executeImportStepWithSourceStore_sourceCoordinator_destinationStore_destinationCoordinator_model___block_invoke;
    v33[3] = &unk_2788C4EA0;
    v34 = v22;
    v23 = v22;
    [v23 performBlockAndWait:v33];
    v24 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
    [v24 setPersistentStoreCoordinator:v15];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __124__RTPersistenceMigrator___executeImportStepWithSourceStore_sourceCoordinator_destinationStore_destinationCoordinator_model___block_invoke_2;
    v31[3] = &unk_2788C4EA0;
    v32 = v24;
    v25 = v24;
    [v25 performBlockAndWait:v31];

    v26 = 0x8000000000000008;
    v27 = 0;
  }

LABEL_19:
  objc_autoreleasePoolPop(v17);

  return v26;
}

- (void)__cleanupAfterImportWithStore:(id)a3 coordinator:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v5 = a3;
  v6 = [v5 removeFromCoordinator:a4 error:&v15];
  v7 = v15;
  v8 = v7;
  if (!v6 || v7)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "error attempting to remove store from coordinator, %@", buf, 0xCu);
    }
  }

  v10 = [v5 URL];
  v14 = 0;
  v11 = [v5 removeStoreAtURL:v10 error:&v14];

  v12 = v14;
  if (!v11 || v12)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "error attempting to remove store from disk, %@", buf, 0xCu);
    }
  }
}

- (RTPersistenceStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

- (RTPersistenceModelProvider)modelProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_modelProvider);

  return WeakRetained;
}

- (RTPersistenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end