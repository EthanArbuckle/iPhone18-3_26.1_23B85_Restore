@interface TVURLSessionDownloadTaskWrapper
@end

@implementation TVURLSessionDownloadTaskWrapper

void __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAD30] sharedSession];
  v3 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_279E21DF8;
  objc_copyWeak(v12, (a1 + 48));
  v12[1] = *(a1 + 56);
  v11 = *(a1 + 40);
  v4 = [v2 downloadTaskWithURL:v3 completionHandler:v10];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke_4;
  block[3] = &unk_279E21E20;
  objc_copyWeak(v9, (a1 + 48));
  v9[1] = *(a1 + 56);
  v7 = v4;
  v8 = *(a1 + 40);
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(v9);
  objc_destroyWeak(v12);
}

void __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke_3;
    block[3] = &unk_279E21DD0;
    v12 = *(a1 + 48);
    block[4] = WeakRetained;
    v15 = v12;
    v14 = v9;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    (*(*(a1 + 32) + 16))();
  }
}

void __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke_3(void *a1)
{
  v1 = a1[4];
  if (v1 && a1[6] == *(v1 + 32))
  {
    v2 = 3;
    if (a1[5])
    {
      v2 = 1;
    }

    *(v1 + 40) = v2;
    v3 = a1[4];
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
  }
}

void __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke_4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (a1[7] == WeakRetained[4] && !WeakRetained[5])
    {
      objc_storeStrong(WeakRetained + 3, a1[4]);
      [v3[3] resume];
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke_5;
      block[3] = &unk_279E21370;
      v6 = a1[5];
      dispatch_async(v4, block);
    }
  }
}

void __64___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-999 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAD20] requestWithURL:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_2;
  v7[3] = &unk_279E21E70;
  objc_copyWeak(v9, (a1 + 56));
  v9[1] = *(a1 + 64);
  v8 = *(a1 + 48);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_2_8;
  v4[3] = &unk_279E21EC0;
  objc_copyWeak(v6, (a1 + 56));
  v6[1] = *(a1 + 64);
  v5 = *(a1 + 48);
  [v2 createDataTaskWithRequest:v3 activity:0 dataTaskCreationCompletionHandler:v7 requestCompletionHandler:v4];

  objc_destroyWeak(v6);
  objc_destroyWeak(v9);
}

void __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_3;
  v5[3] = &unk_279E21E20;
  objc_copyWeak(v8, a1 + 5);
  v8[1] = a1[6];
  v6 = v3;
  v7 = a1[4];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(v8);
}

void __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (a1[7] == WeakRetained[4] && !WeakRetained[5])
    {
      objc_storeStrong(WeakRetained + 2, a1[4]);
      [v3[2] resume];
    }

    else
    {
      v4 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_6;
      block[3] = &unk_279E21370;
      v7 = a1[5];
      dispatch_async(v4, block);
    }
  }

  else
  {
    v5 = VUICImageLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_3_cold_1();
    }
  }
}

void __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-999 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, v2);
}

void __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_2_8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_3_9;
  block[3] = &unk_279E21E98;
  objc_copyWeak(v14, a1 + 5);
  v11 = v5;
  v12 = v6;
  v14[1] = a1[6];
  v13 = a1[4];
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(v14);
}

void __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_3_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [_TVURLSessionDownloadTaskWrapper writeRequestToTempDir:*(a1 + 32) resultError:*(a1 + 40)];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_11;
    block[3] = &unk_279E21DD0;
    v4 = *(a1 + 64);
    v9 = v3;
    v10 = v4;
    block[4] = WeakRetained;
    v5 = v3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) response];
    (*(v6 + 16))(v6, v5, v7, *(a1 + 40));
  }

  else
  {
    v5 = VUICImageLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_3_9_cold_1();
    }
  }
}

void __72___TVURLSessionDownloadTaskWrapper_resumeWithCompletionHandler_session___block_invoke_11(void *a1)
{
  v1 = a1[4];
  if (v1 && a1[6] == *(v1 + 32))
  {
    v2 = 3;
    if (!a1[5])
    {
      v2 = 1;
    }

    *(v1 + 40) = v2;
    v3 = a1[4];
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

@end