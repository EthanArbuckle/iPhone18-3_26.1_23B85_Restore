@interface WFChooseFromListDialogViewController
- (WFChooseFromListDialogViewController)initWithRequest:(id)request;
- (WFContentCollectionTableView)tableView;
- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height;
- (id)displayConfiguration;
- (id)nestedScrollView;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (unint64_t)checkmarkStyleForListItem:(id)item;
- (void)configureTableCell:(id)cell;
- (void)dealloc;
- (void)finishWithSelectedItems;
- (void)loadView;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)platterView:(id)view didUpdateContentVerticalOffset:(double)offset;
- (void)setAppearanceProvider:(id)provider;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFChooseFromListDialogViewController

- (WFContentCollectionTableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if ([(WFChooseFromListDialogViewController *)self dissociatesTableView]|| WFChooseFromListDialogContentSizeContext != context)
  {
    v27.receiver = self;
    v27.super_class = WFChooseFromListDialogViewController;
    [(WFChooseFromListDialogViewController *)&v27 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

  else
  {
    v13 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    [v13 CGSizeValue];
    v15 = v14;
    v17 = v16;

    v18 = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    [v18 CGSizeValue];
    v20 = v19;
    v22 = v21;

    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = v15;
    v28.size.height = v17;
    v29 = CGRectIntegral(v28);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = v20;
    v29.size.height = v22;
    v31 = CGRectIntegral(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    if (!CGRectEqualToRect(v30, v31))
    {
      [(WFCompactPlatterViewController *)self invalidateContentSize];
    }
  }
}

- (void)setAppearanceProvider:(id)provider
{
  v6.receiver = self;
  v6.super_class = WFChooseFromListDialogViewController;
  providerCopy = provider;
  [(WFCompactPlatterViewController *)&v6 setAppearanceProvider:providerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [providerCopy configureChooseFromListDialogViewController:{WeakRetained, v6.receiver, v6.super_class}];
}

- (void)platterView:(id)view didUpdateContentVerticalOffset:(double)offset
{
  v4 = -offset;
  tableView = [(WFChooseFromListDialogViewController *)self tableView];
  [tableView setContentOffset:{0.0, v4}];
}

- (id)nestedScrollView
{
  if ([(WFChooseFromListDialogViewController *)self dissociatesTableView])
  {
    tableView = [(WFChooseFromListDialogViewController *)self tableView];
  }

  else
  {
    tableView = 0;
  }

  return tableView;
}

- (void)configureTableCell:(id)cell
{
  cellCopy = cell;
  appearanceProvider = [(WFCompactPlatterViewController *)self appearanceProvider];
  [appearanceProvider configureChooseFromListDialogCell:cellCopy];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  platterView = [(WFCompactPlatterViewController *)self platterView];
  v5 = [platterView visualStylingProviderForCategory:category];

  return v5;
}

- (id)displayConfiguration
{
  request = [(WFCompactDialogViewController *)self request];
  displayConfiguration = [request displayConfiguration];

  return displayConfiguration;
}

- (unint64_t)checkmarkStyleForListItem:(id)item
{
  itemCopy = item;
  request = [(WFCompactDialogViewController *)self request];
  allowsMultipleSelection = [request allowsMultipleSelection];

  if (allowsMultipleSelection)
  {
    selectedItems = [(WFChooseFromListDialogViewController *)self selectedItems];
    if ([selectedItems containsObject:itemCopy])
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  listItem = [v7 listItem];
  request = [(WFCompactDialogViewController *)self request];
  allowsMultipleSelection = [request allowsMultipleSelection];

  selectedItems = [(WFChooseFromListDialogViewController *)self selectedItems];
  v12 = selectedItems;
  if (allowsMultipleSelection)
  {
    v13 = [selectedItems containsObject:listItem];

    if (v13)
    {
      [v7 setCheckmarkStyle:1];
      selectedItems2 = [(WFChooseFromListDialogViewController *)self selectedItems];
      [selectedItems2 removeObject:listItem];
    }

    else
    {
      [v7 setCheckmarkStyle:2];
      selectedItems2 = [(WFChooseFromListDialogViewController *)self selectedItems];
      [selectedItems2 addObject:listItem];
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    [viewCopy beginUpdates];
    [viewCopy endUpdates];
  }

  else
  {
    [selectedItems addObject:listItem];

    [(WFChooseFromListDialogViewController *)self finishWithSelectedItems];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFChooseFromListDialogViewController;
  [(WFChooseFromListDialogViewController *)&v5 viewDidAppear:appear];
  tableView = [(WFChooseFromListDialogViewController *)self tableView];
  [tableView updateCellSeparatorInsets];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = WFChooseFromListDialogViewController;
  [(WFChooseFromListDialogViewController *)&v5 viewWillAppear:appear];
  tableView = [(WFChooseFromListDialogViewController *)self tableView];
  [tableView updateCellSeparatorInsets];
}

- (double)contentHeightForWidth:(double)width withMaximumVisibleHeight:(double)height
{
  if ([(WFChooseFromListDialogViewController *)self dissociatesTableView]|| ([(WFChooseFromListDialogViewController *)self tableView], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    tableView = [(WFChooseFromListDialogViewController *)self tableView];
    [tableView contentHeightForWidth:width];
    v10 = v9;

    return v10;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFChooseFromListDialogViewController;
    [(WFCompactPlatterViewController *)&v12 contentHeightForWidth:width withMaximumVisibleHeight:height];
  }

  return result;
}

- (void)finishWithSelectedItems
{
  v3 = objc_alloc(MEMORY[0x277D79E10]);
  selectedItems = [(WFChooseFromListDialogViewController *)self selectedItems];
  v4 = [v3 initWithItems:selectedItems cancelled:0];
  [(WFCompactDialogViewController *)self finishWithResponse:v4];
}

- (void)loadView
{
  v61[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = WFChooseFromListDialogViewController;
  [(WFCompactDialogViewController *)&v59 loadView];
  scrollView = [(WFCompactPlatterViewController *)self scrollView];
  [scrollView setDelaysContentTouches:1];

  request = [(WFCompactDialogViewController *)self request];
  platterView = [(WFCompactPlatterViewController *)self platterView];
  [platterView setInsetsContent:{objc_msgSend(MEMORY[0x277CBEBD0], "universalPreviewsEnabled")}];
  message = [request message];
  [platterView setSecondaryText:message];

  v51 = objc_opt_new();
  cancelButton = [request cancelButton];

  if (cancelButton)
  {
    objc_initWeak(&location, self);
    cancelButton2 = [request cancelButton];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __48__WFChooseFromListDialogViewController_loadView__block_invoke;
    v56[3] = &unk_279EE8908;
    objc_copyWeak(&v57, &location);
    v7 = [WFCompactDialogAction actionForButton:cancelButton2 handler:v56];
    [v51 addObject:v7];

    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);
  }

  if (([request allowsMultipleSelection] & 1) != 0 || (objc_msgSend(request, "items"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count") == 0, v8, v9))
  {
    objc_initWeak(&location, self);
    doneButton = [request doneButton];

    if (doneButton)
    {
      doneButton2 = [request doneButton];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __48__WFChooseFromListDialogViewController_loadView__block_invoke_2;
      v54[3] = &unk_279EE8908;
      objc_copyWeak(&v55, &location);
      v12 = [WFCompactDialogAction actionForButton:doneButton2 handler:v54];
      [v51 addObject:v12];

      objc_destroyWeak(&v55);
    }

    objc_destroyWeak(&location);
  }

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v51];
  items = [request items];
  v14 = [items count];

  if (v14)
  {
    [platterView setContentClippingDelegate:self];
    v15 = [WFContentCollectionTableView alloc];
    request2 = [(WFCompactDialogViewController *)self request];
    items2 = [request2 items];
    v18 = [(WFContentCollectionTableView *)v15 initWithDialogItems:items2];

    [(WFContentCollectionTableView *)v18 setDelegate:self];
    [(WFContentCollectionTableView *)v18 setControllerDelegate:self];
    objc_storeWeak(&self->_tableView, v18);
    [(WFContentCollectionTableView *)v18 _setOverrideVibrancyTrait:1];
    if ([(WFChooseFromListDialogViewController *)self dissociatesTableView])
    {
      v19 = objc_alloc_init(MEMORY[0x277D75D18]);
      [(WFContentCollectionTableView *)v19 addSubview:v18];
      v37 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(WFContentCollectionTableView *)v18 leadingAnchor];
      leadingAnchor2 = [(WFContentCollectionTableView *)v19 leadingAnchor];
      v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
      v61[0] = v47;
      trailingAnchor = [(WFContentCollectionTableView *)v18 trailingAnchor];
      trailingAnchor2 = [(WFContentCollectionTableView *)v19 trailingAnchor];
      v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
      v61[1] = v41;
      topAnchor = [(WFContentCollectionTableView *)v18 topAnchor];
      topAnchor2 = [(WFContentCollectionTableView *)v19 topAnchor];
      v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
      v61[2] = v22;
      bottomAnchor = [(WFContentCollectionTableView *)v18 bottomAnchor];
      bottomAnchor2 = [(WFContentCollectionTableView *)v19 bottomAnchor];
      v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
      v61[3] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
      [v37 activateConstraints:v26];
    }

    else
    {
      v18 = v18;
      [(WFContentCollectionTableView *)v18 addObserver:self forKeyPath:@"contentSize" options:3 context:WFChooseFromListDialogContentSizeContext];
      v19 = v18;
    }
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x277D756B8]);
    emptyStateMessage = [request emptyStateMessage];
    [(WFContentCollectionTableView *)v18 setText:emptyStateMessage];

    [(WFContentCollectionTableView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFContentCollectionTableView *)v18 setNumberOfLines:0];
    [(WFContentCollectionTableView *)v18 setAdjustsFontForContentSizeCategory:1];
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(WFContentCollectionTableView *)v18 setFont:v28];

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(WFContentCollectionTableView *)v19 addSubview:v18];
    v38 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [(WFContentCollectionTableView *)v18 leadingAnchor];
    leadingAnchor4 = [(WFContentCollectionTableView *)v19 leadingAnchor];
    v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
    v60[0] = v46;
    trailingAnchor3 = [(WFContentCollectionTableView *)v18 trailingAnchor];
    trailingAnchor4 = [(WFContentCollectionTableView *)v19 trailingAnchor];
    v40 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
    v60[1] = v40;
    topAnchor3 = [(WFContentCollectionTableView *)v18 topAnchor];
    topAnchor4 = [(WFContentCollectionTableView *)v19 topAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
    v60[2] = v31;
    bottomAnchor3 = [(WFContentCollectionTableView *)v18 bottomAnchor];
    bottomAnchor4 = [(WFContentCollectionTableView *)v19 bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-10.0];
    v60[3] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
    [v38 activateConstraints:v35];
  }

  v36 = objc_alloc_init(MEMORY[0x277D75D28]);
  [v36 setView:v19];
  [(WFCompactPlatterViewController *)self setContentViewController:v36];
}

void __48__WFChooseFromListDialogViewController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc(MEMORY[0x277D79E10]);
  v2 = [v1 initWithItems:MEMORY[0x277CBEBF8] cancelled:1];
  [WeakRetained finishWithResponse:v2];
}

void __48__WFChooseFromListDialogViewController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishWithSelectedItems];
}

- (void)dealloc
{
  if (![(WFChooseFromListDialogViewController *)self dissociatesTableView])
  {
    tableView = [(WFChooseFromListDialogViewController *)self tableView];
    [tableView removeObserver:self forKeyPath:@"contentSize" context:WFChooseFromListDialogContentSizeContext];
  }

  v4.receiver = self;
  v4.super_class = WFChooseFromListDialogViewController;
  [(WFChooseFromListDialogViewController *)&v4 dealloc];
}

- (WFChooseFromListDialogViewController)initWithRequest:(id)request
{
  v22 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v20.receiver = self;
  v20.super_class = WFChooseFromListDialogViewController;
  v5 = [(WFCompactDialogViewController *)&v20 initWithRequest:requestCopy];
  if (v5)
  {
    v6 = objc_opt_new();
    selectedItems = v5->_selectedItems;
    v5->_selectedItems = v6;

    v5->_dissociatesTableView = [MEMORY[0x277CBEBD0] universalPreviewsEnabled];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    items = [requestCopy items];
    v9 = [items countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(items);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 selected])
          {
            [(NSMutableArray *)v5->_selectedItems addObject:v13];
          }
        }

        v10 = [items countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = v5;
  }

  return v5;
}

@end