@interface SiriAnalyticsLargeMessageStorage
- (SiriAnalyticsLargeMessageStorage)initWithApplicationIdentifier:(id)a3 processor:(id)a4 runtimeQueue:(id)a5;
- (void)enqueueLargeMessageObjectFromPath:(id)a3 messageWrapper:(id)a4 requestIdentifier:(id)a5 completion:(id)a6;
@end

@implementation SiriAnalyticsLargeMessageStorage

- (void)enqueueLargeMessageObjectFromPath:(id)a3 messageWrapper:(id)a4 requestIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke;
  aBlock[3] = &unk_1E8587898;
  v27 = v13;
  v14 = v13;
  v15 = _Block_copy(aBlock);
  runtimeQueue = self->_runtimeQueue;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_2;
  v21[3] = &unk_1E8587990;
  v21[4] = self;
  v22 = v11;
  v24 = v10;
  v25 = v15;
  v23 = v12;
  v17 = v10;
  v18 = v15;
  v19 = v12;
  v20 = v11;
  dispatch_async(runtimeQueue, v21);
}

uint64_t __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 == 0, a2);
  }

  return result;
}

void __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_3;
  v7[3] = &unk_1E85878F0;
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v10 = v5;
  v7[4] = v6;
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  [v3 processWithUploadEvent:v2 requestIdentifier:v4 completionHandler:v7];
}

void __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 determinationMade])
  {
    if (![v3 suppressed])
    {
      v8 = *(*(a1 + 32) + 8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_4;
      v14[3] = &unk_1E8587C40;
      v9 = *(a1 + 40);
      v10 = *(a1 + 56);
      v11 = *(a1 + 48);
      *&v12 = *(a1 + 32);
      *(&v12 + 1) = v10;
      *&v13 = v9;
      *(&v13 + 1) = v11;
      v15 = v13;
      v16 = v12;
      dispatch_async(v8, v14);

      goto LABEL_7;
    }

    v4 = *(a1 + 56);
    v5 = MEMORY[0x1E696ABC0];
    v6 = 3;
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = MEMORY[0x1E696ABC0];
    v6 = 4;
  }

  v7 = [v5 errorWithDomain:@"com.apple.siri.analytics" code:v6 userInfo:0];
  (*(v4 + 16))(v4, v7);

LABEL_7:
}

void __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_4(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:*(a1 + 32)];
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v27 = 0;
  v4 = [v2 readDataUpToLength:0x8000 error:&v27];
  v5 = v27;
  v6 = v5 != 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10 = v4;
    while ([v10 length])
    {
      [v3 appendData:v10];
      v27 = 0;
      v4 = [v2 readDataUpToLength:0x8000 error:&v27];
      v8 = v27;

      v6 = v8 != 0;
      if (v4)
      {
        v10 = v4;
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_6;
    }

    [v2 closeFile];
    v8 = 0;
    v4 = v10;
    goto LABEL_18;
  }

  v8 = v5;
LABEL_6:
  [v2 closeFile];
  if (!v6)
  {
LABEL_18:
    v11 = *(a1 + 40);
    v12 = objc_alloc_init(MEMORY[0x1E69CEAC0]);
    [v11 setContent:v12];

    v13 = [*(a1 + 40) content];
    v14 = [v3 copy];
    [v13 setDataPayload:v14];

    v15 = [*(a1 + 40) wrapAsAnyEvent];
    v16 = [MEMORY[0x1E699C168] sharedLogger];
    v17 = *(*(a1 + 48) + 24);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_6;
    v23[3] = &unk_1E85878C8;
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v20 = *(a1 + 56);
    v24 = v18;
    v25 = v19;
    v26 = v20;
    [v16 reportDataUploadEvent:v15 application:v17 completion:v23];

    goto LABEL_19;
  }

  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v9 = SiriAnalyticsLogContextStorage;
  if (os_log_type_enabled(SiriAnalyticsLogContextStorage, OS_LOG_TYPE_ERROR))
  {
    v22 = *(a1 + 32);
    *buf = 136315650;
    v29 = "[SiriAnalyticsLargeMessageStorage enqueueLargeMessageObjectFromPath:messageWrapper:requestIdentifier:completion:]_block_invoke_4";
    v30 = 2112;
    v31 = v22;
    v32 = 2112;
    v33 = v8;
    _os_log_error_impl(&dword_1D9863000, v9, OS_LOG_TYPE_ERROR, "%s Error while reading file from path %@ : %@", buf, 0x20u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
}

void __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (SiriAnalyticsLoggingInit_once != -1)
  {
    dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
  }

  v4 = SiriAnalyticsLogContextStorage;
  if (v3)
  {
    if (os_log_type_enabled(SiriAnalyticsLogContextStorage, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 136315650;
      v15 = "[SiriAnalyticsLargeMessageStorage enqueueLargeMessageObjectFromPath:messageWrapper:requestIdentifier:completion:]_block_invoke";
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s Error while writing file at path: %@ to FBF with error: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(SiriAnalyticsLogContextStorage, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 136315394;
    v15 = "[SiriAnalyticsLargeMessageStorage enqueueLargeMessageObjectFromPath:messageWrapper:requestIdentifier:completion:]_block_invoke";
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1D9863000, v4, OS_LOG_TYPE_INFO, "%s Successfully wrote file to FBF at path: %@", buf, 0x16u);
  }

  v7 = *(*(a1 + 40) + 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __114__SiriAnalyticsLargeMessageStorage_enqueueLargeMessageObjectFromPath_messageWrapper_requestIdentifier_completion___block_invoke_7;
  v11[3] = &unk_1E8587C90;
  v8 = *(a1 + 48);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  dispatch_async(v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (SiriAnalyticsLargeMessageStorage)initWithApplicationIdentifier:(id)a3 processor:(id)a4 runtimeQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = SiriAnalyticsLargeMessageStorage;
  v12 = [(SiriAnalyticsLargeMessageStorage *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_applicationIdentifier, a3);
    objc_storeStrong(&v13->_processor, a4);
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v15 = dispatch_queue_create("com.apple.siri.analytics.storage.blob", v14);
    queue = v13->_queue;
    v13->_queue = v15;

    objc_storeStrong(&v13->_runtimeQueue, a5);
  }

  return v13;
}

@end