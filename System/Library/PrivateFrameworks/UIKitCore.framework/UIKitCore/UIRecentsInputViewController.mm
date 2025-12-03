@interface UIRecentsInputViewController
- (UIRecentsInputViewControllerDelegate)recentInputDelegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_delete:(id)_delete;
- (void)_overrideTraitCollectionForHeaderViewController;
- (void)didSelectButtonAtIndexPath:(id)path;
- (void)ensureConstraints;
- (void)scrollViewDidChangeContentSize:(id)size;
- (void)setRecentInputs:(id)inputs;
- (void)updateTableViewWidth;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIRecentsInputViewController

- (void)didSelectButtonAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = +[UIKeyboardImpl sharedInstance];
  if ([pathCopy section])
  {
    if (-[UIRecentsInputViewController canManageList](self, "canManageList") && ![pathCopy row])
    {
      [v4 clearRecentInput];
      [(UIRecentsInputViewController *)self setRecentInputs:0];
    }

    if (-[UIRecentsInputViewController canManageList](self, "canManageList") && [pathCopy row] == 1 || !-[UIRecentsInputViewController canManageList](self, "canManageList") && !objc_msgSend(pathCopy, "row"))
    {
      v5 = +[_UIStatistics recentsInputViewNewEntryCount];
      [v5 incrementValueBy:1];
    }

    recentInputDelegate = [(UIRecentsInputViewController *)self recentInputDelegate];
    [recentInputDelegate switchToKeyboard];
  }

  else
  {
    entries = [(UILexicon *)self->_recentInputs entries];
    v8 = [entries objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    recentInputDelegate = [v8 userInput];

    [v4 handleClearWithInsertBeforeAdvance:recentInputDelegate];
    recentInputDelegate2 = [(UIRecentsInputViewController *)self recentInputDelegate];
    [recentInputDelegate2 didSelectRecentInput];

    v10 = +[_UIStatistics recentsInputViewItemSelectedCount];
    [v10 incrementValueBy:1];
  }
}

- (void)ensureConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  widthConstraint = [(UIRecentsInputViewController *)self widthConstraint];

  if (!widthConstraint)
  {
    v4 = MEMORY[0x1E69977A0];
    tableView = [(UITableViewController *)self tableView];
    v6 = [v4 constraintWithItem:tableView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    [(UIRecentsInputViewController *)self setWidthConstraint:v6];

    widthConstraint2 = [(UIRecentsInputViewController *)self widthConstraint];
    [array addObject:widthConstraint2];
  }

  heightConstraint = [(UIRecentsInputViewController *)self heightConstraint];

  if (!heightConstraint)
  {
    v9 = MEMORY[0x1E69977A0];
    tableView2 = [(UITableViewController *)self tableView];
    v11 = [v9 constraintWithItem:tableView2 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    [(UIRecentsInputViewController *)self setHeightConstraint:v11];

    heightConstraint2 = [(UIRecentsInputViewController *)self heightConstraint];
    [array addObject:heightConstraint2];
  }

  tableView3 = [(UITableViewController *)self tableView];
  [tableView3 addConstraints:array];
}

- (void)updateTableViewWidth
{
  v33[1] = *MEMORY[0x1E69E9840];
  [(UIRecentsInputViewController *)self ensureConstraints];
  v32 = *off_1E70EC918;
  v3 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  v33[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  entries = [(UILexicon *)self->_recentInputs entries];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__UIRecentsInputViewController_updateTableViewWidth__block_invoke;
  v25[3] = &unk_1E710E680;
  v6 = v4;
  v26 = v6;
  v27 = &v28;
  [entries enumerateObjectsUsingBlock:v25];

  previouslyUsedString = [(UIRecentsInputViewController *)self previouslyUsedString];
  [previouslyUsedString sizeWithAttributes:v6];
  v9 = v8;

  if (v9 > v29[3])
  {
    v29[3] = v9;
  }

  clearAllString = [(UIRecentsInputViewController *)self clearAllString];
  [clearAllString sizeWithAttributes:v6];
  v12 = v11;

  if (v12 > v29[3])
  {
    v29[3] = v12;
  }

  enterNewString = [(UIRecentsInputViewController *)self enterNewString];
  [enterNewString sizeWithAttributes:v6];
  v15 = v14;

  v16 = v29;
  v17 = v29[3];
  if (v15 > v17)
  {
    v29[3] = v15;
    v17 = v15;
  }

  v16[3] = v17 + 80.0;
  tableView = [(UITableViewController *)self tableView];
  [tableView layoutMargins];
  v20 = v19;
  v22 = v21;

  if (v20 + v22 + v29[3] <= 960.0)
  {
    v23 = v20 + v22 + v29[3];
  }

  else
  {
    v23 = 960.0;
  }

  v29[3] = v23;
  widthConstraint = [(UIRecentsInputViewController *)self widthConstraint];
  [widthConstraint setConstant:v23];

  _Block_object_dispose(&v28, 8);
}

void __52__UIRecentsInputViewController_updateTableViewWidth__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInput];
  [v3 sizeWithAttributes:*(a1 + 32)];
  v5 = v4;

  v6 = *(*(a1 + 40) + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }
}

- (void)setRecentInputs:(id)inputs
{
  inputsCopy = inputs;
  objc_storeStrong(&self->_recentInputs, inputs);
  v5 = +[_UIStatistics recentsInputViewNumberOfItems];
  entries = [(UILexicon *)self->_recentInputs entries];
  [v5 recordDistributionValue:{objc_msgSend(entries, "count")}];

  [(UIRecentsInputViewController *)self updateTableViewWidth];
  tableView = [(UITableViewController *)self tableView];
  [tableView reloadData];

  entries2 = [inputsCopy entries];
  v9 = [entries2 count];

  if (!v9)
  {
    recentInputDelegate = [(UIRecentsInputViewController *)self recentInputDelegate];
    [recentInputDelegate switchToKeyboard];
  }
}

- (void)viewDidLoad
{
  v58[4] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = UIRecentsInputViewController;
  [(UIViewController *)&v57 viewDidLoad];
  [(UIRecentsInputViewController *)self ensureConstraints];
  if ([(UIRecentsInputViewController *)self canManageList])
  {
    clearAllString = [(UIRecentsInputViewController *)self clearAllString];

    if (!clearAllString)
    {
      v4 = _UINSLocalizedStringWithDefaultValue(@"Clear All", @"Clear All");
      [(UIRecentsInputViewController *)self setClearAllString:v4];
    }
  }

  enterNewString = [(UIRecentsInputViewController *)self enterNewString];

  if (!enterNewString)
  {
    v6 = _UINSLocalizedStringWithDefaultValue(@"Enter New…", @"Enter New…");
    [(UIRecentsInputViewController *)self setEnterNewString:v6];
  }

  previouslyUsedString = [(UIRecentsInputViewController *)self previouslyUsedString];

  if (!previouslyUsedString)
  {
    v8 = _UINSLocalizedStringWithDefaultValue(@"Previously-Used Emails", @"Previously-Used Emails");
    [(UIRecentsInputViewController *)self setPreviouslyUsedString:v8];
  }

  tableView = [(UITableViewController *)self tableView];
  [tableView setMaskView:0];

  tableView2 = [(UITableViewController *)self tableView];
  [tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView3 = [(UITableViewController *)self tableView];
  [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"recentInputCell"];

  customHeaderView = [(UIRecentsInputViewController *)self customHeaderView];

  if (customHeaderView)
  {
    customHeaderView2 = [(UIRecentsInputViewController *)self customHeaderView];
    [(UIRecentsInputViewController *)self setHeaderView:customHeaderView2];
  }

  else
  {
    v14 = objc_alloc_init(_UIRecentsAccessoryDefaultView);
    [(UIRecentsInputViewController *)self setHeaderView:v14];

    previouslyUsedString2 = [(UIRecentsInputViewController *)self previouslyUsedString];
    headerView = [(UIRecentsInputViewController *)self headerView];
    titleLabel = [headerView titleLabel];
    [titleLabel setText:previouslyUsedString2];

    customHeaderView2 = [(UIRecentsInputViewController *)self headerView];
    [customHeaderView2 intrinsicContentSize];
    v19 = v18;
    headerView2 = [(UIRecentsInputViewController *)self headerView];
    [headerView2 intrinsicContentSize];
    v22 = v21;
    headerView3 = [(UIRecentsInputViewController *)self headerView];
    [headerView3 setFrame:{0.0, 0.0, v19, v22}];
  }

  headerView4 = [(UIRecentsInputViewController *)self headerView];
  [headerView4 frame];
  v26 = v25;
  v28 = v27;

  v29 = [[UIView alloc] initWithFrame:0.0, 0.0, v26, v28];
  [(UIRecentsInputViewController *)self setHeaderContainerView:v29];

  headerContainerView = [(UIRecentsInputViewController *)self headerContainerView];
  [headerContainerView setClipsToBounds:0];

  v31 = objc_alloc_init(UIViewController);
  headerContainerView2 = [(UIRecentsInputViewController *)self headerContainerView];
  [(UIViewController *)v31 setView:headerContainerView2];

  [(UIRecentsInputViewController *)self setHeaderContainerViewController:v31];
  headerContainerViewController = [(UIRecentsInputViewController *)self headerContainerViewController];
  [(UIViewController *)self addChildViewController:headerContainerViewController];

  headerContainerViewController2 = [(UIRecentsInputViewController *)self headerContainerViewController];
  view = [headerContainerViewController2 view];
  tableView4 = [(UITableViewController *)self tableView];
  [tableView4 setTableHeaderView:view];

  headerContainerViewController3 = [(UIRecentsInputViewController *)self headerContainerViewController];
  [headerContainerViewController3 didMoveToParentViewController:self];

  headerView5 = [(UIRecentsInputViewController *)self headerView];
  [headerView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  headerContainerView3 = [(UIRecentsInputViewController *)self headerContainerView];
  headerView6 = [(UIRecentsInputViewController *)self headerView];
  [headerContainerView3 addSubview:headerView6];

  v41 = MEMORY[0x1E69977A0];
  headerView7 = [(UIRecentsInputViewController *)self headerView];
  headerContainerView4 = [(UIRecentsInputViewController *)self headerContainerView];
  v44 = [v41 constraintWithItem:headerView7 attribute:9 relatedBy:0 toItem:headerContainerView4 attribute:9 multiplier:1.0 constant:0.0];

  v45 = MEMORY[0x1E69977A0];
  headerView8 = [(UIRecentsInputViewController *)self headerView];
  headerContainerView5 = [(UIRecentsInputViewController *)self headerContainerView];
  v48 = [v45 constraintWithItem:headerView8 attribute:4 relatedBy:0 toItem:headerContainerView5 attribute:4 multiplier:1.0 constant:0.0];

  v49 = MEMORY[0x1E69977A0];
  headerView9 = [(UIRecentsInputViewController *)self headerView];
  v51 = [v49 constraintWithItem:headerView9 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v26];

  v52 = MEMORY[0x1E69977A0];
  headerView10 = [(UIRecentsInputViewController *)self headerView];
  v54 = [v52 constraintWithItem:headerView10 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v28];

  v55 = MEMORY[0x1E69977A0];
  v58[0] = v44;
  v58[1] = v48;
  v58[2] = v51;
  v58[3] = v54;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  [v55 activateConstraints:v56];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(UIRecentsInputViewController *)self _overrideTraitCollectionForHeaderViewController];
  v5.receiver = self;
  v5.super_class = UIRecentsInputViewController;
  [(UITableViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = UIRecentsInputViewController;
  [(UITableViewController *)&v4 viewDidAppear:appear];
  v3 = +[_UIStatistics recentsInputViewPresentationCount];
  [v3 incrementValueBy:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    if ([(UIRecentsInputViewController *)self canManageList])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else if (section)
  {
    v9 = 0;
  }

  else
  {
    recentInputs = [(UIRecentsInputViewController *)self recentInputs];
    entries = [recentInputs entries];
    v9 = [entries count];
  }

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"recentInputCell" forIndexPath:pathCopy];
  [v7 setFocusStyle:1];
  recentInputDelegate = [(UIRecentsInputViewController *)self recentInputDelegate];
  textInputTraits = [recentInputDelegate textInputTraits];
  [v7 setTextInputTraits:textInputTraits];

  if ([pathCopy section])
  {
    if ([pathCopy section] != 1)
    {
      goto LABEL_16;
    }

    canManageList = [(UIRecentsInputViewController *)self canManageList];
    v11 = [pathCopy row];
    if (canManageList)
    {
      if (!v11)
      {
        clearAllString = [(UIRecentsInputViewController *)self clearAllString];
LABEL_14:
        userInput = clearAllString;
        if (!clearAllString)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if ([pathCopy row] != 1)
      {
        goto LABEL_16;
      }
    }

    else if (v11)
    {
      goto LABEL_16;
    }

    clearAllString = [(UIRecentsInputViewController *)self enterNewString];
    goto LABEL_14;
  }

  recentInputs = [(UIRecentsInputViewController *)self recentInputs];
  entries = [recentInputs entries];
  v14 = [entries objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  userInput = [v14 userInput];

  if ([(UIRecentsInputViewController *)self canManageList])
  {
    v16 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__delete_];
    [(UILongPressGestureRecognizer *)v16 setMinimumPressDuration:2.0];
    [v7 addGestureRecognizer:v16];
  }

  if (userInput)
  {
LABEL_15:
    [v7 setInputText:userInput withBlurStyle:{-[UIRecentsInputViewController containingEffectStyle](self, "containingEffectStyle")}];
  }

LABEL_16:

  return v7;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = 22.0;
  if (!section)
  {
    return 16.0;
  }

  return result;
}

- (void)scrollViewDidChangeContentSize:(id)size
{
  sizeCopy = size;
  window = [sizeCopy window];
  [window bounds];
  v7 = v6;

  [sizeCopy contentSize];
  v9 = v8;

  if (v9 <= v7)
  {
    v7 = v9;
  }

  heightConstraint = [(UIRecentsInputViewController *)self heightConstraint];
  [heightConstraint setConstant:v7];
}

- (void)_delete:(id)_delete
{
  _deleteCopy = _delete;
  if ([_deleteCopy state] == 1)
  {
    view = [_deleteCopy view];
    floatingLabel = [view floatingLabel];
    text = [floatingLabel text];

    v8 = [UIAlertController alertControllerWithTitle:text message:0 preferredStyle:0];
    objc_initWeak(&location, self);
    v9 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__UIRecentsInputViewController__delete___block_invoke;
    v14[3] = &unk_1E710E6D0;
    objc_copyWeak(&v16, &location);
    v10 = text;
    v15 = v10;
    v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:v14];

    [v8 addAction:v11];
    v12 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
    v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:&__block_literal_global_346];

    [v8 addAction:v13];
    [(UIViewController *)self presentViewController:v8 animated:1 completion:&__block_literal_global_123_2];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __40__UIRecentsInputViewController__delete___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[UIKeyboardImpl sharedInstance];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__UIRecentsInputViewController__delete___block_invoke_2;
  v5[3] = &unk_1E710E6A8;
  v5[4] = WeakRetained;
  [v3 removeRecentInput:v4 completionHandler:v5];
}

- (void)_overrideTraitCollectionForHeaderViewController
{
  recentInputDelegate = [(UIRecentsInputViewController *)self recentInputDelegate];
  textInputTraits = [recentInputDelegate textInputTraits];
  keyboardAppearance = [textInputTraits keyboardAppearance];

  v6 = 2;
  if (keyboardAppearance != 1 && keyboardAppearance != 9)
  {
    if (keyboardAppearance != 2)
    {
      return;
    }

    v6 = 1;
  }

  v8 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v6];
  headerContainerViewController = [(UIRecentsInputViewController *)self headerContainerViewController];
  [(UIViewController *)self setOverrideTraitCollection:v8 forChildViewController:headerContainerViewController];
}

- (UIRecentsInputViewControllerDelegate)recentInputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recentInputDelegate);

  return WeakRetained;
}

@end