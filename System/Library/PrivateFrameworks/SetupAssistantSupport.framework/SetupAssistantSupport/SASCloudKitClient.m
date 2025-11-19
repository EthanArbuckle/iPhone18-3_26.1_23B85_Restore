@interface SASCloudKitClient
- (SASCloudKitClient)initWithContainerIdentifier:(id)a3 callbackQueue:(id)a4;
- (SASCloudKitClient)initWithDatabase:(id)a3 inContainer:(id)a4 callbackQueue:(id)a5;
- (void)_scheduleDatabaseOperation:(id)a3;
- (void)fetchCurrentDeviceIDWithCompletion:(id)a3;
- (void)fetchRecordZone:(id)a3 group:(id)a4 completion:(id)a5;
- (void)fetchRecords:(id)a3 inZone:(id)a4 group:(id)a5 completion:(id)a6;
- (void)saveRecord:(id)a3 group:(id)a4 completion:(id)a5;
- (void)saveRecordZone:(id)a3 group:(id)a4 completion:(id)a5;
@end

@implementation SASCloudKitClient

- (SASCloudKitClient)initWithContainerIdentifier:(id)a3 callbackQueue:(id)a4
{
  v6 = MEMORY[0x277CBC220];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithContainerIdentifier:v8 environment:1];

  v10 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v9];
  v11 = [v10 privateCloudDatabase];
  v12 = [(SASCloudKitClient *)self initWithDatabase:v11 inContainer:v10 callbackQueue:v7];

  return v12;
}

- (SASCloudKitClient)initWithDatabase:(id)a3 inContainer:(id)a4 callbackQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = SASCloudKitClient;
  v12 = [(SASCloudKitClient *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_container, a4);
    objc_storeStrong(&v13->_database, a3);
    if (v11)
    {
      v14 = v11;
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

- (void)fetchCurrentDeviceIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SASCloudKitClient *)self container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SASCloudKitClient_fetchCurrentDeviceIDWithCompletion___block_invoke;
  v7[3] = &unk_278846150;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fetchCurrentDeviceIDWithCompletionHandler:v7];
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

- (void)fetchRecordZone:(id)a3 group:(id)a4 completion:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBC3D0];
  v11 = a4;
  v12 = [v10 alloc];
  v24[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v14 = [v12 initWithRecordZoneIDs:v13];

  [v14 setGroup:v11];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __54__SASCloudKitClient_fetchRecordZone_group_completion___block_invoke;
  v21 = &unk_278846178;
  v22 = v8;
  v23 = v9;
  v15 = v8;
  v16 = v9;
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

- (void)saveRecordZone:(id)a3 group:(id)a4 completion:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBC490];
  v11 = a4;
  v12 = [v10 alloc];
  v24[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v14 = [v12 initWithRecordZonesToSave:v13 recordZoneIDsToDelete:0];

  [v14 setGroup:v11];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __53__SASCloudKitClient_saveRecordZone_group_completion___block_invoke;
  v21 = &unk_2788461A0;
  v22 = v8;
  v23 = v9;
  v15 = v8;
  v16 = v9;
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

- (void)fetchRecords:(id)a3 inZone:(id)a4 group:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:v13];

  [v15 setGroup:v11];
  v16 = [v12 zoneID];

  [v15 setZoneID:v16];
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
  v22 = v10;
  v18 = v17;
  v19 = v10;
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

- (void)saveRecord:(id)a3 group:(id)a4 completion:(id)a5
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBC4A0];
  v11 = a4;
  v12 = [v10 alloc];
  v24[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v14 = [v12 initWithRecordsToSave:v13 recordIDsToDelete:0];

  [v14 setGroup:v11];
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __49__SASCloudKitClient_saveRecord_group_completion___block_invoke;
  v21 = &unk_2788461A0;
  v22 = v8;
  v23 = v9;
  v15 = v8;
  v16 = v9;
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

- (void)_scheduleDatabaseOperation:(id)a3
{
  v4 = a3;
  v5 = [(SASCloudKitClient *)self callbackQueue];
  [v4 setCallbackQueue:v5];

  v6 = [v4 configuration];
  v7 = [(SASCloudKitClient *)self xpcActivity];
  [v6 setXPCActivity:v7];

  v8 = [(SASCloudKitClient *)self database];
  [v8 addOperation:v4];
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