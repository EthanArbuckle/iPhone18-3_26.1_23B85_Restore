@interface SBSystemStatusStatusBarOverridesArchiver
+ (id)_archiveFileURL;
- (SBSystemStatusStatusBarOverridesArchiver)init;
- (id)_queue_readStatusBarOverridesArchiveRecord;
- (void)_queue_persistUpdatedArchiveRecord:(id)a3;
- (void)_queue_readStatusBarOverridesArchiveRecord;
- (void)_queue_setupObservingAndReconcileInitialState;
- (void)_queue_writeOutArchiveRecord:(id)a3;
- (void)dealloc;
- (void)init;
@end

@implementation SBSystemStatusStatusBarOverridesArchiver

+ (id)_archiveFileURL
{
  if (_archiveFileURL___onceToken != -1)
  {
    +[SBSystemStatusStatusBarOverridesArchiver _archiveFileURL];
  }

  v3 = _archiveFileURL_sArchiveURL;

  return v3;
}

void __59__SBSystemStatusStatusBarOverridesArchiver__archiveFileURL__block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v5 = SBHomeDirectory();
  v1 = [v5 stringByAppendingPathComponent:@"StatusBarOverrides"];
  v2 = [v1 stringByAppendingPathExtension:@"archive"];
  v3 = [v0 fileURLWithPath:v2];
  v4 = _archiveFileURL_sArchiveURL;
  _archiveFileURL_sArchiveURL = v3;
}

- (SBSystemStatusStatusBarOverridesArchiver)init
{
  v15.receiver = self;
  v15.super_class = SBSystemStatusStatusBarOverridesArchiver;
  v3 = [(SBSystemStatusStatusBarOverridesArchiver *)&v15 init];
  if (v3)
  {
    v4 = [SBApp systemStatusServer];
    if (!v4)
    {
      [(SBSystemStatusStatusBarOverridesArchiver *)v3 init];
    }

    Serial = BSDispatchQueueCreateSerial();
    queue = v3->_queue;
    v3->_queue = Serial;

    v7 = [objc_alloc(MEMORY[0x277D6BB28]) initWithServerHandle:v4];
    overridesDomain = v3->_overridesDomain;
    v3->_overridesDomain = v7;

    v9 = [objc_alloc(MEMORY[0x277D6BB30]) initWithServerHandle:v4];
    overridesPublisher = v3->_overridesPublisher;
    v3->_overridesPublisher = v9;

    v11 = v3->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__SBSystemStatusStatusBarOverridesArchiver_init__block_invoke;
    block[3] = &unk_2783A8C18;
    v14 = v3;
    dispatch_async(v11, block);
  }

  return v3;
}

- (void)_queue_setupObservingAndReconcileInitialState
{
  BSDispatchQueueAssert();
  overridesDomain = self->_overridesDomain;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __89__SBSystemStatusStatusBarOverridesArchiver__queue_setupObservingAndReconcileInitialState__block_invoke;
  v14[3] = &unk_2783BC938;
  v14[4] = self;
  [(STStatusBarOverridesStatusDomain *)overridesDomain observeDataWithBlock:v14];
  v4 = [(STStatusBarOverridesStatusDomain *)self->_overridesDomain data];
  v5 = [v4 _sbSystemStatusStatusBarOverridesArchiveRecord];

  v6 = [(SBSystemStatusStatusBarOverridesArchiver *)self _queue_readStatusBarOverridesArchiveRecord];
  v7 = v6;
  if (v5 | v6)
  {
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v5)
      {
        [(SBSystemStatusStatusBarOverridesArchiver *)self _queue_writeOutArchiveRecord:v5];
        goto LABEL_14;
      }

      if (!v6)
      {
        goto LABEL_14;
      }

      objc_storeStrong(&self->_queue_archiveRecord, v6);
      v9 = v7;
    }

    else
    {
      v9 = [v6 recordByApplyingRecord:v5];
      [(SBSystemStatusStatusBarOverridesArchiver *)self _queue_writeOutArchiveRecord:v9];
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    overridesPublisher = self->_overridesPublisher;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __89__SBSystemStatusStatusBarOverridesArchiver__queue_setupObservingAndReconcileInitialState__block_invoke_3;
    v12[3] = &unk_2783BC960;
    v13 = v9;
    v11 = v9;
    [(STStatusBarOverridesStatusDomainPublisher *)overridesPublisher updateDataWithBlock:v12];
  }

LABEL_14:
}

void __89__SBSystemStatusStatusBarOverridesArchiver__queue_setupObservingAndReconcileInitialState__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _sbSystemStatusStatusBarOverridesArchiveRecord];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__SBSystemStatusStatusBarOverridesArchiver__queue_setupObservingAndReconcileInitialState__block_invoke_2;
  v7[3] = &unk_2783A92D8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (void)_queue_persistUpdatedArchiveRecord:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssert();
  if (!BSEqualObjects())
  {
    v6 = SBLogStatusBarish();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        v11 = 0;
        v8 = "Received status bar overrides to persist…";
        v9 = &v11;
LABEL_10:
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      }
    }

    else if (v7)
    {
      v10 = 0;
      v8 = "Clearing status bar overrides…";
      v9 = &v10;
      goto LABEL_10;
    }

    [(SBSystemStatusStatusBarOverridesArchiver *)self _queue_writeOutArchiveRecord:v4];
    goto LABEL_12;
  }

  v5 = SBLogStatusBarish();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Received duplicate data…", buf, 2u);
  }

LABEL_12:
}

- (void)_queue_writeOutArchiveRecord:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssert();
  if ((BSEqualObjects() & 1) == 0)
  {
    v5 = [objc_opt_class() _archiveFileURL];
    if (v4 && ([v4 isEmpty] & 1) == 0)
    {
      v21 = 0;
      v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v21];
      v11 = v21;
      v12 = v11;
      if (v10)
      {
        v20 = v11;
        v13 = [v10 writeToURL:v5 options:1 error:&v20];
        v8 = v20;

        v14 = SBLogStatusBarish();
        p_super = v14;
        if (v13)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_DEFAULT, "Saved the status bar overrides archive.", buf, 2u);
          }

          v16 = v4;
          p_super = &self->_queue_archiveRecord->super;
          self->_queue_archiveRecord = v16;
        }

        else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17 = [v10 length];
          v18 = [v8 localizedDescription];
          *buf = 134218498;
          v23 = v17;
          v24 = 2112;
          v25 = v5;
          v26 = 2112;
          v27 = v18;
          _os_log_error_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_ERROR, "Error writing status bar overrides archive (len=%lu) to %@: %@", buf, 0x20u);
        }
      }

      else
      {
        p_super = SBLogStatusBarish();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [SBSystemStatusStatusBarOverridesArchiver _queue_writeOutArchiveRecord:v12];
        }

        v8 = v12;
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = 0;
      v7 = [v6 removeItemAtURL:v5 error:&v19];
      v8 = v19;

      v9 = SBLogStatusBarish();
      v10 = v9;
      if (v7)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Cleared the status bar overrides archive.", buf, 2u);
        }

        v10 = &self->_queue_archiveRecord->super;
        self->_queue_archiveRecord = 0;
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(SBSystemStatusStatusBarOverridesArchiver *)v5 _queue_writeOutArchiveRecord:v8];
      }
    }
  }
}

- (id)_queue_readStatusBarOverridesArchiveRecord
{
  v25 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssert();
  v2 = [objc_opt_class() _archiveFileURL];
  v18 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v2 options:1 error:&v18];
  v4 = v18;
  if (!v3)
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v2 path];
    v11 = [v9 fileExistsAtPath:v10];

    v12 = SBLogStatusBarish();
    v8 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(SBSystemStatusStatusBarOverridesArchiver *)v2 _queue_readStatusBarOverridesArchiveRecord];
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v2;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Couldn't read archived status bar overrides because none exist at: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v17 = v4;
  v5 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v17];
  v6 = v17;

  if (v5)
  {
    goto LABEL_16;
  }

  v7 = SBLogStatusBarish();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v2;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Unable to read status bar overrides archive, Falling back to the legacy format: %@", buf, 0xCu);
  }

  v16 = v6;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v16];
  v4 = v16;

  if (!v8)
  {
    v8 = SBLogStatusBarish();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = [v3 length];
      v15 = [v4 localizedDescription];
      *buf = 134218498;
      v20 = v14;
      v21 = 2112;
      v22 = v2;
      v23 = 2112;
      v24 = v15;
      _os_log_error_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_ERROR, "Error unarchiving status bar overrides from data (len=%lu) at %@: %@", buf, 0x20u);
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = [[_SBSystemStatusStatusBarOverridesArchiveRecord alloc] initWithStatusBarData:v8 andSuppressedBackgroundActivityIdentifiers:0];
LABEL_15:

  v6 = v4;
LABEL_16:

  return v5;
}

- (void)dealloc
{
  [(STStatusBarOverridesStatusDomain *)self->_overridesDomain invalidate];
  [(STStatusBarOverridesStatusDomainPublisher *)self->_overridesPublisher invalidate];
  v3.receiver = self;
  v3.super_class = SBSystemStatusStatusBarOverridesArchiver;
  [(SBSystemStatusStatusBarOverridesArchiver *)&v3 dealloc];
}

- (void)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SBSystemStatusStatusBarOverridesArchiver.m" lineNumber:61 description:{@"don't initialize %@ before the server handle exists!", objc_opt_class()}];
}

- (void)_queue_writeOutArchiveRecord:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "Error archiving status bar overrides archive: %@'\ndata: %@", v4, v5, v6, v7, 2u);
}

- (void)_queue_writeOutArchiveRecord:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v3, v4, "Error clearing status bar overrides archive at %@: %@", v5, v6, v7, v8, v9);
}

- (void)_queue_readStatusBarOverridesArchiveRecord
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v3, v4, "Error reading status bar overrides data at %@: %@", v5, v6, v7, v8, v9);
}

@end