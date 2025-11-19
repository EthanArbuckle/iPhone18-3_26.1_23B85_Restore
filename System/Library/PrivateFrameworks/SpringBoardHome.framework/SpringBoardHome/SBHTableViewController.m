@interface SBHTableViewController
- (CGRect)keyboardFrame;
- (double)headerTopOccludingInset;
- (void)_keyboardWillDismiss:(id)a3;
- (void)_keyboardWillResize:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_reloadNoResultsViewForKeyboardNotification:(id)a3;
- (void)setShowNoResultsView:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SBHTableViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SBHTableViewController;
  [(SBHTableViewController *)&v9 viewDidLoad];
  v3 = [objc_opt_class() tableViewClass];
  if (v3)
  {
    v4 = v3;
    v5 = [(SBHTableViewController *)self tableView];
    v6 = [v4 alloc];
    v7 = [(SBHTableViewController *)self view];
    [v7 frame];
    v8 = [v6 initWithFrame:?];

    [v8 setAutoresizingMask:{objc_msgSend(v5, "autoresizingMask")}];
    [(SBHTableViewController *)self setTableView:v8];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBHTableViewController;
  [(SBHTableViewController *)&v5 viewWillAppear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
  [v4 addObserver:self selector:sel__keyboardWillDismiss_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBHTableViewController;
  [(SBHTableViewController *)&v5 viewWillDisappear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
  [v4 removeObserver:self name:*MEMORY[0x1E69DE068] object:0];
}

- (CGRect)keyboardFrame
{
  v3 = [(SBHTableViewController *)self view];
  [v3 convertRect:0 fromView:{self->_rawKeyboardFrame.origin.x, self->_rawKeyboardFrame.origin.y, self->_rawKeyboardFrame.size.width, self->_rawKeyboardFrame.size.height}];
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

- (void)setShowNoResultsView:(BOOL)a3
{
  if (self->_showNoResultsView != a3)
  {
    v4 = a3;
    self->_showNoResultsView = a3;
    v6 = [(SBHTableViewController *)self tableView];
    v7 = v6;
    if (v4)
    {
      self->_styleBeforeShowingNoResults = [v6 separatorStyle];
      [v7 setSeparatorStyle:0];
    }

    else
    {
      [v6 setSeparatorStyle:self->_styleBeforeShowingNoResults];
      self->_styleBeforeShowingNoResults = 0;
    }
  }
}

- (double)headerTopOccludingInset
{
  v2 = [(SBHTableViewController *)self tableView];
  [v2 adjustedContentInset];
  v4 = v3;

  return v4;
}

- (void)_keyboardWillShow:(id)a3
{
  v10 = [a3 userInfo];
  v4 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  self->_rawKeyboardFrame.origin.x = v5;
  self->_rawKeyboardFrame.origin.y = v6;
  self->_rawKeyboardFrame.size.width = v7;
  self->_rawKeyboardFrame.size.height = v8;

  [(SBHTableViewController *)self _reloadNoResultsViewForKeyboardNotification:v10];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__keyboardWillResize_ name:*MEMORY[0x1E69DE068] object:0];
}

- (void)_keyboardWillDismiss:(id)a3
{
  v4 = *(MEMORY[0x1E695F058] + 16);
  self->_rawKeyboardFrame.origin = *MEMORY[0x1E695F058];
  self->_rawKeyboardFrame.size = v4;
  v5 = [a3 userInfo];
  [(SBHTableViewController *)self _reloadNoResultsViewForKeyboardNotification:v5];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69DE068] object:0];
}

- (void)_keyboardWillResize:(id)a3
{
  v9 = [a3 userInfo];
  v4 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v4 CGRectValue];
  self->_rawKeyboardFrame.origin.x = v5;
  self->_rawKeyboardFrame.origin.y = v6;
  self->_rawKeyboardFrame.size.width = v7;
  self->_rawKeyboardFrame.size.height = v8;

  [(SBHTableViewController *)self _reloadNoResultsViewForKeyboardNotification:v9];
}

- (void)_reloadNoResultsViewForKeyboardNotification:(id)a3
{
  if (self->_showNoResultsView)
  {
    v21 = v6;
    v22 = v5;
    v23 = v3;
    v24 = v4;
    v8 = *MEMORY[0x1E69DDF40];
    v9 = a3;
    v10 = [v9 objectForKeyedSubscript:v8];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v9 objectForKeyedSubscript:*MEMORY[0x1E69DDF38]];

    v14 = [v13 integerValue];
    v15 = [(SBHTableViewController *)self view];
    v16 = MEMORY[0x1E69DD250];
    v17 = (v14 << 16) | 4;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __70__SBHTableViewController__reloadNoResultsViewForKeyboardNotification___block_invoke;
    v19[3] = &unk_1E8088C90;
    v20 = v15;
    v18 = v15;
    [v16 animateWithDuration:v17 delay:v19 options:0 animations:v12 completion:0.0];
  }
}

@end