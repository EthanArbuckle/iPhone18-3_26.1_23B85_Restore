@interface UITableViewController
- (BOOL)_viewControllerWasSelected;
- (BOOL)respondsToSelector:(SEL)a3;
- (UIRefreshControl)refreshControl;
- (UITableView)tableView;
- (UITableViewController)initWithCoder:(NSCoder *)coder;
- (UITableViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (UITableViewController)initWithStyle:(UITableViewStyle)style;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_existingTableView;
- (id)previewViewControllerForLocation:(CGPoint)a3 inSourceView:(id)a4;
- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4;
- (int64_t)_resolvedDataSourceFilterTypeForScreen:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 indentationLevelForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_applyDefaultDataSourceToTable:(id)a3;
- (void)_limitedUIDidChange;
- (void)_refreshFilteredDataSourceFilterTypeForScreen:(id)a3;
- (void)_setFilteredDataType:(int64_t)a3;
- (void)_setStaticDataSource:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadView;
- (void)previewingContext:(id)a3 commitViewController:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setRefreshControl:(UIRefreshControl *)refreshControl;
- (void)setTableView:(UITableView *)tableView;
- (void)tableView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5;
@end

@implementation UITableViewController

- (UITableView)tableView
{
  v3 = [(UIViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  v4 = [(UIViewController *)self _embeddedView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v4;
LABEL_4:
    v5 = v3;
    v4 = v5;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)loadView
{
  v3 = [(UIViewController *)self nibName];
  if (v3)
  {
    v22.receiver = self;
    v22.super_class = UITableViewController;
    [(UIViewController *)&v22 loadView];
    v4 = [(UITableViewController *)self _existingTableView];
    if (!v4)
    {
      v5 = [(UIViewController *)self storyboardIdentifier];
      if (v5)
      {
        v6 = [(UIViewController *)self storyboard];
        v7 = [v6 name];
        v8 = v7;
        if (v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = [v6 description];
        }

        v19 = v9;

        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s instantiated view controller with identifier %@ from storyboard %@, but didn't get a UITableView.", "-[UITableViewController loadView]", v5, v19}];
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s loaded the %@ nib but didn't get a UITableView.", "-[UITableViewController loadView]", v3}];
      }
    }

    v20 = [(UITableView *)v4 delegate];

    if (!v20)
    {
      [(UITableView *)v4 setDelegate:self];
    }

    v21 = [(UITableView *)v4 dataSource];

    if (!v21)
    {
      [(UITableViewController *)self _applyDefaultDataSourceToTable:v4];
    }
  }

  else
  {
    if (dyld_program_sdk_at_least())
    {
      v10 = *MEMORY[0x1E695F058];
      v11 = *(MEMORY[0x1E695F058] + 8);
      v12 = *(MEMORY[0x1E695F058] + 16);
      v13 = *(MEMORY[0x1E695F058] + 24);
    }

    else
    {
      v14 = [(UIViewController *)self _screen];
      [v14 _applicationFrame];
      v10 = v15;
      v11 = v16;
      v12 = v17;
      v13 = v18;
    }

    v4 = [[UITableView alloc] initWithFrame:self->_tableViewStyle style:v10, v11, v12, v13];
    [(UIView *)v4 setAutoresizingMask:18];
    [(UITableViewController *)self _applyDefaultDataSourceToTable:v4];
    [(UITableView *)v4 setDelegate:self];
    [(UIViewController *)self setView:v4];
  }

  [(UITableView *)v4 setEditing:[(UIViewController *)self isEditing]];
}

- (BOOL)_viewControllerWasSelected
{
  v2 = [(UITableViewController *)self tableView];
  v3 = [v2 _highlightFirstVisibleRowIfAppropriate];

  return v3;
}

- (UITableViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  v7.receiver = self;
  v7.super_class = UITableViewController;
  v4 = [(UIViewController *)&v7 initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  v5 = v4;
  if (v4)
  {
    _UITableViewControllerCommonInit(v4);
  }

  return v5;
}

- (UITableViewController)initWithStyle:(UITableViewStyle)style
{
  if (dyld_program_sdk_at_least())
  {
    v9.receiver = self;
    v9.super_class = UITableViewController;
    v5 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITableViewController;
    v5 = [(UIViewController *)&v8 init];
  }

  v6 = v5;
  if (v5)
  {
    v5->_tableViewStyle = style;
    _UITableViewControllerCommonInit(v5);
  }

  return v6;
}

- (UITableViewController)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v10.receiver = self;
  v10.super_class = UITableViewController;
  v5 = [(UIViewController *)&v10 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    _UITableViewControllerCommonInit(v5);
    if ([(NSCoder *)v4 containsValueForKey:@"UIClearsSelectionOnViewWillAppear"])
    {
      *&v6->_tableViewControllerFlags = *&v6->_tableViewControllerFlags & 0xFE | [(NSCoder *)v4 decodeBoolForKey:@"UIClearsSelectionOnViewWillAppear"];
    }

    v7 = [(NSCoder *)v4 decodeObjectForKey:@"UITableViewControllerStaticDataSource"];
    staticDataSource = v6->_staticDataSource;
    v6->_staticDataSource = v7;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = UITableViewController;
  [(UIViewController *)&v6 encodeWithCoder:v4];
  if ((*&self->_tableViewControllerFlags & 1) == 0)
  {
    [v4 encodeBool:0 forKey:@"UIClearsSelectionOnViewWillAppear"];
  }

  staticDataSource = self->_staticDataSource;
  if (staticDataSource)
  {
    [v4 encodeObject:staticDataSource forKey:@"UITableViewControllerStaticDataSource"];
  }
}

- (void)dealloc
{
  v3 = [(UITableViewController *)self _existingTableView];
  v4 = [v3 dataSource];
  filteredDataSource = self->_filteredDataSource;

  if (v4 == filteredDataSource)
  {
    [v3 setDataSource:0];
  }

  if (self->_keyboardSupport)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self->_keyboardSupport];
  }

  if ((*&self->_tableViewControllerFlags & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 removeObserver:self name:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:0];

    *&self->_tableViewControllerFlags &= ~8u;
  }

  v8.receiver = self;
  v8.super_class = UITableViewController;
  [(UIViewController *)&v8 dealloc];
}

- (id)_existingTableView
{
  v2 = [(UIViewController *)self _existingView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTableView:(UITableView *)tableView
{
  v11 = tableView;
  v4 = [(UITableViewController *)self _existingTableView];
  if (v4 != v11)
  {
    v5 = [(UITableView *)v4 dataSource];
    v6 = v5;
    if (v5 == self || v5 == self->_filteredDataSource)
    {
      [(UITableView *)v4 setDataSource:0];
    }

    v7 = [(UITableView *)v4 delegate];

    if (v7 == self)
    {
      [(UITableView *)v4 setDelegate:0];
    }

    v8 = [(UIScrollView *)v4 _refreshControl];
    [(UIViewController *)self setView:v11];
    [(UIScrollView *)v11 _setRefreshControl:v8];
    v9 = [(UITableView *)v11 dataSource];

    if (!v9)
    {
      [(UITableViewController *)self _applyDefaultDataSourceToTable:v11];
    }

    v10 = [(UITableView *)v11 delegate];

    if (!v10)
    {
      [(UITableView *)v11 setDelegate:self];
    }
  }
}

- (void)_applyDefaultDataSourceToTable:(id)a3
{
  filteredDataSource = self->_filteredDataSource;
  v7 = a3;
  if (filteredDataSource)
  {
    [(_UIFilteredDataSource *)filteredDataSource setTableDataSource:self];
    v5 = self->_filteredDataSource;
    v6 = v7;
  }

  else
  {
    v6 = v7;
    v5 = self;
  }

  [v6 setDataSource:v5];
}

- (void)_limitedUIDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UITableViewController__limitedUIDidChange__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __44__UITableViewController__limitedUIDidChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _screen];
  [v1 _refreshFilteredDataSourceFilterTypeForScreen:v2];
}

- (int64_t)_resolvedDataSourceFilterTypeForScreen:(id)a3
{
  v4 = a3;
  v5 = v4;
  filteredDataType = self->_filteredDataType;
  if (filteredDataType)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 _areListsLimited];
    filteredDataType = self->_filteredDataType;
  }

  if (filteredDataType == 1)
  {
    v8 = [v5 _areMusicListsLimited];
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 | v8;

  return v9 & 1;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = UITableViewController;
  [(UIViewController *)&v38 viewWillAppear:?];
  v5 = [(UITableViewController *)self tableView];
  v6 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
  if ([v5 numberOfSections])
  {
    if (*&self->_tableViewControllerFlags)
    {
      v32 = v5;
      v7 = objc_alloc(MEMORY[0x1E695DF70]);
      v8 = [(UITableViewController *)self tableView];
      v9 = [v8 indexPathsForSelectedRows];
      v10 = [v7 initWithCapacity:{objc_msgSend(v9, "count")}];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v11 = [(UITableViewController *)self tableView];
      v12 = [v11 indexPathsForSelectedRows];

      v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v35;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            v18 = [(UITableViewController *)self tableView];
            v19 = [v18 _isRowMultiSelect:v17 followingMacBehavior:0];

            if ((v19 & 1) == 0)
            {
              [v10 addObject:v17];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v14);
      }

      v20 = [(UIViewController *)self transitionCoordinator];
      v5 = v32;
      [v32 _deselectRowsAtIndexPaths:v10 animated:v3 transitionCoordinator:v20];

      v6 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
    }
  }

  else
  {
    [v5 reloadData];
  }

  keyboardSupport = self->_keyboardSupport;
  if (!keyboardSupport)
  {
    v22 = [[UIAutoRespondingScrollViewControllerKeyboardSupport alloc] initWithViewController:self];
    v23 = self->_keyboardSupport;
    self->_keyboardSupport = v22;

    keyboardSupport = self->_keyboardSupport;
  }

  if (![(UIAutoRespondingScrollViewControllerKeyboardSupport *)keyboardSupport registeredForNotifications])
  {
    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    v25 = [(UIViewController *)self _screen];
    [v24 addObserver:self->_keyboardSupport selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:v25];
    [v24 addObserver:self->_keyboardSupport selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:v25];
    [v24 addObserver:self->_keyboardSupport selector:sel__keyboardDidShow_ name:@"UIKeyboardPrivateDidShowNotification" object:v25];
    [v24 addObserver:self->_keyboardSupport selector:sel__keyboardDidHide_ name:@"UIKeyboardPrivateDidHideNotification" object:v25];
    [v24 addObserver:self->_keyboardSupport selector:sel__keyboardDidChangeFrame_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v25];
    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setRegisteredForNotifications:1];
  }

  [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setViewIsDisappearing:0];
  v26 = v6[808];
  if ((*(&self->super.super.super.isa + v26) & 8) == 0)
  {
    v27 = [(UIViewController *)self traitCollection];
    v28 = [v27 userInterfaceIdiom];

    if (v28 == 3)
    {
      v29 = [MEMORY[0x1E696AD88] defaultCenter];
      [v29 addObserver:self selector:sel__limitedUIDidChange name:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:0];

      *(&self->super.super.super.isa + v26) |= 8u;
    }
  }

  if (![(UIViewController *)self _isInViewControllerThatHandlesKeyboardAvoidance])
  {
    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport adjustmentForKeyboard];
    v33 = v30;
    v31 = [(UITableViewController *)self tableView];
    [v31 _adjustForAutomaticKeyboardInfo:0 animated:0 lastAdjustment:&v33];

    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setAdjustmentForKeyboard:v33];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (self->_keyboardSupport)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self->_keyboardSupport];

    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setViewIsDisappearing:1];
    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setRegisteredForNotifications:0];
  }

  if ((*&self->_tableViewControllerFlags & 8) != 0)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:self name:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:0];

    *&self->_tableViewControllerFlags &= ~8u;
  }

  v7.receiver = self;
  v7.super_class = UITableViewController;
  [(UIViewController *)&v7 viewWillDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UITableViewController;
  [(UIViewController *)&v5 viewDidAppear:a3];
  v4 = [(UITableViewController *)self tableView];
  [v4 flashScrollIndicators];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = UITableViewController;
  [UIViewController setEditing:sel_setEditing_animated_ animated:?];
  v7 = [(UITableViewController *)self tableView];
  [v7 setEditing:v5 animated:v4];
}

- (void)setRefreshControl:(UIRefreshControl *)refreshControl
{
  v4 = refreshControl;
  v5 = [(UITableViewController *)self tableView];
  [v5 setRefreshControl:v4];
}

- (UIRefreshControl)refreshControl
{
  v2 = [(UITableViewController *)self tableView];
  v3 = [v2 refreshControl];

  return v3;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (!self->_staticDataSource && (sel_tableView_titleForHeaderInSection_ != a3 ? (v4 = sel_tableView_titleForFooterInSection_ == a3) : (v4 = 1), !v4 ? (v5 = sel_tableView_heightForHeaderInSection_ == a3) : (v5 = 1), !v5 ? (v6 = sel_tableView_heightForFooterInSection_ == a3) : (v6 = 1), !v6 ? (v7 = sel_tableView_viewForHeaderInSection_ == a3) : (v7 = 1), !v7 ? (v8 = sel_tableView_viewForFooterInSection_ == a3) : (v8 = 1), !v8 ? (v9 = sel_tableView_heightForRowAtIndexPath_ == a3) : (v9 = 1), !v9 ? (v10 = sel_tableView_indentationLevelForRowAtIndexPath_ == a3) : (v10 = 1), v10))
  {
    v11 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v11, a3);
    v13 = objc_opt_class();
    return class_getMethodImplementation(v13, a3) != MethodImplementation;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UITableViewController;
    return [(UITableViewController *)&v15 respondsToSelector:a3];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  staticDataSource = self->_staticDataSource;
  if (staticDataSource)
  {
    return [(UITableViewDataSource *)staticDataSource numberOfSectionsInTableView:a3];
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = self->_staticDataSource;
  if (result)
  {
    return [result tableView:a3 numberOfRowsInSection:a4];
  }

  return result;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  staticDataSource = self->_staticDataSource;
  if (!staticDataSource)
  {
    return 0.0;
  }

  [(UITableViewDataSource *)staticDataSource tableView:a3 heightForHeaderInSection:a4];
  return result;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  staticDataSource = self->_staticDataSource;
  if (!staticDataSource)
  {
    return 0.0;
  }

  [(UITableViewDataSource *)staticDataSource tableView:a3 heightForFooterInSection:a4];
  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  staticDataSource = self->_staticDataSource;
  if (staticDataSource)
  {
    [(UITableViewDataSource *)staticDataSource tableView:a3 heightForRowAtIndexPath:a4];
  }

  else
  {
    [a3 rowHeight];
  }

  return result;
}

- (int64_t)tableView:(id)a3 indentationLevelForRowAtIndexPath:(id)a4
{
  result = self->_staticDataSource;
  if (result)
  {
    return [result tableView:a3 indentationLevelForRowAtIndexPath:a4];
  }

  return result;
}

- (void)tableView:(id)a3 didEndEditingRowAtIndexPath:(id)a4
{
  if (([a3 isEditing] & 1) == 0)
  {

    [(UITableViewController *)self setEditing:0 animated:1];
  }
}

- (void)tableView:(id)a3 didBeginMultipleSelectionInteractionAtIndexPath:(id)a4
{
  v5 = a3;
  if (dyld_program_sdk_at_least() && [v5 isEditing])
  {
    [(UITableViewController *)self setEditing:1 animated:1];
  }
}

- (void)_setFilteredDataType:(int64_t)a3
{
  self->_filteredDataType = a3;
  v4 = [(UIViewController *)self _screen];
  [(UITableViewController *)self _refreshFilteredDataSourceFilterTypeForScreen:v4];

  v5 = [(UITableViewController *)self tableView];
  [v5 reloadData];
}

- (void)_refreshFilteredDataSourceFilterTypeForScreen:(id)a3
{
  filteredDataSource = self->_filteredDataSource;
  v4 = [(UITableViewController *)self _resolvedDataSourceFilterTypeForScreen:a3];

  [(_UIFilteredDataSource *)filteredDataSource setFilterType:v4];
}

- (id)previewingContext:(id)a3 viewControllerForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v8 = a3;
  if ([(UITableViewController *)self _shouldRespondToPreviewingMethods])
  {
    v9 = [v8 sourceView];
    v10 = [(UITableViewController *)self previewViewControllerForLocation:v9 inSourceView:x, y];
  }

  else
  {
    [(UIResponder *)self doesNotRecognizeSelector:a2];
    v10 = 0;
  }

  return v10;
}

- (void)previewingContext:(id)a3 commitViewController:(id)a4
{
  v8 = a4;
  if ([(UITableViewController *)self _shouldRespondToPreviewingMethods])
  {
    v6 = v8;
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = [(UITableViewController *)self committedViewControllerForPreviewViewController:v6];

      if (!v7)
      {
        v7 = v6;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [(UITableViewController *)self commitPreviewViewController:v6 committedViewController:v7];
    }

    else if (objc_opt_respondsToSelector())
    {
      [(UITableViewController *)self commitPreviewViewController:v6];
    }
  }

  else
  {
    [(UIResponder *)self doesNotRecognizeSelector:a2];
  }
}

- (id)previewViewControllerForLocation:(CGPoint)a3 inSourceView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([(UIViewController *)self isEditing]|| ![(UITableViewController *)self _shouldRespondToPreviewingMethods])
  {
    v10 = 0;
  }

  else
  {
    v8 = [(UITableViewController *)self tableView];
    [v8 convertPoint:v7 fromView:{x, y}];
    v9 = [v8 indexPathForRowAtPoint:?];
    v10 = [(UITableViewController *)self previewViewControllerForRowAtIndexPath:v9];
  }

  return v10;
}

- (void)willPresentPreviewViewController:(id)a3 forLocation:(CGPoint)a4 inSourceView:(id)a5
{
  y = a4.y;
  x = a4.x;
  v14 = a3;
  v9 = a5;
  if ([(UITableViewController *)self _shouldRespondToPreviewingMethods])
  {
    v10 = [(UITableViewController *)self tableView];
    [v10 convertPoint:v9 fromView:{x, y}];
    v11 = [v10 indexPathForRowAtPoint:?];
    v12 = [v10 cellForRowAtIndexPath:v11];
    v13 = [v14 presentationController];
    [v13 setSourceView:v12];
    [v12 bounds];
    [v13 setSourceRect:?];
    [(UITableViewController *)self willPresentPreviewViewController:v14 forRowAtIndexPath:v11];
  }
}

- (void)_setStaticDataSource:(id)a3
{
  v5 = a3;
  if (self->_staticDataSource != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_staticDataSource, a3);
    v6 = [(UIViewController *)self isViewLoaded];
    v5 = v11;
    if (v6)
    {
      v7 = [(UITableViewController *)self tableView];
      v8 = [v7 delegate];

      if (v8 == self)
      {
        [v7 setDelegate:0];
        [v7 setDelegate:self];
      }

      v9 = [v7 dataSource];
      filteredDataSource = self->_filteredDataSource;

      if (v9 == filteredDataSource)
      {
        [(UITableViewController *)self _applyDefaultDataSourceToTable:v7];
      }

      [v7 reloadData];

      v5 = v11;
    }
  }
}

@end