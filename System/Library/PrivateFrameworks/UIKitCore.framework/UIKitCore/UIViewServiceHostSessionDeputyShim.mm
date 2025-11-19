@interface UIViewServiceHostSessionDeputyShim
@end

@implementation UIViewServiceHostSessionDeputyShim

uint64_t __132___UIViewServiceHostSessionDeputyShim_connectToViewService_appBundleViewServiceBundleIdentifier_deputyInterfaces_connectionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) signal])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __132___UIViewServiceHostSessionDeputyShim_connectToViewService_appBundleViewServiceBundleIdentifier_deputyInterfaces_connectionHandler___block_invoke_2;
    v6[3] = &unk_1E7101CA8;
    v4 = *(a1 + 48);
    v6[4] = *(a1 + 40);
    [v4 callConnectionHandlerWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "bs_errorWithDomain:code:configuration:", 0x1EFB82530, 4, v6)}];
  }

  return (*(a2 + 16))(a2);
}

void __132___UIViewServiceHostSessionDeputyShim_connectToViewService_appBundleViewServiceBundleIdentifier_deputyInterfaces_connectionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) signal])
  {
    return;
  }

  if (a3)
  {
    v6 = *(__UILogGetCategoryCachedImpl("ViewServiceConnectionRequest", &_MergedGlobals_1049) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = a3;
      v8 = "Connection Request for %{public}@ return error=%{public}@";
      v9 = v6;
      v10 = 22;
LABEL_7:
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    }
  }

  else
  {
    v11 = *(__UILogGetCategoryCachedImpl("ViewServiceConnectionRequest", &qword_1ED49D780) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = 138543362;
      v14 = v12;
      v8 = "Connection Request for %{public}@ completed";
      v9 = v11;
      v10 = 12;
      goto LABEL_7;
    }
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), a2, a3);
  if ([*(a1 + 48) signal])
  {
  }
}

intptr_t __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"attempting to connect to %@ but that service is terminated", *(*(a1 + 32) + 64)];
  v3 = *(a1 + 48);
  v5 = @"Message";
  v6[0] = v2;
  (*(v3 + 16))(v3, 0, [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFB82530 code:4 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}]);
  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(a1 + 32));
  v4 = *(a2 + 16);

  return v4(a2);
}

void __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_4;
  block[3] = &unk_1E7101D90;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  block[5] = a2;
  block[6] = v3;
  block[4] = v2;
  dispatch_sync(v2, block);
}

void __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_4(void *a1)
{
  if (atomic_exchange((*(a1[6] + 8) + 24), 0))
  {
    (*(a1[5] + 16))();
  }

  v2 = a1[4];

  dispatch_release(v2);
}

uint64_t __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_6;
  v5[3] = &unk_1E7101DB8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v3;
  return (*(v2 + 16))(v2, v5);
}

uint64_t __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_7(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __112___UIViewServiceHostSessionDeputyShim_connectToDeputyWithInterface_fromExportedHostingObject_connectionHandler___block_invoke_8;
  v5[3] = &unk_1E7101DB8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v3;
  return (*(v2 + 16))(v2, v5);
}

BOOL __81___UIViewServiceHostSessionDeputyShim__viewServiceHostSessionDidConnectToClient___block_invoke(uint64_t a1, void *a2)
{
  AssociatedObject = objc_getAssociatedObject([a2 target], &_UIViewServiceIncomingReplyHandlerKey);
  v4 = AssociatedObject;
  if (AssociatedObject)
  {
    AssociatedObject[2](AssociatedObject, a2);
  }

  return v4 != 0;
}

uint64_t __65___UIViewServiceHostSessionDeputyShim_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) appendObject:*(*(a1 + 40) + 80) withName:@"session"];
  [*(a1 + 32) appendObject:*(*(a1 + 40) + 88) withName:@"serviceConnection"];
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v2 appendObject:v3 withName:@"terminationError" skipIfNil:1];
}

@end