@interface UIExpandedBarItemsTableViewController
- (CGSize)preferredContentSize;
- (UIExpandedBarItemsTableViewController)initWithBarButtonGroup:(id)a3;
- (id)_displayTitleForBarButtonItem:(id)a3;
- (id)_visibleItems;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (unint64_t)_numberOfItems;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation UIExpandedBarItemsTableViewController

- (UIExpandedBarItemsTableViewController)initWithBarButtonGroup:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIExpandedBarItemsTableViewController;
  v6 = [(UITableViewController *)&v9 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barButtonGroup, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = UIExpandedBarItemsTableViewController;
  [(UIViewController *)&v5 viewDidLoad];
  v3 = [(UITableViewController *)self tableView];
  [v3 setAlwaysBounceVertical:0];

  v4 = [(UITableViewController *)self tableView];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"baritemcell"];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UIExpandedBarItemsTableViewController;
  [(UITableViewController *)&v5 viewWillAppear:a3];
  v4 = [(UIExpandedBarItemsTableViewController *)self barButtonGroup];
  [v4 _validateAllItems];
}

- (id)_visibleItems
{
  v2 = [(UIBarButtonItemGroup *)self->_barButtonGroup barButtonItems];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"hidden == NO"];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (unint64_t)_numberOfItems
{
  v2 = [(UIExpandedBarItemsTableViewController *)self _visibleItems];
  v3 = [v2 count];

  return v3;
}

- (id)_displayTitleForBarButtonItem:(id)a3
{
  v3 = a3;
  v4 = [v3 title];

  if (v4)
  {
    v5 = [v3 title];
LABEL_3:
    v6 = v5;
    goto LABEL_7;
  }

  v7 = [v3 possibleTitles];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v3 possibleTitles];
    v10 = [v9 anyObject];
LABEL_6:
    v6 = v10;

    goto LABEL_7;
  }

  v12 = [v3 accessibilityLabel];

  if (v12)
  {
    v5 = [v3 accessibilityLabel];
    goto LABEL_3;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v13 = MEMORY[0x1E696AEC0];
    v9 = NSStringFromSelector([v3 action]);
    v10 = [v13 stringWithFormat:@"NEEDS TITLE: %@", v9];
    goto LABEL_6;
  }

  v6 = &stru_1EFB14550;
LABEL_7:

  return v6;
}

- (CGSize)preferredContentSize
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = +[UILabel defaultFont];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(UIBarButtonItemGroup *)self->_barButtonGroup barButtonItems];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = *off_1E70EC918;
    v9 = 180.0;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [(UIExpandedBarItemsTableViewController *)self _displayTitleForBarButtonItem:*(*(&v22 + 1) + 8 * i)];
        v26 = v8;
        v27 = v3;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v11 sizeWithAttributes:v12];
        v14 = v13;

        if (v14 + 45.0 + 20.0 > v9)
        {
          v9 = v14 + 45.0 + 20.0;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    v9 = 180.0;
  }

  v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v16 = [v15 keyboardWindow];

  if (v16)
  {
    [v16 bounds];
    if (v9 > v17)
    {
      [v16 bounds];
      v9 = v18;
    }
  }

  v19 = [(UIExpandedBarItemsTableViewController *)self _numberOfItems];

  v20 = v19 * 55.0;
  v21 = v9;
  result.height = v20;
  result.width = v21;
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"baritemcell" forIndexPath:v6];
  v8 = [(UIExpandedBarItemsTableViewController *)self _visibleItems];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [(UIExpandedBarItemsTableViewController *)self _displayTitleForBarButtonItem:v10];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  v13 = [v10 image];
  v14 = [v7 imageView];
  [v14 setImage:v13];

  v15 = [v10 isEnabled];
  if (v15)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.25;
  }

  [v7 setSelectionStyle:v16];
  v18 = [v7 contentView];
  [v18 setAlpha:v17];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UIExpandedBarItemsTableViewController *)self _visibleItems];
  v7 = [v5 row];

  v8 = [v6 objectAtIndex:v7];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __75__UIExpandedBarItemsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v17 = &unk_1E70F35B8;
  v9 = v8;
  v18 = v9;
  v19 = self;
  v10 = _Block_copy(&v14);
  v11 = [v9 buttonGroup];
  v12 = [v11 _sendActionsBeforeDismiss];

  v13 = v10;
  if (v12)
  {
    v10[2](v10);
    v13 = 0;
  }

  [(UIViewController *)self dismissViewControllerAnimated:1 completion:v13];
}

void __75__UIExpandedBarItemsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) action])
  {
    v2 = [*(a1 + 32) target];

    if (v2)
    {
      v3 = UIApp;
      v4 = [*(a1 + 32) action];
      v7 = [*(a1 + 32) target];
      v5 = [*(a1 + 40) barButtonGroup];
      v6 = [v5 representativeItem];
      [v3 sendAction:v4 to:v7 from:v6 forEvent:0];
    }
  }
}

@end