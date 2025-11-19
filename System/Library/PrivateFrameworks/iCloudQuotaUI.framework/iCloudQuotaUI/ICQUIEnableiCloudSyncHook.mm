@interface ICQUIEnableiCloudSyncHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (ICQUIEnableiCloudSyncHook)initWithAccount:(id)a3 dataclasses:(id)a4;
- (RUIServerHookDelegate)delegate;
- (void)_turnOniCloudSyncWithCompletion:(id)a3;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
- (void)signInOperationManager:(id)a3 didSaveAccount:(id)a4 error:(id)a5;
@end

@implementation ICQUIEnableiCloudSyncHook

- (ICQUIEnableiCloudSyncHook)initWithAccount:(id)a3 dataclasses:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICQUIEnableiCloudSyncHook;
  v9 = [(ICQUIEnableiCloudSyncHook *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_dataclasses, a4);
  }

  return v10;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"TURN_ON_ICLOUD_SYNC"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v5 = [v4 isEqualToString:@"TURN_ON_ICLOUD_SYNC"];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a6;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 name];
    v12 = 138412290;
    v13 = v11;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Processing iCloudSync RUI hook with element %@", &v12, 0xCu);
  }

  [(ICQUIEnableiCloudSyncHook *)self _turnOniCloudSyncWithCompletion:v9];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 clientInfo];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D46250]];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Processing iCloudSync RUI hook with object model action %@", &v11, 0xCu);
  }

  [(ICQUIEnableiCloudSyncHook *)self _turnOniCloudSyncWithCompletion:v7];
}

- (void)_turnOniCloudSyncWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  hookCompletion = self->_hookCompletion;
  self->_hookCompletion = v4;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained presentationContextForHook:self];

  v7 = [objc_alloc(MEMORY[0x277CECAD8]) initWithPresentingViewController:v9];
  dataclassOperationManager = self->_dataclassOperationManager;
  self->_dataclassOperationManager = v7;

  [(AAUISignInOperationManager *)self->_dataclassOperationManager setDelegate:self];
  [(AAUISignInOperationManager *)self->_dataclassOperationManager enableDataclasses:self->_dataclasses forAccount:self->_account];
}

- (void)signInOperationManager:(id)a3 didSaveAccount:(id)a4 error:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = _ICQGetLogSystem();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ICQUIEnableiCloudSyncHook signInOperationManager:v8 didSaveAccount:v10 error:?];
    }

    v11 = *(self->_hookCompletion + 2);
    goto LABEL_5;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Successfully enabled iCloud sync for account (%@)", &v13, 0xCu);
  }

  if (![(NSSet *)self->_dataclasses containsObject:*MEMORY[0x277CB89D0]]&& ![(NSSet *)self->_dataclasses containsObject:*MEMORY[0x277CB8960]])
  {
    v11 = *(self->_hookCompletion + 2);
LABEL_5:
    v11();
    goto LABEL_13;
  }

  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Procedding to enable iCloud sync for Photos.", &v13, 2u);
  }

  [ICQUIPhotosHelper enableCloudPhotosLibraryWithCompletion:self->_hookCompletion];
LABEL_13:
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)signInOperationManager:(uint64_t)a1 didSaveAccount:(uint64_t)a2 error:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Failed to turn on iCloud sync for account (%@), dataclasses (%@) with error: %@", &v5, 0x20u);
}

@end