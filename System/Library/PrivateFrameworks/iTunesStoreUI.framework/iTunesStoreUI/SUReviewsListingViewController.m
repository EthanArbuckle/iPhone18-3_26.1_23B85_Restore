@interface SUReviewsListingViewController
- (id)_accessoryView;
- (id)_headerItem;
- (id)newTermsAndConditionsFooter;
- (void)_reloadHeaderView;
- (void)_writeAReview:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)reloadData;
- (void)reloadForChangedRowCount:(int64_t)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SUReviewsListingViewController

- (void)dealloc
{
  [(SUGradientButton *)[(SUButtonAccessoryView *)self->_accessoryView button] removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  self->_accessoryView = 0;
  v3.receiver = self;
  v3.super_class = SUReviewsListingViewController;
  [(SUStructuredPageViewController *)&v3 dealloc];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = SUReviewsListingViewController;
  [(SUTableViewController *)&v4 loadView];
  v3 = [(SUTableViewController *)self tableView];
  [(UITableView *)v3 setBackgroundColor:SUGetReviewListOddRowColor()];
  [(UITableView *)v3 setTopExtensionViewColor:SUGetReviewListEvenRowColor()];
  [(SUReviewsListingViewController *)self _reloadHeaderView];
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = SUReviewsListingViewController;
  [(SUStructuredPageViewController *)&v3 reloadData];
  [(SUReviewsListingViewController *)self _reloadHeaderView];
}

- (void)reloadForChangedRowCount:(int64_t)a3
{
  if (a3)
  {
    v5 = SUGetReviewListOddRowColor();
  }

  else
  {
    v5 = SUGetReviewListEvenRowColor();
  }

  [(UITableView *)[(SUTableViewController *)self tableView] setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUReviewsListingViewController;
  [(SUTableViewController *)&v6 reloadForChangedRowCount:a3];
}

- (id)newTermsAndConditionsFooter
{
  v4.receiver = self;
  v4.super_class = SUReviewsListingViewController;
  v2 = [(SUStructuredPageViewController *)&v4 newTermsAndConditionsFooter];
  [v2 setStyle:2];
  return v2;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8.receiver = self;
  v8.super_class = SUReviewsListingViewController;
  [SUTableViewController tableView:sel_tableView_willDisplayCell_forRowAtIndexPath_ willDisplayCell:a3 forRowAtIndexPath:?];
  if ([a5 row])
  {
    v7 = SUGetReviewListOddRowColor();
  }

  else
  {
    v7 = SUGetReviewListEvenRowColor();
  }

  [a4 setBackgroundColor:v7];
  [a4 setBottomBorderColor:SUGetReviewListBorderColor()];
  [a4 setTopBorderColor:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SUGradientButton *)[(SUButtonAccessoryView *)self->_accessoryView button] setSelected:0];
  v5.receiver = self;
  v5.super_class = SUReviewsListingViewController;
  [(SUStructuredPageViewController *)&v5 viewWillAppear:v3];
}

- (void)_writeAReview:(id)a3
{
  v4 = [objc_msgSend(-[SUReviewsListingViewController _headerItem](self _headerItem];
  v5 = [(SUViewController *)self clientInterface];
  v6 = -[SUViewControllerFactory newComposeReviewViewControllerWithCompositionURL:](-[SUClientInterface viewControllerFactory](v5, "viewControllerFactory"), "newComposeReviewViewControllerWithCompositionURL:", [v4 URL]);
  if (!v6)
  {
    v6 = -[SUComposeReviewViewController initWithCompositionURL:]([SUComposeReviewViewController alloc], "initWithCompositionURL:", [v4 URL]);
  }

  v7 = v6;
  [(SUViewController *)v6 setClientInterface:v5];
  [SUClientDispatch composeReviewWithViewController:v7 animated:1];
}

- (id)_accessoryView
{
  result = self->_accessoryView;
  if (!result)
  {
    self->_accessoryView = [[SUButtonAccessoryView alloc] initWithDefaultSize];
    [(SUButtonAccessoryView *)self->_accessoryView setBackgroundColor:SUGetReviewListEvenRowColor()];
    [(SUGradientButton *)[(SUButtonAccessoryView *)self->_accessoryView button] addTarget:self action:sel__writeAReview_ forControlEvents:64];
    return self->_accessoryView;
  }

  return result;
}

- (id)_headerItem
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(-[SUTableDataSource structuredPage](self->super.super.super._dataSource "structuredPage")];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      if ([v7 itemType] == 10)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  return v7;
}

- (void)_reloadHeaderView
{
  if ([(SUReviewsListingViewController *)self _canWriteReview])
  {
    v3 = [(SUReviewsListingViewController *)self _accessoryView];
    v4 = [objc_msgSend(objc_msgSend(-[SUReviewsListingViewController _headerItem](self "_headerItem")];
    if (![v4 length])
    {
      v4 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"WRITE_A_REVIEW", &stru_1F41B3660, 0}];
    }

    [objc_msgSend(v3 "button")];
  }

  else
  {
    v3 = 0;
  }

  v5 = [(SUTableViewController *)self tableView];

  [(UITableView *)v5 setTableHeaderView:v3];
}

@end