@interface PSHIDStream
- (PSHIDStream)initWithKey:(id)key rate:(unint64_t)rate queue:(id)queue writerInstance:(PRMWriterInstance *)instance execSessionName:(id)name;
- (void)createLiveness:(id)liveness rate:(unint64_t)rate sessionName:(id)name;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation PSHIDStream

- (void)createLiveness:(id)liveness rate:(unint64_t)rate sessionName:(id)name
{
  livenessCopy = liveness;
  nameCopy = name;
  v9 = ps_liveness_node_allocate();
  self->_livenessNode = v9;
  ps_liveness_node_set_base_info(v9, 0, [livenessCopy UTF8String]);
  ps_liveness_node_set_aux_string(self->_livenessNode, "HIDStream");
  ps_liveness_node_set_deadlines(self->_livenessNode, rate, 0x3B9ACA00 / rate);
  ps_liveness_node_set_session(self->_livenessNode, [nameCopy UTF8String]);
  ps_liveness_node_finalize(self->_livenessNode, 1);
}

- (PSHIDStream)initWithKey:(id)key rate:(unint64_t)rate queue:(id)queue writerInstance:(PRMWriterInstance *)instance execSessionName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  queueCopy = queue;
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = PSHIDStream;
  v16 = [(PSHIDStream *)&v30 init];
  v17 = v16;
  v18 = v16;
  if (!v16)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v16->_key, key);
  objc_storeStrong(&v17->_queue, queue);
  v18->_writer_inst = instance;
  v18->_ps_res_array = ps_resource_array_create();
  resource = ps_resource_array_get_resource();
  v18->_ps_res = resource;
  v20 = keyCopy;
  MEMORY[0x25F8C9510](resource, [keyCopy UTF8String]);
  MEMORY[0x25F8C93F0](v18->_ps_res, 1);
  MEMORY[0x25F8C94A0](v18->_ps_res, 1);
  v21 = dispatch_semaphore_create(0);
  wait_semaphore = v18->_wait_semaphore;
  v18->_wait_semaphore = v21;

  v18->_ariadneID = [PLSDevice getAriadneID:keyCopy];
  if (([keyCopy isEqual:PLSResourceKeyAccel[0]] & 1) != 0 || objc_msgSend(keyCopy, "isEqual:", PLSResourceKeyGyro[0]))
  {
    v18->_location = 0;
  }

  [(PSHIDStream *)v18 setSampleRate:rate];
  v18->_firstSample = 1;
  v23 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A004028551338uLL);
  v18->_sys_stream_context = v23;
  if (v23)
  {
    [(PSHIDStream *)v18 createLiveness:keyCopy rate:rate sessionName:nameCopy];
    [(PSHIDStream *)v18 open];
    v24 = v18;
LABEL_7:

    v25 = *MEMORY[0x277D85DE8];
    return v18;
  }

  v29 = 0;
  asprintf(&v29, "OOM!");
  v27 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v32 = "[PSHIDStream initWithKey:rate:queue:writerInstance:execSessionName:]";
    v33 = 1024;
    v34 = 122;
    _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_FAULT, "%s:%d OOM!", buf, 0x12u);
  }

  if (OSLogFlushBuffers())
  {
    v28 = __PLSLogSharedInstance();
    [PSHIDStream initWithKey:v28 rate:? queue:? writerInstance:? execSessionName:?];
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

- (void)dealloc
{
  self->_ps_res = 0;
  if (self->_ps_res_array)
  {
    ps_resource_array_free();
    self->_ps_res_array = 0;
  }

  free(self->_sys_stream_context);
  self->_sys_stream_context = 0;
  [(PSHIDStream *)self destroyLiveness];
  v3.receiver = self;
  v3.super_class = PSHIDStream;
  [(PSHIDStream *)&v3 dealloc];
}

- (void)start
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_1_1(v1))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_serviceClient)
  {
    systemClient = self->_systemClient;
    IOHIDEventSystemClientCancel();
    ps_system_stream_context_semaphore_wait(self->_sys_stream_context);
    v4 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [(PSHIDStream *)self key];
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "stopStreams %@", &v12, 0xCu);
    }

    ps_liveness_node_pause(self->_livenessNode, 1);
    self->_running = 0;
    [(PSHIDStream *)self setHIDReportInterval:0];
    [(PSHIDStream *)self setHIDBatchInterval:0];
    ps_system_stream_context_reset(self->_sys_stream_context);
    if (self->_systemClient)
    {
      IOHIDEventSystemClientUnregisterEventCallback();
      v6 = self->_systemClient;
      queue = [(PSHIDStream *)self queue];
      IOHIDEventSystemClientCancel();
    }

    serviceClient = self->_serviceClient;
    if (serviceClient)
    {
      CFRelease(serviceClient);
    }

    v9 = self->_systemClient;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  hid_stream_context = self->_hid_stream_context;
  if (hid_stream_context)
  {
    free(hid_stream_context);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)initWithKey:(NSObject *)a1 rate:queue:writerInstance:execSessionName:.cold.1(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end