@interface ICSCustomEmailPresenter
- (ICSCustomEmailPresenter)initWithAccountManager:(id)manager presenter:(id)presenter;
- (void)showCustomEmailDomainView;
@end

@implementation ICSCustomEmailPresenter

- (ICSCustomEmailPresenter)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v15.receiver = self;
  v15.super_class = ICSCustomEmailPresenter;
  v8 = [(ICSCustomEmailPresenter *)&v15 init];
  if (v8)
  {
    v9 = LogSubsystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICSCustomEmailPresenter initWithAccountManager:managerCopy presenter:v9];
    }

    v10 = [MEMORY[0x277CCA8D8] ics_loadBundle:@"MailAccountSettings.bundle" atPath:@"System/Library/PreferenceBundles/AccountSettings"];
    v11 = NSClassFromString(&cfstr_Byodspecifierp_0.isa);
    if ([(objc_class *)v11 conformsToProtocol:&unk_2884BC2B8])
    {
      v12 = [[v11 alloc] initWithAccountManager:managerCopy presenter:presenterCopy];
      customEmailSpecifierProvider = v8->_customEmailSpecifierProvider;
      v8->_customEmailSpecifierProvider = v12;
    }

    else
    {
      customEmailSpecifierProvider = LogSubsystem();
      if (os_log_type_enabled(customEmailSpecifierProvider, OS_LOG_TYPE_ERROR))
      {
        [ICSCustomEmailPresenter initWithAccountManager:v10 presenter:customEmailSpecifierProvider];
      }
    }
  }

  return v8;
}

- (void)showCustomEmailDomainView
{
  specifiers = [(AAUISpecifierProvider *)self->_customEmailSpecifierProvider specifiers];
  firstObject = [specifiers firstObject];

  if (firstObject)
  {
    [firstObject performControllerLoadAction];
  }

  else
  {
    v4 = LogSubsystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ICSCustomEmailPresenter *)v4 showCustomEmailDomainView];
    }
  }
}

- (void)initWithAccountManager:(void *)a1 presenter:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 accounts];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_275819000, a2, OS_LOG_TYPE_DEBUG, "AccountManager: %@, account: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithAccountManager:(uint64_t)a1 presenter:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  v2 = *MEMORY[0x277D85DE8];
}

@end