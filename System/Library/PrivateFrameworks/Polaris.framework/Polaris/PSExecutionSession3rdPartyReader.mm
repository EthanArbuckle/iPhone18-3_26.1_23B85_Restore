@interface PSExecutionSession3rdPartyReader
+ (id)initSessionWithName:(id)name;
- (PSExecutionSession3rdPartyReader)initWithName:(id)name;
- (int)registerForContextUpdatesFromResourcesWithCategory:(unint64_t)category;
@end

@implementation PSExecutionSession3rdPartyReader

+ (id)initSessionWithName:(id)name
{
  nameCopy = name;
  v4 = [[PSExecutionSession3rdPartyReader alloc] initWithName:nameCopy];

  return v4;
}

- (PSExecutionSession3rdPartyReader)initWithName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = PSExecutionSession3rdPartyReader;
  v5 = [(PSExecutionSession3rdPartyReader *)&v24 init];
  v6 = v5;
  if (!v5)
  {
LABEL_10:

    v17 = *MEMORY[0x277D85DE8];
    return v6;
  }

  [(PSExecutionSession3rdPartyReader *)v5 setName:nameCopy];
  if (ps_util_init_mach_time_factor() != 0.0)
  {
    ps_util_is_internal_build();
    v7 = objc_alloc(MEMORY[0x277D3E688]);
    name = [(PSExecutionSession3rdPartyReader *)v6 name];
    v9 = [v7 initForExecutionSession:name];
    context = v6->_context;
    v6->_context = v9;

    v11 = [[PLSDevice alloc] initWithContext:v6->_context];
    device = v6->_device;
    v6->_device = v11;

    v13 = [[PSTransitionManager3rdPartyReader alloc] initWithExecutionSession:v6 withContext:v6->_context];
    transitionManager = v6->_transitionManager;
    v6->_transitionManager = v13;

    if (ps_util_check_sandbox_for_syscall_threadself())
    {
      v15 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEFAULT, "Process is allowed to call thread_self APIs", buf, 2u);
      }
    }

    v16 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = nameCopy;
      _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEFAULT, "Created execution session with name %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  v19 = [PSExecutionSession3rdPartyReader initWithName:buf];
  return [(PSExecutionSession3rdPartyReader *)v19 commitAddedGraphs:v20 removedGraphs:v21 error:v22, v23];
}

- (int)registerForContextUpdatesFromResourcesWithCategory:(unint64_t)category
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  resourceCategorySubscriptions = self->_resourceCategorySubscriptions;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:?];
  [(NSMutableSet *)resourceCategorySubscriptions addObject:v6];

  if (category == 1)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__PSExecutionSession3rdPartyReader_registerForContextUpdatesFromResourcesWithCategory___block_invoke;
    v9[3] = &unk_279A480F8;
    v9[4] = self;
    v9[5] = &v10;
    if (registerForContextUpdatesFromResourcesWithCategory__onceToken != -1)
    {
      dispatch_once(&registerForContextUpdatesFromResourcesWithCategory__onceToken, v9);
    }
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __87__PSExecutionSession3rdPartyReader_registerForContextUpdatesFromResourcesWithCategory___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = +[PSDeviceManager sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  [*(*(a1 + 32) + 56) set3PRExecutionSession:*(a1 + 32) with3PRTransitionManager:*(*(a1 + 32) + 24)];
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 56) startServiceMatching];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v8[0] = 67109120;
      v8[1] = v6;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "Failed to start PSDeviceManager service matching with err:0x%x", v8, 8u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (uint64_t)initWithName:(char *)a1 .cold.1(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to initialize mach timebase factor. This will cause incorrect conversions from mach ticks to nanoseconds which will probably cause wrong timestamps and algorithms to fail");
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v9 = 136315394;
    v10 = "[PSExecutionSession3rdPartyReader initWithName:]";
    v11 = 1024;
    v12 = 53;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Failed to initialize mach timebase factor. This will cause incorrect conversions from mach ticks to nanoseconds which will probably cause wrong timestamps and algorithms to fail", &v9, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[PSExecutionSession3rdPartyReader initWithName:]";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  return [PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:v7];
}

@end