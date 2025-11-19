@interface PSReader
- (PSReader)initWithName:(id)a3 withInput:(id)a4;
- (id)description;
- (void)dealloc;
@end

@implementation PSReader

- (PSReader)initWithName:(id)a3 withInput:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PSReader;
  v9 = [(PSReader *)&v16 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v9->_name, a3);
  objc_storeStrong(&v10->_input, a4);
  v11 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040F0D21161uLL);
  v10->_context = v11;
  if (v11)
  {
    atomic_store(4u, v11 + 6);
LABEL_4:

    return v10;
  }

  v13 = [PSReader initWithName:? withInput:?];
  return [(PSReader *)v13 description];
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"...<%@: %@>", objc_opt_class(), self->_name];
  [v3 appendFormat:@"\n%@", self->_input];

  return v3;
}

- (void)dealloc
{
  free(self->_context);
  v3.receiver = self;
  v3.super_class = PSReader;
  [(PSReader *)&v3 dealloc];
}

- (uint64_t)initWithName:(char *)a1 withInput:.cold.1(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: OOM!", "[PSReader initWithName:withInput:]");
  v2 = __PSGraphLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v10 = "[PSReader initWithName:withInput:]";
    v11 = 1024;
    v12 = 24;
    v13 = 2080;
    v14 = "[PSReader initWithName:withInput:]";
    _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s: OOM!", buf, 0x1Cu);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PSGraphLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[PSReader initWithName:withInput:]";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EC85000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  return ps_task_context_set_mtl_device_cold_1(v7);
}

@end