@interface PKEditGroupViewController
- (PKEditGroupViewController)initWithGroup:(id)group existingGroupsController:(id)controller style:(int64_t)style placeholders:(id)placeholders isForWatch:(BOOL)watch delegate:(id)delegate;
- (id)passAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)viewControllerForRowAtIndexPath:(id)path;
- (void)_deleteAllPassesInGroup;
- (void)_deleteButtonPressed;
- (void)_presentAlertForUpdatedExpressPass:(id)pass;
- (void)configureCell:(id)cell atIndexPath:(id)path withPass:(id)pass;
- (void)dealloc;
- (void)group:(id)group didInsertPass:(id)pass withState:(id)state atIndex:(unint64_t)index;
- (void)group:(id)group didMovePassFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)group:(id)group didRemovePass:(id)pass atIndex:(unint64_t)index;
- (void)group:(id)group didUpdatePass:(id)pass withState:(id)state atIndex:(unint64_t)index;
- (void)prefetchItemsAtIndexPaths:(id)paths;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKEditGroupViewController

- (PKEditGroupViewController)initWithGroup:(id)group existingGroupsController:(id)controller style:(int64_t)style placeholders:(id)placeholders isForWatch:(BOOL)watch delegate:(id)delegate
{
  watchCopy = watch;
  groupCopy = group;
  controllerCopy = controller;
  placeholdersCopy = placeholders;
  delegateCopy = delegate;
  v25.receiver = self;
  v25.super_class = PKEditGroupViewController;
  v19 = [(PKEditTableViewController *)&v25 initWithStyle:0 placeholders:placeholdersCopy isForWatch:watchCopy];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_group, group);
    v20->_isForWatch = watchCopy;
    [(PKEditTableViewController *)v20 setExistingGroupsController:controllerCopy];
    [(PKEditTableViewController *)v20 setPlaceholders:placeholdersCopy];
    [(PKGroup *)v20->_group addGroupObserver:v20];
    viewingPass = v20->_viewingPass;
    v20->_viewingPass = 0;

    +[PKEditPassesTableViewCell imageSizeNeeded];
    v20->_imageSizeNeeded.width = v22;
    v20->_imageSizeNeeded.height = v23;
    v20->_editStyle = style;
    objc_storeWeak(&v20->_delegate, delegateCopy);
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
  tableView = [(PKEditGroupViewController *)self tableView];
  tableView = self->_tableView;
  self->_tableView = tableView;

  v5 = self->_tableView;
  +[PKEditPassesTableViewCell separatorInset];
  [(UITableView *)v5 setSeparatorInset:?];
  passes = [(PKGroup *)self->_group passes];
  v7 = [passes count];
  visibleRowsCount = [(PKEditTableViewController *)self visibleRowsCount];
  v24 = visibleRowsCount;
  if (visibleRowsCount >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = visibleRowsCount;
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
      v11 = [passes objectAtIndex:v10];
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
      v15 = [passes objectAtIndex:v14];
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
    redColor = [MEMORY[0x1E69DC888] redColor];
    [(UIBarButtonItem *)v20 setTintColor:redColor];

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

- (void)viewWillAppear:(BOOL)appear
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKEditGroupViewController;
  [(PKEditGroupViewController *)&v10 viewWillAppear:appear];
  navigationController = [(PKEditGroupViewController *)self navigationController];
  if (self->_editStyle == 1)
  {
    v5 = PKLocalizedString(&cfstr_PassGroupEditi.isa);
    [(PKEditGroupViewController *)self setTitle:v5];
  }

  else
  {
    v5 = [(PKEditTableViewController *)self mostRecentPassInGroup:self->_group];
    localizedDescription = [v5 localizedDescription];
    [(PKEditGroupViewController *)self setTitle:localizedDescription];
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

    [navigationController setToolbarHidden:0 animated:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKEditGroupViewController;
  [(PKEditGroupViewController *)&v5 viewDidAppear:appear];
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
  popoverPresentationController = [v5 popoverPresentationController];
  [popoverPresentationController setSourceItem:self->_deleteToolbarItem];

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
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIBarButtonItem *)deleteToolbarItem setTintColor:tertiaryLabelColor];

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
  passes = [(PKGroup *)self->_group passes];
  [v11 removePasses:passes];
}

- (void)group:(id)group didUpdatePass:(id)pass withState:(id)state atIndex:(unint64_t)index
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(PKEditTableViewController *)self clearImageCacheForPass:pass];
  tableView = self->_tableView;
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  v11[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [(UITableView *)tableView reloadRowsAtIndexPaths:v10 withRowAnimation:0];
}

- (void)group:(id)group didInsertPass:(id)pass withState:(id)state atIndex:(unint64_t)index
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(UITableView *)self->_tableView beginUpdates:group];
  tableView = self->_tableView;
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  v12[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(UITableView *)tableView insertRowsAtIndexPaths:v10 withRowAnimation:2];

  [(UITableView *)self->_tableView endUpdates];
  if (!index && self->_editStyle == 1)
  {
    v11 = [(PKGroup *)self->_group passAtIndex:0];
    [(PKEditGroupViewController *)self _presentAlertForUpdatedExpressPass:v11];
  }
}

- (void)group:(id)group didRemovePass:(id)pass atIndex:(unint64_t)index
{
  v19[1] = *MEMORY[0x1E69E9840];
  passCopy = pass;
  [(PKEditTableViewController *)self clearImageCacheForPass:passCopy];
  [(UITableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  v19[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [(UITableView *)tableView deleteRowsAtIndexPaths:v10 withRowAnimation:2];

  [(UITableView *)self->_tableView endUpdates];
  if (!index)
  {
    v11 = [(PKGroup *)self->_group passAtIndex:0];
    if (v11)
    {
      [(PKEditGroupViewController *)self _presentAlertForUpdatedExpressPass:v11];
    }
  }

  uniqueID = [passCopy uniqueID];
  uniqueID2 = [(PKPass *)self->_viewingPass uniqueID];
  v14 = [uniqueID isEqualToString:uniqueID2];

  if (v14)
  {
    [MEMORY[0x1E6979518] begin];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__PKEditGroupViewController_group_didRemovePass_atIndex___block_invoke;
    v18[3] = &unk_1E8010970;
    v18[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v18];
    navigationController = [(PKEditGroupViewController *)self navigationController];
    v16 = [navigationController popToViewController:self animated:1];

    [MEMORY[0x1E6979518] commit];
  }

  if ([(PKGroup *)self->_group passCount]== 1 && self->_editStyle == 1)
  {
    navigationController2 = [(PKEditGroupViewController *)self navigationController];
    [navigationController2 dismissViewControllerAnimated:1 completion:0];
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

- (void)group:(id)group didMovePassFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  if (index != toIndex)
  {
    [(UITableView *)self->_tableView beginUpdates];
    tableView = self->_tableView;
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
    v11 = [MEMORY[0x1E696AC88] indexPathForRow:toIndex inSection:0];
    [(UITableView *)tableView moveRowAtIndexPath:v10 toIndexPath:v11];

    v12 = self->_tableView;

    [(UITableView *)v12 endUpdates];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [(PKEditTableViewController *)self tableView:view cellWithIdentifier:@"cellPassEditIdentifier"];
  v8 = -[PKGroup passAtIndex:](self->_group, "passAtIndex:", [pathCopy row]);
  [(PKEditGroupViewController *)self configureCell:v7 atIndexPath:pathCopy withPass:v8];

  return v7;
}

- (void)configureCell:(id)cell atIndexPath:(id)path withPass:(id)pass
{
  cellCopy = cell;
  passCopy = pass;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setPass:passCopy];
    [(PKEditTableViewController *)self loadContentAndImageSetFromExistingPassForPass:passCopy];
    editStyle = self->_editStyle;
    textLabel = [cellCopy textLabel];
    if (editStyle == 1)
    {
      v11 = [passCopy fieldForKey:*MEMORY[0x1E69BC0D0]];
      value = [v11 value];
      [textLabel setText:value];

      detailTextLabel = [cellCopy detailTextLabel];
      localizedDescription = [passCopy localizedDescription];
      [detailTextLabel setText:localizedDescription];

      [cellCopy setShowsReorderControl:1];
      [cellCopy setAccessoryType:0];
      [cellCopy setEditingAccessoryType:0];
    }

    else
    {
      localizedDescription2 = [passCopy localizedDescription];
      [textLabel setText:localizedDescription2];

      ingestedDate = [passCopy ingestedDate];
      v17 = PKRelativeDateStringWithFullDateForUnits();
      v18 = PKLocalizedString(&cfstr_PassEditingAdd.isa, &cfstr_Lu_0.isa, 1, v17);

      detailTextLabel2 = [cellCopy detailTextLabel];
      pk_uppercaseFirstStringForPreferredLocale = [v18 pk_uppercaseFirstStringForPreferredLocale];
      [detailTextLabel2 setText:pk_uppercaseFirstStringForPreferredLocale];

      [cellCopy setShowsReorderControl:0];
      [cellCopy setAccessoryType:1];
      [cellCopy setEditingAccessoryType:1];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __64__PKEditGroupViewController_configureCell_atIndexPath_withPass___block_invoke;
    v24[3] = &unk_1E8010AB0;
    v25 = cellCopy;
    v26 = passCopy;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__PKEditGroupViewController_configureCell_atIndexPath_withPass___block_invoke_2;
    v21[3] = &unk_1E801ABA8;
    v22 = v25;
    v23 = v26;
    [(PKEditTableViewController *)self imageForPass:v23 stacked:0 synchronously:0 placeholder:v24 completion:v21];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if (self->_editStyle == 1)
  {
    pathCopy = path;
    [view deselectRowAtIndexPath:pathCopy animated:1];
    v11 = [(PKEditGroupViewController *)self viewControllerForRowAtIndexPath:pathCopy];

    if (!self->_viewingPass)
    {
      pass = [v11 pass];
      viewingPass = self->_viewingPass;
      self->_viewingPass = pass;

      navigationController = [(PKEditGroupViewController *)self navigationController];
      [navigationController pushViewController:v11 animated:1];
    }
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v6 = *MEMORY[0x1E69B9EA8];
  pathCopy = path;
  MEMORY[0x1BFB41980](v6, 0);
  v8 = [pathCopy row];

  v13 = [(PKGroup *)self->_group passAtIndex:v8];
  if (self->_isForWatch)
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstanceWithRemoteLibrary];
    _remoteLibrary = [mEMORY[0x1E69B8A58] _remoteLibrary];
    [_remoteLibrary removePass:v13];
  }

  else
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    [mEMORY[0x1E69B8A58] removePass:v13];
  }

  existingGroupsController = [(PKEditTableViewController *)self existingGroupsController];
  uniqueID = [v13 uniqueID];
  [existingGroupsController handleUserPassDelete:uniqueID];
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = [(PKEditGroupViewController *)self passAtIndexPath:pathCopy];
  existingGroupsController = [(PKEditTableViewController *)self existingGroupsController];
  [existingGroupsController suppressRemoteUpdates:1];
  [existingGroupsController movePass:v8 inGroup:self->_group toIndex:{objc_msgSend(indexPathCopy, "row")}];
  [existingGroupsController enableRemoteUpdates];
  if (pathCopy != indexPathCopy && (![indexPathCopy row] && self->_editStyle == 1 || !objc_msgSend(pathCopy, "row") && self->_editStyle == 1))
  {
    v10 = [(PKGroup *)self->_group passAtIndex:0];
    [(PKEditGroupViewController *)self _presentAlertForUpdatedExpressPass:v10];
  }
}

- (void)_presentAlertForUpdatedExpressPass:(id)pass
{
  if (pass)
  {
    v3 = MEMORY[0x1E695DF90];
    passCopy = pass;
    v12 = objc_alloc_init(v3);
    v5 = MEMORY[0x1E695E118];
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69BC6B0]];
    [v12 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69BC6A8]];
    v6 = [passCopy fieldForKey:*MEMORY[0x1E69BC0D0]];

    value = [v6 value];
    v8 = PKLocalizedShareableCredentialString(&cfstr_SelectExpressP_3.isa, &stru_1F3BD5BF0.isa, value);
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

- (id)viewControllerForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && self->_editStyle != 1)
  {
    v7 = -[PKGroup passAtIndex:](self->_group, "passAtIndex:", [pathCopy row]);
    v6 = [[PKEditSinglePassViewController alloc] initWithGroup:self->_group pass:v7];
    performanceTest = [(PKEditTableViewController *)self performanceTest];
    if (performanceTest)
    {
      [(PKEditSinglePassViewController *)v6 setPerformanceTest:performanceTest];
      performanceTestName = [(PKEditTableViewController *)self performanceTestName];
      [(PKEditSinglePassViewController *)v6 setPerformanceTestName:performanceTestName];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)passAtIndexPath:(id)path
{
  group = self->_group;
  v4 = [path row];

  return [(PKGroup *)group passAtIndex:v4];
}

- (void)prefetchItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  passes = [(PKGroup *)self->_group passes];
  v5 = [pathsCopy count];
  if (v5 - 1 >= 0)
  {
    v6 = v5;
    do
    {
      v7 = [pathsCopy objectAtIndex:--v6];
      v8 = [v7 row];
      if ([passes count] > v8)
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