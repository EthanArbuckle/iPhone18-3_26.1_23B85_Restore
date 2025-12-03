@interface SKUIProductPageDetailsViewController
+ (double)defaultPageWidthForUserInterfaceIdiom:(int64_t)idiom;
- (SKUIProductPageChildViewControllerDelegate)delegate;
- (SKUIProductPageDetailsViewController)initWithProductPage:(id)page;
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
- (id)_textLayoutRequestWithText:(id)text widthOffset:(double)offset;
- (id)_whatsNewSection;
- (void)_addTapRecognizerForView:(id)view action:(SEL)action;
- (void)_configureSwooshSection:(id)section;
- (void)_expandSection:(id)section;
- (void)dealloc;
- (void)itemStateCenterRestrictionsChanged:(id)changed;
- (void)loadView;
- (void)screenshotsWillBeginDragging:(id)dragging;
- (void)setAskPermission:(BOOL)permission;
- (void)setClientContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)setHeaderViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation SKUIProductPageDetailsViewController

- (SKUIProductPageDetailsViewController)initWithProductPage:(id)page
{
  pageCopy = page;
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
    objc_storeStrong(&v6->_productPage, page);
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKUIProductPageDetailsViewController;
  [(SKUIProductPageDetailsViewController *)&v4 viewDidAppear:appear];
  [(SKUIResourceLoader *)self->_resourceLoader enterForeground];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SKUIProductPageDetailsViewController;
  [(SKUIProductPageDetailsViewController *)&v4 viewDidDisappear:disappear];
  [(SKUIResourceLoader *)self->_resourceLoader enterBackground];
}

+ (double)defaultPageWidthForUserInterfaceIdiom:(int64_t)idiom
{
  if (idiom == 1)
  {
    return 630.0;
  }

  if (!idiom)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      return 320.0;
    }
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v7;

  return v5;
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
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

    contextCopy = v8;
  }
}

- (void)setAskPermission:(BOOL)permission
{
  if (self->_askPermission != permission)
  {
    self->_askPermission = permission;
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
            item = [(SKUIProductPage *)self->_productPage item];
            v9 = [(SKUIProductPageTableLinksSection *)v7 initWithItem:item clientContext:self->_clientContext askPermission:self->_askPermission];

            uber = [(SKUIProductPage *)self->_productPage uber];
            colorScheme = [uber colorScheme];
            [(SKUIProductPageTableLinksSection *)v9 setColorScheme:colorScheme];

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

      _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
      [_tableViewController setSections:self->_sections];
    }
  }
}

- (void)loadView
{
  v73 = *MEMORY[0x277D85DE8];
  _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  tableView = [_tableViewController tableView];
  if (![(NSMutableArray *)self->_sections count])
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sections = self->_sections;
    self->_sections = v6;

    v8 = objc_alloc_init(SKUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    uber = [(SKUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];

    item = [(SKUIProductPage *)self->_productPage item];
    _storeNotesSection = [(SKUIProductPageDetailsViewController *)self _storeNotesSection];
    v67 = item;
    if (_storeNotesSection)
    {
      [_storeNotesSection setStringIndex:{objc_msgSend(v5, "count")}];
      storeNotes = [item storeNotes];
      standardNotes = [storeNotes standardNotes];
      v15 = [(SKUIProductPageDetailsViewController *)self _textLayoutRequestWithText:standardNotes widthOffset:0.0];
      [v5 addObject:v15];

      item = v67;
      [_storeNotesSection setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:_storeNotesSection];
    }

    v62 = _storeNotesSection;
    _bundledAppsSection = [(SKUIProductPageDetailsViewController *)self _bundledAppsSection];
    if (_bundledAppsSection)
    {
      [_bundledAppsSection setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:_bundledAppsSection];
    }

    v61 = _bundledAppsSection;
    _parentBundlesSection = [(SKUIProductPageDetailsViewController *)self _parentBundlesSection];
    v18 = colorScheme;
    if (_parentBundlesSection)
    {
      [_parentBundlesSection setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:_parentBundlesSection];
    }

    [(SKUIProductPageDetailsViewController *)self _screenshotsSection];
    v63 = v60 = _parentBundlesSection;
    if (v63)
    {
      parentalControlsRank = [item parentalControlsRank];
      v20 = +[SKUIItemStateCenter defaultCenter];
      parentalControlsRank2 = [v20 parentalControlsRank];

      v22 = parentalControlsRank < parentalControlsRank2;
      item = v67;
      if (v22)
      {
        [v63 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
        [(NSMutableArray *)self->_sections addObject:v63];
      }
    }

    _descriptionSection = [(SKUIProductPageDetailsViewController *)self _descriptionSection];
    v66 = _descriptionSection;
    if (_descriptionSection)
    {
      [_descriptionSection setStringIndex:{objc_msgSend(v5, "count")}];
      itemDescription = [item itemDescription];
      v25 = [(SKUIProductPageDetailsViewController *)self _textLayoutRequestWithText:itemDescription widthOffset:0.0];
      [v5 addObject:v25];

      [v66 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v66];
    }

    _whatsNewSection = [(SKUIProductPageDetailsViewController *)self _whatsNewSection];
    v65 = _whatsNewSection;
    if (_whatsNewSection)
    {
      [_whatsNewSection setStringIndex:{objc_msgSend(v5, "count")}];
      updateDescription = [item updateDescription];
      v28 = [(SKUIProductPageDetailsViewController *)self _textLayoutRequestWithText:updateDescription widthOffset:0.0];
      [v5 addObject:v28];

      [v65 setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:v65];
    }

    _featuresSection = [(SKUIProductPageDetailsViewController *)self _featuresSection];
    if (_featuresSection)
    {
      [_featuresSection setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:_featuresSection];
    }

    v59 = _featuresSection;
    _infoSection = [(SKUIProductPageDetailsViewController *)self _infoSection];
    if (_infoSection)
    {
      [_infoSection setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:_infoSection];
    }

    v58 = _infoSection;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v57 = _tableViewController;
      inAppPurchases = [item inAppPurchases];
      v32 = [inAppPurchases count];

      if (v32)
      {
        v33 = [SKUIProductPageTableInAppPurchasesSection alloc];
        inAppPurchases2 = [item inAppPurchases];
        v35 = [(SKUIProductPageTableInAppPurchasesSection *)v33 initWithInAppPurchases:inAppPurchases2 clientContext:self->_clientContext];

        [(SKUIProductPageTableInAppPurchasesSection *)v35 setColorScheme:colorScheme];
        [(SKUITableViewSection *)v35 setSectionIndex:[(NSMutableArray *)self->_sections count]];
        v36 = [(SKUIProductPageTableInAppPurchasesSection *)v35 headerViewForTableView:tableView];
        [(SKUIProductPageDetailsViewController *)self _addTapRecognizerForView:v36 action:sel__expandSection_];

        [(NSMutableArray *)self->_sections addObject:v35];
      }

      v56 = tableView;
      releaseNotes = [item releaseNotes];
      v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v39 = releaseNotes;
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

            changeNotes = [*(*(&v68 + 1) + 8 * i) changeNotes];
            v45 = changeNotes;
            if (changeNotes)
            {
              v46 = changeNotes;
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

      tableView = v56;
      v18 = colorScheme;
      if ([v39 count])
      {
        v48 = [[SKUIProductPageTableUpdateHistorySection alloc] initWithClientContext:self->_clientContext];
        v49 = [(SKUIProductPageTableUpdateHistorySection *)v48 headerViewForTableView:v56];
        [(SKUIProductPageDetailsViewController *)self _addTapRecognizerForView:v49 action:sel__expandSection_];

        [(SKUIProductPageTableUpdateHistorySection *)v48 setColorScheme:colorScheme];
        -[SKUIProductPageTableUpdateHistorySection setFirstStringIndex:](v48, "setFirstStringIndex:", [v5 count]);
        [(SKUIProductPageTableUpdateHistorySection *)v48 setReleaseNotes:v39];
        [(SKUITableViewSection *)v48 setSectionIndex:[(NSMutableArray *)self->_sections count]];
        [(SKUIProductPageTableUpdateHistorySection *)v48 setTextLayoutCache:self->_textLayoutCache];
        v50 = [(SKUIProductPageTableUpdateHistorySection *)v48 headerViewForTableView:v56];
        [(SKUIProductPageDetailsViewController *)self _addTapRecognizerForView:v50 action:sel__expandSection_];

        [v5 addObjectsFromArray:v38];
        [(NSMutableArray *)self->_sections addObject:v48];
      }

      _tableViewController = v57;
      item = v67;
    }

    v51 = [[SKUIProductPageTableLinksSection alloc] initWithItem:item clientContext:self->_clientContext askPermission:self->_askPermission];
    [(SKUIProductPageTableLinksSection *)v51 setColorScheme:v18];
    if ([(SKUIProductPageTableLinksSection *)v51 numberOfRowsInSection]>= 1)
    {
      [(SKUITableViewSection *)v51 setSectionIndex:[(NSMutableArray *)self->_sections count]];
      [(NSMutableArray *)self->_sections addObject:v51];
    }

    _copyrightSection = [(SKUIProductPageDetailsViewController *)self _copyrightSection];
    if (_copyrightSection)
    {
      [_copyrightSection setSectionIndex:{-[NSMutableArray count](self->_sections, "count")}];
      [(NSMutableArray *)self->_sections addObject:_copyrightSection];
    }

    [(SKUILayoutCache *)self->_textLayoutCache populateCacheWithLayoutRequests:v5];
    [_tableViewController setTextLayoutCache:self->_textLayoutCache];
    [_tableViewController setSections:self->_sections];
  }

  view = [_tableViewController view];
  v54 = objc_alloc(MEMORY[0x277D75D18]);
  [view frame];
  v55 = [v54 initWithFrame:?];
  [view setAutoresizingMask:18];
  [v55 bounds];
  [view setFrame:?];
  [v55 addSubview:view];
  [(SKUIProductPageDetailsViewController *)self setView:v55];
}

- (void)setHeaderViewController:(id)controller
{
  controllerCopy = controller;
  _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  [_tableViewController setHeaderViewController:controllerCopy];
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [_tableViewController setDelegate:WeakRetained];
}

- (UIScrollView)scrollView
{
  _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  tableView = [_tableViewController tableView];

  return tableView;
}

- (void)screenshotsWillBeginDragging:(id)dragging
{
  if (!SKUIUserInterfaceIdiom(self->_clientContext))
  {
    _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
    _screenshotsSection = [(SKUIProductPageDetailsViewController *)self _screenshotsSection];
    headerView = [_screenshotsSection headerView];
    [_tableViewController scrollToView:headerView animated:1];
  }
}

- (void)itemStateCenterRestrictionsChanged:(id)changed
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

- (void)_expandSection:(id)section
{
  sectionCopy = section;
  _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  tableView = [_tableViewController tableView];

  [sectionCopy locationInView:tableView];
  v8 = v7;
  v10 = v9;

  sections = self->_sections;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SKUIProductPageDetailsViewController__expandSection___block_invoke;
  v13[3] = &unk_2781FD3F0;
  v14 = tableView;
  v15 = v8;
  v16 = v10;
  v12 = tableView;
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

- (void)_addTapRecognizerForView:(id)view action:(SEL)action
{
  v6 = MEMORY[0x277D75B80];
  viewCopy = view;
  v10 = [[v6 alloc] initWithTarget:self action:action];
  tableView = [(SKUIProductPageTableViewController *)self->_tableViewController tableView];
  panGestureRecognizer = [tableView panGestureRecognizer];
  [v10 requireGestureRecognizerToFail:panGestureRecognizer];

  [viewCopy addGestureRecognizer:v10];
}

- (id)_bundledAppsSection
{
  v39 = *MEMORY[0x277D85DE8];
  item = [(SKUIProductPage *)self->_productPage item];
  if ([item itemKind] == 17)
  {
    selfCopy = self;
    childItemIdentifiers = [item childItemIdentifiers];
    v36 = 0uLL;
    v37 = 0;
    SKUILockupStyleDefault(&v36);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = childItemIdentifiers;
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
          v12 = [item childItemForIdentifier:v11];
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
            longLongValue = [v11 longLongValue];
            v30 = v36;
            v31 = v37;
            v15 = [(SKUILockupComponent *)v14 initWithItemIdentifier:longLongValue style:&v30];
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
      clientContext = selfCopy->_clientContext;
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
      [(SKUIProductPageDetailsViewController *)selfCopy _configureSwooshSection:v22];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)_configureSwooshSection:(id)section
{
  sectionCopy = section;
  _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  clientContext = [(SKUIProductPageDetailsViewController *)self clientContext];
  [sectionCopy setClientContext:clientContext];

  _resourceLoader = [(SKUIProductPageDetailsViewController *)self _resourceLoader];
  [sectionCopy setResourceLoader:_resourceLoader];

  uber = [(SKUIProductPage *)self->_productPage uber];
  colorScheme = [uber colorScheme];

  if (!colorScheme)
  {
    colorScheme = objc_alloc_init(SKUIColorScheme);
    tableView = [_tableViewController tableView];
    backgroundColor = [tableView backgroundColor];
    [(SKUIColorScheme *)colorScheme setBackgroundColor:backgroundColor];
  }

  [sectionCopy setColorScheme:colorScheme];
  objc_initWeak(&location, self);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __64__SKUIProductPageDetailsViewController__configureSwooshSection___block_invoke;
  v16 = &unk_2781FD418;
  objc_copyWeak(&v17, &location);
  [sectionCopy setActionBlock:&v13];
  swooshViewController = [sectionCopy swooshViewController];
  [_tableViewController addChildViewController:swooshViewController];

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
    item = [(SKUIProductPage *)self->_productPage item];
    copyrightString = [item copyrightString];

    if ([copyrightString length])
    {
      v6 = objc_alloc_init(SKUIProductPageCopyrightView);
      uber = [(SKUIProductPage *)self->_productPage uber];
      colorScheme = [uber colorScheme];
      [(SKUIProductPageCopyrightView *)v6 setColorScheme:colorScheme];

      [(SKUIProductPageCopyrightView *)v6 setCopyrightString:copyrightString];
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
    item = [(SKUIProductPage *)self->_productPage item];
    itemDescription = [item itemDescription];

    if (itemDescription)
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
      uber = [(SKUIProductPage *)self->_productPage uber];
      colorScheme = [uber colorScheme];
      [(SKUIProductPageTableTextBoxSection *)v11 setColorScheme:colorScheme];
    }

    descriptionSection = self->_descriptionSection;
  }

  return descriptionSection;
}

- (id)_featuresSection
{
  item = [(SKUIProductPage *)self->_productPage item];
  supportedFeatures = [item supportedFeatures];

  item2 = [(SKUIProductPage *)self->_productPage item];
  supportedGameCenterFeatures = [item2 supportedGameCenterFeatures];

  if (supportedFeatures)
  {
    v7 = objc_alloc_init(SKUIProductPageFeaturesView);
    [(SKUIProductPageFeaturesView *)v7 setClientContext:self->_clientContext];
    uber = [(SKUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SKUIProductPageFeaturesView *)v7 setColorScheme:colorScheme];

    [(SKUIProductPageFeaturesView *)v7 setFeatures:supportedFeatures gameCenterFeatures:supportedGameCenterFeatures];
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
  item = [(SKUIProductPage *)self->_productPage item];
  productInformation = [(SKUIProductPage *)self->_productPage productInformation];
  if (!productInformation)
  {
    if (item)
    {
      v5 = [[SKUIProductPageInformationViewController alloc] initWithItem:item clientContext:self->_clientContext];
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

  v5 = [[SKUIProductPageInformationViewController alloc] initWithProductInformation:productInformation clientContext:self->_clientContext];
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  operationQueue = [(SKUIProductPageDetailsViewController *)self operationQueue];
  [(SKUIProductPageInformationViewController *)v5 setOperationQueue:operationQueue];

  view = [(SKUIProductPageInformationViewController *)v5 view];
  uber = [(SKUIProductPage *)self->_productPage uber];
  colorScheme = [uber colorScheme];
  [view setColorScheme:colorScheme];

  _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
  [_tableViewController addChildViewController:v5];

  view2 = [(SKUIProductPageInformationViewController *)v5 view];
  [view2 frame];
  v13 = v12;
  v15 = v14;
  v16 = objc_opt_class();
  [v16 defaultPageWidthForUserInterfaceIdiom:SKUIUserInterfaceIdiom(self->_clientContext)];
  v18 = v17;
  [view2 sizeThatFits:?];
  [view2 setFrame:{v13, v15, v18, v19}];
  v20 = objc_alloc_init(SKUIProductPageTableHeaderOnlySection);
  [(SKUIProductPageTableHeaderOnlySection *)v20 setHeaderView:view2];

LABEL_9:
  v21 = v20;

  return v20;
}

- (id)_parentBundlesSection
{
  v29 = *MEMORY[0x277D85DE8];
  item = [(SKUIProductPage *)self->_productPage item];
  parentBundleItemIdentifiers = [item parentBundleItemIdentifiers];

  v26 = 0uLL;
  v27 = 0;
  if ([parentBundleItemIdentifiers count] == 1 && SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v27 = 466;
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = parentBundleItemIdentifiers;
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
        longLongValue = [v11 longLongValue];
        v20 = v26;
        v21 = v27;
        v14 = [(SKUILockupComponent *)v12 initWithItemIdentifier:longLongValue style:&v20];
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
    _resourceLoader = [(SKUIProductPageDetailsViewController *)self _resourceLoader];
    [(SKUIProductPageTableLockupsSection *)v17 setResourceLoader:_resourceLoader];
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
    clientContext = [(SKUIProductPageDetailsViewController *)self clientContext];
    v6 = [(SKUIResourceLoader *)v4 initWithClientContext:clientContext];
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
    item = [(SKUIProductPage *)self->_productPage item];
    screenshots = [item screenshots];
    videos = [item videos];
    if ([screenshots count] || objc_msgSend(videos, "count"))
    {
      v7 = [SKUIScreenshotsViewController alloc];
      clientContext = [(SKUIProductPageDetailsViewController *)self clientContext];
      v9 = [(SKUIScreenshotsViewController *)v7 initWithTrailers:videos screenshots:screenshots clientContext:clientContext];

      [(SKUIScreenshotsViewController *)v9 setDelegate:self];
      operationQueue = [(SKUIProductPageDetailsViewController *)self operationQueue];
      [(SKUIScreenshotsViewController *)v9 setOperationQueue:operationQueue];

      _tableViewController = [(SKUIProductPageDetailsViewController *)self _tableViewController];
      [_tableViewController addChildViewController:v9];

      view = [(SKUIScreenshotsViewController *)v9 view];
      [view setAutoresizingMask:2];
      v13 = objc_alloc_init(SKUIProductPageTableHeaderOnlySection);
      v14 = self->_screenshotsSection;
      self->_screenshotsSection = v13;

      [(SKUIProductPageTableHeaderOnlySection *)self->_screenshotsSection setHeaderView:view];
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
    item = [(SKUIProductPage *)self->_productPage item];
    storeNotes = [item storeNotes];
    standardNotes = [storeNotes standardNotes];

    if (standardNotes)
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
      uber = [(SKUIProductPage *)self->_productPage uber];
      colorScheme = [uber colorScheme];
      [(SKUIProductPageTableTextBoxSection *)v12 setColorScheme:colorScheme];
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
    uber = [(SKUIProductPage *)self->_productPage uber];
    colorScheme = [uber colorScheme];
    [(SKUIProductPageTableViewController *)v8 setColorScheme:colorScheme];

    [(SKUIProductPageTableViewController *)self->_tableViewController setSections:self->_sections];
    [(SKUIProductPageTableViewController *)self->_tableViewController setTextLayoutCache:self->_textLayoutCache];
    [(SKUIProductPageDetailsViewController *)self addChildViewController:self->_tableViewController];
    tableViewController = self->_tableViewController;
  }

  return tableViewController;
}

- (id)_textLayoutRequestWithText:(id)text widthOffset:(double)offset
{
  textCopy = text;
  v7 = objc_alloc_init(SKUITextLayoutRequest);
  [(SKUITextLayoutRequest *)v7 setNumberOfLines:5];
  [(SKUITextLayoutRequest *)v7 setText:textCopy];

  v8 = objc_opt_class();
  [v8 defaultPageWidthForUserInterfaceIdiom:SKUIUserInterfaceIdiom(self->_clientContext)];
  [(SKUITextLayoutRequest *)v7 setWidth:v9 + -30.0 - offset];

  return v7;
}

- (id)_whatsNewSection
{
  whatsNewSection = self->_whatsNewSection;
  if (!whatsNewSection)
  {
    item = [(SKUIProductPage *)self->_productPage item];
    updateDescription = [item updateDescription];
    if (updateDescription)
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
      uber = [(SKUIProductPage *)self->_productPage uber];
      colorScheme = [uber colorScheme];
      [(SKUIProductPageTableTextBoxSection *)v11 setColorScheme:colorScheme];

      lastUpdateDateString = [item lastUpdateDateString];
      if (lastUpdateDateString)
      {
        [(SKUIProductPageTableTextBoxSection *)self->_whatsNewSection setSubtitle:lastUpdateDateString];
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