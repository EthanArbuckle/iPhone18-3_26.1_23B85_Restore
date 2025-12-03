@interface SUStructuredPageGroupedViewController
- (BOOL)_addPurchaseBatch:(id)batch forIndexPath:(id)path;
- (BOOL)openDocumentForItemAtIndexPath:(id)path withApplication:(id)application;
- (BOOL)purchaseItemAtIndexPath:(id)path;
- (SUStructuredPageGroupedViewController)init;
- (id)itemAtIndexPath:(id)path;
- (id)newNoItemsOverlayLabel;
- (void)_performPurchaseAnimationForIndexPath:(id)path;
- (void)dealloc;
- (void)setSkLoading:(BOOL)loading;
@end

@implementation SUStructuredPageGroupedViewController

- (SUStructuredPageGroupedViewController)init
{
  v4.receiver = self;
  v4.super_class = SUStructuredPageGroupedViewController;
  v2 = [(SUStructuredPageViewController *)&v4 init];
  if (v2)
  {
    [(SUStructuredPageViewController *)v2 setDataSourceClass:objc_opt_class()];
    [(SUTableViewController *)v2 setTableViewStyle:1];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUStructuredPageGroupedViewController;
  [(SUStructuredPageViewController *)&v3 dealloc];
}

- (id)itemAtIndexPath:(id)path
{
  v4 = [-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];

  return [v4 itemAtIndexPath:path];
}

- (id)newNoItemsOverlayLabel
{
  v4.receiver = self;
  v4.super_class = SUStructuredPageGroupedViewController;
  newNoItemsOverlayLabel = [(SUStructuredPageViewController *)&v4 newNoItemsOverlayLabel];
  [newNoItemsOverlayLabel setTextColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithRed:green:blue:alpha:", 0.298039216, 0.337254902, 0.423529412, 1.0)}];
  return newNoItemsOverlayLabel;
}

- (BOOL)openDocumentForItemAtIndexPath:(id)path withApplication:(id)application
{
  v7 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
  if (v7)
  {
    v8 = v7;
    purchaseManager = [(SUClientInterface *)[(SUViewController *)self clientInterface] purchaseManager];
    v10 = -[SUPurchaseManager newPurchaseBatchForItems:offers:](purchaseManager, "newPurchaseBatchForItems:offers:", [MEMORY[0x1E695DEC8] arrayWithObject:v8], 0);
    [v10 setDocumentTargetIdentifier:application];
    LODWORD(purchaseManager) = [(SUStructuredPageGroupedViewController *)self _addPurchaseBatch:v10 forIndexPath:path];

    if (purchaseManager)
    {
      v12.receiver = self;
      v12.super_class = SUStructuredPageGroupedViewController;
      LOBYTE(v7) = [(SUItemTableViewController *)&v12 openDocumentForItemAtIndexPath:path withApplication:application];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)purchaseItemAtIndexPath:(id)path
{
  v5 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
  if (v5)
  {
    v6 = v5;
    purchaseManager = [(SUClientInterface *)[(SUViewController *)self clientInterface] purchaseManager];
    v8 = -[SUPurchaseManager newPurchaseBatchForItems:offers:](purchaseManager, "newPurchaseBatchForItems:offers:", [MEMORY[0x1E695DEC8] arrayWithObject:v6], 0);
    LODWORD(purchaseManager) = [(SUStructuredPageGroupedViewController *)self _addPurchaseBatch:v8 forIndexPath:path];

    if (purchaseManager)
    {
      v10.receiver = self;
      v10.super_class = SUStructuredPageGroupedViewController;
      LOBYTE(v5) = [(SUItemTableViewController *)&v10 purchaseItemAtIndexPath:path];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)setSkLoading:(BOOL)loading
{
  v8.receiver = self;
  v8.super_class = SUStructuredPageGroupedViewController;
  [(SUStructuredPageViewController *)&v8 setSkLoading:?];
  loadingView = self->_loadingView;
  if (loading)
  {
    if (!loadingView)
    {
      view = [(SUStructuredPageGroupedViewController *)self view];
      v7 = objc_alloc_init(SULoadingView);
      self->_loadingView = v7;
      [(SULoadingView *)v7 sizeToFit];
      [view addSubview:self->_loadingView];
      [view centerSubviewInBounds:self->_loadingView];
    }
  }

  else
  {
    [(SULoadingView *)loadingView removeFromSuperview];

    self->_loadingView = 0;
  }
}

- (BOOL)_addPurchaseBatch:(id)batch forIndexPath:(id)path
{
  purchaseManager = [(SUClientInterface *)[(SUViewController *)self clientInterface] purchaseManager];
  [(SUPurchaseManager *)purchaseManager beginUpdates];
  if (batch && [(SUPurchaseManager *)purchaseManager addPurchaseBatch:batch])
  {
    [(SUStructuredPageGroupedViewController *)self _performPurchaseAnimationForIndexPath:path];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  [(SUPurchaseManager *)purchaseManager endUpdates];
  return v8;
}

- (void)_performPurchaseAnimationForIndexPath:(id)path
{
  v4 = [(UITableView *)[(SUTableViewController *)self tableView] cellForRowAtIndexPath:path];
  if (v4)
  {
    v5 = v4;
    copyPurchaseAnimationView = [(UITableViewCell *)v4 copyPurchaseAnimationView];
    if (copyPurchaseAnimationView)
    {
      v12 = copyPurchaseAnimationView;
      view = [(SUStructuredPageGroupedViewController *)self view];
      [v12 frame];
      [view convertRect:v5 fromView:?];
      [v12 setFrame:?];
      [view addSubview:v12];
      view2 = [(SUStructuredPageGroupedViewController *)self view];
      tabBarController = [(SUStructuredPageGroupedViewController *)self tabBarController];
      LODWORD(v10) = 1.0;
      LODWORD(v11) = -1.0;
      [SUPurchaseAnimator performHopAnimationForView:v12 relativeToView:view2 tabBarController:tabBarController finalAlpha:v10 scale:v11];
    }
  }
}

@end