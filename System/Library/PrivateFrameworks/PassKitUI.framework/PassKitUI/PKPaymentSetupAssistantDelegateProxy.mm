@interface PKPaymentSetupAssistantDelegateProxy
- (PKPaymentSetupAssistantDelegateProxy)initWithDelegate:(id)a3 provisioningController:(id)a4;
- (void)_setExternalDelegate:(id)a3;
- (void)viewController:(id)a3 didShowProvisioningError:(id)a4;
- (void)viewControllerDidBeginSetupFlow:(id)a3;
- (void)viewControllerDidTerminateSetupFlow:(id)a3;
@end

@implementation PKPaymentSetupAssistantDelegateProxy

- (PKPaymentSetupAssistantDelegateProxy)initWithDelegate:(id)a3 provisioningController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKPaymentSetupAssistantDelegateProxy;
  v8 = [(PKPaymentSetupAssistantDelegateProxy *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_provisioningController, a4);
    [(PKPaymentSetupAssistantDelegateProxy *)v9 _setExternalDelegate:v6];
  }

  return v9;
}

- (void)_setExternalDelegate:(id)a3
{
  v6 = a3;
  externalDelegate = self->_externalDelegate;
  if (externalDelegate != v6)
  {
    object = v6;
    if (externalDelegate)
    {
      objc_setAssociatedObject(externalDelegate, a2, 0, 1);
      v6 = object;
    }

    if (v6)
    {
      objc_setAssociatedObject(object, a2, self, 1);
    }

    objc_storeStrong(&self->_externalDelegate, a3);
    v6 = object;
  }
}

- (void)viewControllerDidBeginSetupFlow:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  self->_didTerminateSetupFlow = 0;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = [v5 description];
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", &v11, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentSetupViewControllerDelegate *)self->_externalDelegate viewControllerDidBeginSetupFlow:v5];
  }
}

- (void)viewControllerDidTerminateSetupFlow:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  didTerminateSetupFlow = self->_didTerminateSetupFlow;
  v7 = PKLogFacilityTypeGetObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (didTerminateSetupFlow)
  {
    if (v8)
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v12 = [v5 description];
      v17 = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "%@ - %@ - Called twice by: %@", &v17, 0x20u);
    }
  }

  else
  {
    if (v8)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v5 description];
      v17 = 138412802;
      v18 = v14;
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", &v17, 0x20u);
    }

    self->_didTerminateSetupFlow = 1;
    [(PKPaymentSetupViewControllerDelegate *)self->_externalDelegate viewControllerDidTerminateSetupFlow:v5];
  }
}

- (void)viewController:(id)a3 didShowProvisioningError:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, "%@ - %@", &v13, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(PKPaymentSetupViewControllerDelegate *)self->_externalDelegate viewController:v7 didShowProvisioningError:v8];
  }
}

@end