@interface PSGSTManager
- (id)handleMessage:(id)a3;
- (id)removeGST:(id)a3;
- (id)reserveGST:(id)a3;
- (unint64_t)changeCadenceAtOrAfterFrameId:(id)a3 frameID:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6;
- (unint64_t)changeCadenceOnNextValidFrameId:(id)a3 stride:(unint64_t)a4 offset:(unint64_t)a5;
- (void)removeGraphs:(id)a3;
- (void)removeThreadPool:(id)a3;
- (void)removeWaiter:(id)a3;
- (void)reserveCadenceGST:(id)a3 pid:(int)a4 graphID:(id)a5 gstPtr:(ps_gsm_gst_s *)a6 sharedTriggerPtr:(ps_gsm_shared_trigger_s *)a7;
- (void)reserveLegacyGST:(id)a3 pid:(int)a4 graphID:(id)a5 gstPtr:(ps_gsm_gst_s *)a6 sharedTriggerPtr:(ps_gsm_shared_trigger_s *)a7;
- (void)sourceClearGST:(id)a3;
@end

@implementation PSGSTManager

- (void)reserveLegacyGST:(id)a3 pid:(int)a4 graphID:(id)a5 gstPtr:(ps_gsm_gst_s *)a6 sharedTriggerPtr:(ps_gsm_shared_trigger_s *)a7
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  string = xpc_dictionary_get_string(v9, "graph_name");
  v11 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v37 = string;
    v38 = 1024;
    v39 = a4;
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEBUG, "Received a graph addition message for graph %s for client pid = %d", buf, 0x12u);
  }

  v34 = a4;

  uint64 = xpc_dictionary_get_uint64(v9, "num_sources");
  v32 = xpc_dictionary_get_BOOL(v9, "synced_buffers");
  v31 = xpc_dictionary_get_uint64(v9, "graph_exec_type");
  v29 = xpc_dictionary_get_uint64(v9, "graph_threadpool_id");
  v28 = xpc_dictionary_get_string(v9, "graph_threadpool_name");
  v30 = xpc_dictionary_get_uint64(v9, "graph_subgraph_idx");
  v13 = xpc_dictionary_get_value(v9, "source_names_array");
  v14 = xpc_dictionary_get_value(v9, "storage_modes_array");
  v15 = xpc_dictionary_get_value(v9, "down_sample_factor_array");
  v16 = xpc_dictionary_get_value(v9, "stride_factor_array");
  v17 = malloc_type_calloc(uint64, 0x88uLL, 0x1000040B5CA6940uLL);
  v18 = malloc_type_calloc(uint64, 1uLL, 0x100004077774924uLL);
  if (v13 && v14 && v15 && v16)
  {
    v26 = string;
    v27 = a7;
    if (uint64)
    {
      v19 = 0;
      v20 = v17;
      do
      {
        xpc_array_get_string(v13, v19);
        __strlcpy_chk();
        v20[32] = xpc_array_get_uint64(v15, v19);
        v20[33] = xpc_array_get_uint64(v16, v19);
        v18[v19] = xpc_array_get_uint64(v14, v19);
        ++v19;
        v20 += 34;
      }

      while (uint64 != v19);
    }

    if (v31 == 1)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
      v22 = [(PSGSTManager *)self initSharedTrigger:v21 threadPoolID:v29 pid:v34];

      muxed_gst = ps_gsm_create_muxed_gst([(PSGSTManager *)self gsm], v26, uint64, v17, v18, v32, v22, v30, v34);
    }

    else
    {
      muxed_gst = ps_gsm_create_gst([(PSGSTManager *)self gsm], v26, uint64, v17, v18, v32, v34);
      v22 = 0;
    }

    a7 = v27;
  }

  else
  {
    v24 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v37 = string;
      _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_ERROR, "We received NULL arrays over XPC for graph %s", buf, 0xCu);
    }

    v22 = 0;
    muxed_gst = 0;
  }

  free(v17);
  free(v18);
  *a6 = muxed_gst;
  *a7 = v22;

  v25 = *MEMORY[0x277D85DE8];
}

- (void)reserveCadenceGST:(id)a3 pid:(int)a4 graphID:(id)a5 gstPtr:(ps_gsm_gst_s *)a6 sharedTriggerPtr:(ps_gsm_shared_trigger_s *)a7
{
  v57 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v53 = a5;
  string = xpc_dictionary_get_string(v10, "graph_name");
  v12 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *v55 = string;
    *&v55[8] = 1024;
    *v56 = a4;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Received a graph addition message for graph %s for client pid = %d", buf, 0x12u);
  }

  v51 = string;

  uint64 = xpc_dictionary_get_uint64(v10, "num_sources");
  v49 = xpc_dictionary_get_uint64(v10, "graph_exec_type");
  v47 = xpc_dictionary_get_uint64(v10, "graph_threadpool_id");
  v46 = xpc_dictionary_get_string(v10, "graph_threadpool_name");
  v14 = xpc_dictionary_get_uint64(v10, "graph_subgraph_idx");
  v44 = xpc_dictionary_get_uint64(v10, "stride");
  v43 = xpc_dictionary_get_uint64(v10, "desired_offset");
  v15 = xpc_dictionary_get_value(v10, "source_names_array");
  v16 = xpc_dictionary_get_value(v10, "storage_modes_array");
  v17 = xpc_dictionary_get_BOOL(v10, "force_cadenced_GST");
  v18 = malloc_type_calloc(uint64, 0x80uLL, 0x1000040AE2C30F4uLL);
  v19 = malloc_type_calloc(uint64, 1uLL, 0x100004077774924uLL);
  if (v15 && v16)
  {
    v39 = v14;
    v48 = v18;
    v41 = a4;
    v42 = a7;
    if (uint64)
    {
      v20 = 0;
      v21 = v48;
      do
      {
        v22 = xpc_array_get_string(v15, v20);
        strlcpy(v21, v22, 0x80uLL);
        v19[v20] = xpc_array_get_uint64(v16, v20);
        ++v20;
        v21 += 128;
      }

      while (uint64 != v20);
    }

    v40 = v17;
    v23 = [(PSGSTManager *)self graphToStrideMap];
    v24 = [v23 objectForKey:v53];

    if (v24)
    {
      v25 = [(PSGSTManager *)self graphToStrideMap];
      v26 = [v25 objectForKey:v53];
      v27 = [v26 unsignedLongLongValue];

      v28 = [(PSGSTManager *)self graphToOffsetMap];
      v29 = [v28 objectForKey:v53];
      v30 = [v29 unsignedLongLongValue];
    }

    else
    {
      v30 = v43;
      v27 = v44;
    }

    if (!self->_shouldUseOrchestratorV2 && v40)
    {
      v30 = 2 * (v27 > 2);
    }

    v45 = v27 | (v30 << 32);
    v35 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v51];
      *buf = 67109634;
      *v55 = v27;
      *&v55[4] = 1024;
      *&v55[6] = v30;
      *v56 = 2112;
      *&v56[2] = v36;
      _os_log_impl(&dword_25EA3A000, v35, OS_LOG_TYPE_DEFAULT, "Creating GST (stride: %u offset: %u) for %@", buf, 0x18u);
    }

    v34 = v53;
    if (v49 == 1)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:v46];
      v32 = [(PSGSTManager *)self initSharedTrigger:v37 threadPoolID:v47 pid:v41];

      v34 = v53;
      v18 = v48;
      muxed_gst_with_cadence = ps_gsm_create_muxed_gst_with_cadence([(PSGSTManager *)self gsm], v51, uint64, v48, v19, v45, v32, v39, v41);
    }

    else
    {
      v18 = v48;
      muxed_gst_with_cadence = ps_gsm_create_gst_with_cadence([(PSGSTManager *)self gsm], v51, uint64, v48, v19, v45, v41);
      v32 = 0;
    }

    a7 = v42;
  }

  else
  {
    v31 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v55 = v51;
      _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_ERROR, "We received NULL arrays over XPC for graph %s", buf, 0xCu);
    }

    v32 = 0;
    muxed_gst_with_cadence = 0;
    v34 = v53;
  }

  free(v18);
  free(v19);
  *a6 = muxed_gst_with_cadence;
  *a7 = v32;

  v38 = *MEMORY[0x277D85DE8];
}

- (id)reserveGST:(id)a3
{
  v4 = a3;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = -1;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = -1;
  reply = xpc_dictionary_create_reply(v4);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v6 = xpc_dictionary_get_value(v4, "graphs_array");
  uint64 = xpc_dictionary_get_uint64(v4, "client_pid");
  string = xpc_dictionary_get_string(v4, "exec_session_name");
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __27__PSGSTManager_reserveGST___block_invoke;
  v13[3] = &unk_279A48D68;
  v17 = string;
  v18 = uint64;
  v13[4] = self;
  v15 = v21;
  v16 = v19;
  v9 = reply;
  v14 = v9;
  xpc_array_apply(v6, v13);
  v10 = v14;
  v11 = v9;

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  return v11;
}

BOOL __27__PSGSTManager_reserveGST___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v4 = a3;
  if (!v4)
  {
    __27__PSGSTManager_reserveGST___block_invoke_cold_1();
  }

  v5 = v4;
  uint64 = xpc_dictionary_get_uint64(v4, "gst_setup_type");
  string = xpc_dictionary_get_string(v5, "graph_name");
  v8 = [PSSGGraphID alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 64)];
  v11 = [(PSSGGraphID *)v8 initWithName:v9 session:v10];

  v12 = *(a1 + 32);
  v13 = *(a1 + 72);
  if (uint64 == 1)
  {
    [v12 reserveLegacyGST:v5 pid:v13 graphID:v11 gstPtr:&v24 sharedTriggerPtr:&v23];
  }

  else
  {
    [v12 reserveCadenceGST:v5 pid:v13 graphID:v11 gstPtr:&v24 sharedTriggerPtr:&v23];
  }

  if (v24)
  {
    v14 = *v24;
  }

  else
  {
    v15 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = string;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_ERROR, "GST creation failed for graph %s", buf, 0xCu);
    }

    v14 = -1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v14;
  if (v23)
  {
    v16 = *v23;
  }

  else
  {
    v16 = -1;
  }

  *(*(*(a1 + 56) + 8) + 24) = v16;
  v17 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v17, "gst_idx", *(*(*(a1 + 48) + 8) + 24));
  xpc_dictionary_set_uint64(v17, "shared_trigger_idx", *(*(*(a1 + 56) + 8) + 24));
  xpc_dictionary_set_value(*(a1 + 40), string, v17);
  v18 = *(*(*(a1 + 48) + 8) + 24);
  if (v18 != -1)
  {
    v19 = [*(a1 + 32) graphToGSTMap];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
    [v19 setObject:v20 forKey:v11];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v18 != -1;
}

- (id)removeGST:(id)a3
{
  v4 = a3;
  reply = xpc_dictionary_create_reply(v4);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v6 = xpc_dictionary_get_value(v4, "graphs_array");
  string = xpc_dictionary_get_string(v4, "exec_session_name");

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __26__PSGSTManager_removeGST___block_invoke;
  v9[3] = &unk_279A48D90;
  v9[4] = self;
  v9[5] = string;
  xpc_array_apply(v6, v9);

  return reply;
}

uint64_t __26__PSGSTManager_removeGST___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    __26__PSGSTManager_removeGST___block_invoke_cold_1();
  }

  v5 = v4;
  string = xpc_dictionary_get_string(v4, "graph_name");
  v7 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v19 = 136315138;
    v20 = string;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "Received a graph removal message for graph %s", &v19, 0xCu);
  }

  uint64 = xpc_dictionary_get_uint64(v5, "gst_idx");
  gst = ps_gsm_get_gst([*(a1 + 32) gsm], uint64);
  ps_gsm_remove_gst([*(a1 + 32) gsm], gst);
  v10 = [PSSGGraphID alloc];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
  v13 = [(PSSGGraphID *)v10 initWithName:v11 session:v12];

  v14 = [*(a1 + 32) graphToGSTMap];
  [v14 removeObjectForKey:v13];

  v15 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = atomic_load((gst + 8));
    v19 = 136315650;
    v20 = (gst + 16);
    v21 = 1024;
    v22 = v16;
    v23 = 2112;
    v24 = v13;
    _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEBUG, "GST Manager: marked gst (name: %s, pid: %d) for removal for graphID: %@", &v19, 0x1Cu);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)sourceClearGST:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "source_idx");
  v6 = xpc_dictionary_get_uint64(v4, "gst_idx_in_source_array");
  v7 = xpc_dictionary_get_uint64(v4, "source_storage_mode");
  source = ps_gsm_get_source([(PSGSTManager *)self gsm], uint64, v7);
  v9 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = source + 16;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEBUG, "Clear GST for source %s, gst index in source array  %llu", &v11, 0x16u);
  }

  if ((atomic_load_explicit((source + 8 * v6 + 160), memory_order_acquire) & 0x200000000000000) == 0)
  {
    [PSGSTManager sourceClearGST:];
  }

  ps_gsm_finish_clear_gst([(PSGSTManager *)self gsm], source, v6);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeWaiter:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(a3, "gst_idx");
  gst = ps_gsm_get_gst([(PSGSTManager *)self gsm], uint64);
  v6 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = gst + 16;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "Remove waiter for gst = %s", &v8, 0xCu);
  }

  ps_gsm_remove_waiter([(PSGSTManager *)self gsm], gst);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeThreadPool:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(a3, "graph_threadpool_id");
  v5 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = uint64;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "Remove threadPool for threadPoolId %llu", &v10, 0xCu);
  }

  v6 = [(PSGSTManager *)self threadPoolToSharedTriggerMap];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
  v8 = [v7 stringValue];
  [v6 removeObjectForKey:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)handleMessage:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "message_type");
  if (uint64 <= 2)
  {
    if (uint64 == 1)
    {
      v6 = [(PSGSTManager *)self reserveGST:v4];
    }

    else
    {
      if (uint64 != 2)
      {
        goto LABEL_13;
      }

      v6 = [(PSGSTManager *)self removeGST:v4];
    }

    v7 = v6;
    goto LABEL_17;
  }

  if (uint64 == 3)
  {
    [(PSGSTManager *)self sourceClearGST:v4];
    goto LABEL_16;
  }

  if (uint64 == 4)
  {
    [(PSGSTManager *)self removeWaiter:v4];
    goto LABEL_16;
  }

  if (uint64 != 5)
  {
LABEL_13:
    v8 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_unreliable_impl();
    }

    goto LABEL_16;
  }

  [(PSGSTManager *)self removeThreadPool:v4];
LABEL_16:
  v7 = 0;
LABEL_17:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)changeCadenceAtOrAfterFrameId:(id)a3 frameID:(unint64_t)a4 stride:(unint64_t)a5 offset:(unint64_t)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [(PSGSTManager *)self graphToStrideMap];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  [v11 setObject:v12 forKey:v10];

  v13 = [(PSGSTManager *)self graphToOffsetMap];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a6];
  [v13 setObject:v14 forKey:v10];

  v15 = [(PSGSTManager *)self graphToGSTMap];
  v16 = [v15 objectForKey:v10];

  if (!v16)
  {
    v29 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v10 name];
      _os_log_unreliable_impl();
    }

    goto LABEL_11;
  }

  v17 = [(PSGSTManager *)self graphToGSTMap];
  v18 = [v17 objectForKey:v10];
  v19 = [v18 intValue];

  gst = ps_gsm_get_gst([(PSGSTManager *)self gsm], v19);
  v21 = atomic_load((gst + 8));
  if ((v21 & 0x200000000000000) != 0)
  {
    v29 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_unreliable_impl();
    }

LABEL_11:

LABEL_12:
    v30 = -1;
    goto LABEL_13;
  }

  v22 = gst;
  v23 = (gst + 16);
  v24 = [v10 name];
  v25 = strncmp(v23, [v24 UTF8String], 0x80uLL);

  v26 = [(PSGSTManager *)self log];
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      v28 = [v10 name];
      [v28 UTF8String];
      _os_log_unreliable_impl();
    }

    goto LABEL_12;
  }

  v33 = a5 | (a6 << 32);
  if (v27)
  {
    v37 = [v10 name];
    _os_log_unreliable_impl();
  }

  v34 = [(PSGSTManager *)self log];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    atomic_load((v22 + 8));
    atomic_load((v22 + 8));
    v35 = [v10 name];
    [v35 UTF8String];
    _os_log_unreliable_impl();
  }

  v30 = ps_gsm_gst_change_cadence_at_or_after_frame_id(v22, a4, v33);
LABEL_13:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (unint64_t)changeCadenceOnNextValidFrameId:(id)a3 stride:(unint64_t)a4 offset:(unint64_t)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [(PSGSTManager *)self graphToStrideMap];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  [v9 setObject:v10 forKey:v8];

  v11 = [(PSGSTManager *)self graphToOffsetMap];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  [v11 setObject:v12 forKey:v8];

  v13 = [(PSGSTManager *)self graphToGSTMap];
  v14 = [v13 objectForKey:v8];

  if (!v14)
  {
    v27 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v8 name];
      _os_log_unreliable_impl();
    }

    goto LABEL_11;
  }

  v15 = [(PSGSTManager *)self graphToGSTMap];
  v16 = [v15 objectForKey:v8];
  v17 = [v16 intValue];

  gst = ps_gsm_get_gst([(PSGSTManager *)self gsm], v17);
  v19 = atomic_load((gst + 8));
  if ((v19 & 0x200000000000000) != 0)
  {
    v27 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_unreliable_impl();
    }

LABEL_11:

LABEL_12:
    v28 = -1;
    goto LABEL_13;
  }

  v20 = gst;
  v21 = (gst + 16);
  v22 = [v8 name];
  v23 = strcmp(v21, [v22 UTF8String]);

  v24 = [(PSGSTManager *)self log];
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      v26 = [v8 name];
      [v26 UTF8String];
      _os_log_unreliable_impl();
    }

    goto LABEL_12;
  }

  v31 = a4 | (a5 << 32);
  if (v25)
  {
    v35 = [v8 name];
    _os_log_unreliable_impl();
  }

  v32 = [(PSGSTManager *)self log];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    atomic_load((v20 + 8));
    atomic_load((v20 + 8));
    v33 = [v8 name];
    [v33 UTF8String];
    _os_log_unreliable_impl();
  }

  v28 = ps_gsm_gst_change_cadence_on_next_valid_frame_id_for_cadence(v20, v31);
LABEL_13:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)removeGraphs:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [(PSGSTManager *)self graphToGSTMap];
        [v10 removeObjectForKey:v9];

        v11 = [(PSGSTManager *)self graphToStrideMap];
        [v11 removeObjectForKey:v9];

        v12 = [(PSGSTManager *)self graphToOffsetMap];
        [v12 removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end