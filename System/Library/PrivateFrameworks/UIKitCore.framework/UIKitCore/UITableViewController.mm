@interface UITableViewController
- (BOOL)_viewControllerWasSelected;
- (BOOL)respondsToSelector:(SEL)selector;
- (UIRefreshControl)refreshControl;
- (UITableView)tableView;
- (UITableViewController)initWithCoder:(NSCoder *)coder;
- (UITableViewController)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
- (UITableViewController)initWithStyle:(UITableViewStyle)style;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_existingTableView;
- (id)previewViewControllerForLocation:(CGPoint)location inSourceView:(id)view;
- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location;
- (int64_t)_resolvedDataSourceFilterTypeForScreen:(id)screen;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view indentationLevelForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_applyDefaultDataSourceToTable:(id)table;
- (void)_limitedUIDidChange;
- (void)_refreshFilteredDataSourceFilterTypeForScreen:(id)screen;
- (void)_setFilteredDataType:(int64_t)type;
- (void)_setStaticDataSource:(id)source;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadView;
- (void)previewingContext:(id)context commitViewController:(id)controller;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setRefreshControl:(UIRefreshControl *)refreshControl;
- (void)setTableView:(UITableView *)tableView;
- (void)tableView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path;
- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view;
@end

@implementation UITableViewController

- (UITableView)tableView
{
  view = [(UIViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  _embeddedView = [(UIViewController *)self _embeddedView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view = _embeddedView;
LABEL_4:
    v5 = view;
    _embeddedView = v5;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)loadView
{
  nibName = [(UIViewController *)self nibName];
  if (nibName)
  {
    v22.receiver = self;
    v22.super_class = UITableViewController;
    [(UIViewController *)&v22 loadView];
    _existingTableView = [(UITableViewController *)self _existingTableView];
    if (!_existingTableView)
    {
      storyboardIdentifier = [(UIViewController *)self storyboardIdentifier];
      if (storyboardIdentifier)
      {
        storyboard = [(UIViewController *)self storyboard];
        name = [storyboard name];
        v8 = name;
        if (name)
        {
          v9 = name;
        }

        else
        {
          v9 = [storyboard description];
        }

        v19 = v9;

        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s instantiated view controller with identifier %@ from storyboard %@, but didn't get a UITableView.", "-[UITableViewController loadView]", storyboardIdentifier, v19}];
      }

      else
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"%s loaded the %@ nib but didn't get a UITableView.", "-[UITableViewController loadView]", nibName}];
      }
    }

    delegate = [(UITableView *)_existingTableView delegate];

    if (!delegate)
    {
      [(UITableView *)_existingTableView setDelegate:self];
    }

    dataSource = [(UITableView *)_existingTableView dataSource];

    if (!dataSource)
    {
      [(UITableViewController *)self _applyDefaultDataSourceToTable:_existingTableView];
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
      _screen = [(UIViewController *)self _screen];
      [_screen _applicationFrame];
      v10 = v15;
      v11 = v16;
      v12 = v17;
      v13 = v18;
    }

    _existingTableView = [[UITableView alloc] initWithFrame:self->_tableViewStyle style:v10, v11, v12, v13];
    [(UIView *)_existingTableView setAutoresizingMask:18];
    [(UITableViewController *)self _applyDefaultDataSourceToTable:_existingTableView];
    [(UITableView *)_existingTableView setDelegate:self];
    [(UIViewController *)self setView:_existingTableView];
  }

  [(UITableView *)_existingTableView setEditing:[(UIViewController *)self isEditing]];
}

- (BOOL)_viewControllerWasSelected
{
  tableView = [(UITableViewController *)self tableView];
  _highlightFirstVisibleRowIfAppropriate = [tableView _highlightFirstVisibleRowIfAppropriate];

  return _highlightFirstVisibleRowIfAppropriate;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = UITableViewController;
  [(UIViewController *)&v6 encodeWithCoder:coderCopy];
  if ((*&self->_tableViewControllerFlags & 1) == 0)
  {
    [coderCopy encodeBool:0 forKey:@"UIClearsSelectionOnViewWillAppear"];
  }

  staticDataSource = self->_staticDataSource;
  if (staticDataSource)
  {
    [coderCopy encodeObject:staticDataSource forKey:@"UITableViewControllerStaticDataSource"];
  }
}

- (void)dealloc
{
  _existingTableView = [(UITableViewController *)self _existingTableView];
  dataSource = [_existingTableView dataSource];
  filteredDataSource = self->_filteredDataSource;

  if (dataSource == filteredDataSource)
  {
    [_existingTableView setDataSource:0];
  }

  if (self->_keyboardSupport)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_keyboardSupport];
  }

  if ((*&self->_tableViewControllerFlags & 8) != 0)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:0];

    *&self->_tableViewControllerFlags &= ~8u;
  }

  v8.receiver = self;
  v8.super_class = UITableViewController;
  [(UIViewController *)&v8 dealloc];
}

- (id)_existingTableView
{
  _existingView = [(UIViewController *)self _existingView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _existingView;
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
  _existingTableView = [(UITableViewController *)self _existingTableView];
  if (_existingTableView != v11)
  {
    dataSource = [(UITableView *)_existingTableView dataSource];
    v6 = dataSource;
    if (dataSource == self || dataSource == self->_filteredDataSource)
    {
      [(UITableView *)_existingTableView setDataSource:0];
    }

    delegate = [(UITableView *)_existingTableView delegate];

    if (delegate == self)
    {
      [(UITableView *)_existingTableView setDelegate:0];
    }

    _refreshControl = [(UIScrollView *)_existingTableView _refreshControl];
    [(UIViewController *)self setView:v11];
    [(UIScrollView *)v11 _setRefreshControl:_refreshControl];
    dataSource2 = [(UITableView *)v11 dataSource];

    if (!dataSource2)
    {
      [(UITableViewController *)self _applyDefaultDataSourceToTable:v11];
    }

    delegate2 = [(UITableView *)v11 delegate];

    if (!delegate2)
    {
      [(UITableView *)v11 setDelegate:self];
    }
  }
}

- (void)_applyDefaultDataSourceToTable:(id)table
{
  filteredDataSource = self->_filteredDataSource;
  tableCopy = table;
  if (filteredDataSource)
  {
    [(_UIFilteredDataSource *)filteredDataSource setTableDataSource:self];
    selfCopy = self->_filteredDataSource;
    v6 = tableCopy;
  }

  else
  {
    v6 = tableCopy;
    selfCopy = self;
  }

  [v6 setDataSource:selfCopy];
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

- (int64_t)_resolvedDataSourceFilterTypeForScreen:(id)screen
{
  screenCopy = screen;
  v5 = screenCopy;
  filteredDataType = self->_filteredDataType;
  if (filteredDataType)
  {
    _areListsLimited = 0;
  }

  else
  {
    _areListsLimited = [screenCopy _areListsLimited];
    filteredDataType = self->_filteredDataType;
  }

  if (filteredDataType == 1)
  {
    _areMusicListsLimited = [v5 _areMusicListsLimited];
  }

  else
  {
    _areMusicListsLimited = 0;
  }

  v9 = _areListsLimited | _areMusicListsLimited;

  return v9 & 1;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v40 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = UITableViewController;
  [(UIViewController *)&v38 viewWillAppear:?];
  tableView = [(UITableViewController *)self tableView];
  v6 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
  if ([tableView numberOfSections])
  {
    if (*&self->_tableViewControllerFlags)
    {
      v32 = tableView;
      v7 = objc_alloc(MEMORY[0x1E695DF70]);
      tableView2 = [(UITableViewController *)self tableView];
      indexPathsForSelectedRows = [tableView2 indexPathsForSelectedRows];
      v10 = [v7 initWithCapacity:{objc_msgSend(indexPathsForSelectedRows, "count")}];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      tableView3 = [(UITableViewController *)self tableView];
      indexPathsForSelectedRows2 = [tableView3 indexPathsForSelectedRows];

      v13 = [indexPathsForSelectedRows2 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
              objc_enumerationMutation(indexPathsForSelectedRows2);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            tableView4 = [(UITableViewController *)self tableView];
            v19 = [tableView4 _isRowMultiSelect:v17 followingMacBehavior:0];

            if ((v19 & 1) == 0)
            {
              [v10 addObject:v17];
            }
          }

          v14 = [indexPathsForSelectedRows2 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v14);
      }

      transitionCoordinator = [(UIViewController *)self transitionCoordinator];
      tableView = v32;
      [v32 _deselectRowsAtIndexPaths:v10 animated:appearCopy transitionCoordinator:transitionCoordinator];

      v6 = &OBJC_IVAR____UISystemBackgroundView__strokeView;
    }
  }

  else
  {
    [tableView reloadData];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    _screen = [(UIViewController *)self _screen];
    [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:_screen];
    [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:_screen];
    [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardDidShow_ name:@"UIKeyboardPrivateDidShowNotification" object:_screen];
    [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardDidHide_ name:@"UIKeyboardPrivateDidHideNotification" object:_screen];
    [defaultCenter addObserver:self->_keyboardSupport selector:sel__keyboardDidChangeFrame_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:_screen];
    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setRegisteredForNotifications:1];
  }

  [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setViewIsDisappearing:0];
  v26 = v6[808];
  if ((*(&self->super.super.super.isa + v26) & 8) == 0)
  {
    traitCollection = [(UIViewController *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__limitedUIDidChange name:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:0];

      *(&self->super.super.super.isa + v26) |= 8u;
    }
  }

  if (![(UIViewController *)self _isInViewControllerThatHandlesKeyboardAvoidance])
  {
    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport adjustmentForKeyboard];
    v33 = v30;
    tableView5 = [(UITableViewController *)self tableView];
    [tableView5 _adjustForAutomaticKeyboardInfo:0 animated:0 lastAdjustment:&v33];

    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setAdjustmentForKeyboard:v33];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (self->_keyboardSupport)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_keyboardSupport];

    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setViewIsDisappearing:1];
    [(UIAutoRespondingScrollViewControllerKeyboardSupport *)self->_keyboardSupport setRegisteredForNotifications:0];
  }

  if ((*&self->_tableViewControllerFlags & 8) != 0)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"UIScreenCarScreenLimitedUIDidChangeNotification" object:0];

    *&self->_tableViewControllerFlags &= ~8u;
  }

  v7.receiver = self;
  v7.super_class = UITableViewController;
  [(UIViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = UITableViewController;
  [(UIViewController *)&v5 viewDidAppear:appear];
  tableView = [(UITableViewController *)self tableView];
  [tableView flashScrollIndicators];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v8.receiver = self;
  v8.super_class = UITableViewController;
  [UIViewController setEditing:sel_setEditing_animated_ animated:?];
  tableView = [(UITableViewController *)self tableView];
  [tableView setEditing:editingCopy animated:animatedCopy];
}

- (void)setRefreshControl:(UIRefreshControl *)refreshControl
{
  v4 = refreshControl;
  tableView = [(UITableViewController *)self tableView];
  [tableView setRefreshControl:v4];
}

- (UIRefreshControl)refreshControl
{
  tableView = [(UITableViewController *)self tableView];
  refreshControl = [tableView refreshControl];

  return refreshControl;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (!self->_staticDataSource && (sel_tableView_titleForHeaderInSection_ != selector ? (v4 = sel_tableView_titleForFooterInSection_ == selector) : (v4 = 1), !v4 ? (v5 = sel_tableView_heightForHeaderInSection_ == selector) : (v5 = 1), !v5 ? (v6 = sel_tableView_heightForFooterInSection_ == selector) : (v6 = 1), !v6 ? (v7 = sel_tableView_viewForHeaderInSection_ == selector) : (v7 = 1), !v7 ? (v8 = sel_tableView_viewForFooterInSection_ == selector) : (v8 = 1), !v8 ? (v9 = sel_tableView_heightForRowAtIndexPath_ == selector) : (v9 = 1), !v9 ? (v10 = sel_tableView_indentationLevelForRowAtIndexPath_ == selector) : (v10 = 1), v10))
  {
    v11 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v11, selector);
    v13 = objc_opt_class();
    return class_getMethodImplementation(v13, selector) != MethodImplementation;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UITableViewController;
    return [(UITableViewController *)&v15 respondsToSelector:selector];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  staticDataSource = self->_staticDataSource;
  if (staticDataSource)
  {
    return [(UITableViewDataSource *)staticDataSource numberOfSectionsInTableView:view];
  }

  else
  {
    return 1;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = self->_staticDataSource;
  if (result)
  {
    return [result tableView:view numberOfRowsInSection:section];
  }

  return result;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  staticDataSource = self->_staticDataSource;
  if (!staticDataSource)
  {
    return 0.0;
  }

  [(UITableViewDataSource *)staticDataSource tableView:view heightForHeaderInSection:section];
  return result;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  staticDataSource = self->_staticDataSource;
  if (!staticDataSource)
  {
    return 0.0;
  }

  [(UITableViewDataSource *)staticDataSource tableView:view heightForFooterInSection:section];
  return result;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  staticDataSource = self->_staticDataSource;
  if (staticDataSource)
  {
    [(UITableViewDataSource *)staticDataSource tableView:view heightForRowAtIndexPath:path];
  }

  else
  {
    [view rowHeight];
  }

  return result;
}

- (int64_t)tableView:(id)view indentationLevelForRowAtIndexPath:(id)path
{
  result = self->_staticDataSource;
  if (result)
  {
    return [result tableView:view indentationLevelForRowAtIndexPath:path];
  }

  return result;
}

- (void)tableView:(id)view didEndEditingRowAtIndexPath:(id)path
{
  if (([view isEditing] & 1) == 0)
  {

    [(UITableViewController *)self setEditing:0 animated:1];
  }
}

- (void)tableView:(id)view didBeginMultipleSelectionInteractionAtIndexPath:(id)path
{
  viewCopy = view;
  if (dyld_program_sdk_at_least() && [viewCopy isEditing])
  {
    [(UITableViewController *)self setEditing:1 animated:1];
  }
}

- (void)_setFilteredDataType:(int64_t)type
{
  self->_filteredDataType = type;
  _screen = [(UIViewController *)self _screen];
  [(UITableViewController *)self _refreshFilteredDataSourceFilterTypeForScreen:_screen];

  tableView = [(UITableViewController *)self tableView];
  [tableView reloadData];
}

- (void)_refreshFilteredDataSourceFilterTypeForScreen:(id)screen
{
  filteredDataSource = self->_filteredDataSource;
  v4 = [(UITableViewController *)self _resolvedDataSourceFilterTypeForScreen:screen];

  [(_UIFilteredDataSource *)filteredDataSource setFilterType:v4];
}

- (id)previewingContext:(id)context viewControllerForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  contextCopy = context;
  if ([(UITableViewController *)self _shouldRespondToPreviewingMethods])
  {
    sourceView = [contextCopy sourceView];
    v10 = [(UITableViewController *)self previewViewControllerForLocation:sourceView inSourceView:x, y];
  }

  else
  {
    [(UIResponder *)self doesNotRecognizeSelector:a2];
    v10 = 0;
  }

  return v10;
}

- (void)previewingContext:(id)context commitViewController:(id)controller
{
  controllerCopy = controller;
  if ([(UITableViewController *)self _shouldRespondToPreviewingMethods])
  {
    v6 = controllerCopy;
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

- (id)previewViewControllerForLocation:(CGPoint)location inSourceView:(id)view
{
  y = location.y;
  x = location.x;
  viewCopy = view;
  if ([(UIViewController *)self isEditing]|| ![(UITableViewController *)self _shouldRespondToPreviewingMethods])
  {
    v10 = 0;
  }

  else
  {
    tableView = [(UITableViewController *)self tableView];
    [tableView convertPoint:viewCopy fromView:{x, y}];
    v9 = [tableView indexPathForRowAtPoint:?];
    v10 = [(UITableViewController *)self previewViewControllerForRowAtIndexPath:v9];
  }

  return v10;
}

- (void)willPresentPreviewViewController:(id)controller forLocation:(CGPoint)location inSourceView:(id)view
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  viewCopy = view;
  if ([(UITableViewController *)self _shouldRespondToPreviewingMethods])
  {
    tableView = [(UITableViewController *)self tableView];
    [tableView convertPoint:viewCopy fromView:{x, y}];
    v11 = [tableView indexPathForRowAtPoint:?];
    v12 = [tableView cellForRowAtIndexPath:v11];
    presentationController = [controllerCopy presentationController];
    [presentationController setSourceView:v12];
    [v12 bounds];
    [presentationController setSourceRect:?];
    [(UITableViewController *)self willPresentPreviewViewController:controllerCopy forRowAtIndexPath:v11];
  }
}

- (void)_setStaticDataSource:(id)source
{
  sourceCopy = source;
  if (self->_staticDataSource != sourceCopy)
  {
    v11 = sourceCopy;
    objc_storeStrong(&self->_staticDataSource, source);
    isViewLoaded = [(UIViewController *)self isViewLoaded];
    sourceCopy = v11;
    if (isViewLoaded)
    {
      tableView = [(UITableViewController *)self tableView];
      delegate = [tableView delegate];

      if (delegate == self)
      {
        [tableView setDelegate:0];
        [tableView setDelegate:self];
      }

      dataSource = [tableView dataSource];
      filteredDataSource = self->_filteredDataSource;

      if (dataSource == filteredDataSource)
      {
        [(UITableViewController *)self _applyDefaultDataSourceToTable:tableView];
      }

      [tableView reloadData];

      sourceCopy = v11;
    }
  }
}

@end