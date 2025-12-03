@interface PSSystemEventStream
- (BOOL)start;
- (BOOL)stop;
- (PSSystemEventStream)initWithKey:(id)key event:(unint64_t)event rate:(unint64_t)rate queue:(id)queue writerInstance:(PRMWriterInstance *)instance;
- (uint64_t)start;
- (void)PLSSystemEventNodeNotifyTimer;
- (void)dealloc;
@end

@implementation PSSystemEventStream

- (PSSystemEventStream)initWithKey:(id)key event:(unint64_t)event rate:(unint64_t)rate queue:(id)queue writerInstance:(PRMWriterInstance *)instance
{
  keyCopy = key;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = PSSystemEventStream;
  v15 = [(PSSystemEventStream *)&v26 init];
  v16 = v15;
  if (!v15 || (objc_storeStrong(&v15->_key, key), v16->_eventType = event, v16->_eventRate = rate, objc_storeStrong(&v16->_queue, queue), v16->_writer_inst = instance, v16->_sys_stream_context = ps_system_stream_context_create(), v16->_eventType != 1))
  {
    v21 = 0;
    goto LABEL_6;
  }

  v16->_ariadneID = 400;
  v17 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  v16->_timer_stream_context = v17;
  if (v17)
  {
    v17->var0 = rate;
    ps_system_stream_context_set_stream_context(v16->_sys_stream_context, v17);
    *&v16->_running = 256;
    v18 = dispatch_semaphore_create(0);
    wait_semaphore = v16->_wait_semaphore;
    v16->_wait_semaphore = v18;

    v16->_ps_res_array = ps_resource_array_create();
    resource = ps_resource_array_get_resource();
    v16->_ps_res = resource;
    MEMORY[0x25F8C9510](resource, [keyCopy UTF8String]);
    MEMORY[0x25F8C93F0](v16->_ps_res, 1);
    MEMORY[0x25F8C94A0](v16->_ps_res, 1);
    v21 = v16;
LABEL_6:

    return v21;
  }

  v23 = [PSSystemEventStream initWithKey:? event:? rate:? queue:? writerInstance:?];
  [(PSSystemEventStream *)v23 dealloc];
  return result;
}

- (void)dealloc
{
  timer_stream_context = self->_timer_stream_context;
  if (timer_stream_context)
  {
    free(timer_stream_context);
    self->_timer_stream_context = 0;
  }

  sys_stream_context = self->_sys_stream_context;
  if (sys_stream_context)
  {
    ps_system_stream_context_destroy(sys_stream_context);
    self->_sys_stream_context = 0;
  }

  self->_ps_res = 0;
  if (self->_ps_res_array)
  {
    ps_resource_array_free();
    self->_ps_res_array = 0;
  }

  v5.receiver = self;
  v5.super_class = PSSystemEventStream;
  [(PSSystemEventStream *)&v5 dealloc];
}

- (BOOL)start
{
  if ((ps_system_stream_context_get_keep_running(self->_sys_stream_context) & 1) != 0 || !self->_nodeStopped)
  {
    start = [(PSSystemEventStream *)&v6 start];
    [(PSSystemEventStream *)start PLSSystemEventNodeNotifyTimer];
  }

  else
  {
    ps_system_stream_context_set_keep_running(self->_sys_stream_context, 1u);
    *&self->_running = 1;
    self->_firstSample = 1;
    ps_system_stream_context_set_writer_inst(&self->_sys_stream_context->var0, self->_writer_inst);
    ps_system_stream_context_set_ps_resource(self->_sys_stream_context, self->_ps_res);
    ps_system_stream_context_set_ariadne_id(self->_sys_stream_context, self->_ariadneID);
    ps_system_stream_context_set_wait_semaphore(self->_sys_stream_context, self->_wait_semaphore);
    if (self->_eventType == 1)
    {
      [(PSSystemEventStream *)self PLSSystemEventNodeNotifyTimer];
    }

    return 1;
  }

  return result;
}

- (void)PLSSystemEventNodeNotifyTimer
{
  queue = [(PSSystemEventStream *)self queue];
  dispatch_async_f(queue, self->_sys_stream_context, _timerNotificationFunc);
}

- (BOOL)stop
{
  ps_system_stream_context_set_keep_running(self->_sys_stream_context, 0);
  ps_system_stream_context_semaphore_wait(self->_sys_stream_context);
  ps_system_stream_context_reset(self->_sys_stream_context);
  *&self->_running = 256;
  return 1;
}

- (uint64_t)initWithKey:(char *)a1 event:rate:queue:writerInstance:.cold.1(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  v1 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v9 = 136315394;
    v10 = "[PSSystemEventStream initWithKey:event:rate:queue:writerInstance:]";
    v11 = 1024;
    v12 = 204;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d OOM!", &v9, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[PSSystemEventStream initWithKey:event:rate:queue:writerInstance:]";
      v11 = 1024;
      v12 = v3;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v5, v6, "%s() failed to flush buffers with error code: %d", &v9);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = OUTLINED_FUNCTION_0();
  return [(PSSystemEventStream *)v7 start];
}

- (uint64_t)start
{
  v29 = *MEMORY[0x277D85DE8];
  *self = 0;
  v4 = [a2 key];
  asprintf(self, "Unexpected state: System Event Node started (when it's already active): %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = [a2 key];
    v24 = "[PSSystemEventStream start]";
    v25 = 1024;
    v26 = 262;
    v27 = 2080;
    uTF8String = [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Unexpected state: System Event Node started (when it's already active): %s", v9, v10, v11, v12, v21, v22, 2u);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = v13;
    v15 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[PSSystemEventStream start]";
      v25 = 1024;
      v26 = v14;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v18 = OUTLINED_FUNCTION_0();
  return _timerNotificationFunc_cold_1(v18, v19);
}

@end