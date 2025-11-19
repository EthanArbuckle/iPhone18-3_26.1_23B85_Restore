@interface SUStructuredPageViewController
- (BOOL)_gotoURLForItem:(id)a3 withURLIndex:(int64_t)a4;
- (BOOL)_handleLoadMoreForIndexPath:(id)a3;
- (BOOL)handleSelectionForIndexPath:(id)a3 tapCount:(int64_t)a4;
- (BOOL)loadMoreWithURL:(id)a3;
- (CGRect)documentBounds;
- (SUStructuredPageViewController)init;
- (id)newDataSource;
- (id)newNoItemsOverlayLabel;
- (id)newTermsAndConditionsFooter;
- (void)_loadMoreOperation:(id)a3 finishedWithOutput:(id)a4;
- (void)_loadMoreWithURL:(id)a3;
- (void)_reloadLoadMoreCellAtIndexPath:(id)a3;
- (void)_reloadNoItemsLabel;
- (void)_reloadTermsAndConditions;
- (void)bannerCell:(id)a3 tappedButtonAtIndex:(int64_t)a4;
- (void)dealloc;
- (void)operation:(id)a3 failedWithError:(id)a4;
- (void)operation:(id)a3 finishedWithOutput:(id)a4;
- (void)reloadData;
- (void)reloadWithStorePage:(id)a3 forURL:(id)a4;
- (void)setDataSourceClass:(Class)a3;
- (void)setSkLoading:(BOOL)a3;
- (void)setStructuredPage:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUStructuredPageViewController

- (SUStructuredPageViewController)init
{
  v4.receiver = self;
  v4.super_class = SUStructuredPageViewController;
  v2 = [(SUItemTableViewController *)&v4 init];
  if (v2)
  {
    [(SUStructuredPageViewController *)v2 setDataSourceClass:objc_opt_class()];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUStructuredPageViewController;
  [(SUItemTableViewController *)&v3 dealloc];
}

- (id)newDataSource
{
  v3 = objc_alloc_init(self->_dataSourceClass);
  [v3 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  v4 = [(SUStructuredPage *)self->_structuredPage type];
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4 == 7;
  }

  [v3 setStyle:v5];
  return v3;
}

- (id)newNoItemsOverlayLabel
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
  [v3 setFont:{objc_msgSend(MEMORY[0x1E69DB878], "boldSystemFontOfSize:", 18.0)}];
  if ([(SUStructuredPage *)self->_structuredPage type]== 7)
  {
    [v3 setText:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"NO_MATCHES", &stru_1F41B3660, 0)}];
  }

  return v3;
}

- (id)newTermsAndConditionsFooter
{
  if ([(SUTableDataSource *)[(SUTableViewController *)self dataSource] numberOfSections]< 1)
  {
    return 0;
  }

  v3 = objc_alloc_init(SUTermsAndConditionsView);
  [(SUTermsAndConditionsView *)v3 setClientInterface:[(SUViewController *)self clientInterface]];
  [(SUTermsAndConditionsView *)v3 setDelegate:self];
  v4 = [(SUTableDataSource *)[(SUTableViewController *)self dataSource] style]== 1 || [(SUStructuredPage *)self->_structuredPage shouldHideSignInButton];
  [(SUTermsAndConditionsView *)v3 setHideAccountButton:v4];
  if (([(SUTableView *)self->super.super._tableView isIndexHidden]& 1) == 0)
  {
    [(SUTableView *)self->super.super._tableView indexFrame];
    [(SUTermsAndConditionsView *)v3 setRightMargin:v5];
  }

  [(SUTermsAndConditionsView *)v3 sizeToFit];
  return v3;
}

- (CGRect)documentBounds
{
  tableView = self->super.super._tableView;
  if (tableView)
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    [(SUTableView *)tableView contentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v8 = *(MEMORY[0x1E695F050] + 24);
  }

  v9 = v3;
  v10 = v4;
  result.size.height = v8;
  result.size.width = v6;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (BOOL)handleSelectionForIndexPath:(id)a3 tapCount:(int64_t)a4
{
  v6 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self dataSource];
  if ([v6 itemType] == 4)
  {

    LOBYTE(v7) = [(SUStructuredPageViewController *)self _handleLoadMoreForIndexPath:a3];
  }

  else if ([v6 itemType] == 3 && -[SUTableDataSource style](-[SUTableViewController dataSource](self, "dataSource"), "style") == 1)
  {
    v8 = [v6 itemLinksForType:0];
    v7 = [v8 count];
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(objc_msgSend(v8, "objectAtIndex:", 0), "URL")}];
      v10 = [(UIViewController *)self reloadWithURLRequestProperties:v9];

      LOBYTE(v7) = v10;
    }
  }

  else
  {

    LOBYTE(v7) = [(SUStructuredPageViewController *)self _gotoURLForItem:v6 withURLIndex:0];
  }

  return v7;
}

- (BOOL)loadMoreWithURL:(id)a3
{
  v6.receiver = self;
  v6.super_class = SUStructuredPageViewController;
  if (![(UIViewController *)&v6 loadMoreWithURL:?])
  {
    [(SUStructuredPageViewController *)self _loadMoreWithURL:a3];
  }

  return 1;
}

- (void)reloadData
{
  v3 = [(SUStructuredPageViewController *)self structuredPage];
  [(SUViewController *)self setTitle:[(SUStructuredPage *)v3 title] changeTabBarItem:0];
  v4 = [(SUTableDataSource *)[(SUTableViewController *)self dataSource] structuredPage];
  if ([(SUViewController *)self isSkLoading])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  if (v4 != v5)
  {
    v6 = [(SUStructuredPageViewController *)self newDataSource];
    [v6 setStructuredPage:v3];
    [(SUTableViewController *)self setDataSource:v6];
  }

  [(SUStructuredPageViewController *)self _reloadNoItemsLabel];
  [(SUStructuredPageViewController *)self _reloadTermsAndConditions];
  v7.receiver = self;
  v7.super_class = SUStructuredPageViewController;
  [(SUItemTableViewController *)&v7 reloadData];
}

- (void)reloadWithStorePage:(id)a3 forURL:(id)a4
{
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SUStructuredPageViewController reloadWithStorePage:a2 forURL:self];
    }
  }

  [(SUStructuredPageViewController *)self setStructuredPage:a3, a4];
  [(SUStructuredPageViewController *)self reloadData];
  v7 = [(SUStructuredPage *)self->_structuredPage sectionsGroup];

  [(UIViewController *)self reloadForSectionsWithGroup:v7];
}

- (void)setSkLoading:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIViewController *)self isSkLoaded];
  v9.receiver = self;
  v9.super_class = SUStructuredPageViewController;
  [(SUViewController *)&v9 setSkLoading:v3];
  if (v5 != [(UIViewController *)self isSkLoaded])
  {
    v6 = [(SUTableViewController *)self tableView];
    v7 = v6;
    if (v3)
    {
      v8 = 0;
    }

    else
    {
      v8 = self;
    }

    [(UITableView *)v6 setDataSource:v8];
    [(UITableView *)v7 setDelegate:v8];
    [(SUStructuredPageViewController *)self reloadData];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUStructuredPage *)self->_structuredPage protocol];
  v6 = [(SUStorePageProtocol *)v5 focusedItemIdentifier];
  if (v6)
  {
    v7 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
    if (v7)
    {
      [(SUTableViewController *)self scrollToRowAtIndexPath:v7 atScrollPosition:1 animated:0];
    }

    [(SUStorePageProtocol *)v5 setFocusedItemIdentifier:0];
  }

  v8.receiver = self;
  v8.super_class = SUStructuredPageViewController;
  [(SUTableViewController *)&v8 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  structuredPage = self->_structuredPage;
  if (structuredPage)
  {
    [(UIViewController *)self reloadForSectionsWithGroup:[(SUStructuredPage *)structuredPage sectionsGroup]];
  }

  v6.receiver = self;
  v6.super_class = SUStructuredPageViewController;
  [(SUTableViewController *)&v6 viewWillAppear:v3];
}

- (void)setDataSourceClass:(Class)a3
{
  dataSourceClass = self->_dataSourceClass;
  if (dataSourceClass != a3)
  {

    self->_dataSourceClass = a3;
  }
}

- (void)setStructuredPage:(id)a3
{
  structuredPage = self->_structuredPage;
  if (structuredPage != a3)
  {

    self->_structuredPage = a3;

    [(SUViewController *)self storePageProtocolDidChange];
  }
}

- (void)bannerCell:(id)a3 tappedButtonAtIndex:(int64_t)a4
{
  v6 = [(UITableView *)[(SUTableViewController *)self tableView] indexPathForCell:a3];
  if (v6)
  {
    v7 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];

    [(SUStructuredPageViewController *)self _gotoURLForItem:v7 withURLIndex:a4];
  }
}

- (void)operation:(id)a3 failedWithError:(id)a4
{
  v7 = [(SUTableDataSource *)[(SUTableViewController *)self dataSource] activeLoadMoreItem];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
    [(SUTableDataSource *)[(SUTableViewController *)self dataSource] setActiveLoadMoreItem:0];
    if (v9)
    {
      v10 = [(SUTableViewController *)self tableView];
      -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](v10, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v9, 0}], 5);
    }

    [(SUViewController *)self presentDialogForError:a4 pendUntilVisible:1];
  }

  [(SUStructuredPageViewController *)self setSkLoading:0];
  v11.receiver = self;
  v11.super_class = SUStructuredPageViewController;
  [(SUViewController *)&v11 operation:a3 failedWithError:a4];
}

- (void)operation:(id)a3 finishedWithOutput:(id)a4
{
  [(SUStructuredPageViewController *)self setSkLoading:0];
  if ([(SUTableDataSource *)[(SUTableViewController *)self dataSource] activeLoadMoreItem])
  {

    [(SUStructuredPageViewController *)self _loadMoreOperation:a3 finishedWithOutput:a4];
  }
}

- (BOOL)_handleLoadMoreForIndexPath:(id)a3
{
  v5 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
  [(SUTableDataSource *)[(SUTableViewController *)self dataSource] setActiveLoadMoreItem:v5];
  [(UITableView *)[(SUTableViewController *)self tableView] deselectRowAtIndexPath:a3 animated:1];
  [(SUStructuredPageViewController *)self performSelector:sel__reloadLoadMoreCellAtIndexPath_ withObject:a3 afterDelay:0.25];
  if ([v5 itemType] == 4)
  {
    v6 = [v5 itemLinksForType:0];
    if ([v6 count])
    {
      v7 = [objc_msgSend(v6 objectAtIndex:{0), "URL"}];
      if ([v5 BOOLValueForProperty:@"reload-in-place"])
      {
        [(SUStructuredPageViewController *)self loadMoreWithURL:v7];
      }

      else
      {
        [(SUStructuredPageViewController *)self _loadMoreWithURL:v7];
      }
    }
  }

  return 1;
}

- (BOOL)_gotoURLForItem:(id)a3 withURLIndex:(int64_t)a4
{
  v6 = [a3 itemLinks];
  if ([v6 count] <= a4)
  {
    return 0;
  }

  v7 = [v6 objectAtIndex:a4];
  v8 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(v7, "URL")}];
  if ([v7 linkType] == 1)
  {
    v9 = objc_alloc_init(SUAccountViewController);
    [(SUViewController *)v9 setClientInterface:[(SUViewController *)self clientInterface]];
    [(SUStorePageViewController *)v9 setURLRequestProperties:v8];
    v10 = [SUClientDispatch enterAccountFlowWithViewController:v9 animated:1];
  }

  else if ([v7 linkTarget] == 1)
  {
    v11 = [(SUTableViewController *)self tableView];
    [(UITableView *)v11 deselectRowAtIndexPath:[(UITableView *)v11 indexPathForSelectedRow] animated:1];
    v10 = SUOpenExternalURL([v8 URL], -[SUViewController clientInterface](self, "clientInterface"));
  }

  else
  {
    v12 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
    [v12 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
    [v12 setURLRequestProperties:v8];
    v10 = -[UIViewController pushStorePage:withTarget:animated:](self, "pushStorePage:withTarget:animated:", v12, [v7 linkTarget], 1);
  }

  return v10;
}

- (void)_loadMoreOperation:(id)a3 finishedWithOutput:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = [(SUTableDataSource *)[(SUTableViewController *)self dataSource] activeLoadMoreItem];
  v9 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
  if (v9)
  {
    v10 = v9;
    [(SUTableDataSource *)[(SUTableViewController *)self dataSource] setActiveLoadMoreItem:0];
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadLoadMoreCellAtIndexPath_ object:v10];
    if ([objc_msgSend(a3 "dataProvider")])
    {
      v11 = [MEMORY[0x1E69D4938] sharedConfig];
      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        v13 = v12 | 2;
      }

      else
      {
        v13 = v12;
      }

      if (!os_log_type_enabled([v11 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v22 = 138412290;
        v23 = objc_opt_class();
        LODWORD(v21) = 12;
        v20 = &v22;
        v14 = _os_log_send_and_compose_impl();
        if (v14)
        {
          v15 = v14;
          v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v22, v21}];
          free(v15);
          v20 = v16;
          SSFileLog();
        }
      }

      v17 = [(SUTableViewController *)self tableView];
      -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](v17, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v10, 0}], 5);
      [(SUViewController *)self presentDialogForError:SSError() pendUntilVisible:1];
    }

    else
    {
      v18 = [-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
      if ([v8 BOOLValueForProperty:@"reload-in-place"])
      {
        -[SUStructuredPageViewController reloadWithStorePage:forURL:](self, "reloadWithStorePage:forURL:", a4, [objc_msgSend(a3 "response")]);
      }

      else
      {
        v19 = [objc_msgSend(a4 "itemList")];
        [v18 replaceItemAtIndexPath:v10 withItems:v19];
        [(SUStructuredPageViewController *)self reloadData];
      }
    }
  }

  else
  {
    [SUStructuredPageViewController _loadMoreOperation:a2 finishedWithOutput:self];
  }
}

- (void)_loadMoreWithURL:(id)a3
{
  v6 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v6 setDataProvider:{+[ISDataProvider provider](SUStorePageDataProvider, "provider")}];
  v5 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:a3];
  [v6 setRequestProperties:v5];

  [(SUViewController *)self enqueueOperation:v6 cancelOnDealloc:1];
}

- (void)_reloadLoadMoreCellAtIndexPath:(id)a3
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:a3];
  v5 = [(SUTableViewController *)self tableView];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}];

  [(UITableView *)v5 reloadRowsAtIndexPaths:v6 withRowAnimation:5];
}

- (void)_reloadNoItemsLabel
{
  v3 = [(SUStructuredPageViewController *)self view];
  if (-[UIViewController isSkLoaded](self, "isSkLoaded") || [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")] >= 1)
  {
    [(UILabel *)self->_noItemsLabel removeFromSuperview];

    self->_noItemsLabel = 0;
  }

  else if (!self->_noItemsLabel)
  {
    v11 = [(SUStructuredPageViewController *)self newNoItemsOverlayLabel];
    if ([objc_msgSend(v11 "text")])
    {
      v4 = v11;
      self->_noItemsLabel = v4;
      [(UILabel *)v4 setAutoresizingMask:43];
      [(UILabel *)self->_noItemsLabel sizeToFit];
      [v3 addSubview:self->_noItemsLabel];
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      [(UILabel *)self->_noItemsLabel frame];
      [(UILabel *)self->_noItemsLabel setFrame:floor((v6 - v9) * 0.5), floor((v8 - v10) * 0.5)];
    }
  }
}

- (void)_reloadTermsAndConditions
{
  v3 = [(SUTableViewController *)self tableView];
  if (v3)
  {
    v4 = v3;
    if ([(UIViewController *)self isSkLoaded])
    {

      [(UITableView *)v4 setTableFooterView:0];
    }

    else
    {
      v5 = [(SUStructuredPageViewController *)self newTermsAndConditionsFooter];
      [(UITableView *)v4 setTableFooterView:v5];
    }
  }
}

- (uint64_t)reloadWithStorePage:(uint64_t)a1 forURL:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUStructuredPageViewController.m" lineNumber:180 description:@"Page must be structured"];
}

- (uint64_t)_loadMoreOperation:(uint64_t)a1 finishedWithOutput:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  [objc_msgSend(a2 "dataSource")];
  v3 = MEMORY[0x1E69E58C0];

  return [v3 cancelPreviousPerformRequestsWithTarget:a2 selector:sel__reloadLoadMoreCellAtIndexPath_ object:0];
}

@end