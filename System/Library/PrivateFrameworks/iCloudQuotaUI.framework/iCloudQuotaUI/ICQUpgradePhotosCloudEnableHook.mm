@interface ICQUpgradePhotosCloudEnableHook
- (BOOL)shouldMatchModel:(id)model;
- (RUIServerHookDelegate)delegate;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
@end

@implementation ICQUpgradePhotosCloudEnableHook

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  completionCopy = completion;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = [elementCopy name];
    v11 = 138412290;
    v12 = name;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Couldn't process element |%@|, It's not yet supported.", &v11, 0xCu);
  }

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (BOOL)shouldMatchModel:(id)model
{
  clientInfo = [model clientInfo];
  v4 = [clientInfo objectForKey:@"action"];
  v5 = [v4 isEqualToString:@"ENABLE_ICPL"];

  return v5;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end