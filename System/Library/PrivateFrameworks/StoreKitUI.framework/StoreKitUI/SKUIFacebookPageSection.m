@interface SKUIFacebookPageSection
- (CGSize)cellSizeForIndexPath:(id)a3;
- (SKUIFacebookPageSection)initWithPageComponent:(id)a3;
- (id)_accountStore;
- (id)_facebookView;
- (id)cellForIndexPath:(id)a3;
- (int64_t)_facebookAccountsExist;
- (int64_t)applyUpdateType:(int64_t)a3;
- (void)_accountStoreDidChangeNotification:(id)a3;
- (void)_applyColorSchemeToFacebookView:(id)a3;
- (void)_changeStatusToUserLiked:(BOOL)a3;
- (void)_finishLookupWithStatus:(id)a3 error:(id)a4;
- (void)_reloadCollectionViewSection;
- (void)_reloadLikeStatus;
- (void)_resetState;
- (void)_toggleLikeAction:(id)a3;
- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3;
- (void)dealloc;
- (void)willAppearInContext:(id)a3;
@end

@implementation SKUIFacebookPageSection

- (SKUIFacebookPageSection)initWithPageComponent:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIFacebookPageSection initWithPageComponent:];
  }

  v8.receiver = self;
  v8.super_class = SKUIFacebookPageSection;
  v5 = [(SKUIStorePageSection *)&v8 initWithPageComponent:v4];
  v6 = v5;
  if (v5)
  {
    v5->_facebookAccountsExist = -1;
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SKUIAccountsFramework();
  [v3 removeObserver:self name:*SKUIWeakLinkedSymbolForString("ACAccountStoreDidChangeNotification" object:{v4), 0}];

  v5 = [(SKUIReviewsFacebookView *)self->_facebookView likeToggleButton];
  [v5 removeTarget:self action:0 forControlEvents:64];

  v6.receiver = self;
  v6.super_class = SKUIFacebookPageSection;
  [(SKUIStorePageSection *)&v6 dealloc];
}

- (void)addImpressionsForIndexPath:(id)a3 toSession:(id)a4
{
  v5 = a4;
  v7 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v7 viewElement];
  [v5 addItemViewElement:v6];
}

- (int64_t)applyUpdateType:(int64_t)a3
{
  if (a3 != 2)
  {
    [(SKUIFacebookPageSection *)self _applyColorSchemeToFacebookView:self->_facebookView];
  }

  return a3;
}

- (id)cellForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self context];
  v6 = [v5 collectionView];
  v7 = [v6 dequeueReusableCellWithReuseIdentifier:@"SKUIFacebookPageSectionReuseIdentifier" forIndexPath:v4];

  v8 = [(SKUIFacebookPageSection *)self _facebookView];
  [v7 setContentChildView:v8];

  [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)a3
{
  v4 = [(SKUIStorePageSection *)self context];
  [v4 activePageWidth];
  v6 = v5;

  v7 = [(SKUIFacebookPageSection *)self _facebookView];
  v8 = v7;
  if (v7)
  {
    [v7 sizeThatFits:{v6, *(MEMORY[0x277CBF3A8] + 8)}];
    v10 = v9;
  }

  else
  {
    *&v10 = 79.0;
  }

  v11 = v6;
  v12 = *&v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 beginActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SKUIFacebookPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:v4];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SKUIStorePageSection *)self pageComponent];
  v6 = [v5 viewElement];

  v7 = [(SKUIStorePageSection *)self context];
  v8 = [v7 activeMetricsImpressionSession];
  [v8 endActiveImpressionForViewElement:v6];

  v9.receiver = self;
  v9.super_class = SKUIFacebookPageSection;
  [(SKUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:v4];
}

- (void)willAppearInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 collectionView];
  [v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SKUIFacebookPageSectionReuseIdentifier"];
  v6 = self->_layoutContext;
  v7 = [[SKUIViewElementLayoutContext alloc] initWithStorePageSectionContext:v4 previousLayoutContext:v6];
  layoutContext = self->_layoutContext;
  self->_layoutContext = v7;

  [(SKUIFacebookPageSection *)self _applyColorSchemeToFacebookView:self->_facebookView];
  [(SKUIFacebookPageSection *)self _reloadLikeStatus];
  v9.receiver = self;
  v9.super_class = SKUIFacebookPageSection;
  [(SKUIStorePageSection *)&v9 willAppearInContext:v4];
}

- (void)_toggleLikeAction:(id)a3
{
  v4 = a3;
  v5 = [(SKUIFacebookLikeStatus *)self->_likeStatus isUserLiked];
  v6 = v5;
  [(SKUIFacebookPageSection *)self _changeStatusToUserLiked:!v5];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__SKUIFacebookPageSection__toggleLikeAction___block_invoke;
  aBlock[3] = &unk_2781FDE28;
  objc_copyWeak(&v14, &location);
  v15 = v6;
  v7 = _Block_copy(aBlock);
  v8 = SKUISocialFramework();
  v9 = [SKUIWeakLinkedClassForString(&cfstr_Slfacebooksess.isa v8)];
  v10 = [(SKUIFacebookLikeStatus *)self->_likeStatus isUserLiked];
  likeStatus = self->_likeStatus;
  if (v10)
  {
    v12 = [(SKUIFacebookLikeStatus *)likeStatus URL];
    [v9 likeURL:v12 completion:v7];
  }

  else
  {
    v12 = [(SKUIFacebookLikeStatus *)likeStatus URL];
    [v9 unlikeURL:v12 completion:v7];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __45__SKUIFacebookPageSection__toggleLikeAction___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __45__SKUIFacebookPageSection__toggleLikeAction___block_invoke_2;
    v3[3] = &unk_2781FDE00;
    objc_copyWeak(&v4, (a1 + 32));
    v5 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v3);
    objc_destroyWeak(&v4);
  }
}

void __45__SKUIFacebookPageSection__toggleLikeAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _changeStatusToUserLiked:(*(a1 + 40) & 1) == 0];
}

- (void)_accountStoreDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SKUIFacebookPageSection__accountStoreDidChangeNotification___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __62__SKUIFacebookPageSection__accountStoreDidChangeNotification___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 96);
  if (v2 != -1)
  {
    v3 = result;
    *(v1 + 96) = -1;
    v4 = [*(result + 32) _facebookAccountsExist];
    result = *(v3 + 32);
    if (v4 == v2)
    {
      if ((*(result + 112) & 1) == 0)
      {
        [result _resetState];
        v6 = *(v3 + 32);

        return [v6 _reloadLikeStatus];
      }
    }

    else
    {
      [result _resetState];
      v5 = *(v3 + 32);

      return [v5 _reloadCollectionViewSection];
    }
  }

  return result;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = SKUIAccountsFramework();
    v5 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Acaccountstore.isa, v4));
    v6 = self->_accountStore;
    self->_accountStore = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = SKUIAccountsFramework();
    [v7 addObserver:self selector:sel__accountStoreDidChangeNotification_ name:*SKUIWeakLinkedSymbolForString("ACAccountStoreDidChangeNotification" object:{v8), 0}];

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (void)_applyColorSchemeToFacebookView:(id)a3
{
  if (a3)
  {
    v4 = [(SKUIStorePageSection *)self pageComponent];
    v5 = [v4 viewElement];
    v12 = [v5 style];

    if (v12)
    {
      v6 = objc_alloc_init(SKUIColorScheme);
      v7 = [(SKUIViewElementLayoutContext *)self->_layoutContext tintColor];
      v8 = SKUIViewElementPlainColorWithStyle(v12, v7);

      [(SKUIColorScheme *)v6 setPrimaryTextColor:v8];
      [(SKUIColorScheme *)v6 setSecondaryTextColor:v8];
      facebookView = self->_facebookView;
      v10 = v6;
    }

    else
    {
      v6 = [(SKUIStorePageSection *)self context];
      v11 = self->_facebookView;
      v8 = [(SKUIColorScheme *)v6 colorScheme];
      facebookView = v11;
      v10 = v8;
    }

    [(SKUIReviewsFacebookView *)facebookView setColorScheme:v10];
  }
}

- (void)_changeStatusToUserLiked:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIFacebookLikeStatus *)self->_likeStatus copy];
  [(SKUIFacebookLikeStatus *)v5 setUserLiked:v3];
  likeStatus = self->_likeStatus;
  self->_likeStatus = v5;
  v7 = v5;

  [(SKUIReviewsFacebookView *)self->_facebookView setUserLiked:v3];

  [(SKUIFacebookPageSection *)self _reloadCollectionViewSection];
}

- (int64_t)_facebookAccountsExist
{
  facebookAccountsExist = self->_facebookAccountsExist;
  if (facebookAccountsExist == 255)
  {
    v4 = [(SKUIFacebookPageSection *)self _accountStore];
    v5 = objc_opt_class();
    v6 = SKUIAccountsFramework();
    self->_facebookAccountsExist = [v5 accountsWithAccountTypeIdentifierExist:{*SKUIWeakLinkedSymbolForString("ACAccountTypeIdentifierFacebook", v6)}] != 0;

    LOBYTE(facebookAccountsExist) = self->_facebookAccountsExist;
  }

  return facebookAccountsExist;
}

- (id)_facebookView
{
  facebookView = self->_facebookView;
  if (!facebookView)
  {
    if (self->_likeStatus)
    {
      v4 = [(SKUIStorePageSection *)self context];
      v5 = [SKUIReviewsFacebookView alloc];
      v6 = [v4 clientContext];
      v7 = [(SKUIReviewsFacebookView *)v5 initWithClientContext:v6];
      v8 = self->_facebookView;
      self->_facebookView = v7;

      v9 = [(SKUIReviewsFacebookView *)self->_facebookView likeToggleButton];
      [v9 addTarget:self action:sel__toggleLikeAction_ forControlEvents:64];

      v10 = self->_facebookView;
      v11 = [(SKUIFacebookLikeStatus *)self->_likeStatus friendNames];
      [(SKUIReviewsFacebookView *)v10 setFriendNames:v11];

      [(SKUIReviewsFacebookView *)self->_facebookView setUserLiked:[(SKUIFacebookLikeStatus *)self->_likeStatus isUserLiked]];
      [(SKUIFacebookPageSection *)self _applyColorSchemeToFacebookView:self->_facebookView];

      facebookView = self->_facebookView;
    }

    else
    {
      facebookView = 0;
    }
  }

  return facebookView;
}

- (void)_finishLookupWithStatus:(id)a3 error:(id)a4
{
  v13 = a3;
  self->_isLoadingLikeStatus = 0;
  objc_storeStrong(&self->_likeStatus, a3);
  if (self->_likeStatus)
  {
    v6 = [(SKUIStorePageSection *)self context];
    v7 = [v6 collectionView];
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = [v7 cellForItemAtIndexPath:v8];

    facebookView = self->_facebookView;
    if (facebookView)
    {
      v11 = [(SKUIFacebookLikeStatus *)self->_likeStatus friendNames];
      [(SKUIReviewsFacebookView *)facebookView setFriendNames:v11];

      [(SKUIReviewsFacebookView *)self->_facebookView setUserLiked:[(SKUIFacebookLikeStatus *)self->_likeStatus isUserLiked]];
    }

    else if (v9)
    {
      v12 = [(SKUIFacebookPageSection *)self _facebookView];
      [v9 setContentChildView:v12];
    }

    else
    {
      [(SKUIFacebookPageSection *)self _reloadCollectionViewSection];
    }
  }

  else if (self->_facebookAccountsExist == 1)
  {
    self->_facebookAccountsExist = 0;
    [(SKUIFacebookPageSection *)self _reloadCollectionViewSection];
  }
}

- (void)_reloadCollectionViewSection
{
  v3 = [MEMORY[0x277D75D18] areAnimationsEnabled];
  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  v4 = [(SKUIStorePageSection *)self context];
  v5 = [v4 collectionView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [v5 reloadSections:v6];

  v7 = MEMORY[0x277D75D18];

  [v7 setAnimationsEnabled:v3];
}

- (void)_reloadLikeStatus
{
  v3 = [(SKUIStorePageSection *)self pageComponent];
  v4 = [v3 viewElement];
  v5 = [v4 URLString];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
    objc_initWeak(&location, self);
    v7 = SKUISocialFramework();
    v8 = [SKUIWeakLinkedClassForString(&cfstr_Slfacebooksess.isa v7)];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__SKUIFacebookPageSection__reloadLikeStatus__block_invoke;
    v10[3] = &unk_2781FFF78;
    v9 = v6;
    v11 = v9;
    objc_copyWeak(&v12, &location);
    [v8 fetchLikeStatusForURL:v9 flags:9 completion:v10];
    self->_isLoadingLikeStatus = 1;
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

void __44__SKUIFacebookPageSection__reloadLikeStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SKUIFacebookPageSection__reloadLikeStatus__block_invoke_2;
  v9[3] = &unk_2781FB040;
  v10 = v5;
  v11 = *(a1 + 32);
  v7 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v12 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __44__SKUIFacebookPageSection__reloadLikeStatus__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [[SKUIFacebookLikeStatus alloc] initWithURL:*(a1 + 40) likeStatusDictionary:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishLookupWithStatus:v3 error:*(a1 + 48)];
}

- (void)_resetState
{
  v3 = [(SKUIStorePageSection *)self context];
  v4 = [v3 collectionView];
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SKUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v9 = [v4 cellForItemAtIndexPath:v5];

  [v9 setContentChildView:0];
  v6 = [(SKUIReviewsFacebookView *)self->_facebookView likeToggleButton];
  [v6 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  facebookView = self->_facebookView;
  self->_facebookView = 0;

  likeStatus = self->_likeStatus;
  self->_likeStatus = 0;
}

- (void)initWithPageComponent:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIFacebookPageSection initWithPageComponent:]";
}

@end