@interface SKUIJSITunesStore
- (BOOL)resourceExists:(id)a3;
- (BOOL)sendAppPreviewStateChanged:(BOOL)a3;
- (BOOL)sendOnShowPageEventType:(id)a3 data:(id)a4;
- (BOOL)sendOnXEventWithDictionary:(id)a3;
- (NSString)hostApp;
- (SKUIJSAppleAccount)primaryAppleAccount;
- (SKUIJSITunesStore)initWithAppContext:(id)a3 clientContext:(id)a4;
- (SKUIJSRestrictions)restrictions;
- (id)_rentalInfoFromMediaItems:(id)a3;
- (id)documentSizeForNavigationDocument:(id)a3;
- (int64_t)applicationIconBadgeNumber;
- (void)_finishPurchaseForOptions:(id)a3 purchaseResponse:(id)a4;
- (void)_finishSoftwarePurchaseForOptions:(id)a3 purchaseResponse:(id)a4;
- (void)_purchaseRequestDidSucceedNotification:(id)a3;
- (void)approveInPerson:(id)a3 :(id)a4;
- (void)attemptLocalAskToBuyApproval:(id)a3;
- (void)buy:(id)a3;
- (void)clearToggleStateItems;
- (void)dealloc;
- (void)download:(id)a3;
- (void)downloadExistsFor:(id)a3 :(id)a4;
- (void)exit:(id)a3;
- (void)fetchMSOProviderStatus:(id)a3;
- (void)fetchTemplates:(id)a3 :(id)a4;
- (void)findApps:(id)a3 :(id)a4 :(id)a5;
- (void)findLibraryItems:(id)a3 :(id)a4 :(id)a5;
- (void)findOwnedItems:(id)a3 :(id)a4;
- (void)findToggleStateForItem:(id)a3 :(id)a4;
- (void)getAdminStatus:(id)a3 :(id)a4;
- (void)getBookSample:(id)a3;
- (void)getProfilePermissions:(id)a3 :(id)a4;
- (void)isInstalledApp:(id)a3 :(id)a4;
- (void)isRemovedSystemApp:(id)a3 :(id)a4;
- (void)itemStateCenterMediaLibrariesDidChange:(id)a3;
- (void)launchICloudFamilySettings;
- (void)loadGratisContent:(id)a3;
- (void)loadRental:(id)a3 :(id)a4;
- (void)loadRentals:(id)a3;
- (void)resetStateForActiveDocument;
- (void)restoreRemovedSystemApp:(id)a3 :(id)a4;
- (void)sendApplicationWindowSizeDidUpdate:(CGSize)a3;
- (void)sendOnNavigationStackWillPop:(BOOL)a3;
- (void)sendOnPageResponseWithDocument:(id)a3 data:(id)a4 URLResponse:(id)a5 performanceMetrics:(id)a6;
- (void)setApplicationIconBadgeNumber:(int64_t)a3;
- (void)setPreviewOverlay:(id)a3 :(id)a4;
- (void)updateToggleStateForItem:(id)a3 toggled:(BOOL)a4 :(id)a5;
@end

@implementation SKUIJSITunesStore

- (SKUIJSITunesStore)initWithAppContext:(id)a3 clientContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIJSITunesStore initWithAppContext:clientContext:];
  }

  v14.receiver = self;
  v14.super_class = SKUIJSITunesStore;
  v8 = [(IKJSITunesStore *)&v14 initWithAppContext:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_clientContext, a4);
    v10 = +[SKUIItemStateCenter defaultCenter];
    [v10 addObserver:v9];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v9 selector:sel__purchaseRequestDidSucceedNotification_ name:0x2827FFF68 object:0];

    v12 = SKUIMediaPlayerFramework();
    [SKUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa v12)];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[SKUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:0x2827FFF68 object:0];

  v5.receiver = self;
  v5.super_class = SKUIJSITunesStore;
  [(IKJSITunesStore *)&v5 dealloc];
}

- (void)sendOnNavigationStackWillPop:(BOOL)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"isInteractive";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v8 = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v7 = [(IKJSObject *)self invokeMethod:@"onNavigationStackWillPop" withArguments:v6];
}

- (void)sendOnPageResponseWithDocument:(id)a3 data:(id)a4 URLResponse:(id)a5 performanceMetrics:(id)a6
{
  v20[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [SKUIJSFakeXMLHTTPRequest alloc];
  v15 = [(IKJSObject *)self appContext];
  v16 = [(SKUIJSFakeXMLHTTPRequest *)v14 initWithAppContext:v15 data:v12 URLResponse:v11 performanceMetrics:v10];

  v17 = [v13 valueForKey:@"jsDocument"];

  if (!v17)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v20[0] = v17;
  v20[1] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v19 = [(IKJSObject *)self invokeMethod:@"onPageResponse" withArguments:v18];
}

- (BOOL)sendOnXEventWithDictionary:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD4658];
  v5 = a3;
  v6 = [(IKJSObject *)self appContext];
  v7 = [v6 jsContext];
  v8 = [v4 valueWithObject:self inContext:v7];

  LOBYTE(v4) = [v8 hasProperty:@"onXEvent"];
  v12[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v10 = [(IKJSObject *)self invokeMethod:@"onXEvent" withArguments:v9];
  return v4;
}

- (BOOL)sendAppPreviewStateChanged:(BOOL)a3
{
  v3 = a3;
  v16[1] = *MEMORY[0x277D85DE8];
  self->_isAppPreview = a3;
  v5 = MEMORY[0x277CD4658];
  v6 = [(IKJSObject *)self appContext];
  v7 = [v6 jsContext];
  v8 = [v5 valueWithObject:self inContext:v7];

  LOBYTE(v6) = [v8 hasProperty:@"onAppPreviewStateChanged"];
  v15 = @"isPreview";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  v16[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v14 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v12 = [(IKJSObject *)self invokeMethod:@"onAppPreviewStateChanged" withArguments:v11];

  return v6;
}

- (void)sendApplicationWindowSizeDidUpdate:(CGSize)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAC0] sk_dictionaryWithSize:{a3.width, a3.height}];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6 = [(IKJSObject *)self invokeMethod:@"onWindowSizeDidUpdate" withArguments:v5];
}

- (BOOL)sendOnShowPageEventType:(id)a3 data:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CD4658];
  v9 = [(IKJSObject *)self appContext];
  v10 = [v9 jsContext];
  v11 = [v8 valueWithObject:self inContext:v10];

  v12 = [v11 hasProperty:@"onShowPage"];
  v19 = @"type";
  v20[0] = v6;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v14 = [v13 mutableCopy];

  if (v7)
  {
    [v14 setObject:v7 forKeyedSubscript:@"data"];
  }

  v18 = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v16 = [(IKJSObject *)self invokeMethod:@"onShowPage" withArguments:v15];

  return v12;
}

- (int64_t)applicationIconBadgeNumber
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SKUIJSITunesStore_applicationIconBadgeNumber__block_invoke;
  block[3] = &unk_2781FA3E0;
  block[4] = &v5;
  dispatch_sync(MEMORY[0x277D85CD0], block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __47__SKUIJSITunesStore_applicationIconBadgeNumber__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  *(*(*(a1 + 32) + 8) + 24) = [v2 applicationIconBadgeNumber];
}

- (void)attemptLocalAskToBuyApproval:(id)a3
{
  v3 = a3;
  v4 = SKUIAskPermissionFramework();
  v5 = SKUIWeakLinkedClassForString(&cfstr_Prrequestqueue.isa, v4);
  v6 = SKUIAskPermissionFramework();
  v8 = [v5 _requestQueueForIdentifier:{*SKUIWeakLinkedSymbolForString("kPRRequestQueueiTunesStoreIdentifier", v6)}];
  v7 = [v3 longLongValue];

  [v8 _attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:v7 completionHandler:0];
}

- (void)buy:(id)a3
{
  v4 = a3;
  v5 = [[SKUIItem alloc] initWithLookupDictionary:v4];
  v6 = [(SKUIItem *)v5 primaryItemOffer];
  v7 = [v6 actionParameters];
  if (v7)
  {
    objc_initWeak(&location, self);
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    if (SKUIItemKindIsToneKind([(SKUIItem *)v5 itemKind]))
    {
      v8 = [(IKJSObject *)self appContext];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __25__SKUIJSITunesStore_buy___block_invoke;
      v18[3] = &unk_2781FAB00;
      v19 = v5;
      v20 = self;
      objc_copyWeak(&v23, &location);
      v21 = v4;
      v22 = &v24;
      [v8 evaluateDelegateBlockSync:v18];

      objc_destroyWeak(&v23);
    }

    if (*(v25 + 24) == 1)
    {
      if (SKUIItemStateCenterUseAppstoredPurchases(v5))
      {
        v9 = +[SKUIItemStateCenter defaultCenter];
        clientContext = self->_clientContext;
        v11 = v16;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __25__SKUIJSITunesStore_buy___block_invoke_3;
        v16[3] = &unk_2781FAB28;
        v12 = &v17;
        objc_copyWeak(&v17, &location);
        v16[4] = v4;
        [v9 purchaseSoftwareItem:v5 offer:v6 clientContext:clientContext completionBlock:v16];
      }

      else
      {
        v9 = +[SKUIItemStateCenter defaultCenter];
        v13 = self->_clientContext;
        v11 = v14;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __25__SKUIJSITunesStore_buy___block_invoke_4;
        v14[3] = &unk_2781FAAD8;
        v12 = &v15;
        objc_copyWeak(&v15, &location);
        v14[4] = v4;
        [v9 purchaseItem:v5 offer:v6 clientContext:v13 completionBlock:v14];
      }

      objc_destroyWeak(v12);
    }

    _Block_object_dispose(&v24, 8);
    objc_destroyWeak(&location);
  }
}

void __25__SKUIJSITunesStore_buy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 presentationViewControllerForAppContext:v3];
    if (v5)
    {
      v6 = v5;
      v7 = [[SKUITonePurchaseController alloc] initWithItem:*(a1 + 32)];
      [(SKUITonePurchaseController *)v7 setClientContext:*(*(a1 + 40) + 96)];
      [(SKUITonePurchaseController *)v7 setParentViewController:v6];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __25__SKUIJSITunesStore_buy___block_invoke_2;
      v8[3] = &unk_2781FAAD8;
      objc_copyWeak(&v10, (a1 + 64));
      v9 = *(a1 + 48);
      [(SKUITonePurchaseController *)v7 showPurchaseFlowWithCompletionBlock:v8];
      *(*(*(a1 + 56) + 8) + 24) = 0;

      objc_destroyWeak(&v10);
    }
  }
}

void __25__SKUIJSITunesStore_buy___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishPurchaseForOptions:*(a1 + 32) purchaseResponse:v3];
}

void __25__SKUIJSITunesStore_buy___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishSoftwarePurchaseForOptions:*(a1 + 32) purchaseResponse:v3];
}

void __25__SKUIJSITunesStore_buy___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishPurchaseForOptions:*(a1 + 32) purchaseResponse:v3];
}

- (void)approveInPerson:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKJSObject *)self appContext];
  v9 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
  v10 = [v7 context];

  v11 = [v10 virtualMachine];

  [v11 addManagedReference:v9 withOwner:self];
  v12 = SKUIAskPermissionFramework();
  v13 = SKUIWeakLinkedClassForString(&cfstr_Prrequestqueue.isa, v12);
  v14 = SKUIAskPermissionFramework();
  v15 = *SKUIWeakLinkedSymbolForString("kPRRequestQueueiTunesStoreIdentifier", v14);
  v16 = [v13 _requestQueueForIdentifier:v15];
  v17 = [v6 longLongValue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __38__SKUIJSITunesStore_approveInPerson::__block_invoke;
  v22[3] = &unk_2781FAB78;
  v23 = v8;
  v24 = v9;
  v25 = v6;
  v26 = v11;
  v27 = self;
  v18 = v11;
  v19 = v6;
  v20 = v9;
  v21 = v8;
  [v16 _attemptLocalApprovalForStorePurchaseRequestWithItemIdentifier:v17 completionHandler:v22];
}

void __38__SKUIJSITunesStore_approveInPerson::__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__SKUIJSITunesStore_approveInPerson::__block_invoke_2;
  v11[3] = &unk_2781FAB50;
  v5 = (a1 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = a3;
  v8 = *(a1 + 48);
  *&v9 = *(a1 + 56);
  *(&v9 + 1) = *v5;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  [v6 evaluate:v11 completionBlock:0];
}

void __38__SKUIJSITunesStore_approveInPerson::__block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{*(a1 + 64), @"status"}];
  v7[1] = @"adamId";
  v8[0] = v3;
  v8[1] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v2 callWithArguments:v5];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)clearToggleStateItems
{
  v2 = +[SKUIToggleStateCenter defaultCenter];
  [v2 clearAll];
}

- (void)download:(id)a3
{
  v3 = MEMORY[0x277D69AE8];
  v4 = a3;
  v8 = [[v3 alloc] initWithDictionary:v4];

  v5 = [objc_alloc(MEMORY[0x277D69AA0]) initWithDownloadMetadata:v8];
  v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v5, 0}];
  if ([v6 count])
  {
    v7 = +[SKUIItemStateCenter defaultCenter];
    [v7 addDownloads:v6];
  }
}

- (void)downloadExistsFor:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKJSObject *)self appContext];
  v9 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
  v10 = [v7 context];
  v11 = [v10 virtualMachine];

  [v11 addManagedReference:v9 withOwner:self];
  v12 = [v6 longLongValue];
  objc_initWeak(&location, self);
  v13 = [MEMORY[0x277D69AB8] IPodDownloadManager];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__SKUIJSITunesStore_downloadExistsFor::__block_invoke;
  v17[3] = &unk_2781FABF0;
  objc_copyWeak(v21, &location);
  v21[1] = v12;
  v14 = v8;
  v18 = v14;
  v15 = v9;
  v19 = v15;
  v16 = v11;
  v20 = v16;
  [v13 getDownloadsUsingBlock:v17];

  objc_destroyWeak(v21);
  objc_destroyWeak(&location);
}

void __40__SKUIJSITunesStore_downloadExistsFor::__block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__SKUIJSITunesStore_downloadExistsFor::__block_invoke_2;
  v16[3] = &unk_2781FABA0;
  v5 = *(a1 + 64);
  v16[4] = &v17;
  v16[5] = v5;
  [v3 enumerateObjectsUsingBlock:v16];
  v21 = @"exists";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v18 + 24)];
  v22[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__SKUIJSITunesStore_downloadExistsFor::__block_invoke_3;
  v11[3] = &unk_2781FABC8;
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = v7;
  v13 = v9;
  v14 = *(a1 + 48);
  v10 = WeakRetained;
  v15 = v10;
  [v8 evaluate:v11 completionBlock:0];

  _Block_object_dispose(&v17, 8);
}

void __40__SKUIJSITunesStore_downloadExistsFor::__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v8 valueForProperty:*MEMORY[0x277D6A080]];
    v7 = [v6 longLongValue];

    if (*(a1 + 40) == v7)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void __40__SKUIJSITunesStore_downloadExistsFor::__block_invoke_3(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 callWithArguments:v3];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)exit:(id)a3
{
  v4 = a3;
  v5 = [(IKJSObject *)self appContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__SKUIJSITunesStore_exit___block_invoke;
  v7[3] = &unk_2781FAC18;
  v8 = v4;
  v6 = v4;
  [v5 evaluateDelegateBlockSync:v7];
}

void __26__SKUIJSITunesStore_exit___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 appContext:v4 didExitWithOptions:*(a1 + 32)];
  }
}

- (void)findApps:(id)a3 :(id)a4 :(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(IKJSObject *)self appContext];
  v10 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
  v11 = [v7 context];

  v12 = [v11 virtualMachine];

  [v12 addManagedReference:v10 withOwner:self];
  v13 = objc_alloc_init(MEMORY[0x277D69C68]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__SKUIJSITunesStore_findApps_::__block_invoke;
  v17[3] = &unk_2781FAC40;
  v18 = v9;
  v19 = v10;
  v20 = v12;
  v21 = self;
  v14 = v12;
  v15 = v10;
  v16 = v9;
  [v13 getLibraryItemForBundleIdentifiers:v8 completionBlock:v17];
}

void __32__SKUIJSITunesStore_findApps_::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = a1;
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v26 = a3;
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v9 = *MEMORY[0x277D6A5B0];
    v27 = *MEMORY[0x277D6A5B0];
    v28 = *MEMORY[0x277D6A5D0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 valueForProperty:v9];
        if (v13 && ([v11 isPlaceholder] & 1) == 0 && (objc_msgSend(v11, "isBeta") & 1) == 0)
        {
          v14 = [[SKUILibraryItemState alloc] initWithApplication:v11];
          v15 = [(SKUILibraryItemState *)v14 newJavaScriptRepresentation];
          v16 = [v11 valueForProperty:v28];
          v17 = v16;
          if (v16)
          {
            [v16 stringValue];
            v18 = v8;
            v20 = v19 = v5;
            [v15 setObject:v20 forKey:0x282803668];

            v5 = v19;
            v8 = v18;
            v9 = v27;
          }

          [v29 setObject:v15 forKey:{v13, v25, v26}];
        }

        objc_autoreleasePoolPop(v12);
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v7);
  }

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __32__SKUIJSITunesStore_findApps_::__block_invoke_2;
  v30[3] = &unk_2781FABC8;
  v21 = *(v25 + 32);
  v31 = *(v25 + 40);
  v32 = v29;
  v22 = *(v25 + 48);
  v23 = *(v25 + 56);
  v33 = v22;
  v34 = v23;
  v24 = v29;
  [v21 evaluate:v30 completionBlock:0];
}

void __32__SKUIJSITunesStore_findApps_::__block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 callWithArguments:v3];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)findLibraryItems:(id)a3 :(id)a4 :(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IKJSObject *)self appContext];
  v12 = [MEMORY[0x277CD4650] managedValueWithValue:v9];
  v13 = [v9 context];

  v14 = [v13 virtualMachine];

  [v14 addManagedReference:v12 withOwner:self];
  v15 = +[SKUIItemStateCenter defaultCenter];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __40__SKUIJSITunesStore_findLibraryItems_::__block_invoke;
  v19[3] = &unk_2781FAC68;
  v20 = v11;
  v21 = v12;
  v22 = v14;
  v23 = self;
  v16 = v14;
  v17 = v12;
  v18 = v11;
  [v15 findLibraryItemsForContentIdentifiers:v10 options:v8 completionBlock:v19];
}

void __40__SKUIJSITunesStore_findLibraryItems_::__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__SKUIJSITunesStore_findLibraryItems_::__block_invoke_2;
  v8[3] = &unk_2781FABC8;
  v4 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v7 = v3;
  [v4 evaluate:v8 completionBlock:0];
}

void __40__SKUIJSITunesStore_findLibraryItems_::__block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 callWithArguments:v3];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)findOwnedItems:(id)a3 :(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v27 = [(IKJSObject *)self appContext];
  v8 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
  v28 = v7;
  v9 = [v7 context];
  v10 = [v9 virtualMachine];

  v24 = v10;
  v25 = v8;
  v26 = self;
  [v10 addManagedReference:v8 withOwner:self];
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      v14 = 0;
      do
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v15, "longLongValue")}];
        }

        v17 = v16;
        v18 = -[SKUIStoreIdentifier initWithLongLong:]([SKUIStoreIdentifier alloc], "initWithLongLong:", [v16 longLongValue]);
        if (v18)
        {
          v19 = +[SKUIItemStateCenter defaultCenter];
          v20 = [v19 stateForItemWithStoreIdentifier:v18];

          if (([v20 state] & 8) != 0)
          {
            [v29 addObject:v15];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __37__SKUIJSITunesStore_findOwnedItems::__block_invoke;
  v31[3] = &unk_2781FABC8;
  v32 = v25;
  v33 = v29;
  v34 = v24;
  v35 = v26;
  v21 = v24;
  v22 = v29;
  v23 = v25;
  [v27 evaluate:v31 completionBlock:0];
}

void __37__SKUIJSITunesStore_findOwnedItems::__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 callWithArguments:v3];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)findToggleStateForItem:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(IKJSObject *)self appContext];
    v9 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
    v10 = [v7 context];
    v11 = [v10 virtualMachine];

    [v11 addManagedReference:v9 withOwner:self];
    v12 = +[SKUIToggleStateCenter defaultCenter];
    v13 = [v12 itemForIdentifier:v6];

    LODWORD(v12) = [v13 toggled];
    v14 = objc_opt_new();
    [v14 setValue:v6 forKey:@"itemID"];
    if (v12 == 1)
    {
      v15 = MEMORY[0x277CBEC38];
    }

    else
    {
      v15 = MEMORY[0x277CBEC28];
    }

    [v14 setValue:v15 forKey:@"toggled"];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__SKUIJSITunesStore_findToggleStateForItem::__block_invoke;
    v19[3] = &unk_2781FABC8;
    v20 = v9;
    v21 = v14;
    v22 = v11;
    v23 = self;
    v16 = v11;
    v17 = v14;
    v18 = v9;
    [v8 evaluate:v19 completionBlock:0];
  }
}

void __45__SKUIJSITunesStore_findToggleStateForItem::__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 callWithArguments:v3];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)getBookSample:(id)a3
{
  v3 = MEMORY[0x277D69AE8];
  v4 = a3;
  v7 = [[v3 alloc] initWithDictionary:v4];

  v5 = [v7 primaryAssetURL];
  if (v5)
  {
    v6 = +[SKUIItemStateCenter defaultCenter];
    [v6 addManifestDownloadWithURL:v5 placeholderMetadata:v7];
  }
}

- (void)getAdminStatus:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CD4650];
  v8 = a4;
  v9 = [v7 managedValueWithValue:v8];
  v10 = [v8 context];

  v11 = [v10 virtualMachine];

  [v11 addManagedReference:v9 withOwner:self];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = [v6 objectForKey:@"ignoreCache"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 BOOLValue])
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKey:@"SKUIMediaSocialAdminPermissionsOptionIgnoreCache"];
  }

  v14 = [(IKJSObject *)self appContext];
  v15 = +[SKUIMediaSocialAdminPermissionsCoordinator sharedCoordinator];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __37__SKUIJSITunesStore_getAdminStatus::__block_invoke;
  v19[3] = &unk_2781F9E50;
  v20 = v14;
  v21 = v9;
  v22 = v11;
  v23 = self;
  v16 = v11;
  v17 = v9;
  v18 = v14;
  [v15 getAdminStatusWithOptions:v6 resultBlock:v19];
}

void __37__SKUIJSITunesStore_getAdminStatus::__block_invoke(uint64_t a1, char a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x277D6A118]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v6 integerValue] - 500) <= 0x62)
    {
      v7 = +[SKUIMediaSocialAdminPermissionsCoordinator sharedCoordinator];
      v8 = [v7 lastKnownAdminStatus];

      if (v8)
      {
        a2 = [v8 BOOLValue];
      }
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__SKUIJSITunesStore_getAdminStatus::__block_invoke_2;
  v12[3] = &unk_2781F9E28;
  v9 = *(a1 + 32);
  v13 = *(a1 + 40);
  v16 = a2;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v14 = v10;
  v15 = v11;
  [v9 evaluate:v12 completionBlock:0];
}

uint64_t __37__SKUIJSITunesStore_getAdminStatus::__block_invoke_2(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = MEMORY[0x277CBEC28];
  if (*(a1 + 56))
  {
    v3 = MEMORY[0x277CBEC38];
  }

  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 callWithArguments:v4];

  return [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (NSString)hostApp
{
  if ([(SKUIClientContext *)self->_clientContext conformsToProtocol:&unk_2829AED38])
  {
    v3 = [(SKUIClientContext *)self->_clientContext hostApplicationIdentifier];
    v4 = [v3 copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)documentSizeForNavigationDocument:(id)a3
{
  clientContext = self->_clientContext;
  v4 = a3;
  v5 = [(SKUIClientContext *)clientContext applicationController];
  [v5 sizeForNavigationDocument:v4];
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x277CBEAC0];

  return [v10 sk_dictionaryWithSize:{v7, v9}];
}

- (void)getProfilePermissions:(id)a3 :(id)a4
{
  v6 = MEMORY[0x277CD4650];
  v7 = a4;
  v8 = a3;
  v9 = [v6 managedValueWithValue:v7];
  v10 = [v7 context];

  v11 = [v10 virtualMachine];

  [v11 addManagedReference:v9 withOwner:self];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v13 = [v8 objectForKey:@"ignoreCache"];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 BOOLValue])
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKey:@"SKUIMediaSocialAdminPermissionsOptionIgnoreCache"];
  }

  v14 = [(IKJSObject *)self appContext];
  v15 = +[SKUIMediaSocialAdminPermissionsCoordinator sharedCoordinator];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __44__SKUIJSITunesStore_getProfilePermissions::__block_invoke;
  v19[3] = &unk_2781FAC40;
  v20 = v14;
  v21 = v9;
  v22 = v11;
  v23 = self;
  v16 = v11;
  v17 = v9;
  v18 = v14;
  [v15 getAuthorsWithOptions:v12 authorsBlock:v19];
}

void __44__SKUIJSITunesStore_getProfilePermissions::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 userInfo];
    v9 = [v8 objectForKey:*MEMORY[0x277D6A118]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v9 integerValue] - 500) <= 0x62)
    {
      v10 = +[SKUIMediaSocialAdminPermissionsCoordinator sharedCoordinator];
      v11 = [v10 lastKnownAuthors];

      v5 = v11;
    }
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [[SKUIJSMediaSocialAuthor alloc] initWithSKUIMediaSocialAuthor:*(*(&v28 + 1) + 8 * v17)];
        [v12 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __44__SKUIJSITunesStore_getProfilePermissions::__block_invoke_2;
  v23[3] = &unk_2781FABC8;
  v19 = *(a1 + 32);
  v24 = *(a1 + 40);
  v25 = v12;
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v26 = v20;
  v27 = v21;
  v22 = v12;
  [v19 evaluate:v23 completionBlock:0];
}

uint64_t __44__SKUIJSITunesStore_getProfilePermissions::__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v6[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 callWithArguments:v3];

  return [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)isInstalledApp:(id)a3 :(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IKJSObject *)self appContext];
  v9 = [MEMORY[0x277CD4650] managedValueWithValue:v6];
  v10 = [v6 context];

  v11 = [v10 virtualMachine];

  [v11 addManagedReference:v9 withOwner:self];
  v12 = [v7 unsignedIntegerValue];

  v13 = +[SKUIItemStateCenter defaultCenter];
  v14 = [v13 stateForItemWithIdentifier:v12];

  if (v14)
  {
    v15 = ([v14 state] >> 2) & 1;
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __37__SKUIJSITunesStore_isInstalledApp::__block_invoke;
  v18[3] = &unk_2781F9E28;
  v22 = v15;
  v19 = v9;
  v20 = v11;
  v21 = self;
  v16 = v11;
  v17 = v9;
  [v8 evaluate:v18 completionBlock:0];
}

void __37__SKUIJSITunesStore_isInstalledApp::__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v2 callWithArguments:v4];

  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (void)isRemovedSystemApp:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKJSObject *)self appContext];
  v9 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
  v10 = [v7 context];

  v11 = [v10 virtualMachine];

  [v11 addManagedReference:v9 withOwner:self];
  v12 = objc_alloc_init(MEMORY[0x277D69C68]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __41__SKUIJSITunesStore_isRemovedSystemApp::__block_invoke;
  v17[3] = &unk_2781FAC90;
  v17[4] = self;
  v18 = v6;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  v16 = v6;
  [v12 isRemovedSystemApplicationWithBundleIdentifier:v16 completionBlock:v17];
}

void __41__SKUIJSITunesStore_isRemovedSystemApp::__block_invoke(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D69B38] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v23 = 138412802;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      v12 = v10;
      LODWORD(v17) = 32;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_11:

        goto LABEL_12;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v23, v17}];
      free(v13);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__SKUIJSITunesStore_isRemovedSystemApp::__block_invoke_214;
  v18[3] = &unk_2781F9E28;
  v14 = *(a1 + 48);
  v19 = *(a1 + 56);
  v22 = a2;
  v15 = *(a1 + 64);
  v16 = *(a1 + 32);
  v20 = v15;
  v21 = v16;
  [v14 evaluate:v18 completionBlock:0];
}

void __41__SKUIJSITunesStore_isRemovedSystemApp::__block_invoke_214(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v2 callWithArguments:v4];

  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (void)launchICloudFamilySettings
{
  v2 = [(IKJSObject *)self appContext];
  [v2 evaluateDelegateBlockSync:&__block_literal_global_7];
}

void __47__SKUIJSITunesStore_launchICloudFamilySettings__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v2 = [v7 delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 presentationViewControllerForAppContext:v7];
    if (v3)
    {
      v4 = v3;
      v5 = SKUIFamilyCircleFramework();
      v6 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Fafamilysettin.isa, v5));
      if (objc_opt_respondsToSelector())
      {
        [v6 setPresentingViewController:v4];
        [v6 launchiCloudFamilySettings];
      }
    }
  }
}

- (void)loadGratisContent:(id)a3
{
  v4 = a3;
  v5 = [(IKJSObject *)self appContext];
  v6 = [MEMORY[0x277CD4650] managedValueWithValue:v4];
  v7 = [v4 context];

  v8 = [v7 virtualMachine];

  [v8 addManagedReference:v6 withOwner:self];
  v9 = +[SKUIItemStateCenter defaultCenter];
  [v9 reloadGratisEligibilityWithBundleIdentifiers:0 clientContext:self->_clientContext];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __39__SKUIJSITunesStore_loadGratisContent___block_invoke;
  v14[3] = &unk_2781FACD8;
  v15 = v9;
  v16 = v5;
  v17 = v6;
  v18 = v8;
  v19 = self;
  v10 = v8;
  v11 = v6;
  v12 = v5;
  v13 = v9;
  [v13 finishLoadingWithCompletionBlock:v14];
}

void __39__SKUIJSITunesStore_loadGratisContent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) gratisEligibleItemIdentifiers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__SKUIJSITunesStore_loadGratisContent___block_invoke_2;
  v7[3] = &unk_2781FABC8;
  v3 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v10 = v4;
  v11 = v5;
  v6 = v2;
  [v3 evaluate:v7 completionBlock:0];
}

void __39__SKUIJSITunesStore_loadGratisContent___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 callWithArguments:v3];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (SKUIJSAppleAccount)primaryAppleAccount
{
  v2 = SKUIAccountsFramework();
  v3 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Acaccountstore.isa, v2));
  v4 = [SKUIJSAppleAccount alloc];
  v5 = [v3 aa_primaryAppleAccount];
  v6 = [(SKUIJSAppleAccount *)v4 initWithACAccount:v5];

  return v6;
}

- (SKUIJSRestrictions)restrictions
{
  v3 = [SKUIJSRestrictions alloc];
  v4 = [(IKJSObject *)self appContext];
  v5 = [(SKUIJSRestrictions *)v3 initWithAppContext:v4 clientContext:self->_clientContext];

  return v5;
}

- (void)resetStateForActiveDocument
{
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [(IKJSObject *)self appContext];
  v4 = [v3 app];
  v5 = [v4 activeDocument];
  [v6 postNotificationName:@"SKUIStoreDialogControllerPurchaseRequestDidSucceedNotification" object:v5];
}

- (BOOL)resourceExists:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 scheme];
  if ([v5 isEqualToString:@"resource"])
  {
    v6 = [v4 host];
    v7 = SKUIImageExistsWithResourceName(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)restoreRemovedSystemApp:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKJSObject *)self appContext];
  v9 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
  v10 = [v7 context];

  v11 = [v10 virtualMachine];

  [v11 addManagedReference:v9 withOwner:self];
  v12 = objc_alloc_init(MEMORY[0x277D69C68]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__SKUIJSITunesStore_restoreRemovedSystemApp::__block_invoke;
  v17[3] = &unk_2781FAC90;
  v17[4] = self;
  v18 = v6;
  v19 = v8;
  v20 = v9;
  v21 = v11;
  v13 = v11;
  v14 = v9;
  v15 = v8;
  v16 = v6;
  [v12 restoreRemovedSystemApplicationWithBundleIdentifier:v16 completionBlock:v17];
}

void __46__SKUIJSITunesStore_restoreRemovedSystemApp::__block_invoke(uint64_t a1, char a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D69B38] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v23 = 138412802;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      v12 = v10;
      LODWORD(v17) = 32;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_11:

        goto LABEL_12;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:{4, &v23, v17}];
      free(v13);
      SSFileLog();
    }

    goto LABEL_11;
  }

LABEL_12:
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__SKUIJSITunesStore_restoreRemovedSystemApp::__block_invoke_235;
  v18[3] = &unk_2781F9E28;
  v14 = *(a1 + 48);
  v19 = *(a1 + 56);
  v22 = a2;
  v15 = *(a1 + 64);
  v16 = *(a1 + 32);
  v20 = v15;
  v21 = v16;
  [v14 evaluate:v18 completionBlock:0];
}

void __46__SKUIJSITunesStore_restoreRemovedSystemApp::__block_invoke_235(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v2 callWithArguments:v4];

  [*(a1 + 40) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 48)];
}

- (void)setApplicationIconBadgeNumber:(int64_t)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SKUIJSITunesStore_setApplicationIconBadgeNumber___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __51__SKUIJSITunesStore_setApplicationIconBadgeNumber___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 setApplicationIconBadgeNumber:*(a1 + 32)];
}

- (void)setPreviewOverlay:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKJSObject *)self appContext];
  if (v6 && [MEMORY[0x277D1B038] instancesRespondToSelector:sel_initWithAppContext_document_owner_])
  {
    v9 = [objc_alloc(MEMORY[0x277D1B038]) initWithAppContext:v8 document:v6 owner:self];
  }

  else
  {
    v9 = 0;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__SKUIJSITunesStore_setPreviewOverlay::__block_invoke;
  v12[3] = &unk_2781FAD00;
  v13 = v9;
  v14 = v7;
  v10 = v7;
  v11 = v9;
  [v8 evaluateDelegateBlockSync:v12];
}

void __40__SKUIJSITunesStore_setPreviewOverlay::__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 appContext:v4 setPreviewOverlayDocument:*(a1 + 32) withOptions:*(a1 + 40)];
  }
}

- (void)updateToggleStateForItem:(id)a3 toggled:(BOOL)a4 :(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[SKUIToggleStateCenter defaultCenter];
  v11 = [v10 itemForIdentifier:v9];
  [v11 setToggled:v5];
  [v10 updateItem:v11];
  v12 = [(IKJSObject *)self appContext];
  v13 = [MEMORY[0x277CD4650] managedValueWithValue:v8];
  v14 = [v8 context];

  v15 = [v14 virtualMachine];

  [v15 addManagedReference:v13 withOwner:self];
  v16 = objc_opt_new();
  [v16 setValue:v9 forKey:@"itemID"];

  if (v5)
  {
    v17 = MEMORY[0x277CBEC38];
  }

  else
  {
    v17 = MEMORY[0x277CBEC28];
  }

  [v16 setValue:v17 forKey:@"toggled"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __55__SKUIJSITunesStore_updateToggleStateForItem_toggled::__block_invoke;
  v21[3] = &unk_2781FABC8;
  v22 = v13;
  v23 = v16;
  v24 = v15;
  v25 = self;
  v18 = v15;
  v19 = v16;
  v20 = v13;
  [v12 evaluate:v21 completionBlock:0];
}

void __55__SKUIJSITunesStore_updateToggleStateForItem_toggled::__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 callWithArguments:v3];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)loadRentals:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];

  if (v4)
  {
    [(IKJSObject *)self setJSValue:v4 forProperty:v6];
  }

  v7 = [(IKJSObject *)self appContext];
  objc_initWeak(&location, v7);

  objc_initWeak(&from, self);
  v8 = [MEMORY[0x277CCABD8] mainQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__SKUIJSITunesStore_loadRentals___block_invoke;
  v10[3] = &unk_2781FAD50;
  v10[4] = self;
  objc_copyWeak(&v12, &location);
  objc_copyWeak(&v13, &from);
  v9 = v6;
  v11 = v9;
  [v8 addOperationWithBlock:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __33__SKUIJSITunesStore_loadRentals___block_invoke(id *a1)
{
  v2 = SKUIMediaPlayerFramework();
  v3 = [SKUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa v2)];
  v4 = SKUIMediaPlayerFramework();
  v5 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyRentalExpirationDate", v4);
  v6 = SKUIMediaPlayerFramework();
  v7 = SKUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v6);
  v8 = MEMORY[0x277CCABB0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = [v8 numberWithDouble:?];
  v10 = [v7 predicateWithValue:v9 forProperty:v5 comparisonType:101];
  [v3 addFilterPredicate:v10];

  v11 = [v3 items];
  if ([v11 count])
  {
    v12 = [a1[4] _rentalInfoFromMediaItems:v11];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __33__SKUIJSITunesStore_loadRentals___block_invoke_2;
  v15[3] = &unk_2781FAD28;
  objc_copyWeak(&v18, a1 + 7);
  v16 = a1[5];
  v14 = v12;
  v17 = v14;
  [WeakRetained evaluate:v15 completionBlock:0];

  objc_destroyWeak(&v18);
}

void __33__SKUIJSITunesStore_loadRentals___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained jsValueForProperty:*(a1 + 32)];
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v3 callWithArguments:v4];

  [WeakRetained setJSValue:0 forProperty:*(a1 + 32)];
}

- (void)loadRental:(id)a3 :(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];

  if (v7)
  {
    [(IKJSObject *)self setJSValue:v7 forProperty:v9];
  }

  v10 = [(IKJSObject *)self appContext];
  objc_initWeak(&location, v10);

  objc_initWeak(&from, self);
  v11 = [MEMORY[0x277CCABD8] mainQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__SKUIJSITunesStore_loadRental::__block_invoke;
  v14[3] = &unk_2781FAD78;
  v12 = v6;
  v15 = v12;
  v16 = self;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v13 = v9;
  v17 = v13;
  [v11 addOperationWithBlock:v14];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __33__SKUIJSITunesStore_loadRental::__block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = SKUIMediaPlayerFramework();
  v3 = [SKUIWeakLinkedClassForString(&cfstr_Mpmediaquery.isa v2)];
  v4 = SKUIMediaPlayerFramework();
  v5 = SKUIWeakLinkedClassForString(&cfstr_Mpmediapropert.isa, v4);
  v6 = SKUIMediaPlayerFramework();
  v7 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v6);
  v8 = [v5 predicateWithValue:*(a1 + 32) forProperty:v7];
  [v3 addFilterPredicate:v8];

  v9 = [v3 items];
  v10 = [v9 firstObject];
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = [v9 firstObject];
    v21[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v14 = [v11 _rentalInfoFromMediaItems:v13];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__SKUIJSITunesStore_loadRental::__block_invoke_2;
  v17[3] = &unk_2781FAD28;
  objc_copyWeak(&v20, (a1 + 64));
  v18 = *(a1 + 48);
  v16 = v14;
  v19 = v16;
  [WeakRetained evaluate:v17 completionBlock:0];

  objc_destroyWeak(&v20);
}

void __33__SKUIJSITunesStore_loadRental::__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained jsValueForProperty:*(a1 + 32)];
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [v3 callWithArguments:v4];

  [WeakRetained setJSValue:0 forProperty:*(a1 + 32)];
}

- (id)_rentalInfoFromMediaItems:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v66 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v84 objects:v88 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v85;
    v67 = *v85;
    do
    {
      v7 = 0;
      v68 = v5;
      do
      {
        if (*v85 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v84 + 1) + 8 * v7);
        if ([v8 isRental])
        {
          v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
          v10 = SKUIMediaPlayerFramework();
          v11 = *SKUIWeakLinkedSymbolForString("AVFileProcessorAttribute_RentalStartDate", v10);
          v12 = SKUIMediaPlayerFramework();
          v13 = *SKUIWeakLinkedSymbolForString("AVFileProcessorAttribute_RentalPeriod", v12);
          v14 = SKUIMediaPlayerFramework();
          v15 = *SKUIWeakLinkedSymbolForString("AVFileProcessorAttribute_RentalPlaybackStartDate", v14);
          v16 = SKUIMediaPlayerFramework();
          v83 = *SKUIWeakLinkedSymbolForString("AVFileProcessorAttribute_RentalPlaybackPeriod", v16);
          v17 = SKUIMediaPlayerFramework();
          v78 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyStoreID", v17);
          v18 = [v8 valueForProperty:?];
          v19 = [v18 stringValue];

          if (v19)
          {
            [v9 setObject:v19 forKey:@"item-id"];
          }

          v20 = SKUIMediaPlayerFramework();
          v76 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyFilePath", v20);
          v21 = [v8 valueForProperty:?];
          v22 = SKUIMediaPlayerFramework();
          v23 = [SKUIWeakLinkedClassForString(&cfstr_Mpstoredownloa.isa v22)];
          v24 = [v23 downloadForMediaItem:v8];

          v77 = v19;
          v74 = v24;
          v75 = v21;
          v81 = v13;
          v82 = v9;
          v79 = v15;
          v80 = v11;
          if ([v21 length])
          {
            v25 = SKUICelestialFramework();
            v26 = [SKUIWeakLinkedClassForString(&cfstr_Avfileprocesso_3.isa v25)];
            v27 = [v26 rentalInfo:v21];
          }

          else if (v24)
          {
            v27 = [v24 rentalInformation];
          }

          else
          {
            v28 = [MEMORY[0x277CBEB38] dictionary];
            v29 = SKUIMediaPlayerFramework();
            v30 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyRentalPlaybackStartTime", v29);
            v31 = SKUIMediaPlayerFramework();
            v32 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyRentalPlaybackDuration", v31);
            v33 = SKUIMediaPlayerFramework();
            v34 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyRentalStartTime", v33);
            v35 = SKUIMediaPlayerFramework();
            v36 = *SKUIWeakLinkedSymbolForString("MPMediaItemPropertyRentalDuration", v35);
            v72 = v30;
            v37 = [v8 valueForProperty:v30];
            if (([v37 isEqualToNumber:&unk_2828D2AE0] & 1) == 0)
            {
              v38 = MEMORY[0x277CBEAA8];
              [v37 doubleValue];
              v39 = [v38 dateWithTimeIntervalSinceReferenceDate:?];
              if (v39)
              {
                v40 = v39;
                [v28 setObject:v39 forKeyedSubscript:v15];
              }
            }

            v70 = v32;
            v41 = [v8 valueForProperty:v32];
            if (v41)
            {
              [v28 setObject:v41 forKeyedSubscript:v83];
            }

            v42 = [v8 valueForProperty:v34];
            if (([v42 isEqualToNumber:&unk_2828D2AE0] & 1) == 0)
            {
              v43 = MEMORY[0x277CBEAA8];
              [v42 doubleValue];
              v44 = [v43 dateWithTimeIntervalSinceReferenceDate:?];
              if (v44)
              {
                v45 = v44;
                [v28 setObject:v44 forKeyedSubscript:v80];
              }
            }

            v46 = [v8 valueForProperty:v36];
            if (v46)
            {
              [v28 setObject:v46 forKeyedSubscript:v81];
            }

            v47 = v28;
            v27 = [v28 copy];

            v11 = v80;
            v13 = v81;
            v15 = v79;
          }

          v48 = [v27 objectForKey:v11];
          v49 = [v27 objectForKey:v13];
          v50 = v49;
          v51 = 0;
          if (v48 && v49)
          {
            v52 = objc_alloc(MEMORY[0x277CBEAA8]);
            [v50 doubleValue];
            v51 = [v52 initWithTimeInterval:v48 sinceDate:?];
          }

          v71 = v50;
          v53 = [v27 objectForKey:v15];
          v54 = [v27 objectForKey:v83];
          v55 = v54;
          v56 = 0;
          if (v53 && v54)
          {
            v57 = objc_alloc(MEMORY[0x277CBEAA8]);
            [v55 doubleValue];
            v56 = [v57 initWithTimeInterval:v53 sinceDate:?];
          }

          v58 = [v27 objectForKey:@"expiration-date"];
          v59 = v58;
          v73 = v48;
          if (v51 && v56)
          {
            v60 = [v51 earlierDate:v56];
            if (!v60)
            {
              goto LABEL_41;
            }

LABEL_40:
            [v82 setObject:v60 forKey:@"expiration-date"];
          }

          else
          {
            if (v56)
            {
              v61 = v56;
            }

            else
            {
              v61 = v51;
            }

            if (v56 | v51 || (v61 = v58) != 0)
            {
              v60 = v61;
              goto LABEL_40;
            }

            v60 = 0;
          }

LABEL_41:
          v62 = [v8 title];
          if (v62)
          {
            [v82 setObject:v62 forKey:@"title"];
          }

          if ([v82 count])
          {
            [v66 addObject:v82];
          }

          v6 = v67;
          v5 = v68;
        }

        ++v7;
      }

      while (v5 != v7);
      v63 = [obj countByEnumeratingWithState:&v84 objects:v88 count:16];
      v5 = v63;
    }

    while (v63);
  }

  v64 = [v66 copy];

  return v64;
}

- (void)fetchTemplates:(id)a3 :(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [MEMORY[0x277CBEBC0] URLWithString:*(*(&v35 + 1) + 8 * v13)];
          if (!v14)
          {
            v25 = [v7 callWithArguments:&unk_2828D2F60];
            goto LABEL_12;
          }

          v15 = v14;
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v16 = [(IKJSObject *)self appContext];
    v17 = [MEMORY[0x277CD4650] managedValueWithValue:v7];
    v18 = [v7 context];
    v19 = [v18 virtualMachine];

    [v19 addManagedReference:v17 withOwner:self];
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __37__SKUIJSITunesStore_fetchTemplates::__block_invoke;
    v30 = &unk_2781FADC8;
    v31 = v16;
    v32 = v17;
    v33 = v19;
    v34 = self;
    v20 = v19;
    v21 = v17;
    v9 = v16;
    v22 = _Block_copy(&v27);
    v23 = [SKUITemplateLoader alloc];
    v24 = [(SKUITemplateLoader *)v23 initWithURLs:v8 completionBlock:v22, v27, v28, v29, v30];
    [(SKUITemplateLoader *)v24 load];

LABEL_12:
  }

  else
  {
    v26 = [v7 callWithArguments:&unk_2828D2F48];
  }
}

void __37__SKUIJSITunesStore_fetchTemplates::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__SKUIJSITunesStore_fetchTemplates::__block_invoke_2;
  v12[3] = &unk_2781FADA0;
  v13 = v6;
  v7 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v5;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v16 = v8;
  v17 = v9;
  v10 = v5;
  v11 = v6;
  [v7 evaluate:v12 completionBlock:0];
}

uint64_t __37__SKUIJSITunesStore_fetchTemplates::__block_invoke_2(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32) == 0;
  v3 = [*(a1 + 40) value];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:v2];
  v5 = *(a1 + 48);
  v9[0] = v4;
  v9[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7 = [v3 callWithArguments:v6];

  return [*(a1 + 56) removeManagedReference:*(a1 + 40) withOwner:*(a1 + 64)];
}

- (void)fetchMSOProviderStatus:(id)a3
{
  v4 = a3;
  v5 = [(IKJSObject *)self appContext];
  v6 = [MEMORY[0x277CD4650] managedValueWithValue:v4];
  v7 = [v4 context];

  v8 = [v7 virtualMachine];

  [v8 addManagedReference:v6 withOwner:self];
  v9 = SKUIVideoSubscriberAccountFramework();
  v10 = [SKUIWeakLinkedClassForString(&cfstr_Vsaccountchann.isa v9)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__SKUIJSITunesStore_fetchMSOProviderStatus___block_invoke;
  v14[3] = &unk_2781FADF0;
  v15 = v5;
  v16 = v6;
  v17 = v8;
  v18 = self;
  v11 = v8;
  v12 = v6;
  v13 = v5;
  [v10 fetchAccountChannelsWithCompletionHandler:v14];
}

void __44__SKUIJSITunesStore_fetchMSOProviderStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 adamID];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"providerId"];
  }

  v6 = [v3 channelIDs];
  v7 = [v6 allObjects];

  if (v7)
  {
    [v4 setObject:v7 forKey:@"providedAppTitles"];
  }

  v8 = [v3 providerInfo];
  if (v8)
  {
    [v4 setObject:v8 forKey:@"providerInfo"];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__SKUIJSITunesStore_fetchMSOProviderStatus___block_invoke_2;
  v13[3] = &unk_2781FABC8;
  v9 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v4;
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v16 = v10;
  v17 = v11;
  v12 = v4;
  [v9 evaluate:v13 completionBlock:0];
}

void __44__SKUIJSITunesStore_fetchMSOProviderStatus___block_invoke_2(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) value];
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v4 = [v2 callWithArguments:v3];

  [*(a1 + 48) removeManagedReference:*(a1 + 32) withOwner:*(a1 + 56)];
}

- (void)itemStateCenterMediaLibrariesDidChange:(id)a3
{
  v4 = [(IKJSObject *)self appContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SKUIJSITunesStore_itemStateCenterMediaLibrariesDidChange___block_invoke;
  v5[3] = &unk_2781FAE18;
  v5[4] = self;
  [v4 evaluate:v5 completionBlock:0];
}

- (void)_finishPurchaseForOptions:(id)a3 purchaseResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKJSObject *)self appContext];
  v9 = [v7 purchase];
  v10 = v9;
  if (v9)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__SKUIJSITunesStore__finishPurchaseForOptions_purchaseResponse___block_invoke;
    v17[3] = &unk_2781FAC18;
    v18 = v9;
    [v8 evaluateDelegateBlockSync:v17];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SKUIJSITunesStore__finishPurchaseForOptions_purchaseResponse___block_invoke_2;
  v13[3] = &unk_2781F9E78;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v11 = v7;
  v12 = v6;
  [v8 evaluate:v13 completionBlock:0];
}

void __64__SKUIJSITunesStore__finishPurchaseForOptions_purchaseResponse___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 appContext:v4 didCompletePurchase:*(a1 + 32)];
  }
}

void __64__SKUIJSITunesStore__finishPurchaseForOptions_purchaseResponse___block_invoke_2(uint64_t a1)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"options"];
  }

  v5 = [*(a1 + 40) error];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 0];
  [v3 setObject:v6 forKey:@"result"];

  v7 = [v5 domain];
  if ([v7 isEqualToString:*MEMORY[0x277D6A110]])
  {
    v8 = [v5 code] == 134;
  }

  else
  {

    v8 = 0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v3 setObject:v9 forKey:@"error"];

  v10 = [*(a1 + 40) responseMetrics];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v12 = v11;
  v25[0] = @"requestStartTime";
  v13 = *(a1 + 48);
  [*(a1 + 40) requestStartTime];
  v14 = [v13 _millisecondsFromTimeInterval:?];
  v26[0] = v14;
  v25[1] = @"responseStartTime";
  v15 = *(a1 + 48);
  [*(a1 + 40) responseStartTime];
  v16 = [v15 _millisecondsFromTimeInterval:?];
  v26[1] = v16;
  v25[2] = @"responseEndTime";
  v17 = *(a1 + 48);
  [*(a1 + 40) responseEndTime];
  v18 = [v17 _millisecondsFromTimeInterval:?];
  v26[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  [v12 setObject:v19 forKey:@"performanceMetrics"];
  v20 = [v12 copy];
  [v3 setObject:v20 forKey:@"metrics"];

  v21 = *(a1 + 48);
  v24 = v3;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v23 = [v21 invokeMethod:@"onBuy" withArguments:v22];
}

- (void)_finishSoftwarePurchaseForOptions:(id)a3 purchaseResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKJSObject *)self appContext];
  v9 = [v7 purchase];
  v10 = v9;
  if (v9)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __72__SKUIJSITunesStore__finishSoftwarePurchaseForOptions_purchaseResponse___block_invoke;
    v17[3] = &unk_2781FAC18;
    v18 = v9;
    [v8 evaluateDelegateBlockSync:v17];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SKUIJSITunesStore__finishSoftwarePurchaseForOptions_purchaseResponse___block_invoke_2;
  v13[3] = &unk_2781F9E78;
  v14 = v6;
  v15 = v7;
  v16 = self;
  v11 = v7;
  v12 = v6;
  [v8 evaluate:v13 completionBlock:0];
}

void __72__SKUIJSITunesStore__finishSoftwarePurchaseForOptions_purchaseResponse___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 appContext:v4 didCompleteSoftwarePurchase:*(a1 + 32)];
  }
}

void __72__SKUIJSITunesStore__finishSoftwarePurchaseForOptions_purchaseResponse___block_invoke_2(uint64_t a1)
{
  v26[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"options"];
  }

  v5 = [*(a1 + 40) error];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 0];
  [v3 setObject:v6 forKey:@"result"];

  v7 = [v5 domain];
  if ([v7 isEqualToString:*MEMORY[0x277D6A110]])
  {
    v8 = [v5 code] == 134;
  }

  else
  {

    v8 = 0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [v3 setObject:v9 forKey:@"error"];

  v10 = [*(a1 + 40) responseMetrics];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v10 mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v12 = v11;
  v25[0] = @"requestStartTime";
  v13 = *(a1 + 48);
  [*(a1 + 40) requestStartTime];
  v14 = [v13 _millisecondsFromTimeInterval:?];
  v26[0] = v14;
  v25[1] = @"responseStartTime";
  v15 = *(a1 + 48);
  [*(a1 + 40) responseStartTime];
  v16 = [v15 _millisecondsFromTimeInterval:?];
  v26[1] = v16;
  v25[2] = @"responseEndTime";
  v17 = *(a1 + 48);
  [*(a1 + 40) responseEndTime];
  v18 = [v17 _millisecondsFromTimeInterval:?];
  v26[2] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  [v12 setObject:v19 forKey:@"performanceMetrics"];
  v20 = [v12 copy];
  [v3 setObject:v20 forKey:@"metrics"];

  v21 = *(a1 + 48);
  v24 = v3;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v23 = [v21 invokeMethod:@"onBuy" withArguments:v22];
}

void __56__SKUIJSITunesStore__displayWifiConnectionRequiredAlert__block_invoke()
{
  v6 = objc_alloc_init(MEMORY[0x277D75118]);
  v0 = SKUIBundle();
  v1 = [v0 localizedStringForKey:@"PENDING_RENTAL_NETWORK_ERROR_MESSAGE_WIFI_ONLY" value:&stru_2827FFAC8 table:0];
  [v6 setMessage:v1];

  v2 = SKUIBundle();
  v3 = [v2 localizedStringForKey:@"PENDING_RENTAL_NETWORK_ERROR_TITLE_WIFI_ONLY" value:&stru_2827FFAC8 table:0];
  [v6 setTitle:v3];

  v4 = SKUIBundle();
  v5 = [v4 localizedStringForKey:@"OK" value:&stru_2827FFAC8 table:0];
  [v6 addButtonWithTitle:v5];

  [v6 show];
}

- (void)_purchaseRequestDidSucceedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:0x2827FFF88];

  v5 = v6;
  if (v6)
  {
    [(SKUIJSITunesStore *)self _finishPurchaseForOptions:0 purchaseResponse:v6];
    v5 = v6;
  }
}

- (void)initWithAppContext:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIJSITunesStore initWithAppContext:clientContext:]";
}

@end