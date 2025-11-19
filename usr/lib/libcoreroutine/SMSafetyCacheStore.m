@interface SMSafetyCacheStore
- (SMSafetyCacheStore)initWithPersistenceManager:(id)a3 timerManager:(id)a4;
- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5;
- (id)fetchRequestFromStoredLocationOptions:(id)a3;
- (void)_fetchLastLocationWithHandler:(id)a3;
- (void)_fetchStoredLocationsWithContext:(id)a3 handler:(id)a4;
- (void)_fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4;
- (void)_flushCachedLocationsWithHandler:(id)a3;
- (void)_invalidateFlushTimer;
- (void)_startFlushTimer;
- (void)_storeLocations:(id)a3 handler:(id)a4;
- (void)enumerateStoredLocationsWithContext:(id)a3 usingBlock:(id)a4;
- (void)fetchInitiatorContactsWithHandler:(id)a3;
- (void)fetchLastLocationWithHandler:(id)a3;
- (void)fetchMetricsWithOptions:(id)a3 handler:(id)a4;
- (void)fetchReceiverContactsWithHandler:(id)a3;
- (void)fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7;
- (void)fetchStoredLocationsWithContext:(id)a3 handler:(id)a4;
- (void)fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4;
- (void)logStoreWithHandler:(id)a3;
- (void)removeInitiatorContact:(id)a3 handler:(id)a4;
- (void)removeLocationsPredating:(id)a3 handler:(id)a4;
- (void)removeReceiverContact:(id)a3 handler:(id)a4;
- (void)storeInitiatorContact:(id)a3 handler:(id)a4;
- (void)storeLocations:(id)a3 handler:(id)a4;
- (void)storeReceiverContact:(id)a3 handler:(id)a4;
- (void)updateInitiatorContact:(id)a3 handler:(id)a4;
- (void)updateReceiverContact:(id)a3 handler:(id)a4;
@end

@implementation SMSafetyCacheStore

- (SMSafetyCacheStore)initWithPersistenceManager:(id)a3 timerManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v13 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: persistenceManager";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_9;
  }

  if (!v7)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: timerManager";
    goto LABEL_12;
  }

  v17.receiver = self;
  v17.super_class = SMSafetyCacheStore;
  v9 = [(RTStore *)&v17 initWithPersistenceManager:v6];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timerManager, a4);
    v11 = objc_opt_new();
    locations = v10->_locations;
    v10->_locations = v11;
  }

  self = v10;
  v13 = self;
LABEL_10:

  return v13;
}

- (void)storeInitiatorContact:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SMSafetyCacheStore_storeInitiatorContact_handler___block_invoke;
  v12[3] = &unk_2788C4C20;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __52__SMSafetyCacheStore_storeInitiatorContact_handler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,%@", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{*(a1 + 40), 0}];
  [v4 storeWritableObjects:v5 handler:*(a1 + 48)];
}

- (void)updateInitiatorContact:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SMSafetyCacheStore_updateInitiatorContact_handler___block_invoke;
  v12[3] = &unk_2788C4C20;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __53__SMSafetyCacheStore_updateInitiatorContact_handler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,%@", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{*(a1 + 40), 0}];
  [v4 updateWritableObjects:v5 handler:*(a1 + 48)];
}

- (void)storeReceiverContact:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__SMSafetyCacheStore_storeReceiverContact_handler___block_invoke;
  v12[3] = &unk_2788C4C20;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __51__SMSafetyCacheStore_storeReceiverContact_handler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,%@", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{*(a1 + 40), 0}];
  [v4 storeWritableObjects:v5 handler:*(a1 + 48)];
}

- (void)updateReceiverContact:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SMSafetyCacheStore_updateReceiverContact_handler___block_invoke;
  v12[3] = &unk_2788C4C20;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __52__SMSafetyCacheStore_updateReceiverContact_handler___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v7 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,%@", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{*(a1 + 40), 0}];
  [v4 updateWritableObjects:v5 handler:*(a1 + 48)];
}

- (void)fetchInitiatorContactsWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SMSafetyCacheStore_fetchInitiatorContactsWithHandler___block_invoke;
  block[3] = &unk_2788CBC00;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __56__SMSafetyCacheStore_fetchInitiatorContactsWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,%@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__SMSafetyCacheStore_fetchInitiatorContactsWithHandler___block_invoke_21;
  aBlock[3] = &unk_2788C7170;
  v9 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SMSafetyCacheStore_fetchInitiatorContactsWithHandler___block_invoke_25;
  v6[3] = &unk_2788C48C0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 _performBlock:v4 contextType:1 errorHandler:v6];
}

void __56__SMSafetyCacheStore_fetchInitiatorContactsWithHandler___block_invoke_21(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMInitiatorContactMO fetchRequest];
  v37 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v37];
  v6 = v37;
  v7 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 count];
      *buf = 67109378;
      *v40 = v9;
      *&v40[4] = 2112;
      *&v40[6] = v6;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,fetchInitiatorContactsWithHandler,Fetched contacts %d, error: %@", buf, 0x12u);
    }
  }

  if (!v6 && [v5 count])
  {
    v28 = v5;
    v29 = a1;
    v30 = v4;
    v31 = v3;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      v14 = MEMORY[0x277D86220];
      v15 = RTLogFacilitySafetyMonitor;
      v16 = 0x277D4A000uLL;
      do
      {
        v17 = 0;
        v32 = v12;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v33 + 1) + 8 * v17);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v19 = _rt_log_facility_get_os_log(v15);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              [v18 identifier];
              v20 = v13;
              v21 = v16;
              v22 = v14;
              v23 = v10;
              v24 = v7;
              v26 = v25 = v15;
              *buf = 138412290;
              *v40 = v26;
              _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,fetchInitiatorContactsWithHandler,contact %@", buf, 0xCu);

              v15 = v25;
              v7 = v24;
              v10 = v23;
              v14 = v22;
              v16 = v21;
              v13 = v20;
              v12 = v32;
            }
          }

          v27 = [*(v16 + 2800) createWithManagedObject:v18];
          if (v27)
          {
            [v7 addObject:v27];
          }

          ++v17;
        }

        while (v12 != v17);
        v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
    }

    v4 = v30;
    v3 = v31;
    v5 = v28;
    a1 = v29;
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchReceiverContactsWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SMSafetyCacheStore_fetchReceiverContactsWithHandler___block_invoke;
  block[3] = &unk_2788CBC00;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __55__SMSafetyCacheStore_fetchReceiverContactsWithHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,%@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SMSafetyCacheStore_fetchReceiverContactsWithHandler___block_invoke_27;
  aBlock[3] = &unk_2788C7170;
  v9 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SMSafetyCacheStore_fetchReceiverContactsWithHandler___block_invoke_30;
  v6[3] = &unk_2788C48C0;
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v5 _performBlock:v4 contextType:1 errorHandler:v6];
}

void __55__SMSafetyCacheStore_fetchReceiverContactsWithHandler___block_invoke_27(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMReceiverContactMO fetchRequest];
  v37 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v37];
  v6 = v37;
  v7 = objc_opt_new();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v5 count];
      *buf = 67109378;
      *v40 = v9;
      *&v40[4] = 2112;
      *&v40[6] = v6;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,fetchReceiverContactsWithHandler,Fetched receiverContacts %d, error: %@", buf, 0x12u);
    }
  }

  if (!v6 && [v5 count])
  {
    v28 = v5;
    v29 = a1;
    v30 = v4;
    v31 = v3;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v34;
      v14 = MEMORY[0x277D86220];
      v15 = RTLogFacilitySafetyMonitor;
      v16 = 0x277D4A000uLL;
      do
      {
        v17 = 0;
        v32 = v12;
        do
        {
          if (*v34 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v33 + 1) + 8 * v17);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v19 = _rt_log_facility_get_os_log(v15);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              [v18 identifier];
              v20 = v13;
              v21 = v16;
              v22 = v14;
              v23 = v10;
              v24 = v7;
              v26 = v25 = v15;
              *buf = 138412290;
              *v40 = v26;
              _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,fetchReceiverContactsWithHandler,fetched receiverContact: %@", buf, 0xCu);

              v15 = v25;
              v7 = v24;
              v10 = v23;
              v14 = v22;
              v16 = v21;
              v13 = v20;
              v12 = v32;
            }
          }

          v27 = [*(v16 + 2888) createWithManagedObject:v18];
          if (v27)
          {
            [v7 addObject:v27];
          }

          ++v17;
        }

        while (v12 != v17);
        v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v12);
    }

    v4 = v30;
    v3 = v31;
    v5 = v28;
    a1 = v29;
    v6 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeInitiatorContact:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SMSafetyCacheStore_removeInitiatorContact_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v15 = v8;
  v16 = a2;
  v13 = v7;
  v14 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __53__SMSafetyCacheStore_removeInitiatorContact_handler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,%@", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__SMSafetyCacheStore_removeInitiatorContact_handler___block_invoke_36;
    aBlock[3] = &unk_2788C4F38;
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v8 = _Block_copy(aBlock);
    [*(a1 + 40) _performBlock:v8 contextType:0 errorHandler:*(a1 + 48)];

    v9 = v15;
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"requires valid initiatorContact.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v11 errorWithDomain:v12 code:0 userInfo:v9];
    (*(v10 + 16))(v10, v13);
  }
}

void __53__SMSafetyCacheStore_removeInitiatorContact_handler___block_invoke_36(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMInitiatorContactMO fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 predicateWithFormat:@"%K == %@", @"identifier", v6];
  [v4 setPredicate:v7];

  v8 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v8 setResultType:2];
  v9 = *(a1 + 40);
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__SMSafetyCacheStore_removeInitiatorContact_handler___block_invoke_2;
  v11[3] = &unk_2788C48C0;
  v12 = *(a1 + 48);
  [v9 executeDeleteRequests:v10 context:v3 handler:v11];
}

void __53__SMSafetyCacheStore_removeInitiatorContact_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,removeInitiatorContact,completed, error, %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)removeReceiverContact:(id)a3 handler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SMSafetyCacheStore_removeReceiverContact_handler___block_invoke;
  v12[3] = &unk_2788C6940;
  v15 = v8;
  v16 = a2;
  v13 = v7;
  v14 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, v12);
}

void __52__SMSafetyCacheStore_removeReceiverContact_handler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v21 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,%@", buf, 0xCu);
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__SMSafetyCacheStore_removeReceiverContact_handler___block_invoke_48;
    aBlock[3] = &unk_2788C4F38;
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v15 = v5;
    v16 = v6;
    v17 = v7;
    v8 = _Block_copy(aBlock);
    [*(a1 + 40) _performBlock:v8 contextType:0 errorHandler:*(a1 + 48)];

    v9 = v15;
  }

  else
  {
    v10 = *(a1 + 48);
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"requires valid receiverServiceState.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [v11 errorWithDomain:v12 code:0 userInfo:v9];
    (*(v10 + 16))(v10, v13);
  }
}

void __52__SMSafetyCacheStore_removeReceiverContact_handler___block_invoke_48(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMReceiverContactMO fetchRequest];
  v5 = MEMORY[0x277CCAC30];
  v6 = [*(a1 + 32) identifier];
  v7 = [v5 predicateWithFormat:@"%K == %@", @"identifier", v6];
  [v4 setPredicate:v7];

  v8 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v4];
  [v8 setResultType:2];
  v9 = *(a1 + 40);
  v13[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SMSafetyCacheStore_removeReceiverContact_handler___block_invoke_2;
  v11[3] = &unk_2788C48C0;
  v12 = *(a1 + 48);
  [v9 executeDeleteRequests:v10 context:v3 handler:v11];
}

void __52__SMSafetyCacheStore_removeReceiverContact_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,removeReceiverContact,completed, error, %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)logStoreWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SMSafetyCacheStore_logStoreWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__SMSafetyCacheStore_logStoreWithHandler___block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__SMSafetyCacheStore_logStoreWithHandler___block_invoke_2;
  v5[3] = &unk_2788C7170;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__SMSafetyCacheStore_logStoreWithHandler___block_invoke_49;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 40);
  [v2 _performBlock:v5 contextType:1 errorHandler:v3];
}

void __42__SMSafetyCacheStore_logStoreWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMInitiatorContactMO fetchRequest];
  v73 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v73];
  v6 = v73;
  v7 = +[SMReceiverContactMO fetchRequest];
  v72 = 0;
  v8 = [v3 executeFetchRequest:v7 error:&v72];
  v9 = v72;
  if (v6 | v9)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = _RTSafeArray();
      v12 = _RTMultiErrorCreate();
      (*(v10 + 16))(v10, v12);
    }
  }

  else
  {
    v54 = a1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v5 count];
        *buf = 67109120;
        v76 = v14;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,numInitiatorContacts,%d", buf, 8u);
      }
    }

    v53 = v9;
    v59 = v3;
    v60 = v8;
    v55 = v7;
    v56 = v6;
    v57 = v5;
    v58 = v4;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v5;
    v15 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v69;
      v19 = 0x277D4A000uLL;
      v20 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v69 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v68 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          ++v17;
          v24 = [*(v19 + 2800) createWithManagedObject:v22];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v76 = v17;
              v77 = 2112;
              v78 = v24;
              _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,InitiatorContact,%d,%@", buf, 0x12u);
            }
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
            {
              v27 = [v24 phoneCache];
              v28 = [v27 outputToDictionary];
              *buf = 67109378;
              v76 = v17;
              v77 = 2112;
              v78 = v28;
              _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,InitiatorContact,%d,phoneCache,%@", buf, 0x12u);

              v19 = 0x277D4A000;
            }
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              v30 = [v24 watchCache];
              v31 = [v30 outputToDictionary];
              *buf = 67109378;
              v76 = v17;
              v77 = 2112;
              v78 = v31;
              _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,InitiatorContact,%d,watchCache,%@", buf, 0x12u);

              v19 = 0x277D4A000;
            }
          }

          objc_autoreleasePoolPop(v23);
        }

        v16 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v16);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [v60 count];
        *buf = 67109120;
        v76 = v33;
        _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,numReceiverContacts,%d", buf, 8u);
      }
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v61 = v60;
    v34 = [v61 countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v63 = *v65;
      v37 = MEMORY[0x277D86220];
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v65 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v39 = *(*(&v64 + 1) + 8 * j);
          v40 = objc_autoreleasePoolPush();
          ++v36;
          v41 = [MEMORY[0x277D4AB48] createWithManagedObject:v39];
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v76 = v36;
              v77 = 2112;
              v78 = v41;
              _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,ReceiverContact,%d,%@", buf, 0x12u);
            }
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v43 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = [v41 sessionStatus];
              v45 = [v44 outputToDictionary];
              *buf = 67109378;
              v76 = v36;
              v77 = 2112;
              v78 = v45;
              _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,ReceiverContact,%d,sessionStatus,%@", buf, 0x12u);
            }
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v46 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = [v41 phoneCache];
              v48 = [v47 outputToDictionary];
              *buf = 67109378;
              v76 = v36;
              v77 = 2112;
              v78 = v48;
              _os_log_impl(&dword_2304B3000, v46, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,ReceiverContact,%d,phoneCache,%@", buf, 0x12u);
            }
          }

          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            v49 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              v50 = [v41 watchCache];
              v51 = [v50 outputToDictionary];
              *buf = 67109378;
              v76 = v36;
              v77 = 2112;
              v78 = v51;
              _os_log_impl(&dword_2304B3000, v49, OS_LOG_TYPE_INFO, "#SafetyCache,Store,SMSCS,_logStore,ReceiverContact,%d,watchCache,%@", buf, 0x12u);
            }
          }

          objc_autoreleasePoolPop(v40);
        }

        v35 = [v61 countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v35);
    }

    v7 = v55;
    v52 = *(v54 + 32);
    v4 = v58;
    v3 = v59;
    v6 = v56;
    v5 = v57;
    v8 = v60;
    v9 = v53;
    if (v52)
    {
      (*(v52 + 16))(v52, 0);
    }
  }
}

uint64_t __42__SMSafetyCacheStore_logStoreWithHandler___block_invoke_49(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)fetchRequestFromOptions:(id)a3 offset:(unint64_t)a4 error:(id *)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = v8;
  if (!a5)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: outError", buf, 2u);
    }

    goto LABEL_8;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    if (v10 != objc_opt_class())
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v11 stringWithFormat:@"error of type, %@, is not supported", v13];

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v25 = *MEMORY[0x277CCA450];
      v26[0] = v14;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v18 = [v15 errorWithDomain:v16 code:7 userInfo:v17];

      v19 = v18;
      *a5 = v18;

LABEL_8:
      v21 = 0;
      goto LABEL_13;
    }

    v21 = [(SMSafetyCacheStore *)self fetchRequestFromStoredLocationOptions:v9];
    [v21 setFetchOffset:a4];
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    _RTErrorInvalidParameterCreate(@"options");
    *a5 = v21 = 0;
  }

LABEL_13:

  return v21;
}

- (void)_startFlushTimer
{
  if (!self->_flushTimer)
  {
    objc_initWeak(&location, self);
    timerManager = self->_timerManager;
    v5 = [(RTNotifier *)self queue];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __38__SMSafetyCacheStore__startFlushTimer__block_invoke;
    v11 = &unk_2788D2FA0;
    v12 = self;
    v13[1] = a2;
    objc_copyWeak(v13, &location);
    v6 = [(RTTimerManager *)timerManager timerWithIdentifier:@"com.apple.routined.SafetyCache.flushTimer" queue:v5 handler:&v8];
    flushTimer = self->_flushTimer;
    self->_flushTimer = v6;

    [(RTTimer *)self->_flushTimer fireAfterDelay:75.0 interval:75.0 leeway:15.0, v8, v9, v10, v11, v12];
    [(RTTimer *)self->_flushTimer resume];
    objc_destroyWeak(v13);
    objc_destroyWeak(&location);
  }
}

void __38__SMSafetyCacheStore__startFlushTimer__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, %@, flushTimer timer expiry", buf, 0x16u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SMSafetyCacheStore__startFlushTimer__block_invoke_58;
  v8[3] = &unk_2788C4D10;
  v4 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v8[5] = v4;
  [WeakRetained _flushCachedLocationsWithHandler:v8];
}

void __38__SMSafetyCacheStore__startFlushTimer__block_invoke_58(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 40));
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, %@, flushed cached locations, error, %@", &v8, 0x20u);
    }
  }
}

- (void)_invalidateFlushTimer
{
  [(RTTimer *)self->_flushTimer invalidate];
  flushTimer = self->_flushTimer;
  self->_flushTimer = 0;
}

void __43__SMSafetyCacheStore__flushCachedLocations__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "failed to flush cached location, error: %@", &v4, 0xCu);
    }
  }
}

- (void)_flushCachedLocationsWithHandler:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(NSMutableArray *)self->_locations count])
  {
    v6 = [(NSMutableArray *)self->_locations copy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        NSStringFromSelector(a2);
        v10 = v21 = a2;
        v11 = [v6 count];
        v12 = [v6 firstObject];
        v13 = [v6 lastObject];
        *buf = 138413315;
        v31 = v9;
        v32 = 2112;
        v33 = v10;
        v34 = 2048;
        v35 = v11;
        v36 = 2117;
        v37 = v12;
        v38 = 2117;
        v39 = v13;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, flushing %lu locations to cache, first, %{sensitive}@, last, %{sensitive}@", buf, 0x34u);

        a2 = v21;
      }
    }

    [(NSMutableArray *)self->_locations removeAllObjects];
    [(SMSafetyCacheStore *)self _invalidateFlushTimer];
    v14 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [objc_alloc(MEMORY[0x277D4AAF8]) initWithCLLocation:*(*(&v25 + 1) + 8 * v19)];
          [v14 addObject:v20];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__SMSafetyCacheStore__flushCachedLocationsWithHandler___block_invoke;
    v22[3] = &unk_2788C56C0;
    v22[4] = self;
    v24 = a2;
    v23 = v5;
    [(RTStore *)self storeWritableObjects:v14 handler:v22];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0);
  }
}

void __55__SMSafetyCacheStore__flushCachedLocationsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 80);
  *(v4 + 80) = 0;

  if (v3)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "%@, error, %@", &v9, 0x16u);
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

- (void)storeLocations:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SMSafetyCacheStore_storeLocations_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)enumerateStoredLocationsWithContext:(id)a3 usingBlock:(id)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v46 = 0;
    if (v7)
    {
      v9 = dispatch_semaphore_create(0);
      v10 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __69__SMSafetyCacheStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke;
      block[3] = &unk_2788C5020;
      block[4] = self;
      v45 = a2;
      v11 = v9;
      v44 = v11;
      dispatch_async(v10, block);

      v12 = v11;
      v13 = [MEMORY[0x277CBEAA8] now];
      v14 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v12, v14))
      {
        v39 = [MEMORY[0x277CBEAA8] now];
        v40 = v13;
        [v39 timeIntervalSinceDate:v13];
        v16 = v15;
        v17 = objc_opt_new();
        v18 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_223];
        v19 = [MEMORY[0x277CCACC8] callStackSymbols];
        v20 = [v19 filteredArrayUsingPredicate:v18];
        v21 = [v20 firstObject];

        v38 = v17;
        [v17 submitToCoreAnalytics:v21 type:1 duration:v16];
        v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v22, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v23 = MEMORY[0x277CCA9B8];
        v24 = *MEMORY[0x277D01448];
        v52[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v25 = 1;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v52 count:1];
        v27 = [v23 errorWithDomain:v24 code:15 userInfo:v26];

        if (v27)
        {
          v28 = v27;

          v25 = 0;
        }

        v13 = v40;
      }

      else
      {
        v27 = 0;
        v25 = 1;
      }

      v33 = v27;
      if (v25)
      {
        v34 = [v7 options];
        v35 = [(SMSafetyCacheStore *)self fetchRequestFromStoredLocationOptions:v34];

        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __69__SMSafetyCacheStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke_63;
        aBlock[3] = &unk_2788CCC20;
        v42 = v8;
        v36 = _Block_copy(aBlock);
        [(RTStore *)self enumerateType:objc_opt_class() fetchRequest:v35 enumerationBlock:v36];
      }

      else
      {
        (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], v33, &v46);
      }
    }

    else
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277D01448];
      v50 = *MEMORY[0x277CCA450];
      v51 = @"requires non-nil options.";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v12 = [v29 errorWithDomain:v30 code:7 userInfo:v31];

      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v37 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v37;
        v48 = 2112;
        v49 = v12;
        _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      (*(v8 + 2))(v8, MEMORY[0x277CBEBF8], v12, &v46);
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: enumerationBlock", buf, 2u);
    }
  }
}

void __69__SMSafetyCacheStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__SMSafetyCacheStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke_2;
  v4[3] = &unk_2788C4D10;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 _flushCachedLocationsWithHandler:v4];
}

void __69__SMSafetyCacheStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, error, %@", &v6, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __69__SMSafetyCacheStore_enumerateStoredLocationsWithContext_usingBlock___block_invoke_63(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * v14);
        v16 = objc_alloc(MEMORY[0x277CE41F8]);
        v17 = [v16 initWithSMInitiatorLocation:{v15, v18}];
        [v9 addObject:v17];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 32) + 16))();
  if (v8 || ![v10 count])
  {
    *a4 = 1;
  }
}

- (void)fetchLastLocationWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SMSafetyCacheStore_fetchLastLocationWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_fetchLastLocationWithHandler:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__SMSafetyCacheStore__fetchLastLocationWithHandler___block_invoke;
    aBlock[3] = &unk_2788CB7D8;
    v22 = a2;
    v7 = v5;
    v21 = v7;
    v8 = _Block_copy(aBlock);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__SMSafetyCacheStore__fetchLastLocationWithHandler___block_invoke_74;
    v17[3] = &unk_2788CCBF8;
    v17[4] = self;
    v18 = v7;
    v19 = v8;
    v9 = v8;
    [(SMSafetyCacheStore *)self _flushCachedLocationsWithHandler:v17];

    v10 = v21;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[SMSafetyCacheStore _fetchLastLocationWithHandler:]";
      v25 = 1024;
      LODWORD(v26) = 477;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v29 = *MEMORY[0x277CCA450];
    v30[0] = @"A handler is a required parameter.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v10];
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v12;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, A handler is a required parameter, %@", buf, 0x20u);
    }
  }
}

void __52__SMSafetyCacheStore__fetchLastLocationWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SMInitiatorLocationMO fetchRequest];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchLimit:1];
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:0];
  v25[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v4 setSortDescriptors:v6];

  v16 = 0;
  v7 = [v3 executeFetchRequest:v4 error:&v16];

  v8 = v16;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = NSStringFromSelector(*(a1 + 40));
      v15 = [v7 count];
      *buf = 138413059;
      v18 = v14;
      v19 = 2117;
      v20 = v4;
      v21 = 2048;
      v22 = v15;
      v23 = 2112;
      v24 = v8;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v11 = [v7 firstObject];
    v12 = objc_alloc(MEMORY[0x277CE41F8]);
    v13 = [MEMORY[0x277D4AAF8] createWithManagedObject:v11];
    v10 = [v12 initWithSMInitiatorLocation:v13];
  }

  (*(*(a1 + 32) + 16))();
}

void __52__SMSafetyCacheStore__fetchLastLocationWithHandler___block_invoke_74(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1[5] + 2);

    v3();
  }

  else
  {
    v4 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__SMSafetyCacheStore__fetchLastLocationWithHandler___block_invoke_2;
    block[3] = &unk_2788C8DF0;
    block[4] = a1[4];
    v6 = a1[6];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

void __52__SMSafetyCacheStore__fetchLastLocationWithHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__SMSafetyCacheStore__fetchLastLocationWithHandler___block_invoke_3;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredLocationsWithContext:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMSafetyCacheStore_fetchStoredLocationsWithContext_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredLocationsWithContext:(id)a3 handler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__SMSafetyCacheStore__fetchStoredLocationsWithContext_handler___block_invoke;
    aBlock[3] = &unk_2788C4910;
    v20 = v7;
    v21 = self;
    v23 = a2;
    v9 = v8;
    v22 = v9;
    v10 = _Block_copy(aBlock);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__SMSafetyCacheStore__fetchStoredLocationsWithContext_handler___block_invoke_76;
    v16[3] = &unk_2788CCBF8;
    v16[4] = self;
    v17 = v9;
    v18 = v10;
    v11 = v10;
    [(SMSafetyCacheStore *)self _flushCachedLocationsWithHandler:v16];

    v12 = v20;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[SMSafetyCacheStore _fetchStoredLocationsWithContext:handler:]";
      v28 = 1024;
      v29 = 544;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    v24 = *MEMORY[0x277CCA450];
    v25 = @"A handler is a required parameter.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v12];
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v14;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "A handler is a required parameter, %@", buf, 0xCu);
    }
  }
}

void __63__SMSafetyCacheStore__fetchStoredLocationsWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;
  v7 = *(a1 + 40);
  v8 = [v5 options];
  v9 = [v7 fetchRequestFromStoredLocationOptions:v8];

  [v9 setFetchOffset:{objc_msgSend(*(a1 + 32), "offset")}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v37 = [v9 fetchLimit];
      v38 = 2048;
      v39 = [v9 fetchOffset];
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "using options fetch limit, %lu, fetch offset, %lu", buf, 0x16u);
    }
  }

  v34 = 0;
  v11 = [v3 executeFetchRequest:v9 error:&v34];
  v12 = v34;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v24 = NSStringFromSelector(*(a1 + 56));
      v25 = [v11 count];
      *buf = 138413059;
      v37 = v24;
      v38 = 2117;
      v39 = v9;
      v40 = 2048;
      v41 = v25;
      v42 = 2112;
      v43 = v12;
      _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, request, %{sensitive}@, results count, %lu, error, %@", buf, 0x2Au);
    }
  }

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "fetchLimit")}];
  if (!v12)
  {
    v26 = v11;
    v27 = v9;
    v28 = v3;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v11;
    v15 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v30 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = objc_alloc(MEMORY[0x277CE41F8]);
          v22 = [MEMORY[0x277D4AAF8] createWithManagedObject:v19];
          v23 = [v21 initWithSMInitiatorLocation:v22];

          if (v23)
          {
            [v14 addObject:v23];
          }

          objc_autoreleasePoolPop(v20);
        }

        v16 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v16);
    }

    v3 = v28;
    v9 = v27;
    v12 = 0;
    v11 = v26;
  }

  (*(*(a1 + 48) + 16))();
}

void __63__SMSafetyCacheStore__fetchStoredLocationsWithContext_handler___block_invoke_76(id *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1[5] + 2);

    v3();
  }

  else
  {
    v4 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SMSafetyCacheStore__fetchStoredLocationsWithContext_handler___block_invoke_2;
    block[3] = &unk_2788C8DF0;
    block[4] = a1[4];
    v6 = a1[6];
    v7 = a1[5];
    dispatch_async(v4, block);
  }
}

void __63__SMSafetyCacheStore__fetchStoredLocationsWithContext_handler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SMSafetyCacheStore__fetchStoredLocationsWithContext_handler___block_invoke_3;
  v3[3] = &unk_2788C48C0;
  v4 = *(a1 + 48);
  [v1 _performBlock:v2 contextType:1 errorHandler:v3];
}

- (void)fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMSafetyCacheStore_fetchStoredLocationsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_fetchStoredLocationsWithOptions:(id)a3 handler:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[SMSafetyCacheStore _fetchStoredLocationsWithOptions:handler:]";
      v12 = 1024;
      v13 = 618;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v10, 0x12u);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D01318]) initWithEnumerationOptions:v6];
  [(SMSafetyCacheStore *)self _fetchStoredLocationsWithContext:v9 handler:v7];
}

- (void)removeLocationsPredating:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    v7 = MEMORY[0x277CCAC30];
    v8 = a4;
    v9 = [v7 predicateWithFormat:@"%K < %@", @"timestamp", v6];
    [(NSMutableArray *)self->_locations filterUsingPredicate:v9];
    v17 = @"date";
    v16 = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    [(RTStore *)self purgePredating:v6 predicateMappings:v11 purgeLimit:50 handler:v8];
  }

  else
  {
    v12 = a4;
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[SMSafetyCacheStore removeLocationsPredating:handler:]";
      v23 = 1024;
      v24 = 629;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v19 = *MEMORY[0x277CCA450];
    v20 = @"requires a valid date.";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v11 = [v14 errorWithDomain:v15 code:7 userInfo:v9];
    v12[2](v12, v11);
  }
}

- (void)fetchMetricsWithOptions:(id)a3 handler:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D01448];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = @"fetchMetricsWithOptions:handler: not supported";
  v7 = MEMORY[0x277CBEAC0];
  v8 = a4;
  v9 = [v7 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v5 errorWithDomain:v6 code:7 userInfo:v9];
  (*(a4 + 2))(v8, 0, v10);
}

- (void)fetchStoredLocationsCountFromDate:(id)a3 toDate:(id)a4 uncertainty:(double)a5 limit:(unint64_t)a6 handler:(id)a7
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277D01448];
  v14 = *MEMORY[0x277CCA450];
  v15[0] = @"fetchStoredLocationsCountFromDate:toDate:uncertainty:limit:handler: not supported";
  v10 = MEMORY[0x277CBEAC0];
  v11 = a7;
  v12 = [v10 dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v8 errorWithDomain:v9 code:7 userInfo:v12];
  (*(a7 + 2))(v11, 0, v13);
}

- (void)_storeLocations:(id)a3 handler:(id)a4
{
  v46[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(RTService *)self isShuttingDown])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityLocationStore);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v34 = [v7 count];
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "Ignoring %lu locations for storage, shutdown in progress", buf, 0xCu);
      }
    }

LABEL_19:
    if (v8)
    {
      v8[2](v8, 0);
    }

    goto LABEL_21;
  }

  if ([v7 count])
  {
    [(NSMutableArray *)self->_locations addObjectsFromArray:v7];
    if ([(NSMutableArray *)self->_locations count])
    {
      if (!self->_flushTransaction)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v14 = [v10 stringWithFormat:@"%@-%@", v12, v13];
        [v14 UTF8String];
        v15 = os_transaction_create();
        flushTransaction = self->_flushTransaction;
        self->_flushTransaction = v15;

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            v32 = NSStringFromSelector(a2);
            *buf = 138412546;
            v34 = v31;
            v35 = 2112;
            v36 = v32;
            _os_log_debug_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
          }
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = NSStringFromSelector(a2);
        v26 = [v7 count];
        v27 = [v7 firstObject];
        v28 = [v7 lastObject];
        v29 = [(NSMutableArray *)self->_locations count];
        *buf = 138413571;
        v34 = v24;
        v35 = 2112;
        v36 = v25;
        v37 = 2048;
        v38 = v26;
        v39 = 2117;
        v40 = v27;
        v41 = 2117;
        v42 = v28;
        v43 = 2048;
        v44 = v29;
        _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "%@, %@, added %lu locations to cache, first, %{sensitive}@, last, %{sensitive}@, total, %lu", buf, 0x3Eu);
      }
    }

    [(SMSafetyCacheStore *)self _startFlushTimer];
    if ([(NSMutableArray *)self->_locations count]>= 0x97)
    {
      [(SMSafetyCacheStore *)self _flushCachedLocations];
    }

    goto LABEL_19;
  }

  if (v8)
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D01448];
    v45 = *MEMORY[0x277CCA450];
    v46[0] = @"requires valid locations.";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v22 = [v19 errorWithDomain:v20 code:7 userInfo:v21];
    (v8)[2](v8, v22);
  }

LABEL_21:
}

- (id)fetchRequestFromStoredLocationOptions:(id)a3
{
  v61[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = +[SMInitiatorLocationMO fetchRequest];
    [v4 setReturnsObjectsAsFaults:0];
    v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"date" ascending:{objc_msgSend(v3, "ascending")}];
    v61[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
    [v4 setSortDescriptors:v6];

    v7 = [v3 dateInterval];
    v8 = [v7 startDate];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = [MEMORY[0x277CBEAA8] distantPast];
    }

    log = v10;

    v11 = [v3 dateInterval];
    v12 = [v11 endDate];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v15 = v14;

    [v3 horizontalAccuracy];
    if (v16 == 0.0)
    {
      v18 = 1.79769313e308;
    }

    else
    {
      [v3 horizontalAccuracy];
      v18 = v17;
    }

    if ([v3 batchSize])
    {
      v19 = [v3 batchSize];
      v20 = 3600;
      if (v19 < 0xE10)
      {
        v20 = v19;
      }
    }

    else
    {
      v20 = 3600;
    }

    v55 = v20;
    v21 = [MEMORY[0x277CBEB18] array];
    v22 = MEMORY[0x277CCA920];
    v23 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%@ <= %K", log, @"date"];
    v60[0] = v23;
    v56 = v15;
    v24 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", @"date", v15];
    v60[1] = v24;
    v25 = MEMORY[0x277CCAC30];
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
    v27 = [v25 predicateWithFormat:@"%K <= %@", @"hunc", v26];
    v60[2] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
    v29 = [v22 andPredicateWithSubpredicates:v28];

    v30 = v21;
    v54 = v29;
    [v21 addObject:v29];
    v31 = [v3 boundingBoxLocation];

    if (v31)
    {
      *buf = 0;
      v32 = [v3 boundingBoxLocation];
      [v32 coordinate];
      [v3 boundingBoxLocation];
      v33 = v53 = v21;
      [v33 coordinate];
      v34 = [v3 boundingBoxLocation];
      [v34 horizontalAccuracy];
      RTCommonCalculateBoundingBox();

      v50 = MEMORY[0x277CCA920];
      v35 = MEMORY[0x277CCAC30];
      v52 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v51 = [v35 predicateWithFormat:@"%@ <= %K", v52, @"longitude"];
      v59[0] = v51;
      v36 = MEMORY[0x277CCAC30];
      v37 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v38 = [v36 predicateWithFormat:@"%K <= %@", @"longitude", v37];
      v59[1] = v38;
      v39 = v4;
      v40 = MEMORY[0x277CCAC30];
      v41 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v42 = [v40 predicateWithFormat:@"%@ <= %K", v41, @"latitude"];
      v59[2] = v42;
      v43 = MEMORY[0x277CCAC30];
      v44 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
      v45 = [v43 predicateWithFormat:@"%K <= %@", @"latitude", v44];
      v59[3] = v45;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
      v47 = [v50 andPredicateWithSubpredicates:v46];

      v4 = v39;
      v30 = v53;

      [v53 addObject:v47];
    }

    v48 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v30];
    [v4 setPredicate:v48];

    [v4 setFetchBatchSize:50];
    [v4 setFetchLimit:v55];
  }

  else
  {
    log = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, log, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

@end