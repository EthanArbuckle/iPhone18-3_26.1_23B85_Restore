@interface PKIssuerProvisioningExtensionAuthorizationRemoteViewController
- (PKIssuerProvisioningExtensionAuthorizationRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)pkui_finish;
- (void)pkui_setCompletionHandler:(id)handler;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation PKIssuerProvisioningExtensionAuthorizationRemoteViewController

- (PKIssuerProvisioningExtensionAuthorizationRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5.receiver = self;
  v5.super_class = PKIssuerProvisioningExtensionAuthorizationRemoteViewController;
  result = [(PKIssuerProvisioningExtensionAuthorizationRemoteViewController *)&v5 initWithNibName:name bundle:bundle];
  if (result)
  {
    result->_result = 0;
  }

  return result;
}

- (void)dealloc
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v4 = _Block_copy(completionHandler);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__PKIssuerProvisioningExtensionAuthorizationRemoteViewController_dealloc__block_invoke;
    block[3] = &unk_1E8010B50;
    v8 = v4;
    v5 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v6.receiver = self;
  v6.super_class = PKIssuerProvisioningExtensionAuthorizationRemoteViewController;
  [(PKIssuerProvisioningExtensionAuthorizationRemoteViewController *)&v6 dealloc];
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v4.receiver = self;
  v4.super_class = PKIssuerProvisioningExtensionAuthorizationRemoteViewController;
  [(_UIRemoteViewController *)&v4 viewServiceDidTerminateWithError:error];
  [(PKIssuerProvisioningExtensionAuthorizationRemoteViewController *)self pkui_finish];
}

- (void)pkui_finish
{
  if (!self->_finished)
  {
    self->_finished = 1;
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, self->_result == 1);
      v4 = self->_completionHandler;
      self->_completionHandler = 0;
    }
  }
}

- (void)pkui_setCompletionHandler:(id)handler
{
  handlerCopy = handler;
  completionHandler = self->_completionHandler;
  if (completionHandler != handlerCopy)
  {
    if (self->_finished)
    {
      if (!handlerCopy)
      {
        goto LABEL_9;
      }

      v8 = handlerCopy;
      handlerCopy[2](handlerCopy, self->_result == 1);
    }

    else
    {
      v8 = handlerCopy;
      if (completionHandler)
      {
        completionHandler[2](completionHandler, 0);
        handlerCopy = v8;
      }

      v6 = _Block_copy(handlerCopy);
      v7 = self->_completionHandler;
      self->_completionHandler = v6;
    }

    handlerCopy = v8;
  }

LABEL_9:
}

@end