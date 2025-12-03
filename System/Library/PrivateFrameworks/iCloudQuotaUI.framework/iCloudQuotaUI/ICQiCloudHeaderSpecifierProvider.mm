@interface ICQiCloudHeaderSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)handleURL:(id)l;
- (ICQiCloudHeaderSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (id)account;
- (void)_handleSkippedCFUWithResourceDictionary:(id)dictionary;
- (void)_launchServerUIFlowWithOffer:(id)offer;
- (void)setDelegate:(id)delegate;
- (void)setSpecifiers:(id)specifiers;
@end

@implementation ICQiCloudHeaderSpecifierProvider

- (ICQiCloudHeaderSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  managerCopy = manager;
  presenterCopy = presenter;
  v13.receiver = self;
  v13.super_class = ICQiCloudHeaderSpecifierProvider;
  v9 = [(ICQiCloudHeaderSpecifierProvider *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountManager, manager);
    objc_storeWeak(&v10->_listController, presenterCopy);
    account = [(ICQiCloudHeaderSpecifierProvider *)v10 account];
    [ICQJetAnalytics preloadWithAccount:account];
  }

  return v10;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (void)setSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  [(AAUISpecifierProvider *)self->_storageViolationTipSpecifierProvider setSpecifiers:0];
  specifiers = self->_specifiers;
  self->_specifiers = specifiersCopy;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  v4 = [ICQCloudStorageSpecifierProvider alloc];
  accountManager = self->_accountManager;
  WeakRetained = objc_loadWeakRetained(&self->_listController);
  v7 = [(ICQCloudStorageSpecifierProvider *)v4 initWithAccountManager:accountManager presenter:WeakRetained];
  storageGroupSpecifierProvider = self->_storageGroupSpecifierProvider;
  self->_storageGroupSpecifierProvider = v7;

  v9 = objc_loadWeakRetained(&self->_delegate);
  [(ICQCloudStorageSpecifierProvider *)self->_storageGroupSpecifierProvider setDelegate:v9];

  v10 = [ICQUITipSpecifierProvider alloc];
  v11 = self->_accountManager;
  v12 = objc_loadWeakRetained(&self->_listController);
  v13 = [(ICQUITipSpecifierProvider *)v10 initWithAccountManager:v11 presenter:v12 sectionAnchorIdentifier:*MEMORY[0x277D7F2D0] showUpwardPointingTips:1];
  storageViolationTipSpecifierProvider = self->_storageViolationTipSpecifierProvider;
  self->_storageViolationTipSpecifierProvider = v13;

  v15 = objc_loadWeakRetained(&self->_delegate);
  [(AAUISpecifierProvider *)self->_storageViolationTipSpecifierProvider setDelegate:v15];

  v16 = [ICQUITipSpecifierProvider alloc];
  v17 = self->_accountManager;
  v18 = objc_loadWeakRetained(&self->_listController);
  v19 = [(ICQUITipSpecifierProvider *)v16 initWithAccountManager:v17 presenter:v18 sectionAnchorIdentifier:*MEMORY[0x277D7F308] showUpwardPointingTips:0];
  recommendationsTipSpecifierProvider = self->_recommendationsTipSpecifierProvider;
  self->_recommendationsTipSpecifierProvider = v19;

  v21 = objc_loadWeakRetained(&self->_delegate);
  [(AAUISpecifierProvider *)self->_recommendationsTipSpecifierProvider setDelegate:v21];
}

- (NSArray)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  firstObject = [(NSArray *)self->_storageSpecifiers firstObject];

  if (!firstObject)
  {
    specifiers = [(ICQCloudStorageSpecifierProvider *)self->_storageGroupSpecifierProvider specifiers];
    storageSpecifiers = self->_storageSpecifiers;
    self->_storageSpecifiers = specifiers;
  }

  [v3 addObjectsFromArray:self->_storageSpecifiers];
  specifiers2 = [(AAUISpecifierProvider *)self->_storageViolationTipSpecifierProvider specifiers];
  v8 = [specifiers2 count];

  if (v8)
  {
    specifiers3 = [(AAUISpecifierProvider *)self->_storageViolationTipSpecifierProvider specifiers];
    [v3 addObjectsFromArray:specifiers3];
  }

  specifiers4 = [(AAUISpecifierProvider *)self->_recommendationsTipSpecifierProvider specifiers];
  v11 = [specifiers4 count];

  if (v11)
  {
    specifiers5 = [(AAUISpecifierProvider *)self->_recommendationsTipSpecifierProvider specifiers];
    [v3 addObjectsFromArray:specifiers5];
  }

  v13 = [v3 copy];

  return v13;
}

- (BOOL)handleURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [lCopy objectForKeyedSubscript:@"path"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [(ICQCloudStorageSpecifierProvider *)self->_storageGroupSpecifierProvider handleURL:lCopy])
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = lCopy;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "ICQiCloudHeaderSpecifierProvider Storage Specifier handled: %@", buf, 0xCu);
    }
  }

  else if ([v5 icqui_isReviewLargeFilesPath])
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[ICQiCloudHeaderSpecifierProvider handleURL:]";
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "%s: Received review large files url", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__ICQiCloudHeaderSpecifierProvider_handleURL___block_invoke;
    block[3] = &unk_27A65A820;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (![v5 icqui_isCFUSkipPath])
    {
      v9 = 0;
      goto LABEL_15;
    }

    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[ICQiCloudHeaderSpecifierProvider handleURL:]";
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "%s: Received CFU skip url from lockscreen notification", buf, 0xCu);
    }

    [(ICQiCloudHeaderSpecifierProvider *)self _handleSkippedCFUWithResourceDictionary:lCopy];
  }

  v9 = 1;
LABEL_15:

  return v9;
}

void __46__ICQiCloudHeaderSpecifierProvider_handleURL___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(ICQUIReviewLargeFilesFlowController);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained presentPreferredSizeWithViewController:v3 animated:1 completion:&__block_literal_global_24];
}

- (void)_handleSkippedCFUWithResourceDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x277D7F260]];
  v6 = [v5 isEqualToString:*MEMORY[0x277D7F3F8]];
  v7 = [v5 isEqualToString:*MEMORY[0x277D7F3F0]];
  mEMORY[0x277D7F390] = [MEMORY[0x277D7F390] sharedOfferManager];
  v9 = mEMORY[0x277D7F390];
  if (v6)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __76__ICQiCloudHeaderSpecifierProvider__handleSkippedCFUWithResourceDictionary___block_invoke;
    v14[3] = &unk_27A65CA48;
    v14[4] = self;
    [mEMORY[0x277D7F390] getPremiumOfferWithCompletion:v14];
  }

  else
  {
    if (!v7)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__ICQiCloudHeaderSpecifierProvider__handleSkippedCFUWithResourceDictionary___block_invoke_3;
      v10[3] = &unk_27A65C988;
      v11 = dictionaryCopy;
      selfCopy = self;
      [v9 getOfferWithCompletion:v10];

      goto LABEL_7;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__ICQiCloudHeaderSpecifierProvider__handleSkippedCFUWithResourceDictionary___block_invoke_2;
    v13[3] = &unk_27A65CA70;
    v13[4] = self;
    [mEMORY[0x277D7F390] getEventOfferWithOptions:0 completion:v13];
  }

LABEL_7:
}

void __76__ICQiCloudHeaderSpecifierProvider__handleSkippedCFUWithResourceDictionary___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 offerId];
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D7F270]];
  v9 = v8;
  v10 = *MEMORY[0x277D7F278];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "ICQiCloudHeaderSpecifierProvider sending updateOfferId:%@ buttonId:%@", &v14, 0x16u);
  }

  v13 = [MEMORY[0x277D7F390] sharedOfferManager];
  [v13 updateOfferId:v7 buttonId:v11 info:0 completion:0];

  [*(a1 + 40) _launchServerUIFlowWithOffer:v5];
}

- (void)_launchServerUIFlowWithOffer:(id)offer
{
  offerCopy = offer;
  followupSpecification = [offerCopy followupSpecification];
  noteActivateLink = [followupSpecification noteActivateLink];

  action = [noteActivateLink action];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ICQiCloudHeaderSpecifierProvider__launchServerUIFlowWithOffer___block_invoke;
  block[3] = &unk_27A65B810;
  v11 = offerCopy;
  v12 = action;
  v10 = noteActivateLink;
  v7 = offerCopy;
  v8 = noteActivateLink;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__ICQiCloudHeaderSpecifierProvider__launchServerUIFlowWithOffer___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hasServerUIAction];
  v3 = _ICQGetLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = _ICQStringForAction();
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Handling serverUI action %@ in link %@", &v12, 0x16u);
    }

    v7 = [[ICQUpgradeFlowManager alloc] initWithOffer:*(a1 + 40)];
    [(ICQUpgradeFlowManager *)v7 beginRemoteUpgradeFlowWithICQLink:*(a1 + 32)];
  }

  else
  {
    if (v4)
    {
      v8 = _ICQStringForAction();
      v9 = *(a1 + 32);
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "No special handling for action %@ in link %@, falling back to performAction.", &v12, 0x16u);
    }

    v10 = MEMORY[0x277D7F370];
    v11 = *(a1 + 48);
    v7 = [*(a1 + 32) parameters];
    [v10 performAction:v11 parameters:v7 options:0];
  }
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end