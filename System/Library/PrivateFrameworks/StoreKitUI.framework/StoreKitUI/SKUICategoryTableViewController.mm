@interface SKUICategoryTableViewController
- (SKUICategoryTableViewControllerDelegate)delegate;
- (id)_categoryAtIndexPath:(id)a3;
- (id)_metricsLocationsToPushIndexPath:(id)a3;
- (id)metricsPageContextForCategoryTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_metricsLocationPostionForIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_recordClickEventForIndexPath:(id)a3 category:(id)a4 actionType:(id)a5;
- (void)categoryArtworkLoader:(id)a3 didLoadImage:(id)a4 forCategory:(id)a5;
- (void)categoryTableView:(id)a3 didSelectCategory:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)setArtworkLoader:(id)a3;
- (void)setCategory:(id)a3;
- (void)setNumberOfHiddenRows:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SKUICategoryTableViewController

- (void)dealloc
{
  [(SKUICategoryArtworkLoader *)self->_artworkLoader removeObserver:self];
  v3.receiver = self;
  v3.super_class = SKUICategoryTableViewController;
  [(SKUICategoryTableViewController *)&v3 dealloc];
}

- (void)setArtworkLoader:(id)a3
{
  v5 = a3;
  artworkLoader = self->_artworkLoader;
  if (artworkLoader != v5)
  {
    v7 = v5;
    [(SKUICategoryArtworkLoader *)artworkLoader removeObserver:self];
    objc_storeStrong(&self->_artworkLoader, a3);
    artworkLoader = [(SKUICategoryArtworkLoader *)self->_artworkLoader addObserver:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](artworkLoader, v5);
}

- (void)setCategory:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_category != v5)
  {
    objc_storeStrong(&self->_category, a3);
    self->_childrenHaveArtwork = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(SKUICategory *)self->_category children];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) artworkProvider];

          if (v11)
          {
            self->_childrenHaveArtwork = 1;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if ([(SKUICategoryTableViewController *)self isViewLoaded])
    {
      v12 = [(SKUICategoryTableViewController *)self tableView];
      [v12 reloadData];
    }

    v13 = [(SKUICategory *)self->_category name];
    [(SKUICategoryTableViewController *)self setTitle:v13];
  }
}

- (void)setNumberOfHiddenRows:(int64_t)a3
{
  if (self->_numberOfHiddenRows != a3)
  {
    self->_numberOfHiddenRows = a3;
    v4 = [(SKUICategoryTableViewController *)self tableView];
    [v4 reloadData];
  }
}

- (void)loadView
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICategoryTableViewController loadView]";
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICategoryTableViewController viewWillAppear:];
  }

  v5 = [(SKUICategoryTableViewController *)self presentingViewController];

  if (v5)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"CATEGORY_SHEET_CANCEL_BUTTON"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"CATEGORY_SHEET_CANCEL_BUTTON" inBundles:0];
    }
    v7 = ;
    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:v7 style:2 target:self action:sel__doneButtonAction_];
    v9 = [(SKUICategoryTableViewController *)self navigationItem];
    [v9 setRightBarButtonItem:v8];
  }

  v10 = [(SKUICategoryTableViewController *)self tableView];
  v11 = [v10 indexPathForSelectedRow];

  if (v11)
  {
    v12 = [(SKUICategoryTableViewController *)self tableView];
    [v12 deselectRowAtIndexPath:v11 animated:1];
  }

  v13.receiver = self;
  v13.super_class = SKUICategoryTableViewController;
  [(SKUICategoryTableViewController *)&v13 viewWillAppear:v3];
}

- (void)categoryArtworkLoader:(id)a3 didLoadImage:(id)a4 forCategory:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(SKUICategoryTableViewController *)self tableView];
  v10 = [v9 indexPathsForVisibleRows];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [(SKUICategoryTableViewController *)self _categoryAtIndexPath:v16, v22];
        v18 = v17;
        if (v17 == v8)
        {
          v19 = [(SKUICategoryTableViewController *)self tableView];
          v20 = [v19 cellForRowAtIndexPath:v16];

          v21 = [v20 imageView];
          [v21 setImage:v7];

          goto LABEL_11;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)categoryTableView:(id)a3 didSelectCategory:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 categoryTableView:self didSelectCategory:v8];
  }
}

- (id)metricsPageContextForCategoryTableView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 metricsPageContextForCategoryTableView:self];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"a" forIndexPath:v6];
  v8 = [(SKUICategoryTableViewController *)self _categoryAtIndexPath:v6];
  v9 = [v7 textLabel];
  if ([v6 section])
  {
    [(SKUICategory *)v8 name];
  }

  else
  {
    [(SKUICategory *)v8 parentLabel];
  }
  v10 = ;
  [v9 setText:v10];

  if ([v6 section] == 1)
  {
    v11 = [(SKUICategory *)v8 children];
    v12 = [v11 count];

    if (v12)
    {
      v13 = 1;
      goto LABEL_14;
    }
  }

  v14 = [(SKUICategory *)v8 URL];
  if ([v14 isEqual:self->_selectedURL])
  {

LABEL_9:
    v13 = 3;
    goto LABEL_14;
  }

  if (self->_isRoot && v8 == self->_category)
  {
    v24 = [(NSURL *)self->_defaultURL isEqual:self->_selectedURL];

    if (v24)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_14:
  [v7 setAccessoryType:v13];
  v15 = [MEMORY[0x277D75418] currentDevice];
  if ([v15 userInterfaceIdiom])
  {

LABEL_21:
    v21 = *MEMORY[0x277CBF3A8];
    v22 = *(MEMORY[0x277CBF3A8] + 8);
LABEL_22:
    [v7 setExpectedImageSize:{v21, v22}];
    goto LABEL_23;
  }

  childrenHaveArtwork = self->_childrenHaveArtwork;

  if (!childrenHaveArtwork)
  {
    goto LABEL_21;
  }

  v17 = [(SKUICategory *)v8 artworkProvider];

  artworkLoader = self->_artworkLoader;
  if (!v17)
  {
    [(SKUICategoryArtworkLoader *)artworkLoader imageSize];
    goto LABEL_22;
  }

  v19 = [(SKUICategoryArtworkLoader *)artworkLoader cachedImageForCategory:v8];
  if (!v19)
  {
    [(SKUICategoryArtworkLoader *)self->_artworkLoader loadImageForCategory:v8 reason:1];
    v19 = [(SKUICategoryArtworkLoader *)self->_artworkLoader placeholderImage];
  }

  v20 = [v7 imageView];
  [v20 setImage:v19];

LABEL_23:

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return self->_numberOfHiddenRows == 0;
  }

  v5 = [(SKUICategory *)self->_category children];
  v6 = [v5 count];
  numberOfHiddenRows = self->_numberOfHiddenRows;
  v8 = numberOfHiddenRows != 0;
  v9 = numberOfHiddenRows - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v6 - v9;

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  v5 = [(SKUICategoryTableViewController *)self _categoryAtIndexPath:v13];
  if ([v13 section] == 1 && (objc_msgSend(v5, "children"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    [(SKUICategoryTableViewController *)self _recordClickEventForIndexPath:v13 category:v5 actionType:*MEMORY[0x277D6A460]];
    v8 = objc_alloc_init(SKUICategoryTableViewController);
    [(SKUICategoryTableViewController *)v8 setArtworkLoader:self->_artworkLoader];
    [(SKUICategoryTableViewController *)v8 setCategory:v5];
    [(SKUICategoryTableViewController *)v8 setClientContext:self->_clientContext];
    [(SKUICategoryTableViewController *)self preferredContentSize];
    [(SKUICategoryTableViewController *)v8 setPreferredContentSize:?];
    v9 = [(SKUICategoryTableViewController *)self _metricsLocationsToPushIndexPath:v13];
    [(SKUICategoryTableViewController *)v8 setMetricsLocations:v9];

    [(SKUICategoryTableViewController *)v8 setDelegate:self];
    [(SKUICategoryTableViewController *)v8 setSelectedURL:self->_selectedURL];
    v10 = [(SKUICategoryTableViewController *)self navigationController];
    [v10 pushViewController:v8 animated:1];
  }

  else
  {
    [(SKUICategoryTableViewController *)self _recordClickEventForIndexPath:v13 category:v5 actionType:*MEMORY[0x277D6A458]];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    v8 = objc_loadWeakRetained(&self->_delegate);
    [(SKUICategoryTableViewController *)v8 categoryTableView:self didSelectCategory:v5];
  }

LABEL_7:
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = MEMORY[0x277D75348];
  v6 = a4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  v8 = [MEMORY[0x277D75348] colorWithWhite:0.756 alpha:1.0];
  [v6 setSelectionTintColor:v8];
}

- (id)_categoryAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  category = self->_category;
  if (v5)
  {
    v7 = [(SKUICategory *)category children];
    v8 = [v4 row];
    numberOfHiddenRows = self->_numberOfHiddenRows;
    v10 = numberOfHiddenRows != 0;
    v11 = numberOfHiddenRows - 1;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = [v7 objectAtIndex:v11 + v8];
  }

  else
  {
    v12 = category;
  }

  return v12;
}

- (int64_t)_metricsLocationPostionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  if (v6 == 1 && !self->_numberOfHiddenRows)
  {
    ++v5;
  }

  return v5;
}

- (id)_metricsLocationsToPushIndexPath:(id)a3
{
  v4 = MEMORY[0x277D69B90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(SKUICategoryTableViewController *)self _metricsLocationPostionForIndexPath:v5];

  [v6 setLocationPosition:v7];
  [v6 setLocationType:*MEMORY[0x277D6A4E8]];
  v8 = [(NSArray *)self->_metricsLocations mutableCopy];
  if (v8)
  {
    v9 = v8;
    [v8 insertObject:v6 atIndex:0];
  }

  else
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithObject:v6];
  }

  return v9;
}

- (void)_recordClickEventForIndexPath:(id)a3 category:(id)a4 actionType:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 row];
  v12 = [v10 section];

  if (v12 == 1 && !self->_numberOfHiddenRows)
  {
    ++v11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = [v15 metricsPageContextForCategoryTableView:self];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(SKUICategoryTableViewController *)self clientContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__SKUICategoryTableViewController__recordClickEventForIndexPath_category_actionType___block_invoke;
  v21[3] = &unk_2781FFAC0;
  v22 = v9;
  v23 = v16;
  v25 = self;
  v26 = v11;
  v24 = v8;
  v18 = v8;
  v19 = v16;
  v20 = v9;
  [v17 getDefaultMetricsControllerWithCompletionBlock:v21];
}

void __85__SKUICategoryTableViewController__recordClickEventForIndexPath_category_actionType___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 canRecordEventWithType:*MEMORY[0x277D6A478]])
  {
    v4 = objc_alloc_init(MEMORY[0x277D69B68]);
    [v4 setActionType:*(a1 + 32)];
    [v4 setPageContext:*(a1 + 40)];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", objc_msgSend(*(a1 + 48), "categoryIdentifier")];
    [v4 setTargetIdentifier:v5];

    v6 = *MEMORY[0x277D6A4F0];
    [v4 setTargetType:*MEMORY[0x277D6A4F0]];
    v7 = [*(a1 + 48) URL];
    v8 = [v7 absoluteString];
    [v4 setTargetURL:v8];

    v9 = [v3 locationWithPosition:*(a1 + 64) type:v6 fieldData:0];
    if (v9)
    {
      v10 = *(*(a1 + 56) + 1072);
      if (v10)
      {
        v11 = [v10 mutableCopy];
        [v11 insertObject:v9 atIndex:0];
      }

      else
      {
        v12[0] = v9;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      }

      [v4 setLocationWithEventLocations:v11];
    }

    [v3 recordEvent:v4];
  }
}

- (SKUICategoryTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewWillAppear:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICategoryTableViewController viewWillAppear:]";
}

@end