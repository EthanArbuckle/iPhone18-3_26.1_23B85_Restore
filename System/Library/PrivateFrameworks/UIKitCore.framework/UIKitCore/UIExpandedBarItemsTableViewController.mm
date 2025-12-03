@interface UIExpandedBarItemsTableViewController
- (CGSize)preferredContentSize;
- (UIExpandedBarItemsTableViewController)initWithBarButtonGroup:(id)group;
- (id)_displayTitleForBarButtonItem:(id)item;
- (id)_visibleItems;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (unint64_t)_numberOfItems;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIExpandedBarItemsTableViewController

- (UIExpandedBarItemsTableViewController)initWithBarButtonGroup:(id)group
{
  groupCopy = group;
  v9.receiver = self;
  v9.super_class = UIExpandedBarItemsTableViewController;
  v6 = [(UITableViewController *)&v9 initWithStyle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_barButtonGroup, group);
  }

  return v7;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = UIExpandedBarItemsTableViewController;
  [(UIViewController *)&v5 viewDidLoad];
  tableView = [(UITableViewController *)self tableView];
  [tableView setAlwaysBounceVertical:0];

  tableView2 = [(UITableViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"baritemcell"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = UIExpandedBarItemsTableViewController;
  [(UITableViewController *)&v5 viewWillAppear:appear];
  barButtonGroup = [(UIExpandedBarItemsTableViewController *)self barButtonGroup];
  [barButtonGroup _validateAllItems];
}

- (id)_visibleItems
{
  barButtonItems = [(UIBarButtonItemGroup *)self->_barButtonGroup barButtonItems];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"hidden == NO"];
  v4 = [barButtonItems filteredArrayUsingPredicate:v3];

  return v4;
}

- (unint64_t)_numberOfItems
{
  _visibleItems = [(UIExpandedBarItemsTableViewController *)self _visibleItems];
  v3 = [_visibleItems count];

  return v3;
}

- (id)_displayTitleForBarButtonItem:(id)item
{
  itemCopy = item;
  title = [itemCopy title];

  if (title)
  {
    title2 = [itemCopy title];
LABEL_3:
    v6 = title2;
    goto LABEL_7;
  }

  possibleTitles = [itemCopy possibleTitles];
  v8 = [possibleTitles count];

  if (v8)
  {
    possibleTitles2 = [itemCopy possibleTitles];
    anyObject = [possibleTitles2 anyObject];
LABEL_6:
    v6 = anyObject;

    goto LABEL_7;
  }

  accessibilityLabel = [itemCopy accessibilityLabel];

  if (accessibilityLabel)
  {
    title2 = [itemCopy accessibilityLabel];
    goto LABEL_3;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v13 = MEMORY[0x1E696AEC0];
    possibleTitles2 = NSStringFromSelector([itemCopy action]);
    anyObject = [v13 stringWithFormat:@"NEEDS TITLE: %@", possibleTitles2];
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
  barButtonItems = [(UIBarButtonItemGroup *)self->_barButtonGroup barButtonItems];
  v5 = [barButtonItems countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(barButtonItems);
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

      v6 = [barButtonItems countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  else
  {
    v9 = 180.0;
  }

  v15 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  keyboardWindow = [v15 keyboardWindow];

  if (keyboardWindow)
  {
    [keyboardWindow bounds];
    if (v9 > v17)
    {
      [keyboardWindow bounds];
      v9 = v18;
    }
  }

  _numberOfItems = [(UIExpandedBarItemsTableViewController *)self _numberOfItems];

  v20 = _numberOfItems * 55.0;
  v21 = v9;
  result.height = v20;
  result.width = v21;
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"baritemcell" forIndexPath:pathCopy];
  _visibleItems = [(UIExpandedBarItemsTableViewController *)self _visibleItems];
  v9 = [pathCopy row];

  v10 = [_visibleItems objectAtIndex:v9];

  v11 = [(UIExpandedBarItemsTableViewController *)self _displayTitleForBarButtonItem:v10];
  textLabel = [v7 textLabel];
  [textLabel setText:v11];

  image = [v10 image];
  imageView = [v7 imageView];
  [imageView setImage:image];

  isEnabled = [v10 isEnabled];
  if (isEnabled)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  if (isEnabled)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.25;
  }

  [v7 setSelectionStyle:v16];
  contentView = [v7 contentView];
  [contentView setAlpha:v17];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  _visibleItems = [(UIExpandedBarItemsTableViewController *)self _visibleItems];
  v7 = [pathCopy row];

  v8 = [_visibleItems objectAtIndex:v7];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __75__UIExpandedBarItemsTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v17 = &unk_1E70F35B8;
  v9 = v8;
  v18 = v9;
  selfCopy = self;
  v10 = _Block_copy(&v14);
  buttonGroup = [v9 buttonGroup];
  _sendActionsBeforeDismiss = [buttonGroup _sendActionsBeforeDismiss];

  v13 = v10;
  if (_sendActionsBeforeDismiss)
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