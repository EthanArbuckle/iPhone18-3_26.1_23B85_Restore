@interface ICQUIiCloudPlusSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICQUIiCloudPlusSpecifierProvider)initWithAccountManager:(id)a3;
- (NSArray)specifiers;
- (id)_buildiCloudPlusFeatureSpecifiersFrom:(id)a3;
- (id)_buildiCloudPlusGroupTitleSpecifierFrom:(id)a3;
- (id)_buildiCloudPlusSpecifiers;
- (id)account;
@end

@implementation ICQUIiCloudPlusSpecifierProvider

- (ICQUIiCloudPlusSpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICQUIiCloudPlusSpecifierProvider;
  v6 = [(ICQUIiCloudPlusSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
  }

  return v7;
}

- (id)account
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = [(ICQUIiCloudPlusSpecifierProvider *)self _buildiCloudPlusSpecifiers];
    v5 = self->_specifiers;
    self->_specifiers = v4;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_buildiCloudPlusSpecifiers
{
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  v4 = [(ICQUIiCloudPlusSpecifierProvider *)self account];
  v5 = [v3 initWithAccount:v4];

  v6 = [v5 cachedStorageSummary];
  storageSummary = self->_storageSummary;
  self->_storageSummary = v6;

  v8 = [(ICQCloudStorageSummary *)self->_storageSummary subscriptionInfo];
  if ([v8 isiCloudPlusSubscriber])
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ICQUIiCloudPlusSpecifierProvider *)v9 _buildiCloudPlusSpecifiers];
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = [v8 specifiersInfo];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __62__ICQUIiCloudPlusSpecifierProvider__buildiCloudPlusSpecifiers__block_invoke;
    v17 = &unk_27A65AA78;
    v18 = self;
    v19 = v11;
    v9 = v11;
    [v12 enumerateObjectsUsingBlock:&v14];

    v10 = [v9 copy:v14];
  }

  return v10;
}

void __62__ICQUIiCloudPlusSpecifierProvider__buildiCloudPlusSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = [v4 isEqualToString:@"ICLOUD_PLUS_CELL"];

  if (v5)
  {
    v6 = v3;
    v7 = [*(a1 + 32) _buildiCloudPlusGroupTitleSpecifierFrom:v6];
    [*(a1 + 40) addObject:v7];
    v8 = [v6 featureList];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__ICQUIiCloudPlusSpecifierProvider__buildiCloudPlusSpecifiers__block_invoke_2;
    v11[3] = &unk_27A65AA50;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v6;
    v13 = v9;
    v10 = v6;
    [v8 enumerateObjectsUsingBlock:v11];
  }
}

void __62__ICQUIiCloudPlusSpecifierProvider__buildiCloudPlusSpecifiers__block_invoke_2(id *a1, uint64_t a2, uint64_t a3)
{
  v8 = [a1[4] _buildiCloudPlusFeatureSpecifiersFrom:a2];
  v5 = [a1[5] featureList];
  v6 = [v5 count] - 1;

  if (v6 == a3)
  {
    [v8 setProperty:MEMORY[0x277CBEC38] forKey:@"LAST_ITEM_KEY"];
    v7 = &unk_288479D08;
  }

  else
  {
    v7 = &unk_288479D18;
  }

  [v8 setProperty:v7 forKey:*MEMORY[0x277D40140]];
  [a1[6] addObject:v8];
}

- (id)_buildiCloudPlusGroupTitleSpecifierFrom:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = [v4 preferenceSpecifierNamed:@"ICLOUD_PLUS_FEATURE_HEADER_CELL" target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v6 setProperty:&unk_288479B70 forKey:*MEMORY[0x277D3FD78]];
  v7 = [v5 title];

  [v6 setProperty:v7 forKey:*MEMORY[0x277D40170]];

  return v6;
}

- (id)_buildiCloudPlusFeatureSpecifiersFrom:(id)a3
{
  v4 = MEMORY[0x277D3FAD8];
  v5 = a3;
  v6 = [v5 label];
  v7 = [v4 preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v8 = [v5 label];
  [v7 setProperty:v8 forKey:*MEMORY[0x277D40170]];

  [v7 setProperty:&unk_288479B70 forKey:*MEMORY[0x277D3FD78]];
  [v7 setTarget:v5];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  v9 = [v5 iconURL];

  v10 = [_ICQUIHelperFunctions scaledImageURL:v9];
  [v7 setProperty:v10 forKey:*MEMORY[0x277D40030]];

  return v7;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end