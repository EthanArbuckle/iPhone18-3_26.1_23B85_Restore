@interface ICSMatterhornUpsellHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_matterhornUpsell:(id)a3;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
- (void)upgradeFlowManagerDidCancel:(id)a3;
- (void)upgradeFlowManagerDidComplete:(id)a3;
@end

@implementation ICSMatterhornUpsellHook

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [@"action:matterhornUpsell" isEqualToString:v3];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [@"action:matterhornUpsell" isEqualToString:v4];

  return v5;
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = LogSubsystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "matterhorn upsell with element %@ and objectmodel %@", &v14, 0x16u);
  }

  [(ICSMatterhornUpsellHook *)self _matterhornUpsell:v11];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "matterhorn upsell with objectModel %@", &v10, 0xCu);
  }

  [(ICSMatterhornUpsellHook *)self _matterhornUpsell:v7];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_matterhornUpsell:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D7F4E0]) initWithJourneyId:@"settingsHideMyEmail"];
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICSMatterhornUpsellHook *)v5 _matterhornUpsell:v6];
  }

  if (v5)
  {
    v7 = [v4 copy];
    v8 = _hookCompletion;
    _hookCompletion = v7;

    [v5 setDelegate:self];
    v9 = LogSubsystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_275819000, v9, OS_LOG_TYPE_DEFAULT, "starting matterhorn journey", v10, 2u);
    }

    [v5 beginJourney];
  }
}

- (void)upgradeFlowManagerDidCancel:(id)a3
{
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICSMatterhornUpsellHook upgradeFlowManagerDidCancel:v3];
  }

  v4 = _hookCompletion;
  if (_hookCompletion)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEC6B8] code:-1 userInfo:0];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (void)upgradeFlowManagerDidComplete:(id)a3
{
  v3 = LogSubsystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICSMatterhornUpsellHook upgradeFlowManagerDidComplete:v3];
  }

  if (_hookCompletion)
  {
    (*(_hookCompletion + 16))();
  }
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_matterhornUpsell:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_275819000, a2, OS_LOG_TYPE_DEBUG, "flowManager %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end