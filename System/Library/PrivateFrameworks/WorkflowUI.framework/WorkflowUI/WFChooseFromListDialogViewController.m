@interface WFChooseFromListDialogViewController
- (WFChooseFromListDialogViewController)initWithRequest:(id)a3;
- (WFContentCollectionTableView)tableView;
- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4;
- (id)displayConfiguration;
- (id)nestedScrollView;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (unint64_t)checkmarkStyleForListItem:(id)a3;
- (void)configureTableCell:(id)a3;
- (void)dealloc;
- (void)finishWithSelectedItems;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)platterView:(id)a3 didUpdateContentVerticalOffset:(double)a4;
- (void)setAppearanceProvider:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFChooseFromListDialogViewController

- (WFContentCollectionTableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([(WFChooseFromListDialogViewController *)self dissociatesTableView]|| WFChooseFromListDialogContentSizeContext != a6)
  {
    v27.receiver = self;
    v27.super_class = WFChooseFromListDialogViewController;
    [(WFChooseFromListDialogViewController *)&v27 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

  else
  {
    v13 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    [v13 CGSizeValue];
    v15 = v14;
    v17 = v16;

    v18 = [v12 objectForKey:*MEMORY[0x277CCA2F0]];
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

- (void)setAppearanceProvider:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFChooseFromListDialogViewController;
  v4 = a3;
  [(WFCompactPlatterViewController *)&v6 setAppearanceProvider:v4];
  WeakRetained = objc_loadWeakRetained(&self->_tableView);
  [v4 configureChooseFromListDialogViewController:{WeakRetained, v6.receiver, v6.super_class}];
}

- (void)platterView:(id)a3 didUpdateContentVerticalOffset:(double)a4
{
  v4 = -a4;
  v5 = [(WFChooseFromListDialogViewController *)self tableView];
  [v5 setContentOffset:{0.0, v4}];
}

- (id)nestedScrollView
{
  if ([(WFChooseFromListDialogViewController *)self dissociatesTableView])
  {
    v3 = [(WFChooseFromListDialogViewController *)self tableView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)configureTableCell:(id)a3
{
  v4 = a3;
  v5 = [(WFCompactPlatterViewController *)self appearanceProvider];
  [v5 configureChooseFromListDialogCell:v4];
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  v4 = [(WFCompactPlatterViewController *)self platterView];
  v5 = [v4 visualStylingProviderForCategory:a3];

  return v5;
}

- (id)displayConfiguration
{
  v2 = [(WFCompactDialogViewController *)self request];
  v3 = [v2 displayConfiguration];

  return v3;
}

- (unint64_t)checkmarkStyleForListItem:(id)a3
{
  v4 = a3;
  v5 = [(WFCompactDialogViewController *)self request];
  v6 = [v5 allowsMultipleSelection];

  if (v6)
  {
    v7 = [(WFChooseFromListDialogViewController *)self selectedItems];
    if ([v7 containsObject:v4])
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v15 cellForRowAtIndexPath:v6];
  v8 = [v7 listItem];
  v9 = [(WFCompactDialogViewController *)self request];
  v10 = [v9 allowsMultipleSelection];

  v11 = [(WFChooseFromListDialogViewController *)self selectedItems];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 containsObject:v8];

    if (v13)
    {
      [v7 setCheckmarkStyle:1];
      v14 = [(WFChooseFromListDialogViewController *)self selectedItems];
      [v14 removeObject:v8];
    }

    else
    {
      [v7 setCheckmarkStyle:2];
      v14 = [(WFChooseFromListDialogViewController *)self selectedItems];
      [v14 addObject:v8];
    }

    [v15 deselectRowAtIndexPath:v6 animated:1];
    [v15 beginUpdates];
    [v15 endUpdates];
  }

  else
  {
    [v11 addObject:v8];

    [(WFChooseFromListDialogViewController *)self finishWithSelectedItems];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WFChooseFromListDialogViewController;
  [(WFChooseFromListDialogViewController *)&v5 viewDidAppear:a3];
  v4 = [(WFChooseFromListDialogViewController *)self tableView];
  [v4 updateCellSeparatorInsets];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = WFChooseFromListDialogViewController;
  [(WFChooseFromListDialogViewController *)&v5 viewWillAppear:a3];
  v4 = [(WFChooseFromListDialogViewController *)self tableView];
  [v4 updateCellSeparatorInsets];
}

- (double)contentHeightForWidth:(double)a3 withMaximumVisibleHeight:(double)a4
{
  if ([(WFChooseFromListDialogViewController *)self dissociatesTableView]|| ([(WFChooseFromListDialogViewController *)self tableView], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [(WFChooseFromListDialogViewController *)self tableView];
    [v8 contentHeightForWidth:a3];
    v10 = v9;

    return v10;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFChooseFromListDialogViewController;
    [(WFCompactPlatterViewController *)&v12 contentHeightForWidth:a3 withMaximumVisibleHeight:a4];
  }

  return result;
}

- (void)finishWithSelectedItems
{
  v3 = objc_alloc(MEMORY[0x277D79E10]);
  v5 = [(WFChooseFromListDialogViewController *)self selectedItems];
  v4 = [v3 initWithItems:v5 cancelled:0];
  [(WFCompactDialogViewController *)self finishWithResponse:v4];
}

- (void)loadView
{
  v61[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = WFChooseFromListDialogViewController;
  [(WFCompactDialogViewController *)&v59 loadView];
  v3 = [(WFCompactPlatterViewController *)self scrollView];
  [v3 setDelaysContentTouches:1];

  v53 = [(WFCompactDialogViewController *)self request];
  v52 = [(WFCompactPlatterViewController *)self platterView];
  [v52 setInsetsContent:{objc_msgSend(MEMORY[0x277CBEBD0], "universalPreviewsEnabled")}];
  v4 = [v53 message];
  [v52 setSecondaryText:v4];

  v51 = objc_opt_new();
  v5 = [v53 cancelButton];

  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [v53 cancelButton];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __48__WFChooseFromListDialogViewController_loadView__block_invoke;
    v56[3] = &unk_279EE8908;
    objc_copyWeak(&v57, &location);
    v7 = [WFCompactDialogAction actionForButton:v6 handler:v56];
    [v51 addObject:v7];

    objc_destroyWeak(&v57);
    objc_destroyWeak(&location);
  }

  if (([v53 allowsMultipleSelection] & 1) != 0 || (objc_msgSend(v53, "items"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count") == 0, v8, v9))
  {
    objc_initWeak(&location, self);
    v10 = [v53 doneButton];

    if (v10)
    {
      v11 = [v53 doneButton];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __48__WFChooseFromListDialogViewController_loadView__block_invoke_2;
      v54[3] = &unk_279EE8908;
      objc_copyWeak(&v55, &location);
      v12 = [WFCompactDialogAction actionForButton:v11 handler:v54];
      [v51 addObject:v12];

      objc_destroyWeak(&v55);
    }

    objc_destroyWeak(&location);
  }

  [(WFCompactDialogViewController *)self configureActionGroupWithActions:v51];
  v13 = [v53 items];
  v14 = [v13 count];

  if (v14)
  {
    [v52 setContentClippingDelegate:self];
    v15 = [WFContentCollectionTableView alloc];
    v16 = [(WFCompactDialogViewController *)self request];
    v17 = [v16 items];
    v18 = [(WFContentCollectionTableView *)v15 initWithDialogItems:v17];

    [(WFContentCollectionTableView *)v18 setDelegate:self];
    [(WFContentCollectionTableView *)v18 setControllerDelegate:self];
    objc_storeWeak(&self->_tableView, v18);
    [(WFContentCollectionTableView *)v18 _setOverrideVibrancyTrait:1];
    if ([(WFChooseFromListDialogViewController *)self dissociatesTableView])
    {
      v19 = objc_alloc_init(MEMORY[0x277D75D18]);
      [(WFContentCollectionTableView *)v19 addSubview:v18];
      v37 = MEMORY[0x277CCAAD0];
      v20 = [(WFContentCollectionTableView *)v18 leadingAnchor];
      v49 = [(WFContentCollectionTableView *)v19 leadingAnchor];
      v47 = [v20 constraintEqualToAnchor:v49 constant:0.0];
      v61[0] = v47;
      v45 = [(WFContentCollectionTableView *)v18 trailingAnchor];
      v43 = [(WFContentCollectionTableView *)v19 trailingAnchor];
      v41 = [v45 constraintEqualToAnchor:v43 constant:0.0];
      v61[1] = v41;
      v39 = [(WFContentCollectionTableView *)v18 topAnchor];
      v21 = [(WFContentCollectionTableView *)v19 topAnchor];
      v22 = [v39 constraintEqualToAnchor:v21 constant:0.0];
      v61[2] = v22;
      v23 = [(WFContentCollectionTableView *)v18 bottomAnchor];
      v24 = [(WFContentCollectionTableView *)v19 bottomAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:0.0];
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
    v27 = [v53 emptyStateMessage];
    [(WFContentCollectionTableView *)v18 setText:v27];

    [(WFContentCollectionTableView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WFContentCollectionTableView *)v18 setNumberOfLines:0];
    [(WFContentCollectionTableView *)v18 setAdjustsFontForContentSizeCategory:1];
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(WFContentCollectionTableView *)v18 setFont:v28];

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(WFContentCollectionTableView *)v19 addSubview:v18];
    v38 = MEMORY[0x277CCAAD0];
    v50 = [(WFContentCollectionTableView *)v18 leadingAnchor];
    v48 = [(WFContentCollectionTableView *)v19 leadingAnchor];
    v46 = [v50 constraintEqualToAnchor:v48 constant:16.0];
    v60[0] = v46;
    v44 = [(WFContentCollectionTableView *)v18 trailingAnchor];
    v42 = [(WFContentCollectionTableView *)v19 trailingAnchor];
    v40 = [v44 constraintEqualToAnchor:v42 constant:-16.0];
    v60[1] = v40;
    v29 = [(WFContentCollectionTableView *)v18 topAnchor];
    v30 = [(WFContentCollectionTableView *)v19 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:10.0];
    v60[2] = v31;
    v32 = [(WFContentCollectionTableView *)v18 bottomAnchor];
    v33 = [(WFContentCollectionTableView *)v19 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:-10.0];
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
    v3 = [(WFChooseFromListDialogViewController *)self tableView];
    [v3 removeObserver:self forKeyPath:@"contentSize" context:WFChooseFromListDialogContentSizeContext];
  }

  v4.receiver = self;
  v4.super_class = WFChooseFromListDialogViewController;
  [(WFChooseFromListDialogViewController *)&v4 dealloc];
}

- (WFChooseFromListDialogViewController)initWithRequest:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = WFChooseFromListDialogViewController;
  v5 = [(WFCompactDialogViewController *)&v20 initWithRequest:v4];
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
    v8 = [v4 items];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if ([v13 selected])
          {
            [(NSMutableArray *)v5->_selectedItems addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = v5;
  }

  return v5;
}

@end