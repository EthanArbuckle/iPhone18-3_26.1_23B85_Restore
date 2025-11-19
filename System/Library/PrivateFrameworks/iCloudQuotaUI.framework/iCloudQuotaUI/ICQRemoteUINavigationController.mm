@interface ICQRemoteUINavigationController
- (ICQRemoteUINavigationController)initWithRootViewController:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation ICQRemoteUINavigationController

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICQRemoteUINavigationController;
  [(ICQRemoteUINavigationController *)&v7 viewDidDisappear:a3];
  if ([(ICQRemoteUINavigationController *)self shouldSignalDelegateOnDismiss])
  {
    v4 = [(ICQRemoteUINavigationController *)self delegate];
    if ([v4 conformsToProtocol:&unk_28847C890])
    {
      v5 = [(ICQRemoteUINavigationController *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      v4 = [(ICQRemoteUINavigationController *)self delegate];
      [v4 remoteUIControllerDidDismiss:0];
    }
  }
}

- (ICQRemoteUINavigationController)initWithRootViewController:(id)a3
{
  v4.receiver = self;
  v4.super_class = ICQRemoteUINavigationController;
  result = [(ICQRemoteUINavigationController *)&v4 initWithRootViewController:a3];
  if (result)
  {
    result->_shouldSignalDelegateOnDismiss = 1;
  }

  return result;
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[ICQUIExtensionKitHelpers isExtensionKitProcess];
  v8 = _ICQGetLogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      [ICQRemoteUINavigationController dismissViewControllerAnimated:v8 completion:?];
    }

    if ([(ICQRemoteUINavigationController *)self didCompletePurchaseFlowWithSuccess])
    {
      v10 = 0;
    }

    else
    {
      v10 = ICQCreateError();
    }

    [ICQUIRemoteExtensionEntry dismissRemoteViewControllerWithError:v10];
  }

  else
  {
    if (v9)
    {
      [ICQRemoteUINavigationController dismissViewControllerAnimated:v8 completion:?];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__ICQRemoteUINavigationController_dismissViewControllerAnimated_completion___block_invoke;
    block[3] = &unk_27A65AD00;
    v13 = a3;
    block[4] = self;
    v12 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
    v10 = v12;
  }
}

id __76__ICQRemoteUINavigationController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v4.receiver = *(a1 + 32);
  v4.super_class = ICQRemoteUINavigationController;
  return objc_msgSendSuper2(&v4, sel_dismissViewControllerAnimated_completion_, v1, v2);
}

@end