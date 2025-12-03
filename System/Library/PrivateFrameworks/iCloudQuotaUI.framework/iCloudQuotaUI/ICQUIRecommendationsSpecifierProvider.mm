@interface ICQUIRecommendationsSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_handleRecommendationsURL:(id)l;
- (BOOL)handleURL:(id)l;
- (ICQUIRecommendationsSpecifierProvider)initWithAccountManager:(id)manager;
- (NSArray)specifiers;
- (id)account;
- (void)_reloadSpecifiers;
- (void)setDelegate:(id)delegate;
@end

@implementation ICQUIRecommendationsSpecifierProvider

- (ICQUIRecommendationsSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ICQUIRecommendationsSpecifierProvider;
  v6 = [(ICQUIRecommendationsSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (void)setDelegate:(id)delegate
{
  v15 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  account = [(ICQUIRecommendationsSpecifierProvider *)self account];
  if ([account aa_isAccountClass:*MEMORY[0x277CEC688]])
  {
    account2 = [(ICQUIRecommendationsSpecifierProvider *)self account];
    aa_isManagedAppleID = [account2 aa_isManagedAppleID];

    if (!aa_isManagedAppleID)
    {
      objc_storeWeak(&self->_delegate, delegateCopy);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    account3 = [(ICQUIRecommendationsSpecifierProvider *)self account];
    aa_isPrimaryAccount = [account3 aa_isPrimaryAccount];
    account4 = [(ICQUIRecommendationsSpecifierProvider *)self account];
    v12[0] = 67109376;
    v12[1] = aa_isPrimaryAccount;
    v13 = 1024;
    aa_isManagedAppleID2 = [account4 aa_isManagedAppleID];
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Recommendations for account type isPrimary: %d, isMAID: %d is not supported. bailing.", v12, 0xEu);
  }

LABEL_8:
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  account = [(ICQUIRecommendationsSpecifierProvider *)self account];
  if ([account aa_isAccountClass:*MEMORY[0x277CEC688]])
  {
    account2 = [(ICQUIRecommendationsSpecifierProvider *)self account];
    aa_isManagedAppleID = [account2 aa_isManagedAppleID];

    if (!aa_isManagedAppleID)
    {
      return MEMORY[0x277CBEBF8];
    }
  }

  else
  {
  }

  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Recommendation specifier was requested for non-primary, maid accounts. Returning no specifiers.", v8, 2u);
  }

  return 0;
}

- (BOOL)handleURL:(id)l
{
  v4 = [(ICQUIRecommendationsSpecifierProvider *)self _handleRecommendationsURL:l];
  if (v4)
  {
    [(ICQUIRecommendationsSpecifierProvider *)self _openRecommendationsViewController:self->_recommendationsSpecifier];
  }

  return v4;
}

- (BOOL)_handleRecommendationsURL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = lCopy;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Recource dictionary %@", &v11, 0xCu);
  }

  v5 = [lCopy objectForKeyedSubscript:@"path"];
  v6 = [v5 containsString:@"RECOMMENDATIONS"];
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v11 = 138412290;
      v12 = v8;
      v9 = v8;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%@ Received a recommendations url.", &v11, 0xCu);
    }
  }

  return v6;
}

- (void)_reloadSpecifiers
{
  v4 = [(NSArray *)self->_specifiers copy];
  [(ICQUIRecommendationsSpecifierProvider *)self setSpecifiers:0];
  delegate = [(ICQUIRecommendationsSpecifierProvider *)self delegate];
  [delegate reloadSpecifiersForProvider:self oldSpecifiers:v4 animated:0];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end