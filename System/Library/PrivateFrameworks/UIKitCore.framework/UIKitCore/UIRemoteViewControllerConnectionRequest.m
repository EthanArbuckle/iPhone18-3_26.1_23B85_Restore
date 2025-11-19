@interface UIRemoteViewControllerConnectionRequest
@end

@implementation UIRemoteViewControllerConnectionRequest

void __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke(uint64_t a1)
{
  if ((atomic_exchange((*(*(a1 + 40) + 8) + 24), 1u) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v4 = WeakRetained[15];
      WeakRetained[15] = 0;
      v5 = WeakRetained;

      WeakRetained = v5;
    }
  }
}

void __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[12];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke_6;
  v7[3] = &unk_1E70F37C0;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __196___UIRemoteViewControllerConnectionRequest___requestRemoteViewController_service_fromServiceWithBundleIdentifier_traitCollection_legacyImpl_serviceViewControllerDeputyInterface_connectionHandler___block_invoke_6(uint64_t a1)
{
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_UIViewServiceErrorDomain" code:1 userInfo:&unk_1EFE34B80];
  v2 = [*(a1 + 32) _cancelWithError:v3];
  [v2 whenCompleteDo:*(a1 + 40)];
}

void __71___UIRemoteViewControllerConnectionRequest__cancelUnconditionallyThen___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    *(v2 + 104) = 1;
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [*(*(a1 + 32) + 88) session];

    if (v5)
    {
      v6 = [*(*(a1 + 32) + 88) session];
      v7 = [v6 disconnect];
      [v4 addObject:v7];
    }

    v8 = *(a1 + 32);
    v9 = v8[10];
    if (v9)
    {
      v10 = [v9 invoke];
      [v4 addObject:v10];

      v8 = *(a1 + 32);
    }

    objc_initWeak(&location, v8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71___UIRemoteViewControllerConnectionRequest__cancelUnconditionallyThen___block_invoke_2;
    v11[3] = &unk_1E710B188;
    v11[4] = *(a1 + 32);
    objc_copyWeak(&v13, &location);
    v12 = *(a1 + 40);
    [_UIAsyncInvocationObserver whenInvocationsCompleteForObservers:v4 do:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __71___UIRemoteViewControllerConnectionRequest__cancelUnconditionallyThen___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __71___UIRemoteViewControllerConnectionRequest__cancelUnconditionallyThen___block_invoke_3;
  v3[3] = &unk_1E71036E8;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __71___UIRemoteViewControllerConnectionRequest__cancelUnconditionallyThen___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained[2];
  v5 = WeakRetained;
  if (v3)
  {
    (*(v3 + 16))(v3, 0, WeakRetained[14]);
    WeakRetained = v5;
    v4 = v5[2];
  }

  else
  {
    v4 = 0;
  }

  WeakRetained[2] = 0;

  (*(*(a1 + 32) + 16))();
}

void __115___UIRemoteViewControllerConnectionRequest__connectToDeputyWithInterface_fromExportedHostingObject_successHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  v8 = *(*(*(v7 + 8) + 40) + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115___UIRemoteViewControllerConnectionRequest__connectToDeputyWithInterface_fromExportedHostingObject_successHandler___block_invoke_2;
  block[3] = &unk_1E7128528;
  v13 = v6;
  v17 = v7;
  v14 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_sync(v8, block);
}

id __115___UIRemoteViewControllerConnectionRequest__connectToDeputyWithInterface_fromExportedHostingObject_successHandler___block_invoke_2(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    return [*(*(a1[8] + 8) + 40) _cancelWithError:?];
  }

  v3 = *(__UILogGetCategoryCachedImpl("ViewServiceConnectionRequest", _UIInternalPreference_RemoteViewControllerSnapshotDelay_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "Successfully connected to deputy interface %{public}@", &v5, 0xCu);
  }

  return (*(a1[7] + 16))();
}

void __65___UIRemoteViewControllerConnectionRequest__connectToViewService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(*(v7 + 8) + 40) + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65___UIRemoteViewControllerConnectionRequest__connectToViewService__block_invoke_2;
  block[3] = &unk_1E70FFB90;
  v13 = v5;
  v14 = v7;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_sync(v8, block);
}

id __65___UIRemoteViewControllerConnectionRequest__connectToViewService__block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);
  if (v2)
  {
    return [v3 _cancelWithError:?];
  }

  [v3[11] setSession:a1[5]];
  v5 = *(*(a1[6] + 8) + 40);

  return [v5 _connectToViewControllerOperator];
}

void __70___UIRemoteViewControllerConnectionRequest__connectToPlugInKitService__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(*(v7 + 8) + 40) + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70___UIRemoteViewControllerConnectionRequest__connectToPlugInKitService__block_invoke_2;
  block[3] = &unk_1E70FFB90;
  v13 = v5;
  v14 = v7;
  v12 = v6;
  v9 = v5;
  v10 = v6;
  dispatch_sync(v8, block);
}

id __70___UIRemoteViewControllerConnectionRequest__connectToPlugInKitService__block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);
  if (v2)
  {
    return [v3 _cancelWithError:?];
  }

  [v3[11] setSession:a1[5]];
  v5 = *(*(a1[6] + 8) + 40);

  return [v5 _connectToViewControllerOperator];
}

uint64_t __76___UIRemoteViewControllerConnectionRequest__connectToViewControllerOperator__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(*(*(a1 + 32) + 8) + 40) + 88) setViewControllerOperatorProxy:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 _sendServiceViewControllerRequest];
}

void __77___UIRemoteViewControllerConnectionRequest__sendServiceViewControllerRequest__block_invoke_271(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v16 = v5;
  if (a3)
  {
    v7 = [v6 _cancelWithError:a3];
  }

  else
  {
    v8 = v6[11];
    v9 = [v5 serviceWindowHostingHandle];
    [v8 setHostedWindowHostingHandle:v9];

    v10 = *(*(a1 + 32) + 88);
    v11 = [v16 supportedInterfaceOrientations];
    [v10 setServiceViewControllerSupportedInterfaceOrientations:v11];

    v12 = *(*(a1 + 32) + 88);
    v13 = [v16 accessibilityServerPort];
    [v12 setServiceAccessibilityServerPortWrapper:v13];

    [*(*(a1 + 32) + 88) setPreferredStatusBarStyle:{objc_msgSend(v16, "preferredStatusBarStyle")}];
    [*(*(a1 + 32) + 88) setPreferredStatusBarVisibility:{objc_msgSend(v16, "preferredStatusBarVisibility")}];
    v14 = [*(*(a1 + 32) + 64) __shouldHostRemoteTextEffectsWindow];
    v15 = *(a1 + 32);
    if (v14)
    {
      [v15 _connectToTextEffectsOperator];
    }

    else
    {
      [v15 _connectToServiceViewController];
    }
  }
}

uint64_t __73___UIRemoteViewControllerConnectionRequest__connectToTextEffectsOperator__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(*(*(a1 + 32) + 8) + 40) + 88) setTextEffectsOperatorProxy:a2];
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return [v3 _sendServiceTextEffectsRequest];
}

uint64_t __74___UIRemoteViewControllerConnectionRequest__sendServiceTextEffectsRequest__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(*(a1 + 32) + 88);
  v8 = a4;
  v9 = a3;
  [v7 setTextEffectsWindowHostingHandle:a2];
  [*(*(a1 + 32) + 88) setTextEffectsWindowAboveStatusBarHostingHandle:v9];

  [*(*(a1 + 32) + 88) setRemoteKeyboardsWindowHostingHandle:v8];
  v10 = *(a1 + 32);

  return [v10 _connectToServiceViewController];
}

uint64_t __75___UIRemoteViewControllerConnectionRequest__connectToServiceViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 88) setServiceViewControllerProxy:a2];
  v3 = *(a1 + 32);

  return [v3 _connectToViewControllerControlMessageDeputy];
}

uint64_t __88___UIRemoteViewControllerConnectionRequest__connectToViewControllerControlMessageDeputy__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 88) setServiceViewControllerControlMessageProxy:a2];
  v3 = *(a1 + 32);

  return [v3 _didFinishEstablishingConnection];
}

@end