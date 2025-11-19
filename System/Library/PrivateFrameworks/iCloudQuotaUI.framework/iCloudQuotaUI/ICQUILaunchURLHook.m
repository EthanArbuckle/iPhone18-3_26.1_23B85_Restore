@interface ICQUILaunchURLHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_launchWithURLString:(id)a3 completion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation ICQUILaunchURLHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [v3 isEqualToString:@"LAUNCH_URL"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v5 = [v4 isEqualToString:@"LAUNCH_URL"];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = a4;
  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 name];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Processing iCloudSync RUI hook with element %@", &v15, 0xCu);
  }

  v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277D46240]];

  [(ICQUILaunchURLHook *)self _launchWithURLString:v14 completion:v10];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Processing iCloudSync RUI hook with objectModel %@", &v11, 0xCu);
  }

  v9 = [v6 clientInfo];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D46240]];
  [(ICQUILaunchURLHook *)self _launchWithURLString:v10 completion:v7];
}

- (void)_launchWithURLString:(id)a3 completion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Recieved URL to launch: %@, dismissing object models", buf, 0xCu);
  }

  v9 = [(ICQUILaunchURLHook *)self delegate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__ICQUILaunchURLHook__launchWithURLString_completion___block_invoke;
  v11[3] = &unk_27A65AD40;
  v12 = v7;
  v10 = v7;
  [v9 dismissObjectModelsAnimated:1 completion:v11];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end