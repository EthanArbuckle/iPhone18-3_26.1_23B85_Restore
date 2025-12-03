@interface PSGSTManager
- (id)handleMessage:(id)message;
- (id)removeGST:(id)t;
- (id)reserveGST:(id)t;
- (unint64_t)changeCadenceAtOrAfterFrameId:(id)id frameID:(unint64_t)d stride:(unint64_t)stride offset:(unint64_t)offset;
- (unint64_t)changeCadenceOnNextValidFrameId:(id)id stride:(unint64_t)stride offset:(unint64_t)offset;
- (void)removeGraphs:(id)graphs;
- (void)removeThreadPool:(id)pool;
- (void)removeWaiter:(id)waiter;
- (void)reserveCadenceGST:(id)t pid:(int)pid graphID:(id)d gstPtr:(ps_gsm_gst_s *)ptr sharedTriggerPtr:(ps_gsm_shared_trigger_s *)triggerPtr;
- (void)reserveLegacyGST:(id)t pid:(int)pid graphID:(id)d gstPtr:(ps_gsm_gst_s *)ptr sharedTriggerPtr:(ps_gsm_shared_trigger_s *)triggerPtr;
- (void)sourceClearGST:(id)t;
@end

@implementation PSGSTManager

- (void)reserveLegacyGST:(id)t pid:(int)pid graphID:(id)d gstPtr:(ps_gsm_gst_s *)ptr sharedTriggerPtr:(ps_gsm_shared_trigger_s *)triggerPtr
{
  v40 = *MEMORY[0x277D85DE8];
  tCopy = t;
  string = xpc_dictionary_get_string(tCopy, "graph_name");
  v11 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v37 = string;
    v38 = 1024;
    pidCopy = pid;
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEBUG, "Received a graph addition message for graph %s for client pid = %d", buf, 0x12u);
  }

  pidCopy2 = pid;

  uint64 = xpc_dictionary_get_uint64(tCopy, "num_sources");
  v32 = xpc_dictionary_get_BOOL(tCopy, "synced_buffers");
  v31 = xpc_dictionary_get_uint64(tCopy, "graph_exec_type");
  v29 = xpc_dictionary_get_uint64(tCopy, "graph_threadpool_id");
  v28 = xpc_dictionary_get_string(tCopy, "graph_threadpool_name");
  v30 = xpc_dictionary_get_uint64(tCopy, "graph_subgraph_idx");
  v13 = xpc_dictionary_get_value(tCopy, "source_names_array");
  v14 = xpc_dictionary_get_value(tCopy, "storage_modes_array");
  v15 = xpc_dictionary_get_value(tCopy, "down_sample_factor_array");
  v16 = xpc_dictionary_get_value(tCopy, "stride_factor_array");
  v17 = malloc_type_calloc(uint64, 0x88uLL, 0x1000040B5CA6940uLL);
  v18 = malloc_type_calloc(uint64, 1uLL, 0x100004077774924uLL);
  if (v13 && v14 && v15 && v16)
  {
    v26 = string;
    triggerPtrCopy = triggerPtr;
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
      v22 = [(PSGSTManager *)self initSharedTrigger:v21 threadPoolID:v29 pid:pidCopy2];

      muxed_gst = ps_gsm_create_muxed_gst([(PSGSTManager *)self gsm], v26, uint64, v17, v18, v32, v22, v30, pidCopy2);
    }

    else
    {
      muxed_gst = ps_gsm_create_gst([(PSGSTManager *)self gsm], v26, uint64, v17, v18, v32, pidCopy2);
      v22 = 0;
    }

    triggerPtr = triggerPtrCopy;
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
  *ptr = muxed_gst;
  *triggerPtr = v22;

  v25 = *MEMORY[0x277D85DE8];
}

- (void)reserveCadenceGST:(id)t pid:(int)pid graphID:(id)d gstPtr:(ps_gsm_gst_s *)ptr sharedTriggerPtr:(ps_gsm_shared_trigger_s *)triggerPtr
{
  v57 = *MEMORY[0x277D85DE8];
  tCopy = t;
  dCopy = d;
  string = xpc_dictionary_get_string(tCopy, "graph_name");
  v12 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *v55 = string;
    *&v55[8] = 1024;
    *v56 = pid;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Received a graph addition message for graph %s for client pid = %d", buf, 0x12u);
  }

  v51 = string;

  uint64 = xpc_dictionary_get_uint64(tCopy, "num_sources");
  v49 = xpc_dictionary_get_uint64(tCopy, "graph_exec_type");
  v47 = xpc_dictionary_get_uint64(tCopy, "graph_threadpool_id");
  v46 = xpc_dictionary_get_string(tCopy, "graph_threadpool_name");
  v14 = xpc_dictionary_get_uint64(tCopy, "graph_subgraph_idx");
  v44 = xpc_dictionary_get_uint64(tCopy, "stride");
  v43 = xpc_dictionary_get_uint64(tCopy, "desired_offset");
  v15 = xpc_dictionary_get_value(tCopy, "source_names_array");
  v16 = xpc_dictionary_get_value(tCopy, "storage_modes_array");
  v17 = xpc_dictionary_get_BOOL(tCopy, "force_cadenced_GST");
  v18 = malloc_type_calloc(uint64, 0x80uLL, 0x1000040AE2C30F4uLL);
  v19 = malloc_type_calloc(uint64, 1uLL, 0x100004077774924uLL);
  if (v15 && v16)
  {
    v39 = v14;
    v48 = v18;
    pidCopy = pid;
    triggerPtrCopy = triggerPtr;
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
    graphToStrideMap = [(PSGSTManager *)self graphToStrideMap];
    v24 = [graphToStrideMap objectForKey:dCopy];

    if (v24)
    {
      graphToStrideMap2 = [(PSGSTManager *)self graphToStrideMap];
      v26 = [graphToStrideMap2 objectForKey:dCopy];
      unsignedLongLongValue = [v26 unsignedLongLongValue];

      graphToOffsetMap = [(PSGSTManager *)self graphToOffsetMap];
      v29 = [graphToOffsetMap objectForKey:dCopy];
      unsignedLongLongValue2 = [v29 unsignedLongLongValue];
    }

    else
    {
      unsignedLongLongValue2 = v43;
      unsignedLongLongValue = v44;
    }

    if (!self->_shouldUseOrchestratorV2 && v40)
    {
      unsignedLongLongValue2 = 2 * (unsignedLongLongValue > 2);
    }

    v45 = unsignedLongLongValue | (unsignedLongLongValue2 << 32);
    v35 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v51];
      *buf = 67109634;
      *v55 = unsignedLongLongValue;
      *&v55[4] = 1024;
      *&v55[6] = unsignedLongLongValue2;
      *v56 = 2112;
      *&v56[2] = v36;
      _os_log_impl(&dword_25EA3A000, v35, OS_LOG_TYPE_DEFAULT, "Creating GST (stride: %u offset: %u) for %@", buf, 0x18u);
    }

    v34 = dCopy;
    if (v49 == 1)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:v46];
      v32 = [(PSGSTManager *)self initSharedTrigger:v37 threadPoolID:v47 pid:pidCopy];

      v34 = dCopy;
      v18 = v48;
      muxed_gst_with_cadence = ps_gsm_create_muxed_gst_with_cadence([(PSGSTManager *)self gsm], v51, uint64, v48, v19, v45, v32, v39, pidCopy);
    }

    else
    {
      v18 = v48;
      muxed_gst_with_cadence = ps_gsm_create_gst_with_cadence([(PSGSTManager *)self gsm], v51, uint64, v48, v19, v45, pidCopy);
      v32 = 0;
    }

    triggerPtr = triggerPtrCopy;
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
    v34 = dCopy;
  }

  free(v18);
  free(v19);
  *ptr = muxed_gst_with_cadence;
  *triggerPtr = v32;

  v38 = *MEMORY[0x277D85DE8];
}

- (id)reserveGST:(id)t
{
  tCopy = t;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = -1;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = -1;
  reply = xpc_dictionary_create_reply(tCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v6 = xpc_dictionary_get_value(tCopy, "graphs_array");
  uint64 = xpc_dictionary_get_uint64(tCopy, "client_pid");
  string = xpc_dictionary_get_string(tCopy, "exec_session_name");
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

- (id)removeGST:(id)t
{
  tCopy = t;
  reply = xpc_dictionary_create_reply(tCopy);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  v6 = xpc_dictionary_get_value(tCopy, "graphs_array");
  string = xpc_dictionary_get_string(tCopy, "exec_session_name");

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

- (void)sourceClearGST:(id)t
{
  v15 = *MEMORY[0x277D85DE8];
  tCopy = t;
  uint64 = xpc_dictionary_get_uint64(tCopy, "source_idx");
  v6 = xpc_dictionary_get_uint64(tCopy, "gst_idx_in_source_array");
  v7 = xpc_dictionary_get_uint64(tCopy, "source_storage_mode");
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

- (void)removeWaiter:(id)waiter
{
  v10 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(waiter, "gst_idx");
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

- (void)removeThreadPool:(id)pool
{
  v12 = *MEMORY[0x277D85DE8];
  uint64 = xpc_dictionary_get_uint64(pool, "graph_threadpool_id");
  v5 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = uint64;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "Remove threadPool for threadPoolId %llu", &v10, 0xCu);
  }

  threadPoolToSharedTriggerMap = [(PSGSTManager *)self threadPoolToSharedTriggerMap];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:uint64];
  stringValue = [v7 stringValue];
  [threadPoolToSharedTriggerMap removeObjectForKey:stringValue];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)handleMessage:(id)message
{
  v11 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "message_type");
  if (uint64 <= 2)
  {
    if (uint64 == 1)
    {
      v6 = [(PSGSTManager *)self reserveGST:messageCopy];
    }

    else
    {
      if (uint64 != 2)
      {
        goto LABEL_13;
      }

      v6 = [(PSGSTManager *)self removeGST:messageCopy];
    }

    v7 = v6;
    goto LABEL_17;
  }

  if (uint64 == 3)
  {
    [(PSGSTManager *)self sourceClearGST:messageCopy];
    goto LABEL_16;
  }

  if (uint64 == 4)
  {
    [(PSGSTManager *)self removeWaiter:messageCopy];
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

  [(PSGSTManager *)self removeThreadPool:messageCopy];
LABEL_16:
  v7 = 0;
LABEL_17:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)changeCadenceAtOrAfterFrameId:(id)id frameID:(unint64_t)d stride:(unint64_t)stride offset:(unint64_t)offset
{
  v38 = *MEMORY[0x277D85DE8];
  idCopy = id;
  graphToStrideMap = [(PSGSTManager *)self graphToStrideMap];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:stride];
  [graphToStrideMap setObject:v12 forKey:idCopy];

  graphToOffsetMap = [(PSGSTManager *)self graphToOffsetMap];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:offset];
  [graphToOffsetMap setObject:v14 forKey:idCopy];

  graphToGSTMap = [(PSGSTManager *)self graphToGSTMap];
  v16 = [graphToGSTMap objectForKey:idCopy];

  if (!v16)
  {
    v29 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      name = [idCopy name];
      _os_log_unreliable_impl();
    }

    goto LABEL_11;
  }

  graphToGSTMap2 = [(PSGSTManager *)self graphToGSTMap];
  v18 = [graphToGSTMap2 objectForKey:idCopy];
  intValue = [v18 intValue];

  gst = ps_gsm_get_gst([(PSGSTManager *)self gsm], intValue);
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
  name2 = [idCopy name];
  v25 = strncmp(v23, [name2 UTF8String], 0x80uLL);

  v26 = [(PSGSTManager *)self log];
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
  if (v25)
  {
    if (v27)
    {
      name3 = [idCopy name];
      [name3 UTF8String];
      _os_log_unreliable_impl();
    }

    goto LABEL_12;
  }

  v33 = stride | (offset << 32);
  if (v27)
  {
    name4 = [idCopy name];
    _os_log_unreliable_impl();
  }

  v34 = [(PSGSTManager *)self log];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    atomic_load((v22 + 8));
    atomic_load((v22 + 8));
    name5 = [idCopy name];
    [name5 UTF8String];
    _os_log_unreliable_impl();
  }

  v30 = ps_gsm_gst_change_cadence_at_or_after_frame_id(v22, d, v33);
LABEL_13:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (unint64_t)changeCadenceOnNextValidFrameId:(id)id stride:(unint64_t)stride offset:(unint64_t)offset
{
  v36 = *MEMORY[0x277D85DE8];
  idCopy = id;
  graphToStrideMap = [(PSGSTManager *)self graphToStrideMap];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:stride];
  [graphToStrideMap setObject:v10 forKey:idCopy];

  graphToOffsetMap = [(PSGSTManager *)self graphToOffsetMap];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:offset];
  [graphToOffsetMap setObject:v12 forKey:idCopy];

  graphToGSTMap = [(PSGSTManager *)self graphToGSTMap];
  v14 = [graphToGSTMap objectForKey:idCopy];

  if (!v14)
  {
    v27 = [(PSGSTManager *)self log];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      name = [idCopy name];
      _os_log_unreliable_impl();
    }

    goto LABEL_11;
  }

  graphToGSTMap2 = [(PSGSTManager *)self graphToGSTMap];
  v16 = [graphToGSTMap2 objectForKey:idCopy];
  intValue = [v16 intValue];

  gst = ps_gsm_get_gst([(PSGSTManager *)self gsm], intValue);
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
  name2 = [idCopy name];
  v23 = strcmp(v21, [name2 UTF8String]);

  v24 = [(PSGSTManager *)self log];
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      name3 = [idCopy name];
      [name3 UTF8String];
      _os_log_unreliable_impl();
    }

    goto LABEL_12;
  }

  v31 = stride | (offset << 32);
  if (v25)
  {
    name4 = [idCopy name];
    _os_log_unreliable_impl();
  }

  v32 = [(PSGSTManager *)self log];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    atomic_load((v20 + 8));
    atomic_load((v20 + 8));
    name5 = [idCopy name];
    [name5 UTF8String];
    _os_log_unreliable_impl();
  }

  v28 = ps_gsm_gst_change_cadence_on_next_valid_frame_id_for_cadence(v20, v31);
LABEL_13:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)removeGraphs:(id)graphs
{
  v19 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [graphsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(graphsCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        graphToGSTMap = [(PSGSTManager *)self graphToGSTMap];
        [graphToGSTMap removeObjectForKey:v9];

        graphToStrideMap = [(PSGSTManager *)self graphToStrideMap];
        [graphToStrideMap removeObjectForKey:v9];

        graphToOffsetMap = [(PSGSTManager *)self graphToOffsetMap];
        [graphToOffsetMap removeObjectForKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [graphsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end