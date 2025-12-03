@interface UIDebuggingInformationHierarchyViewController
- (BOOL)shouldCollapseAtIndexPath:(id)path;
- (BOOL)shouldHighlightSelectedCells;
- (UIDebuggingInformationHierarchyViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)getViewsRecursiveWithLevel:(unint64_t)level forView:(id)view;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (unint64_t)indentationLevelForIndexPath:(id)path;
- (void)_showWindowChange;
- (void)chooseNewTarget:(id)target;
- (void)collapseBeneathCell:(id)cell;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)didReceiveNewView:(id)view;
- (void)displayDetailsForCell:(id)cell;
- (void)expandBeneathCell:(id)cell;
- (void)highlightView:(id)view;
- (void)refresh:(id)refresh;
- (void)setRootViewForInspection:(id)inspection;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation UIDebuggingInformationHierarchyViewController

- (UIDebuggingInformationHierarchyViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = UIDebuggingInformationHierarchyViewController;
  v4 = [(UIViewController *)&v10 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[UIDebuggingInformationOverlay overlay];
    inspectedWindow = [v5 inspectedWindow];
    [(UIDebuggingInformationHierarchyViewController *)v4 setRootViewForInspection:inspectedWindow];

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
  navigationController = [(UIViewController *)self navigationController];
  [navigationController pushViewController:v4 animated:1];
}

- (void)viewDidLoad
{
  v36[3] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v34 viewDidLoad];
  navigationController = [(UIViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setTranslucent:1];

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
  view = [(UIViewController *)self view];
  [view bounds];
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

  view2 = [(UIViewController *)self view];
  [view2 addSubview:self->_collectionView];

  v26 = self->_collectionView;
  view3 = [(UIViewController *)self view];
  [view3 bounds];
  [(UICollectionView *)v26 setFrame:?];

  view4 = [(UIViewController *)self view];
  v29 = +[UIColor whiteColor];
  [view4 setBackgroundColor:v29];

  v30 = objc_alloc_init(UIRefreshControl);
  [(UIDebuggingInformationHierarchyViewController *)self setRefreshControl:v30];

  refreshControl = [(UIDebuggingInformationHierarchyViewController *)self refreshControl];
  [refreshControl addTarget:self action:sel_refresh_ forControlEvents:4096];

  refreshControl2 = [(UIDebuggingInformationHierarchyViewController *)self refreshControl];
  [(UIScrollView *)self->_collectionView setRefreshControl:refreshControl2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v5 viewWillAppear:appear];
  [(UIDebuggingInformationHierarchyViewController *)self refresh:0];
  [(UIDebuggingInformationHierarchyViewController *)self highlightView:0];
  navigationController = [(UIViewController *)self navigationController];
  [navigationController setToolbarHidden:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v5 viewWillDisappear:disappear];
  navigationController = [(UIViewController *)self navigationController];
  [navigationController setToolbarHidden:1];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = UIDebuggingInformationHierarchyViewController;
  [(UIViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  view = [(UIViewController *)self->_detail view];
  view2 = [(UIViewController *)self view];
  [view2 frame];
  [view setFrame:?];
}

- (void)chooseNewTarget:(id)target
{
  [(UIViewController *)self setToolbarItems:self->_showingOverlayItems animated:1];
  v3 = +[UIDebuggingInformationOverlay overlay];
  [v3 setCheckingTouches:1];
}

- (void)didReceiveNewView:(id)view
{
  viewCopy = view;
  [(UIViewController *)self setToolbarItems:self->_normalItems animated:1];
  data = [(UIDebuggingInformationHierarchyViewController *)self data];
  v5 = [data count];

  if (v5)
  {
    v6 = 0;
    do
    {
      data2 = [(UIDebuggingInformationHierarchyViewController *)self data];
      v8 = [data2 objectAtIndexedSubscript:v6];
      view = [v8 view];

      if (view == viewCopy)
      {
        v10 = [MEMORY[0x1E696AC88] indexPathForRow:v6 inSection:0];
        collectionView = [(UIDebuggingInformationHierarchyViewController *)self collectionView];
        [collectionView selectItemAtIndexPath:v10 animated:1 scrollPosition:1];

        [(UIDebuggingInformationHierarchyViewController *)self highlightView:viewCopy];
      }

      ++v6;
      data3 = [(UIDebuggingInformationHierarchyViewController *)self data];
      v13 = [data3 count];
    }

    while (v6 < v13);
  }
}

- (void)refresh:(id)refresh
{
  v4 = +[UIDebuggingInformationOverlay overlay];
  inspectedWindow = [v4 inspectedWindow];
  [(UIDebuggingInformationHierarchyViewController *)self setRootViewForInspection:inspectedWindow];

  refreshControl = [(UIDebuggingInformationHierarchyViewController *)self refreshControl];

  if (refreshControl)
  {
    refreshControl2 = [(UIDebuggingInformationHierarchyViewController *)self refreshControl];
    [refreshControl2 endRefreshing];
  }

  collectionView = [(UIDebuggingInformationHierarchyViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)setRootViewForInspection:(id)inspection
{
  inspectionCopy = inspection;
  objc_storeStrong(&self->_rootViewForInspection, inspection);
  v5 = inspectionCopy;
  if (inspectionCopy)
  {
    v6 = [(UIDebuggingInformationHierarchyViewController *)self getViewsRecursiveWithLevel:0 forView:inspectionCopy];
    [(UIDebuggingInformationHierarchyViewController *)self setData:v6];

    collectionView = [(UIDebuggingInformationHierarchyViewController *)self collectionView];
    [collectionView reloadData];

    v5 = inspectionCopy;
  }
}

- (id)getViewsRecursiveWithLevel:(unint64_t)level forView:(id)view
{
  v22 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v7 = [[UIDebuggingInformationHierarchyDataContainer alloc] initWithView:viewCopy atLevel:level];
  v8 = [MEMORY[0x1E695DF70] arrayWithObjects:{v7, 0}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subviews = [viewCopy subviews];
  v10 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v14 = [(UIDebuggingInformationHierarchyViewController *)self getViewsRecursiveWithLevel:level + 1 forView:*(*(&v17 + 1) + 8 * i)];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [subviews countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  lastObject = [(NSArray *)self->_normalItems lastObject];
  v4 = +[UIDebuggingInformationOverlay overlay];
  [lastObject setEnabled:{objc_msgSend(v4, "isFullscreen") ^ 1}];
}

- (void)displayDetailsForCell:(id)cell
{
  indexPath = [cell indexPath];
  if (indexPath)
  {
    v9 = indexPath;
    data = [(UIDebuggingInformationHierarchyViewController *)self data];
    v6 = [data objectAtIndexedSubscript:{objc_msgSend(v9, "row")}];
    view = [v6 view];

    [(UIDebuggingInformationInspectorDetailViewController *)self->_detail inspectView:view];
    navigationController = [(UIViewController *)self navigationController];
    [navigationController pushViewController:self->_detail animated:1];

    indexPath = v9;
  }
}

- (void)collapseBeneathCell:(id)cell
{
  indexPath = [cell indexPath];
  if (indexPath)
  {
    v5 = [(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:indexPath];
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(indexPath inSection:{"row") + 1, 0}];
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
        data = [(UIDebuggingInformationHierarchyViewController *)self data];
        v10 = [data count];

        if (v8 < v10)
        {
          data2 = [(UIDebuggingInformationHierarchyViewController *)self data];
          v12 = [data2 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
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
    v16 = indexPath;
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

- (void)expandBeneathCell:(id)cell
{
  indexPath = [cell indexPath];
  if (indexPath)
  {
    v5 = [(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:indexPath];
    v6 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(indexPath inSection:{"row") + 1, 0}];
    if ([(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v6]<= v5)
    {
      v12 = v6;
    }

    else
    {
      do
      {
        v7 = [v6 row];
        data = [(UIDebuggingInformationHierarchyViewController *)self data];
        v9 = [data count];

        if (v7 < v9)
        {
          data2 = [(UIDebuggingInformationHierarchyViewController *)self data];
          v11 = [data2 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
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
    v15 = indexPath;
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
  isFullscreen = [v2 isFullscreen];

  return isFullscreen ^ 1;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = +[UIDebuggingInformationOverlay overlay];
  isFullscreen = [v7 isFullscreen];

  if (isFullscreen)
  {
    [(UIDebuggingInformationHierarchyViewController *)self highlightView:0];
    v9 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [v9 setNeedsLayout];
    [v9 deliverToggle];
  }

  else
  {
    v9 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [v9 setNeedsLayout];
    data = [(UIDebuggingInformationHierarchyViewController *)self data];
    v11 = [data objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    view = [v11 view];

    highlightedView = [(UIDebuggingInformationHierarchyViewController *)self highlightedView];

    v14 = view;
    if (view == highlightedView)
    {
      [(UICollectionView *)self->_collectionView deselectItemAtIndexPath:pathCopy animated:0];
      v14 = 0;
    }

    [(UIDebuggingInformationHierarchyViewController *)self highlightView:v14];
  }
}

- (BOOL)shouldCollapseAtIndexPath:(id)path
{
  v4 = [path row];
  data = [(UIDebuggingInformationHierarchyViewController *)self data];
  v6 = [data count];

  if (v4 >= v6)
  {
    v4 = v6;
  }

  data2 = [(UIDebuggingInformationHierarchyViewController *)self data];
  v8 = [data2 objectAtIndexedSubscript:v4];
  collapsed = [v8 collapsed];

  return collapsed;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v4 = [view cellForItemAtIndexPath:path];
  [v4 setNeedsLayout];
}

- (unint64_t)indentationLevelForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  data = [(UIDebuggingInformationHierarchyViewController *)self data];
  v7 = [data count];

  if (v5 < v7 && (-[UIDebuggingInformationHierarchyViewController data](self, "data"), v8 = objc_claimAutoreleasedReturnValue(), [v8 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "view"), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, v10))
  {
    data2 = [(UIDebuggingInformationHierarchyViewController *)self data];
    v12 = [data2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    level = [v12 level];
  }

  else
  {
    level = 0;
  }

  return level;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(UIDebuggingInformationHierarchyViewController *)self data:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithReuseIdentifier:@"reuseIdentifier" forIndexPath:pathCopy];
  data = [(UIDebuggingInformationHierarchyViewController *)self data];
  v9 = [data objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  view = [v9 view];

  if (view)
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
  contentView = [v7 contentView];
  [contentView setFrame:{v14, v16, v18, v20}];

  v22 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(pathCopy inSection:{"row") + 1, objc_msgSend(pathCopy, "section")}];
  v23 = [(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:v22];
  if (v23 <= [(UIDebuggingInformationHierarchyViewController *)self indentationLevelForIndexPath:pathCopy])
  {
    [v7 setDisclosureIndicatorHidden:1];
  }

  return v7;
}

- (void)highlightView:(id)view
{
  viewCopy = view;
  highlightedView = self->_highlightedView;
  if (highlightedView)
  {
    originalBorderColor = self->_originalBorderColor;
    layer = [(UIView *)highlightedView layer];
    [layer setBorderColor:originalBorderColor];

    originalBorderWidth = self->_originalBorderWidth;
    layer2 = [(UIView *)self->_highlightedView layer];
    [layer2 setBorderWidth:originalBorderWidth];
  }

  [(UIDebuggingInformationHierarchyViewController *)self setHighlightedView:viewCopy];
  layer3 = [viewCopy layer];
  self->_originalBorderColor = [layer3 borderColor];

  layer4 = [viewCopy layer];
  [layer4 borderWidth];
  self->_originalBorderWidth = v11;

  v12 = +[UIColor redColor];
  cGColor = [v12 CGColor];
  layer5 = [(UIView *)self->_highlightedView layer];
  [layer5 setBorderColor:cGColor];

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v17 = 1.0 / v16;
  layer6 = [(UIView *)self->_highlightedView layer];
  [layer6 setBorderWidth:v17];
}

@end