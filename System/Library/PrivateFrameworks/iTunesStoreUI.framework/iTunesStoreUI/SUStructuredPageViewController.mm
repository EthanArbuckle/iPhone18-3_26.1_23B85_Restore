@interface SUStructuredPageViewController
- (BOOL)_gotoURLForItem:(id)item withURLIndex:(int64_t)index;
- (BOOL)_handleLoadMoreForIndexPath:(id)path;
- (BOOL)handleSelectionForIndexPath:(id)path tapCount:(int64_t)count;
- (BOOL)loadMoreWithURL:(id)l;
- (CGRect)documentBounds;
- (SUStructuredPageViewController)init;
- (id)newDataSource;
- (id)newNoItemsOverlayLabel;
- (id)newTermsAndConditionsFooter;
- (void)_loadMoreOperation:(id)operation finishedWithOutput:(id)output;
- (void)_loadMoreWithURL:(id)l;
- (void)_reloadLoadMoreCellAtIndexPath:(id)path;
- (void)_reloadNoItemsLabel;
- (void)_reloadTermsAndConditions;
- (void)bannerCell:(id)cell tappedButtonAtIndex:(int64_t)index;
- (void)dealloc;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)reloadData;
- (void)reloadWithStorePage:(id)page forURL:(id)l;
- (void)setDataSourceClass:(Class)class;
- (void)setSkLoading:(BOOL)loading;
- (void)setStructuredPage:(id)page;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
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
  type = [(SUStructuredPage *)self->_structuredPage type];
  if (type == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = type == 7;
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
  shouldHideSignInButton = [(SUTableDataSource *)[(SUTableViewController *)self dataSource] style]== 1 || [(SUStructuredPage *)self->_structuredPage shouldHideSignInButton];
  [(SUTermsAndConditionsView *)v3 setHideAccountButton:shouldHideSignInButton];
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

- (BOOL)handleSelectionForIndexPath:(id)path tapCount:(int64_t)count
{
  dataSource = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self dataSource];
  if ([dataSource itemType] == 4)
  {

    LOBYTE(v7) = [(SUStructuredPageViewController *)self _handleLoadMoreForIndexPath:path];
  }

  else if ([dataSource itemType] == 3 && -[SUTableDataSource style](-[SUTableViewController dataSource](self, "dataSource"), "style") == 1)
  {
    v8 = [dataSource itemLinksForType:0];
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

    LOBYTE(v7) = [(SUStructuredPageViewController *)self _gotoURLForItem:dataSource withURLIndex:0];
  }

  return v7;
}

- (BOOL)loadMoreWithURL:(id)l
{
  v6.receiver = self;
  v6.super_class = SUStructuredPageViewController;
  if (![(UIViewController *)&v6 loadMoreWithURL:?])
  {
    [(SUStructuredPageViewController *)self _loadMoreWithURL:l];
  }

  return 1;
}

- (void)reloadData
{
  structuredPage = [(SUStructuredPageViewController *)self structuredPage];
  [(SUViewController *)self setTitle:[(SUStructuredPage *)structuredPage title] changeTabBarItem:0];
  structuredPage2 = [(SUTableDataSource *)[(SUTableViewController *)self dataSource] structuredPage];
  if ([(SUViewController *)self isSkLoading])
  {
    v5 = 0;
  }

  else
  {
    v5 = structuredPage;
  }

  if (structuredPage2 != v5)
  {
    newDataSource = [(SUStructuredPageViewController *)self newDataSource];
    [newDataSource setStructuredPage:structuredPage];
    [(SUTableViewController *)self setDataSource:newDataSource];
  }

  [(SUStructuredPageViewController *)self _reloadNoItemsLabel];
  [(SUStructuredPageViewController *)self _reloadTermsAndConditions];
  v7.receiver = self;
  v7.super_class = SUStructuredPageViewController;
  [(SUItemTableViewController *)&v7 reloadData];
}

- (void)reloadWithStorePage:(id)page forURL:(id)l
{
  if (page)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SUStructuredPageViewController reloadWithStorePage:a2 forURL:self];
    }
  }

  [(SUStructuredPageViewController *)self setStructuredPage:page, l];
  [(SUStructuredPageViewController *)self reloadData];
  sectionsGroup = [(SUStructuredPage *)self->_structuredPage sectionsGroup];

  [(UIViewController *)self reloadForSectionsWithGroup:sectionsGroup];
}

- (void)setSkLoading:(BOOL)loading
{
  loadingCopy = loading;
  isSkLoaded = [(UIViewController *)self isSkLoaded];
  v9.receiver = self;
  v9.super_class = SUStructuredPageViewController;
  [(SUViewController *)&v9 setSkLoading:loadingCopy];
  if (isSkLoaded != [(UIViewController *)self isSkLoaded])
  {
    tableView = [(SUTableViewController *)self tableView];
    v7 = tableView;
    if (loadingCopy)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    [(UITableView *)tableView setDataSource:selfCopy];
    [(UITableView *)v7 setDelegate:selfCopy];
    [(SUStructuredPageViewController *)self reloadData];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  protocol = [(SUStructuredPage *)self->_structuredPage protocol];
  focusedItemIdentifier = [(SUStorePageProtocol *)protocol focusedItemIdentifier];
  if (focusedItemIdentifier)
  {
    v7 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
    if (v7)
    {
      [(SUTableViewController *)self scrollToRowAtIndexPath:v7 atScrollPosition:1 animated:0];
    }

    [(SUStorePageProtocol *)protocol setFocusedItemIdentifier:0];
  }

  v8.receiver = self;
  v8.super_class = SUStructuredPageViewController;
  [(SUTableViewController *)&v8 viewDidAppear:appearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  structuredPage = self->_structuredPage;
  if (structuredPage)
  {
    [(UIViewController *)self reloadForSectionsWithGroup:[(SUStructuredPage *)structuredPage sectionsGroup]];
  }

  v6.receiver = self;
  v6.super_class = SUStructuredPageViewController;
  [(SUTableViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)setDataSourceClass:(Class)class
{
  dataSourceClass = self->_dataSourceClass;
  if (dataSourceClass != class)
  {

    self->_dataSourceClass = class;
  }
}

- (void)setStructuredPage:(id)page
{
  structuredPage = self->_structuredPage;
  if (structuredPage != page)
  {

    self->_structuredPage = page;

    [(SUViewController *)self storePageProtocolDidChange];
  }
}

- (void)bannerCell:(id)cell tappedButtonAtIndex:(int64_t)index
{
  v6 = [(UITableView *)[(SUTableViewController *)self tableView] indexPathForCell:cell];
  if (v6)
  {
    v7 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];

    [(SUStructuredPageViewController *)self _gotoURLForItem:v7 withURLIndex:index];
  }
}

- (void)operation:(id)operation failedWithError:(id)error
{
  activeLoadMoreItem = [(SUTableDataSource *)[(SUTableViewController *)self dataSource] activeLoadMoreItem];
  if (activeLoadMoreItem)
  {
    v8 = activeLoadMoreItem;
    v9 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
    [(SUTableDataSource *)[(SUTableViewController *)self dataSource] setActiveLoadMoreItem:0];
    if (v9)
    {
      tableView = [(SUTableViewController *)self tableView];
      -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](tableView, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v9, 0}], 5);
    }

    [(SUViewController *)self presentDialogForError:error pendUntilVisible:1];
  }

  [(SUStructuredPageViewController *)self setSkLoading:0];
  v11.receiver = self;
  v11.super_class = SUStructuredPageViewController;
  [(SUViewController *)&v11 operation:operation failedWithError:error];
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  [(SUStructuredPageViewController *)self setSkLoading:0];
  if ([(SUTableDataSource *)[(SUTableViewController *)self dataSource] activeLoadMoreItem])
  {

    [(SUStructuredPageViewController *)self _loadMoreOperation:operation finishedWithOutput:output];
  }
}

- (BOOL)_handleLoadMoreForIndexPath:(id)path
{
  v5 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
  [(SUTableDataSource *)[(SUTableViewController *)self dataSource] setActiveLoadMoreItem:v5];
  [(UITableView *)[(SUTableViewController *)self tableView] deselectRowAtIndexPath:path animated:1];
  [(SUStructuredPageViewController *)self performSelector:sel__reloadLoadMoreCellAtIndexPath_ withObject:path afterDelay:0.25];
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

- (BOOL)_gotoURLForItem:(id)item withURLIndex:(int64_t)index
{
  itemLinks = [item itemLinks];
  if ([itemLinks count] <= index)
  {
    return 0;
  }

  v7 = [itemLinks objectAtIndex:index];
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
    tableView = [(SUTableViewController *)self tableView];
    [(UITableView *)tableView deselectRowAtIndexPath:[(UITableView *)tableView indexPathForSelectedRow] animated:1];
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

- (void)_loadMoreOperation:(id)operation finishedWithOutput:(id)output
{
  v24 = *MEMORY[0x1E69E9840];
  activeLoadMoreItem = [(SUTableDataSource *)[(SUTableViewController *)self dataSource] activeLoadMoreItem];
  v9 = [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
  if (v9)
  {
    v10 = v9;
    [(SUTableDataSource *)[(SUTableViewController *)self dataSource] setActiveLoadMoreItem:0];
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__reloadLoadMoreCellAtIndexPath_ object:v10];
    if ([objc_msgSend(operation "dataProvider")])
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v13 = shouldLog | 2;
      }

      else
      {
        v13 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
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

      tableView = [(SUTableViewController *)self tableView];
      -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](tableView, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v10, 0}], 5);
      [(SUViewController *)self presentDialogForError:SSError() pendUntilVisible:1];
    }

    else
    {
      v18 = [-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")];
      if ([activeLoadMoreItem BOOLValueForProperty:@"reload-in-place"])
      {
        -[SUStructuredPageViewController reloadWithStorePage:forURL:](self, "reloadWithStorePage:forURL:", output, [objc_msgSend(operation "response")]);
      }

      else
      {
        v19 = [objc_msgSend(output "itemList")];
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

- (void)_loadMoreWithURL:(id)l
{
  v6 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v6 setDataProvider:{+[ISDataProvider provider](SUStorePageDataProvider, "provider")}];
  v5 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:l];
  [v6 setRequestProperties:v5];

  [(SUViewController *)self enqueueOperation:v6 cancelOnDealloc:1];
}

- (void)_reloadLoadMoreCellAtIndexPath:(id)path
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:path];
  tableView = [(SUTableViewController *)self tableView];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:{path, 0}];

  [(UITableView *)tableView reloadRowsAtIndexPaths:v6 withRowAnimation:5];
}

- (void)_reloadNoItemsLabel
{
  view = [(SUStructuredPageViewController *)self view];
  if (-[UIViewController isSkLoaded](self, "isSkLoaded") || [objc_msgSend(-[SUTableDataSource structuredPage](-[SUTableViewController dataSource](self "dataSource")] >= 1)
  {
    [(UILabel *)self->_noItemsLabel removeFromSuperview];

    self->_noItemsLabel = 0;
  }

  else if (!self->_noItemsLabel)
  {
    newNoItemsOverlayLabel = [(SUStructuredPageViewController *)self newNoItemsOverlayLabel];
    if ([objc_msgSend(newNoItemsOverlayLabel "text")])
    {
      v4 = newNoItemsOverlayLabel;
      self->_noItemsLabel = v4;
      [(UILabel *)v4 setAutoresizingMask:43];
      [(UILabel *)self->_noItemsLabel sizeToFit];
      [view addSubview:self->_noItemsLabel];
      [view bounds];
      v6 = v5;
      v8 = v7;
      [(UILabel *)self->_noItemsLabel frame];
      [(UILabel *)self->_noItemsLabel setFrame:floor((v6 - v9) * 0.5), floor((v8 - v10) * 0.5)];
    }
  }
}

- (void)_reloadTermsAndConditions
{
  tableView = [(SUTableViewController *)self tableView];
  if (tableView)
  {
    v4 = tableView;
    if ([(UIViewController *)self isSkLoaded])
    {

      [(UITableView *)v4 setTableFooterView:0];
    }

    else
    {
      newTermsAndConditionsFooter = [(SUStructuredPageViewController *)self newTermsAndConditionsFooter];
      [(UITableView *)v4 setTableFooterView:newTermsAndConditionsFooter];
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