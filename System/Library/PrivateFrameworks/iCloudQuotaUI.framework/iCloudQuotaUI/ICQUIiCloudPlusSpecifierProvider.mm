@interface ICQUIiCloudPlusSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICQUIiCloudPlusSpecifierProvider)initWithAccountManager:(id)manager;
- (NSArray)specifiers;
- (id)_buildiCloudPlusFeatureSpecifiersFrom:(id)from;
- (id)_buildiCloudPlusGroupTitleSpecifierFrom:(id)from;
- (id)_buildiCloudPlusSpecifiers;
- (id)account;
@end

@implementation ICQUIiCloudPlusSpecifierProvider

- (ICQUIiCloudPlusSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = ICQUIiCloudPlusSpecifierProvider;
  v6 = [(ICQUIiCloudPlusSpecifierProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    _buildiCloudPlusSpecifiers = [(ICQUIiCloudPlusSpecifierProvider *)self _buildiCloudPlusSpecifiers];
    v5 = self->_specifiers;
    self->_specifiers = _buildiCloudPlusSpecifiers;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_buildiCloudPlusSpecifiers
{
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  account = [(ICQUIiCloudPlusSpecifierProvider *)self account];
  v5 = [v3 initWithAccount:account];

  cachedStorageSummary = [v5 cachedStorageSummary];
  storageSummary = self->_storageSummary;
  self->_storageSummary = cachedStorageSummary;

  subscriptionInfo = [(ICQCloudStorageSummary *)self->_storageSummary subscriptionInfo];
  if ([subscriptionInfo isiCloudPlusSubscriber])
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
    specifiersInfo = [subscriptionInfo specifiersInfo];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __62__ICQUIiCloudPlusSpecifierProvider__buildiCloudPlusSpecifiers__block_invoke;
    v17 = &unk_27A65AA78;
    selfCopy = self;
    v19 = v11;
    v9 = v11;
    [specifiersInfo enumerateObjectsUsingBlock:&v14];

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

- (id)_buildiCloudPlusGroupTitleSpecifierFrom:(id)from
{
  v4 = MEMORY[0x277D3FAD8];
  fromCopy = from;
  v6 = [v4 preferenceSpecifierNamed:@"ICLOUD_PLUS_FEATURE_HEADER_CELL" target:self set:0 get:0 detail:0 cell:4 edit:0];
  [v6 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  [v6 setProperty:&unk_288479B70 forKey:*MEMORY[0x277D3FD78]];
  title = [fromCopy title];

  [v6 setProperty:title forKey:*MEMORY[0x277D40170]];

  return v6;
}

- (id)_buildiCloudPlusFeatureSpecifiersFrom:(id)from
{
  v4 = MEMORY[0x277D3FAD8];
  fromCopy = from;
  label = [fromCopy label];
  v7 = [v4 preferenceSpecifierNamed:label target:self set:0 get:0 detail:0 cell:-1 edit:0];

  [v7 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  label2 = [fromCopy label];
  [v7 setProperty:label2 forKey:*MEMORY[0x277D40170]];

  [v7 setProperty:&unk_288479B70 forKey:*MEMORY[0x277D3FD78]];
  [v7 setTarget:fromCopy];
  [v7 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D40020]];
  iconURL = [fromCopy iconURL];

  v10 = [_ICQUIHelperFunctions scaledImageURL:iconURL];
  [v7 setProperty:v10 forKey:*MEMORY[0x277D40030]];

  return v7;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end