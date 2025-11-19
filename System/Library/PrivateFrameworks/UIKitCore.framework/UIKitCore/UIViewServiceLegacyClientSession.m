@interface UIViewServiceLegacyClientSession
@end

@implementation UIViewServiceLegacyClientSession

void __71___UIViewServiceLegacyClientSession__registerSessionForDefaultDeputies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v11 = [*(a1 + 32) object];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 uniqueIdentifier];
    v14 = a5[1];
    v16[0] = *a5;
    v16[1] = v14;
    v15 = [_UIViewServiceViewControllerOperator operatorWithRemoteViewControllerProxy:a2 hostPID:a3 hostBundleID:a4 hostAuditToken:v16 sessionIdentifier:v13];
    [v12 unregisterDeputyClass:objc_opt_class()];
    [(_UIViewServiceViewControllerOperator *)v15 setSession:v12];
    (*(a6 + 16))(a6, v15);
  }
}

void __71___UIViewServiceLegacyClientSession__registerSessionForDefaultDeputies__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = [*(a1 + 32) object];
  if (v9)
  {
    v11 = v9;
    v10 = +[_UIViewServiceTextEffectsOperator operatorWithRemoteViewControllerProxy:hostPID:sessionIdentifier:](_UIViewServiceTextEffectsOperator, "operatorWithRemoteViewControllerProxy:hostPID:sessionIdentifier:", a2, a3, [v9 uniqueIdentifier]);
    [v11 unregisterDeputyClass:objc_opt_class()];
    (*(a6 + 16))(a6, v10);
  }
}

uint64_t __59___UIViewServiceLegacyClientSession_setTerminationHandler___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 48);
  if (*(result + 40) != v1)
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 48) = result;
  }

  return result;
}

void __68___UIViewServiceLegacyClientSession__invalidateUnconditionallyThen___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __68___UIViewServiceLegacyClientSession__invalidateUnconditionallyThen___block_invoke_2;
  v13 = &unk_1E7128A60;
  v5 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v5;
  v6 = *(v5 + 16);
  if (v6)
  {
    [v6 invalidate];
    [*(*(a1 + 40) + 32) invalidate];
    dispatch_async([*(*(a1 + 40) + 16) _queue], &v10);
  }

  else
  {
    *(v15 + 16) = 0;
    (*(*(v15 + 48) + 16))(*(v15 + 48), a2, a3, a4);
    (*(v14 + 16))(v14, v7, v8, v9);
  }
}

uint64_t __68___UIViewServiceLegacyClientSession__invalidateUnconditionallyThen___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 40) + 16) = 0;
  (*(*(*(a1 + 40) + 48) + 16))();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void __79___UIViewServiceLegacyClientSession_registerDeputyClass_withConnectionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) object];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_class();
    v9 = v7[2];
    if (v9)
    {
      [v7[2] auditToken];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v10 = [v8 bundleIdentifierForConnection:v9 auditToken:&v14];
    v11 = *(a1 + 48);
    v12 = [v7[2] processIdentifier];
    v13 = v7[2];
    if (v13)
    {
      [v13 auditToken];
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    (*(v11 + 16))(v11, a2, v12, v10, &v14, a3);
  }
}

@end