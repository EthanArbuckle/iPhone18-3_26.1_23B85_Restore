@interface VideosExtrasListTemplateViewController
+ (id)relatedContentViewControllerForElement:(id)a3;
- (BOOL)shouldUpdateByReplacingViewControllerWithTemplate:(id)a3;
- (VideosExtrasListTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)templateElement;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addConstraintsToTableView:(id)a3;
- (void)_configureBannerWithElement:(id)a3;
- (void)_configureVignette:(BOOL)a3;
- (void)_embedRelatedContentViewController;
- (void)_prepareLayout;
- (void)_pushRelatedViewController:(id)a3 animated:(BOOL)a4;
- (void)_setDetailContraints;
- (void)_setRelatedContentEmbedded:(BOOL)a3;
- (void)_unembedRelatedContent;
- (void)_updateForTemplate:(id)a3;
- (void)_updateRelatedContent:(id)a3 forListItem:(id)a4;
- (void)dealloc;
- (void)setRelatedContentViewController:(id)a3;
- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation VideosExtrasListTemplateViewController

- (VideosExtrasListTemplateViewController)initWithDocument:(id)a3 options:(id)a4 context:(id)a5
{
  v14.receiver = self;
  v14.super_class = VideosExtrasListTemplateViewController;
  v5 = [(VideosExtrasTemplateViewController *)&v14 initWithDocument:a3 options:a4 context:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    relatedContentViewControllerMap = v5->_relatedContentViewControllerMap;
    v5->_relatedContentViewControllerMap = v6;

    v8 = [(VideosExtrasListTemplateViewController *)v5 templateElement];
    v9 = [v8 list];
    v10 = [v9 sections];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__VideosExtrasListTemplateViewController_initWithDocument_options_context___block_invoke;
    v12[3] = &unk_1E87362E0;
    v13 = v5;
    [v10 enumerateObjectsUsingBlock:v12];
  }

  return v5;
}

void __75__VideosExtrasListTemplateViewController_initWithDocument_options_context___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 items];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__VideosExtrasListTemplateViewController_initWithDocument_options_context___block_invoke_2;
  v8[3] = &unk_1E87362B8;
  v9 = *(a1 + 32);
  v10 = a3;
  v11 = a4;
  [v7 enumerateObjectsUsingBlock:v8];
}

void __75__VideosExtrasListTemplateViewController_initWithDocument_options_context___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 autoHighlightIdentifier];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:*(a1 + 40)];
    v9 = *(a1 + 32);
    v10 = *(v9 + 1104);
    *(v9 + 1104) = v8;

    *a4 = 1;
    **(a1 + 48) = 1;
  }
}

- (void)dealloc
{
  [(UITableView *)self->_tableView setDataSource:0];
  [(UITableView *)self->_tableView setDelegate:0];
  v3.receiver = self;
  v3.super_class = VideosExtrasListTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v3 dealloc];
}

- (id)templateElement
{
  v2 = [(VideosExtrasTemplateViewController *)self document];
  v3 = [v2 templateElement];

  return v3;
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = VideosExtrasListTemplateViewController;
  [(VideosExtrasTemplateViewController *)&v33 viewDidLoad];
  v3 = [(VideosExtrasListTemplateViewController *)self view];
  v4 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v5 = [v4 style];
  v6 = [v5 elementAlignment];

  self->_tableViewLeft = v6 == 1;
  v7 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v8 = [v7 background];

  v9 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v10 = [v9 documentBanner];

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = v11;
  if (v8)
  {
    [v11 addObject:v8];
  }

  v13 = [v10 background];

  if (v13)
  {
    v14 = [v10 background];
    [v12 addObject:v14];
  }

  [(VideosExtrasTemplateViewController *)self configureBackgroundWithElements:v12];
  [(VideosExtrasListTemplateViewController *)self _configureBannerWithElement:v10];
  v15 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  vignetteView = self->_vignetteView;
  self->_vignetteView = v15;

  [(UIImageView *)self->_vignetteView setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x1E696ACD8];
  v18 = self->_vignetteView;
  v19 = [(VideosExtrasListTemplateViewController *)self view];
  v20 = [v17 constraintsByAttachingView:v18 toView:v19 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  v21 = [(VideosExtrasListTemplateViewController *)self view];
  [v21 addSubview:self->_vignetteView];

  v22 = [(VideosExtrasListTemplateViewController *)self view];
  [v22 addConstraints:v20];

  v23 = [VideosExtrasTableView alloc];
  v24 = [(VideosExtrasTableView *)v23 initWithFrame:0 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  tableView = self->_tableView;
  self->_tableView = v24;

  [(UITableView *)self->_tableView _setHeaderAndFooterViewsFloat:0];
  [(UITableView *)self->_tableView setSeparatorStyle:1];
  v26 = self->_tableView;
  v27 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.2];
  [(UITableView *)v26 setSeparatorColor:v27];

  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"ListTableViewCell"];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  v28 = self->_tableView;
  v29 = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)v28 setBackgroundColor:v29];

  [(UITableView *)self->_tableView setShowsHorizontalScrollIndicator:0];
  [(UITableView *)self->_tableView setShowsVerticalScrollIndicator:0];
  v30 = self->_tableView;
  v31 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [(UITableView *)v30 setTableFooterView:v31];

  [(UITableView *)self->_tableView _setContentInsetAdjustmentBehavior:2];
  [(UITableView *)self->_tableView setEstimatedRowHeight:60.0];
  v32 = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2030];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_tableView setBackgroundView:v32];
  [v3 addSubview:self->_tableView];
}

- (void)_addConstraintsToTableView:(id)a3
{
  v32 = a3;
  v4 = [(VideosExtrasListTemplateViewController *)self view];
  v5 = v4;
  if (self->_masterViewConstraints)
  {
    [v4 removeConstraints:?];
  }

  if ([(VideosExtrasElementViewController *)self isWide])
  {
    v6 = [MEMORY[0x1E696ACD8] constraintsBySizingView:v32 toSize:{305.0, 500.0}];
    if (self->_tableViewLeft)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    v8 = MEMORY[0x1E69A8958];
    UIEdgeInsetsMakeWithEdges();
    v9 = [v8 positionConstraintsForView:v32 insets:v7 position:?];
    v10 = [MEMORY[0x1E696ACD8] constraintWithItem:v32 attribute:10 relatedBy:0 toItem:v5 attribute:10 multiplier:1.0 constant:0.0];
    v11 = [v9 arrayByAddingObject:v10];

    v12 = [v6 arrayByAddingObjectsFromArray:v11];
    masterViewConstraints = self->_masterViewConstraints;
    self->_masterViewConstraints = v12;

    [v32 setContentInset:{0.0, 0.0, 60.0, 0.0}];
  }

  else
  {
    if (MEMORY[0x1E6913230]() && [MEMORY[0x1E69DF6F0] isPhone])
    {
      v6 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v32 toView:v5 alongEdges:13 insets:{10.0, 0.0, 0.0, 0.0}];
      v14 = *MEMORY[0x1E69DDCE0];
      v15 = *(MEMORY[0x1E69DDCE0] + 8);
      v17 = *(MEMORY[0x1E69DDCE0] + 16);
      v16 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v14 = *MEMORY[0x1E69DDCE0];
      v15 = *(MEMORY[0x1E69DDCE0] + 8);
      v17 = *(MEMORY[0x1E69DDCE0] + 16);
      v16 = *(MEMORY[0x1E69DDCE0] + 24);
      v6 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v32 toView:v5 alongEdges:13 insets:{*MEMORY[0x1E69DDCE0], v15, v17, v16}];
    }

    v18 = [(VideosExtrasListTemplateViewController *)self navigationController];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(VideosExtrasListTemplateViewController *)self navigationController];
      v21 = [v20 mainTemplateViewController];
      v22 = [v21 view];
      [v22 bounds];
      v24 = v23;

      v17 = 60.0;
      if (v24 > 60.0)
      {
        v25 = [v21 menuBarView];
        [v25 bounds];
        v27 = v26;

        v17 = fmax(v27, 60.0);
      }
    }

    [v32 setContentInset:{v14, v15, v17, v16}];
    v28 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v28 bounds];
    if (v29 > 480.0)
    {
      v30 = 0.4;
    }

    else
    {
      v30 = 0.5;
    }

    v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v32 attribute:7 relatedBy:0 toItem:v5 attribute:7 multiplier:v30 constant:0.0];
    v31 = [v6 arrayByAddingObject:v11];
    v10 = self->_masterViewConstraints;
    self->_masterViewConstraints = v31;
  }

  [v5 addConstraints:self->_masterViewConstraints];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v4 = [v3 list];
  v5 = [v4 sections];
  v6 = [v5 count];

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v6 = [v5 list];
  v7 = [v6 sections];
  v8 = [v7 objectAtIndex:a4];
  v9 = [v8 items];
  v10 = [v9 count];

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithIdentifier:@"ListTableViewCell" forIndexPath:v7];
  v9 = [v7 section];
  v10 = [v7 row];
  v11 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v12 = [v11 list];
  v13 = [v12 sections];

  if (v9 >= [v13 count])
  {
    v14 = 0;
  }

  else
  {
    v14 = [v13 objectAtIndex:v9];
  }

  v15 = [v14 items];
  if (v10 < [v15 count])
  {
    v16 = [v15 objectAtIndex:v10];
    if (v16)
    {
      v17 = v16;
      [v8 configureForListItemLockupElement:v16 wide:{-[VideosExtrasElementViewController isWide](self, "isWide")}];
    }
  }

  v18 = [v6 indexPathForSelectedRow];
  v19 = [v7 isEqual:v18];

  [v8 setSelected:v19 animated:0];

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (tableView_heightForHeaderInSection__onceToken != -1)
  {
    [VideosExtrasListTemplateViewController tableView:heightForHeaderInSection:];
  }

  v7 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v8 = [v7 list];
  v9 = [v8 sections];

  if ([v9 count] <= a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndex:a4];
  }

  v11 = [v10 header];
  v12 = [v11 title];
  v13 = [v12 text];
  v14 = [v13 length];

  if (v14)
  {
    [tableView_heightForHeaderInSection__headerView configureForHeaderElement:v11];
    [tableView_heightForHeaderInSection__headerView intrinsicContentSize];
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

void __77__VideosExtrasListTemplateViewController_tableView_heightForHeaderInSection___block_invoke()
{
  v0 = [[VideosExtrasTableViewHeaderView alloc] initWithReuseIdentifier:@"ListTableViewHeaderLayout"];
  v1 = tableView_heightForHeaderInSection__headerView;
  tableView_heightForHeaderInSection__headerView = v0;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v8 = [v7 list];
  v9 = [v8 sections];

  if ([v9 count] <= a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndex:a4];
  }

  v11 = [v10 header];
  if (v11)
  {
    v12 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"ListTableViewHeader"];
    if (!v12)
    {
      v12 = [[VideosExtrasTableViewHeaderView alloc] initWithReuseIdentifier:@"ListTableViewHeader"];
    }

    [(VideosExtrasTableViewHeaderView *)v12 configureForHeaderElement:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)tableView:(id)a3 didHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  v7 = [v5 row];

  v8 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v9 = [v8 list];
  v13 = [v9 sections];

  if (v6 >= [v13 count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [v13 objectAtIndex:v6];
  }

  v11 = [v10 items];
  if (v7 < [v11 count])
  {
    v12 = [v11 objectAtIndex:v7];
    [v12 dispatchEventOfType:4 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = a4;
  v5 = [v16 section];
  v6 = [v16 row];
  v7 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v8 = [v7 list];
  v9 = [v8 sections];

  if (v5 >= [v9 count])
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 objectAtIndex:v5];
  }

  v11 = [v10 items];
  if (v6 >= [v11 count])
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v12 = [v11 objectAtIndex:v6];
    v13 = [v12 relatedContent];
    if (v13)
    {
      if ([(VideosExtrasElementViewController *)self isWide])
      {
        v14 = v16;
      }

      else
      {
        v14 = 0;
      }

      objc_storeStrong(&self->_autohighlightIndexPath, v14);
      v15 = [objc_opt_class() relatedContentViewControllerForElement:v13];
      [(NSMapTable *)self->_relatedContentViewControllerMap setObject:v15 forKey:v12];
      [(VideosExtrasListTemplateViewController *)self setRelatedContentViewController:v15];
    }
  }

  [v12 dispatchEventOfType:2 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:0];
}

- (BOOL)shouldUpdateByReplacingViewControllerWithTemplate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(VideosExtrasListTemplateViewController *)self templateElement];
  v7 = objc_opt_class();

  if (v5 == v7)
  {
    [(VideosExtrasListTemplateViewController *)self _updateForTemplate:v4];
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VideosExtrasListTemplateViewController;
    v8 = [(VideosExtrasListTemplateViewController *)&v10 shouldReplaceViewControllerWithNewTemplate:v4];
  }

  return v8;
}

- (void)_updateForTemplate:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 updateType] == 1)
  {
    v20 = v4;
    [v4 list];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = v29 = 0u;
    obj = [v19 sections];
    v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          if ([v9 updateType] == 1)
          {
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v10 = [v9 items];
            v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v23;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v23 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v22 + 1) + 8 * j);
                  v16 = [v15 updateType];
                  if (v16 == 4 || v16 == 1)
                  {
                    v18 = [v15 relatedContent];
                    [(VideosExtrasListTemplateViewController *)self _updateRelatedContent:v18 forListItem:v15];
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v12);
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v6);
    }

    v4 = v20;
  }
}

- (void)_updateRelatedContent:(id)a3 forListItem:(id)a4
{
  relatedContentViewControllerMap = self->_relatedContentViewControllerMap;
  v7 = a4;
  v8 = a3;
  v9 = [(NSMapTable *)relatedContentViewControllerMap objectForKey:v7];
  v10 = [(VideosExtrasListTemplateViewController *)self relatedContentViewController];

  v11 = [objc_opt_class() relatedContentViewControllerForElement:v8];

  [(NSMapTable *)self->_relatedContentViewControllerMap setObject:v11 forKey:v7];
  if (v9 == v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__VideosExtrasListTemplateViewController__updateRelatedContent_forListItem___block_invoke;
    v12[3] = &unk_1E872D990;
    v12[4] = self;
    v13 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }
}

- (void)_configureBannerWithElement:(id)a3
{
  v11.receiver = self;
  v11.super_class = VideosExtrasListTemplateViewController;
  [(VideosExtrasElementViewController *)&v11 _configureBannerWithElement:a3];
  v4 = [(VideosExtrasListTemplateViewController *)self title];

  if (!v4)
  {
    v5 = [(VideosExtrasListTemplateViewController *)self templateElement];
    v6 = [v5 list];

    v7 = [v6 header];
    v8 = [v7 title];
    v9 = [v8 text];
    v10 = [v9 string];

    [(VideosExtrasListTemplateViewController *)self setTitle:v10];
  }
}

- (void)_setRelatedContentEmbedded:(BOOL)a3
{
  if (self->_relatedContentEmbedded != a3)
  {
    if (self->_relatedContentViewController)
    {
      if (a3)
      {
        [(VideosExtrasListTemplateViewController *)self _embedRelatedContentViewController];
      }

      else
      {
        [(VideosExtrasListTemplateViewController *)self _unembedRelatedContent];
        [(VideosExtrasListTemplateViewController *)self _pushRelatedViewController:self->_relatedContentViewController animated:0];
      }
    }

    self->_relatedContentEmbedded = a3;
  }
}

- (void)setRelatedContentViewController:(id)a3
{
  v5 = a3;
  relatedContentViewController = self->_relatedContentViewController;
  v19 = v5;
  if (relatedContentViewController != v5)
  {
    if (relatedContentViewController)
    {
      if (self->_relatedContentEmbedded)
      {
        [(VideosExtrasListTemplateViewController *)self _unembedRelatedContent];
      }

      else if (v5)
      {
        v7 = [(VideosExtrasListTemplateViewController *)self navigationController];
        v8 = [v7 popViewControllerAnimated:0];
      }
    }

    objc_storeStrong(&self->_relatedContentViewController, a3);
    v9 = self->_relatedContentViewController;
    if (self->_relatedContentEmbedded)
    {
      if (v9)
      {
        [(VideosExtrasListTemplateViewController *)self _embedRelatedContentViewController];
      }
    }

    else if (v9)
    {
      v10 = v19;
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VideosExtrasListTemplateViewController *)self templateElement];
        v12 = [v11 background];

        v13 = [(VideosExtrasListTemplateViewController *)self templateElement];
        v14 = [v13 documentBanner];

        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16 = v15;
        if (v12)
        {
          [v15 addObject:v12];
        }

        v17 = [v14 background];

        if (v17)
        {
          v18 = [v14 background];
          [v16 addObject:v18];
        }

        [(VideosExtrasElementViewController *)v10 configureBackgroundWithElements:v16];
      }

      [(VideosExtrasListTemplateViewController *)self _pushRelatedViewController:self->_relatedContentViewController animated:1];
    }
  }
}

- (void)_embedRelatedContentViewController
{
  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController setEmbedded:1];
  [(VideosExtrasListTemplateViewController *)self addChildViewController:self->_relatedContentViewController];
  v5 = [(VideosExtrasListTemplateViewController *)self view];
  v3 = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v3];
  [(VideosExtrasListTemplateViewController *)self _setDetailContraints];
  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController didMoveToParentViewController:self];
  v4 = [(VideosExtrasElementViewController *)self backgroundViewController];
  [v4 setVignetteType:3];
}

- (void)_pushRelatedViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69DD258];
  v7 = a3;
  v14 = [[v6 alloc] initWithNibName:0 bundle:0];
  v8 = [v14 view];
  v9 = [v7 view];
  [v14 addChildViewController:v7];
  [v8 addSubview:v9];
  v10 = [MEMORY[0x1E696ACD8] constraintsByAttachingView:v9 toView:v8 alongEdges:15 insets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  detailViewConstraints = self->_detailViewConstraints;
  self->_detailViewConstraints = v10;

  [v8 addConstraints:self->_detailViewConstraints];
  [v7 didMoveToParentViewController:v14];
  v12 = [v7 title];

  [v14 setTitle:v12];
  v13 = [(VideosExtrasListTemplateViewController *)self navigationController];
  [v13 pushViewController:v14 animated:v4];
}

- (void)_unembedRelatedContent
{
  v5 = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController view];
  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController willMoveToParentViewController:0];
  v3 = [(VideosExtrasListTemplateViewController *)self view];
  [v3 removeConstraints:self->_detailViewConstraints];

  [v5 removeFromSuperview];
  detailViewConstraints = self->_detailViewConstraints;
  self->_detailViewConstraints = 0;

  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController removeFromParentViewController];
  [(VideosExtrasViewElementViewController *)self->_relatedContentViewController setEmbedded:0];
}

- (void)_setDetailContraints
{
  v24[3] = *MEMORY[0x1E69E9840];
  v3 = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController view];
  v4 = self->_tableView;
  if (self->_detailViewConstraints)
  {
    v5 = [(VideosExtrasListTemplateViewController *)self view];
    [v5 removeConstraints:self->_detailViewConstraints];
  }

  if (self->_tableViewLeft)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = MEMORY[0x1E69A8958];
  UIEdgeInsetsMakeWithEdges();
  v23 = [v7 positionConstraintsForView:v3 insets:v6 position:?];
  if ([(VideosExtrasViewElementViewController *)self->_relatedContentViewController matchParentHeight])
  {
    v8 = v4;
    v9 = v4;
  }

  else
  {
    [(VideosExtrasListTemplateViewController *)self view];
    v10 = v9 = v4;
    v8 = [v10 safeAreaLayoutGuide];
  }

  v11 = [MEMORY[0x1E696ACD8] constraintWithItem:v3 attribute:4 relatedBy:0 toItem:v8 attribute:4 multiplier:1.0 constant:0.0];
  v22 = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController preferredLayoutGuide];
  v12 = [(VideosExtrasViewElementViewController *)self->_relatedContentViewController preferredLayoutAttribute];
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:v22 attribute:v12 relatedBy:0 toItem:v9 attribute:3 multiplier:1.0 constant:0.0];
  if (self->_tableViewLeft)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (self->_tableViewLeft)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (self->_tableViewLeft)
  {
    v16 = 67.0;
  }

  else
  {
    v16 = -67.0;
  }

  v17 = [MEMORY[0x1E696ACD8] constraintWithItem:v3 attribute:v14 relatedBy:0 toItem:v9 attribute:v15 multiplier:1.0 constant:v16];
  v24[0] = v11;
  v24[1] = v13;
  v24[2] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:3];
  v19 = [v23 arrayByAddingObjectsFromArray:v18];
  detailViewConstraints = self->_detailViewConstraints;
  self->_detailViewConstraints = v19;

  v21 = [(VideosExtrasListTemplateViewController *)self view];
  [v21 addConstraints:self->_detailViewConstraints];
}

- (void)_prepareLayout
{
  v15.receiver = self;
  v15.super_class = VideosExtrasListTemplateViewController;
  [(VideosExtrasElementViewController *)&v15 _prepareLayout];
  [(VideosExtrasListTemplateViewController *)self _setRelatedContentEmbedded:[(VideosExtrasElementViewController *)self isWide]];
  if (!self->_relatedContentEmbedded)
  {
    relatedContentViewController = self->_relatedContentViewController;
    self->_relatedContentViewController = 0;
  }

  [(VideosExtrasListTemplateViewController *)self _addConstraintsToTableView:self->_tableView];
  [(VideosExtrasListTemplateViewController *)self _configureVignette:[(VideosExtrasElementViewController *)self isWide]];
  [(UITableView *)self->_tableView reloadData];
  if (![(VideosExtrasElementViewController *)self isWide])
  {
    autohighlightIndexPath = self->_autohighlightIndexPath;
    self->_autohighlightIndexPath = 0;
  }

  if (self->_autohighlightIndexPath)
  {
    v5 = [(VideosExtrasListTemplateViewController *)self templateElement];
    v6 = [v5 list];
    v7 = [v6 sections];

    v8 = [(NSIndexPath *)self->_autohighlightIndexPath section];
    if (v8 < [v7 count])
    {
      v9 = [v7 objectAtIndex:{-[NSIndexPath section](self->_autohighlightIndexPath, "section")}];
      v10 = [v9 items];

      v11 = [(NSIndexPath *)self->_autohighlightIndexPath row];
      if (v11 < [v10 count])
      {
        v12 = [v10 objectAtIndex:{-[NSIndexPath row](self->_autohighlightIndexPath, "row")}];
        v13 = [v12 relatedContent];
        if (v13)
        {
          v14 = [objc_opt_class() relatedContentViewControllerForElement:v13];
          [(NSMapTable *)self->_relatedContentViewControllerMap setObject:v14 forKey:v12];
          [(VideosExtrasListTemplateViewController *)self setRelatedContentViewController:v14];
        }

        [(UITableView *)self->_tableView selectRowAtIndexPath:self->_autohighlightIndexPath animated:0 scrollPosition:0];
      }
    }
  }
}

- (void)_configureVignette:(BOOL)a3
{
  if (self->_relatedContentEmbedded)
  {
    if (self->_relatedContentViewController)
    {
      v3 = 3;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  v4 = [(VideosExtrasElementViewController *)self backgroundViewController];
  [v4 setVignetteType:v3];
}

+ (id)relatedContentViewControllerForElement:(id)a3
{
  v3 = a3;
  if (relatedContentViewControllerForElement__onceToken != -1)
  {
    +[VideosExtrasListTemplateViewController relatedContentViewControllerForElement:];
  }

  v4 = relatedContentViewControllerForElement__templateMap;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 objectForKey:v6];

  if (v7)
  {
    v7 = [[v7 alloc] initWithViewElement:v3];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_8;
    }

    v7 = v7;
    v8 = +[VideosExtrasGridElementViewController wideDetailStyle];
    [(objc_class *)v7 setWideStyle:v8];

    v9 = +[VideosExtrasGridElementViewController smallDetailStyle];
    [(objc_class *)v7 setSmallStyle:v9];

    v10 = +[VideosExtrasGridElementViewController mediumDetailStyle];
    [(objc_class *)v7 setMediumStyle:v10];

    v11 = +[VideosExtrasGridElementViewController largeDetailStyle];
    [(objc_class *)v7 setLargeStyle:v11];

    v12 = +[VideosExtrasGridElementViewController extraLargeDetailStyle];
    [(objc_class *)v7 setExtraLargeStyle:v12];
  }

  else
  {
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    NSLog(&cfstr_CouldNotGetVie.isa, v12);
  }

LABEL_8:

  return v7;
}

void __81__VideosExtrasListTemplateViewController_relatedContentViewControllerForElement___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"IKGridElement";
  v3[0] = objc_opt_class();
  v2[1] = @"IKLockupElement";
  v3[1] = objc_opt_class();
  v2[2] = @"IKActivityIndicatorElement";
  v3[2] = objc_opt_class();
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = relatedContentViewControllerForElement__templateMap;
  relatedContentViewControllerForElement__templateMap = v0;
}

@end