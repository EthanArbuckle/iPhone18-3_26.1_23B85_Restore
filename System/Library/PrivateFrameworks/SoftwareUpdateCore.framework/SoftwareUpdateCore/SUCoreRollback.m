@interface SUCoreRollback
- (SUCoreRollback)init;
- (SUCoreRollback)initWithCoder:(id)a3;
- (SUCoreRollbackDescriptor)eligibleRollback;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)previousRollback;
- (void)encodeWithCoder:(id)a3;
- (void)loadPersistedStateFile;
- (void)rollbackCompleted;
@end

@implementation SUCoreRollback

- (SUCoreRollback)init
{
  v10.receiver = self;
  v10.super_class = SUCoreRollback;
  v2 = [(SUCoreRollback *)&v10 init];
  if (v2)
  {
    v3 = [@"com.apple.su.core.rollback.statequeue" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(v3, v4);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v5;

    v7 = objc_alloc_init(SUCoreRollbackDescriptor);
    rollback = v2->_rollback;
    v2->_rollback = v7;

    [(SUCoreRollback *)v2 loadPersistedStateFile];
  }

  return v2;
}

- (SUCoreRollbackDescriptor)eligibleRollback
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SUCoreRollback_eligibleRollback__block_invoke;
  v6[3] = &unk_27892C880;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__SUCoreRollback_eligibleRollback__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) rollbackEligible])
  {
    v2 = *(*(a1 + 32) + 24);
    v3 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v3, v2);
  }
}

- (void)loadPersistedStateFile
{
  v40 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v4 componentsSeparatedByString:@"."];
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.state", @"/var/mobile/Library/SoftwareUpdateCore/", v6];
    if (v7)
    {
      v8 = v7;
LABEL_14:

      goto LABEL_15;
    }
  }

  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(SUCoreRollback *)v10 loadPersistedStateFile];
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.state", @"/var/mobile/Library/SoftwareUpdateCore/", v4];
  if (!v8)
  {
LABEL_8:
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 executablePath];

    if (v12)
    {
      v13 = [v12 componentsSeparatedByString:@"/"];
      v14 = [v13 lastObject];

      if (v14)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.state", @"/var/mobile/Library/SoftwareUpdateCore/", v14];

        if (v8)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@", @"/var/mobile/Library/SoftwareUpdateCore/", @"SUCoreRollbackDefautState.state"];
    v6 = [MEMORY[0x277D64428] sharedDiag];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create a file path from bundleIdentifier, falling back to the default of %@", v8];
    [v6 trackAnomaly:@"SUCoreRollback" forReason:v15 withResult:8116 withError:0];

    goto LABEL_14;
  }

LABEL_15:
  v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 URLByDeletingLastPathComponent];
    v19 = [v18 path];

    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [v20 fileExistsAtPath:v19];

    if ((v21 & 1) == 0)
    {
      v22 = [MEMORY[0x277CCAA00] defaultManager];
      v35 = 0;
      [v22 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v35];
      v23 = v35;

      if (v23)
      {
        v24 = [MEMORY[0x277D64460] sharedLogger];
        v25 = [v24 oslog];

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v17 path];
          *buf = 138543618;
          v37 = v26;
          v38 = 2114;
          v39 = v23;
          _os_log_impl(&dword_23193C000, v25, OS_LOG_TYPE_DEFAULT, "Error creating persisted state file %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    v27 = objc_alloc(MEMORY[0x277D64478]);
    stateQueue = self->_stateQueue;
    v29 = [v17 path];
    v30 = [v27 initWithDispatchQueue:stateQueue withPersistencePath:v29 forPolicyVersion:@"1.0"];
    persistedState = self->_persistedState;
    self->_persistedState = v30;

    v32 = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SUCoreRollback_loadPersistedStateFile__block_invoke;
    block[3] = &unk_27892C8A8;
    block[4] = self;
    dispatch_sync(v32, block);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __40__SUCoreRollback_loadPersistedStateFile__block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 16) loadPersistedState] & 1) == 0)
  {
    v1 = [MEMORY[0x277D64460] sharedLogger];
    v2 = [v1 oslog];

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __40__SUCoreRollback_loadPersistedStateFile__block_invoke_cold_1(v2);
    }
  }
}

- (id)previousRollback
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SUCoreRollback_previousRollback__block_invoke;
  v6[3] = &unk_27892C8D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__SUCoreRollback_previousRollback__block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 16);
  v3 = objc_opt_class();
  v4 = MEMORY[0x277CBEB98];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v6 = [v4 setWithArray:v5];
  v7 = [v2 secureCodedObjectForKey:@"previousRollback" ofClass:v3 encodeClasses:v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)rollbackCompleted
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SUCoreRollback_rollbackCompleted__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

uint64_t __35__SUCoreRollback_rollbackCompleted__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 setSplatRollbackDate:v3];

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);

  return [v5 persistSecureCodedObject:v6 forKey:@"previousRollback" shouldPersist:1];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SUCoreRollback *)self rollback];
  v5 = [v3 initWithFormat:@"rollback:%@", v4];

  return v5;
}

- (SUCoreRollback)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SUCoreRollback);

  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rollback"];
    [(SUCoreRollback *)v5 setRollback:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreRollback *)self rollback];
  [v4 encodeObject:v5 forKey:@"rollback"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SUCoreRollback allocWithZone:?]];
  v5 = [(SUCoreRollback *)self rollback];
  [(SUCoreRollback *)v4 setRollback:v5];

  return v4;
}

@end