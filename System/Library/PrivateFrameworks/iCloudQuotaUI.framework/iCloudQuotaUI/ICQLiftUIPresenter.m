@interface ICQLiftUIPresenter
- (BOOL)embedInViewController:(id)a3;
- (BOOL)presentInViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)pushInNavigationController:(id)a3 animated:(BOOL)a4;
- (ICQLiftUIPresenter)initWithURL:(id)a3 content:(id)a4 account:(id)a5 data:(id)a6;
- (ICQLiftUIPresenterDelegate)delegate;
- (void)didCancelWithUserInfo:(id)a3;
- (void)didFinishWithUserInfo:(id)a3;
- (void)didLoadWithSuccess:(BOOL)a3 error:(id)a4;
- (void)performICQActionWithName:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)reloadWithHeaders:(id)a3;
- (void)updateStoreDataForKey:(id)a3 value:(id)a4;
@end

@implementation ICQLiftUIPresenter

- (ICQLiftUIPresenter)initWithURL:(id)a3 content:(id)a4 account:(id)a5 data:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = ICQLiftUIPresenter;
  v15 = [(ICQLiftUIPresenter *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_liftUIPageURL, a3);
    objc_storeStrong(&v16->_content, a4);
    objc_storeStrong(&v16->_data, a6);
    if (!v13)
    {
      v17 = [MEMORY[0x277CB8F48] defaultStore];
      v13 = [v17 aa_primaryAppleAccount];
    }

    objc_storeStrong(&v16->_account, v13);
    v18 = objc_alloc_init(ICQLiftUIController);
    controller = v16->_controller;
    v16->_controller = v18;
  }

  return v16;
}

- (BOOL)presentInViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICQLiftUIPresenter *)self liftUIPageURL];
  if (v7)
  {

LABEL_4:
    v9 = [(ICQLiftUIPresenter *)self content];

    v10 = _ICQGetLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v23 = 138412290;
        v24 = v6;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting LiftUI page with preloaded data in viewcontroller %@", &v23, 0xCu);
      }

      v12 = MEMORY[0x277D75D28];
      v13 = [(ICQLiftUIPresenter *)self controller];
      v14 = [(ICQLiftUIPresenter *)self content];
      v15 = [(ICQLiftUIPresenter *)self account];
      v16 = [(ICQLiftUIPresenter *)self data];
      v17 = [v12 makeLiftUIViewControllerForController:v13 withContent:v14 account:v15 presenter:self data:v16];
    }

    else
    {
      if (v11)
      {
        v18 = [(ICQLiftUIPresenter *)self liftUIPageURL];
        v23 = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting LiftUI page at URL %@ in viewcontroller %@", &v23, 0x16u);
      }

      v19 = MEMORY[0x277D75D28];
      v13 = [(ICQLiftUIPresenter *)self controller];
      v14 = [(ICQLiftUIPresenter *)self liftUIPageURL];
      v15 = [(ICQLiftUIPresenter *)self account];
      v16 = [(ICQLiftUIPresenter *)self data];
      v17 = [v19 makeLiftUIViewControllerForController:v13 withURL:v14 account:v15 presenter:self data:v16];
    }

    v20 = v17;

    [MEMORY[0x277D75D28] ICQUIUpsellPrefferredPresentationSize];
    [v20 setPreferredContentSize:?];
    [v6 presentPreferredSizeWithViewController:v20 animated:v4 completion:0];
    v21 = 1;
    goto LABEL_12;
  }

  v8 = [(ICQLiftUIPresenter *)self content];

  if (v8)
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

- (BOOL)embedInViewController:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQLiftUIPresenter *)self liftUIPageURL];
  if (v5)
  {

LABEL_4:
    v7 = [(ICQLiftUIPresenter *)self content];

    v8 = _ICQGetLogSystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v21 = 138412290;
        v22 = v4;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Embedding LiftUI page with preloaded data in viewcontroller %@", &v21, 0xCu);
      }

      v10 = MEMORY[0x277D75D28];
      v11 = [(ICQLiftUIPresenter *)self controller];
      v12 = [(ICQLiftUIPresenter *)self content];
      v13 = [(ICQLiftUIPresenter *)self account];
      v14 = [(ICQLiftUIPresenter *)self data];
      v15 = [v10 makeLiftUIViewControllerForController:v11 withContent:v12 account:v13 presenter:self data:v14];
    }

    else
    {
      if (v9)
      {
        v16 = [(ICQLiftUIPresenter *)self liftUIPageURL];
        v21 = 138412546;
        v22 = v16;
        v23 = 2112;
        v24 = v4;
        _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Embedding LiftUI page at URL %@ in viewcontroller %@", &v21, 0x16u);
      }

      v17 = MEMORY[0x277D75D28];
      v11 = [(ICQLiftUIPresenter *)self controller];
      v12 = [(ICQLiftUIPresenter *)self liftUIPageURL];
      v13 = [(ICQLiftUIPresenter *)self account];
      v14 = [(ICQLiftUIPresenter *)self data];
      v15 = [v17 makeLiftUIViewControllerForController:v11 withURL:v12 account:v13 presenter:self data:v14];
    }

    v18 = v15;

    [v4 addChildAndPinToEdgesWithChildViewController:v18];
    v19 = 1;
    goto LABEL_12;
  }

  v6 = [(ICQLiftUIPresenter *)self content];

  if (v6)
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

- (BOOL)pushInNavigationController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ICQLiftUIPresenter *)self liftUIPageURL];
  if (v7)
  {

LABEL_4:
    v9 = [(ICQLiftUIPresenter *)self content];

    v10 = _ICQGetLogSystem();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v23 = 138412290;
        v24 = v6;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting LiftUI page with preloaded data in navigationController %@", &v23, 0xCu);
      }

      v12 = MEMORY[0x277D75D28];
      v13 = [(ICQLiftUIPresenter *)self controller];
      v14 = [(ICQLiftUIPresenter *)self content];
      v15 = [(ICQLiftUIPresenter *)self account];
      v16 = [(ICQLiftUIPresenter *)self data];
      v17 = [v12 makeLiftUIViewControllerForController:v13 withContent:v14 account:v15 presenter:self data:v16];
    }

    else
    {
      if (v11)
      {
        v18 = [(ICQLiftUIPresenter *)self liftUIPageURL];
        v23 = 138412546;
        v24 = v18;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Presenting LiftUI page at URL %@ in navigationController %@", &v23, 0x16u);
      }

      v19 = MEMORY[0x277D75D28];
      v13 = [(ICQLiftUIPresenter *)self controller];
      v14 = [(ICQLiftUIPresenter *)self liftUIPageURL];
      v15 = [(ICQLiftUIPresenter *)self account];
      v16 = [(ICQLiftUIPresenter *)self data];
      v17 = [v19 makeLiftUIViewControllerForController:v13 withURL:v14 account:v15 presenter:self data:v16];
    }

    v20 = v17;

    [v6 pushViewController:v20 animated:v4];
    v21 = 1;
    goto LABEL_12;
  }

  v8 = [(ICQLiftUIPresenter *)self content];

  if (v8)
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

- (void)updateStoreDataForKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICQLiftUIPresenter *)self controller];
  [v8 updateStoreDataForKey:v7 value:v6];
}

- (void)reloadWithHeaders:(id)a3
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [ICQLiftUIPresenter reloadWithHeaders:];
  }
}

- (void)didLoadWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [v6 localizedDescription];
    *buf = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "LiftUI load completed success: %@ error: %@", buf, 0x16u);
  }

  v10 = [(ICQLiftUIPresenter *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__ICQLiftUIPresenter_didLoadWithSuccess_error___block_invoke;
    block[3] = &unk_27A65A7D0;
    block[4] = self;
    v14 = v4;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __47__ICQLiftUIPresenter_didLoadWithSuccess_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 liftUIPresenter:*(a1 + 32) didLoadWithSuccess:*(a1 + 48) error:*(a1 + 40)];
}

- (void)didFinishWithUserInfo:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "LiftUI flow completed with parameters %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ICQLiftUIPresenter_didFinishWithUserInfo___block_invoke;
  v7[3] = &unk_27A65A708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)didCancelWithUserInfo:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "LiftUI flow has been dismissed with parameters %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__ICQLiftUIPresenter_didCancelWithUserInfo___block_invoke;
  v7[3] = &unk_27A65A708;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)performICQActionWithName:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _ICQActionForServerActionString();
  v10 = [(ICQLiftUIPresenter *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__ICQLiftUIPresenter_performICQActionWithName_parameters_completion___block_invoke;
    v12[3] = &unk_27A65B6A8;
    v12[4] = self;
    v15 = v9;
    v13 = v7;
    v14 = v8;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  else
  {
    [MEMORY[0x277D7F370] performAction:v9 parameters:v7 options:0];
    if (v8)
    {
      (*(v8 + 2))(v8, 1, 0);
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