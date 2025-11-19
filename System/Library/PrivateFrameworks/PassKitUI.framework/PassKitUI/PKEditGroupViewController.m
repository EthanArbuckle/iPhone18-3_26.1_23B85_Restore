@interface PKEditGroupViewController
- (PKEditGroupViewController)initWithGroup:(id)a3 existingGroupsController:(id)a4 style:(int64_t)a5 placeholders:(id)a6 isForWatch:(BOOL)a7 delegate:(id)a8;
- (id)passAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)viewControllerForRowAtIndexPath:(id)a3;
- (void)_deleteAllPassesInGroup;
- (void)_deleteButtonPressed;
- (void)_presentAlertForUpdatedExpressPass:(id)a3;
- (void)configureCell:(id)a3 atIndexPath:(id)a4 withPass:(id)a5;
- (void)dealloc;
- (void)group:(id)a3 didInsertPass:(id)a4 withState:(id)a5 atIndex:(unint64_t)a6;
- (void)group:(id)a3 didMovePassFromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
- (void)group:(id)a3 didRemovePass:(id)a4 atIndex:(unint64_t)a5;
- (void)group:(id)a3 didUpdatePass:(id)a4 withState:(id)a5 atIndex:(unint64_t)a6;
- (void)prefetchItemsAtIndexPaths:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKEditGroupViewController

- (PKEditGroupViewController)initWithGroup:(id)a3 existingGroupsController:(id)a4 style:(int64_t)a5 placeholders:(id)a6 isForWatch:(BOOL)a7 delegate:(id)a8
{
  v9 = a7;
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = PKEditGroupViewController;
  v19 = [(PKEditTableViewController *)&v25 initWithStyle:0 placeholders:v17 isForWatch:v9];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_group, a3);
    v20->_isForWatch = v9;
    [(PKEditTableViewController *)v20 setExistingGroupsController:v16];
    [(PKEditTableViewController *)v20 setPlaceholders:v17];
    [(PKGroup *)v20->_group addGroupObserver:v20];
    viewingPass = v20->_viewingPass;
    v20->_viewingPass = 0;

    +[PKEditPassesTableViewCell imageSizeNeeded];
    v20->_imageSizeNeeded.width = v22;
    v20->_imageSizeNeeded.height = v23;
    v20->_editStyle = a5;
    objc_storeWeak(&v20->_delegate, v18);
  }

  return v20;
}

- (void)dealloc
{
  [(PKGroup *)self->_group removeGroupObserver:self];
  [(PKEditGroupViewController *)self setToolbarItems:0];
  v3.receiver = self;
  v3.super_class = PKEditGroupViewController;
  [(PKEditGroupViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v30.receiver = self;
  v30.super_class = PKEditGroupViewController;
  [(PKEditTableViewController *)&v30 viewDidLoad];
  v3 = [(PKEditGroupViewController *)self tableView];
  tableView = self->_tableView;
  self->_tableView = v3;

  v5 = self->_tableView;
  +[PKEditPassesTableViewCell separatorInset];
  [(UITableView *)v5 setSeparatorInset:?];
  v6 = [(PKGroup *)self->_group passes];
  v7 = [v6 count];
  v8 = [(PKEditTableViewController *)self visibleRowsCount];
  v24 = v8;
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  if (v9)
  {
    v10 = 0;
    do
    {
      v11 = [v6 objectAtIndex:v10];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __40__PKEditGroupViewController_viewDidLoad__block_invoke;
      v25[3] = &unk_1E801AB80;
      v25[5] = v9;
      v25[6] = v10;
      v25[4] = &v26;
      [(PKEditTableViewController *)self imageForPass:v11 stacked:0 synchronously:1 placeholder:0 completion:v25];
      v12 = *(v27 + 24);

      if (v12)
      {
        break;
      }
    }

    while (v9 - 1 != v10++);
  }

  if (v24 < v7)
  {
    if (6 * v24 >= v7 - 1)
    {
      v14 = v7 - 1;
    }

    else
    {
      v14 = 6 * v24;
    }

    while (v14 > v9)
    {
      v15 = [v6 objectAtIndex:v14];
      [(PKEditTableViewController *)self preemptivelyCacheImagesForPass:v15 stacked:0];

      --v14;
    }
  }

  if (!self->_editStyle)
  {
    v16 = objc_alloc(MEMORY[0x1E69DC708]);
    v17 = PKLocalizedString(&cfstr_PassEditingDel_1.isa);
    v18 = [v16 initWithTitle:v17 style:0 target:self action:sel__deleteButtonPressed];
    deleteToolbarItem = self->_deleteToolbarItem;
    self->_deleteToolbarItem = v18;

    v20 = self->_deleteToolbarItem;
    v21 = [MEMORY[0x1E69DC888] redColor];
    [(UIBarButtonItem *)v20 setTintColor:v21];

    v22 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    flexibleSpace = self->_flexibleSpace;
    self->_flexibleSpace = v22;
  }

  _Block_object_dispose(&v26, 8);
}

void *__40__PKEditGroupViewController_viewDidLoad__block_invoke(void *result, double a2)
{
  if ((result[5] - result[6]) * a2 > 0.3)
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKEditGroupViewController;
  [(PKEditGroupViewController *)&v10 viewWillAppear:a3];
  v4 = [(PKEditGroupViewController *)self navigationController];
  if (self->_editStyle == 1)
  {
    v5 = PKLocalizedString(&cfstr_PassGroupEditi.isa);
    [(PKEditGroupViewController *)self setTitle:v5];
  }

  else
  {
    v5 = [(PKEditTableViewController *)self mostRecentPassInGroup:self->_group];
    v6 = [v5 localizedDescription];
    [(PKEditGroupViewController *)self setTitle:v6];
  }

  viewingPass = self->_viewingPass;
  self->_viewingPass = 0;

  if (!self->_editStyle)
  {
    deleteToolbarItem = self->_deleteToolbarItem;
    v11[0] = self->_flexibleSpace;
    v11[1] = deleteToolbarItem;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(PKEditGroupViewController *)self setToolbarItems:v9];

    [v4 setToolbarHidden:0 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKEditGroupViewController;
  [(PKEditGroupViewController *)&v5 viewDidAppear:a3];
  if (([(PKEditTableViewController *)self performanceTest]| 2) == 3)
  {
    if ([(PKGroup *)self->_group passCount])
    {
      v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      [(PKEditGroupViewController *)self tableView:self->_tableView didSelectRowAtIndexPath:v4];
    }
  }
}

- (void)_deleteButtonPressed
{
  v3 = PKLocalizedString(&cfstr_RemoveSheetCan.isa);
  v4 = PKLocalizedString(&cfstr_PassEditingDel_2.isa, &cfstr_Lu.isa, [(PKGroup *)self->_group passCount]);
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v6 = [v5 popoverPresentationController];
  [v6 setSourceItem:self->_deleteToolbarItem];

  v7 = [MEMORY[0x1E69DC648] actionWithTitle:v3 style:1 handler:0];
  [v5 addAction:v7];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PKEditGroupViewController__deleteButtonPressed__block_invoke;
  v9[3] = &unk_1E80112E8;
  v9[4] = self;
  v8 = [MEMORY[0x1E69DC648] actionWithTitle:v4 style:2 handler:v9];
  [v5 addAction:v8];

  [(PKEditGroupViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_deleteAllPassesInGroup
{
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9E90], 0);
  [(UITableView *)self->_tableView setAllowsSelection:0];
  [(UITableView *)self->_tableView setAllowsSelectionDuringEditing:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 groupViewController:self isDeletingGroup:self->_group];
    }
  }

  deleteToolbarItem = self->_deleteToolbarItem;
  v9 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIBarButtonItem *)deleteToolbarItem setTintColor:v9];

  [(UIBarButtonItem *)self->_deleteToolbarItem setEnabled:0];
  if (self->_isForWatch)
  {
    [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
  }

  else
  {
    [MEMORY[0x1E69B8A58] sharedInstance];
  }
  v11 = ;
  v10 = [(PKGroup *)self->_group passes];
  [v11 removePasses:v10];
}

- (void)group:(id)a3 didUpdatePass:(id)a4 withState:(id)a5 atIndex:(unint64_t)a6
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(PKEditTableViewController *)self clearImageCacheForPass:a4];
  tableView = self->_tableView;
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:a6 inSection:0];
  v11[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(UITableView *)tableView reloadRowsAtIndexPaths:v10 withRowAnimation:0];
}

- (void)group:(id)a3 didInsertPass:(id)a4 withState:(id)a5 atIndex:(unint64_t)a6
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(UITableView *)self->_tableView beginUpdates:a3];
  tableView = self->_tableView;
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:a6 inSection:0];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(UITableView *)tableView insertRowsAtIndexPaths:v10 withRowAnimation:2];

  [(UITableView *)self->_tableView endUpdates];
  if (!a6 && self->_editStyle == 1)
  {
    v11 = [(PKGroup *)self->_group passAtIndex:0];
    [(PKEditGroupViewController *)self _presentAlertForUpdatedExpressPass:v11];
  }
}

- (void)group:(id)a3 didRemovePass:(id)a4 atIndex:(unint64_t)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  [(PKEditTableViewController *)self clearImageCacheForPass:v7];
  [(UITableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:a5 inSection:0];
  v19[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [(UITableView *)tableView deleteRowsAtIndexPaths:v10 withRowAnimation:2];

  [(UITableView *)self->_tableView endUpdates];
  if (!a5)
  {
    v11 = [(PKGroup *)self->_group passAtIndex:0];
    if (v11)
    {
      [(PKEditGroupViewController *)self _presentAlertForUpdatedExpressPass:v11];
    }
  }

  v12 = [v7 uniqueID];
  v13 = [(PKPass *)self->_viewingPass uniqueID];
  v14 = [v12 isEqualToString:v13];

  if (v14)
  {
    [MEMORY[0x1E6979518] begin];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__PKEditGroupViewController_group_didRemovePass_atIndex___block_invoke;
    v18[3] = &unk_1E8010970;
    v18[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v18];
    v15 = [(PKEditGroupViewController *)self navigationController];
    v16 = [v15 popToViewController:self animated:1];

    [MEMORY[0x1E6979518] commit];
  }

  if ([(PKGroup *)self->_group passCount]== 1 && self->_editStyle == 1)
  {
    v17 = [(PKEditGroupViewController *)self navigationController];
    [v17 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t __57__PKEditGroupViewController_group_didRemovePass_atIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) performanceTest];
  if (result == 3)
  {
    v3 = *(a1 + 32);

    return [v3 passedTest];
  }

  return result;
}

- (void)group:(id)a3 didMovePassFromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  if (a4 != a5)
  {
    [(UITableView *)self->_tableView beginUpdates];
    tableView = self->_tableView;
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:a4 inSection:0];
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:a5 inSection:0];
    [(UITableView *)tableView moveRowAtIndexPath:v10 toIndexPath:v11];

    v12 = self->_tableView;

    [(UITableView *)v12 endUpdates];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKEditTableViewController *)self tableView:a3 cellWithIdentifier:@"cellPassEditIdentifier"];
  v8 = -[PKGroup passAtIndex:](self->_group, "passAtIndex:", [v6 row]);
  [(PKEditGroupViewController *)self configureCell:v7 atIndexPath:v6 withPass:v8];

  return v7;
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4 withPass:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setPass:v8];
    [(PKEditTableViewController *)self loadContentAndImageSetFromExistingPassForPass:v8];
    editStyle = self->_editStyle;
    v10 = [v7 textLabel];
    if (editStyle == 1)
    {
      v11 = [v8 fieldForKey:*MEMORY[0x1E69BC0D0]];
      v12 = [v11 value];
      [v10 setText:v12];

      v13 = [v7 detailTextLabel];
      v14 = [v8 localizedDescription];
      [v13 setText:v14];

      [v7 setShowsReorderControl:1];
      [v7 setAccessoryType:0];
      [v7 setEditingAccessoryType:0];
    }

    else
    {
      v15 = [v8 localizedDescription];
      [v10 setText:v15];

      v16 = [v8 ingestedDate];
      v17 = PKRelativeDateStringWithFullDateForUnits();
      v18 = PKLocalizedString(&cfstr_PassEditingAdd.isa, &cfstr_Lu_0.isa, 1, v17);

      v19 = [v7 detailTextLabel];
      v20 = [v18 pk_uppercaseFirstStringForPreferredLocale];
      [v19 setText:v20];

      [v7 setShowsReorderControl:0];
      [v7 setAccessoryType:1];
      [v7 setEditingAccessoryType:1];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64__PKEditGroupViewController_configureCell_atIndexPath_withPass___block_invoke;
    v24[3] = &unk_1E8010AB0;
    v25 = v7;
    v26 = v8;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__PKEditGroupViewController_configureCell_atIndexPath_withPass___block_invoke_2;
    v21[3] = &unk_1E801ABA8;
    v22 = v25;
    v23 = v26;
    [(PKEditTableViewController *)self imageForPass:v23 stacked:0 synchronously:0 placeholder:v24 completion:v21];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if (self->_editStyle == 1)
  {
    v7 = a4;
    [a3 deselectRowAtIndexPath:v7 animated:1];
    v11 = [(PKEditGroupViewController *)self viewControllerForRowAtIndexPath:v7];

    if (!self->_viewingPass)
    {
      v8 = [v11 pass];
      viewingPass = self->_viewingPass;
      self->_viewingPass = v8;

      v10 = [(PKEditGroupViewController *)self navigationController];
      [v10 pushViewController:v11 animated:1];
    }
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v6 = *MEMORY[0x1E69B9EA8];
  v7 = a5;
  MEMORY[0x1BFB41980](v6, 0);
  v8 = [v7 row];

  v13 = [(PKGroup *)self->_group passAtIndex:v8];
  if (self->_isForWatch)
  {
    v9 = [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
    v10 = [v9 _remoteLibrary];
    [v10 removePass:v13];
  }

  else
  {
    v9 = [MEMORY[0x1E69B8A58] sharedInstance];
    [v9 removePass:v13];
  }

  v11 = [(PKEditTableViewController *)self existingGroupsController];
  v12 = [v13 uniqueID];
  [v11 handleUserPassDelete:v12];
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(PKEditGroupViewController *)self passAtIndexPath:v11];
  v9 = [(PKEditTableViewController *)self existingGroupsController];
  [v9 suppressRemoteUpdates:1];
  [v9 movePass:v8 inGroup:self->_group toIndex:{objc_msgSend(v7, "row")}];
  [v9 enableRemoteUpdates];
  if (v11 != v7 && (![v7 row] && self->_editStyle == 1 || !objc_msgSend(v11, "row") && self->_editStyle == 1))
  {
    v10 = [(PKGroup *)self->_group passAtIndex:0];
    [(PKEditGroupViewController *)self _presentAlertForUpdatedExpressPass:v10];
  }
}

- (void)_presentAlertForUpdatedExpressPass:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DF90];
    v4 = a3;
    v12 = objc_alloc_init(v3);
    v5 = MEMORY[0x1E695E118];
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
    [v12 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
    v6 = [v4 fieldForKey:*MEMORY[0x1E69BC0D0]];

    v7 = [v6 value];
    v8 = PKLocalizedShareableCredentialString(&cfstr_SelectExpressP_3.isa, &stru_1F3BD5BF0.isa, v7);
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x1E695EE58]];

    if (PKPearlIsAvailable())
    {
      v9 = @"SELECT_EXPRESS_PASS_DESCRIPTION_FACE_ID";
    }

    else
    {
      v9 = @"SELECT_EXPRESS_PASS_DESCRIPTION_TOUCH_ID";
    }

    v10 = PKLocalizedShareableCredentialString(&v9->isa);
    [v12 setObject:v10 forKeyedSubscript:*MEMORY[0x1E695EE60]];

    v11 = PKLocalizedShareableCredentialString(&cfstr_SelectExpressP_4.isa);
    [v12 setObject:v11 forKeyedSubscript:*MEMORY[0x1E695EE78]];

    [MEMORY[0x1E69B9320] presentNotificationWithParameters:v12 responseHandler:&__block_literal_global_126];
  }
}

- (id)viewControllerForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_editStyle != 1)
  {
    v7 = -[PKGroup passAtIndex:](self->_group, "passAtIndex:", [v4 row]);
    v6 = [[PKEditSinglePassViewController alloc] initWithGroup:self->_group pass:v7];
    v8 = [(PKEditTableViewController *)self performanceTest];
    if (v8)
    {
      [(PKEditSinglePassViewController *)v6 setPerformanceTest:v8];
      v9 = [(PKEditTableViewController *)self performanceTestName];
      [(PKEditSinglePassViewController *)v6 setPerformanceTestName:v9];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)passAtIndexPath:(id)a3
{
  group = self->_group;
  v4 = [a3 row];

  return [(PKGroup *)group passAtIndex:v4];
}

- (void)prefetchItemsAtIndexPaths:(id)a3
{
  v10 = a3;
  v4 = [(PKGroup *)self->_group passes];
  v5 = [v10 count];
  if (v5 - 1 >= 0)
  {
    v6 = v5;
    do
    {
      v7 = [v10 objectAtIndex:--v6];
      v8 = [v7 row];
      if ([v4 count] > v8)
      {
        v9 = -[PKGroup passAtIndex:](self->_group, "passAtIndex:", [v7 row]);
        [(PKEditTableViewController *)self loadContentAndImageSetFromExistingPassForPass:v9];
        [(PKEditTableViewController *)self preemptivelyCacheImagesForPass:v9 stacked:0];
      }
    }

    while (v6 > 0);
  }
}

@end