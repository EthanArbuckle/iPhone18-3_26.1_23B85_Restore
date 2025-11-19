@interface VSViewServiceHostViewController
- (BOOL)_shouldAuthenticateAccountProviderWithIdentifier:(id)a3;
- (VSViewServiceHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (VSViewServiceHostViewControllerDelegate)delegate;
- (id)_requestForID:(id)a3;
- (void)_addRemoteViewControllerAsChildViewController;
- (void)_cancelButtonPressed:(id)a3;
- (void)_connectToViewServiceForRequest:(id)a3;
- (void)_didCancelRequest:(id)a3;
- (void)_didChooseAdditionalProvidersForRequest:(id)a3;
- (void)_didCompleteRequest:(id)a3;
- (void)_dismissViewServiceHostViewController;
- (void)_presentViewServiceHostViewController;
- (void)_removeRemoteViewControllerAsChildViewController;
- (void)_request:(id)a3 didFailWithError:(id)a4;
- (void)_request:(id)a3 didFinishWithResponse:(id)a4;
- (void)dealloc;
- (void)dismissViewServiceRemoteViewController:(id)a3;
- (void)enqueueViewServiceRequest:(id)a3 withIdentifier:(id)a4;
- (void)presentViewServiceRemoteViewController:(id)a3;
- (void)viewServiceRemoteViewController:(id)a3 didCancelRequest:(id)a4;
- (void)viewServiceRemoteViewController:(id)a3 didChooseAdditionalProvidersForRequest:(id)a4;
- (void)viewServiceRemoteViewController:(id)a3 didSelectProviderWithIdentifier:(id)a4 vetoHandler:(id)a5;
- (void)viewServiceRemoteViewController:(id)a3 didTerminateWithError:(id)a4;
- (void)viewServiceRemoteViewController:(id)a3 request:(id)a4 didFailWithError:(id)a5;
- (void)viewServiceRemoteViewController:(id)a3 request:(id)a4 didFinishWithResponse:(id)a5;
@end

@implementation VSViewServiceHostViewController

- (VSViewServiceHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a4;
  v7 = a3;
  VSRequireMainThread();
  v16.receiver = self;
  v16.super_class = VSViewServiceHostViewController;
  v8 = [(VSViewServiceHostViewController *)&v16 initWithNibName:v7 bundle:v6];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestsByID = v8->_requestsByID;
    v8->_requestsByID = v9;

    v11 = +[VSViewControllerFactory sharedFactory];
    viewControllerFactory = v8->_viewControllerFactory;
    v8->_viewControllerFactory = v11;

    v13 = objc_alloc_init(MEMORY[0x277CE2298]);
    currentRequest = v8->_currentRequest;
    v8->_currentRequest = v13;
  }

  return v8;
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSViewServiceHostViewController;
  [(VSViewServiceHostViewController *)&v3 dealloc];
}

- (void)enqueueViewServiceRequest:(id)a3 withIdentifier:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Will enque view service request in host view controller: %@", buf, 0xCu);
  }

  v9 = [(VSViewServiceHostViewController *)self requestsByID];
  v10 = [v9 objectForKey:v7];

  if (v10)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Request %@ already enqueued.", v7}];
  }

  v11 = [v6 copy];
  [v9 setObject:v11 forKey:v7];

  if ([v9 count] == 1)
  {
    [(VSViewServiceHostViewController *)self _connectToViewServiceForRequest:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_requestForID:(id)a3
{
  v4 = MEMORY[0x277CE2298];
  v5 = a3;
  v6 = [(VSViewServiceHostViewController *)self requestsByID];
  v7 = [v6 objectForKey:v5];

  v8 = [v4 optionalWithObject:v7];

  return v8;
}

- (void)_didCompleteRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Did complete request %@", buf, 0xCu);
  }

  v6 = [(VSViewServiceHostViewController *)self requestsByID];
  v7 = [v6 allKeys];
  v8 = [v7 containsObject:v4];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unrecognized request ID: %@", v4}];
  }

  [v6 removeObjectForKey:v4];
  if ([v6 count])
  {
    v9 = [v6 allKeys];
    v10 = [v9 objectAtIndex:0];

    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Will handle next request: %@", buf, 0xCu);
    }

    [(VSViewServiceHostViewController *)self _connectToViewServiceForRequest:v10];
  }

  else
  {
    v12 = VSDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "No more requests remain.", buf, 2u);
    }

    v10 = objc_alloc_init(MEMORY[0x277CE2298]);
    [(VSViewServiceHostViewController *)self setCurrentRequest:v10];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_request:(id)a3 didFinishWithResponse:(id)a4
{
  v6 = a4;
  v7 = [(VSViewServiceHostViewController *)self _requestForID:a3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__VSViewServiceHostViewController__request_didFinishWithResponse___block_invoke;
  v9[3] = &unk_279E191F0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 conditionallyUnwrapObject:v9];
}

void __66__VSViewServiceHostViewController__request_didFinishWithResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 viewServiceHostViewController:*(a1 + 32) request:v4 didFinishWithResponse:*(a1 + 40)];
}

- (void)_request:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  v7 = [(VSViewServiceHostViewController *)self _requestForID:a3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__VSViewServiceHostViewController__request_didFailWithError___block_invoke;
  v9[3] = &unk_279E191F0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 conditionallyUnwrapObject:v9];
}

void __61__VSViewServiceHostViewController__request_didFailWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 viewServiceHostViewController:*(a1 + 32) request:v4 didFailWithError:*(a1 + 40)];
}

- (void)_didCancelRequest:(id)a3
{
  v4 = [(VSViewServiceHostViewController *)self _requestForID:a3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__VSViewServiceHostViewController__didCancelRequest___block_invoke;
  v5[3] = &unk_279E19218;
  v5[4] = self;
  [v4 conditionallyUnwrapObject:v5];
}

void __53__VSViewServiceHostViewController__didCancelRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 viewServiceHostViewController:*(a1 + 32) didCancelRequest:v4];
}

- (void)_didChooseAdditionalProvidersForRequest:(id)a3
{
  v4 = [(VSViewServiceHostViewController *)self _requestForID:a3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__VSViewServiceHostViewController__didChooseAdditionalProvidersForRequest___block_invoke;
  v5[3] = &unk_279E19218;
  v5[4] = self;
  [v4 conditionallyUnwrapObject:v5];
}

void __75__VSViewServiceHostViewController__didChooseAdditionalProvidersForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 viewServiceHostViewController:*(a1 + 32) didChooseAdditionalProvidersForRequest:v4];
}

- (void)_presentViewServiceHostViewController
{
  v3 = [(VSViewServiceHostViewController *)self delegate];
  [v3 presentViewServiceHostViewController:self];
}

- (void)_dismissViewServiceHostViewController
{
  v3 = [(VSViewServiceHostViewController *)self delegate];
  [v3 dismissViewServiceHostViewController:self];
}

- (BOOL)_shouldAuthenticateAccountProviderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(VSViewServiceHostViewController *)self delegate];
  LOBYTE(self) = [v5 viewServiceHostViewController:self shouldAuthenticateAccountProviderWithIdentifier:v4];

  return self;
}

- (void)_cancelButtonPressed:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(VSViewServiceHostViewController *)self requestsByID:a3];
  v5 = [v4 allKeys];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [(VSViewServiceHostViewController *)self _didCancelRequest:v11];
        [(VSViewServiceHostViewController *)self _didCompleteRequest:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)presentViewServiceRemoteViewController:(id)a3
{
  if (![(VSViewServiceHostViewController *)self hasRequestedPresentation])
  {
    [(VSViewServiceHostViewController *)self setHasRequestedPresentation:1];
    [(VSViewServiceHostViewController *)self _presentViewServiceHostViewController];
  }

  [(VSViewServiceHostViewController *)self _addRemoteViewControllerAsChildViewController];
}

- (void)dismissViewServiceRemoteViewController:(id)a3
{
  if ([(VSViewServiceHostViewController *)self hasRequestedPresentation])
  {
    [(VSViewServiceHostViewController *)self setHasRequestedPresentation:0];

    [(VSViewServiceHostViewController *)self _dismissViewServiceHostViewController];
  }
}

- (void)viewServiceRemoteViewController:(id)a3 request:(id)a4 didFinishWithResponse:(id)a5
{
  v7 = a4;
  [(VSViewServiceHostViewController *)self _request:v7 didFinishWithResponse:a5];
  [(VSViewServiceHostViewController *)self _didCompleteRequest:v7];
}

- (void)viewServiceRemoteViewController:(id)a3 didTerminateWithError:(id)a4
{
  v5 = a4;
  v6 = VSErrorLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [VSViewServiceHostViewController viewServiceRemoteViewController:v5 didTerminateWithError:v6];
  }

  v7 = [(VSViewServiceHostViewController *)self currentRequest];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke;
  v10[3] = &unk_279E19268;
  v10[4] = self;
  v11 = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke_12;
  v9[3] = &unk_279E19290;
  v9[4] = self;
  v8 = v5;
  [v7 conditionallyUnwrapObject:v10 otherwise:v9];
}

void __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) hasRequestedPresentation];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 _removeRemoteViewControllerAsChildViewController];
    [*(a1 + 32) setRemoteViewController:0];
    v12 = MEMORY[0x277D85DD0];
    v6 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = v3;
    v7 = VSPrivateViewServiceCrashedErrorWithRecoveryHandler();
    v8 = VSErrorLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke_cold_1(v7, v8);
    }

    v9 = VSAlertForError(v7, 0);
    [*(a1 + 32) presentViewController:v9 animated:1 completion:{0, v12, 3221225472, __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke_2, &unk_279E19240, v13}];
  }

  else if ([v5 hasRetriedOnce])
  {
    v10 = *(a1 + 40);
    v11 = VSPublicError();
    [*(a1 + 32) _request:v3 didFailWithError:v11];
    [*(a1 + 32) _didCompleteRequest:v3];
  }

  else
  {
    [*(a1 + 32) setHasRetriedOnce:1];
    [*(a1 + 32) setRemoteViewController:0];
    [*(a1 + 32) _connectToViewServiceForRequest:v3];
  }
}

uint64_t __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {

    return [v3 _connectToViewServiceForRequest:v4];
  }

  else
  {
    [v3 _didCancelRequest:v4];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);

    return [v6 _didCompleteRequest:v7];
  }
}

- (void)viewServiceRemoteViewController:(id)a3 request:(id)a4 didFailWithError:(id)a5
{
  v7 = a4;
  [(VSViewServiceHostViewController *)self _request:v7 didFailWithError:a5];
  [(VSViewServiceHostViewController *)self _didCompleteRequest:v7];
}

- (void)viewServiceRemoteViewController:(id)a3 didChooseAdditionalProvidersForRequest:(id)a4
{
  v5 = a4;
  [(VSViewServiceHostViewController *)self _didChooseAdditionalProvidersForRequest:v5];
  [(VSViewServiceHostViewController *)self _didCompleteRequest:v5];
}

- (void)viewServiceRemoteViewController:(id)a3 didCancelRequest:(id)a4
{
  v5 = a4;
  [(VSViewServiceHostViewController *)self _didCancelRequest:v5];
  [(VSViewServiceHostViewController *)self _didCompleteRequest:v5];
}

- (void)viewServiceRemoteViewController:(id)a3 didSelectProviderWithIdentifier:(id)a4 vetoHandler:(id)a5
{
  v7 = a5;
  v7[2](v7, [(VSViewServiceHostViewController *)self _shouldAuthenticateAccountProviderWithIdentifier:a4]);
}

- (void)_connectToViewServiceForRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Entering %@ for request %@.", buf, 0x16u);
  }

  v8 = MEMORY[0x277CE2298];
  v9 = [v5 copy];
  v10 = [v8 optionalWithObject:v9];
  [(VSViewServiceHostViewController *)self setCurrentRequest:v10];

  v11 = [(VSViewServiceHostViewController *)self remoteViewController];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 serviceViewControllerProxy];
    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_270DD4000, v14, OS_LOG_TYPE_DEFAULT, "Will send request %@ to view service.", buf, 0xCu);
    }

    v15 = [(VSViewServiceHostViewController *)self _requestForID:v5];
    v16 = [v15 forceUnwrapObject];

    [v13 _performRequest:v16 withIdentifier:v5];
    v17 = VSDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_270DD4000, v17, OS_LOG_TYPE_DEFAULT, "Did send request %@ to view service.", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_270DD4000, v18, OS_LOG_TYPE_DEFAULT, "Will construct remote view controller.", v24, 2u);
    }

    v19 = [(VSViewServiceHostViewController *)self viewControllerFactory];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__VSViewServiceHostViewController__connectToViewServiceForRequest___block_invoke;
    v21[3] = &unk_279E192B8;
    objc_copyWeak(&v23, buf);
    v22 = v5;
    [v19 viewServiceRemoteViewControllerWithCompletion:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __67__VSViewServiceHostViewController__connectToViewServiceForRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = v5;
      v9 = VSDefaultLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_270DD4000, v9, OS_LOG_TYPE_DEFAULT, "Did construct remote view controller.", v12, 2u);
      }

      [WeakRetained setRemoteViewController:v8];
      [v8 setDelegate:WeakRetained];

      [WeakRetained _connectToViewServiceForRequest:*(a1 + 32)];
    }

    else
    {
      if (!v6)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The errorOrNil parameter must not be nil."];
      }

      v10 = v6;
      v11 = VSErrorLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __67__VSViewServiceHostViewController__connectToViewServiceForRequest___block_invoke_cold_1(WeakRetained, v10, v11);
      }

      [WeakRetained _request:*(a1 + 32) didFailWithError:v10];
      [WeakRetained _didCompleteRequest:*(a1 + 32)];
    }
  }
}

- (void)_removeRemoteViewControllerAsChildViewController
{
  v6 = [(VSViewServiceHostViewController *)self remoteViewController];
  if (v6)
  {
    v3 = [(VSViewServiceHostViewController *)self childViewControllers];
    v4 = [v3 containsObject:v6];

    if (v4)
    {
      [v6 willMoveToParentViewController:0];
      v5 = [v6 view];
      [v5 removeFromSuperview];
      [v6 removeFromParentViewController];
    }
  }
}

- (void)_addRemoteViewControllerAsChildViewController
{
  v3 = [(VSViewServiceHostViewController *)self remoteViewController];
  if (v3)
  {
    v7 = v3;
    [(VSViewServiceHostViewController *)self addChildViewController:v3];
    v4 = [v7 view];
    v5 = [(VSViewServiceHostViewController *)self view];
    [v5 bounds];
    [v4 setFrame:?];

    [v4 setAutoresizingMask:18];
    v6 = [(VSViewServiceHostViewController *)self view];
    [v6 insertSubview:v4 atIndex:0];

    [v7 didMoveToParentViewController:self];
  }

  MEMORY[0x2821F96F8]();
}

- (VSViewServiceHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewServiceRemoteViewController:(uint64_t)a1 didTerminateWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "View service did terminate with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Will present alert for termination error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __67__VSViewServiceHostViewController__connectToViewServiceForRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 138412546;
  v8 = objc_opt_class();
  v9 = 2112;
  v10 = a2;
  v5 = v8;
  _os_log_error_impl(&dword_270DD4000, a3, OS_LOG_TYPE_ERROR, "Remote view controller error while displaying %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end