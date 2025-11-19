@interface TPSCallingLineIdRestrictionController
- (TPSCallingLineIdRestrictionController)init;
- (TPSCallingLineIdRestrictionController)initWithSubscriptionContext:(id)a3;
- (TPSCallingLineIdRestrictionControllerDelegate)delegate;
- (void)requestController:(id)a3 didReceiveResponse:(id)a4;
- (void)requestStateChange:(int64_t)a3;
- (void)requestStateForSubscriptionContext:(id)a3;
@end

@implementation TPSCallingLineIdRestrictionController

- (TPSCallingLineIdRestrictionController)init
{
  [(TPSCallingLineIdRestrictionController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCallingLineIdRestrictionController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TPSCallingLineIdRestrictionController;
  v6 = [(TPSCallingLineIdRestrictionController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
    v7->_state = 0;
    v8 = objc_alloc_init(TPSCallingLineIdRestrictionRequestController);
    requestController = v7->_requestController;
    v7->_requestController = v8;

    [(TPSRequestController *)v7->_requestController addDelegate:v7 queue:MEMORY[0x277D85CD0]];
    [(TPSCallingLineIdRestrictionController *)v7 requestStateForSubscriptionContext:v5];
  }

  return v7;
}

- (void)requestStateForSubscriptionContext:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[TPSCallingLineIdRestrictionRequest alloc] initWithSubscriptionContext:v4];

  v6 = TPSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Sending caller line ID restriction request %@.", &v8, 0xCu);
  }

  [(TPSRequestController *)self->_requestController addRequest:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)requestStateChange:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(TPSCallingLineIdRestrictionController *)self state]!= a3)
  {
    [(TPSCallingLineIdRestrictionController *)self setState:0];
    v5 = [TPSCallingLineIdRestrictionSetRequest alloc];
    v6 = [(TPSCallingLineIdRestrictionController *)self subscriptionContext];
    v7 = [(TPSCallingLineIdRestrictionSetRequest *)v5 initWithSubscriptionContext:v6 state:a3];

    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_DEFAULT, "Sending caller line ID restriction set request %@.", &v11, 0xCu);
    }

    v9 = [(TPSCallingLineIdRestrictionController *)self requestController];
    [v9 addRequest:v7];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestController:(id)a3 didReceiveResponse:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = TPSLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2112;
    v17 = v5;
    v7 = v15;
    _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "%@ received response %@.", &v14, 0x16u);
  }

  -[TPSCallingLineIdRestrictionController setEditable:](self, "setEditable:", [v5 isEditable]);
  -[TPSCallingLineIdRestrictionController setState:](self, "setState:", [v5 state]);
  v8 = [(TPSCallingLineIdRestrictionController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TPSCallingLineIdRestrictionController *)self delegate];
    v11 = [v5 state];
    v12 = [v5 error];
    [v10 callingLineIdController:self didChangeState:v11 error:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (TPSCallingLineIdRestrictionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end