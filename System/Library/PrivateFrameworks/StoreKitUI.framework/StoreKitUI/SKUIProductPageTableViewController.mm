@interface SKUIProductPageTableViewController
- (SKUIProductPageChildViewController)delegateSender;
- (SKUIProductPageChildViewControllerDelegate)delegate;
- (SKUIProductPageTableViewController)initWithInAppPurchases:(id)a3 clientContext:(id)a4;
- (SKUIProductPageTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SKUIProductPageTableViewController)initWithReleaseNotes:(id)a3 clientContext:(id)a4;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_tableView;
- (id)_textLayoutRequestWithText:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addHeaderView;
- (void)dealloc;
- (void)loadView;
- (void)scrollToView:(id)a3 animated:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setColorScheme:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHeaderViewController:(id)a3;
- (void)setSections:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SKUIProductPageTableViewController

- (SKUIProductPageTableViewController)initWithInAppPurchases:(id)a3 clientContext:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIProductPageTableViewController *)v8 initWithInAppPurchases:v9 clientContext:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUIProductPageTableViewController;
  v16 = [(SKUIProductPageTableViewController *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_clientContext, a4);
    clientContext = v17->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_IN_APPS_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v19 = ;
    [(SKUIProductPageTableViewController *)v17 setTitle:v19];

    v20 = [[SKUIProductPageTableInAppPurchasesSection alloc] initWithInAppPurchases:v6 clientContext:v7];
    [(SKUIProductPageTableInAppPurchasesSection *)v20 setExpanded:1];
    [(SKUITableViewSection *)v20 setHidesHeaderView:1];
    v24[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [(SKUIProductPageTableViewController *)v17 setSections:v21];
  }

  return v17;
}

- (SKUIProductPageTableViewController)initWithReleaseNotes:(id)a3 clientContext:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIProductPageTableViewController *)v8 initWithReleaseNotes:v9 clientContext:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v40.receiver = self;
  v40.super_class = SKUIProductPageTableViewController;
  v16 = [(SKUIProductPageTableViewController *)&v40 init];
  if (v16)
  {
    if ([v6 count])
    {
      objc_storeStrong(&v16->_clientContext, a4);
      clientContext = v16->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"PRODUCT_PAGE_UPDATE_HISTORY_TITLE" inBundles:0 inTable:@"ProductPage"];
      }
      v19 = ;
      [(SKUIProductPageTableViewController *)v16 setTitle:v19, v7];

      v18 = [[SKUIProductPageTableUpdateHistorySection alloc] initWithClientContext:v16->_clientContext];
      [(SKUIProductPageTableUpdateHistorySection *)v18 setExpanded:1];
      [(SKUITableViewSection *)v18 setHidesHeaderView:1];
      [(SKUIProductPageTableUpdateHistorySection *)v18 setReleaseNotes:v6];
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v35 = v6;
      v21 = v6;
      v22 = [v21 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v36 + 1) + 8 * i) changeNotes];
            v27 = v26;
            if (v26)
            {
              v28 = v26;
            }

            else
            {
              v28 = &stru_2827FFAC8;
            }

            v29 = [(SKUIProductPageTableViewController *)v16 _textLayoutRequestWithText:v28];
            [v20 addObject:v29];
          }

          v23 = [v21 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v23);
      }

      v30 = objc_alloc_init(SKUILayoutCache);
      textLayoutCache = v16->_textLayoutCache;
      v16->_textLayoutCache = v30;

      [(SKUILayoutCache *)v16->_textLayoutCache populateCacheWithLayoutRequests:v20];
      [(SKUIProductPageTableUpdateHistorySection *)v18 setTextLayoutCache:v16->_textLayoutCache];
      [(SKUIProductPageTableViewController *)v16 setTextLayoutCache:v16->_textLayoutCache];
      v41 = v18;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      [(SKUIProductPageTableViewController *)v16 setSections:v32];

      v7 = v34;
      v6 = v35;
    }

    else
    {
      v18 = v16;
      v16 = 0;
    }
  }

  return v16;
}

- (SKUIProductPageTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIProductPageTableViewController *)v8 initWithNibName:v9 bundle:v10, v11, v12, v13, v14, v15];
      }
    }
  }

  v20.receiver = self;
  v20.super_class = SKUIProductPageTableViewController;
  v16 = [(SKUIProductPageTableViewController *)&v20 initWithNibName:v6 bundle:v7];
  if (v16)
  {
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    color = v16->_color;
    v16->_color = v17;
  }

  return v16;
}

- (void)dealloc
{
  [(SKUIProductPageTableView *)self->_tableView setDataSource:0];
  [(SKUIProductPageTableView *)self->_tableView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUIProductPageTableViewController;
  [(SKUIProductPageTableViewController *)&v3 dealloc];
}

- (void)scrollToView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 topContentOffset];
    v9 = v8;
    v11 = v10;

    [v13 bounds];
    [v13 convertPoint:self->_tableView toView:?];
    [(SKUIProductPageTableView *)self->_tableView setContentOffset:v4 animated:v9, v11 + v12];
  }
}

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    v6 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    v7 = v6;
    if (!v6)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    }

    objc_storeStrong(&self->_color, v7);
    if (!v6)
    {
    }

    tableView = self->_tableView;
    v9 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    if (v9)
    {
      [(SKUIProductPageTableView *)tableView setBackgroundColor:v9];
    }

    else
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SKUIProductPageTableView *)tableView setBackgroundColor:v10];
    }

    v5 = v11;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    v5 = obj;
    if (self->_tableView)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_loadWeakRetained(&self->_delegateSender);
      [v6 productPageChildViewControllerDidLoadScrollView:v7];

      v5 = obj;
    }
  }
}

- (void)setHeaderViewController:(id)a3
{
  v6 = a3;
  if (self->_headerViewController != v6)
  {
    [(SKUIProductPageTableView *)self->_tableView setProductPageHeaderView:0];
    v5 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
    [v5 removeFromSuperview];

    [(SKUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, a3);
    if (self->_headerViewController)
    {
      [(SKUIProductPageTableViewController *)self addChildViewController:?];
      if (self->_tableView)
      {
        [(SKUIProductPageTableViewController *)self _addHeaderView];
      }
    }
  }
}

- (void)setSections:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_sections != a3)
  {
    v4 = [a3 copy];
    sections = self->_sections;
    self->_sections = v4;

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_sections;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setClientContext:{self->_clientContext, v11}];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)loadView
{
  v3 = [(SKUIProductPageTableViewController *)self _tableView];
  [(SKUIProductPageTableViewController *)self setView:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIProductPageTableView *)self->_tableView indexPathForSelectedRow];
  if (v5)
  {
    [(SKUIProductPageTableView *)self->_tableView deselectRowAtIndexPath:v5 animated:v3];
  }

  v6.receiver = self;
  v6.super_class = SKUIProductPageTableViewController;
  [(SKUIProductPageTableViewController *)&v6 viewWillAppear:v3];
}

- (void)scrollViewDidScroll:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_loadWeakRetained(&self->_delegateSender);
  [WeakRetained productPageChildViewControllerDidScroll:v4];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v6 = a4;
  v7 = a3;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  v9 = [v8 tableViewCellForTableView:v7 indexPath:v6];

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 numberOfRowsInSection];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = -[NSArray objectAtIndex:](self->_sections, "objectAtIndex:", [v7 section]);
  v9 = [v8 selectionActionForTableView:v6 indexPath:v7];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 actionType];
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v12 = [(SKUIProductPageTableViewController *)self navigationController];
        if (v12)
        {
          v15 = [v10 viewController];
          [v12 pushViewController:v15 animated:1];
LABEL_19:

          goto LABEL_20;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v23 = objc_opt_respondsToSelector();

        if ((v23 & 1) == 0)
        {
LABEL_20:
          [v6 deselectRowAtIndexPath:v7 animated:1];

          goto LABEL_21;
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        v16 = [v10 viewControllerBlock];
        v17 = v15;
        v18 = 0;
LABEL_18:
        [v17 productPageChildOpenURL:v18 viewControllerBlock:v16];

        goto LABEL_19;
      }

      if (v11 == 4)
      {
        v12 = [v10 item];
        if (!v12)
        {
          goto LABEL_20;
        }

        v19 = objc_loadWeakRetained(&self->_delegate);
        v20 = objc_opt_respondsToSelector();

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        [v15 productPageChildOpenItem:v12];
        goto LABEL_19;
      }
    }

    else
    {
      if ((v11 - 1) < 2)
      {
        v12 = [v10 URL];
        if (!v12)
        {
          goto LABEL_20;
        }

        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
          goto LABEL_20;
        }

        v15 = objc_loadWeakRetained(&self->_delegate);
        v16 = [v10 viewControllerBlock];
        v17 = v15;
        v18 = v12;
        goto LABEL_18;
      }

      if (!v11)
      {
        v24[0] = v7;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        [v6 reloadRowsAtIndexPaths:v21 withRowAnimation:100];
      }
    }
  }

LABEL_21:
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  sections = self->_sections;
  v6 = a3;
  v7 = [(NSArray *)sections objectAtIndex:a4];
  v8 = [v7 footerViewForTableView:v6];

  if (v8)
  {
    [v8 frame];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  sections = self->_sections;
  v6 = a3;
  v7 = [(NSArray *)sections objectAtIndex:a4];
  v8 = [v7 headerViewForTableView:v6];

  if (v8)
  {
    [v8 frame];
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  sections = self->_sections;
  v6 = a4;
  v7 = a3;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [v6 section]);
  [v8 heightForCellInTableView:v7 indexPath:v6];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  sections = self->_sections;
  v7 = a3;
  v8 = [(NSArray *)sections objectAtIndex:a4];
  v9 = [v8 footerViewForTableView:v7];

  if (v9)
  {
    [v9 setBackgroundColor:self->_color];
  }

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  sections = self->_sections;
  v7 = a3;
  v8 = [(NSArray *)sections objectAtIndex:a4];
  v9 = [v8 headerViewForTableView:v7];

  if (v9)
  {
    [v9 setBackgroundColor:self->_color];
  }

  return v9;
}

- (void)_addHeaderView
{
  v8 = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [v8 setAutoresizingMask:2];
  [v8 frame];
  v4 = v3;
  [(SKUIProductPageTableView *)self->_tableView bounds];
  [v8 setFrame:{0.0, v4}];
  [(SKUIProductPageTableView *)self->_tableView _addContentSubview:v8 atBack:0];
  v5 = [(SKUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [v5 setAutoresizingMask:2];
  [v5 frame];
  v7 = v6;
  [(SKUIProductPageTableView *)self->_tableView bounds];
  [v5 setFrame:{0.0, v7}];
  [(SKUIProductPageTableView *)self->_tableView setProductPageHeaderView:v5];
}

- (id)_tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = objc_alloc_init(SKUIProductPageTableView);
    v5 = self->_tableView;
    self->_tableView = v4;

    v6 = self->_tableView;
    v7 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    if (v7)
    {
      [(SKUIProductPageTableView *)v6 setBackgroundColor:v7];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SKUIProductPageTableView *)v6 setBackgroundColor:v8];
    }

    [(SKUIProductPageTableView *)self->_tableView setDataSource:self];
    [(SKUIProductPageTableView *)self->_tableView setDelegate:self];
    [(SKUIProductPageTableView *)self->_tableView _setHeaderAndFooterViewsFloat:0];
    [(SKUIProductPageTableView *)self->_tableView setSeparatorStyle:0];
    if (self->_headerViewController)
    {
      [(SKUIProductPageTableViewController *)self _addHeaderView];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_loadWeakRetained(&self->_delegateSender);
    [WeakRetained productPageChildViewControllerDidLoadScrollView:v10];

    tableView = self->_tableView;
  }

  return tableView;
}

- (id)_textLayoutRequestWithText:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SKUITextLayoutRequest);
  [(SKUITextLayoutRequest *)v5 setNumberOfLines:5];
  [(SKUITextLayoutRequest *)v5 setText:v4];

  [SKUIProductPageDetailsViewController defaultPageWidthForUserInterfaceIdiom:SKUIUserInterfaceIdiom(self->_clientContext)];
  [(SKUITextLayoutRequest *)v5 setWidth:v6 + -30.0];

  return v5;
}

- (SKUIProductPageChildViewController)delegateSender
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateSender);

  return WeakRetained;
}

- (SKUIProductPageChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end