@interface ICQOfferManager
+ (BOOL)_legacyBuddyOfferMightNeedPresenting;
+ (id)defaultBundleIdentifier;
+ (id)sharedOfferManager;
- (BOOL)_offerTypeMatchesRequestOptions:(id)options offer:(id)offer;
- (BOOL)_shouldUseOffer:(id)offer forBundleIdentifier:(id)identifier;
- (BOOL)didDismissRecommendationForBundleId:(id)id;
- (BOOL)fetchOfferIfNeeded;
- (BOOL)isBuddyOfferEnabled;
- (BOOL)isSimulatedDeviceStorageAlmostFull;
- (BOOL)shouldPresentAppLaunchLink:(id)link;
- (ICQOfferManager)init;
- (id)_currentOfferForBundleIdentifier:(id)identifier options:(id)options;
- (id)_premiumOptions;
- (id)_refreshOfferWithDaemonOfferDict:(id)dict offerRequestType:(int64_t)type bundleId:(id)id;
- (id)cachedOfferForType:(int64_t)type;
- (id)currentDefaultOffer;
- (id)currentOffer;
- (id)currentPremiumOffer;
- (id)currentPremiumOfferForBundleIdentifier:(id)identifier;
- (id)simulatedPhotosLibrarySize;
- (void)_firedPremiumOfferInvalidationTimer:(id)timer;
- (void)_firedRegularOfferInvalidationTimer:(id)timer;
- (void)_funnelCloudServerOfferForAccount:(id)account options:(id)options completion:(id)completion;
- (void)_getOfferForAccount:(id)account bundleIdentifier:(id)identifier options:(id)options offerContext:(id)context completion:(id)completion;
- (void)_getOfferForBundleIdentifier:(id)identifier options:(id)options offerContext:(id)context completion:(id)completion;
- (void)_handlePushReceivedDarwinNotificationRequestType:(int64_t)type;
- (void)_refetchDefaultOffer;
- (void)_refetchPremiumOffer;
- (void)_refetchRegularOffer;
- (void)_registerForDarwinNotification:(id)notification;
- (void)_setupTimerForInvalidationDate:(id)date forType:(int64_t)type;
- (void)_setupTimerForPremiumOfferInvalidationDate:(id)date;
- (void)_setupTimerForRegularOfferInvalidationDate:(id)date;
- (void)_teardownInvalidationTimerForRequestType:(int64_t)type;
- (void)_teardownPremiumOfferInvalidationTimer;
- (void)_teardownRegularOfferInvalidationTimer;
- (void)_unregisterForAllDarwinNotifications;
- (void)_unregisterForDarwinNotification:(id)notification;
- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)identifier;
- (void)clearFollowups;
- (void)dealloc;
- (void)dismissRecommendationForBundleId:(id)id;
- (void)forcePostFollowup;
- (void)getDefaultOfferWithCompletion:(id)completion;
- (void)getEventOfferWithOptions:(id)options completion:(id)completion;
- (void)getOfferForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getOfferForBundleIdentifier:(id)identifier offerContext:(id)context completion:(id)completion;
- (void)getOfferWithCompletion:(id)completion;
- (void)getPremiumOfferAndOpportunityBubbleForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getPremiumOfferAndOpportunityBubbleWithCompletion:(id)completion;
- (void)getPremiumOfferForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)getPremiumOfferForBundleIdentifier:(id)identifier offerContext:(id)context completion:(id)completion;
- (void)getPremiumOfferWithCompletion:(id)completion;
- (void)postBackupRestoredOffer:(id)offer;
- (void)postBuddyOfferType:(id)type;
- (void)postOfferType:(id)type;
- (void)setCachedOfferForType:(int64_t)type daemonOffer:(id)offer bundleIdentifier:(id)identifier;
- (void)setSimulatedPhotosLibrarySize:(id)size;
- (void)teardownCachedBuddyOffer;
- (void)teardownCachedEventOffer;
- (void)teardownCachedOffer;
- (void)teardownCachedOffers;
- (void)teardownCachedPremiumOffer;
- (void)updateOfferId:(id)id buttonId:(id)buttonId info:(id)info completion:(id)completion;
@end

@implementation ICQOfferManager

+ (id)sharedOfferManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ICQOfferManager_sharedOfferManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedOfferManager_onceToken != -1)
  {
    dispatch_once(&sharedOfferManager_onceToken, block);
  }

  v2 = sharedOfferManager_sOfferManager;

  return v2;
}

uint64_t __37__ICQOfferManager_sharedOfferManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedOfferManager_sOfferManager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ICQOfferManager)init
{
  v7.receiver = self;
  v7.super_class = ICQOfferManager;
  v2 = [(ICQOfferManager *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICQUnfairLock);
    cachedOffersLock = v2->_cachedOffersLock;
    v2->_cachedOffersLock = v3;

    defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  }

  return v2;
}

+ (id)defaultBundleIdentifier
{
  if (defaultBundleIdentifier_onceToken != -1)
  {
    +[ICQOfferManager defaultBundleIdentifier];
  }

  v3 = defaultBundleIdentifier_sDefaultBundleIdentifier;

  return v3;
}

void __42__ICQOfferManager_defaultBundleIdentifier__block_invoke()
{
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v3 bundleIdentifier];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = &stru_288431E38;
  }

  objc_storeStrong(&defaultBundleIdentifier_sDefaultBundleIdentifier, v2);
}

- (id)_premiumOptions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"isPremiumOffer";
  v6[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)dealloc
{
  [(ICQOfferManager *)self _teardownRegularOfferInvalidationTimer];
  [(ICQOfferManager *)self _teardownPremiumOfferInvalidationTimer];
  [(ICQOfferManager *)self _unregisterForAllDarwinNotifications];
  v3.receiver = self;
  v3.super_class = ICQOfferManager;
  [(ICQOfferManager *)&v3 dealloc];
}

- (id)currentOffer
{
  defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  v4 = [(ICQOfferManager *)self currentOfferForBundleIdentifier:defaultBundleIdentifier];

  return v4;
}

- (id)currentPremiumOffer
{
  defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  v4 = [(ICQOfferManager *)self currentPremiumOfferForBundleIdentifier:defaultBundleIdentifier];

  return v4;
}

- (void)getDefaultOfferWithCompletion:(id)completion
{
  v9[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  v8 = @"isDefaultOffer";
  v9[0] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(ICQOfferManager *)self _getOfferForBundleIdentifier:defaultBundleIdentifier options:v6 offerContext:0 completion:completionCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)currentDefaultOffer
{
  v9[1] = *MEMORY[0x277D85DE8];
  defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  v8 = @"isDefaultOffer";
  v9[0] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [(ICQOfferManager *)self _currentOfferForBundleIdentifier:defaultBundleIdentifier options:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)currentPremiumOfferForBundleIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  _premiumOptions = [(ICQOfferManager *)self _premiumOptions];
  v6 = [(ICQOfferManager *)self _currentOfferForBundleIdentifier:identifierCopy options:_premiumOptions];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v8 = _ICQGetLogSystem();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v9)
      {
        v10 = [objc_opt_class() description];
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = identifierCopy;
        _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Received incorrect class %@ when requesting currentPremiumOffer for bundle ID %@", &v13, 0x16u);
      }
    }

    else if (v9)
    {
      v13 = 138412290;
      v14 = identifierCopy;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Offer received was nil when requesting currentPremiumOffer for bundle ID %@", &v13, 0xCu);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)getOfferWithCompletion:(id)completion
{
  completionCopy = completion;
  defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  [(ICQOfferManager *)self getOfferForBundleIdentifier:defaultBundleIdentifier completion:completionCopy];
}

- (void)getPremiumOfferWithCompletion:(id)completion
{
  completionCopy = completion;
  defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  [(ICQOfferManager *)self getPremiumOfferForBundleIdentifier:defaultBundleIdentifier completion:completionCopy];
}

- (void)getOfferForBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__ICQOfferManager_getOfferForBundleIdentifier_completion___block_invoke;
  v8[3] = &unk_27A651B40;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ICQOfferManager *)self _getOfferForBundleIdentifier:identifier options:0 offerContext:0 completion:v8];
}

- (void)getPremiumOfferForBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  _premiumOptions = [(ICQOfferManager *)self _premiumOptions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__ICQOfferManager_getPremiumOfferForBundleIdentifier_completion___block_invoke;
  v10[3] = &unk_27A651B40;
  v11 = completionCopy;
  v9 = completionCopy;
  [(ICQOfferManager *)self _getOfferForBundleIdentifier:identifierCopy options:_premiumOptions offerContext:0 completion:v10];
}

void __65__ICQOfferManager_getPremiumOfferForBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, v5);
}

- (void)getPremiumOfferAndOpportunityBubbleWithCompletion:(id)completion
{
  completionCopy = completion;
  defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  [(ICQOfferManager *)self getPremiumOfferAndOpportunityBubbleForBundleIdentifier:defaultBundleIdentifier completion:completionCopy];
}

- (void)getPremiumOfferAndOpportunityBubbleForBundleIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Requested a premium offer with an opportunity bubble.", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__ICQOfferManager_getPremiumOfferAndOpportunityBubbleForBundleIdentifier_completion___block_invoke;
  v10[3] = &unk_27A651B90;
  v11 = completionCopy;
  v9 = completionCopy;
  [(ICQOfferManager *)self getPremiumOfferForBundleIdentifier:identifierCopy completion:v10];
}

void __85__ICQOfferManager_getPremiumOfferAndOpportunityBubbleForBundleIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__ICQOfferManager_getPremiumOfferAndOpportunityBubbleForBundleIdentifier_completion___block_invoke_2;
  v9[3] = &unk_27A651B68;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  [v8 shouldShowOpportunityBubbleWithCompletion:v9];
}

void __85__ICQOfferManager_getPremiumOfferAndOpportunityBubbleForBundleIdentifier_completion___block_invoke_2(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) opportunityBubble];
  }

  else
  {
    v3 = 0;
  }

  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Returning premium offer %@, opportunity bubble %@, error %@", &v10, 0x20u);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

- (void)postBackupRestoredOffer:(id)offer
{
  v15 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v14 = "[ICQOfferManager postBackupRestoredOffer:]";
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v11 = @"backupRestoreComplete";
  v12 = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__ICQOfferManager_postBackupRestoredOffer___block_invoke;
  v9[3] = &unk_27A651B40;
  v10 = offerCopy;
  v7 = offerCopy;
  [(ICQOfferManager *)self getEventOfferWithOptions:v6 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __43__ICQOfferManager_postBackupRestoredOffer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      v9 = "Backup restore offer found: %@";
      v10 = v8;
      v11 = 12;
LABEL_8:
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, v9, &v19, v11);
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__ICQOfferManager_postBackupRestoredOffer___block_invoke_cold_1(v6, v8, v12, v13, v14, v15, v16, v17);
    }

    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v9 = "Reverting to original backup restore notification";
      v10 = v8;
      v11 = 2;
      goto LABEL_8;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5 != 0);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)getOfferForBundleIdentifier:(id)identifier offerContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__ICQOfferManager_getOfferForBundleIdentifier_offerContext_completion___block_invoke;
  v10[3] = &unk_27A651B40;
  v11 = completionCopy;
  v9 = completionCopy;
  [(ICQOfferManager *)self _getOfferForBundleIdentifier:identifier options:0 offerContext:context completion:v10];
}

- (void)getPremiumOfferForBundleIdentifier:(id)identifier offerContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  identifierCopy = identifier;
  _premiumOptions = [(ICQOfferManager *)self _premiumOptions];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__ICQOfferManager_getPremiumOfferForBundleIdentifier_offerContext_completion___block_invoke;
  v13[3] = &unk_27A651B40;
  v14 = completionCopy;
  v12 = completionCopy;
  [(ICQOfferManager *)self _getOfferForBundleIdentifier:identifierCopy options:_premiumOptions offerContext:contextCopy completion:v13];
}

void __78__ICQOfferManager_getPremiumOfferForBundleIdentifier_offerContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = *(a1 + 32);
  if (isKindOfClass)
  {
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, v5);
}

- (void)appLaunchLinkDidPresentForBundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [MEMORY[0x277CBEAA8] now];
  [v6 timeIntervalSince1970];
  [standardUserDefaults setDouble:@"iCloudAppLaunchLinkPresentationDate" forKey:?];

  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICQOfferManager *)v7 appLaunchLinkDidPresentForBundleIdentifier:v8, v9, v10, v11, v12, v13, v14];
  }

  cachedOffersLock = [(ICQOfferManager *)self cachedOffersLock];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __62__ICQOfferManager_appLaunchLinkDidPresentForBundleIdentifier___block_invoke;
  v19[3] = &unk_27A651BB8;
  v19[4] = self;
  [cachedOffersLock synchronized:v19];

  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = identifierCopy;
    _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "Sending AppLaunch event to ind with bundleId %@", buf, 0xCu);
  }

  v17 = objc_alloc_init(getINDaemonConnectionClass());
  [v17 appLaunchLinkDidPresentForBundleIdentifier:identifierCopy completion:&__block_literal_global_30];

  v18 = *MEMORY[0x277D85DE8];
}

void __62__ICQOfferManager_appLaunchLinkDidPresentForBundleIdentifier___block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _ICQGetLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __62__ICQOfferManager_appLaunchLinkDidPresentForBundleIdentifier___block_invoke_27_cold_1(v2, v4);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __62__ICQOfferManager_appLaunchLinkDidPresentForBundleIdentifier___block_invoke_27_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
  }
}

- (BOOL)shouldPresentAppLaunchLink:(id)link
{
  linkCopy = link;
  if (!linkCopy)
  {
    goto LABEL_3;
  }

  v4 = objc_alloc(MEMORY[0x277CBEAA8]);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"iCloudAppLaunchLinkPresentationDate"];
  v6 = [v4 initWithTimeIntervalSince1970:?];

  minDisplayIntervalDays = [linkCopy minDisplayIntervalDays];
  integerValue = [minDisplayIntervalDays integerValue];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [currentCalendar components:16 fromDate:v6 toDate:v10 options:0];
  v12 = [v11 day];

  if (integerValue <= v12)
  {
    v13 = 1;
  }

  else
  {
LABEL_3:
    v13 = 0;
  }

  return v13;
}

- (void)getEventOfferWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  defaultBundleIdentifier = [objc_opt_class() defaultBundleIdentifier];
  if (optionsCopy)
  {
    v9 = [optionsCopy mutableCopy];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v10 = v9;
  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isEventOffer"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__ICQOfferManager_getEventOfferWithOptions_completion___block_invoke;
  aBlock[3] = &unk_27A651B40;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = _Block_copy(aBlock);
  v13 = [v10 copy];
  [(ICQOfferManager *)self _getOfferForBundleIdentifier:defaultBundleIdentifier options:v13 offerContext:0 completion:v12];
}

void __55__ICQOfferManager_getEventOfferWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 debugDescription];
    v20 = 138412546;
    v21 = v8;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "offer: %@ and error: %@", &v20, 0x16u);
  }

  if (v5)
  {
    v9 = [v5 offerId];
    v10 = [v9 isEqualToString:&stru_288431E38];

    if (v10)
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __55__ICQOfferManager_getEventOfferWithOptions_completion___block_invoke_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  (*(*(a1 + 32) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_currentOfferForBundleIdentifier:(id)identifier options:(id)options
{
  identifierCopy = identifier;
  optionsCopy = options;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v8 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__ICQOfferManager__currentOfferForBundleIdentifier_options___block_invoke;
  v12[3] = &unk_27A651C00;
  v14 = &v15;
  v9 = v8;
  v13 = v9;
  [(ICQOfferManager *)self _getOfferForBundleIdentifier:identifierCopy options:optionsCopy offerContext:0 completion:v12];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

void __60__ICQOfferManager__currentOfferForBundleIdentifier_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Failed to fetch offer. Error: %@", &v10, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_funnelCloudServerOfferForAccount:(id)account options:(id)options completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  accountCopy = account;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = optionsCopy;
    _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Getting offer from ind with options %@", &v13, 0xCu);
  }

  v11 = objc_alloc_init(getINDaemonConnectionClass());
  [v11 iCloudServerOfferForAccount:accountCopy options:optionsCopy completion:completionCopy];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldUseOffer:(id)offer forBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [offer offerType] != 1 || !objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.mobileslideshow") || +[ICQDaemonOfferConditions isPhotosCloudEnabled](ICQDaemonOfferConditions, "isPhotosCloudEnabled");

  return v6;
}

- (void)_getOfferForBundleIdentifier:(id)identifier options:(id)options offerContext:(id)context completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  completionCopy = completion;
  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v22 = "[ICQOfferManager _getOfferForBundleIdentifier:options:offerContext:completion:]";
    _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  if (aa_primaryAppleAccount)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__ICQOfferManager__getOfferForBundleIdentifier_options_offerContext_completion___block_invoke;
    v18[3] = &unk_27A651C28;
    v19 = defaultStore;
    v20 = completionCopy;
    [(ICQOfferManager *)self _getOfferForAccount:aa_primaryAppleAccount bundleIdentifier:identifierCopy options:optionsCopy offerContext:contextCopy completion:v18];
  }

  else
  {
    -[ICQOfferManager removeCachedOfferForType:](self, "removeCachedOfferForType:", +[_ICQHelperFunctions _getOfferRequestTypeFromOptions:bundleId:isBuddy:](_ICQHelperFunctions, "_getOfferRequestTypeFromOptions:bundleId:isBuddy:", optionsCopy, identifierCopy, [identifierCopy isEqualToString:@"com.apple.purplebuddy"]));
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_offerTypeMatchesRequestOptions:(id)options offer:(id)offer
{
  if (offer)
  {
    offerCopy = offer;
    v6 = [_ICQHelperFunctions _getOfferRequestTypeFromOptions:options bundleId:0 isBuddy:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v8 = (v6 != 2) ^ isKindOfClass;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

- (void)_getOfferForAccount:(id)account bundleIdentifier:(id)identifier options:(id)options offerContext:(id)context completion:(id)completion
{
  v54 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  identifierCopy = identifier;
  optionsCopy = options;
  contextCopy = context;
  completionCopy = completion;
  v17 = _ICQSignpostLogSystem();
  v18 = objc_opt_new();
  v19 = _ICQSignpostCreateWithObject(v17, v18);
  v21 = v20;

  v22 = _ICQSignpostLogSystem();
  v23 = v22;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 138412290;
    v53 = optionsCopy;
    _os_signpost_emit_with_name_impl(&dword_275572000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v19, "GetOffer", " enableTelemetry=YES options: %@", buf, 0xCu);
  }

  v41 = accountCopy;

  v24 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ICQOfferManager _getOfferForAccount:v19 bundleIdentifier:optionsCopy options:v24 offerContext:? completion:?];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__ICQOfferManager__getOfferForAccount_bundleIdentifier_options_offerContext_completion___block_invoke;
  aBlock[3] = &unk_27A651C78;
  v50 = v19;
  v51 = v21;
  aBlock[4] = self;
  v25 = identifierCopy;
  v47 = v25;
  v26 = optionsCopy;
  v48 = v26;
  v27 = completionCopy;
  v49 = v27;
  v28 = _Block_copy(aBlock);
  v29 = [v25 isEqualToString:@"com.apple.purplebuddy"];
  v30 = [_ICQHelperFunctions _getOfferRequestTypeFromOptions:v26 bundleId:v25 isBuddy:v29];
  if ((v29 & 1) == 0)
  {
    v31 = [(ICQOfferManager *)self cachedOfferForType:v30];
    v32 = v31;
    if (v31 && ([v31 isExpired] & 1) == 0)
    {
      bundleIdentifier = [v32 bundleIdentifier];
      if ([bundleIdentifier isEqualToString:v25])
      {
        accountAltDSID = [v32 accountAltDSID];
        aa_altDSID = [accountCopy aa_altDSID];
        v39 = [accountAltDSID isEqualToString:aa_altDSID];

        if (v39)
        {
          v34 = _ICQGetLogSystem();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:v30];
            *buf = 138412290;
            v53 = v35;
            _os_log_impl(&dword_275572000, v34, OS_LOG_TYPE_DEFAULT, "Returning cached offer %@", buf, 0xCu);
          }

          v28[2](v28, v32, 0);
          accountCopy = v41;
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    [(ICQOfferManager *)self removeCachedOfferForType:v30];
  }

  if (v26)
  {
    v36 = [v26 mutableCopy];
  }

  else
  {
    v36 = objc_opt_new();
  }

  v32 = v36;
  if (v25)
  {
    [v36 setObject:v25 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (contextCopy)
  {
    [v32 setObject:contextCopy forKeyedSubscript:@"contextDictionary"];
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __88__ICQOfferManager__getOfferForAccount_bundleIdentifier_options_offerContext_completion___block_invoke_50;
  v42[3] = &unk_27A651CA0;
  v42[4] = self;
  v45 = v30;
  v43 = v25;
  v44 = v28;
  [(ICQOfferManager *)self _funnelCloudServerOfferForAccount:accountCopy options:v32 completion:v42];

LABEL_24:
  v37 = *MEMORY[0x277D85DE8];
}

void __88__ICQOfferManager__getOfferForAccount_bundleIdentifier_options_offerContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  Nanoseconds = _ICQSignpostGetNanoseconds(*(a1 + 64), *(a1 + 72));
  v8 = _ICQSignpostLogSystem();
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = objc_opt_class();
    v12 = v11;
    v13 = MEMORY[0x277CCACA8];
    if (v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = &stru_288431E38;
    }

    v15 = v11;
    v16 = [v13 stringWithFormat:@"%@", v14];
    *buf = 138412546;
    *v40 = v12;
    *&v40[8] = 2112;
    *&v40[10] = v16;
    _os_signpost_emit_with_name_impl(&dword_275572000, v9, OS_SIGNPOST_INTERVAL_END, v10, "GetOffer", "%@ %@", buf, 0x16u);
  }

  v17 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v28 = Nanoseconds / 1000000000.0;
    v29 = *(a1 + 64);
    v30 = objc_opt_class();
    v31 = v30;
    v32 = MEMORY[0x277CCACA8];
    if (v6)
    {
      v33 = v6;
    }

    else
    {
      v33 = &stru_288431E38;
    }

    v34 = v30;
    v35 = [v32 stringWithFormat:@"%@", v33];
    *buf = 67109890;
    *v40 = v29;
    *&v40[4] = 2048;
    *&v40[6] = v28;
    *&v40[14] = 2112;
    *&v40[16] = v31;
    v41 = 2112;
    v42 = v35;
    _os_log_debug_impl(&dword_275572000, v17, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) GetOffer %@ %@", buf, 0x26u);
  }

  if (!v5 || v6 || ![*(a1 + 32) _shouldUseOffer:v5 forBundleIdentifier:*(a1 + 40)])
  {
    v19 = *(*(a1 + 56) + 16);
LABEL_15:
    v19();
    goto LABEL_16;
  }

  if (([*(a1 + 32) _offerTypeMatchesRequestOptions:*(a1 + 48) offer:v5] & 1) == 0)
  {
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __88__ICQOfferManager__getOfferForAccount_bundleIdentifier_options_offerContext_completion___block_invoke_cold_1((a1 + 48), v21, v22, v23, v24, v25, v26, v27);
    }

    v19 = *(*(a1 + 56) + 16);
    goto LABEL_15;
  }

  if (![v5 showsPhotoVideoCounts])
  {
    v19 = *(*(a1 + 56) + 16);
    goto LABEL_15;
  }

  v18 = *(a1 + 40);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __88__ICQOfferManager__getOfferForAccount_bundleIdentifier_options_offerContext_completion___block_invoke_48;
  v36[3] = &unk_27A651C50;
  v37 = v5;
  v38 = *(a1 + 56);
  [_ICQDeviceInfo getInfoWithBundleId:v18 completion:v36];

LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
}

void __88__ICQOfferManager__getOfferForAccount_bundleIdentifier_options_offerContext_completion___block_invoke_48(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (!v6)
  {
    [*(a1 + 32) setDeviceInfo:a2];
  }

  v5 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __88__ICQOfferManager__getOfferForAccount_bundleIdentifier_options_offerContext_completion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Fetch offer completed with error: (%@)", &v13, 0xCu);
  }

  v8 = 0;
  if (v5 && !v6)
  {
    v8 = [*(a1 + 32) _refreshOfferWithDaemonOfferDict:v5 offerRequestType:*(a1 + 56) bundleId:*(a1 + 40)];
  }

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 infoDictionary];
  v11 = [v10 objectForKey:@"CFBundleShortVersionString"];
  [v8 setAppVersionId:v11];

  (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

- (id)_refreshOfferWithDaemonOfferDict:(id)dict offerRequestType:(int64_t)type bundleId:(id)id
{
  v35 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  idCopy = id;
  if (type > 3)
  {
    if (type != 4)
    {
      if (type == 5)
      {
        objc_opt_class();
      }

LABEL_8:
      v10 = off_27A650D88;
      goto LABEL_11;
    }

    v10 = off_27A650D70;
  }

  else
  {
    if (type != 1)
    {
      if (type == 2)
      {
        v10 = off_27A650DC0;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v10 = off_27A650D78;
  }

LABEL_11:
  v11 = *v10;
  v12 = objc_opt_class();
  v13 = [[v12 alloc] initWithDictionary:dictCopy];
  serverDictionary = [v13 serverDictionary];

  if (serverDictionary)
  {
    selfCopy = self;
    v15 = [(objc_class *)v12 isEqual:objc_opt_class()];
    v16 = off_27A650E90;
    if (!v15)
    {
      v16 = off_27A650E48;
    }

    v17 = *v16;
    v18 = objc_opt_class();
    v19 = [v13 appLaunchLinkForBundleID:idCopy];
    v20 = [v18 alloc];
    serverDictionary2 = [v13 serverDictionary];
    accountAltDSID = [v13 accountAltDSID];
    notificationID = [v13 notificationID];
    retrievalDate = [v13 retrievalDate];
    [v13 callbackInterval];
    serverDictionary = [v20 initWithServerDictionary:serverDictionary2 accountAltDSID:accountAltDSID notificationID:notificationID retrievalDate:retrievalDate callbackInterval:v19 appLaunchLink:idCopy bundleIdentifier:?];

    v25 = _ICQGetLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:type];
      *buf = 138412290;
      v34 = v26;
      _os_log_impl(&dword_275572000, v25, OS_LOG_TYPE_DEFAULT, "Fetched offer type: %@", buf, 0xCu);
    }

    if (type != 4)
    {
      [(ICQOfferManager *)selfCopy setCachedOfferForType:type daemonOffer:v13 bundleIdentifier:idCopy];
    }

    if ([v13 failedToFetchFromServer])
    {
      v27 = _ICQGetLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        failureDetails = [v13 failureDetails];
        *buf = 138412290;
        v34 = failureDetails;
        _os_log_impl(&dword_275572000, v27, OS_LOG_TYPE_DEFAULT, "failed to fetch offer from server; details: %@", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__ICQOfferManager__refreshOfferWithDaemonOfferDict_offerRequestType_bundleId___block_invoke;
      block[3] = &unk_27A651CC8;
      block[4] = selfCopy;
      block[5] = type;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return serverDictionary;
}

- (id)cachedOfferForType:(int64_t)type
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  cachedOffersLock = [(ICQOfferManager *)self cachedOffersLock];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__ICQOfferManager_cachedOfferForType___block_invoke;
  v8[3] = &unk_27A651CF0;
  v8[5] = &v9;
  v8[6] = type;
  v8[4] = self;
  [cachedOffersLock synchronized:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __38__ICQOfferManager_cachedOfferForType___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v2 = [*(a1 + 32) cachedOffers];
  v3 = [v2 objectForKeyedSubscript:v7];

  v4 = [v3 offer];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setCachedOfferForType:(int64_t)type daemonOffer:(id)offer bundleIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  identifierCopy = identifier;
  expirationDate = [offerCopy expirationDate];
  cachedOffersLock = [(ICQOfferManager *)self cachedOffersLock];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __70__ICQOfferManager_setCachedOfferForType_daemonOffer_bundleIdentifier___block_invoke;
  v20 = &unk_27A651D18;
  selfCopy = self;
  typeCopy = type;
  v12 = offerCopy;
  v22 = v12;
  v13 = identifierCopy;
  v23 = v13;
  [cachedOffersLock synchronized:&v17];

  selfCopy = [_ICQHelperFunctions _darwinNotificationNameForRequestType:type, v17, v18, v19, v20, selfCopy];
  if (selfCopy)
  {
    [(ICQOfferManager *)self _registerForDarwinNotification:selfCopy];
    if (expirationDate)
    {
LABEL_3:
      [(ICQOfferManager *)self _setupTimerForInvalidationDate:expirationDate forType:type];
    }
  }

  else
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      typeCopy2 = type;
      _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "Found no notification to observe for offerRequestType: %ld", buf, 0xCu);
    }

    if (expirationDate)
    {
      goto LABEL_3;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __70__ICQOfferManager_setCachedOfferForType_daemonOffer_bundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedOffers];

  if (!v2)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) setCachedOffers:v3];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v4 = [[ICQOfferCacheObject alloc] initWithDaemonOffer:*(a1 + 40) bundleIdentifier:*(a1 + 48)];
  v5 = [*(a1 + 32) cachedOffers];
  [v5 setObject:v4 forKeyedSubscript:v6];
}

- (void)_refetchRegularOffer
{
  v3 = [(ICQOfferManager *)self cachedOfferForType:3];
  bundleIdentifier = [v3 bundleIdentifier];

  [(ICQOfferManager *)self removeCachedOfferForType:3];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__ICQOfferManager__refetchRegularOffer__block_invoke;
  aBlock[3] = &unk_27A651D40;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (bundleIdentifier)
  {
    [(ICQOfferManager *)self getOfferForBundleIdentifier:bundleIdentifier completion:v5];
  }

  else
  {
    [(ICQOfferManager *)self getOfferWithCompletion:v5];
  }
}

void __39__ICQOfferManager__refetchRegularOffer__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ICQOfferManager__refetchRegularOffer__block_invoke_2;
  block[3] = &unk_27A651BB8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__ICQOfferManager__refetchRegularOffer__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICQCurrentOfferChangedNotification" object:*(a1 + 32)];
}

- (void)_refetchPremiumOffer
{
  v3 = [(ICQOfferManager *)self cachedOfferForType:2];
  bundleIdentifier = [v3 bundleIdentifier];

  [(ICQOfferManager *)self removeCachedOfferForType:2];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__ICQOfferManager__refetchPremiumOffer__block_invoke;
  aBlock[3] = &unk_27A651D68;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (bundleIdentifier)
  {
    [(ICQOfferManager *)self getPremiumOfferForBundleIdentifier:bundleIdentifier completion:v5];
  }

  else
  {
    [(ICQOfferManager *)self getPremiumOfferWithCompletion:v5];
  }
}

void __39__ICQOfferManager__refetchPremiumOffer__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ICQOfferManager__refetchPremiumOffer__block_invoke_2;
  block[3] = &unk_27A651BB8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__ICQOfferManager__refetchPremiumOffer__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICQCurrentPremiumOfferChangedNotification" object:*(a1 + 32)];
}

- (void)_refetchDefaultOffer
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICQOfferManager *)self cachedOfferForType:1];
  bundleIdentifier = [v3 bundleIdentifier];

  [(ICQOfferManager *)self removeCachedOfferForType:1];
  v8 = @"isDefaultOffer";
  v9[0] = &unk_288443748;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ICQOfferManager__refetchDefaultOffer__block_invoke;
  v7[3] = &unk_27A651D40;
  v7[4] = self;
  [(ICQOfferManager *)self _getOfferForBundleIdentifier:bundleIdentifier options:v5 offerContext:0 completion:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __39__ICQOfferManager__refetchDefaultOffer__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Failed to fetch offer. Error: %@", buf, 0xCu);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__ICQOfferManager__refetchDefaultOffer__block_invoke_65;
    block[3] = &unk_27A651BB8;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ICQOfferManager__refetchDefaultOffer__block_invoke_2;
  v7[3] = &unk_27A651BB8;
  v7[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v7);

  v6 = *MEMORY[0x277D85DE8];
}

void __39__ICQOfferManager__refetchDefaultOffer__block_invoke_65(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICQCurrentDefaultOfferChangedNotification" object:*(a1 + 32)];
}

void __39__ICQOfferManager__refetchDefaultOffer__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICQCurrentDefaultOfferChangedNotification" object:*(a1 + 32)];
}

- (BOOL)fetchOfferIfNeeded
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __37__ICQOfferManager_fetchOfferIfNeeded__block_invoke;
  v3[3] = &unk_27A651D40;
  v3[4] = self;
  [(ICQOfferManager *)self getOfferWithCompletion:v3];
  return 1;
}

void __37__ICQOfferManager_fetchOfferIfNeeded__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ICQOfferManager_fetchOfferIfNeeded__block_invoke_2;
  block[3] = &unk_27A651BB8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __37__ICQOfferManager_fetchOfferIfNeeded__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"ICQCurrentOfferChangedNotification" object:*(a1 + 32)];
}

- (void)_registerForDarwinNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (notificationCopy)
  {
    registeredDarwinNotifications = [(ICQOfferManager *)selfCopy registeredDarwinNotifications];

    if (!registeredDarwinNotifications)
    {
      v7 = objc_opt_new();
      [(ICQOfferManager *)selfCopy setRegisteredDarwinNotifications:v7];
    }

    registeredDarwinNotifications2 = [(ICQOfferManager *)selfCopy registeredDarwinNotifications];
    v9 = [registeredDarwinNotifications2 objectForKeyedSubscript:notificationCopy];

    if (!v9 || ([v9 BOOLValue] & 1) == 0)
    {
      v10 = _ICQGetLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = notificationCopy;
        _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "registering for darwin notification %@", &v14, 0xCu);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, selfCopy, _handlePushReceivedDarwinNotification, notificationCopy, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      registeredDarwinNotifications3 = [(ICQOfferManager *)selfCopy registeredDarwinNotifications];
      [registeredDarwinNotifications3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:notificationCopy];
    }
  }

  objc_sync_exit(selfCopy);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterForDarwinNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  registeredDarwinNotifications = [(ICQOfferManager *)selfCopy registeredDarwinNotifications];
  v7 = [registeredDarwinNotifications objectForKeyedSubscript:notificationCopy];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = notificationCopy;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "unregistering for darwin notification %@", &v13, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, notificationCopy, 0);
    registeredDarwinNotifications2 = [(ICQOfferManager *)selfCopy registeredDarwinNotifications];
    [registeredDarwinNotifications2 removeObjectForKey:notificationCopy];
  }

  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterForAllDarwinNotifications
{
  [(ICQOfferManager *)self _unregisterForDarwinNotification:@"ICQDaemonOfferChangedDueToPushDarwinNotificationRegular"];
  [(ICQOfferManager *)self _unregisterForDarwinNotification:@"ICQDaemonOfferChangedDueToPushDarwinNotificationPremium"];

  [(ICQOfferManager *)self _unregisterForDarwinNotification:@"ICQDaemonOfferChangedDueToPushDarwinNotificationDefault"];
}

- (void)_handlePushReceivedDarwinNotificationRequestType:(int64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqualToString:@"com.apple.RemoteiCloudQuotaUI"];

  if (type == 1 || (v7 & 1) == 0)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:type];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "push received -- refetching offer type %@", &v11, 0xCu);
    }

    switch(type)
    {
      case 1:
        [(ICQOfferManager *)self _refetchDefaultOffer];
        break;
      case 2:
        [(ICQOfferManager *)self _refetchPremiumOffer];
        break;
      case 3:
        [(ICQOfferManager *)self _refetchRegularOffer];
        break;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_setupTimerForInvalidationDate:(id)date forType:(int64_t)type
{
  dateCopy = date;
  v7 = dateCopy;
  if (type == 2)
  {
    v8 = dateCopy;
    dateCopy = [(ICQOfferManager *)self _setupTimerForPremiumOfferInvalidationDate:dateCopy];
  }

  else
  {
    if (type != 3)
    {
      goto LABEL_6;
    }

    v8 = dateCopy;
    dateCopy = [(ICQOfferManager *)self _setupTimerForRegularOfferInvalidationDate:dateCopy];
  }

  v7 = v8;
LABEL_6:

  MEMORY[0x2821F96F8](dateCopy, v7);
}

- (void)_setupTimerForRegularOfferInvalidationDate:(id)date
{
  dateCopy = date;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__ICQOfferManager__setupTimerForRegularOfferInvalidationDate___block_invoke;
  v6[3] = &unk_27A651D90;
  v6[4] = self;
  v7 = dateCopy;
  v5 = dateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __62__ICQOfferManager__setupTimerForRegularOfferInvalidationDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _teardownRegularOfferInvalidationTimer];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__firedRegularOfferInvalidationTimer_ selector:0 userInfo:0 repeats:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  *(v7 + 8) = v6;

  return MEMORY[0x2821F96F8](v6, v8);
}

- (void)_setupTimerForPremiumOfferInvalidationDate:(id)date
{
  dateCopy = date;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__ICQOfferManager__setupTimerForPremiumOfferInvalidationDate___block_invoke;
  v6[3] = &unk_27A651D90;
  v6[4] = self;
  v7 = dateCopy;
  v5 = dateCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __62__ICQOfferManager__setupTimerForPremiumOfferInvalidationDate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _teardownPremiumOfferInvalidationTimer];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  v6 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel__firedPremiumOfferInvalidationTimer_ selector:0 userInfo:0 repeats:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  return MEMORY[0x2821F96F8](v6, v8);
}

- (void)_teardownInvalidationTimerForRequestType:(int64_t)type
{
  if (type == 2)
  {
    [(ICQOfferManager *)self _teardownPremiumOfferInvalidationTimer];
  }

  else if (type == 3)
  {
    [(ICQOfferManager *)self _teardownRegularOfferInvalidationTimer];
  }
}

- (void)_teardownRegularOfferInvalidationTimer
{
  if ([(NSTimer *)self->_regularOfferInvalidationTimer isValid])
  {
    [(NSTimer *)self->_regularOfferInvalidationTimer invalidate];
  }

  regularOfferInvalidationTimer = self->_regularOfferInvalidationTimer;
  self->_regularOfferInvalidationTimer = 0;
}

- (void)_teardownPremiumOfferInvalidationTimer
{
  if ([(NSTimer *)self->_premiumOfferInvalidationTimer isValid])
  {
    [(NSTimer *)self->_premiumOfferInvalidationTimer invalidate];
  }

  premiumOfferInvalidationTimer = self->_premiumOfferInvalidationTimer;
  self->_premiumOfferInvalidationTimer = 0;
}

- (void)_firedRegularOfferInvalidationTimer:(id)timer
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "offer expired -- refetching", v5, 2u);
  }

  [(ICQOfferManager *)self _teardownRegularOfferInvalidationTimer];
  [(ICQOfferManager *)self _refetchRegularOffer];
}

- (void)_firedPremiumOfferInvalidationTimer:(id)timer
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Premium offer expired -- refetching", v5, 2u);
  }

  [(ICQOfferManager *)self _teardownPremiumOfferInvalidationTimer];
  [(ICQOfferManager *)self _refetchPremiumOffer];
}

- (void)clearFollowups
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v2 clearFollowupsOfferType:3 completion:0];
}

- (void)updateOfferId:(id)id buttonId:(id)buttonId info:(id)info completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  idCopy = id;
  buttonIdCopy = buttonId;
  infoCopy = info;
  completionCopy = completion;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  v15 = _ICQGetLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v22 = aa_primaryAppleAccount;
    v23 = 2112;
    v24 = idCopy;
    v25 = 2112;
    v26 = buttonIdCopy;
    v27 = 2112;
    v28 = infoCopy;
    _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "account:%@ updateOfferId:%@ buttonId:%@ info:%@", buf, 0x2Au);
  }

  if (aa_primaryAppleAccount)
  {
    v16 = objc_alloc_init(getINDaemonConnectionClass());
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67__ICQOfferManager_Private__updateOfferId_buttonId_info_completion___block_invoke;
    v18[3] = &unk_27A651DB8;
    v19 = defaultStore;
    v20 = completionCopy;
    [v16 updateOfferForAccount:aa_primaryAppleAccount offerId:idCopy buttonId:buttonIdCopy info:infoCopy completion:v18];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __67__ICQOfferManager_Private__updateOfferId_buttonId_info_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)dismissRecommendationForBundleId:(id)id
{
  idCopy = id;
  dismissedRecommendations = [(ICQOfferManager *)self dismissedRecommendations];

  if (!dismissedRecommendations)
  {
    v6 = objc_opt_new();
    [(ICQOfferManager *)self setDismissedRecommendations:v6];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
  dismissedRecommendations2 = [(ICQOfferManager *)self dismissedRecommendations];
  [dismissedRecommendations2 setObject:v8 forKeyedSubscript:idCopy];
}

- (BOOL)didDismissRecommendationForBundleId:(id)id
{
  idCopy = id;
  dismissedRecommendations = [(ICQOfferManager *)self dismissedRecommendations];

  if (dismissedRecommendations && (-[ICQOfferManager dismissedRecommendations](self, "dismissedRecommendations"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKeyedSubscript:idCopy], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    dismissedRecommendations2 = [(ICQOfferManager *)self dismissedRecommendations];
    v9 = [dismissedRecommendations2 objectForKeyedSubscript:idCopy];
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)_legacyBuddyOfferMightNeedPresenting
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = +[ICQDaemonOfferConditions isCachedCloudQuotaAlmostFullOrFull];
  v3 = +[ICQDaemonOfferConditions isDeviceStorageNearLowButNotLow];
  v4 = v3 & !+[ICQDaemonOfferConditions isPhotosCloudEnabled];
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NERP";
    if (v5)
    {
      v7 = @"YASE";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "mini-buddy might need to run: %@", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)forcePostFollowup
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v2 forcePostFollowup];
}

- (void)postOfferType:(id)type
{
  typeCopy = type;
  v4 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v4 postOfferType:typeCopy];
}

- (void)postBuddyOfferType:(id)type
{
  typeCopy = type;
  v4 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v4 postBuddyOfferType:typeCopy];
}

- (void)teardownCachedOffer
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v2 teardownCachedOffer];
}

- (void)teardownCachedBuddyOffer
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v2 teardownCachedBuddyOffer];
}

- (void)teardownCachedPremiumOffer
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v2 tearDownCachedPremiumOffer];
}

- (void)teardownCachedEventOffer
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v2 tearDownCachedEventOffer];
}

- (void)teardownCachedOffers
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v2 teardownCachedOffers];
}

- (BOOL)isSimulatedDeviceStorageAlmostFull
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  isSimulatedDeviceStorageAlmostFull = [v2 isSimulatedDeviceStorageAlmostFull];

  return isSimulatedDeviceStorageAlmostFull;
}

- (id)simulatedPhotosLibrarySize
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  simulatedPhotosLibrarySize = [v2 simulatedPhotosLibrarySize];

  return simulatedPhotosLibrarySize;
}

- (void)setSimulatedPhotosLibrarySize:(id)size
{
  sizeCopy = size;
  v4 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  [v4 setSimulatedPhotosLibrarySize:sizeCopy];
}

- (BOOL)isBuddyOfferEnabled
{
  v2 = +[ICQDaemonOfferManager sharedDaemonOfferManager];
  isBuddyOfferEnabled = [v2 isBuddyOfferEnabled];

  return isBuddyOfferEnabled;
}

void __43__ICQOfferManager_postBackupRestoredOffer___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_4(&dword_275572000, a2, a3, "Backup restore offer not found with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __62__ICQOfferManager_appLaunchLinkDidPresentForBundleIdentifier___block_invoke_27_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "Failed to send AppLaunch event to ind with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_getOfferForAccount:(os_log_t)log bundleIdentifier:options:offerContext:completion:.cold.1(unsigned __int16 a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_275572000, log, OS_LOG_TYPE_DEBUG, "SIGNPOST BEGIN [id: %hu]: GetOffer  enableTelemetry=YES options: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

void __88__ICQOfferManager__getOfferForAccount_bundleIdentifier_options_offerContext_completion___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_4(&dword_275572000, a2, a3, "Returned offer doesn't match the requested offer type. Requested options: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end