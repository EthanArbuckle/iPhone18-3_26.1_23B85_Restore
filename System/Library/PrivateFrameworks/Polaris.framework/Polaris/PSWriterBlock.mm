@interface PSWriterBlock
- (PSWriterBlock)initWithWriter:(id)writer;
- (PSWriterBlock)initWithWriter:(id)writer graph:(id)graph withStream:(id)stream withWriterOptions:(PSResourceManagerOptions *)options withPRMManager:(PSResourceManager *)manager withDevice:(id)device withResourceOptions:(ps_task_output_resource_options_s *)resourceOptions withCAWriterDimensions:(id *)self0 withFrameHistoryClientHandle:(void *)self1;
- (PSWriterBlock)initWithWriter:(id)writer withSourceBlock:(id)block withPRMManager:(PSResourceManager *)manager;
- (void)dealloc;
@end

@implementation PSWriterBlock

- (PSWriterBlock)initWithWriter:(id)writer
{
  writerCopy = writer;
  v11.receiver = self;
  v11.super_class = PSWriterBlock;
  v6 = [(PSWriterBlock *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_writer, writer);
    getContext = [writerCopy getContext];
    getContext[5] = ps_writer_block_acquire;
    getContext[6] = ps_writer_block_relinquish;
    getContext[7] = ps_writer_block_publish;
    getContext[8] = ps_writer_block_pause;
    getContext[9] = ps_writer_block_resume;
    v9 = v7;
  }

  return v7;
}

- (PSWriterBlock)initWithWriter:(id)writer graph:(id)graph withStream:(id)stream withWriterOptions:(PSResourceManagerOptions *)options withPRMManager:(PSResourceManager *)manager withDevice:(id)device withResourceOptions:(ps_task_output_resource_options_s *)resourceOptions withCAWriterDimensions:(id *)self0 withFrameHistoryClientHandle:(void *)self1
{
  writerCopy = writer;
  graphCopy = graph;
  streamCopy = stream;
  deviceCopy = device;
  v21 = [(PSWriterBlock *)self initWithWriter:writerCopy];
  if (!v21)
  {
LABEL_22:

    return v21;
  }

  v43 = deviceCopy;
  v44 = graphCopy;
  getContext = [writerCopy getContext];
  v23 = malloc_type_calloc(1uLL, 0x30uLL, 0x1020040B9B5DC2EuLL);
  name = [writerCopy name];
  v25 = ps_task_resources_create(0, 1u, [name UTF8String], manager, 1);

  if (v25)
  {
    ps_task_resources_add_output(v25, options, 0);
    *v23 = v25;
    [streamCopy provider];
    *(v23 + 32) = ps_resource_stream_provider_is_rc();
    *(getContext + 112) = handle;
    ps_frame_history_writer_buffer_init(handle, v44, writerCopy);
    output = [writerCopy output];
    resourceKey = [output resourceKey];
    uTF8String = [resourceKey UTF8String];
    if (uTF8String)
    {
      v29 = -2128831035;
      v30 = *uTF8String;
      if (*uTF8String)
      {
        v31 = uTF8String + 1;
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

    *(getContext + 88) = ps_ca_camera_delivery_init(dimensions, v29, &__block_literal_global_12);

    if (*(v23 + 32) == 1)
    {
      v33 = [streamCopy key];
      deviceCopy = v43;
      v34 = [v43 propertiesForKey:v33];
      rcFrameID = [v34 rcFrameID];

      if (rcFrameID)
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
      deviceCopy = v43;
    }

    *(v23 + 5) = 0;
    if ([streamCopy framerate] && objc_msgSend(streamCopy, "resourceClass") != 10)
    {
      v36 = ps_liveness_node_allocate();
      *(v23 + 2) = v36;
      v37 = [streamCopy key];
      ps_liveness_node_set_base_info(v36, 0, [v37 UTF8String]);

      [streamCopy provider];
      if (ps_resource_stream_provider_is_rc())
      {
        ps_liveness_node_set_aux_string(*(v23 + 2), "CamStream");
      }

      ps_liveness_node_set_deadlines(*(v23 + 2), [streamCopy framerate], 0x3B9ACA00uLL / objc_msgSend(streamCopy, "framerate"));
      ps_liveness_node_finalize(*(v23 + 2), 1);
    }

    [streamCopy provider];
    if (ps_resource_stream_provider_is_rc())
    {
      v38 = [streamCopy key];
      *(v23 + 3) = ps_telemetry_create_string_id([v38 UTF8String]);
    }

    v39 = [streamCopy key];
    *(v23 + 2) = [PLSDevice getAriadneID:v39];

    *getContext = 0;
    *(getContext + 8) = v23;
    v40 = v21;
    graphCopy = v44;
    goto LABEL_22;
  }

  v42 = [PSWriterBlock initWithWriter:writerCopy graph:? withStream:? withWriterOptions:? withPRMManager:? withDevice:? withResourceOptions:? withCAWriterDimensions:? withFrameHistoryClientHandle:?];
  return __165__PSWriterBlock_initWithWriter_graph_withStream_withWriterOptions_withPRMManager_withDevice_withResourceOptions_withCAWriterDimensions_withFrameHistoryClientHandle___block_invoke(v42);
}

- (PSWriterBlock)initWithWriter:(id)writer withSourceBlock:(id)block withPRMManager:(PSResourceManager *)manager
{
  writerCopy = writer;
  blockCopy = block;
  v9 = [(PSWriterBlock *)self initWithWriter:writerCopy];
  if (v9)
  {
    getContext = [writerCopy getContext];
    objc_storeStrong(&v9->_sourceWriterBlock, block);
    *getContext = 1;
    sourceTask = [writerCopy sourceTask];
    *(getContext + 8) = [sourceTask sourceTaskFunction];

    sourceTask2 = [writerCopy sourceTask];
    *(getContext + 16) = [sourceTask2 sourceTaskData];

    sourceTask3 = [writerCopy sourceTask];
    *(getContext + 24) = [sourceTask3 resources];

    v14 = v9;
  }

  return v9;
}

- (void)dealloc
{
  getContext = [(PSWriter *)self->_writer getContext];
  ps_frame_history_graph_metadata_set_removal_timestamp(*(getContext + 96));
  ps_frame_history_buffer_service_deallocate_buffer(*(getContext + 112), *(getContext + 96));
  ps_ca_camera_delivery_delete(*(getContext + 88));
  if (*getContext)
  {
    *(getContext + 8) = 0;
    *(getContext + 16) = 0;
    *(getContext + 24) = 0;
    [(PSSourceWriterBlock *)self->_sourceWriterBlock stop];
  }

  else
  {
    v4 = *(getContext + 8);
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
    *(getContext + 8) = 0;
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