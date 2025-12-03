@interface SASCloudKitClient
- (SASCloudKitClient)initWithContainerIdentifier:(id)identifier callbackQueue:(id)queue;
- (SASCloudKitClient)initWithDatabase:(id)database inContainer:(id)container callbackQueue:(id)queue;
- (void)_scheduleDatabaseOperation:(id)operation;
- (void)fetchCurrentDeviceIDWithCompletion:(id)completion;
- (void)fetchRecordZone:(id)zone group:(id)group completion:(id)completion;
- (void)fetchRecords:(id)records inZone:(id)zone group:(id)group completion:(id)completion;
- (void)saveRecord:(id)record group:(id)group completion:(id)completion;
- (void)saveRecordZone:(id)zone group:(id)group completion:(id)completion;
@end

@implementation SASCloudKitClient

- (SASCloudKitClient)initWithContainerIdentifier:(id)identifier callbackQueue:(id)queue
{
  v6 = MEMORY[0x277CBC220];
  queueCopy = queue;
  identifierCopy = identifier;
  v9 = [[v6 alloc] initWithContainerIdentifier:identifierCopy environment:1];

  v10 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v9];
  privateCloudDatabase = [v10 privateCloudDatabase];
  v12 = [(SASCloudKitClient *)self initWithDatabase:privateCloudDatabase inContainer:v10 callbackQueue:queueCopy];

  return v12;
}

- (SASCloudKitClient)initWithDatabase:(id)database inContainer:(id)container callbackQueue:(id)queue
{
  databaseCopy = database;
  containerCopy = container;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = SASCloudKitClient;
  v12 = [(SASCloudKitClient *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_container, container);
    objc_storeStrong(&v13->_database, database);
    if (queueCopy)
    {
      v14 = queueCopy;
    }

    else
    {
      v14 = dispatch_queue_create("Generic CloudKit Client Queue", 0);
    }

    callbackQueue = v13->_callbackQueue;
    v13->_callbackQueue = v14;
  }

  return v13;
}

- (void)fetchCurrentDeviceIDWithCompletion:(id)completion
{
  completionCopy = completion;
  container = [(SASCloudKitClient *)self container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SASCloudKitClient_fetchCurrentDeviceIDWithCompletion___block_invoke;
  v7[3] = &unk_278846150;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [container fetchCurrentDeviceIDWithCompletionHandler:v7];
}

void __56__SASCloudKitClient_fetchCurrentDeviceIDWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SASCloudKitClient_fetchCurrentDeviceIDWithCompletion___block_invoke_2;
  block[3] = &unk_278846128;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchRecordZone:(id)zone group:(id)group completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  completionCopy = completion;
  v10 = MEMORY[0x277CBC3D0];
  groupCopy = group;
  v12 = [v10 alloc];
  v24[0] = zoneCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v14 = [v12 initWithRecordZoneIDs:v13];

  [v14 setGroup:groupCopy];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __54__SASCloudKitClient_fetchRecordZone_group_completion___block_invoke;
  v21 = &unk_278846178;
  v22 = zoneCopy;
  v23 = completionCopy;
  v15 = zoneCopy;
  v16 = completionCopy;
  [v14 setFetchRecordZonesCompletionBlock:&v18];
  [(SASCloudKitClient *)self _scheduleDatabaseOperation:v14, v18, v19, v20, v21];

  v17 = *MEMORY[0x277D85DE8];
}

void __54__SASCloudKitClient_fetchRecordZone_group_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = a3;
  v9 = [a2 objectForKeyedSubscript:v6];
  v8 = [v7 CKItemErrorForID:*(a1 + 32)];

  (*(v5 + 16))(v5, v9, v8);
}

- (void)saveRecordZone:(id)zone group:(id)group completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  completionCopy = completion;
  v10 = MEMORY[0x277CBC490];
  groupCopy = group;
  v12 = [v10 alloc];
  v24[0] = zoneCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v14 = [v12 initWithRecordZonesToSave:v13 recordZoneIDsToDelete:0];

  [v14 setGroup:groupCopy];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __53__SASCloudKitClient_saveRecordZone_group_completion___block_invoke;
  v21 = &unk_2788461A0;
  v22 = zoneCopy;
  v23 = completionCopy;
  v15 = zoneCopy;
  v16 = completionCopy;
  [v14 setModifyRecordZonesCompletionBlock:&v18];
  [(SASCloudKitClient *)self _scheduleDatabaseOperation:v14, v18, v19, v20, v21];

  v17 = *MEMORY[0x277D85DE8];
}

void __53__SASCloudKitClient_saveRecordZone_group_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v10 = [a2 firstObject];
  v8 = [*(a1 + 32) zoneID];
  v9 = [v7 CKItemErrorForID:v8];

  (*(v6 + 16))(v6, v10, v9);
}

- (void)fetchRecords:(id)records inZone:(id)zone group:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  zoneCopy = zone;
  recordsCopy = records;
  v14 = objc_opt_new();
  v15 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:recordsCopy];

  [v15 setGroup:groupCopy];
  zoneID = [zoneCopy zoneID];

  [v15 setZoneID:zoneID];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __58__SASCloudKitClient_fetchRecords_inZone_group_completion___block_invoke;
  v23[3] = &unk_2788461C8;
  v17 = v14;
  v24 = v17;
  [v15 setRecordMatchedBlock:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__SASCloudKitClient_fetchRecords_inZone_group_completion___block_invoke_13;
  v20[3] = &unk_2788461F0;
  v21 = v17;
  v22 = completionCopy;
  v18 = v17;
  v19 = completionCopy;
  [v15 setQueryCompletionBlock:v20];
  [(SASCloudKitClient *)self _scheduleDatabaseOperation:v15];
}

void __58__SASCloudKitClient_fetchRecords_inZone_group_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
  }

  else if (v7 | v9)
  {
    v11 = +[SASLogging facility];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __58__SASCloudKitClient_fetchRecords_inZone_group_completion___block_invoke_cold_1(v7, v10, v11);
    }
  }
}

- (void)saveRecord:(id)record group:(id)group completion:(id)completion
{
  v24[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  completionCopy = completion;
  v10 = MEMORY[0x277CBC4A0];
  groupCopy = group;
  v12 = [v10 alloc];
  v24[0] = recordCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v14 = [v12 initWithRecordsToSave:v13 recordIDsToDelete:0];

  [v14 setGroup:groupCopy];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __49__SASCloudKitClient_saveRecord_group_completion___block_invoke;
  v21 = &unk_2788461A0;
  v22 = recordCopy;
  v23 = completionCopy;
  v15 = recordCopy;
  v16 = completionCopy;
  [v14 setModifyRecordsCompletionBlock:&v18];
  [(SASCloudKitClient *)self _scheduleDatabaseOperation:v14, v18, v19, v20, v21];

  v17 = *MEMORY[0x277D85DE8];
}

void __49__SASCloudKitClient_saveRecord_group_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a4;
  v10 = [a2 firstObject];
  v8 = [*(a1 + 32) recordID];
  v9 = [v7 CKItemErrorForID:v8];

  (*(v6 + 16))(v6, v10 != 0, v9);
}

- (void)_scheduleDatabaseOperation:(id)operation
{
  operationCopy = operation;
  callbackQueue = [(SASCloudKitClient *)self callbackQueue];
  [operationCopy setCallbackQueue:callbackQueue];

  configuration = [operationCopy configuration];
  xpcActivity = [(SASCloudKitClient *)self xpcActivity];
  [configuration setXPCActivity:xpcActivity];

  database = [(SASCloudKitClient *)self database];
  [database addOperation:operationCopy];
}

void __58__SASCloudKitClient_fetchRecords_inZone_group_completion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 recordName];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_22E4D7000, a3, OS_LOG_TYPE_ERROR, "Failed to match record:%@ error:%@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end