@interface ICQUIManageStorageTipSpecifierProvider
- (ICQCloudStorageSummary)storageSummary;
- (ICQUIManageStorageTipSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4 summary:(id)a5;
- (NSArray)specifiers;
- (id)account;
- (id)manageStorageSpecifiersForSummary:(id)a3;
- (void)_fetchStorageSummaryAndRefreshSpecifiers;
- (void)_refreshTipsWithSummary:(id)a3;
- (void)setSpecifiers:(id)a3;
@end

@implementation ICQUIManageStorageTipSpecifierProvider

- (ICQUIManageStorageTipSpecifierProvider)initWithAccountManager:(id)a3 presenter:(id)a4 summary:(id)a5
{
  v8 = a5;
  v9 = *MEMORY[0x277D7F2D0];
  v14.receiver = self;
  v14.super_class = ICQUIManageStorageTipSpecifierProvider;
  v10 = [(ICQUITipSpecifierProvider *)&v14 initWithAccountManager:a3 presenter:a4 sectionAnchorIdentifier:v9 showUpwardPointingTips:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_storageSummary, v8);
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v11 selector:sel__fetchStorageSummaryAndRefreshSpecifiers name:@"QuotaDidChange" object:0];
  }

  return v11;
}

- (id)account
{
  v2 = [(ICQUIManageStorageTipSpecifierProvider *)self valueForKey:@"_accountManager"];
  v3 = [v2 accounts];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v4;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = [(ICQUIManageStorageTipSpecifierProvider *)self storageSummary];
    v5 = [(ICQUIManageStorageTipSpecifierProvider *)self manageStorageSpecifiersForSummary:v4];
    v6 = self->_specifiers;
    self->_specifiers = v5;

    specifiers = self->_specifiers;
  }

  v7 = specifiers;

  return v7;
}

- (id)manageStorageSpecifiersForSummary:(id)a3
{
  v4 = a3;
  v5 = [v4 manageStoragePage];
  v6 = [v5 tips];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [ICQUIManageStorageTipViewModel alloc];
    v9 = [v4 manageStoragePage];
    v10 = [v9 tips];
    v11 = [v10 firstObject];
    v12 = [(ICQUIManageStorageTipViewModel *)v8 initWithTipInfo:v11];
    [(ICQUITipSpecifierProvider *)self setViewModel:v12];

    v13 = [(ICQUITipSpecifierProvider *)self _tipSpecifiers];
    v14 = [v13 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setSpecifiers:(id)a3
{
  v7 = a3;
  if (v7)
  {
    v5 = [(NSArray *)self->_specifiers copy];
    objc_storeStrong(&self->_specifiers, a3);
    v6 = [(ICQUITipSpecifierProvider *)self delegate];
    [v6 reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:1];
  }

  else
  {
    [(ICQUIManageStorageTipSpecifierProvider *)self _fetchStorageSummaryAndRefreshSpecifiers];
  }
}

- (void)_refreshTipsWithSummary:(id)a3
{
  [(ICQUIManageStorageTipSpecifierProvider *)self setStorageSummary:a3];
  v6 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  v5 = [(ICQUITipSpecifierProvider *)self delegate];
  [v5 reloadSpecifiersForProvider:self oldSpecifiers:v6 animated:1];
}

- (void)_fetchStorageSummaryAndRefreshSpecifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  v4 = [(ICQUIManageStorageTipSpecifierProvider *)self account];
  v12 = [v3 initWithAccount:v4];

  v5 = v8[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__ICQUIManageStorageTipSpecifierProvider__fetchStorageSummaryAndRefreshSpecifiers__block_invoke;
  v6[3] = &unk_27A65AAC8;
  v6[4] = self;
  v6[5] = &v7;
  [v5 fetchStorageSummaryWithCompletion:v6];
  _Block_object_dispose(&v7, 8);
}

void __82__ICQUIManageStorageTipSpecifierProvider__fetchStorageSummaryAndRefreshSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__ICQUIManageStorageTipSpecifierProvider__fetchStorageSummaryAndRefreshSpecifiers__block_invoke_2;
  block[3] = &unk_27A65AAA0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__ICQUIManageStorageTipSpecifierProvider__fetchStorageSummaryAndRefreshSpecifiers__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _refreshTipsWithSummary:?];
  }

  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

- (ICQCloudStorageSummary)storageSummary
{
  WeakRetained = objc_loadWeakRetained(&self->_storageSummary);

  return WeakRetained;
}

@end