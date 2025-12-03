@interface VSViewServiceHostViewController
- (BOOL)_shouldAuthenticateAccountProviderWithIdentifier:(id)identifier;
- (VSViewServiceHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (VSViewServiceHostViewControllerDelegate)delegate;
- (id)_requestForID:(id)d;
- (void)_addRemoteViewControllerAsChildViewController;
- (void)_cancelButtonPressed:(id)pressed;
- (void)_connectToViewServiceForRequest:(id)request;
- (void)_didCancelRequest:(id)request;
- (void)_didChooseAdditionalProvidersForRequest:(id)request;
- (void)_didCompleteRequest:(id)request;
- (void)_dismissViewServiceHostViewController;
- (void)_presentViewServiceHostViewController;
- (void)_removeRemoteViewControllerAsChildViewController;
- (void)_request:(id)_request didFailWithError:(id)error;
- (void)_request:(id)_request didFinishWithResponse:(id)response;
- (void)dealloc;
- (void)dismissViewServiceRemoteViewController:(id)controller;
- (void)enqueueViewServiceRequest:(id)request withIdentifier:(id)identifier;
- (void)presentViewServiceRemoteViewController:(id)controller;
- (void)viewServiceRemoteViewController:(id)controller didCancelRequest:(id)request;
- (void)viewServiceRemoteViewController:(id)controller didChooseAdditionalProvidersForRequest:(id)request;
- (void)viewServiceRemoteViewController:(id)controller didSelectProviderWithIdentifier:(id)identifier vetoHandler:(id)handler;
- (void)viewServiceRemoteViewController:(id)controller didTerminateWithError:(id)error;
- (void)viewServiceRemoteViewController:(id)controller request:(id)request didFailWithError:(id)error;
- (void)viewServiceRemoteViewController:(id)controller request:(id)request didFinishWithResponse:(id)response;
@end

@implementation VSViewServiceHostViewController

- (VSViewServiceHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  bundleCopy = bundle;
  nameCopy = name;
  VSRequireMainThread();
  v16.receiver = self;
  v16.super_class = VSViewServiceHostViewController;
  v8 = [(VSViewServiceHostViewController *)&v16 initWithNibName:nameCopy bundle:bundleCopy];

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

- (void)enqueueViewServiceRequest:(id)request withIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = requestCopy;
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Will enque view service request in host view controller: %@", buf, 0xCu);
  }

  requestsByID = [(VSViewServiceHostViewController *)self requestsByID];
  v10 = [requestsByID objectForKey:identifierCopy];

  if (v10)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Request %@ already enqueued.", identifierCopy}];
  }

  v11 = [requestCopy copy];
  [requestsByID setObject:v11 forKey:identifierCopy];

  if ([requestsByID count] == 1)
  {
    [(VSViewServiceHostViewController *)self _connectToViewServiceForRequest:identifierCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_requestForID:(id)d
{
  v4 = MEMORY[0x277CE2298];
  dCopy = d;
  requestsByID = [(VSViewServiceHostViewController *)self requestsByID];
  v7 = [requestsByID objectForKey:dCopy];

  v8 = [v4 optionalWithObject:v7];

  return v8;
}

- (void)_didCompleteRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = requestCopy;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Did complete request %@", buf, 0xCu);
  }

  requestsByID = [(VSViewServiceHostViewController *)self requestsByID];
  allKeys = [requestsByID allKeys];
  v8 = [allKeys containsObject:requestCopy];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unrecognized request ID: %@", requestCopy}];
  }

  [requestsByID removeObjectForKey:requestCopy];
  if ([requestsByID count])
  {
    allKeys2 = [requestsByID allKeys];
    v10 = [allKeys2 objectAtIndex:0];

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

- (void)_request:(id)_request didFinishWithResponse:(id)response
{
  responseCopy = response;
  v7 = [(VSViewServiceHostViewController *)self _requestForID:_request];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__VSViewServiceHostViewController__request_didFinishWithResponse___block_invoke;
  v9[3] = &unk_279E191F0;
  v9[4] = self;
  v10 = responseCopy;
  v8 = responseCopy;
  [v7 conditionallyUnwrapObject:v9];
}

void __66__VSViewServiceHostViewController__request_didFinishWithResponse___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 viewServiceHostViewController:*(a1 + 32) request:v4 didFinishWithResponse:*(a1 + 40)];
}

- (void)_request:(id)_request didFailWithError:(id)error
{
  errorCopy = error;
  v7 = [(VSViewServiceHostViewController *)self _requestForID:_request];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__VSViewServiceHostViewController__request_didFailWithError___block_invoke;
  v9[3] = &unk_279E191F0;
  v9[4] = self;
  v10 = errorCopy;
  v8 = errorCopy;
  [v7 conditionallyUnwrapObject:v9];
}

void __61__VSViewServiceHostViewController__request_didFailWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  [v5 viewServiceHostViewController:*(a1 + 32) request:v4 didFailWithError:*(a1 + 40)];
}

- (void)_didCancelRequest:(id)request
{
  v4 = [(VSViewServiceHostViewController *)self _requestForID:request];
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

- (void)_didChooseAdditionalProvidersForRequest:(id)request
{
  v4 = [(VSViewServiceHostViewController *)self _requestForID:request];
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
  delegate = [(VSViewServiceHostViewController *)self delegate];
  [delegate presentViewServiceHostViewController:self];
}

- (void)_dismissViewServiceHostViewController
{
  delegate = [(VSViewServiceHostViewController *)self delegate];
  [delegate dismissViewServiceHostViewController:self];
}

- (BOOL)_shouldAuthenticateAccountProviderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(VSViewServiceHostViewController *)self delegate];
  LOBYTE(self) = [delegate viewServiceHostViewController:self shouldAuthenticateAccountProviderWithIdentifier:identifierCopy];

  return self;
}

- (void)_cancelButtonPressed:(id)pressed
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(VSViewServiceHostViewController *)self requestsByID:pressed];
  allKeys = [v4 allKeys];
  v6 = [allKeys copy];

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

- (void)presentViewServiceRemoteViewController:(id)controller
{
  if (![(VSViewServiceHostViewController *)self hasRequestedPresentation])
  {
    [(VSViewServiceHostViewController *)self setHasRequestedPresentation:1];
    [(VSViewServiceHostViewController *)self _presentViewServiceHostViewController];
  }

  [(VSViewServiceHostViewController *)self _addRemoteViewControllerAsChildViewController];
}

- (void)dismissViewServiceRemoteViewController:(id)controller
{
  if ([(VSViewServiceHostViewController *)self hasRequestedPresentation])
  {
    [(VSViewServiceHostViewController *)self setHasRequestedPresentation:0];

    [(VSViewServiceHostViewController *)self _dismissViewServiceHostViewController];
  }
}

- (void)viewServiceRemoteViewController:(id)controller request:(id)request didFinishWithResponse:(id)response
{
  requestCopy = request;
  [(VSViewServiceHostViewController *)self _request:requestCopy didFinishWithResponse:response];
  [(VSViewServiceHostViewController *)self _didCompleteRequest:requestCopy];
}

- (void)viewServiceRemoteViewController:(id)controller didTerminateWithError:(id)error
{
  errorCopy = error;
  v6 = VSErrorLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [VSViewServiceHostViewController viewServiceRemoteViewController:errorCopy didTerminateWithError:v6];
  }

  currentRequest = [(VSViewServiceHostViewController *)self currentRequest];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke;
  v10[3] = &unk_279E19268;
  v10[4] = self;
  v11 = errorCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __89__VSViewServiceHostViewController_viewServiceRemoteViewController_didTerminateWithError___block_invoke_12;
  v9[3] = &unk_279E19290;
  v9[4] = self;
  v8 = errorCopy;
  [currentRequest conditionallyUnwrapObject:v10 otherwise:v9];
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

- (void)viewServiceRemoteViewController:(id)controller request:(id)request didFailWithError:(id)error
{
  requestCopy = request;
  [(VSViewServiceHostViewController *)self _request:requestCopy didFailWithError:error];
  [(VSViewServiceHostViewController *)self _didCompleteRequest:requestCopy];
}

- (void)viewServiceRemoteViewController:(id)controller didChooseAdditionalProvidersForRequest:(id)request
{
  requestCopy = request;
  [(VSViewServiceHostViewController *)self _didChooseAdditionalProvidersForRequest:requestCopy];
  [(VSViewServiceHostViewController *)self _didCompleteRequest:requestCopy];
}

- (void)viewServiceRemoteViewController:(id)controller didCancelRequest:(id)request
{
  requestCopy = request;
  [(VSViewServiceHostViewController *)self _didCancelRequest:requestCopy];
  [(VSViewServiceHostViewController *)self _didCompleteRequest:requestCopy];
}

- (void)viewServiceRemoteViewController:(id)controller didSelectProviderWithIdentifier:(id)identifier vetoHandler:(id)handler
{
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, [(VSViewServiceHostViewController *)self _shouldAuthenticateAccountProviderWithIdentifier:identifier]);
}

- (void)_connectToViewServiceForRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v26 = v7;
    v27 = 2112;
    v28 = requestCopy;
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Entering %@ for request %@.", buf, 0x16u);
  }

  v8 = MEMORY[0x277CE2298];
  v9 = [requestCopy copy];
  v10 = [v8 optionalWithObject:v9];
  [(VSViewServiceHostViewController *)self setCurrentRequest:v10];

  remoteViewController = [(VSViewServiceHostViewController *)self remoteViewController];
  v12 = remoteViewController;
  if (remoteViewController)
  {
    serviceViewControllerProxy = [remoteViewController serviceViewControllerProxy];
    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = requestCopy;
      _os_log_impl(&dword_270DD4000, v14, OS_LOG_TYPE_DEFAULT, "Will send request %@ to view service.", buf, 0xCu);
    }

    v15 = [(VSViewServiceHostViewController *)self _requestForID:requestCopy];
    forceUnwrapObject = [v15 forceUnwrapObject];

    [serviceViewControllerProxy _performRequest:forceUnwrapObject withIdentifier:requestCopy];
    v17 = VSDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = requestCopy;
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

    viewControllerFactory = [(VSViewServiceHostViewController *)self viewControllerFactory];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __67__VSViewServiceHostViewController__connectToViewServiceForRequest___block_invoke;
    v21[3] = &unk_279E192B8;
    objc_copyWeak(&v23, buf);
    v22 = requestCopy;
    [viewControllerFactory viewServiceRemoteViewControllerWithCompletion:v21];

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
  remoteViewController = [(VSViewServiceHostViewController *)self remoteViewController];
  if (remoteViewController)
  {
    childViewControllers = [(VSViewServiceHostViewController *)self childViewControllers];
    v4 = [childViewControllers containsObject:remoteViewController];

    if (v4)
    {
      [remoteViewController willMoveToParentViewController:0];
      view = [remoteViewController view];
      [view removeFromSuperview];
      [remoteViewController removeFromParentViewController];
    }
  }
}

- (void)_addRemoteViewControllerAsChildViewController
{
  remoteViewController = [(VSViewServiceHostViewController *)self remoteViewController];
  if (remoteViewController)
  {
    v7 = remoteViewController;
    [(VSViewServiceHostViewController *)self addChildViewController:remoteViewController];
    view = [v7 view];
    view2 = [(VSViewServiceHostViewController *)self view];
    [view2 bounds];
    [view setFrame:?];

    [view setAutoresizingMask:18];
    view3 = [(VSViewServiceHostViewController *)self view];
    [view3 insertSubview:view atIndex:0];

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