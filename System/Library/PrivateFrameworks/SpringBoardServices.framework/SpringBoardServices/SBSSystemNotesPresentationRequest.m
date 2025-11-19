@interface SBSSystemNotesPresentationRequest
+ (void)performPresentationWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation SBSSystemNotesPresentationRequest

+ (void)performPresentationWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke;
  v10[3] = &unk_1E7360398;
  v11 = v6;
  v12 = v7;
  v13 = a1;
  v8 = v6;
  v9 = v7;
  [v8 prepareForXPCCall:v10];
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = SBLogSystemNotes();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_cold_1(a1, v3, v4);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v5 = MEMORY[0x1E698F498];
    v6 = [MEMORY[0x1E698F498] defaultShellMachName];
    v7 = +[SBSSystemNotesPresentationServiceInterfaceSpecification identifier];
    v8 = [v5 endpointForMachName:v6 service:v7 instance:0];

    v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.SpringBoardServices.SBSSystemNotesPresentationRequest.connectionQueue", v10);

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_3;
    v23[3] = &unk_1E7360370;
    v12 = *(a1 + 48);
    v24 = v11;
    v25 = v12;
    v13 = v11;
    [v9 configureConnection:v23];
    v14 = SBLogSystemNotes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v9;
      _os_log_impl(&dword_19169D000, v14, OS_LOG_TYPE_DEFAULT, "Activating Connection: %{public}@", buf, 0xCu);
    }

    [v9 activate];
    v15 = v9;
    v16 = [v15 remoteTarget];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_12;
    v20[3] = &unk_1E735FEC0;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v21 = v15;
    v22 = v18;
    v19 = v15;
    [v16 presentWithConfiguration:v17 completion:v20];
  }
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSSystemNotesPresentationServiceInterfaceSpecification interface];
  [v5 setInterface:v3];

  v4 = +[SBSSystemNotesPresentationServiceInterfaceSpecification serviceQuality];
  [v5 setServiceQuality:v4];

  [v5 setInterfaceTarget:*(a1 + 40)];
  [v5 setTargetQueue:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_27];
  [v5 setInterruptionHandler:&__block_literal_global_7_2];
  [v5 setInvalidationHandler:&__block_literal_global_10_0];
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogSystemNotes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogSystemNotes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Received interruption for connection: %{public}@", &v4, 0xCu);
  }

  [v2 activate];
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogSystemNotes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19_cold_1(v2, v3);
  }
}

uint64_t __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_12(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void __85__SBSSystemNotesPresentationRequest_performPresentationWithConfiguration_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "Failed to prepare SBSSystemNotesPresentationConfiguration for XPC call. config: %{public}@; error: %{public}@", &v4, 0x16u);
}

@end