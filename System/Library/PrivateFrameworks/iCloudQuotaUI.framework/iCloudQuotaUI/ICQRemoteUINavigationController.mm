@interface ICQRemoteUINavigationController
- (ICQRemoteUINavigationController)initWithRootViewController:(id)controller;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation ICQRemoteUINavigationController

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = ICQRemoteUINavigationController;
  [(ICQRemoteUINavigationController *)&v7 viewDidDisappear:disappear];
  if ([(ICQRemoteUINavigationController *)self shouldSignalDelegateOnDismiss])
  {
    delegate = [(ICQRemoteUINavigationController *)self delegate];
    if ([delegate conformsToProtocol:&unk_28847C890])
    {
      delegate2 = [(ICQRemoteUINavigationController *)self delegate];
      v6 = objc_opt_respondsToSelector();

      if ((v6 & 1) == 0)
      {
        return;
      }

      delegate = [(ICQRemoteUINavigationController *)self delegate];
      [delegate remoteUIControllerDidDismiss:0];
    }
  }
}

- (ICQRemoteUINavigationController)initWithRootViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = ICQRemoteUINavigationController;
  result = [(ICQRemoteUINavigationController *)&v4 initWithRootViewController:controller];
  if (result)
  {
    result->_shouldSignalDelegateOnDismiss = 1;
  }

  return result;
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
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
    animatedCopy = animated;
    block[4] = self;
    v12 = completionCopy;
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