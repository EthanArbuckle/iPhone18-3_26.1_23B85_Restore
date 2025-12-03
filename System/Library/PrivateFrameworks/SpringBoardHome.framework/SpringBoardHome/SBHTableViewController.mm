@interface SBHTableViewController
- (CGRect)keyboardFrame;
- (double)headerTopOccludingInset;
- (void)_keyboardWillDismiss:(id)dismiss;
- (void)_keyboardWillResize:(id)resize;
- (void)_keyboardWillShow:(id)show;
- (void)_reloadNoResultsViewForKeyboardNotification:(id)notification;
- (void)setShowNoResultsView:(BOOL)view;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SBHTableViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SBHTableViewController;
  [(SBHTableViewController *)&v9 viewDidLoad];
  tableViewClass = [objc_opt_class() tableViewClass];
  if (tableViewClass)
  {
    v4 = tableViewClass;
    tableView = [(SBHTableViewController *)self tableView];
    v6 = [v4 alloc];
    view = [(SBHTableViewController *)self view];
    [view frame];
    v8 = [v6 initWithFrame:?];

    [v8 setAutoresizingMask:{objc_msgSend(tableView, "autoresizingMask")}];
    [(SBHTableViewController *)self setTableView:v8];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SBHTableViewController;
  [(SBHTableViewController *)&v5 viewWillAppear:appear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter addObserver:self selector:sel__keyboardWillDismiss_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SBHTableViewController;
  [(SBHTableViewController *)&v5 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE068] object:0];
}

- (CGRect)keyboardFrame
{
  view = [(SBHTableViewController *)self view];
  [view convertRect:0 fromView:{self->_rawKeyboardFrame.origin.x, self->_rawKeyboardFrame.origin.y, self->_rawKeyboardFrame.size.width, self->_rawKeyboardFrame.size.height}];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)setShowNoResultsView:(BOOL)view
{
  if (self->_showNoResultsView != view)
  {
    viewCopy = view;
    self->_showNoResultsView = view;
    tableView = [(SBHTableViewController *)self tableView];
    v7 = tableView;
    if (viewCopy)
    {
      self->_styleBeforeShowingNoResults = [tableView separatorStyle];
      [v7 setSeparatorStyle:0];
    }

    else
    {
      [tableView setSeparatorStyle:self->_styleBeforeShowingNoResults];
      self->_styleBeforeShowingNoResults = 0;
    }
  }
}

- (double)headerTopOccludingInset
{
  tableView = [(SBHTableViewController *)self tableView];
  [tableView adjustedContentInset];
  v4 = v3;

  return v4;
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  self->_rawKeyboardFrame.origin.x = v5;
  self->_rawKeyboardFrame.origin.y = v6;
  self->_rawKeyboardFrame.size.width = v7;
  self->_rawKeyboardFrame.size.height = v8;

  [(SBHTableViewController *)self _reloadNoResultsViewForKeyboardNotification:userInfo];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__keyboardWillResize_ name:*MEMORY[0x1E69DE068] object:0];
}

- (void)_keyboardWillDismiss:(id)dismiss
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_rawKeyboardFrame.origin = *MEMORY[0x1E695F058];
  self->_rawKeyboardFrame.size = v4;
  userInfo = [dismiss userInfo];
  [(SBHTableViewController *)self _reloadNoResultsViewForKeyboardNotification:userInfo];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE068] object:0];
}

- (void)_keyboardWillResize:(id)resize
{
  userInfo = [resize userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  self->_rawKeyboardFrame.origin.x = v5;
  self->_rawKeyboardFrame.origin.y = v6;
  self->_rawKeyboardFrame.size.width = v7;
  self->_rawKeyboardFrame.size.height = v8;

  [(SBHTableViewController *)self _reloadNoResultsViewForKeyboardNotification:userInfo];
}

- (void)_reloadNoResultsViewForKeyboardNotification:(id)notification
{
  if (self->_showNoResultsView)
  {
    v21 = v6;
    v22 = v5;
    v23 = v3;
    v24 = v4;
    v8 = *MEMORY[0x1E69DDF40];
    notificationCopy = notification;
    v10 = [notificationCopy objectForKeyedSubscript:v8];
    [v10 doubleValue];
    v12 = v11;

    v13 = [notificationCopy objectForKeyedSubscript:*MEMORY[0x1E69DDF38]];

    integerValue = [v13 integerValue];
    view = [(SBHTableViewController *)self view];
    v16 = MEMORY[0x1E69DD250];
    v17 = (integerValue << 16) | 4;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__SBHTableViewController__reloadNoResultsViewForKeyboardNotification___block_invoke;
    v19[3] = &unk_1E8088C90;
    v20 = view;
    v18 = view;
    [v16 animateWithDuration:v17 delay:v19 options:0 animations:v12 completion:0.0];
  }
}

@end