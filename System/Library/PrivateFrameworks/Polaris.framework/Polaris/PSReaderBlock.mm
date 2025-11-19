@interface PSReaderBlock
- (PSReaderBlock)initWithReader:(id)a3 graph:(id)a4 readerOptions:(PSResourceManagerOptions *)a5 resourceOptions:(ps_input_resource_options_s *)a6 withPRMManager:(PSResourceManager *)a7 forCABufferExpiry:(id *)a8 withFrameHistoryClientHandle:(void *)a9;
- (id)init3rdPartyReader:(id)a3 graph:(id)a4 readerOptions:(PSResourceManagerOptions *)a5 withPRMManager:(PSResourceManager *)a6;
- (void)dealloc;
@end

@implementation PSReaderBlock

- (PSReaderBlock)initWithReader:(id)a3 graph:(id)a4 readerOptions:(PSResourceManagerOptions *)a5 resourceOptions:(ps_input_resource_options_s *)a6 withPRMManager:(PSResourceManager *)a7 forCABufferExpiry:(id *)a8 withFrameHistoryClientHandle:(void *)a9
{
  v16 = a3;
  v17 = a4;
  v33.receiver = self;
  v33.super_class = PSReaderBlock;
  v18 = [(PSReaderBlock *)&v33 init];
  if (!v18)
  {
    goto LABEL_8;
  }

  v19 = [v17 criticalityCPU] != 0;
  v20 = [v16 name];
  v21 = ps_task_resources_create(1u, 0, [v20 UTF8String], a7, v19);

  if (v21)
  {
    a7 = [v16 input];
    v22 = [(PSResourceManager *)a7 type];
    if ((v22 - 1) < 2)
    {
      ps_task_resources_add_input(v21, [(PSResourceManager *)a7 type], 0xFFFFFFFF, a5, 0, 0, a6, a8, 1);
LABEL_7:
      objc_storeStrong(&v18->_reader, a3);
      v23 = [v16 getContext];
      *v23 = v21;
      v23[1] = ps_reader_block_acquire;
      v23[2] = ps_reader_block_relinquish;
      v23[6] = a9;
      ps_frame_history_reader_buffer_init(a9, v17, v16);
      v24 = v18;

LABEL_8:
      return v18;
    }

    if (v22 && v22 != 3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    [PSReaderBlock initWithReader:v16 graph:? readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
  }

  v26 = [PSReaderBlock initWithReader:a7 graph:? readerOptions:? resourceOptions:? withPRMManager:? forCABufferExpiry:? withFrameHistoryClientHandle:?];
  return [(PSReaderBlock *)v26 init3rdPartyReader:v27 graph:v28 readerOptions:v29 withPRMManager:v30, v31];
}

- (id)init3rdPartyReader:(id)a3 graph:(id)a4 readerOptions:(PSResourceManagerOptions *)a5 withPRMManager:(PSResourceManager *)a6
{
  v11 = a3;
  v12 = a4;
  v24.receiver = self;
  v24.super_class = PSReaderBlock;
  v13 = [(PSReaderBlock *)&v24 init];
  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [v11 name];
  v15 = ps_task_resources_create(1u, 0, [v14 UTF8String], a6, 0);

  if (!v15)
  {
    [PSReaderBlock init3rdPartyReader:v11 graph:? readerOptions:? withPRMManager:?];
  }

  v16 = [v11 input];
  v17 = [v16 type];
  if ((v17 - 1) < 2)
  {
    ps_task_3rdParty_resources_add_input(v15, [v16 type], a5);
LABEL_7:
    objc_storeStrong(&v13->_reader, a3);
    v18 = [v11 getContext];
    *v18 = v15;
    v18[1] = ps_reader_block_acquire;
    v18[2] = ps_reader_block_relinquish;
    v19 = v13;

LABEL_8:
    return v13;
  }

  if (v17 && v17 != 3)
  {
    goto LABEL_7;
  }

  v21 = [PSReaderBlock init3rdPartyReader:v16 graph:? readerOptions:? withPRMManager:?];
  [(PSReaderBlock *)v21 dealloc];
  return result;
}

- (void)dealloc
{
  v3 = [(PSReader *)self->_reader getContext];
  ps_task_resources_destroy_inputs(*v3);
  ps_task_resources_destroy_outputs(*v3);
  ps_task_resources_destroy(*v3);
  ps_frame_history_graph_metadata_set_removal_timestamp(*(v3 + 32));
  ps_frame_history_buffer_service_deallocate_buffer(*(v3 + 48), *(v3 + 32));
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