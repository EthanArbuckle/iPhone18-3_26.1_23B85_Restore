@interface ICQUIRemoteUIPresenter
- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5;
- (ICQUIRemoteUIPresenter)initWithAccount:(id)a3 presenter:(id)a4;
- (ICQUIRemoteUIPresenterDelegate)delegate;
- (void)_attachServerHooks;
- (void)_configureTableRow:(id)a3 withDataclass:(id)a4;
- (void)_processObjectModel:(id)a3;
- (void)_processTableRow:(id)a3;
- (void)beginRUIFlowWithRequest:(id)a3;
- (void)beginRUIFlowWithURL:(id)a3;
- (void)dismissUpgradeFlowWithSuccess:(BOOL)a3;
- (void)objectModel:(id)a3 configureTableRow:(id)a4 page:(id)a5;
- (void)objectModelDidChange:(id)a3;
- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
@end

@implementation ICQUIRemoteUIPresenter

- (ICQUIRemoteUIPresenter)initWithAccount:(id)a3 presenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ICQUIRemoteUIPresenter;
  v9 = [(ICQUIRemoteUIPresenter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_presenter, a4);
    v11 = objc_alloc_init(MEMORY[0x277D46220]);
    ruiController = v10->_ruiController;
    v10->_ruiController = v11;

    [(RemoteUIController *)v10->_ruiController setDelegate:v10];
    [(RemoteUIController *)v10->_ruiController setHostViewController:v10->_presenter];
  }

  return v10;
}

- (void)beginRUIFlowWithURL:(id)a3
{
  v4 = [MEMORY[0x277CCAD20] requestWithURL:a3];
  [(ICQUIRemoteUIPresenter *)self beginRUIFlowWithRequest:v4];
}

- (void)beginRUIFlowWithRequest:(id)a3
{
  v4 = a3;
  [(ICQUIRemoteUIPresenter *)self _attachServerHooks];
  [(RemoteUIController *)self->_ruiController loadRequest:v4 completion:&__block_literal_global_4];
}

void __50__ICQUIRemoteUIPresenter_beginRUIFlowWithRequest___block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = _ICQGetLogSystem();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "RUI flow initiated successfully.", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __50__ICQUIRemoteUIPresenter_beginRUIFlowWithRequest___block_invoke_cold_1(v4, v6);
  }
}

- (void)_attachServerHooks
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_dataclasses)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      dataclasses = self->_dataclasses;
      v11 = 138412290;
      v12 = dataclasses;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Attaching enable iCloud sync hook for dataclasses: %@", &v11, 0xCu);
    }

    v6 = [[ICQUIEnableiCloudSyncHook alloc] initWithAccount:self->_account dataclasses:self->_dataclasses];
    [v3 addObject:v6];
    v7 = objc_alloc_init(ICQUILaunchURLHook);
    [v3 addObject:v7];
  }

  v8 = [[ICQFamilySharingHook alloc] initWithFlowDelegate:self];
  [v3 addObject:v8];

  v9 = [objc_alloc(MEMORY[0x277D46200]) initWithRemoteUIController:self->_ruiController hooks:v3];
  serverHookHandler = self->_serverHookHandler;
  self->_serverHookHandler = v9;
}

- (BOOL)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5
{
  v6 = a4;
  [v6 ak_addAnisetteHeaders];
  [v6 ak_addDeviceUDIDHeader];
  [v6 aa_addMultiUserDeviceHeaderIfEnabled];
  [(ICQUsageQuotaRequest *)ICQQuotaInfoRequest addHeadersToRequest:v6 forAccount:self->_account];

  return 1;
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "didFinishLoad forRequest: %@, error: %@", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 remoteUIFlowManager:self didLoadWithSuccess:v7 == 0 error:v7];
  }
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *a5;
    *buf = 134217984;
    v17 = v9;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "objectModel received with action: %lu", buf, 0xCu);
  }

  [(ICQUIRemoteUIPresenter *)self _processObjectModel:v7];
  [(RUIServerHookHandler *)self->_serverHookHandler processObjectModel:v7 isModal:1];

  if (*a5 == 4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(UIViewController *)self->_presenter popViewControllerAnimated:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_delegate);
        [v14 remoteUIFlowManager:self didDismissWithError:0];
      }
    }
  }

  else if (*a5 == 1)
  {
    presenter = self->_presenter;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__ICQUIRemoteUIPresenter_remoteUIController_didReceiveObjectModel_actionSignal___block_invoke;
    v15[3] = &unk_27A65A820;
    v15[4] = self;
    [(UIViewController *)presenter dismissViewControllerAnimated:1 completion:v15];
  }
}

void __80__ICQUIRemoteUIPresenter_remoteUIController_didReceiveObjectModel_actionSignal___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 56));
    [v4 remoteUIFlowManager:*(a1 + 32) didDismissWithError:0];
  }
}

- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  closeURL = self->_closeURL;
  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (closeURL)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "didDismiss Notifying server - sheet was dismissed.", v10, 2u);
    }

    v8 = MEMORY[0x277D7F370];
    v9 = self->_closeURL;
    v11 = *MEMORY[0x277D7F268];
    v12[0] = v9;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [v8 performAction:124 parameters:v7 options:2];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQUIRemoteUIPresenter remoteUIController:v7 didDismissModalNavigationWithObjectModels:?];
  }
}

- (void)objectModelDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 delegate];
    v7 = 136315394;
    v8 = "[ICQUIRemoteUIPresenter objectModelDidChange:]";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s, current delegate %@", &v7, 0x16u);
  }

  [(ICQUIRemoteUIPresenter *)self _processObjectModel:v4];
}

- (void)objectModel:(id)a3 configureTableRow:(id)a4 page:(id)a5
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQUIRemoteUIPresenter objectModel:configureTableRow:page:]";
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  [(ICQUIRemoteUIPresenter *)self _processTableRow:v6];
}

- (void)_processObjectModel:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[ICQUIRemoteUIPresenter _processObjectModel:]";
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s objectModel: %@", buf, 0x16u);
  }

  v6 = [v4 clientInfo];
  v7 = [v6 objectForKeyedSubscript:@"closeURL"];
  closeURL = self->_closeURL;
  self->_closeURL = v7;

  v9 = [v4 subElementWithID:@"substituteRowSection"];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 rows];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ICQUIRemoteUIPresenter *)self _processTableRow:*(*(&v15 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)_processTableRow:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[ICQUIRemoteUIPresenter _processTableRow:]";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s tableRow: %@", &v15, 0x16u);
  }

  v6 = [v4 attributes];
  v7 = [v6 objectForKeyedSubscript:@"hasSubstitutions"];
  if (([v7 BOOLValue] & 1) == 0)
  {

LABEL_8:
    goto LABEL_9;
  }

  v8 = [v4 attributes];
  v9 = [v8 objectForKeyedSubscript:@"index"];
  v10 = [v9 intValue];
  v11 = [(NSSet *)self->_dataclasses count];

  if (v11 > v10)
  {
    v12 = [(NSSet *)self->_dataclasses allObjects];
    v13 = [v4 attributes];
    v14 = [v13 objectForKeyedSubscript:@"index"];
    v6 = [v12 objectAtIndexedSubscript:{objc_msgSend(v14, "intValue")}];

    if (v6)
    {
      [(ICQUIRemoteUIPresenter *)self _configureTableRow:v4 withDataclass:v6];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_configureTableRow:(id)a3 withDataclass:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[ICQUIRemoteUIPresenter _configureTableRow:withDataclass:]";
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s tableRow: %@ dataclass: %@", &v16, 0x20u);
  }

  v8 = [v5 tableCell];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [ICQUIDataclassHelper localizedTextForDataclass:v6];
    v11 = [v5 tableCell];
    v12 = [v11 textLabel];
    [v12 setText:v10];

    v13 = [ICQUIDataclassHelper iconForDataclass:v6];
    v14 = [v5 tableCell];
    v15 = [v14 imageView];
    [v15 setImage:v13];
  }
}

- (void)dismissUpgradeFlowWithSuccess:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 136315394;
    v10 = "[ICQUIRemoteUIPresenter dismissUpgradeFlowWithSuccess:]";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s success: %@", buf, 0x16u);
  }

  presenter = self->_presenter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ICQUIRemoteUIPresenter_dismissUpgradeFlowWithSuccess___block_invoke;
  v8[3] = &unk_27A65A820;
  v8[4] = self;
  [(UIViewController *)presenter dismissViewControllerAnimated:1 completion:v8];
}

void __56__ICQUIRemoteUIPresenter_dismissUpgradeFlowWithSuccess___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 56));
    [v4 remoteUIFlowManager:*(a1 + 32) didCompleteFlowWithSuccess:1 error:0];
  }
}

- (ICQUIRemoteUIPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __50__ICQUIRemoteUIPresenter_beginRUIFlowWithRequest___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Failed to load RUI request with error: %@", &v2, 0xCu);
}

@end