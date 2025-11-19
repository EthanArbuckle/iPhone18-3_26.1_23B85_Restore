@interface PSLocalStreamManager
- (PRMWriterInstance)createWriterInstForKey:(id)a3 withResStream:(id)a4;
- (PSLocalStreamManager)initWithContext:(id)a3 withTransitionManager:(id)a4 withDevice:(id)a5 withGSM:(ps_gsm_s *)a6 withPRMManager:(PSResourceManager *)a7;
- (PSTransitionManager)transitionManager;
- (void)startEventSource:(id)a3 withResStream:(id)a4;
- (void)startIMUSource:(id)a3 withResStream:(id)a4;
- (void)startPolarisdCommsStream:(id)a3 withResStream:(id)a4;
- (void)startSourceForKey:(id)a3;
- (void)stopSourceForKey:(id)a3;
@end

@implementation PSLocalStreamManager

- (PSLocalStreamManager)initWithContext:(id)a3 withTransitionManager:(id)a4 withDevice:(id)a5 withGSM:(ps_gsm_s *)a6 withPRMManager:(PSResourceManager *)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v23.receiver = self;
  v23.super_class = PSLocalStreamManager;
  v16 = [(PSLocalStreamManager *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_context, a3);
    objc_storeWeak(&v17->_transitionManager, v14);
    objc_storeStrong(&v17->_device, a5);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeStreams = v17->_activeStreams;
    v17->_activeStreams = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retainedBufferIndexers = v17->_retainedBufferIndexers;
    v17->_retainedBufferIndexers = v20;

    v17->_prm_mgr = a7;
    v17->_gsm = a6;
  }

  return v17;
}

- (void)startSourceForKey:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = [v4 UTF8String];
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "Starting local stream for key %s", &v17, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:v4];

  if (v6)
  {
    [(PSLocalStreamManager *)&v17 startSourceForKey:v4];
    goto LABEL_12;
  }

  v7 = [(PSContext *)self->_context resourceStreamForKey:v4];
  if (!v7)
  {
LABEL_12:
    [(PSLocalStreamManager *)&v17 startSourceForKey:v4];
LABEL_13:
    [(PSLocalStreamManager *)&v17 startSourceForKey:v4];
  }

  v8 = v7;
  v9 = [(PLSDevice *)self->_device propertiesForKey:v4];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 type];
  if (v11 == 7)
  {
    [(PSLocalStreamManager *)self startEventSource:v4 withResStream:v8];
    goto LABEL_10;
  }

  if (v11 == 1)
  {
    [(PSLocalStreamManager *)self startIMUSource:v4 withResStream:v8];
LABEL_10:

    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v13 = [(PSLocalStreamManager *)&v17 startSourceForKey:v10];
  [(PSLocalStreamManager *)v13 createWriterInstForKey:v14 withResStream:v15, v16];
}

- (PRMWriterInstance)createWriterInstForKey:(id)a3 withResStream:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ps_prm_opts_create();
  retainedBufferIndexers = self->_retainedBufferIndexers;
  [PSGraphCompiler populateWriterOpts:v8 forKey:v6 withCapacity:1 forGraph:0 withResStream:v7 withContext:self->_context retainedBufferIndexers:retainedBufferIndexers withGSM:self->_gsm];

  v10 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = [v6 UTF8String];
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "Creating writer instance for source %s", buf, 0xCu);
  }

  writer_instance = ps_prm_create_writer_instance(self->_prm_mgr, v8);
  ps_prm_opts_destroy(v8);

  v12 = *MEMORY[0x277D85DE8];
  return writer_instance;
}

- (void)startIMUSource:(id)a3 withResStream:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PSLocalStreamManager *)self createWriterInstForKey:v7 withResStream:v6];
  v15 = [PSDispatchQueueCreator createGCDQueueWithQOS:0 key:v7];
  v9 = [PSHIDStream alloc];
  v10 = [v6 framerate];

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  v12 = [WeakRetained executionSession];
  v13 = [v12 name];
  v14 = [(PSHIDStream *)v9 initWithKey:v7 rate:v10 queue:v15 writerInstance:v8 execSessionName:v13];

  [(PSHIDStream *)v14 start];
  [(NSMutableDictionary *)self->_activeStreams setObject:v14 forKeyedSubscript:v7];
}

- (void)startEventSource:(id)a3 withResStream:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSLocalStreamManager *)self createWriterInstForKey:v6 withResStream:v7];
  v9 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = [v6 UTF8String];
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "Starting event source for key %s", &v17, 0xCu);
  }

  v10 = [(PLSDevice *)self->_device isTimer:v6];
  if (v10)
  {
    v11 = [v7 framerate];
  }

  else
  {
    v11 = 0;
  }

  v12 = [PSDispatchQueueCreator createGCDQueueWithQOS:0 key:v6];
  if (!v10)
  {
    [PSLocalStreamManager startEventSource:v6 withResStream:?];
LABEL_10:
    [PSLocalStreamManager startEventSource:v6 withResStream:?];
  }

  v13 = v12;
  v14 = [[PSSystemEventStream alloc] initWithKey:v6 event:1 rate:v11 queue:v12 writerInstance:v8];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  [(PSSystemEventStream *)v14 start];
  [(NSMutableDictionary *)self->_activeStreams setObject:v15 forKeyedSubscript:v6];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startPolarisdCommsStream:(id)a3 withResStream:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = [v5 UTF8String];
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "Starting polarisd comms for key %s", &v9, 0xCu);
  }

  v7 = [[PSDaemonCommsStream alloc] initWithKey:v5];
  [(PSDaemonCommsStream *)v7 start];
  [(NSMutableDictionary *)self->_activeStreams setObject:v7 forKeyedSubscript:v5];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)stopSourceForKey:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_activeStreams objectForKeyedSubscript:v4];
  if (!v5)
  {
    [(PSLocalStreamManager *)&v9 stopSourceForKey:v4];
  }

  v6 = v5;
  v7 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = [v4 UTF8String];
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEFAULT, "Stopping stream for key %s", &v9, 0xCu);
  }

  [v6 stop];
  if ([v6 writer_inst])
  {
    ps_prm_delete_writer_instance(self->_prm_mgr, [v6 writer_inst]);
    [(NSMutableDictionary *)self->_retainedBufferIndexers removeObjectForKey:v4];
  }

  [(NSMutableDictionary *)self->_activeStreams removeObjectForKey:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (PSTransitionManager)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (uint64_t)startSourceForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Stream for key %s is already active.", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Stream for key %s is already active.", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSLocalStreamManager startSourceForKey:v19];
}

- (uint64_t)startSourceForKey:(char *)a1 .cold.2(char **a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Type not supported: %lu", [a2 type]);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Type not supported: %lu", v7, v8, v9, v10, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v11 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSLocalStreamManager startSourceForKey:v18];
}

- (uint64_t)startSourceForKey:(char *)a1 .cold.3(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "PLSDevice properties for key %s not defined.", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d PLSDevice properties for key %s not defined.", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSLocalStreamManager startSourceForKey:v19];
}

- (uint64_t)startSourceForKey:(char *)a1 .cold.4(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Stream for key %s not defined in PSContext.", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Stream for key %s not defined in PSContext.", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSLocalStreamManager startEventSource:v19 withResStream:?];
}

- (uint64_t)startEventSource:(char *)a1 withResStream:(void *)a2 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Unexpected system event key %s (only timers are supported on OSX)", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Unexpected system event key %s (only timers are supported on OSX)", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSLocalStreamManager startEventSource:v19 withResStream:?];
}

- (uint64_t)startEventSource:(char *)a1 withResStream:(void *)a2 .cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Something happened, stream could not be created for key %s", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Something happened, stream could not be created for key %s", v8, v9, v10, v11, v21, v22, v23);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSLocalStreamManager stopSourceForKey:v19];
}

- (uint64_t)stopSourceForKey:(char *)a1 .cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "Stream for key %s is not running.", [a2 UTF8String]);
  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Stream for key %s is not running.", v8, v9, v10, v11, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v12 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_reader_block_acquire_cold_1(v19, v20);
}

@end