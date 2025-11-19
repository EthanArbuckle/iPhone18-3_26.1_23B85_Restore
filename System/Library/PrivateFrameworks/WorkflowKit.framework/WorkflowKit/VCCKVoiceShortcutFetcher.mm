@interface VCCKVoiceShortcutFetcher
- (VCCKVoiceShortcutFetcher)initWithRecordHandler:(id)a3 completionHandler:(id)a4;
- (void)addOperation:(id)a3;
- (void)fetchRecordZones;
- (void)fetchRecordsFromZone:(id)a3;
- (void)finishWithSuccess:(BOOL)a3 error:(id)a4;
- (void)start;
@end

@implementation VCCKVoiceShortcutFetcher

- (void)fetchRecordsFromZone:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"VCCKVoiceShortcutFetcher.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"zone"}];
  }

  v6 = objc_alloc(MEMORY[0x1E695B918]);
  v7 = [v5 zoneID];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [v6 initWithRecordZoneIDs:v8 configurationsByRecordZoneID:0];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__VCCKVoiceShortcutFetcher_fetchRecordsFromZone___block_invoke;
  v13[3] = &unk_1E8376F80;
  v13[4] = self;
  [v9 setRecordChangedBlock:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__VCCKVoiceShortcutFetcher_fetchRecordsFromZone___block_invoke_197;
  v12[3] = &unk_1E837E5E0;
  v12[4] = self;
  [v9 setFetchRecordZoneChangesCompletionBlock:v12];
  [(VCCKVoiceShortcutFetcher *)self addOperation:v9];

  v10 = *MEMORY[0x1E69E9840];
}

void __49__VCCKVoiceShortcutFetcher_fetchRecordsFromZone___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFPeaceMigrationLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v3 recordID];
    v6 = [v5 recordName];
    v9 = 136315394;
    v10 = "[VCCKVoiceShortcutFetcher fetchRecordsFromZone:]_block_invoke";
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Successfully fetched voice shortcut record %{public}@", &v9, 0x16u);
  }

  v7 = [*(a1 + 32) recordHandler];
  (v7)[2](v7, v3);

  v8 = *MEMORY[0x1E69E9840];
}

void __49__VCCKVoiceShortcutFetcher_fetchRecordsFromZone___block_invoke_197(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFPeaceMigrationLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[VCCKVoiceShortcutFetcher fetchRecordsFromZone:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_INFO, "%s Finished fetching records with error: %{public}@", &v6, 0x16u);
  }

  [*(a1 + 32) finishWithSuccess:v3 == 0 error:v3];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)fetchRecordZones
{
  v3 = [MEMORY[0x1E695B928] fetchAllRecordZonesOperation];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__VCCKVoiceShortcutFetcher_fetchRecordZones__block_invoke;
  v5[3] = &unk_1E8376F58;
  v5[4] = self;
  v4 = [VCRecordZoneParser activeRecordZone:v5];
  [v3 setFetchRecordZonesCompletionBlock:v4];

  [(VCCKVoiceShortcutFetcher *)self addOperation:v3];
}

void __44__VCCKVoiceShortcutFetcher_fetchRecordZones__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) queue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__VCCKVoiceShortcutFetcher_fetchRecordZones__block_invoke_189;
    v10[3] = &unk_1E837F870;
    v10[4] = *(a1 + 32);
    v11 = v5;
    dispatch_async(v7, v10);
  }

  else
  {
    v8 = getWFPeaceMigrationLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[VCCKVoiceShortcutFetcher fetchRecordZones]_block_invoke";
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Did not find an active record zone: %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) finishWithSuccess:0 error:v6];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v3 = [(VCCKVoiceShortcutFetcher *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__VCCKVoiceShortcutFetcher_start__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)addOperation:(id)a3
{
  v4 = a3;
  [v4 setQualityOfService:25];
  v5 = [v4 configuration];
  [v5 setDiscretionaryNetworkBehavior:0];

  v6 = [(VCCKVoiceShortcutFetcher *)self database];
  [v6 addOperation:v4];
}

- (void)finishWithSuccess:(BOOL)a3 error:(id)a4
{
  v6 = a4;
  v7 = [(VCCKVoiceShortcutFetcher *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__VCCKVoiceShortcutFetcher_finishWithSuccess_error___block_invoke;
  block[3] = &unk_1E8377C58;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

void __52__VCCKVoiceShortcutFetcher_finishWithSuccess_error___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) completed] & 1) == 0)
  {
    [*(a1 + 32) setCompleted:1];
    v2 = [*(a1 + 32) completionHandler];
    (*(v2 + 2))(v2, *(a1 + 48), *(a1 + 40));
  }
}

- (VCCKVoiceShortcutFetcher)initWithRecordHandler:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"VCCKVoiceShortcutFetcher.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"recordHandler"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"VCCKVoiceShortcutFetcher.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v25.receiver = self;
  v25.super_class = VCCKVoiceShortcutFetcher;
  v10 = [(VCCKVoiceShortcutFetcher *)&v25 init];
  if (v10)
  {
    v11 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.siriactions"];
    WFSetShortcutsAppAttributionOnContainer(v11);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.shortcuts.VCCKVoiceShortcutFetcher", v12);
    queue = v10->_queue;
    v10->_queue = v13;

    v15 = [v11 privateCloudDatabase];
    database = v10->_database;
    v10->_database = v15;

    v17 = [v7 copy];
    recordHandler = v10->_recordHandler;
    v10->_recordHandler = v17;

    v19 = [v9 copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v19;

    v21 = v10;
  }

  return v10;
}

@end