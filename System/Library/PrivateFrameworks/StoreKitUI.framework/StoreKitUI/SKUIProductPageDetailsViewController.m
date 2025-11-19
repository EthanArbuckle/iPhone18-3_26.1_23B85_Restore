@interface SKUIProductPageDetailsViewController
+ (double)defaultPageWidthForUserInterfaceIdiom:(int64_t)a3;
- (SKUIProductPageChildViewControllerDelegate)delegate;
- (SKUIProductPageDetailsViewController)initWithProductPage:(id)a3;
- (UIScrollView)scrollView;
- (id)_bundledAppsSection;
- (id)_copyrightSection;
- (id)_descriptionSection;
- (id)_featuresSection;
- (id)_infoSection;
- (id)_parentBundlesSection;
- (id)_resourceLoader;
- (id)_screenshotsSection;
- (id)_storeNotesSection;
- (id)_tableViewController;
- (id)_textLayoutRequestWithText:(id)a3 widthOffset:(double)a4;
- (id)_whatsNewSection;
- (void)_addTapRecognizerForView:(id)a3 action:(SEL)a4;
- (void)_configureSwooshSection:(id)a3;
- (void)_expandSection:(id)a3;
- (void)dealloc;
- (void)itemStateCenterRestrictionsChanged:(id)a3;
- (void)loadView;
- (void)screenshotsWillBeginDragging:(id)a3;
- (void)setAskPermission:(BOOL)a3;
- (void)setClientContext:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHeaderViewController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SKUIProductPageDetailsViewController

- (SKUIProductPageDetailsViewController)initWithProductPage:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIProductPageDetailsViewController initWithProductPage:];
  }

  v10.receiver = self;
  v10.super_class = SKUIProductPageDetailsViewController;
  v6 = [(SKUIProductPageDetailsViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_productPage, a3);
    v8 = +[SKUIItemStateCenter defaultCenter];
    [v8 addObserver:v7];
  }

  return v7;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = +[SKUIItemStateCenter defaultCenter];
  [v3 removeObserver:self];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_sections;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setDelegate:0];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = SKUIProductPageDetailsViewController;
  [(SKUIProductPageDetailsViewController *)&v9 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIProductPageDetailsViewController;
  [(SKUIProductPageDetailsViewController *)&v4 viewDidAppear:a3];
  [(SKUIResourceLoader *)self->_resourceLoader enterForeground];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIProductPageDetailsViewController;
  [(SKUIProductPageDetailsViewController *)&v4 viewDidDisappear:a3];
  [(SKUIResourceLoader *)self->_resourceLoader enterBackground];
}

+ (double)defaultPageWidthForUserInterfaceIdiom:(int64_t)a3
{
  if (a3 == 1)
  {
    return 630.0;
  }

  if (!a3)
  {
    v3 = [MEMORY[0x277D75418] currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4)
    {
      return 320.0;
    }
  }

  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v5 = v7;

  return v5;
}

- (void)setClientContext:(id)a3
{
  v5 = a3;
  if (self->_clientContext != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_clientContext, a3);
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_DETAILS_TAB" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DETAILS_TAB" inBundles:0 inTable:@"ProductPage"];
    }
    v7 = ;
    [(SKUIProductPageDetailsViewController *)self setTitle:v7];

    v5 = v8;
  }
}

- (void)setAskPermission:(BOOL)a3
{
  if (self->_askPermission != a3)
  {
    self->_askPermission = a3;
    if ([(NSMutableArray *)self->_sections count])
    {
      if ([(NSMutableArray *)self->_sections count])
      {
        v4 = 0;
        do
        {
          v5 = [(NSMutableArray *)self->_sections objectAtIndex:v4];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v7 = [SKUIProductPageTableLinksSection alloc];
            v8 = [(SKUIProductPage *)self->_productPage item];
            v9 = [(SKUIProductPageTableLinksSection *)v7 initWithItem:v8 clientContext:self->_clientContext askPermission:self->_askPermission];

            v10 = [(SKUIProductPage *)self->_productPage uber];
            v11 = [v10 colorScheme];
            [(SKUIProductPageTableLinksSection *)v9 setColorScheme:v11];

            [(SKUITableViewSection *)v9 setSectionIndex:v4];
            [(NSMutableArray *)self->_sections replaceObjectAtIndex:v4 withObject:v9];
          }

          ++v4;
        }

        while (v4 < [(NSMutableArray *)self->_sections count]);
      }

      v12 = [MEMORY[0x277CBEB18] arrayWithArray:self->_sections];
      sections = self->_sections;
      self->_sections = v12;

      v14 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
      [v14 setSections:self->_sections];
    }
  }
}

- (void)loadView
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  v4 = [v3 tableView];
  if (![(NSMutableArray *)self->_sections count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = self->_sections;
    self->_sections = v6;

    v8 = objc_alloc_init(SKUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    v10 = [(SKUIProductPage *)self->_productPage uber];
    v64 = [v10 colorScheme];

    v11 = [(SKUIProductPage *)self->_productPage item];
    v12 = [(SKUIProductPageDetailsViewController *)self _storeNotesSection];
    v67 = v11;
    if (v12)
    {
      [v12 setStringIndex:{objc_msgSend(v5, "count")}];
      v13 = [v11 storeNotes];
      v14 = [v13 standardNotes];
      v15 = [(SKUIProductPageDetailsViewController *)self _textLayoutRequestWithText:v14 widthOffset:0.0];
      [v5 addObject:v15];

      v11 = v67;
      [v12 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v12];
    }

    v62 = v12;
    v16 = [(SKUIProductPageDetailsViewController *)self _bundledAppsSection];
    if (v16)
    {
      [v16 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v16];
    }

    v61 = v16;
    v17 = [(SKUIProductPageDetailsViewController *)self _parentBundlesSection];
    v18 = v64;
    if (v17)
    {
      [v17 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v17];
    }

    [(SKUIProductPageDetailsViewController *)self _screenshotsSection];
    v63 = v60 = v17;
    if (v63)
    {
      v19 = [v11 parentalControlsRank];
      v20 = +[SKUIItemStateCenter defaultCenter];
      v21 = [v20 parentalControlsRank];

      v22 = v19 < v21;
      v11 = v67;
      if (v22)
      {
        [v63 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
        [(NSMutableArray *)self->_sections addObject:v63];
      }
    }

    v23 = [(SKUIProductPageDetailsViewController *)self _descriptionSection];
    v66 = v23;
    if (v23)
    {
      [v23 setStringIndex:{objc_msgSend(v5, "count")}];
      v24 = [v11 itemDescription];
      v25 = [(SKUIProductPageDetailsViewController *)self _textLayoutRequestWithText:v24 widthOffset:0.0];
      [v5 addObject:v25];

      [v66 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v66];
    }

    v26 = [(SKUIProductPageDetailsViewController *)self _whatsNewSection];
    v65 = v26;
    if (v26)
    {
      [v26 setStringIndex:{objc_msgSend(v5, "count")}];
      v27 = [v11 updateDescription];
      v28 = [(SKUIProductPageDetailsViewController *)self _textLayoutRequestWithText:v27 widthOffset:0.0];
      [v5 addObject:v28];

      [v65 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v65];
    }

    v29 = [(SKUIProductPageDetailsViewController *)self _featuresSection];
    if (v29)
    {
      [v29 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v29];
    }

    v59 = v29;
    v30 = [(SKUIProductPageDetailsViewController *)self _infoSection];
    if (v30)
    {
      [v30 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v30];
    }

    v58 = v30;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v57 = v3;
      v31 = [v11 inAppPurchases];
      v32 = [v31 count];

      if (v32)
      {
        v33 = [SKUIProductPageTableInAppPurchasesSection alloc];
        v34 = [v11 inAppPurchases];
        v35 = [(SKUIProductPageTableInAppPurchasesSection *)v33 initWithInAppPurchases:v34 clientContext:self->_clientContext];

        [(SKUIProductPageTableInAppPurchasesSection *)v35 setColorScheme:v64];
        [(SKUITableViewSection *)v35 setSectionIndex:[(NSMutableArray *)self->_sections count]];
        v36 = [(SKUIProductPageTableInAppPurchasesSection *)v35 headerViewForTableView:v4];
        [(SKUIProductPageDetailsViewController *)self _addTapRecognizerForView:v36 action:sel__expandSection_];

        [(NSMutableArray *)self->_sections addObject:v35];
      }

      v56 = v4;
      v37 = [v11 releaseNotes];
      v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v39 = v37;
      v40 = [v39 countByEnumeratingWithState:&v68 objects:v72 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v69;
        do
        {
          for (i = 0; i != v41; ++i)
          {
            if (*v69 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = [*(*(&v68 + 1) + 8 * i) changeNotes];
            v45 = v44;
            if (v44)
            {
              v46 = v44;
            }

            else
            {
              v46 = &stru_2827FFAC8;
            }

            v47 = [(SKUIProductPageDetailsViewController *)self _textLayoutRequestWithText:v46 widthOffset:15.0];
            [v38 addObject:v47];
          }

          v41 = [v39 countByEnumeratingWithState:&v68 objects:v72 count:16];
        }

        while (v41);
      }

      v4 = v56;
      v18 = v64;
      if ([v39 count])
      {
        v48 = [[SKUIProductPageTableUpdateHistorySection alloc] initWithClientContext:self->_clientContext];
        v49 = [(SKUIProductPageTableUpdateHistorySection *)v48 headerViewForTableView:v56];
        [(SKUIProductPageDetailsViewController *)self _addTapRecognizerForView:v49 action:sel__expandSection_];

        [(SKUIProductPageTableUpdateHistorySection *)v48 setColorScheme:v64];
        -[SKUIProductPageTableUpdateHistorySection setFirstStringIndex:](v48, "setFirstStringIndex:", [v5 count]);
        [(SKUIProductPageTableUpdateHistorySection *)v48 setReleaseNotes:v39];
        [(SKUITableViewSection *)v48 setSectionIndex:[(NSMutableArray *)self->_sections count]];
        [(SKUIProductPageTableUpdateHistorySection *)v48 setTextLayoutCache:self->_textLayoutCache];
        v50 = [(SKUIProductPageTableUpdateHistorySection *)v48 headerViewForTableView:v56];
        [(SKUIProductPageDetailsViewController *)self _addTapRecognizerForView:v50 action:sel__expandSection_];

        [v5 addObjectsFromArray:v38];
        [(NSMutableArray *)self->_sections addObject:v48];
      }

      v3 = v57;
      v11 = v67;
    }

    v51 = [[SKUIProductPageTableLinksSection alloc] initWithItem:v11 clientContext:self->_clientContext askPermission:self->_askPermission];
    [(SKUIProductPageTableLinksSection *)v51 setColorScheme:v18];
    if ([(SKUIProductPageTableLinksSection *)v51 numberOfRowsInSection]>= 1)
    {
      [(SKUITableViewSection *)v51 setSectionIndex:[(NSMutableArray *)self->_sections count]];
      [(NSMutableArray *)self->_sections addObject:v51];
    }

    v52 = [(SKUIProductPageDetailsViewController *)self _copyrightSection];
    if (v52)
    {
      [v52 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v52];
    }

    [(SKUILayoutCache *)self->_textLayoutCache populateCacheWithLayoutRequests:v5];
    [v3 setTextLayoutCache:self->_textLayoutCache];
    [v3 setSections:self->_sections];
  }

  v53 = [v3 view];
  v54 = objc_alloc(MEMORY[0x277D75D18]);
  [v53 frame];
  v55 = [v54 initWithFrame:?];
  [v53 setAutoresizingMask:18];
  [v55 bounds];
  [v53 setFrame:?];
  [v55 addSubview:v53];
  [(SKUIProductPageDetailsViewController *)self setView:v55];
}

- (void)setHeaderViewController:(id)a3
{
  v4 = a3;
  v5 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  [v5 setHeaderViewController:v4];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  v5 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v5 setDelegate:WeakRetained];
}

- (UIScrollView)scrollView
{
  v2 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  v3 = [v2 tableView];

  return v3;
}

- (void)screenshotsWillBeginDragging:(id)a3
{
  if (!SKUIUserInterfaceIdiom(self->_clientContext))
  {
    v6 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
    v4 = [(SKUIProductPageDetailsViewController *)self _screenshotsSection];
    v5 = [v4 headerView];
    [v6 scrollToView:v5 animated:1];
  }
}

- (void)itemStateCenterRestrictionsChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SKUIProductPageDetailsViewController_itemStateCenterRestrictionsChanged___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __75__SKUIProductPageDetailsViewController_itemStateCenterRestrictionsChanged___block_invoke(uint64_t a1)
{
  v19 = [*(a1 + 32) _screenshotsSection];
  v3 = [*(a1 + 32) isViewLoaded] == 0;
  v2 = v19;
  v3 = v3 || v19 == 0;
  if (!v3)
  {
    v4 = [*(*(a1 + 32) + 1040) item];
    v5 = [v4 parentalControlsRank];
    v6 = +[SKUIItemStateCenter defaultCenter];
    v7 = [v6 parentalControlsRank];

    v8 = [*(*(a1 + 32) + 1064) indexOfObjectIdenticalTo:v19];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL || v5 < v7)
    {
      v10 = v8 == 0x7FFFFFFFFFFFFFFFLL && v5 < v7;
      v2 = v19;
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = *(a1 + 32);
      v12 = v11[133];
      v13 = [v11 _storeNotesSection];
      [v12 insertObject:v19 atIndex:v13 != 0];
    }

    else
    {
      [*(*(a1 + 32) + 1064) removeObjectIdenticalTo:v19];
    }

    if ([*(*(a1 + 32) + 1064) count])
    {
      v14 = 0;
      do
      {
        v15 = [*(*(a1 + 32) + 1064) objectAtIndex:v14];
        [v15 setSectionIndex:v14];

        ++v14;
      }

      while (v14 < [*(*(a1 + 32) + 1064) count]);
    }

    v16 = [*(a1 + 32) _tableViewController];
    [v16 setSections:*(*(a1 + 32) + 1064)];

    v17 = [*(a1 + 32) _tableViewController];
    v18 = [v17 tableView];
    [v18 reloadData];

    v2 = v19;
  }

LABEL_20:
}

- (void)_expandSection:(id)a3
{
  v4 = a3;
  v5 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  v6 = [v5 tableView];

  [v4 locationInView:v6];
  v8 = v7;
  v10 = v9;

  sections = self->_sections;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SKUIProductPageDetailsViewController__expandSection___block_invoke;
  v13[3] = &unk_2781FD3F0;
  v14 = v6;
  v15 = v8;
  v16 = v10;
  v12 = v6;
  [(NSMutableArray *)sections enumerateObjectsUsingBlock:v13];
}

uint64_t __55__SKUIProductPageDetailsViewController__expandSection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  [*(a1 + 32) rectForHeaderInSection:a3];
  v7 = CGRectContainsPoint(v15, *(a1 + 40));
  v8 = v13;
  if (v7)
  {
    v7 = [v13 isExpanded];
    if ((v7 & 1) == 0)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v13 setExpanded:1];
      if ([v13 numberOfRowsInSection] >= 1)
      {
        v10 = 0;
        do
        {
          v11 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:a3];
          [v9 addObject:v11];

          ++v10;
        }

        while (v10 < [v13 numberOfRowsInSection]);
      }

      [*(a1 + 32) insertRowsAtIndexPaths:v9 withRowAnimation:2];
    }

    *a4 = 1;
    v8 = v13;
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

- (void)_addTapRecognizerForView:(id)a3 action:(SEL)a4
{
  v6 = MEMORY[0x277D75B80];
  v7 = a3;
  v10 = [[v6 alloc] initWithTarget:self action:a4];
  v8 = [(SKUIProductPageTableViewController *)self->_tableViewController tableView];
  v9 = [v8 panGestureRecognizer];
  [v10 requireGestureRecognizerToFail:v9];

  [v7 addGestureRecognizer:v10];
}

- (id)_bundledAppsSection
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIProductPage *)self->_productPage item];
  if ([v3 itemKind] == 17)
  {
    v29 = self;
    v4 = [v3 childItemIdentifiers];
    v36 = 0uLL;
    v37 = 0;
    SKUILockupStyleDefault(&v36);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [v3 childItemForIdentifier:v11];
          v13 = [SKUILockupComponent alloc];
          v14 = v13;
          if (v12)
          {
            v30 = v36;
            v31 = v37;
            v15 = [(SKUILockupComponent *)v13 initWithItem:v12 style:&v30];
          }

          else
          {
            v16 = [v11 longLongValue];
            v30 = v36;
            v31 = v37;
            v15 = [(SKUILockupComponent *)v14 initWithItemIdentifier:v16 style:&v30];
          }

          v17 = v15;
          if (v15)
          {
            [v5 addObject:v15];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v8);
    }

    v18 = [v5 count];
    if (v18 < 1)
    {
      v22 = 0;
    }

    else
    {
      v19 = v18;
      v20 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v20 setNumberStyle:1];
      clientContext = v29->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_BUNDLED_APPS_%@" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_BUNDLED_APPS_%@" inBundles:0 inTable:@"ProductPage"];
      }
      v23 = ;
      v24 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
      v26 = [v20 stringFromNumber:v25];
      v27 = [v24 stringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:0, v26];

      v22 = [[SKUIProductPageTableSwooshSection alloc] initWithLockups:v5 title:v27];
      [(SKUIProductPageDetailsViewController *)v29 _configureSwooshSection:v22];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_configureSwooshSection:(id)a3
{
  v4 = a3;
  v5 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  v6 = [(SKUIProductPageDetailsViewController *)self clientContext];
  [v4 setClientContext:v6];

  v7 = [(SKUIProductPageDetailsViewController *)self _resourceLoader];
  [v4 setResourceLoader:v7];

  v8 = [(SKUIProductPage *)self->_productPage uber];
  v9 = [v8 colorScheme];

  if (!v9)
  {
    v9 = objc_alloc_init(SKUIColorScheme);
    v10 = [v5 tableView];
    v11 = [v10 backgroundColor];
    [(SKUIColorScheme *)v9 setBackgroundColor:v11];
  }

  [v4 setColorScheme:v9];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __64__SKUIProductPageDetailsViewController__configureSwooshSection___block_invoke;
  v16 = &unk_2781FD418;
  objc_copyWeak(&v17, &location);
  [v4 setActionBlock:&v13];
  v12 = [v4 swooshViewController];
  [v5 addChildViewController:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __64__SKUIProductPageDetailsViewController__configureSwooshSection___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(WeakRetained + 127);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(v4 + 127);
      [v7 productPageChildOpenItem:v8];
    }
  }
}

- (id)_copyrightSection
{
  copyrightSection = self->_copyrightSection;
  if (!copyrightSection)
  {
    v4 = [(SKUIProductPage *)self->_productPage item];
    v5 = [v4 copyrightString];

    if ([v5 length])
    {
      v6 = objc_alloc_init(SKUIProductPageCopyrightView);
      v7 = [(SKUIProductPage *)self->_productPage uber];
      v8 = [v7 colorScheme];
      [(SKUIProductPageCopyrightView *)v6 setColorScheme:v8];

      [(SKUIProductPageCopyrightView *)v6 setCopyrightString:v5];
      [(SKUIProductPageCopyrightView *)v6 frame];
      v10 = v9;
      v12 = v11;
      v13 = objc_opt_class();
      [v13 defaultPageWidthForUserInterfaceIdiom:SKUIUserInterfaceIdiom(self->_clientContext)];
      [(SKUIProductPageCopyrightView *)v6 sizeThatFits:?];
      [(SKUIProductPageCopyrightView *)v6 setFrame:v10, v12, v14, v15];
      v16 = objc_alloc_init(SKUIProductPageTableHeaderOnlySection);
      v17 = self->_copyrightSection;
      self->_copyrightSection = v16;

      [(SKUIProductPageTableHeaderOnlySection *)self->_copyrightSection setHeaderView:v6];
    }

    copyrightSection = self->_copyrightSection;
  }

  return copyrightSection;
}

- (id)_descriptionSection
{
  descriptionSection = self->_descriptionSection;
  if (!descriptionSection)
  {
    v4 = [(SKUIProductPage *)self->_productPage item];
    v5 = [v4 itemDescription];

    if (v5)
    {
      v6 = [[SKUIProductPageTableTextBoxSection alloc] initWithClientContext:self->_clientContext];
      v7 = self->_descriptionSection;
      self->_descriptionSection = v6;

      [(SKUIProductPageTableTextBoxSection *)self->_descriptionSection setTextLayoutCache:self->_textLayoutCache];
      v8 = self->_descriptionSection;
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_DESCRIPTION_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_DESCRIPTION_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v10 = ;
      [(SKUIProductPageTableTextBoxSection *)v8 setTitle:v10];

      v11 = self->_descriptionSection;
      v12 = [(SKUIProductPage *)self->_productPage uber];
      v13 = [v12 colorScheme];
      [(SKUIProductPageTableTextBoxSection *)v11 setColorScheme:v13];
    }

    descriptionSection = self->_descriptionSection;
  }

  return descriptionSection;
}

- (id)_featuresSection
{
  v3 = [(SKUIProductPage *)self->_productPage item];
  v4 = [v3 supportedFeatures];

  v5 = [(SKUIProductPage *)self->_productPage item];
  v6 = [v5 supportedGameCenterFeatures];

  if (v4)
  {
    v7 = objc_alloc_init(SKUIProductPageFeaturesView);
    [(SKUIProductPageFeaturesView *)v7 setClientContext:self->_clientContext];
    v8 = [(SKUIProductPage *)self->_productPage uber];
    v9 = [v8 colorScheme];
    [(SKUIProductPageFeaturesView *)v7 setColorScheme:v9];

    [(SKUIProductPageFeaturesView *)v7 setFeatures:v4 gameCenterFeatures:v6];
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_SUPPORTS_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_SUPPORTS_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v12 = ;
    [(SKUIProductPageFeaturesView *)v7 setTitle:v12];

    [(SKUIProductPageFeaturesView *)v7 frame];
    v14 = v13;
    v16 = v15;
    v17 = objc_opt_class();
    [v17 defaultPageWidthForUserInterfaceIdiom:SKUIUserInterfaceIdiom(self->_clientContext)];
    [(SKUIProductPageFeaturesView *)v7 sizeThatFits:?];
    [(SKUIProductPageFeaturesView *)v7 setFrame:v14, v16, v18, v19];
    v11 = objc_alloc_init(SKUIProductPageTableHeaderOnlySection);
    [(SKUIProductPageTableHeaderOnlySection *)v11 setHeaderView:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_infoSection
{
  v3 = [(SKUIProductPage *)self->_productPage item];
  v4 = [(SKUIProductPage *)self->_productPage productInformation];
  if (!v4)
  {
    if (v3)
    {
      v5 = [[SKUIProductPageInformationViewController alloc] initWithItem:v3 clientContext:self->_clientContext];
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v5 = [[SKUIProductPageInformationViewController alloc] initWithProductInformation:v4 clientContext:self->_clientContext];
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = [(SKUIProductPageDetailsViewController *)self operationQueue];
  [(SKUIProductPageInformationViewController *)v5 setOperationQueue:v6];

  v7 = [(SKUIProductPageInformationViewController *)v5 view];
  v8 = [(SKUIProductPage *)self->_productPage uber];
  v9 = [v8 colorScheme];
  [v7 setColorScheme:v9];

  v10 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  [v10 addChildViewController:v5];

  v11 = [(SKUIProductPageInformationViewController *)v5 view];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_class();
  [v16 defaultPageWidthForUserInterfaceIdiom:SKUIUserInterfaceIdiom(self->_clientContext)];
  v18 = v17;
  [v11 sizeThatFits:?];
  [v11 setFrame:{v13, v15, v18, v19}];
  v20 = objc_alloc_init(SKUIProductPageTableHeaderOnlySection);
  [(SKUIProductPageTableHeaderOnlySection *)v20 setHeaderView:v11];

LABEL_9:
  v21 = v20;

  return v20;
}

- (id)_parentBundlesSection
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIProductPage *)self->_productPage item];
  v4 = [v3 parentBundleItemIdentifiers];

  v26 = 0uLL;
  v27 = 0;
  if ([v4 count] == 1 && SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v27 = 466;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [SKUILockupComponent alloc];
        v13 = [v11 longLongValue];
        v20 = v26;
        v21 = v27;
        v14 = [(SKUILockupComponent *)v12 initWithItemIdentifier:v13 style:&v20];
        [v5 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_PARENT_BUNDLE_TITLE" inTable:@"ProductPage"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_PARENT_BUNDLE_TITLE" inBundles:0 inTable:@"ProductPage"];
  }
  v16 = ;
  if ([v5 count] == 1)
  {
    v17 = [[SKUIProductPageTableLockupsSection alloc] initWithLockups:v5 title:v16];
    [(SKUITableViewSection *)v17 setDelegate:self];
    v18 = [(SKUIProductPageDetailsViewController *)self _resourceLoader];
    [(SKUIProductPageTableLockupsSection *)v17 setResourceLoader:v18];
  }

  else if ([v5 count] < 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = [[SKUIProductPageTableSwooshSection alloc] initWithLockups:v5 title:v16];
    [(SKUIProductPageDetailsViewController *)self _configureSwooshSection:v17];
  }

  return v17;
}

- (id)_resourceLoader
{
  resourceLoader = self->_resourceLoader;
  if (!resourceLoader)
  {
    v4 = [SKUIResourceLoader alloc];
    v5 = [(SKUIProductPageDetailsViewController *)self clientContext];
    v6 = [(SKUIResourceLoader *)v4 initWithClientContext:v5];
    v7 = self->_resourceLoader;
    self->_resourceLoader = v6;

    v8 = self->_resourceLoader;
    v9 = SKUIResourceLoaderGetNameForObject(self);
    [(SKUIResourceLoader *)v8 setName:v9];

    resourceLoader = self->_resourceLoader;
  }

  return resourceLoader;
}

- (id)_screenshotsSection
{
  screenshotsSection = self->_screenshotsSection;
  if (!screenshotsSection)
  {
    v4 = [(SKUIProductPage *)self->_productPage item];
    v5 = [v4 screenshots];
    v6 = [v4 videos];
    if ([v5 count] || objc_msgSend(v6, "count"))
    {
      v7 = [SKUIScreenshotsViewController alloc];
      v8 = [(SKUIProductPageDetailsViewController *)self clientContext];
      v9 = [(SKUIScreenshotsViewController *)v7 initWithTrailers:v6 screenshots:v5 clientContext:v8];

      [(SKUIScreenshotsViewController *)v9 setDelegate:self];
      v10 = [(SKUIProductPageDetailsViewController *)self operationQueue];
      [(SKUIScreenshotsViewController *)v9 setOperationQueue:v10];

      v11 = [(SKUIProductPageDetailsViewController *)self _tableViewController];
      [v11 addChildViewController:v9];

      v12 = [(SKUIScreenshotsViewController *)v9 view];
      [v12 setAutoresizingMask:2];
      v13 = objc_alloc_init(SKUIProductPageTableHeaderOnlySection);
      v14 = self->_screenshotsSection;
      self->_screenshotsSection = v13;

      [(SKUIProductPageTableHeaderOnlySection *)self->_screenshotsSection setHeaderView:v12];
      [(SKUIScreenshotsViewController *)v9 reloadData];
    }

    screenshotsSection = self->_screenshotsSection;
  }

  return screenshotsSection;
}

- (id)_storeNotesSection
{
  storeNotesSection = self->_storeNotesSection;
  if (!storeNotesSection)
  {
    v4 = [(SKUIProductPage *)self->_productPage item];
    v5 = [v4 storeNotes];
    v6 = [v5 standardNotes];

    if (v6)
    {
      v7 = [[SKUIProductPageTableTextBoxSection alloc] initWithClientContext:self->_clientContext];
      v8 = self->_storeNotesSection;
      self->_storeNotesSection = v7;

      [(SKUIProductPageTableTextBoxSection *)self->_storeNotesSection setTextLayoutCache:self->_textLayoutCache];
      v9 = self->_storeNotesSection;
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_STORE_NOTES_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_STORE_NOTES_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v11 = ;
      [(SKUIProductPageTableTextBoxSection *)v9 setTitle:v11];

      v12 = self->_storeNotesSection;
      v13 = [(SKUIProductPage *)self->_productPage uber];
      v14 = [v13 colorScheme];
      [(SKUIProductPageTableTextBoxSection *)v12 setColorScheme:v14];
    }

    storeNotesSection = self->_storeNotesSection;
  }

  return storeNotesSection;
}

- (id)_tableViewController
{
  tableViewController = self->_tableViewController;
  if (!tableViewController)
  {
    v4 = objc_alloc_init(SKUIProductPageTableViewController);
    v5 = self->_tableViewController;
    self->_tableViewController = v4;

    [(SKUIProductPageTableViewController *)self->_tableViewController setClientContext:self->_clientContext];
    [(SKUIProductPageTableViewController *)self->_tableViewController setDelegateSender:self];
    v6 = self->_tableViewController;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [(SKUIProductPageTableViewController *)v6 setDelegate:WeakRetained];

    v8 = self->_tableViewController;
    v9 = [(SKUIProductPage *)self->_productPage uber];
    v10 = [v9 colorScheme];
    [(SKUIProductPageTableViewController *)v8 setColorScheme:v10];

    [(SKUIProductPageTableViewController *)self->_tableViewController setSections:self->_sections];
    [(SKUIProductPageTableViewController *)self->_tableViewController setTextLayoutCache:self->_textLayoutCache];
    [(SKUIProductPageDetailsViewController *)self addChildViewController:self->_tableViewController];
    tableViewController = self->_tableViewController;
  }

  return tableViewController;
}

- (id)_textLayoutRequestWithText:(id)a3 widthOffset:(double)a4
{
  v6 = a3;
  v7 = objc_alloc_init(SKUITextLayoutRequest);
  [(SKUITextLayoutRequest *)v7 setNumberOfLines:5];
  [(SKUITextLayoutRequest *)v7 setText:v6];

  v8 = objc_opt_class();
  [v8 defaultPageWidthForUserInterfaceIdiom:SKUIUserInterfaceIdiom(self->_clientContext)];
  [(SKUITextLayoutRequest *)v7 setWidth:v9 + -30.0 - a4];

  return v7;
}

- (id)_whatsNewSection
{
  whatsNewSection = self->_whatsNewSection;
  if (!whatsNewSection)
  {
    v4 = [(SKUIProductPage *)self->_productPage item];
    v5 = [v4 updateDescription];
    if (v5)
    {
      v6 = [[SKUIProductPageTableTextBoxSection alloc] initWithClientContext:self->_clientContext];
      v7 = self->_whatsNewSection;
      self->_whatsNewSection = v6;

      [(SKUIProductPageTableTextBoxSection *)self->_whatsNewSection setTextLayoutCache:self->_textLayoutCache];
      v8 = self->_whatsNewSection;
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_WHATS_NEW_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_WHATS_NEW_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v10 = ;
      [(SKUIProductPageTableTextBoxSection *)v8 setTitle:v10];

      v11 = self->_whatsNewSection;
      v12 = [(SKUIProductPage *)self->_productPage uber];
      v13 = [v12 colorScheme];
      [(SKUIProductPageTableTextBoxSection *)v11 setColorScheme:v13];

      v14 = [v4 lastUpdateDateString];
      if (v14)
      {
        [(SKUIProductPageTableTextBoxSection *)self->_whatsNewSection setSubtitle:v14];
      }
    }

    whatsNewSection = self->_whatsNewSection;
  }

  return whatsNewSection;
}

- (SKUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithProductPage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIProductPageDetailsViewController initWithProductPage:]";
}

@end