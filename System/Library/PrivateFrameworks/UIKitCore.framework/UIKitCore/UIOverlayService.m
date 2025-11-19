@interface UIOverlayService
@end

@implementation UIOverlayService

void __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained serviceConnection];

    if (!v4)
    {
      v5 = MEMORY[0x1E698F498];
      v6 = +[_UIOverlayServiceInterfaceSpecification identifier];
      v7 = [v5 endpointForMachName:0x1EFB7D370 service:v6 instance:0];

      v8 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
      [v3 setServiceConnection:v8];

      v9 = [v3 serviceConnection];

      if (v9)
      {
        objc_initWeak(&location, v3);
        v10 = [v3 serviceConnection];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke_2;
        v14[3] = &unk_1E712B6B0;
        objc_copyWeak(&v15, &location);
        v14[4] = *(a1 + 32);
        [v10 configureConnection:v14];

        v11 = [v3 serviceConnection];
        [v11 activate];

        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }

    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = [v3 serviceConnection];
      (*(v12 + 16))(v12, v13);
    }
  }
}

void __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [v3 setTargetQueue:*(*(a1 + 32) + 16)];
    v5 = +[_UIOverlayServiceInterfaceSpecification interface];
    [v3 setInterface:v5];

    v6 = +[_UIOverlayServiceInterfaceSpecification serviceQuality];
    [v3 setServiceQuality:v6];

    v7 = [[_UIWeakOverlayService alloc] initWithService:WeakRetained];
    [v3 setInterfaceTarget:v7];

    objc_initWeak(&location, WeakRetained);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke_3;
    v8[3] = &unk_1E712B688;
    objc_copyWeak(&v9, &location);
    [v3 setInvalidationHandler:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_initWeak(&location, WeakRetained);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke_4;
    block[3] = &unk_1E70F5A28;
    objc_copyWeak(&v9, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v5 = [WeakRetained connectionQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke_5;
    v6[3] = &unk_1E70F5A28;
    objc_copyWeak(&v7, &location);
    dispatch_async(v5, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 overlayServiceDidInvalidate:v3];

    WeakRetained = v3;
  }
}

void __69___UIOverlayService__makeConnectionIfNecessaryWithConnectionHandler___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setServiceConnection:0];
    WeakRetained = v2;
  }
}

void __45___UIOverlayService__asyncTargetWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69C7560];
  v4 = a2;
  v5 = [v3 attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v7 = [v4 remoteTargetWithLaunchingAssertionAttributes:v6];

  (*(*(a1 + 32) + 16))();
}

@end