@interface ICQLiftUIPresenter
- (BOOL)embedInViewController:(id)controller;
- (BOOL)presentInViewController:(id)controller animated:(BOOL)animated;
- (BOOL)pushInNavigationController:(id)controller animated:(BOOL)animated;
- (ICQLiftUIPresenter)initWithURL:(id)l content:(id)content account:(id)account data:(id)data;
- (ICQLiftUIPresenterDelegate)delegate;
- (void)didCancelWithUserInfo:(id)info;
- (void)didFinishWithUserInfo:(id)info;
- (void)didLoadWithSuccess:(BOOL)success error:(id)error;
- (void)performICQActionWithName:(id)name parameters:(id)parameters completion:(id)completion;
- (void)reloadWithHeaders:(id)headers;
- (void)updateStoreDataForKey:(id)key value:(id)value;
@end

@implementation ICQLiftUIPresenter

- (ICQLiftUIPresenter)initWithURL:(id)l content:(id)content account:(id)account data:(id)data
{
  lCopy = l;
  contentCopy = content;
  accountCopy = account;
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = ICQLiftUIPresenter;
  v15 = [(ICQLiftUIPresenter *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_liftUIPageURL, l);
    objc_storeStrong(&v16->_content, content);
    objc_storeStrong(&v16->_data, data);
    if (!accountCopy)
    {
      defaultStore = [MEMORY[0x277CB8F48] defaultStore];
      accountCopy = [defaultStore aa_primaryAppleAccount];
    }

    objc_storeStrong(&v16->_account, accountCopy);
    v18 = objc_alloc_init(ICQLiftUIController);
    controller = v16->_controller;
    v16->_controller = v18;
  }

  return v16;
}

- (BOOL)presentInViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  liftUIPageURL = [(ICQLiftUIPresenter *)self liftUIPageURL];
  if (liftUIPageURL)
  {

LABEL_4:
    content = [(ICQLiftUIPresenter *)self content];

    v10 = _ICQGetLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (content)
    {
      if (v11)
      {
        v23 = 138412290;
        v24 = controllerCopy;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting LiftUI page with preloaded data in viewcontroller %@", &v23, 0xCu);
      }

      v12 = MEMORY[0x277D75D28];
      controller = [(ICQLiftUIPresenter *)self controller];
      content2 = [(ICQLiftUIPresenter *)self content];
      account = [(ICQLiftUIPresenter *)self account];
      data = [(ICQLiftUIPresenter *)self data];
      v17 = [v12 makeLiftUIViewControllerForController:controller withContent:content2 account:account presenter:self data:data];
    }

    else
    {
      if (v11)
      {
        liftUIPageURL2 = [(ICQLiftUIPresenter *)self liftUIPageURL];
        v23 = 138412546;
        v24 = liftUIPageURL2;
        v25 = 2112;
        v26 = controllerCopy;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting LiftUI page at URL %@ in viewcontroller %@", &v23, 0x16u);
      }

      v19 = MEMORY[0x277D75D28];
      controller = [(ICQLiftUIPresenter *)self controller];
      content2 = [(ICQLiftUIPresenter *)self liftUIPageURL];
      account = [(ICQLiftUIPresenter *)self account];
      data = [(ICQLiftUIPresenter *)self data];
      v17 = [v19 makeLiftUIViewControllerForController:controller withURL:content2 account:account presenter:self data:data];
    }

    v20 = v17;

    [MEMORY[0x277D75D28] ICQUIUpsellPrefferredPresentationSize];
    [v20 setPreferredContentSize:?];
    [controllerCopy presentPreferredSizeWithViewController:v20 animated:animatedCopy completion:0];
    v21 = 1;
    goto LABEL_12;
  }

  content3 = [(ICQLiftUIPresenter *)self content];

  if (content3)
  {
    goto LABEL_4;
  }

  v20 = _ICQGetLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [ICQLiftUIPresenter presentInViewController:animated:];
  }

  v21 = 0;
LABEL_12:

  return v21;
}

- (BOOL)embedInViewController:(id)controller
{
  v25 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  liftUIPageURL = [(ICQLiftUIPresenter *)self liftUIPageURL];
  if (liftUIPageURL)
  {

LABEL_4:
    content = [(ICQLiftUIPresenter *)self content];

    v8 = _ICQGetLogSystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (content)
    {
      if (v9)
      {
        v21 = 138412290;
        v22 = controllerCopy;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Embedding LiftUI page with preloaded data in viewcontroller %@", &v21, 0xCu);
      }

      v10 = MEMORY[0x277D75D28];
      controller = [(ICQLiftUIPresenter *)self controller];
      content2 = [(ICQLiftUIPresenter *)self content];
      account = [(ICQLiftUIPresenter *)self account];
      data = [(ICQLiftUIPresenter *)self data];
      v15 = [v10 makeLiftUIViewControllerForController:controller withContent:content2 account:account presenter:self data:data];
    }

    else
    {
      if (v9)
      {
        liftUIPageURL2 = [(ICQLiftUIPresenter *)self liftUIPageURL];
        v21 = 138412546;
        v22 = liftUIPageURL2;
        v23 = 2112;
        v24 = controllerCopy;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Embedding LiftUI page at URL %@ in viewcontroller %@", &v21, 0x16u);
      }

      v17 = MEMORY[0x277D75D28];
      controller = [(ICQLiftUIPresenter *)self controller];
      content2 = [(ICQLiftUIPresenter *)self liftUIPageURL];
      account = [(ICQLiftUIPresenter *)self account];
      data = [(ICQLiftUIPresenter *)self data];
      v15 = [v17 makeLiftUIViewControllerForController:controller withURL:content2 account:account presenter:self data:data];
    }

    v18 = v15;

    [controllerCopy addChildAndPinToEdgesWithChildViewController:v18];
    v19 = 1;
    goto LABEL_12;
  }

  content3 = [(ICQLiftUIPresenter *)self content];

  if (content3)
  {
    goto LABEL_4;
  }

  v18 = _ICQGetLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [ICQLiftUIPresenter presentInViewController:animated:];
  }

  v19 = 0;
LABEL_12:

  return v19;
}

- (BOOL)pushInNavigationController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v27 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  liftUIPageURL = [(ICQLiftUIPresenter *)self liftUIPageURL];
  if (liftUIPageURL)
  {

LABEL_4:
    content = [(ICQLiftUIPresenter *)self content];

    v10 = _ICQGetLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (content)
    {
      if (v11)
      {
        v23 = 138412290;
        v24 = controllerCopy;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting LiftUI page with preloaded data in navigationController %@", &v23, 0xCu);
      }

      v12 = MEMORY[0x277D75D28];
      controller = [(ICQLiftUIPresenter *)self controller];
      content2 = [(ICQLiftUIPresenter *)self content];
      account = [(ICQLiftUIPresenter *)self account];
      data = [(ICQLiftUIPresenter *)self data];
      v17 = [v12 makeLiftUIViewControllerForController:controller withContent:content2 account:account presenter:self data:data];
    }

    else
    {
      if (v11)
      {
        liftUIPageURL2 = [(ICQLiftUIPresenter *)self liftUIPageURL];
        v23 = 138412546;
        v24 = liftUIPageURL2;
        v25 = 2112;
        v26 = controllerCopy;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting LiftUI page at URL %@ in navigationController %@", &v23, 0x16u);
      }

      v19 = MEMORY[0x277D75D28];
      controller = [(ICQLiftUIPresenter *)self controller];
      content2 = [(ICQLiftUIPresenter *)self liftUIPageURL];
      account = [(ICQLiftUIPresenter *)self account];
      data = [(ICQLiftUIPresenter *)self data];
      v17 = [v19 makeLiftUIViewControllerForController:controller withURL:content2 account:account presenter:self data:data];
    }

    v20 = v17;

    [controllerCopy pushViewController:v20 animated:animatedCopy];
    v21 = 1;
    goto LABEL_12;
  }

  content3 = [(ICQLiftUIPresenter *)self content];

  if (content3)
  {
    goto LABEL_4;
  }

  v20 = _ICQGetLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [ICQLiftUIPresenter presentInViewController:animated:];
  }

  v21 = 0;
LABEL_12:

  return v21;
}

- (void)updateStoreDataForKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  controller = [(ICQLiftUIPresenter *)self controller];
  [controller updateStoreDataForKey:keyCopy value:valueCopy];
}

- (void)reloadWithHeaders:(id)headers
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [ICQLiftUIPresenter reloadWithHeaders:];
  }
}

- (void)didLoadWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (successCopy)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    localizedDescription = [errorCopy localizedDescription];
    *buf = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = localizedDescription;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "LiftUI load completed success: %@ error: %@", buf, 0x16u);
  }

  delegate = [(ICQLiftUIPresenter *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ICQLiftUIPresenter_didLoadWithSuccess_error___block_invoke;
    block[3] = &unk_27A65A7D0;
    block[4] = self;
    v14 = successCopy;
    v13 = errorCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __47__ICQLiftUIPresenter_didLoadWithSuccess_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 liftUIPresenter:*(a1 + 32) didLoadWithSuccess:*(a1 + 48) error:*(a1 + 40)];
}

- (void)didFinishWithUserInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = infoCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "LiftUI flow completed with parameters %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ICQLiftUIPresenter_didFinishWithUserInfo___block_invoke;
  v7[3] = &unk_27A65A708;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __44__ICQLiftUIPresenter_didFinishWithUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v6 = v4;
  if (v3)
  {
    [v4 liftUIPresenterDidComplete:v5 userInfo:*(a1 + 40)];
  }

  else
  {
    [v4 liftUIPresenterDidComplete:v5];
  }
}

- (void)didCancelWithUserInfo:(id)info
{
  v11 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = infoCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "LiftUI flow has been dismissed with parameters %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ICQLiftUIPresenter_didCancelWithUserInfo___block_invoke;
  v7[3] = &unk_27A65A708;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __44__ICQLiftUIPresenter_didCancelWithUserInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) delegate];
  v5 = *(a1 + 32);
  v6 = v4;
  if (v3)
  {
    [v4 liftUIPresenterDidCancel:v5 userInfo:*(a1 + 40)];
  }

  else
  {
    [v4 liftUIPresenterDidCancel:v5];
  }
}

- (void)performICQActionWithName:(id)name parameters:(id)parameters completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v9 = _ICQActionForServerActionString();
  delegate = [(ICQLiftUIPresenter *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__ICQLiftUIPresenter_performICQActionWithName_parameters_completion___block_invoke;
    v12[3] = &unk_27A65B6A8;
    v12[4] = self;
    v15 = v9;
    v13 = parametersCopy;
    v14 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  else
  {
    [MEMORY[0x277D7F370] performAction:v9 parameters:parametersCopy options:0];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }
}

void __69__ICQLiftUIPresenter_performICQActionWithName_parameters_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 liftUIPresenter:*(a1 + 32) performAction:*(a1 + 56) parameters:*(a1 + 40) completion:*(a1 + 48)];
}

- (ICQLiftUIPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end