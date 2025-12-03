@interface ICSMatterhornUpsellHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_matterhornUpsell:(id)upsell;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
- (void)upgradeFlowManagerDidCancel:(id)cancel;
- (void)upgradeFlowManagerDidComplete:(id)complete;
@end

@implementation ICSMatterhornUpsellHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [@"action:matterhornUpsell" isEqualToString:name];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [@"action:matterhornUpsell" isEqualToString:v4];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  modelCopy = model;
  completionCopy = completion;
  v12 = LogSubsystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = elementCopy;
    v16 = 2112;
    v17 = modelCopy;
    _os_log_impl(&dword_275819000, v12, OS_LOG_TYPE_DEFAULT, "matterhorn upsell with element %@ and objectmodel %@", &v14, 0x16u);
  }

  [(ICSMatterhornUpsellHook *)self _matterhornUpsell:completionCopy];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  v8 = LogSubsystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = modelCopy;
    _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "matterhorn upsell with objectModel %@", &v10, 0xCu);
  }

  [(ICSMatterhornUpsellHook *)self _matterhornUpsell:completionCopy];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_matterhornUpsell:(id)upsell
{
  upsellCopy = upsell;
  v5 = [objc_alloc(MEMORY[0x277D7F4E0]) initWithJourneyId:@"settingsHideMyEmail"];
  v6 = LogSubsystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICSMatterhornUpsellHook *)v5 _matterhornUpsell:v6];
  }

  if (v5)
  {
    v7 = [upsellCopy copy];
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

- (void)upgradeFlowManagerDidCancel:(id)cancel
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

- (void)upgradeFlowManagerDidComplete:(id)complete
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