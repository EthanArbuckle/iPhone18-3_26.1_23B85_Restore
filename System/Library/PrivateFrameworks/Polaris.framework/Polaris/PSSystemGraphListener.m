@interface PSSystemGraphListener
- (PSSystemGraphListener)initWithDispatchQueue:(id)a3 GSTManager:(id)a4 Builder:(id)a5 Orchestrator:(id)a6 FrameIDTranslator:(id)a7;
- (id)handleMessage:(id)a3 withMessageType:(unint64_t)a4 withSession:(id)a5;
- (id)initForLocalReplayWithDispatchQueue:(id)a3 localGSM:(ps_gsm_s *)a4 GSTManager:(id)a5 Builder:(id)a6 Orchestrator:(id)a7;
- (void)builderAddGraphs:(id)a3 execSessionName:(const char *)a4 addedGraphs:(id)a5;
- (void)dealloc;
- (void)handleAddRemoveGraphsMessage:(id)a3;
- (void)handleBuilderDumpStateMessage:(id)a3 withSession:(id)a4;
- (void)handleOrchestratorDumpStateMessage:(id)a3 withSession:(id)a4;
- (void)sendDomainInfoToOrchestrator:(id)a3;
@end

@implementation PSSystemGraphListener

- (id)handleMessage:(id)a3 withMessageType:(unint64_t)a4 withSession:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (a4 <= 6)
  {
    if (a4 - 2 < 4)
    {
LABEL_3:
      v10 = [(PSGSTManager *)self->_gstManager handleMessage:v8];
      goto LABEL_24;
    }

    if (a4 == 1)
    {
      [(PSSystemGraphListener *)self sendDomainInfoToOrchestrator:v8];
      goto LABEL_3;
    }

    if (a4 == 6)
    {
      v11 = __PSSGLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "Received PRODUCIBLE_STRIDES_HAVE_CHANGED_TO message", buf, 2u);
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67__PSSystemGraphListener_handleMessage_withMessageType_withSession___block_invoke;
      v16[3] = &unk_279A490C0;
      v16[4] = self;
      [PSSystemGraphMessageDeserializer deserializeProducibleStridesHaveChangedToMessage:v8 completion:v16];
      goto LABEL_23;
    }

LABEL_20:
    v12 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = a4;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "Received an unknown message type = %llu, this should never happen!", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (a4 <= 8)
  {
    if (a4 == 7)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __67__PSSystemGraphListener_handleMessage_withMessageType_withSession___block_invoke_2;
      v15[3] = &unk_279A490E8;
      v15[4] = self;
      [PSSystemGraphMessageDeserializer deserializeProducedStridesWillChangeMessage:v8 completion:v15];
    }

    else
    {
      [(PSSystemGraphListener *)self handleAddRemoveGraphsMessage:v8];
    }
  }

  else
  {
    switch(a4)
    {
      case 9uLL:
        [(PSOrchestratorListenerProtocol *)self->_orchestrator setupSupportedStridesForLocalReplay:v8];
        break;
      case 0xAuLL:
        [(PSSystemGraphListener *)self handleBuilderDumpStateMessage:v8 withSession:v9];
        break;
      case 0xBuLL:
        [(PSSystemGraphListener *)self handleOrchestratorDumpStateMessage:v8 withSession:v9];
        break;
      default:
        goto LABEL_20;
    }
  }

LABEL_23:
  v10 = 0;
LABEL_24:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

void __67__PSSystemGraphListener_handleMessage_withMessageType_withSession___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v11 = a2;
  if (a4)
  {
    a3 = [*(*(a1 + 32) + 40) virtualFrameIDForPhysicalFrameID:a3 syncID:a5];
  }

  v9 = *(*(a1 + 32) + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [v9 frameIdUpdate:v11 frameId:v10];
}

- (void)builderAddGraphs:(id)a3 execSessionName:(const char *)a4 addedGraphs:(id)a5
{
  v8 = a5;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __70__PSSystemGraphListener_builderAddGraphs_execSessionName_addedGraphs___block_invoke;
  applier[3] = &unk_279A49110;
  v11 = v8;
  v12 = a4;
  applier[4] = self;
  v9 = v8;
  xpc_array_apply(a3, applier);
}

uint64_t __70__PSSystemGraphListener_builderAddGraphs_execSessionName_addedGraphs___block_invoke(const char **a1, uint64_t a2, void *a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "graph_name");
  v6 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1[6];
    *buf = 136315394;
    v86 = string;
    v87 = 2080;
    *v88 = v7;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "Adding builder info for graph = %s, execSession = %s", buf, 0x16u);
  }

  v8 = [PSSGGraphID alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1[6]];
  v11 = [(PSSGGraphID *)v8 initWithName:v9 session:v10];

  uint64 = xpc_dictionary_get_uint64(v4, "graph_frequency_type");
  v13 = xpc_dictionary_get_uint64(v4, "stride");
  v14 = xpc_dictionary_get_value(v4, "input_names_array");
  v15 = xpc_dictionary_get_value(v4, "input_types_array");
  v16 = xpc_dictionary_get_value(v4, "input_storage_modes_array");
  count = xpc_array_get_count(v14);
  xarray = v15;
  if (count != xpc_array_get_count(v15))
  {
    goto LABEL_28;
  }

  v18 = xpc_array_get_count(v14);
  if (v18 != xpc_array_get_count(v16))
  {
    v84 = 0;
    v65 = xpc_array_get_count(v14);
    v66 = xpc_array_get_count(v16);
    asprintf(&v84, "xpc_array_get_count(inputNamesArray) (%zd) != xpc_array_get_count(inputStorageModesArray) (%zd) @ %s:%d", v65, v66, "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke", 275);
    v67 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v86 = v84;
      _os_log_impl(&dword_25EA3A000, v67, OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
    }

    v68 = OSLogFlushBuffers();
    if (v68)
    {
      v59 = v68;
      v60 = __PSSGLogSharedInstance();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v76 = uint64;
  v77 = v13;
  v78 = v11;
  v81 = xpc_array_get_count(v14);
  v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = xpc_dictionary_get_value(v4, "output_names_array");
  v21 = xpc_dictionary_get_value(v4, "output_storage_modes_array");
  v22 = xpc_array_get_count(v20);
  if (v22 != xpc_array_get_count(v21))
  {
    v84 = 0;
    v69 = xpc_array_get_count(v20);
    v70 = xpc_array_get_count(v21);
    asprintf(&v84, "xpc_array_get_count(outputNamesArray) (%zd) != xpc_array_get_count(outputStorageModesArray) (%zd) @ %s:%d", v69, v70, "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke", 281);
    v71 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v86 = v84;
      _os_log_impl(&dword_25EA3A000, v71, OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
    }

    v72 = OSLogFlushBuffers();
    if (v72)
    {
      v59 = v72;
      v60 = __PSSGLogSharedInstance();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v80 = v16;
  v75 = v4;
  v23 = xpc_array_get_count(v20);
  v24 = 0x279A47000uLL;
  v25 = v21;
  v83 = a1;
  if (v23)
  {
    v26 = v23;
    for (i = 0; i != v26; ++i)
    {
      v28 = xpc_array_get_string(v20, i);
      v29 = xpc_array_get_uint64(v25, i);
      v30 = v25;
      v31 = v19;
      v32 = v20;
      v33 = [PSSGResourceID alloc];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v83[6]];
      v36 = v33;
      v20 = v32;
      v19 = v31;
      v25 = v30;
      v37 = [(PSSGResourceID *)v36 initWithName:v34 session:v35 storageMode:v29];

      v24 = 0x279A47000uLL;
      [v19 addObject:v37];
    }
  }

  v73 = v25;
  v74 = v20;
  v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = v83;
  if (v81)
  {
    v39 = 0;
    while (1)
    {
      v40 = v14;
      v41 = xpc_array_get_string(v14, v39);
      v42 = xpc_array_get_uint64(xarray, v39);
      v43 = xpc_array_get_uint64(v80, v39);
      v44 = objc_alloc(*(v24 + 1864));
      v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:v41];
      v14 = v38;
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:v38[6]];
      v47 = [v44 initWithName:v45 session:v46 storageMode:v43];

      if (!v47)
      {
        break;
      }

      if (([v19 containsObject:v47] & 1) == 0)
      {
        v48 = [[PSSGGraphInput alloc] initWithResource:v47 type:v42];
        [v79 addObject:v48];
      }

      ++v39;
      v38 = v14;
      v14 = v40;
      v24 = 0x279A47000;
      if (v81 == v39)
      {
        goto LABEL_15;
      }
    }

    v84 = 0;
    asprintf(&v84, "Failed to make resourceID (name: %s, session: %s, storageMode: %llu)", v41, v14[6], v43);
    v56 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      v57 = v14[6];
      *buf = 136316162;
      v86 = "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke";
      v87 = 1024;
      *v88 = 302;
      *&v88[4] = 2080;
      *&v88[6] = v41;
      v89 = 2080;
      v90 = v57;
      v91 = 2048;
      v92 = v43;
      _os_log_impl(&dword_25EA3A000, v56, OS_LOG_TYPE_FAULT, "%s:%d Failed to make resourceID (name: %s, session: %s, storageMode: %llu)", buf, 0x30u);
    }

    v58 = OSLogFlushBuffers();
    if (v58)
    {
      v59 = v58;
      v60 = __PSSGLogSharedInstance();
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    while (1)
    {
LABEL_23:
      usleep(0x1E8480u);
      while (1)
      {
        abort_with_reason();
LABEL_28:
        v84 = 0;
        v61 = xpc_array_get_count(v14);
        v62 = xpc_array_get_count(xarray);
        asprintf(&v84, "xpc_array_get_count(inputNamesArray) (%zd) != xpc_array_get_count(inputTypesArray) (%zd) @ %s:%d", v61, v62, "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke", 274);
        v63 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v86 = v84;
          _os_log_impl(&dword_25EA3A000, v63, OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
        }

        v64 = OSLogFlushBuffers();
        if (!v64)
        {
          break;
        }

        v59 = v64;
        v60 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
LABEL_25:
          *buf = 136315394;
          v86 = "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke";
          v87 = 1024;
          *v88 = v59;
          _os_log_impl(&dword_25EA3A000, v60, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }

LABEL_26:
      }
    }
  }

LABEL_15:
  v84 = 0;
  [*(v38[4] + 3) addGraphWithID:v78 type:v76 inputs:v79 outputs:v19 error:&v84];
  if (v84)
  {
    v49 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [v84 description];
      v51 = [v50 UTF8String];
      *buf = 136315138;
      v86 = v51;
      _os_log_impl(&dword_25EA3A000, v49, OS_LOG_TYPE_ERROR, "Failed to add graph to builder: %s", buf, 0xCu);
    }
  }

  v52 = v38[5];
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v77];
  [v52 setObject:v53 forKey:v78];

  v54 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)handleAddRemoveGraphsMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  string = xpc_dictionary_get_string(v4, "exec_session_name");
  v7 = xpc_dictionary_get_value(v4, "graphs_removed_array");
  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[PSSystemGraphListener handleAddRemoveGraphsMessage:]", "PSSystemGraphListener.m", 336, "graphsRemovedArray");
  }

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __54__PSSystemGraphListener_handleAddRemoveGraphsMessage___block_invoke;
  applier[3] = &unk_279A49138;
  applier[4] = &v17;
  applier[5] = string;
  xpc_array_apply(v7, applier);
  [(PSOrchestratorListenerProtocol *)self->_orchestrator transitionAddedGraphs:0 removedGraphs:v18[5]];
  v15 = 0;
  [(PSSGBuilder *)self->_builder removeGraphsWithIDs:v18[5] error:&v15];
  if (v15)
  {
    v9 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v15 description];
      v11 = v10;
      v12 = [v10 UTF8String];
      *buf = 136315138;
      v24 = v12;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "Error occured while removing graphs within builder %s", buf, 0xCu);
    }
  }

  v13 = xpc_dictionary_get_value(v4, "graphs_added_array");
  if (!v13)
  {
    __assert_rtn("[PSSystemGraphListener handleAddRemoveGraphsMessage:]", "PSSystemGraphListener.m", 359, "graphsAddedArray");
  }

  [(PSSystemGraphListener *)self builderAddGraphs:v13 execSessionName:string addedGraphs:v5];
  [(PSOrchestratorListenerProtocol *)self->_orchestrator transitionAddedGraphs:v5 removedGraphs:0];
  [(PSOrchestratorListenerProtocol *)self->_orchestrator flushAddedRemovedGraphs];

  _Block_object_dispose(&v17, 8);
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __54__PSSystemGraphListener_handleAddRemoveGraphsMessage___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  v17 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, "graph_name");
  v5 = __PSSGLogSharedInstance();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 40);
    v13 = 136315394;
    v14 = string;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEBUG, "Removing builder info for graph = %s, execSession = %s", &v13, 0x16u);
  }

  v7 = [PSSGGraphID alloc];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
  v10 = [(PSSGGraphID *)v7 initWithName:v8 session:v9];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v10];
  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)sendDomainInfoToOrchestrator:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_value(v4, "graphs_array");
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  string = xpc_dictionary_get_string(v4, "exec_session_name");

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__PSSystemGraphListener_sendDomainInfoToOrchestrator___block_invoke;
  v12 = &unk_279A48D90;
  v13 = v6;
  v14 = string;
  v8 = v6;
  xpc_array_apply(v5, &v9);
  [(PSOrchestratorListenerProtocol *)self->_orchestrator resolvedDomainForGraphs:v8, v9, v10, v11, v12];
}

uint64_t __54__PSSystemGraphListener_sendDomainInfoToOrchestrator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "graph_name");
  v6 = [PSSGGraphID alloc];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
  v9 = [(PSSGGraphID *)v6 initWithName:v7 session:v8];

  v10 = MEMORY[0x277CCACA8];
  v11 = xpc_dictionary_get_string(v4, "domain_id");

  v12 = [v10 stringWithUTF8String:v11];
  [*(a1 + 32) setObject:v12 forKey:v9];

  return 1;
}

- (void)handleBuilderDumpStateMessage:(id)a3 withSession:(id)a4
{
  v6 = a4;
  reply = xpc_dictionary_create_reply(a3);
  builder = self->_builder;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__PSSystemGraphListener_handleBuilderDumpStateMessage_withSession___block_invoke;
  v11[3] = &unk_279A49160;
  v12 = reply;
  v13 = v6;
  v9 = v6;
  v10 = reply;
  [(PSSGBuilder *)builder dumpStateAsync:v11];
}

void __67__PSSystemGraphListener_handleBuilderDumpStateMessage_withSession___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 UTF8String];
    v7 = v5;
  }

  else
  {
    v8 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "Async state dump from builder returned nil", &v14, 2u);
    }

    v7 = *(a1 + 32);
    v6 = "Async state dump from builder returned nil";
  }

  xpc_dictionary_set_string(v7, "builder_state_json", v6);
  v9 = xpc_session_send_message(*(a1 + 40), *(a1 + 32));
  v10 = v9;
  if (v9)
  {
    v11 = xpc_rich_error_copy_description(v9);
    v12 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = v11;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Error sending builder state: %s", &v14, 0xCu);
    }

    free(v11);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleOrchestratorDumpStateMessage:(id)a3 withSession:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  reply = xpc_dictionary_create_reply(a3);
  v8 = [(PSSystemGraphListener *)self orchestrator];
  [v8 dumpStateToXPCDictionary:reply];

  v9 = xpc_session_send_message(v6, reply);
  if (v9)
  {
    v10 = xpc_rich_error_copy_description(v9);
    v11 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = v10;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "Error sending builder state: %s", &v13, 0xCu);
    }

    free(v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (PSSystemGraphListener)initWithDispatchQueue:(id)a3 GSTManager:(id)a4 Builder:(id)a5 Orchestrator:(id)a6 FrameIDTranslator:(id)a7
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30.receiver = self;
  v30.super_class = PSSystemGraphListener;
  v17 = [(PSSystemGraphListener *)&v30 init];
  if (v17)
  {
    v17->_gsm = ps_gsm_map_shared();
    objc_storeStrong(&v17->_gstManager, a4);
    objc_storeStrong(&v17->_builder, a5);
    objc_storeStrong(&v17->_orchestrator, a6);
    objc_storeStrong(&v17->_frameIDTranslator, a7);
    incoming_session_handler[0] = MEMORY[0x277D85DD0];
    incoming_session_handler[1] = 3221225472;
    incoming_session_handler[2] = __97__PSSystemGraphListener_initWithDispatchQueue_GSTManager_Builder_Orchestrator_FrameIDTranslator___block_invoke;
    incoming_session_handler[3] = &unk_279A491B0;
    v18 = v17;
    v29 = v18;
    v27 = 0;
    v19 = xpc_listener_create("com.apple.polaris.systemgraph_v2", v12, XPC_LISTENER_CREATE_NONE, incoming_session_handler, &v27);
    v20 = v27;
    v21 = v18[6];
    v18[6] = v19;

    v22 = xpc_listener_copy_description(v18[6]);
    v23 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = v22;
      _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "Created listener: %s", buf, 0xCu);
    }

    free(v22);
    v24 = v18;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v17;
}

void __97__PSSystemGraphListener_initWithDispatchQueue_GSTManager_Builder_Orchestrator_FrameIDTranslator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_initWeak(&location, v3);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __97__PSSystemGraphListener_initWithDispatchQueue_GSTManager_Builder_Orchestrator_FrameIDTranslator___block_invoke_2;
  handler[3] = &unk_279A49188;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 32);
  xpc_session_set_incoming_message_handler(v3, handler);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __97__PSSystemGraphListener_initWithDispatchQueue_GSTManager_Builder_Orchestrator_FrameIDTranslator___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "message_type");
    v6 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      v15 = uint64;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "sysgraph xpc listener received messageType %llu", &v14, 0xCu);
    }

    v7 = [*(a1 + 32) handleMessage:v3 withMessageType:uint64 withSession:WeakRetained];
    v8 = v7;
    if (uint64 == 1 && v7)
    {
      v9 = xpc_session_send_message(WeakRetained, v7);
      v10 = v9;
      if (v9)
      {
        v11 = xpc_rich_error_copy_description(v9);
        v12 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315138;
          v15 = v11;
          _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Reply failed, error: %s", &v14, 0xCu);
        }

        free(v11);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)initForLocalReplayWithDispatchQueue:(id)a3 localGSM:(ps_gsm_s *)a4 GSTManager:(id)a5 Builder:(id)a6 Orchestrator:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = PSSystemGraphListener;
  v16 = [(PSSystemGraphListener *)&v26 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    v16->_gsm = a4;
    objc_storeStrong(&v16->_gstManager, a5);
    objc_storeStrong(p_isa + 3, a6);
    objc_storeStrong(p_isa + 4, a7);
    v18 = p_isa;
    anonymous = xpc_listener_create_anonymous();
    v20 = v18[6];
    v18[6] = anonymous;

    v21 = xpc_listener_copy_description(v18[6]);
    v22 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = v21;
      _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Created listener: %s", buf, 0xCu);
    }

    free(v21);
    v23 = v18;
  }

  v24 = *MEMORY[0x277D85DE8];
  return p_isa;
}

void __102__PSSystemGraphListener_initForLocalReplayWithDispatchQueue_localGSM_GSTManager_Builder_Orchestrator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_initWeak(&location, v3);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __102__PSSystemGraphListener_initForLocalReplayWithDispatchQueue_localGSM_GSTManager_Builder_Orchestrator___block_invoke_2;
  handler[3] = &unk_279A49188;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 32);
  xpc_session_set_incoming_message_handler(v3, handler);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __102__PSSystemGraphListener_initForLocalReplayWithDispatchQueue_localGSM_GSTManager_Builder_Orchestrator___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "message_type");
    v6 = __PSSGLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      v15 = uint64;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "sysgraph xpc listener received messageType %llu", &v14, 0xCu);
    }

    v7 = [*(a1 + 32) handleMessage:v3 withMessageType:uint64 withSession:WeakRetained];
    v8 = v7;
    if (uint64 == 1 && v7)
    {
      v9 = xpc_session_send_message(WeakRetained, v7);
      v10 = v9;
      if (v9)
      {
        v11 = xpc_rich_error_copy_description(v9);
        v12 = __PSSGLogSharedInstance();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315138;
          v15 = v11;
          _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Reply failed, error: %s", &v14, 0xCu);
        }

        free(v11);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  listener = self->_listener;
  self->_listener = 0;

  builder = self->_builder;
  self->_builder = 0;

  orchestrator = self->_orchestrator;
  self->_orchestrator = 0;

  frameIDTranslator = self->_frameIDTranslator;
  self->_frameIDTranslator = 0;

  v7.receiver = self;
  v7.super_class = PSSystemGraphListener;
  [(PSSystemGraphListener *)&v7 dealloc];
}

@end