@interface LiveFSUSBLocalStorageClient
- (id)getConnectionForVolume:(id)a3 withError:(id *)a4;
- (id)getVolumeName:(id)a3 withError:(id *)a4;
- (id)loadVolumes:(id)a3 ofType:(id)a4 withError:(id *)a5;
- (id)removeAllVirtualDisks;
- (void)loadVolume:(id)a3 ofType:(id)a4 withReply:(id)a5;
@end

@implementation LiveFSUSBLocalStorageClient

- (id)getConnectionForVolume:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v15 = 0;
  v7 = [(LiveFSClient *)self listenerForVolume:v6 error:&v15];
  v8 = v15;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LiveFSUSBLocalStorageClient getConnectionForVolume:withError:];
      if (a4)
      {
        goto LABEL_6;
      }
    }

    else if (a4)
    {
LABEL_6:
      v9 = v8;
      v10 = 0;
      *a4 = v8;
      goto LABEL_10;
    }

    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v7];
    v11 = [MEMORY[0x277D23D78] interfaceForListeners];
    [v10 setRemoteObjectInterface:v11];

    v12 = [MEMORY[0x277D23DC0] exportedClientInterface];
    [v10 setExportedInterface:v12];

    v13 = objc_opt_new();
    [v10 setExportedObject:v13];

    [v10 resume];
  }

LABEL_10:

  return v10;
}

- (id)getVolumeName:(id)a3 withError:(id *)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = 0;
  v5 = dispatch_semaphore_create(0);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy_;
  v35 = __Block_byref_object_dispose_;
  v36 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke;
  v30[3] = &unk_279E0D048;
  v30[4] = &v43;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_4;
  v26[3] = &unk_279E0D070;
  v28 = &v43;
  v29 = &v37;
  v7 = v5;
  v27 = v7;
  [v6 getRootFileHandleWithError:v26];
  v8 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v7, v8))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [LiveFSUSBLocalStorageClient getVolumeName:withError:];
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
    v10 = v44[5];
    v44[5] = v9;
  }

  if (v44[5])
  {
    v11 = v32[5];
    v32[5] = @"Untitled";

    v12 = v32[5];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v38[5];
      *buf = 136315394;
      v50 = "[LiveFSUSBLocalStorageClient getVolumeName:withError:]";
      v51 = 2112;
      v52 = v13;
      _os_log_impl(&dword_270A2D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: got rootFH(%@), about to get volume name", buf, 0x16u);
    }

    v14 = v38[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_13;
    v22[3] = &unk_279E0D098;
    v24 = &v43;
    v25 = &v31;
    v15 = v7;
    v23 = v15;
    [v6 otherAttributeOf:v14 named:@"_S_f_vol_name" requestID:-1 reply:v22];
    v16 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v15, v16))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [LiveFSUSBLocalStorageClient getVolumeName:withError:];
      }

      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:0];
      v18 = v44[5];
      v44[5] = v17;
    }

    if (v44[5])
    {
      v19 = v32[5];
      v32[5] = @"Untitled";
    }

    v12 = v32[5];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_cold_1();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (!v6 || v8)
  {
    if (!(v6 | v8))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_4_cold_1();
      }

      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_13(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 && v5 && [v5 bytes])
  {
    v7 = [v6 bytes];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v7];
    v11 = *(a1 + 48);
LABEL_9:
    v14 = *(v11 + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v10;

    goto LABEL_10;
  }

  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = @"Untitled";

  if (a2 != 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_13_cold_1();
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a2 userInfo:0];
    v11 = *(a1 + 40);
    goto LABEL_9;
  }

LABEL_10:
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)loadVolumes:(id)a3 ofType:(id)a4 withError:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v29 = 0;
  v30[0] = &v29;
  v30[1] = 0x3032000000;
  v30[2] = __Block_byref_object_copy_;
  v30[3] = __Block_byref_object_dispose_;
  v31 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v10 = livefs_std_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [LiveFSUSBLocalStorageClient loadVolumes:ofType:withError:];
  }

  v11 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__LiveFSUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke;
  v22[3] = &unk_279E0D048;
  v22[4] = &v29;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v22];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__LiveFSUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke_2;
  v21[3] = &unk_279E0D0C0;
  v21[4] = &v29;
  v21[5] = &v23;
  [v12 addDisk:v8 fileSystemType:v9 reply:v21];
  if (a5 && *(v30[0] + 40))
  {
    v13 = livefs_std_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [LiveFSUSBLocalStorageClient loadVolumes:v30 ofType:? withError:?];
    }

    *a5 = *(v30[0] + 40);
    v14 = v24[5];
    v24[5] = 0;
  }

  else if (![v24[5] count])
  {
    v15 = livefs_std_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [LiveFSUSBLocalStorageClient loadVolumes:ofType:withError:];
    }

    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
  }

  v16 = livefs_std_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v20 = v24[5];
    *buf = 136315906;
    v33 = "[LiveFSUSBLocalStorageClient loadVolumes:ofType:withError:]";
    v34 = 2112;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    v38 = 2112;
    v39 = v20;
    _os_log_debug_impl(&dword_270A2D000, v16, OS_LOG_TYPE_DEBUG, "%s:finish:%@:%@:%@", buf, 0x2Au);
  }

  v17 = v24[5];
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __60__LiveFSUSBLocalStorageClient_loadVolumes_ofType_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)loadVolume:(id)a3 ofType:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__LiveFSUSBLocalStorageClient_loadVolume_ofType_withReply___block_invoke;
  v14[3] = &unk_279E0D0E8;
  v15 = v8;
  v10 = v8;
  v11 = a4;
  v12 = a3;
  v13 = [v9 remoteObjectProxyWithErrorHandler:v14];
  [v13 addDisk:v12 fileSystemType:v11 reply:v10];
}

- (id)removeAllVirtualDisks
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v2 = *(&self->super.super.isa + *MEMORY[0x277D23DC8]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke;
  v12[3] = &unk_279E0D048;
  v12[4] = &v19;
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_2;
  v11[3] = &unk_279E0D110;
  v11[4] = &v13;
  [v3 listVolumes:v11];
  v4 = v20[5];
  if (!v4)
  {
    v5 = v14[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_3;
    v8[3] = &unk_279E0D160;
    v9 = v3;
    v10 = &v19;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];

    v4 = v20[5];
  }

  v6 = v4;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v6;
}

void __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if ([v7 containsString:@"/var/mobile/"])
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_4;
      v9[3] = &unk_279E0D138;
      v8 = *(a1 + 32);
      v9[4] = *(a1 + 40);
      v9[5] = a4;
      [v8 ejectDisk:v7 usingFlags:1 reply:v9];
    }
  }
}

void __52__LiveFSUSBLocalStorageClient_removeAllVirtualDisks__block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = livefs_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[LiveFSUSBLocalStorageClient removeAllVirtualDisks]_block_invoke_4";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_270A2D000, v5, OS_LOG_TYPE_DEFAULT, "%s: eject got %@", &v7, 0x16u);
  }

  if (v4)
  {
    **(a1 + 40) = 1;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)getConnectionForVolume:withError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getVolumeName:withError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getVolumeName:withError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_4_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[LiveFSUSBLocalStorageClient getVolumeName:withError:]_block_invoke";
  _os_log_fault_impl(&dword_270A2D000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s: no error but also no fh", &v1, 0xCu);
  v0 = *MEMORY[0x277D85DE8];
}

void __55__LiveFSUSBLocalStorageClient_getVolumeName_withError___block_invoke_13_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadVolumes:ofType:withError:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_270A2D000, v2, OS_LOG_TYPE_DEBUG, "%s:start:%@:%@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)loadVolumes:(uint64_t)a1 ofType:withError:.cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end