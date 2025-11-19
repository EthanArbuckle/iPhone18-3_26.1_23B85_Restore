@interface ICQUIRecommendationsSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)_handleRecommendationsURL:(id)a3;
- (BOOL)handleURL:(id)a3;
- (ICQUIRecommendationsSpecifierProvider)initWithAccountManager:(id)a3;
- (NSArray)specifiers;
- (id)account;
- (void)_reloadSpecifiers;
- (void)setDelegate:(id)a3;
@end

@implementation ICQUIRecommendationsSpecifierProvider

- (ICQUIRecommendationsSpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICQUIRecommendationsSpecifierProvider;
  v6 = [(ICQUIRecommendationsSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
  }

  return v7;
}

- (void)setDelegate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQUIRecommendationsSpecifierProvider *)self account];
  if ([v5 aa_isAccountClass:*MEMORY[0x277CEC688]])
  {
    v6 = [(ICQUIRecommendationsSpecifierProvider *)self account];
    v7 = [v6 aa_isManagedAppleID];

    if (!v7)
    {
      objc_storeWeak(&self->_delegate, v4);
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ICQUIRecommendationsSpecifierProvider *)self account];
    v10 = [v9 aa_isPrimaryAccount];
    v11 = [(ICQUIRecommendationsSpecifierProvider *)self account];
    v12[0] = 67109376;
    v12[1] = v10;
    v13 = 1024;
    v14 = [v11 aa_isManagedAppleID];
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Recommendations for account type isPrimary: %d, isMAID: %d is not supported. bailing.", v12, 0xEu);
  }

LABEL_8:
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  v3 = [(ICQUIRecommendationsSpecifierProvider *)self account];
  if ([v3 aa_isAccountClass:*MEMORY[0x277CEC688]])
  {
    v4 = [(ICQUIRecommendationsSpecifierProvider *)self account];
    v5 = [v4 aa_isManagedAppleID];

    if (!v5)
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

- (BOOL)handleURL:(id)a3
{
  v4 = [(ICQUIRecommendationsSpecifierProvider *)self _handleRecommendationsURL:a3];
  if (v4)
  {
    [(ICQUIRecommendationsSpecifierProvider *)self _openRecommendationsViewController:self->_recommendationsSpecifier];
  }

  return v4;
}

- (BOOL)_handleRecommendationsURL:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Recource dictionary %@", &v11, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"path"];
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
  v3 = [(ICQUIRecommendationsSpecifierProvider *)self delegate];
  [v3 reloadSpecifiersForProvider:self oldSpecifiers:v4 animated:0];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end