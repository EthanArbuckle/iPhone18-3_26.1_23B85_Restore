@interface UIDebuggingInformationHierarchyViewController
- (BOOL)shouldCollapseAtIndexPath:(id)a3;
- (BOOL)shouldHighlightSelectedCells;
- (UIDebuggingInformationHierarchyViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)getViewsRecursiveWithLevel:(unint64_t)a3 forView:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)indentationLevelForIndexPath:(id)a3;
- (void)_showWindowChange;
- (void)chooseNewTarget:(id)a3;
- (void)collapseBeneathCell:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)didReceiveNewView:(id)a3;
- (void)displayDetailsForCell:(id)a3;
- (void)expandBeneathCell:(id)a3;
- (void)highlightView:(id)a3;
- (void)refresh:(id)a3;
- (void)setRootViewForInspection:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIDebuggingInformationHierarchyViewController

- (UIDebuggingInformationHierarchyViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v10.receiver = self;
  v10.super_class = UIDebuggingInformationHierarchyViewController;
  v4 = [(UIViewController *)&v10 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[UIDebuggingInformationOverlay overlay];
    v6 = [v5 inspectedWindow];
    [(UIDebuggingInformationHierarchyViewController *)v4 setRootViewForInspection:v6];

    registerTouchObserver(v4);
    v7 = objc_alloc_init(UIDebuggingInformationInspectorDetailViewController);
    detail = v4->_detail;
    v4->_detail = v7;
  }

  return v4;
}

- (void)_showWindowChange
{
  v4 = objc_opt_new();
  v3 = [(UIViewController *)self navigationController];
  [v3 pushViewController:v4 animated:1];
}

- (void)viewDidLoad
{
  v36[3] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v34 viewDidLoad];
  v3 = [(UIViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 setTranslucent:1];

  v33 = [[UIBarButtonItem alloc] initWithTitle:@"Window" style:0 target:self action:sel__showWindowChange];
  v5 = [[UIBarButtonItem alloc] initWithTitle:@"Inspect" style:0 target:self action:sel_chooseNewTarget_];
  v36[0] = v33;
  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v36[1] = v6;
  v36[2] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  normalItems = self->_normalItems;
  self->_normalItems = v7;

  [(UIViewController *)self setToolbarItems:self->_normalItems];
  v9 = [[UIView alloc] initWithFrame:0.0, 0.0, 200.0, 44.0];
  v10 = [UILabel alloc];
  [(UIView *)v9 bounds];
  v11 = [(UILabel *)v10 initWithFrame:?];
  [(UILabel *)v11 setText:@"Tap a view to inspect it."];
  v12 = [off_1E70ECC18 systemFontOfSize:12.0];
  [(UILabel *)v11 setFont:v12];

  [(UILabel *)v11 setTextAlignment:1];
  [(UIView *)v9 addSubview:v11];
  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v35[0] = v13;
  v14 = [[UIBarButtonItem alloc] initWithCustomView:v9];
  v35[1] = v14;
  v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v35[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
  showingOverlayItems = self->_showingOverlayItems;
  self->_showingOverlayItems = v16;

  v18 = objc_alloc_init(UIDebuggingInformationHierarchyLayout);
  [(UIDebuggingInformationHierarchyLayout *)v18 setDelegate:self];
  v19 = [UICollectionView alloc];
  v20 = [(UIViewController *)self view];
  [v20 bounds];
  v21 = [(UICollectionView *)v19 initWithFrame:v18 collectionViewLayout:?];

  v22 = +[UIColor whiteColor];
  [(UICollectionView *)v21 setBackgroundColor:v22];

  [(UICollectionView *)v21 setDataSource:self];
  [(UICollectionView *)v21 setDelegate:self];
  [(UIView *)v21 setAutoresizingMask:18];
  [(UICollectionView *)v21 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"reuseIdentifier"];
  [(UICollectionView *)v21 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"line" withReuseIdentifier:@"separator-line"];
  collectionView = self->_collectionView;
  self->_collectionView = v21;
  v24 = v21;

  v25 = [(UIViewController *)self view];
  [v25 addSubview:self->_collectionView];

  v26 = self->_collectionView;
  v27 = [(UIViewController *)self view];
  [v27 bounds];
  [(UICollectionView *)v26 setFrame:?];

  v28 = [(UIViewController *)self view];
  v29 = +[UIColor whiteColor];
  [v28 setBackgroundColor:v29];

  v30 = objc_alloc_init(UIRefreshControl);
  [(UIDebuggingInformationHierarchyViewController *)self setRefreshControl:v30];

  v31 = [(UIDebuggingInformationHierarchyViewController *)self refreshControl];
  [v31 addTarget:self action:sel_refresh_ forControlEvents:4096];

  v32 = [(UIDebuggingInformationHierarchyViewController *)self refreshControl];
  [(UIScrollView *)self->_collectionView setRefreshControl:v32];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v5 viewWillAppear:a3];
  [(UIDebuggingInformationHierarchyViewController *)self refresh:0];
  [(UIDebuggingInformationHierarchyViewController *)self highlightView:0];
  v4 = [(UIViewController *)self navigationController];
  [v4 setToolbarHidden:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v5 viewWillDisappear:a3];
  v4 = [(UIViewController *)self navigationController];
  [v4 setToolbarHidden:1];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(UIViewController *)self->_detail view];
  v6 = [(UIViewController *)self view];
  [v6 frame];
  [v5 setFrame:?];
}

- (void)chooseNewTarget:(id)a3
{
  [(UIViewController *)self setToolbarItems:self->_showingOverlayItems animated:1];
  v3 = +[UIDebuggingInformationOverlay overlay];
  [v3 setCheckingTouches:1];
}

- (void)didReceiveNewView:(id)a3
{
  v14 = a3;
  [(UIViewController *)self setToolbarItems:self->_normalItems animated:1];
  v4 = [(UIDebuggingInformationHierarchyViewController *)self data];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(UIDebuggingInformationHierarchyViewController *)self data];
      v8 = [v7 objectAtIndexedSubscript:v6];
      v9 = [v8 view];

      if (v9 == v14)
      {
        v10 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:0];
        v11 = [(UIDebuggingInformationHierarchyViewController *)self collectionView];
        [v11 selectItemAtIndexPath:v10 animated:1 scrollPosition:1];

        [(UIDebuggingInformationHierarchyViewController *)self highlightView:v14];
      }

      ++v6;
      v12 = [(UIDebuggingInformationHierarchyViewController *)self data];
      v13 = [v12 count];
    }

    while (v6 < v13);
  }
}

- (void)refresh:(id)a3
{
  v4 = +[UIDebuggingInformationOverlay overlay];
  v5 = [v4 inspectedWindow];
  [(UIDebuggingInformationHierarchyViewController *)self setRootViewForInspection:v5];

  v6 = [(UIDebuggingInformationHierarchyViewController *)self refreshControl];

  if (v6)
  {
    v7 = [(UIDebuggingInformationHierarchyViewController *)self refreshControl];
    [v7 endRefreshing];
  }

  v8 = [(UIDebuggingInformationHierarchyViewController *)self collectionView];
  [v8 reloadData];
}

- (void)setRootViewForInspection:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_rootViewForInspection, a3);
  v5 = v8;
  if (v8)
  {
    v6 = [(UIDebuggingInformationHierarchyViewController *)self getViewsRecursiveWithLevel:0 forView:v8];
    [(UIDebuggingInformationHierarchyViewController *)self setData:v6];

    v7 = [(UIDebuggingInformationHierarchyViewController *)self collectionView];
    [v7 reloadData];

    v5 = v8;
  }
}

- (id)getViewsRecursiveWithLevel:(unint64_t)a3 forView:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [[UIDebuggingInformationHierarchyDataContainer alloc] initWithView:v6 atLevel:a3];
  v8 = [MEMORY[0x1E695DF70] arrayWithObjects:{v7, 0}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 subviews];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(UIDebuggingInformationHierarchyViewController *)self getViewsRecursiveWithLevel:a3 + 1 forView:*(*(&v17 + 1) + 8 * i)];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];

  return v15;
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(NSArray *)self->_normalItems lastObject];
  v4 = +[UIDebuggingInformationOverlay overlay];
  [v3 setEnabled:{objc_msgSend(v4, "isFullscreen") ^ 1}];
}

- (void)displayDetailsForCell:(id)a3
{
  v4 = [a3 indexPath];
  if (v4)
  {
    v9 = v4;
    v5 = [(UIDebuggingInformationHierarchyViewController *)self data];
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];
    v7 = [v6 view];

    [(UIDebuggingInformationInspectorDetailViewController *)self->_detail inspectView:v7];
    v8 = [(UIViewController *)self navigationController];
    [v8 pushViewController:self->_detail animated:1];

    v4 = v9;
  }
}

- (void)collapseBeneathCell:(id)a3
{
  v4 = [a3 indexPath];
  if (v4)
  {
    v5 = [(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v4];
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v4 inSection:{"row") + 1, 0}];
    v7 = objc_opt_new();
    if ([(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v6]<= v5)
    {
      v13 = v6;
    }

    else
    {
      do
      {
        v8 = [v6 row];
        v9 = [(UIDebuggingInformationHierarchyViewController *)self data];
        v10 = [v9 count];

        if (v8 < v10)
        {
          v11 = [(UIDebuggingInformationHierarchyViewController *)self data];
          v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
          [v12 setCollapsed:1];

          [v7 addObject:v6];
        }

        v13 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v6 inSection:{"row") + 1, 0}];

        v6 = v13;
      }

      while ([(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v13]> v5);
    }

    collectionView = self->_collectionView;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__UIDebuggingInformationHierarchyViewController_collapseBeneathCell___block_invoke;
    v15[3] = &unk_1E70F3C60;
    v15[4] = self;
    v16 = v4;
    [(UICollectionView *)collectionView performBatchUpdates:0 completion:v15];
  }
}

void __69__UIDebuggingInformationHierarchyViewController_collapseBeneathCell___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "row")}];
  v4 = [v3 collapsed];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 1072);

    [v6 scrollToItemAtIndexPath:v5 atScrollPosition:1 animated:1];
  }
}

- (void)expandBeneathCell:(id)a3
{
  v4 = [a3 indexPath];
  if (v4)
  {
    v5 = [(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v4];
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v4 inSection:{"row") + 1, 0}];
    if ([(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v6]<= v5)
    {
      v12 = v6;
    }

    else
    {
      do
      {
        v7 = [v6 row];
        v8 = [(UIDebuggingInformationHierarchyViewController *)self data];
        v9 = [v8 count];

        if (v7 < v9)
        {
          v10 = [(UIDebuggingInformationHierarchyViewController *)self data];
          v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
          [v11 setCollapsed:0];
        }

        v12 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v6 inSection:{"row") + 1, 0}];

        v6 = v12;
      }

      while ([(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v12]> v5);
    }

    collectionView = self->_collectionView;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __67__UIDebuggingInformationHierarchyViewController_expandBeneathCell___block_invoke;
    v14[3] = &unk_1E70F3C60;
    v14[4] = self;
    v15 = v4;
    [(UICollectionView *)collectionView performBatchUpdates:0 completion:v14];
  }
}

void __67__UIDebuggingInformationHierarchyViewController_expandBeneathCell___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) data];
  v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "row")}];
  v4 = [v3 collapsed];

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 1072);

    [v6 scrollToItemAtIndexPath:v5 atScrollPosition:1 animated:1];
  }
}

- (BOOL)shouldHighlightSelectedCells
{
  v2 = +[UIDebuggingInformationOverlay overlay];
  v3 = [v2 isFullscreen];

  return v3 ^ 1;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = +[UIDebuggingInformationOverlay overlay];
  v8 = [v7 isFullscreen];

  if (v8)
  {
    [(UIDebuggingInformationHierarchyViewController *)self highlightView:0];
    v9 = [v15 cellForItemAtIndexPath:v6];
    [v9 setNeedsLayout];
    [v9 deliverToggle];
  }

  else
  {
    v9 = [v15 cellForItemAtIndexPath:v6];
    [v9 setNeedsLayout];
    v10 = [(UIDebuggingInformationHierarchyViewController *)self data];
    v11 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
    v12 = [v11 view];

    v13 = [(UIDebuggingInformationHierarchyViewController *)self highlightedView];

    v14 = v12;
    if (v12 == v13)
    {
      [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:v6 animated:0];
      v14 = 0;
    }

    [(UIDebuggingInformationHierarchyViewController *)self highlightView:v14];
  }
}

- (BOOL)shouldCollapseAtIndexPath:(id)a3
{
  v4 = [a3 row];
  v5 = [(UIDebuggingInformationHierarchyViewController *)self data];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    v4 = v6;
  }

  v7 = [(UIDebuggingInformationHierarchyViewController *)self data];
  v8 = [v7 objectAtIndexedSubscript:v4];
  v9 = [v8 collapsed];

  return v9;
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v4 = [a3 cellForItemAtIndexPath:a4];
  [v4 setNeedsLayout];
}

- (unint64_t)indentationLevelForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [(UIDebuggingInformationHierarchyViewController *)self data];
  v7 = [v6 count];

  if (v5 < v7 && (-[UIDebuggingInformationHierarchyViewController data](self, "data"), v8 = objc_claimAutoreleasedReturnValue(), [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "view"), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, v10))
  {
    v11 = [(UIDebuggingInformationHierarchyViewController *)self data];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
    v13 = [v12 level];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(UIDebuggingInformationHierarchyViewController *)self data:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithReuseIdentifier:@"reuseIdentifier" forIndexPath:v6];
  v8 = [(UIDebuggingInformationHierarchyViewController *)self data];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  v10 = [v9 view];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
  }

  else
  {
    v12 = @"Deallocated";
  }

  [v7 setName:v12];
  [v7 setDelegate:self];
  [v7 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v7 contentView];
  [v21 setFrame:{v14, v16, v18, v20}];

  v22 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(v6 inSection:{"row") + 1, objc_msgSend(v6, "section")}];
  v23 = [(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v22];
  if (v23 <= [(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v6])
  {
    [v7 setDisclosureIndicatorHidden:1];
  }

  return v7;
}

- (void)highlightView:(id)a3
{
  v19 = a3;
  highlightedView = self->_highlightedView;
  if (highlightedView)
  {
    originalBorderColor = self->_originalBorderColor;
    v6 = [(UIView *)highlightedView layer];
    [v6 setBorderColor:originalBorderColor];

    originalBorderWidth = self->_originalBorderWidth;
    v8 = [(UIView *)self->_highlightedView layer];
    [v8 setBorderWidth:originalBorderWidth];
  }

  [(UIDebuggingInformationHierarchyViewController *)self setHighlightedView:v19];
  v9 = [v19 layer];
  self->_originalBorderColor = [v9 borderColor];

  v10 = [v19 layer];
  [v10 borderWidth];
  self->_originalBorderWidth = v11;

  v12 = +[UIColor redColor];
  v13 = [v12 CGColor];
  v14 = [(UIView *)self->_highlightedView layer];
  [v14 setBorderColor:v13];

  v15 = [objc_opt_self() mainScreen];
  [v15 scale];
  v17 = 1.0 / v16;
  v18 = [(UIView *)self->_highlightedView layer];
  [v18 setBorderWidth:v17];
}

@end