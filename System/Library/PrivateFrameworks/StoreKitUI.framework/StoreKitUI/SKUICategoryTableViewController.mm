@interface SKUICategoryTableViewController
- (SKUICategoryTableViewControllerDelegate)delegate;
- (id)_categoryAtIndexPath:(id)path;
- (id)_metricsLocationsToPushIndexPath:(id)path;
- (id)metricsPageContextForCategoryTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_metricsLocationPostionForIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_recordClickEventForIndexPath:(id)path category:(id)category actionType:(id)type;
- (void)categoryArtworkLoader:(id)loader didLoadImage:(id)image forCategory:(id)category;
- (void)categoryTableView:(id)view didSelectCategory:(id)category;
- (void)dealloc;
- (void)loadView;
- (void)setArtworkLoader:(id)loader;
- (void)setCategory:(id)category;
- (void)setNumberOfHiddenRows:(int64_t)rows;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUICategoryTableViewController

- (void)dealloc
{
  [(SKUICategoryArtworkLoader *)self->_artworkLoader removeObserver:self];
  v3.receiver = self;
  v3.super_class = SKUICategoryTableViewController;
  [(SKUICategoryTableViewController *)&v3 dealloc];
}

- (void)setArtworkLoader:(id)loader
{
  loaderCopy = loader;
  artworkLoader = self->_artworkLoader;
  if (artworkLoader != loaderCopy)
  {
    v7 = loaderCopy;
    [(SKUICategoryArtworkLoader *)artworkLoader removeObserver:self];
    objc_storeStrong(&self->_artworkLoader, loader);
    artworkLoader = [(SKUICategoryArtworkLoader *)self->_artworkLoader addObserver:self];
    loaderCopy = v7;
  }

  MEMORY[0x2821F96F8](artworkLoader, loaderCopy);
}

- (void)setCategory:(id)category
{
  v19 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  if (self->_category != categoryCopy)
  {
    objc_storeStrong(&self->_category, category);
    self->_childrenHaveArtwork = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    children = [(SKUICategory *)self->_category children];
    v7 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(children);
          }

          artworkProvider = [*(*(&v14 + 1) + 8 * i) artworkProvider];

          if (artworkProvider)
          {
            self->_childrenHaveArtwork = 1;
            goto LABEL_12;
          }
        }

        v8 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
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
      tableView = [(SKUICategoryTableViewController *)self tableView];
      [tableView reloadData];
    }

    name = [(SKUICategory *)self->_category name];
    [(SKUICategoryTableViewController *)self setTitle:name];
  }
}

- (void)setNumberOfHiddenRows:(int64_t)rows
{
  if (self->_numberOfHiddenRows != rows)
  {
    self->_numberOfHiddenRows = rows;
    tableView = [(SKUICategoryTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)loadView
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICategoryTableViewController loadView]";
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICategoryTableViewController viewWillAppear:];
  }

  presentingViewController = [(SKUICategoryTableViewController *)self presentingViewController];

  if (presentingViewController)
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
    navigationItem = [(SKUICategoryTableViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v8];
  }

  tableView = [(SKUICategoryTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  if (indexPathForSelectedRow)
  {
    tableView2 = [(SKUICategoryTableViewController *)self tableView];
    [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }

  v13.receiver = self;
  v13.super_class = SKUICategoryTableViewController;
  [(SKUICategoryTableViewController *)&v13 viewWillAppear:appearCopy];
}

- (void)categoryArtworkLoader:(id)loader didLoadImage:(id)image forCategory:(id)category
{
  v27 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  categoryCopy = category;
  tableView = [(SKUICategoryTableViewController *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = indexPathsForVisibleRows;
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
        if (v17 == categoryCopy)
        {
          tableView2 = [(SKUICategoryTableViewController *)self tableView];
          v20 = [tableView2 cellForRowAtIndexPath:v16];

          imageView = [v20 imageView];
          [imageView setImage:imageCopy];

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

- (void)categoryTableView:(id)view didSelectCategory:(id)category
{
  categoryCopy = category;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 categoryTableView:self didSelectCategory:categoryCopy];
  }
}

- (id)metricsPageContextForCategoryTableView:(id)view
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"a" forIndexPath:pathCopy];
  v8 = [(SKUICategoryTableViewController *)self _categoryAtIndexPath:pathCopy];
  textLabel = [v7 textLabel];
  if ([pathCopy section])
  {
    [(SKUICategory *)v8 name];
  }

  else
  {
    [(SKUICategory *)v8 parentLabel];
  }
  v10 = ;
  [textLabel setText:v10];

  if ([pathCopy section] == 1)
  {
    children = [(SKUICategory *)v8 children];
    v12 = [children count];

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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
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

  artworkProvider = [(SKUICategory *)v8 artworkProvider];

  artworkLoader = self->_artworkLoader;
  if (!artworkProvider)
  {
    [(SKUICategoryArtworkLoader *)artworkLoader imageSize];
    goto LABEL_22;
  }

  placeholderImage = [(SKUICategoryArtworkLoader *)artworkLoader cachedImageForCategory:v8];
  if (!placeholderImage)
  {
    [(SKUICategoryArtworkLoader *)self->_artworkLoader loadImageForCategory:v8 reason:1];
    placeholderImage = [(SKUICategoryArtworkLoader *)self->_artworkLoader placeholderImage];
  }

  imageView = [v7 imageView];
  [imageView setImage:placeholderImage];

LABEL_23:

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return self->_numberOfHiddenRows == 0;
  }

  children = [(SKUICategory *)self->_category children];
  v6 = [children count];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(SKUICategoryTableViewController *)self _categoryAtIndexPath:pathCopy];
  if ([pathCopy section] == 1 && (objc_msgSend(v5, "children"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    [(SKUICategoryTableViewController *)self _recordClickEventForIndexPath:pathCopy category:v5 actionType:*MEMORY[0x277D6A460]];
    v8 = objc_alloc_init(SKUICategoryTableViewController);
    [(SKUICategoryTableViewController *)v8 setArtworkLoader:self->_artworkLoader];
    [(SKUICategoryTableViewController *)v8 setCategory:v5];
    [(SKUICategoryTableViewController *)v8 setClientContext:self->_clientContext];
    [(SKUICategoryTableViewController *)self preferredContentSize];
    [(SKUICategoryTableViewController *)v8 setPreferredContentSize:?];
    v9 = [(SKUICategoryTableViewController *)self _metricsLocationsToPushIndexPath:pathCopy];
    [(SKUICategoryTableViewController *)v8 setMetricsLocations:v9];

    [(SKUICategoryTableViewController *)v8 setDelegate:self];
    [(SKUICategoryTableViewController *)v8 setSelectedURL:self->_selectedURL];
    navigationController = [(SKUICategoryTableViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }

  else
  {
    [(SKUICategoryTableViewController *)self _recordClickEventForIndexPath:pathCopy category:v5 actionType:*MEMORY[0x277D6A458]];
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v5 = MEMORY[0x277D75348];
  cellCopy = cell;
  clearColor = [v5 clearColor];
  [cellCopy setBackgroundColor:clearColor];

  v8 = [MEMORY[0x277D75348] colorWithWhite:0.756 alpha:1.0];
  [cellCopy setSelectionTintColor:v8];
}

- (id)_categoryAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  category = self->_category;
  if (section)
  {
    children = [(SKUICategory *)category children];
    v8 = [pathCopy row];
    numberOfHiddenRows = self->_numberOfHiddenRows;
    v10 = numberOfHiddenRows != 0;
    v11 = numberOfHiddenRows - 1;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = [children objectAtIndex:v11 + v8];
  }

  else
  {
    v12 = category;
  }

  return v12;
}

- (int64_t)_metricsLocationPostionForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  if (section == 1 && !self->_numberOfHiddenRows)
  {
    ++v5;
  }

  return v5;
}

- (id)_metricsLocationsToPushIndexPath:(id)path
{
  v4 = MEMORY[0x277D69B90];
  pathCopy = path;
  v6 = objc_alloc_init(v4);
  v7 = [(SKUICategoryTableViewController *)self _metricsLocationPostionForIndexPath:pathCopy];

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

- (void)_recordClickEventForIndexPath:(id)path category:(id)category actionType:(id)type
{
  categoryCopy = category;
  typeCopy = type;
  pathCopy = path;
  v11 = [pathCopy row];
  section = [pathCopy section];

  if (section == 1 && !self->_numberOfHiddenRows)
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

  clientContext = [(SKUICategoryTableViewController *)self clientContext];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __85__SKUICategoryTableViewController__recordClickEventForIndexPath_category_actionType___block_invoke;
  v21[3] = &unk_2781FFAC0;
  v22 = typeCopy;
  v23 = v16;
  selfCopy = self;
  v26 = v11;
  v24 = categoryCopy;
  v18 = categoryCopy;
  v19 = v16;
  v20 = typeCopy;
  [clientContext getDefaultMetricsControllerWithCompletionBlock:v21];
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