@interface SUStructuredPageGroupedViewController
- (BOOL)_addPurchaseBatch:(id)a3 forIndexPath:(id)a4;
- (BOOL)openDocumentForItemAtIndexPath:(id)a3 withApplication:(id)a4;
- (BOOL)purchaseItemAtIndexPath:(id)a3;
- (SUStructuredPageGroupedViewController)init;
- (id)itemAtIndexPath:(id)a3;
- (id)newNoItemsOverlayLabel;
- (void)_performPurchaseAnimationForIndexPath:(id)a3;
- (void)dealloc;
- (void)setSkLoading:(BOOL)a3;
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

- (id)itemAtIndexPath:(id)a3
{
  v4 = [-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];

  return [v4 itemAtIndexPath:a3];
}

- (id)newNoItemsOverlayLabel
{
  v4.receiver = self;
  v4.super_class = SUStructuredPageGroupedViewController;
  v2 = [(SUStructuredPageViewController *)&v4 newNoItemsOverlayLabel];
  [v2 setTextColor:{objc_msgSend(MEMORY[0x1E69DC888], "colorWithRed:green:blue:alpha:", 0.298039216, 0.337254902, 0.423529412, 1.0)}];
  return v2;
}

- (BOOL)openDocumentForItemAtIndexPath:(id)a3 withApplication:(id)a4
{
  v7 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUClientInterface *)[(SUViewController *)self clientInterface] purchaseManager];
    v10 = -[SUPurchaseManager newPurchaseBatchForItems:offers:](v9, "newPurchaseBatchForItems:offers:", [MEMORY[0x1E695DEC8] arrayWithObject:v8], 0);
    [v10 setDocumentTargetIdentifier:a4];
    LODWORD(v9) = [(SUStructuredPageGroupedViewController *)self _addPurchaseBatch:v10 forIndexPath:a3];

    if (v9)
    {
      v12.receiver = self;
      v12.super_class = SUStructuredPageGroupedViewController;
      LOBYTE(v7) = [(SUItemTableViewController *)&v12 openDocumentForItemAtIndexPath:a3 withApplication:a4];
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)purchaseItemAtIndexPath:(id)a3
{
  v5 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
  if (v5)
  {
    v6 = v5;
    v7 = [(SUClientInterface *)[(SUViewController *)self clientInterface] purchaseManager];
    v8 = -[SUPurchaseManager newPurchaseBatchForItems:offers:](v7, "newPurchaseBatchForItems:offers:", [MEMORY[0x1E695DEC8] arrayWithObject:v6], 0);
    LODWORD(v7) = [(SUStructuredPageGroupedViewController *)self _addPurchaseBatch:v8 forIndexPath:a3];

    if (v7)
    {
      v10.receiver = self;
      v10.super_class = SUStructuredPageGroupedViewController;
      LOBYTE(v5) = [(SUItemTableViewController *)&v10 purchaseItemAtIndexPath:a3];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)setSkLoading:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = SUStructuredPageGroupedViewController;
  [(SUStructuredPageViewController *)&v8 setSkLoading:?];
  loadingView = self->_loadingView;
  if (a3)
  {
    if (!loadingView)
    {
      v6 = [(SUStructuredPageGroupedViewController *)self view];
      v7 = objc_alloc_init(SULoadingView);
      self->_loadingView = v7;
      [(SULoadingView *)v7 sizeToFit];
      [v6 addSubview:self->_loadingView];
      [v6 centerSubviewInBounds:self->_loadingView];
    }
  }

  else
  {
    [(SULoadingView *)loadingView removeFromSuperview];

    self->_loadingView = 0;
  }
}

- (BOOL)_addPurchaseBatch:(id)a3 forIndexPath:(id)a4
{
  v7 = [(SUClientInterface *)[(SUViewController *)self clientInterface] purchaseManager];
  [(SUPurchaseManager *)v7 beginUpdates];
  if (a3 && [(SUPurchaseManager *)v7 addPurchaseBatch:a3])
  {
    [(SUStructuredPageGroupedViewController *)self _performPurchaseAnimationForIndexPath:a4];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  [(SUPurchaseManager *)v7 endUpdates];
  return v8;
}

- (void)_performPurchaseAnimationForIndexPath:(id)a3
{
  v4 = [(UITableView *)[(SUTableViewController *)self tableView] cellForRowAtIndexPath:a3];
  if (v4)
  {
    v5 = v4;
    v6 = [(UITableViewCell *)v4 copyPurchaseAnimationView];
    if (v6)
    {
      v12 = v6;
      v7 = [(SUStructuredPageGroupedViewController *)self view];
      [v12 frame];
      [v7 convertRect:v5 fromView:?];
      [v12 setFrame:?];
      [v7 addSubview:v12];
      v8 = [(SUStructuredPageGroupedViewController *)self view];
      v9 = [(SUStructuredPageGroupedViewController *)self tabBarController];
      LODWORD(v10) = 1.0;
      LODWORD(v11) = -1.0;
      [SUPurchaseAnimator performHopAnimationForView:v12 relativeToView:v8 tabBarController:v9 finalAlpha:v10 scale:v11];
    }
  }
}

@end