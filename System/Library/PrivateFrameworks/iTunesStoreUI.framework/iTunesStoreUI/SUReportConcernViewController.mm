@interface SUReportConcernViewController
- (BOOL)handleSelectionForIndexPath:(id)path tapCount:(int64_t)count;
- (SUReportConcernViewController)initWithItemIdentifier:(unint64_t)identifier;
- (void)_fetchConcerns;
- (void)_hideKeyboardDidStop:(id)stop finished:(id)finished context:(void *)context;
- (void)_showKeyboardDidStop:(id)stop finished:(id)finished context:(void *)context;
- (void)_submit:(id)_submit;
- (void)keyboardWillHideWithInfo:(id)info;
- (void)keyboardWillShowWithInfo:(id)info;
- (void)loadView;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SUReportConcernViewController

- (SUReportConcernViewController)initWithItemIdentifier:(unint64_t)identifier
{
  v4 = [(SUTableViewController *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_itemIdentifier = identifier;
    [(SUTableViewController *)v4 setTableViewStyle:1];
    -[SUViewController setTitle:](v5, "setTitle:", [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"REPORT_A_PROBLEM_PAGE_TITLE", &stru_1F41B3660, 0}]);
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [v6 initWithTitle:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] style:"bundleForClass:" target:objc_opt_class()) action:{"localizedStringForKey:value:table:", @"CANCEL", &stru_1F41B3660, 0), 0, v5, sel__cancel_}];
    [(SUNavigationItem *)[(SUViewController *)v5 navigationItem] setLeftBarButtonItem:v7];

    v8 = objc_alloc(MEMORY[0x1E69DC708]);
    v9 = [v8 initWithTitle:objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] style:"bundleForClass:" target:objc_opt_class()) action:{"localizedStringForKey:value:table:", @"REPORT", &stru_1F41B3660, 0), 2, v5, sel__submit_}];
    [v9 setEnabled:0];
    [(SUNavigationItem *)[(SUViewController *)v5 navigationItem] setRightBarButtonItem:v9];

    v10 = objc_alloc_init(SUConcernListDataSource);
    [(SUTableViewController *)v5 setDataSource:v10];
  }

  return v5;
}

- (BOOL)handleSelectionForIndexPath:(id)path tapCount:(int64_t)count
{
  v6 = [(SUTableViewController *)self tableView:path];
  selectedConcernIndex = [(SUTableDataSource *)self->super._dataSource selectedConcernIndex];
  if (selectedConcernIndex == 0x7FFFFFFFFFFFFFFFLL || (v8 = selectedConcernIndex, selectedConcernIndex == [path row]))
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:0];
  }

  -[SUTableDataSource setSelectedConcernIndex:](self->super._dataSource, "setSelectedConcernIndex:", [path row]);
  -[UITableView reloadRowsAtIndexPaths:withRowAnimation:](v6, "reloadRowsAtIndexPaths:withRowAnimation:", [MEMORY[0x1E695DEC8] arrayWithObjects:{path, v9, 0}], 5);
  [(UITableView *)v6 deselectRowAtIndexPath:path animated:1];
  [-[SUTableDataSource textViewCell](self->super._dataSource "textViewCell")];
  return 1;
}

- (void)keyboardWillHideWithInfo:(id)info
{
  if (!self->_animatingKeyboard)
  {
    v5 = [info objectForKey:*MEMORY[0x1E69DDF40]];
    v6 = [info objectForKey:*MEMORY[0x1E69DDF38]];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
    [(SUTableView *)self->super._tableView setScrollEnabled:0];
    self->_animatingKeyboard = 1;
    [(SUTableView *)self->super._tableView contentOffset];
    v8 = v7;
    [(SUTableView *)self->super._tableView setContentInset:self->_originalTableInsets.top, self->_originalTableInsets.left, self->_originalTableInsets.bottom, self->_originalTableInsets.right];
    [-[SUReportConcernViewController view](self "view")];
    v10 = v9;
    [(SUTableView *)self->super._tableView frame];
    v14 = v11;
    v15 = v12;
    v17 = v16 - v8;
    if (v10 >= v8 + v13 - self->_originalTableInsets.bottom + 12.0)
    {
      v18 = v10;
    }

    else
    {
      v18 = v8 + v13 - self->_originalTableInsets.bottom + 12.0;
    }

    [(SUTableView *)self->super._tableView setFrame:v11, v17, v12, v18];
    [(SUTableView *)self->super._tableView setContentOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if (v5 && ([v5 doubleValue], v20 = v19, v19 > 2.22044605e-16))
    {
      [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
      [MEMORY[0x1E69DD250] setAnimationCurve:{objc_msgSend(v6, "integerValue")}];
      [MEMORY[0x1E69DD250] setAnimationDelegate:self];
      [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__hideKeyboardDidStop_finished_context_];
      [MEMORY[0x1E69DD250] setAnimationDuration:v20];
      [(SUTableView *)self->super._tableView setFrame:v14, 0.0, v15, v10];
      [MEMORY[0x1E69DD250] commitAnimations];
    }

    else
    {
      [(SUTableView *)self->super._tableView setFrame:v14, 0.0, v15, v10];
      -[SUReportConcernViewController _hideKeyboardDidStop:finished:context:](self, "_hideKeyboardDidStop:finished:context:", 0, [MEMORY[0x1E696AD98] numberWithBool:1], 0);
    }
  }

  v21.receiver = self;
  v21.super_class = SUReportConcernViewController;
  [(UIViewController *)&v21 keyboardWillHideWithInfo:info];
}

- (void)keyboardWillShowWithInfo:(id)info
{
  v5 = [info objectForKey:*MEMORY[0x1E69DDFA0]];
  if (!self->_animatingKeyboard)
  {
    v6 = v5;
    if (v5)
    {
      [(SUTableView *)self->super._tableView contentOffset];
      v32 = v7;
      v9 = v8;
      [(SUTableView *)self->super._tableView frame];
      v33 = v10;
      v34 = v11;
      v13 = v12;
      [-[SUTableDataSource textViewCell](self->super._dataSource "textViewCell")];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20 - v9;
      [v6 CGRectValue];
      [MEMORY[0x1E69DCEB0] convertRect:self->super._tableView toView:?];
      v23 = v22;
      v25 = v24;
      v36.origin.x = v15;
      v36.origin.y = v21;
      v36.size.width = v17;
      v36.size.height = v19;
      if (v23 < CGRectGetMaxY(v36))
      {
        v26 = [info objectForKey:*MEMORY[0x1E69DDF40]];
        v27 = [info objectForKey:*MEMORY[0x1E69DDF38]];
        [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
        [(SUTableView *)self->super._tableView setScrollEnabled:0];
        self->_animatingKeyboard = 1;
        v28 = v13 - v25 - (v19 + 12.0);
        v37.origin.x = v15;
        v37.origin.y = v21;
        v37.size.width = v17;
        v37.size.height = v19;
        v29 = v28 + CGRectGetMaxY(v37);
        if (v13 < v29)
        {
          v13 = v29;
        }

        [(SUTableView *)self->super._tableView setFrame:v33, 0.0, v34, v13];
        [(SUTableView *)self->super._tableView setContentOffset:v32, v9];
        if (v26 && ([v26 doubleValue], v31 = v30, v30 > 2.22044605e-16))
        {
          [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
          [MEMORY[0x1E69DD250] setAnimationCurve:{objc_msgSend(v27, "integerValue")}];
          [MEMORY[0x1E69DD250] setAnimationDelegate:self];
          [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__showKeyboardDidStop_finished_context_];
          [MEMORY[0x1E69DD250] setAnimationDuration:v31];
          v38.origin.x = v15;
          v38.origin.y = v21;
          v38.size.width = v17;
          v38.size.height = v19;
          [(SUTableView *)self->super._tableView setFrame:v33, v28 - CGRectGetMinY(v38) + 0.0, v34, v13];
          [MEMORY[0x1E69DD250] commitAnimations];
        }

        else
        {
          v39.origin.x = v15;
          v39.origin.y = v21;
          v39.size.width = v17;
          v39.size.height = v19;
          [(SUTableView *)self->super._tableView setFrame:v33, v28 - CGRectGetMinY(v39) + 0.0, v34, v13];
          -[SUReportConcernViewController _showKeyboardDidStop:finished:context:](self, "_showKeyboardDidStop:finished:context:", 0, [MEMORY[0x1E696AD98] numberWithBool:1], 0);
        }
      }
    }
  }

  v35.receiver = self;
  v35.super_class = SUReportConcernViewController;
  [(UIViewController *)&v35 keyboardWillShowWithInfo:info];
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = SUReportConcernViewController;
  [(SUTableViewController *)&v7 loadView];
  [(SUTableView *)self->super._tableView contentInset];
  self->_originalTableInsets.top = v3;
  self->_originalTableInsets.left = v4;
  self->_originalTableInsets.bottom = v5;
  self->_originalTableInsets.right = v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUReportConcernViewController *)self _fetchConcerns];
  v5.receiver = self;
  v5.super_class = SUReportConcernViewController;
  [(SUTableViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)operation:(id)operation failedWithError:(id)error
{
  v7 = [SUDialogManager newDialogWithError:error];
  [(SUClientInterface *)[(SUViewController *)self clientInterface] _presentDialog:v7];

  v8.receiver = self;
  v8.super_class = SUReportConcernViewController;
  [(SUViewController *)&v8 operation:operation failedWithError:error];
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  [-[SUNavigationItem rightBarButtonItem](-[SUViewController navigationItem](self navigationItem];
  v6 = [output count];
  v7 = v6 - 1;
  if (v6 < 1)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v6;
    for (i = 0; i != v8; ++i)
    {
      if ([objc_msgSend(output objectAtIndex:{i), "isDefaultConcern"}])
      {
        v7 = i;
      }
    }
  }

  [(SUTableDataSource *)self->super._dataSource setConcerns:output];
  [(SUTableDataSource *)self->super._dataSource setSelectedConcernIndex:v7];

  [(SUTableViewController *)self reloadData];
}

- (void)_hideKeyboardDidStop:(id)stop finished:(id)finished context:(void *)context
{
  self->_animatingKeyboard = 0;
  [(SUTableView *)self->super._tableView setScrollEnabled:1, finished, context];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] endIgnoringInteractionEvents];
}

- (void)_showKeyboardDidStop:(id)stop finished:(id)finished context:(void *)context
{
  [(SUTableView *)self->super._tableView contentOffset:stop];
  v28 = v6;
  v8 = v7;
  [(SUTableView *)self->super._tableView frame];
  v27 = v9;
  v11 = v10;
  v13 = v12;
  [(SUTableView *)self->super._tableView contentInset];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [-[SUReportConcernViewController view](self "view")];
  v23 = v22;
  activeKeyboard = [MEMORY[0x1E69DCBB8] activeKeyboard];
  if (activeKeyboard)
  {
    [activeKeyboard frame];
    v19 = v25 + 12.0;
  }

  [(SUTableView *)self->super._tableView setFrame:v27, 0.0, v13, v23];
  [(SUTableView *)self->super._tableView setContentInset:v15, v17, v19, v21];
  [(SUTableView *)self->super._tableView setContentOffset:v28, v8 + fabs(v11)];
  self->_animatingKeyboard = 0;
  [(SUTableView *)self->super._tableView setScrollEnabled:1];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] endIgnoringInteractionEvents];
}

- (void)_submit:(id)_submit
{
  selectedConcernIndex = [(SUTableDataSource *)self->super._dataSource selectedConcernIndex];
  if (selectedConcernIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = -[SUPostConcernOperation initWithConcern:]([SUPostConcernOperation alloc], "initWithConcern:", [-[SUTableDataSource concerns](self->super._dataSource "concerns")]);
    -[SUPostConcernOperation setCommentText:](v5, "setCommentText:", [objc_msgSend(-[SUTableDataSource textViewCell](self->super._dataSource "textViewCell")]);
    [(SUPostConcernOperation *)v5 setItemIdentifier:self->_itemIdentifier];
    [(SUViewController *)self enqueueOperation:SUMakeBackgroundTask(v5 cancelOnDealloc:@"com.apple.iTunesStoreUI.report-concern"), 0];
    [(SUReportConcernViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_fetchConcerns
{
  if (![(SUViewController *)self isSkLoading])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69E47E0]);
    [v4 setDataProvider:{+[ISDataProvider provider](SUConcernListDataProvider, "provider")}];
    v3 = objc_alloc_init(MEMORY[0x1E69D4970]);
    [v3 setURLBagKey:@"p2-concern-list"];
    [v4 setRequestProperties:v3];

    [(SUViewController *)self setSkLoading:1];
    [(SUViewController *)self enqueueOperation:v4 cancelOnDealloc:1];
  }
}

@end