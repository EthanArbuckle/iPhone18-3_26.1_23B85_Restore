@interface TPSCallWaitingController
- (TPSCallWaitingController)init;
- (TPSCallWaitingController)initWithSubscriptionContext:(id)context;
- (TPSCallWaitingControllerDelegate)delegate;
- (void)requestController:(id)controller didReceiveResponse:(id)response;
- (void)requestStateChange:(int64_t)change;
@end

@implementation TPSCallWaitingController

- (TPSCallWaitingController)init
{
  [(TPSCallWaitingController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallWaitingController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = TPSCallWaitingController;
  v6 = [(TPSCallWaitingController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v7->_state = 0;
    v8 = objc_alloc_init(TPSCallWaitingRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v8;

    [(TPSRequestController *)v7->_requestController addDelegate:v7 queue:MEMORY[0x277D85CD0]];
    v10 = [[TPSCallWaitingRequest alloc] initWithSubscriptionContext:contextCopy];
    [(TPSRequestController *)v7->_requestController addRequest:v10];
  }

  return v7;
}

- (void)requestStateChange:(int64_t)change
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(TPSCallWaitingController *)self state]!= change)
  {
    [(TPSCallWaitingController *)self setState:0];
    v5 = [TPSSetCallWaitingRequest alloc];
    subscriptionContext = [(TPSCallWaitingController *)self subscriptionContext];
    v7 = [(TPSSetCallWaitingRequest *)v5 initWithSubscriptionContext:subscriptionContext enabled:change == 2];

    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Sending call waiting request %@.", &v11, 0xCu);
    }

    requestController = [(TPSCallWaitingController *)self requestController];
    [requestController addRequest:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestController:(id)controller didReceiveResponse:(id)response
{
  v15 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = TPSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 138412546;
    *&v14[4] = objc_opt_class();
    *&v14[12] = 2112;
    *&v14[14] = responseCopy;
    v7 = *&v14[4];
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", v14, 0x16u);
  }

  if ([responseCopy enabled])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [(TPSCallWaitingController *)self setState:v8, *v14, *&v14[16], v15];
  delegate = [(TPSCallWaitingController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(TPSCallWaitingController *)self delegate];
    error = [responseCopy error];
    [delegate2 callWaitingController:self didChangeState:v8 error:error];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (TPSCallWaitingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end