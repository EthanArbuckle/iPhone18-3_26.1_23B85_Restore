@interface HVXPCSysdiagnoseServer
- (void)sysdiagnoseStringWithCompletion:(id)completion;
@end

@implementation HVXPCSysdiagnoseServer

- (void)sysdiagnoseStringWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVXPCSysdiagnoseServer: sysdiagnoseStringWithCompletion called.", buf, 2u);
  }

  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__45;
  v23 = __Block_byref_object_dispose__46;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__45;
  v17 = __Block_byref_object_dispose__46;
  v18 = 0;
  v5 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HVXPCSysdiagnoseServer_sysdiagnoseStringWithCompletion___block_invoke;
  v12[3] = &unk_278969AB8;
  v12[4] = &v13;
  v12[5] = buf;
  [v5 statsWithCompletion:v12];

  v6 = v14[5];
  v8 = (v20 + 40);
  v7 = *(v20 + 5);
  if (v6)
  {
    obj = *(v20 + 5);
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v6 options:0 error:&obj];
    objc_storeStrong(v8, obj);
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
      completionCopy[2](completionCopy, v10, 0);
    }

    else
    {
      completionCopy[2](completionCopy, 0, *(v20 + 5));
    }
  }

  else
  {
    completionCopy[2](completionCopy, 0, *(v20 + 5));
  }

  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(buf, 8);
}

void __58__HVXPCSysdiagnoseServer_sysdiagnoseStringWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v8 = hv_default_log_handle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_2321EC000, v8, OS_LOG_TYPE_ERROR, "HVXPCSysdiagnoseServer: sysdiagnoseStringWithCompletion: error: %@", &v10, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end