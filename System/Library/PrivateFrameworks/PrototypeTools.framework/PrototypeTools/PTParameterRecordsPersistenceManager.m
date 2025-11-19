@interface PTParameterRecordsPersistenceManager
- (PTParameterRecordsPersistenceManager)init;
- (id)createParameterRecordsFromArchiveDictionary;
- (void)_writeToDiskWithParameterRecords:(id)a3;
- (void)writeToDisk:(id)a3;
@end

@implementation PTParameterRecordsPersistenceManager

- (PTParameterRecordsPersistenceManager)init
{
  v7.receiver = self;
  v7.super_class = PTParameterRecordsPersistenceManager;
  v2 = [(PTParameterRecordsPersistenceManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.PrototypeTools.PTParameterRecordsPersistenceManager", 0);
    parameterRecordsArchiveQueue = v2->_parameterRecordsArchiveQueue;
    v2->_parameterRecordsArchiveQueue = v3;

    v5 = _ParameterRecordsPath();
    [(PTParameterRecordsPersistenceManager *)v2 setPath:v5];
  }

  return v2;
}

- (id)createParameterRecordsFromArchiveDictionary
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEA90];
  v3 = [(PTParameterRecordsPersistenceManager *)self path];
  v16 = 0;
  v4 = [v2 dataWithContentsOfFile:v3 options:0 error:&v16];
  v5 = v16;

  if (v5)
  {
    v6 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_21E61D000, v6, OS_LOG_TYPE_DEFAULT, "Unexpected error: %@", buf, 0xCu);
    }
  }

  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v9 = [v7 initWithArray:v8];

  v15 = v5;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v4 error:&v15];
  v11 = v15;

  if (!v10)
  {
    v12 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&dword_21E61D000, v12, OS_LOG_TYPE_DEFAULT, "Error unarchiving persisted proxy definition: %@", buf, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = [[PTParameterRecords alloc] initWithDictionary:v10];

  return v13;
}

- (void)_writeToDiskWithParameterRecords:(id)a3
{
  v4 = a3;
  parameterRecordsArchiveQueue = self->_parameterRecordsArchiveQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__PTParameterRecordsPersistenceManager__writeToDiskWithParameterRecords___block_invoke;
  v7[3] = &unk_27835EC80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(parameterRecordsArchiveQueue, v7);
}

void __73__PTParameterRecordsPersistenceManager__writeToDiskWithParameterRecords___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCAAB0];
  v3 = [*(a1 + 32) recordDictionary];
  v15 = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v15];
  v5 = v15;

  if (!v4 || ([*(a1 + 40) path], v6 = objc_claimAutoreleasedReturnValue(), v14 = v5, v7 = objc_msgSend(v4, "writeToFile:options:error:", v6, 1, &v14), v8 = v14, v5, v6, v5 = v8, (v7 & 1) == 0))
  {
    v9 = PTLogObjectForTopic(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) path];
      v11 = [v5 localizedDescription];
      *buf = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_21E61D000, v9, OS_LOG_TYPE_DEFAULT, "Unable to write test recipe dictionary to file %@: %@", buf, 0x16u);
    }
  }

  v12 = *(a1 + 40);
  v13 = *(v12 + 8);
  *(v12 + 8) = 0;
}

- (void)writeToDisk:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__PTParameterRecordsPersistenceManager_writeToDisk___block_invoke;
  v6[3] = &unk_27835EC80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __52__PTParameterRecordsPersistenceManager_writeToDisk___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  if (v3)
  {
    [v3 invalidate];
    v2 = *(a1 + 32);
  }

  objc_initWeak(&location, v2);
  v4 = MEMORY[0x277CBEBB8];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__PTParameterRecordsPersistenceManager_writeToDisk___block_invoke_2;
  v8[3] = &unk_27835EF90;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 40);
  v5 = [v4 scheduledTimerWithTimeInterval:0 repeats:v8 block:0.25];
  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = v5;

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __52__PTParameterRecordsPersistenceManager_writeToDisk___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _writeToDiskWithParameterRecords:*(a1 + 32)];
}

@end