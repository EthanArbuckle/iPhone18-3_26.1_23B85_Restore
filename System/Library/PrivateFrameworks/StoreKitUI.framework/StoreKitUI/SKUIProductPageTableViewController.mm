@interface SKUIProductPageTableViewController
- (SKUIProductPageChildViewController)delegateSender;
- (SKUIProductPageChildViewControllerDelegate)delegate;
- (SKUIProductPageTableViewController)initWithInAppPurchases:(id)purchases clientContext:(id)context;
- (SKUIProductPageTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SKUIProductPageTableViewController)initWithReleaseNotes:(id)notes clientContext:(id)context;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_tableView;
- (id)_textLayoutRequestWithText:(id)text;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addHeaderView;
- (void)dealloc;
- (void)loadView;
- (void)scrollToView:(id)view animated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setColorScheme:(id)scheme;
- (void)setDelegate:(id)delegate;
- (void)setHeaderViewController:(id)controller;
- (void)setSections:(id)sections;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIProductPageTableViewController

- (SKUIProductPageTableViewController)initWithInAppPurchases:(id)purchases clientContext:(id)context
{
  v24[1] = *MEMORY[0x277D85DE8];
  purchasesCopy = purchases;
  contextCopy = context;
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
    objc_storeStrong(&v16->_clientContext, context);
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

    v20 = [[SKUIProductPageTableInAppPurchasesSection alloc] initWithInAppPurchases:purchasesCopy clientContext:contextCopy];
    [(SKUIProductPageTableInAppPurchasesSection *)v20 setExpanded:1];
    [(SKUITableViewSection *)v20 setHidesHeaderView:1];
    v24[0] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [(SKUIProductPageTableViewController *)v17 setSections:v21];
  }

  return v17;
}

- (SKUIProductPageTableViewController)initWithReleaseNotes:(id)notes clientContext:(id)context
{
  v43 = *MEMORY[0x277D85DE8];
  notesCopy = notes;
  contextCopy = context;
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
    if ([notesCopy count])
    {
      objc_storeStrong(&v16->_clientContext, context);
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
      [(SKUIProductPageTableViewController *)v16 setTitle:v19, contextCopy];

      v18 = [[SKUIProductPageTableUpdateHistorySection alloc] initWithClientContext:v16->_clientContext];
      [(SKUIProductPageTableUpdateHistorySection *)v18 setExpanded:1];
      [(SKUITableViewSection *)v18 setHidesHeaderView:1];
      [(SKUIProductPageTableUpdateHistorySection *)v18 setReleaseNotes:notesCopy];
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v35 = notesCopy;
      v21 = notesCopy;
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

            changeNotes = [*(*(&v36 + 1) + 8 * i) changeNotes];
            v27 = changeNotes;
            if (changeNotes)
            {
              v28 = changeNotes;
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

      contextCopy = v34;
      notesCopy = v35;
    }

    else
    {
      v18 = v16;
      v16 = 0;
    }
  }

  return v16;
}

- (SKUIProductPageTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
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
  v16 = [(SKUIProductPageTableViewController *)&v20 initWithNibName:nameCopy bundle:bundleCopy];
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

- (void)scrollToView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 topContentOffset];
    v9 = v8;
    v11 = v10;

    [viewCopy bounds];
    [viewCopy convertPoint:self->_tableView toView:?];
    [(SKUIProductPageTableView *)self->_tableView setContentOffset:animatedCopy animated:v9, v11 + v12];
  }
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v11 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    backgroundColor = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    v7 = backgroundColor;
    if (!backgroundColor)
    {
      v7 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
    }

    objc_storeStrong(&self->_color, v7);
    if (!backgroundColor)
    {
    }

    tableView = self->_tableView;
    backgroundColor2 = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    if (backgroundColor2)
    {
      [(SKUIProductPageTableView *)tableView setBackgroundColor:backgroundColor2];
    }

    else
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.97254902 alpha:1.0];
      [(SKUIProductPageTableView *)tableView setBackgroundColor:v10];
    }

    schemeCopy = v11;
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
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

- (void)setHeaderViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_headerViewController != controllerCopy)
  {
    [(SKUIProductPageTableView *)self->_tableView setProductPageHeaderView:0];
    view = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
    [view removeFromSuperview];

    [(SKUIProductPageHeaderViewController *)self->_headerViewController removeFromParentViewController];
    objc_storeStrong(&self->_headerViewController, controller);
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

- (void)setSections:(id)sections
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_sections != sections)
  {
    v4 = [sections copy];
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
  _tableView = [(SKUIProductPageTableViewController *)self _tableView];
  [(SKUIProductPageTableViewController *)self setView:_tableView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  indexPathForSelectedRow = [(SKUIProductPageTableView *)self->_tableView indexPathForSelectedRow];
  if (indexPathForSelectedRow)
  {
    [(SKUIProductPageTableView *)self->_tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:appearCopy];
  }

  v6.receiver = self;
  v6.super_class = SKUIProductPageTableViewController;
  [(SKUIProductPageTableViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)scrollViewDidScroll:(id)scroll
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_loadWeakRetained(&self->_delegateSender);
  [WeakRetained productPageChildViewControllerDidScroll:v4];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  v9 = [v8 tableViewCellForTableView:viewCopy indexPath:pathCopy];

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_sections objectAtIndex:section];
  numberOfRowsInSection = [v4 numberOfRowsInSection];

  return numberOfRowsInSection;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v24[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v8 = -[NSArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  v9 = [v8 selectionActionForTableView:viewCopy indexPath:pathCopy];
  v10 = v9;
  if (v9)
  {
    actionType = [v9 actionType];
    if (actionType > 2)
    {
      if (actionType == 3)
      {
        navigationController = [(SKUIProductPageTableViewController *)self navigationController];
        if (navigationController)
        {
          viewController = [v10 viewController];
          [navigationController pushViewController:viewController animated:1];
LABEL_19:

          goto LABEL_20;
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v23 = objc_opt_respondsToSelector();

        if ((v23 & 1) == 0)
        {
LABEL_20:
          [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

          goto LABEL_21;
        }

        viewController = objc_loadWeakRetained(&self->_delegate);
        viewControllerBlock = [v10 viewControllerBlock];
        v17 = viewController;
        v18 = 0;
LABEL_18:
        [v17 productPageChildOpenURL:v18 viewControllerBlock:viewControllerBlock];

        goto LABEL_19;
      }

      if (actionType == 4)
      {
        navigationController = [v10 item];
        if (!navigationController)
        {
          goto LABEL_20;
        }

        v19 = objc_loadWeakRetained(&self->_delegate);
        v20 = objc_opt_respondsToSelector();

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }

        viewController = objc_loadWeakRetained(&self->_delegate);
        [viewController productPageChildOpenItem:navigationController];
        goto LABEL_19;
      }
    }

    else
    {
      if ((actionType - 1) < 2)
      {
        navigationController = [v10 URL];
        if (!navigationController)
        {
          goto LABEL_20;
        }

        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = objc_opt_respondsToSelector();

        if ((v14 & 1) == 0)
        {
          goto LABEL_20;
        }

        viewController = objc_loadWeakRetained(&self->_delegate);
        viewControllerBlock = [v10 viewControllerBlock];
        v17 = viewController;
        v18 = navigationController;
        goto LABEL_18;
      }

      if (!actionType)
      {
        v24[0] = pathCopy;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        [viewCopy reloadRowsAtIndexPaths:v21 withRowAnimation:100];
      }
    }
  }

LABEL_21:
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v7 = [(NSArray *)sections objectAtIndex:section];
  v8 = [v7 footerViewForTableView:viewCopy];

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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v7 = [(NSArray *)sections objectAtIndex:section];
  v8 = [v7 headerViewForTableView:viewCopy];

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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  sections = self->_sections;
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSArray objectAtIndex:](sections, "objectAtIndex:", [pathCopy section]);
  [v8 heightForCellInTableView:viewCopy indexPath:pathCopy];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v8 = [(NSArray *)sections objectAtIndex:section];
  v9 = [v8 footerViewForTableView:viewCopy];

  if (v9)
  {
    [v9 setBackgroundColor:self->_color];
  }

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v8 = [(NSArray *)sections objectAtIndex:section];
  v9 = [v8 headerViewForTableView:viewCopy];

  if (v9)
  {
    [v9 setBackgroundColor:self->_color];
  }

  return v9;
}

- (void)_addHeaderView
{
  view = [(SKUIProductPageHeaderViewController *)self->_headerViewController view];
  [view setAutoresizingMask:2];
  [view frame];
  v4 = v3;
  [(SKUIProductPageTableView *)self->_tableView bounds];
  [view setFrame:{0.0, v4}];
  [(SKUIProductPageTableView *)self->_tableView _addContentSubview:view atBack:0];
  floatingView = [(SKUIProductPageHeaderViewController *)self->_headerViewController floatingView];
  [floatingView setAutoresizingMask:2];
  [floatingView frame];
  v7 = v6;
  [(SKUIProductPageTableView *)self->_tableView bounds];
  [floatingView setFrame:{0.0, v7}];
  [(SKUIProductPageTableView *)self->_tableView setProductPageHeaderView:floatingView];
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
    backgroundColor = [(SKUIColorScheme *)self->_colorScheme backgroundColor];
    if (backgroundColor)
    {
      [(SKUIProductPageTableView *)v6 setBackgroundColor:backgroundColor];
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

- (id)_textLayoutRequestWithText:(id)text
{
  textCopy = text;
  v5 = objc_alloc_init(SKUITextLayoutRequest);
  [(SKUITextLayoutRequest *)v5 setNumberOfLines:5];
  [(SKUITextLayoutRequest *)v5 setText:textCopy];

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