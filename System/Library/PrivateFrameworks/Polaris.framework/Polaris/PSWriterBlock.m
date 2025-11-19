@interface PSWriterBlock
- (PSWriterBlock)initWithWriter:(id)a3;
- (PSWriterBlock)initWithWriter:(id)a3 graph:(id)a4 withStream:(id)a5 withWriterOptions:(PSResourceManagerOptions *)a6 withPRMManager:(PSResourceManager *)a7 withDevice:(id)a8 withResourceOptions:(ps_task_output_resource_options_s *)a9 withCAWriterDimensions:(id *)a10 withFrameHistoryClientHandle:(void *)a11;
- (PSWriterBlock)initWithWriter:(id)a3 withSourceBlock:(id)a4 withPRMManager:(PSResourceManager *)a5;
- (void)dealloc;
@end

@implementation PSWriterBlock

- (PSWriterBlock)initWithWriter:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PSWriterBlock;
  v6 = [(PSWriterBlock *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_writer, a3);
    v8 = [v5 getContext];
    v8[5] = ps_writer_block_acquire;
    v8[6] = ps_writer_block_relinquish;
    v8[7] = ps_writer_block_publish;
    v8[8] = ps_writer_block_pause;
    v8[9] = ps_writer_block_resume;
    v9 = v7;
  }

  return v7;
}

- (PSWriterBlock)initWithWriter:(id)a3 graph:(id)a4 withStream:(id)a5 withWriterOptions:(PSResourceManagerOptions *)a6 withPRMManager:(PSResourceManager *)a7 withDevice:(id)a8 withResourceOptions:(ps_task_output_resource_options_s *)a9 withCAWriterDimensions:(id *)a10 withFrameHistoryClientHandle:(void *)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a8;
  v21 = [(PSWriterBlock *)self initWithWriter:v17];
  if (!v21)
  {
LABEL_22:

    return v21;
  }

  v43 = v20;
  v44 = v18;
  v22 = [v17 getContext];
  v23 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040B9B5DC2EuLL);
  v24 = [v17 name];
  v25 = ps_task_resources_create(0, 1u, [v24 UTF8String], a7, 1);

  if (v25)
  {
    ps_task_resources_add_output(v25, a6, 0);
    *v23 = v25;
    [v19 provider];
    *(v23 + 32) = ps_resource_stream_provider_is_rc();
    *(v22 + 112) = a11;
    ps_frame_history_writer_buffer_init(a11, v44, v17);
    v26 = [v17 output];
    v27 = [v26 resourceKey];
    v28 = [v27 UTF8String];
    if (v28)
    {
      v29 = -2128831035;
      v30 = *v28;
      if (*v28)
      {
        v31 = v28 + 1;
        do
        {
          v29 = 16777619 * (v29 ^ v30);
          v32 = *v31++;
          v30 = v32;
        }

        while (v32);
      }
    }

    else
    {
      v29 = 0;
    }

    *(v22 + 88) = ps_ca_camera_delivery_init(a10, v29, &__block_literal_global_12);

    if (*(v23 + 32) == 1)
    {
      v33 = [v19 key];
      v20 = v43;
      v34 = [v43 propertiesForKey:v33];
      v35 = [v34 rcFrameID];

      if (v35)
      {
        *(v23 + 33) = 0;
      }

      else
      {
        *(v23 + 33) = 1;
      }
    }

    else
    {
      *(v23 + 33) = 0;
      v20 = v43;
    }

    *(v23 + 5) = 0;
    if ([v19 framerate] && objc_msgSend(v19, "resourceClass") != 10)
    {
      v36 = ps_liveness_node_allocate();
      *(v23 + 2) = v36;
      v37 = [v19 key];
      ps_liveness_node_set_base_info(v36, 0, [v37 UTF8String]);

      [v19 provider];
      if (ps_resource_stream_provider_is_rc())
      {
        ps_liveness_node_set_aux_string(*(v23 + 2), "CamStream");
      }

      ps_liveness_node_set_deadlines(*(v23 + 2), [v19 framerate], 0x3B9ACA00uLL / objc_msgSend(v19, "framerate"));
      ps_liveness_node_finalize(*(v23 + 2), 1);
    }

    [v19 provider];
    if (ps_resource_stream_provider_is_rc())
    {
      v38 = [v19 key];
      *(v23 + 3) = ps_telemetry_create_string_id([v38 UTF8String]);
    }

    v39 = [v19 key];
    *(v23 + 2) = [PLSDevice getAriadneID:v39];

    *v22 = 0;
    *(v22 + 8) = v23;
    v40 = v21;
    v18 = v44;
    goto LABEL_22;
  }

  v42 = [PSWriterBlock initWithWriter:v17 graph:? withStream:? withWriterOptions:? withPRMManager:? withDevice:? withResourceOptions:? withCAWriterDimensions:? withFrameHistoryClientHandle:?];
  return __165__PSWriterBlock_initWithWriter_graph_withStream_withWriterOptions_withPRMManager_withDevice_withResourceOptions_withCAWriterDimensions_withFrameHistoryClientHandle___block_invoke(v42);
}

- (PSWriterBlock)initWithWriter:(id)a3 withSourceBlock:(id)a4 withPRMManager:(PSResourceManager *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(PSWriterBlock *)self initWithWriter:v7];
  if (v9)
  {
    v10 = [v7 getContext];
    objc_storeStrong(&v9->_sourceWriterBlock, a4);
    *v10 = 1;
    v11 = [v7 sourceTask];
    *(v10 + 8) = [v11 sourceTaskFunction];

    v12 = [v7 sourceTask];
    *(v10 + 16) = [v12 sourceTaskData];

    v13 = [v7 sourceTask];
    *(v10 + 24) = [v13 resources];

    v14 = v9;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(PSWriter *)self->_writer getContext];
  ps_frame_history_graph_metadata_set_removal_timestamp(*(v3 + 96));
  ps_frame_history_buffer_service_deallocate_buffer(*(v3 + 112), *(v3 + 96));
  ps_ca_camera_delivery_delete(*(v3 + 88));
  if (*v3)
  {
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    [(PSSourceWriterBlock *)self->_sourceWriterBlock stop];
  }

  else
  {
    v4 = *(v3 + 8);
    ps_task_resources_destroy_inputs(*v4);
    ps_task_resources_destroy_outputs(*v4);
    ps_task_resources_destroy(*v4);
    *v4 = 0;
    v5 = *(v4 + 8);
    if (v5 != -1)
    {
      ps_liveness_node_free(v5);
    }

    free(v4);
    *(v3 + 8) = 0;
    writer = self->_writer;
    self->_writer = 0;
  }

  v7.receiver = self;
  v7.super_class = PSWriterBlock;
  [(PSWriterBlock *)&v7 dealloc];
}

- (uint64_t)initWithWriter:(char *)a1 graph:(void *)a2 withStream:withWriterOptions:withPRMManager:withDevice:withResourceOptions:withCAWriterDimensions:withFrameHistoryClientHandle:.cold.1(char **a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Creating writer resources failed for %s", [v4 UTF8String]);

  v5 = __PLSLogSharedInstance();
  if (OUTLINED_FUNCTION_5(v5))
  {
    v6 = [a2 name];
    [v6 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Creating writer resources failed for %s", v9, v10, v11, v12, v22, v23, 2u);
  }

  if (OSLogFlushBuffers())
  {
    v13 = __PLSLogSharedInstance();
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23, buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_grouped_source_pool_create_cold_1(v20);
}

@end