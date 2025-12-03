@interface ICQUILaunchURLHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)_launchWithURLString:(id)string completion:(id)completion;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
@end

@implementation ICQUILaunchURLHook

- (BOOL)shouldMatchElement:(id)element
{
  name = [element name];
  v4 = [name isEqualToString:@"LAUNCH_URL"];

  return v4;
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46250]];
  v5 = [v4 isEqualToString:@"LAUNCH_URL"];

  return v5;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  completionCopy = completion;
  attributesCopy = attributes;
  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    name = [elementCopy name];
    v15 = 138412290;
    v16 = name;
    _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "Processing iCloudSync RUI hook with element %@", &v15, 0xCu);
  }

  v14 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277D46240]];

  [(ICQUILaunchURLHook *)self _launchWithURLString:v14 completion:completionCopy];
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = modelCopy;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Processing iCloudSync RUI hook with objectModel %@", &v11, 0xCu);
  }

  clientInfo = [modelCopy clientInfo];
  v10 = [clientInfo objectForKeyedSubscript:*MEMORY[0x277D46240]];
  [(ICQUILaunchURLHook *)self _launchWithURLString:v10 completion:completionCopy];
}

- (void)_launchWithURLString:(id)string completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  completionCopy = completion;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = stringCopy;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Recieved URL to launch: %@, dismissing object models", buf, 0xCu);
  }

  delegate = [(ICQUILaunchURLHook *)self delegate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__ICQUILaunchURLHook__launchWithURLString_completion___block_invoke;
  v11[3] = &unk_27A65AD40;
  v12 = completionCopy;
  v10 = completionCopy;
  [delegate dismissObjectModelsAnimated:1 completion:v11];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end