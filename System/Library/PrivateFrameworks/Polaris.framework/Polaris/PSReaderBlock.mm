@interface PSReaderBlock
- (PSReaderBlock)initWithReader:(id)reader graph:(id)graph readerOptions:(PSResourceManagerOptions *)options resourceOptions:(ps_input_resource_options_s *)resourceOptions withPRMManager:(PSResourceManager *)manager forCABufferExpiry:(id *)expiry withFrameHistoryClientHandle:(void *)handle;
- (id)init3rdPartyReader:(id)reader graph:(id)graph readerOptions:(PSResourceManagerOptions *)options withPRMManager:(PSResourceManager *)manager;
- (void)dealloc;
@end

@implementation PSReaderBlock

- (PSReaderBlock)initWithReader:(id)reader graph:(id)graph readerOptions:(PSResourceManagerOptions *)options resourceOptions:(ps_input_resource_options_s *)resourceOptions withPRMManager:(PSResourceManager *)manager forCABufferExpiry:(id *)expiry withFrameHistoryClientHandle:(void *)handle
{
  readerCopy = reader;
  graphCopy = graph;
  v33.receiver = self;
  v33.super_class = PSReaderBlock;
  v18 = [(PSReaderBlock *)&v33 init];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = [graphCopy criticalityCPU] != 0;
  name = [readerCopy name];
  v21 = ps_task_resources_create(1u, 0, [name UTF8String], manager, v19);

  if (v21)
  {
    manager = [readerCopy input];
    type = [(PSResourceManager *)manager type];
    if ((type - 1) < 2)
    {
      ps_task_resources_add_input(v21, [(PSResourceManager *)manager type], 0xFFFFFFFF, options, 0, 0, resourceOptions, expiry, 1);
LABEL_7:
      objc_storeStrong(&v18->_reader, reader);
      getContext = [readerCopy getContext];
      *getContext = v21;
      getContext[1] = ps_reader_block_acquire;
      getContext[2] = ps_reader_block_relinquish;
      getContext[6] = handle;
      ps_frame_history_reader_buffer_init(handle, graphCopy, readerCopy);
      v24 = v18;

LABEL_8:
      return v18;
    }

    if (type && type != 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [PSReaderBlock initWithReader:readerCopy graph:? readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
  }

  v26 = [PSReaderBlock initWithReader:manager graph:? readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
  return [(PSReaderBlock *)v26 init3rdPartyReader:v27 graph:v28 readerOptions:v29 withPRMManager:v30, v31];
}

- (id)init3rdPartyReader:(id)reader graph:(id)graph readerOptions:(PSResourceManagerOptions *)options withPRMManager:(PSResourceManager *)manager
{
  readerCopy = reader;
  graphCopy = graph;
  v24.receiver = self;
  v24.super_class = PSReaderBlock;
  v13 = [(PSReaderBlock *)&v24 init];
  if (!v13)
  {
    goto LABEL_8;
  }

  name = [readerCopy name];
  v15 = ps_task_resources_create(1u, 0, [name UTF8String], manager, 0);

  if (!v15)
  {
    [PSReaderBlock init3rdPartyReader:readerCopy graph:? readerOptions:? withPRMManager:?];
  }

  input = [readerCopy input];
  type = [input type];
  if ((type - 1) < 2)
  {
    ps_task_3rdParty_resources_add_input(v15, [input type], options);
LABEL_7:
    objc_storeStrong(&v13->_reader, reader);
    getContext = [readerCopy getContext];
    *getContext = v15;
    getContext[1] = ps_reader_block_acquire;
    getContext[2] = ps_reader_block_relinquish;
    v19 = v13;

LABEL_8:
    return v13;
  }

  if (type && type != 3)
  {
    goto LABEL_7;
  }

  v21 = [PSReaderBlock init3rdPartyReader:input graph:? readerOptions:? withPRMManager:?];
  [(PSReaderBlock *)v21 dealloc];
  return result;
}

- (void)dealloc
{
  getContext = [(PSReader *)self->_reader getContext];
  ps_task_resources_destroy_inputs(*getContext);
  ps_task_resources_destroy_outputs(*getContext);
  ps_task_resources_destroy(*getContext);
  ps_frame_history_graph_metadata_set_removal_timestamp(*(getContext + 32));
  ps_frame_history_buffer_service_deallocate_buffer(*(getContext + 48), *(getContext + 32));
  reader = self->_reader;
  self->_reader = 0;

  v5.receiver = self;
  v5.super_class = PSReaderBlock;
  [(PSReaderBlock *)&v5 dealloc];
}

- (uint64_t)initWithReader:(char *)a1 graph:(void *)a2 readerOptions:resourceOptions:withPRMManager:forCABufferExpiry:withFrameHistoryClientHandle:.cold.1(char **a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSReader input cannot have policy wait/synced type%lu", [a2 type]);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d PSReader input cannot have policy wait/synced type%lu", v7, v8, v9, v10, v20, v21, v22);
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
  return [PSReaderBlock initWithReader:v18 graph:? readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
}

- (uint64_t)initWithReader:(char *)a1 graph:(void *)a2 readerOptions:resourceOptions:withPRMManager:forCABufferExpiry:withFrameHistoryClientHandle:.cold.2(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Creating reader resources failed for %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Creating reader resources failed for %s", v9, v10, v11, v12, v22, v23, v24);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSReaderBlock init3rdPartyReader:v20 graph:? readerOptions:? withPRMManager:?];
}

- (uint64_t)init3rdPartyReader:(char *)a1 graph:(void *)a2 readerOptions:withPRMManager:.cold.1(char **a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "PSReader input cannot have policy wait/synced type%lu", [a2 type]);
  v4 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v4))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d PSReader input cannot have policy wait/synced type%lu", v7, v8, v9, v10, v20, v21, v22);
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
  return [PSReaderBlock init3rdPartyReader:v18 graph:? readerOptions:? withPRMManager:?];
}

- (void)init3rdPartyReader:(char *)a1 graph:(void *)a2 readerOptions:withPRMManager:.cold.2(char **a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Creating reader resources failed for %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Creating reader resources failed for %s", v9, v10, v11, v12, v20, v21, v22);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_segment_controller_set_segment_name_cold_1();
}

@end