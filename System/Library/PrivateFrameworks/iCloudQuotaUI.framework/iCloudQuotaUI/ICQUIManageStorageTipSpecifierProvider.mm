@interface ICQUIManageStorageTipSpecifierProvider
- (ICQCloudStorageSummary)storageSummary;
- (ICQUIManageStorageTipSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter summary:(id)summary;
- (NSArray)specifiers;
- (id)account;
- (id)manageStorageSpecifiersForSummary:(id)summary;
- (void)_fetchStorageSummaryAndRefreshSpecifiers;
- (void)_refreshTipsWithSummary:(id)summary;
- (void)setSpecifiers:(id)specifiers;
@end

@implementation ICQUIManageStorageTipSpecifierProvider

- (ICQUIManageStorageTipSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter summary:(id)summary
{
  summaryCopy = summary;
  v9 = *MEMORY[0x277D7F2D0];
  v14.receiver = self;
  v14.super_class = ICQUIManageStorageTipSpecifierProvider;
  v10 = [(ICQUITipSpecifierProvider *)&v14 initWithAccountManager:manager presenter:presenter sectionAnchorIdentifier:v9 showUpwardPointingTips:0];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_storageSummary, summaryCopy);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__fetchStorageSummaryAndRefreshSpecifiers name:@"QuotaDidChange" object:0];
  }

  return v11;
}

- (id)account
{
  v2 = [(ICQUIManageStorageTipSpecifierProvider *)self valueForKey:@"_accountManager"];
  accounts = [v2 accounts];
  v4 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v4;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    storageSummary = [(ICQUIManageStorageTipSpecifierProvider *)self storageSummary];
    v5 = [(ICQUIManageStorageTipSpecifierProvider *)self manageStorageSpecifiersForSummary:storageSummary];
    v6 = self->_specifiers;
    self->_specifiers = v5;

    specifiers = self->_specifiers;
  }

  v7 = specifiers;

  return v7;
}

- (id)manageStorageSpecifiersForSummary:(id)summary
{
  summaryCopy = summary;
  manageStoragePage = [summaryCopy manageStoragePage];
  tips = [manageStoragePage tips];
  v7 = [tips count];

  if (v7)
  {
    v8 = [ICQUIManageStorageTipViewModel alloc];
    manageStoragePage2 = [summaryCopy manageStoragePage];
    tips2 = [manageStoragePage2 tips];
    firstObject = [tips2 firstObject];
    v12 = [(ICQUIManageStorageTipViewModel *)v8 initWithTipInfo:firstObject];
    [(ICQUITipSpecifierProvider *)self setViewModel:v12];

    _tipSpecifiers = [(ICQUITipSpecifierProvider *)self _tipSpecifiers];
    v14 = [_tipSpecifiers copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if (specifiersCopy)
  {
    v5 = [(NSArray *)self->_specifiers copy];
    objc_storeStrong(&self->_specifiers, specifiers);
    delegate = [(ICQUITipSpecifierProvider *)self delegate];
    [delegate reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:1];
  }

  else
  {
    [(ICQUIManageStorageTipSpecifierProvider *)self _fetchStorageSummaryAndRefreshSpecifiers];
  }
}

- (void)_refreshTipsWithSummary:(id)summary
{
  [(ICQUIManageStorageTipSpecifierProvider *)self setStorageSummary:summary];
  v6 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  delegate = [(ICQUITipSpecifierProvider *)self delegate];
  [delegate reloadSpecifiersForProvider:self oldSpecifiers:v6 animated:1];
}

- (void)_fetchStorageSummaryAndRefreshSpecifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  account = [(ICQUIManageStorageTipSpecifierProvider *)self account];
  v12 = [v3 initWithAccount:account];

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