@interface SUCoreRollback
- (SUCoreRollback)init;
- (SUCoreRollback)initWithCoder:(id)coder;
- (SUCoreRollbackDescriptor)eligibleRollback;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)previousRollback;
- (void)encodeWithCoder:(id)coder;
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
    uTF8String = [@"com.apple.su.core.rollback.statequeue" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(uTF8String, v4);
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (!bundleIdentifier)
  {
    goto LABEL_8;
  }

  v5 = [bundleIdentifier componentsSeparatedByString:@"."];
  lastObject = [v5 lastObject];

  if (lastObject)
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.state", @"/var/mobile/Library/SoftwareUpdateCore/", lastObject];
    if (v7)
    {
      v8 = v7;
LABEL_14:

      goto LABEL_15;
    }
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    [(SUCoreRollback *)oslog loadPersistedStateFile];
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.state", @"/var/mobile/Library/SoftwareUpdateCore/", bundleIdentifier];
  if (!v8)
  {
LABEL_8:
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    executablePath = [mainBundle2 executablePath];

    if (executablePath)
    {
      v13 = [executablePath componentsSeparatedByString:@"/"];
      lastObject2 = [v13 lastObject];

      if (lastObject2)
      {
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@.state", @"/var/mobile/Library/SoftwareUpdateCore/", lastObject2];

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
    lastObject = [MEMORY[0x277D64428] sharedDiag];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create a file path from bundleIdentifier, falling back to the default of %@", v8];
    [lastObject trackAnomaly:@"SUCoreRollback" forReason:v15 withResult:8116 withError:0];

    goto LABEL_14;
  }

LABEL_15:
  v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  v17 = v16;
  if (v16)
  {
    uRLByDeletingLastPathComponent = [v16 URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v21 = [defaultManager fileExistsAtPath:path];

    if ((v21 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v35 = 0;
      [defaultManager2 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v35];
      v23 = v35;

      if (v23)
      {
        mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
        oslog2 = [mEMORY[0x277D64460]2 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [v17 path];
          *buf = 138543618;
          v37 = path2;
          v38 = 2114;
          v39 = v23;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "Error creating persisted state file %{public}@: %{public}@", buf, 0x16u);
        }
      }
    }

    v27 = objc_alloc(MEMORY[0x277D64478]);
    stateQueue = self->_stateQueue;
    path3 = [v17 path];
    v30 = [v27 initWithDispatchQueue:stateQueue withPersistencePath:path3 forPolicyVersion:@"1.0"];
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
  rollback = [(SUCoreRollback *)self rollback];
  v5 = [v3 initWithFormat:@"rollback:%@", rollback];

  return v5;
}

- (SUCoreRollback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(SUCoreRollback);

  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rollback"];
    [(SUCoreRollback *)v5 setRollback:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rollback = [(SUCoreRollback *)self rollback];
  [coderCopy encodeObject:rollback forKey:@"rollback"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[SUCoreRollback allocWithZone:?]];
  rollback = [(SUCoreRollback *)self rollback];
  [(SUCoreRollback *)v4 setRollback:rollback];

  return v4;
}

@end