@interface UIRemoteViewControllerHalfDisconnectionInvocationForProxy
@end

@implementation UIRemoteViewControllerHalfDisconnectionInvocationForProxy

void ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2810000000;
  v25[3] = "";
  v26 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke_2;
  aBlock[3] = &unk_1E71287C0;
  aBlock[4] = v25;
  aBlock[5] = v27;
  v4 = _Block_copy(aBlock);
  v5 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke_3;
  v21[3] = &unk_1E71287E8;
  v6 = v4;
  v22 = v6;
  v7 = v3;
  v23 = v7;
  v8 = [v5 remoteObjectProxyWithErrorHandler:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke_4;
  v18[3] = &unk_1E7128810;
  v9 = v6;
  v19 = v9;
  v10 = v7;
  v20 = v10;
  [v8 __prepareForDisconnectionWithCompletionHandler:v18];

  v11 = dispatch_time(0, 1000000000);
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke_5;
  block[3] = &unk_1E70F77D0;
  v16 = v9;
  v17 = v10;
  v13 = v10;
  v14 = v9;
  dispatch_after(v11, v12, block);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
}

void ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  os_unfair_lock_lock((*(*(a1 + 32) + 8) + 32));
  v3 = *(*(a1 + 40) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    os_unfair_lock_unlock((*(*(a1 + 32) + 8) + 32));
    if (v4)
    {
      v4[2]();
    }
  }
}

void ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke_5(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___UIRemoteViewControllerHalfDisconnectionInvocationForProxy_block_invoke_6;
  v2[3] = &unk_1E70F0F78;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  (*(v1 + 16))(v1, v2);
}

@end