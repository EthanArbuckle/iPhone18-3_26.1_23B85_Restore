@interface UIRecentsInputViewController
- (UIRecentsInputViewControllerDelegate)recentInputDelegate;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_delete:(id)a3;
- (void)_overrideTraitCollectionForHeaderViewController;
- (void)didSelectButtonAtIndexPath:(id)a3;
- (void)ensureConstraints;
- (void)scrollViewDidChangeContentSize:(id)a3;
- (void)setRecentInputs:(id)a3;
- (void)updateTableViewWidth;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIRecentsInputViewController

- (void)didSelectButtonAtIndexPath:(id)a3
{
  v11 = a3;
  v4 = +[UIKeyboardImpl sharedInstance];
  if ([v11 section])
  {
    if (-[UIRecentsInputViewController canManageList](self, "canManageList") && ![v11 row])
    {
      [v4 clearRecentInput];
      [(UIRecentsInputViewController *)self setRecentInputs:0];
    }

    if (-[UIRecentsInputViewController canManageList](self, "canManageList") && [v11 row] == 1 || !-[UIRecentsInputViewController canManageList](self, "canManageList") && !objc_msgSend(v11, "row"))
    {
      v5 = +[_UIStatistics recentsInputViewNewEntryCount];
      [v5 incrementValueBy:1];
    }

    v6 = [(UIRecentsInputViewController *)self recentInputDelegate];
    [v6 switchToKeyboard];
  }

  else
  {
    v7 = [(UILexicon *)self->_recentInputs entries];
    v8 = [v7 objectAtIndex:{objc_msgSend(v11, "row")}];
    v6 = [v8 userInput];

    [v4 handleClearWithInsertBeforeAdvance:v6];
    v9 = [(UIRecentsInputViewController *)self recentInputDelegate];
    [v9 didSelectRecentInput];

    v10 = +[_UIStatistics recentsInputViewItemSelectedCount];
    [v10 incrementValueBy:1];
  }
}

- (void)ensureConstraints
{
  v14 = [MEMORY[0x1E695DF70] array];
  v3 = [(UIRecentsInputViewController *)self widthConstraint];

  if (!v3)
  {
    v4 = MEMORY[0x1E69977A0];
    v5 = [(UITableViewController *)self tableView];
    v6 = [v4 constraintWithItem:v5 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    [(UIRecentsInputViewController *)self setWidthConstraint:v6];

    v7 = [(UIRecentsInputViewController *)self widthConstraint];
    [v14 addObject:v7];
  }

  v8 = [(UIRecentsInputViewController *)self heightConstraint];

  if (!v8)
  {
    v9 = MEMORY[0x1E69977A0];
    v10 = [(UITableViewController *)self tableView];
    v11 = [v9 constraintWithItem:v10 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    [(UIRecentsInputViewController *)self setHeightConstraint:v11];

    v12 = [(UIRecentsInputViewController *)self heightConstraint];
    [v14 addObject:v12];
  }

  v13 = [(UITableViewController *)self tableView];
  [v13 addConstraints:v14];
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
  v5 = [(UILexicon *)self->_recentInputs entries];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__UIRecentsInputViewController_updateTableViewWidth__block_invoke;
  v25[3] = &unk_1E710E680;
  v6 = v4;
  v26 = v6;
  v27 = &v28;
  [v5 enumerateObjectsUsingBlock:v25];

  v7 = [(UIRecentsInputViewController *)self previouslyUsedString];
  [v7 sizeWithAttributes:v6];
  v9 = v8;

  if (v9 > v29[3])
  {
    v29[3] = v9;
  }

  v10 = [(UIRecentsInputViewController *)self clearAllString];
  [v10 sizeWithAttributes:v6];
  v12 = v11;

  if (v12 > v29[3])
  {
    v29[3] = v12;
  }

  v13 = [(UIRecentsInputViewController *)self enterNewString];
  [v13 sizeWithAttributes:v6];
  v15 = v14;

  v16 = v29;
  v17 = v29[3];
  if (v15 > v17)
  {
    v29[3] = v15;
    v17 = v15;
  }

  v16[3] = v17 + 80.0;
  v18 = [(UITableViewController *)self tableView];
  [v18 layoutMargins];
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
  v24 = [(UIRecentsInputViewController *)self widthConstraint];
  [v24 setConstant:v23];

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

- (void)setRecentInputs:(id)a3
{
  v11 = a3;
  objc_storeStrong(&self->_recentInputs, a3);
  v5 = +[_UIStatistics recentsInputViewNumberOfItems];
  v6 = [(UILexicon *)self->_recentInputs entries];
  [v5 recordDistributionValue:{objc_msgSend(v6, "count")}];

  [(UIRecentsInputViewController *)self updateTableViewWidth];
  v7 = [(UITableViewController *)self tableView];
  [v7 reloadData];

  v8 = [v11 entries];
  v9 = [v8 count];

  if (!v9)
  {
    v10 = [(UIRecentsInputViewController *)self recentInputDelegate];
    [v10 switchToKeyboard];
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
    v3 = [(UIRecentsInputViewController *)self clearAllString];

    if (!v3)
    {
      v4 = _UINSLocalizedStringWithDefaultValue(@"Clear All", @"Clear All");
      [(UIRecentsInputViewController *)self setClearAllString:v4];
    }
  }

  v5 = [(UIRecentsInputViewController *)self enterNewString];

  if (!v5)
  {
    v6 = _UINSLocalizedStringWithDefaultValue(@"Enter New…", @"Enter New…");
    [(UIRecentsInputViewController *)self setEnterNewString:v6];
  }

  v7 = [(UIRecentsInputViewController *)self previouslyUsedString];

  if (!v7)
  {
    v8 = _UINSLocalizedStringWithDefaultValue(@"Previously-Used Emails", @"Previously-Used Emails");
    [(UIRecentsInputViewController *)self setPreviouslyUsedString:v8];
  }

  v9 = [(UITableViewController *)self tableView];
  [v9 setMaskView:0];

  v10 = [(UITableViewController *)self tableView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(UITableViewController *)self tableView];
  [v11 registerClass:objc_opt_class() forCellReuseIdentifier:@"recentInputCell"];

  v12 = [(UIRecentsInputViewController *)self customHeaderView];

  if (v12)
  {
    v13 = [(UIRecentsInputViewController *)self customHeaderView];
    [(UIRecentsInputViewController *)self setHeaderView:v13];
  }

  else
  {
    v14 = objc_alloc_init(_UIRecentsAccessoryDefaultView);
    [(UIRecentsInputViewController *)self setHeaderView:v14];

    v15 = [(UIRecentsInputViewController *)self previouslyUsedString];
    v16 = [(UIRecentsInputViewController *)self headerView];
    v17 = [v16 titleLabel];
    [v17 setText:v15];

    v13 = [(UIRecentsInputViewController *)self headerView];
    [v13 intrinsicContentSize];
    v19 = v18;
    v20 = [(UIRecentsInputViewController *)self headerView];
    [v20 intrinsicContentSize];
    v22 = v21;
    v23 = [(UIRecentsInputViewController *)self headerView];
    [v23 setFrame:{0.0, 0.0, v19, v22}];
  }

  v24 = [(UIRecentsInputViewController *)self headerView];
  [v24 frame];
  v26 = v25;
  v28 = v27;

  v29 = [[UIView alloc] initWithFrame:0.0, 0.0, v26, v28];
  [(UIRecentsInputViewController *)self setHeaderContainerView:v29];

  v30 = [(UIRecentsInputViewController *)self headerContainerView];
  [v30 setClipsToBounds:0];

  v31 = objc_alloc_init(UIViewController);
  v32 = [(UIRecentsInputViewController *)self headerContainerView];
  [(UIViewController *)v31 setView:v32];

  [(UIRecentsInputViewController *)self setHeaderContainerViewController:v31];
  v33 = [(UIRecentsInputViewController *)self headerContainerViewController];
  [(UIViewController *)self addChildViewController:v33];

  v34 = [(UIRecentsInputViewController *)self headerContainerViewController];
  v35 = [v34 view];
  v36 = [(UITableViewController *)self tableView];
  [v36 setTableHeaderView:v35];

  v37 = [(UIRecentsInputViewController *)self headerContainerViewController];
  [v37 didMoveToParentViewController:self];

  v38 = [(UIRecentsInputViewController *)self headerView];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = [(UIRecentsInputViewController *)self headerContainerView];
  v40 = [(UIRecentsInputViewController *)self headerView];
  [v39 addSubview:v40];

  v41 = MEMORY[0x1E69977A0];
  v42 = [(UIRecentsInputViewController *)self headerView];
  v43 = [(UIRecentsInputViewController *)self headerContainerView];
  v44 = [v41 constraintWithItem:v42 attribute:9 relatedBy:0 toItem:v43 attribute:9 multiplier:1.0 constant:0.0];

  v45 = MEMORY[0x1E69977A0];
  v46 = [(UIRecentsInputViewController *)self headerView];
  v47 = [(UIRecentsInputViewController *)self headerContainerView];
  v48 = [v45 constraintWithItem:v46 attribute:4 relatedBy:0 toItem:v47 attribute:4 multiplier:1.0 constant:0.0];

  v49 = MEMORY[0x1E69977A0];
  v50 = [(UIRecentsInputViewController *)self headerView];
  v51 = [v49 constraintWithItem:v50 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v26];

  v52 = MEMORY[0x1E69977A0];
  v53 = [(UIRecentsInputViewController *)self headerView];
  v54 = [v52 constraintWithItem:v53 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v28];

  v55 = MEMORY[0x1E69977A0];
  v58[0] = v44;
  v58[1] = v48;
  v58[2] = v51;
  v58[3] = v54;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:4];
  [v55 activateConstraints:v56];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(UIRecentsInputViewController *)self _overrideTraitCollectionForHeaderViewController];
  v5.receiver = self;
  v5.super_class = UIRecentsInputViewController;
  [(UITableViewController *)&v5 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIRecentsInputViewController;
  [(UITableViewController *)&v4 viewDidAppear:a3];
  v3 = +[_UIStatistics recentsInputViewPresentationCount];
  [v3 incrementValueBy:1];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
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

  else if (a4)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(UIRecentsInputViewController *)self recentInputs];
    v8 = [v7 entries];
    v9 = [v8 count];
  }

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"recentInputCell" forIndexPath:v6];
  [v7 setFocusStyle:1];
  v8 = [(UIRecentsInputViewController *)self recentInputDelegate];
  v9 = [v8 textInputTraits];
  [v7 setTextInputTraits:v9];

  if ([v6 section])
  {
    if ([v6 section] != 1)
    {
      goto LABEL_16;
    }

    v10 = [(UIRecentsInputViewController *)self canManageList];
    v11 = [v6 row];
    if (v10)
    {
      if (!v11)
      {
        v17 = [(UIRecentsInputViewController *)self clearAllString];
LABEL_14:
        v15 = v17;
        if (!v17)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if ([v6 row] != 1)
      {
        goto LABEL_16;
      }
    }

    else if (v11)
    {
      goto LABEL_16;
    }

    v17 = [(UIRecentsInputViewController *)self enterNewString];
    goto LABEL_14;
  }

  v12 = [(UIRecentsInputViewController *)self recentInputs];
  v13 = [v12 entries];
  v14 = [v13 objectAtIndex:{objc_msgSend(v6, "row")}];
  v15 = [v14 userInput];

  if ([(UIRecentsInputViewController *)self canManageList])
  {
    v16 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__delete_];
    [(UILongPressGestureRecognizer *)v16 setMinimumPressDuration:2.0];
    [v7 addGestureRecognizer:v16];
  }

  if (v15)
  {
LABEL_15:
    [v7 setInputText:v15 withBlurStyle:{-[UIRecentsInputViewController containingEffectStyle](self, "containingEffectStyle")}];
  }

LABEL_16:

  return v7;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = 22.0;
  if (!a4)
  {
    return 16.0;
  }

  return result;
}

- (void)scrollViewDidChangeContentSize:(id)a3
{
  v4 = a3;
  v5 = [v4 window];
  [v5 bounds];
  v7 = v6;

  [v4 contentSize];
  v9 = v8;

  if (v9 <= v7)
  {
    v7 = v9;
  }

  v10 = [(UIRecentsInputViewController *)self heightConstraint];
  [v10 setConstant:v7];
}

- (void)_delete:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [v4 view];
    v6 = [v5 floatingLabel];
    v7 = [v6 text];

    v8 = [UIAlertController alertControllerWithTitle:v7 message:0 preferredStyle:0];
    objc_initWeak(&location, self);
    v9 = _UINSLocalizedStringWithDefaultValue(@"Delete", @"Delete");
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__UIRecentsInputViewController__delete___block_invoke;
    v14[3] = &unk_1E710E6D0;
    objc_copyWeak(&v16, &location);
    v10 = v7;
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
  v3 = [(UIRecentsInputViewController *)self recentInputDelegate];
  v4 = [v3 textInputTraits];
  v5 = [v4 keyboardAppearance];

  v6 = 2;
  if (v5 != 1 && v5 != 9)
  {
    if (v5 != 2)
    {
      return;
    }

    v6 = 1;
  }

  v8 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v6];
  v7 = [(UIRecentsInputViewController *)self headerContainerViewController];
  [(UIViewController *)self setOverrideTraitCollection:v8 forChildViewController:v7];
}

- (UIRecentsInputViewControllerDelegate)recentInputDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_recentInputDelegate);

  return WeakRetained;
}

@end