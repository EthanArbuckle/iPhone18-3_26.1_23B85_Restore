@interface ICSystemPaperExtensionHostViewController
- (ICSystemPaperExtensionHostViewController)initWithConfiguration:(id)configuration;
- (ICSystemPaperPresentationDelegate)presentationDelegate;
- (_UIRemoteViewController)_containedRemoteViewController;
- (void)_finishAndNotifyDelegateWithError:(id)error;
- (void)_invokeAndReleaseStartHostingBlock;
- (void)addChildViewController:(id)controller;
- (void)dismissViewControllerCancelled:(BOOL)cancelled;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)openURL:(id)l completion:(id)completion;
- (void)teardown;
@end

@implementation ICSystemPaperExtensionHostViewController

- (ICSystemPaperExtensionHostViewController)initWithConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = ICSystemPaperExtensionHostViewController;
  v3 = [(_EXHostViewController *)&v6 initWithConfiguration:configuration];
  v4 = v3;
  if (v3)
  {
    [(_EXHostViewController *)v3 setDelegate:v3];
  }

  return v4;
}

- (_UIRemoteViewController)_containedRemoteViewController
{
  childViewControllers = [(ICSystemPaperExtensionHostViewController *)self childViewControllers];
  firstObject = [childViewControllers firstObject];

  return firstObject;
}

- (void)addChildViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = ICSystemPaperExtensionHostViewController;
  controllerCopy = controller;
  [(ICSystemPaperExtensionHostViewController *)&v6 addChildViewController:controllerCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [(ICSystemPaperExtensionHostViewController *)self _invokeAndReleaseStartHostingBlock:v6.receiver];
  }
}

- (void)_invokeAndReleaseStartHostingBlock
{
  startHostingBlock = [(ICSystemPaperExtensionHostViewController *)self startHostingBlock];

  if (startHostingBlock)
  {
    startHostingBlock2 = [(ICSystemPaperExtensionHostViewController *)self startHostingBlock];
    startHostingBlock2[2]();

    [(ICSystemPaperExtensionHostViewController *)self setStartHostingBlock:0];
  }
}

- (void)_finishAndNotifyDelegateWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICSystemPaperExtensionHostViewController *)self _invokeAndReleaseStartHostingBlock];
  if (![(ICSystemPaperExtensionHostViewController *)self didFinish])
  {
    [(ICSystemPaperExtensionHostViewController *)self setDidFinish:1];
    presentationDelegate = [(ICSystemPaperExtensionHostViewController *)self presentationDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      presentationDelegate2 = [(ICSystemPaperExtensionHostViewController *)self presentationDelegate];
      [presentationDelegate2 systemPaperDidFinishWithError:errorCopy];
    }

    else
    {
      presentationDelegate2 = [(ICSystemPaperExtensionHostViewController *)self presentingViewController];
      [presentationDelegate2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)teardown
{
  connection = [(ICSystemPaperExtensionHostViewController *)self connection];
  [connection invalidate];

  [(ICSystemPaperExtensionHostViewController *)self setConnection:0];
  [(_EXHostViewController *)self setConfiguration:0];

  [(ICSystemPaperExtensionHostViewController *)self setPresentationDelegate:0];
}

- (void)hostViewControllerDidActivate:(id)activate
{
  activateCopy = activate;
  v21 = 0;
  v5 = [(_EXHostViewController *)self makeXPCConnectionWithError:&v21];
  v6 = v21;
  if (v5)
  {
    ic_hostInterface = [MEMORY[0x277CCAE90] ic_hostInterface];
    [v5 setExportedInterface:ic_hostInterface];

    [v5 setExportedObject:self];
    ic_extensionInterface = [MEMORY[0x277CCAE90] ic_extensionInterface];
    [v5 setRemoteObjectInterface:ic_extensionInterface];

    objc_initWeak(&location, self);
    [v5 setInterruptionHandler:&__block_literal_global_1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke_16;
    v18[3] = &unk_279D33DD8;
    objc_copyWeak(&v19, &location);
    [v5 setInvalidationHandler:v18];
    [v5 resume];
    userActivityData = [(ICSystemPaperExtensionHostViewController *)self userActivityData];
    v10 = ICSystemPaperExtensionLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICSystemPaperExtensionHostViewController hostViewControllerDidActivate:];
    }

    remoteObjectProxy = [v5 remoteObjectProxy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke_18;
    v15[3] = &unk_279D33E00;
    v12 = userActivityData;
    v16 = v12;
    v13 = v5;
    v17 = v13;
    [remoteObjectProxy checkInWithReply:v15];

    [(ICSystemPaperExtensionHostViewController *)self setConnection:v13];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = ICSystemPaperExtensionLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(ICSystemPaperExtensionHostViewController *)v6 hostViewControllerDidActivate:v14];
    }
  }
}

void __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke()
{
  v0 = ICSystemPaperExtensionLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_26C4A3000, v0, OS_LOG_TYPE_DEFAULT, "Connection to extension interrupted", v1, 2u);
  }
}

void __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke_16(uint64_t a1)
{
  v2 = ICSystemPaperExtensionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26C4A3000, v2, OS_LOG_TYPE_DEFAULT, "Connection to extension invalidated", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke_17;
  block[3] = &unk_279D33DD8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
}

void __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

void __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke_18(uint64_t a1)
{
  v2 = ICSystemPaperExtensionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke_18_cold_1();
  }

  if (*(a1 + 32))
  {
    v3 = ICSystemPaperExtensionLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __74__ICSystemPaperExtensionHostViewController_hostViewControllerDidActivate___block_invoke_18_cold_2();
    }

    v4 = [*(a1 + 40) remoteObjectProxy];
    [v4 addUserActivityData:*(a1 + 32)];
  }
}

- (void)dismissViewControllerCancelled:(BOOL)cancelled
{
  v5 = ICSystemPaperExtensionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICSystemPaperExtensionHostViewController dismissViewControllerCancelled:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__ICSystemPaperExtensionHostViewController_dismissViewControllerCancelled___block_invoke;
  v6[3] = &unk_279D33E28;
  cancelledCopy = cancelled;
  v6[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __75__ICSystemPaperExtensionHostViewController_dismissViewControllerCancelled___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  [*(a1 + 32) _finishAndNotifyDelegateWithError:v2];
}

- (void)openURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v8 = ICSystemPaperExtensionLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICSystemPaperExtensionHostViewController openURL:completion:];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__ICSystemPaperExtensionHostViewController_openURL_completion___block_invoke;
  v17[3] = &unk_279D33E50;
  v17[4] = self;
  v9 = lCopy;
  v18 = v9;
  v19 = completionCopy;
  v10 = completionCopy;
  v11 = MEMORY[0x26D6A24D0](v17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__ICSystemPaperExtensionHostViewController_openURL_completion___block_invoke_20;
  block[3] = &unk_279D33E78;
  v15 = v9;
  v16 = v11;
  v12 = v11;
  v13 = v9;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __63__ICSystemPaperExtensionHostViewController_openURL_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = ICSystemPaperExtensionLog();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __63__ICSystemPaperExtensionHostViewController_openURL_completion___block_invoke_cold_2();
    }

    [*(a1 + 32) _finishAndNotifyDelegateWithError:0];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__ICSystemPaperExtensionHostViewController_openURL_completion___block_invoke_cold_1(a1, v5);
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

uint64_t __63__ICSystemPaperExtensionHostViewController_openURL_completion___block_invoke_20(uint64_t a1)
{
  v2 = MEMORY[0x277D76620];
  if ([*MEMORY[0x277D76620] canOpenURL:*(a1 + 32)])
  {
    v3 = *v2;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 _openURL:v4 originatingView:0 completionHandler:v5];
  }

  else
  {
    v7 = *(*(a1 + 40) + 16);

    return v7();
  }
}

- (ICSystemPaperPresentationDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (void)hostViewControllerDidActivate:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_26C4A3000, a2, OS_LOG_TYPE_ERROR, "Error creating XPC connection to extension: %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __63__ICSystemPaperExtensionHostViewController_openURL_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v4 = 138477827;
  v5 = v2;
  _os_log_error_impl(&dword_26C4A3000, a2, OS_LOG_TYPE_ERROR, "Failed to open URL: %{private}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end