@interface PKEditGroupsViewController
- (BOOL)passExistsWithUniqueIdentifier:(id)identifier;
- (id)groupAtIndexPath:(id)path;
- (id)indexPathForGroup:(id)group;
- (id)initInEditingMode:(BOOL)mode existingGroupsController:(id)controller isForWatch:(BOOL)watch;
- (id)passAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)viewControllerForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_showNoPassesViewIfNoGroupsToShow;
- (void)configureCell:(id)cell atIndexPath:(id)path withGroup:(id)group;
- (void)dealloc;
- (void)group:(id)group didInsertPass:(id)pass withState:(id)state atIndex:(unint64_t)index;
- (void)group:(id)group didMovePassFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)group:(id)group didRemovePass:(id)pass atIndex:(unint64_t)index;
- (void)group:(id)group didUpdatePass:(id)pass withState:(id)state atIndex:(unint64_t)index;
- (void)groupsController:(id)controller didInsertGroup:(id)group atIndex:(unint64_t)index;
- (void)groupsController:(id)controller didMoveGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)groupsController:(id)controller didRemoveGroup:(id)group atIndex:(unint64_t)index;
- (void)groupsController:(id)controller didUpdateGroup:(id)group;
- (void)prefetchItemsAtIndexPaths:(id)paths;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PKEditGroupsViewController

- (id)initInEditingMode:(BOOL)mode existingGroupsController:(id)controller isForWatch:(BOOL)watch
{
  watchCopy = watch;
  v40 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v38.receiver = self;
  v38.super_class = PKEditGroupsViewController;
  v9 = [(PKEditTableViewController *)&v38 initWithStyle:1 placeholders:0 isForWatch:watchCopy];
  v10 = v9;
  if (v9)
  {
    v9->_editingMode = mode;
    [(PKEditTableViewController *)v9 setExistingGroupsController:controllerCopy];
    +[PKEditPassesTableViewCell imageSizeNeeded];
    v10->_imageSizeNeeded.width = v11;
    v10->_imageSizeNeeded.height = v12;
    v13 = [objc_alloc(MEMORY[0x1E69B88E0]) initWithPassTypeMask:1 passFilters:0 allowedPassUniqueIDs:0];
    groupsController = v10->_groupsController;
    v10->_groupsController = v13;

    [(PKGroupsController *)v10->_groupsController setDelegate:v10];
    [(PKGroupsController *)v10->_groupsController loadGroupsSynchronously];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    groups = [(PKGroupsController *)v10->_groupsController groups];
    v16 = [groups countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(groups);
          }

          [*(*(&v34 + 1) + 8 * i) addGroupObserver:v10];
        }

        v17 = [groups countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }

    viewingPass = v10->_viewingPass;
    v10->_viewingPass = 0;

    viewingGroup = v10->_viewingGroup;
    v10->_viewingGroup = 0;

    deletingGroup = v10->_deletingGroup;
    v10->_deletingGroup = 0;

    v10->_isForWatch = watchCopy;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v10->_actions;
    v10->_actions = v23;

    if (PKRearCameraIsAllowed())
    {
      v25 = v10->_actions;
      v26 = [PKEditGroupsAction alloc];
      v27 = PKLocalizedString(&cfstr_ScanCode.isa);
      v28 = [(PKEditGroupsAction *)v26 initWithLabel:v27 type:@"ScanCode"];
      [(NSMutableArray *)v25 addObject:v28];
    }

    v29 = v10->_actions;
    v30 = [PKEditGroupsAction alloc];
    v31 = PKLocalizedString(&cfstr_AppStore.isa);
    v32 = [(PKEditGroupsAction *)v30 initWithLabel:v31 type:@"FindApps"];
    [(NSMutableArray *)v29 addObject:v32];
  }

  return v10;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  groups = [(PKGroupsController *)self->_groupsController groups];
  v4 = [groups countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(groups);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeGroupObserver:self];
      }

      while (v5 != v7);
      v5 = [groups countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = PKEditGroupsViewController;
  [(PKEditGroupsViewController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = PKEditGroupsViewController;
  [(PKEditTableViewController *)&v23 viewDidLoad];
  [(PKEditTableViewController *)self setEditing:self->_editingMode animated:0];
  visibleRowsCount = [(PKEditTableViewController *)self visibleRowsCount];
  groups = [(PKGroupsController *)self->_groupsController groups];
  v5 = [groups count];
  v17 = v5;
  if (visibleRowsCount >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = visibleRowsCount;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [groups objectAtIndex:v7];
      v9 = [(PKEditTableViewController *)self mostRecentPassInGroup:v8];
      passCount = [v8 passCount];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __41__PKEditGroupsViewController_viewDidLoad__block_invoke;
      v18[3] = &unk_1E801AB80;
      v18[5] = v6;
      v18[6] = v7;
      v18[4] = &v19;
      [(PKEditTableViewController *)self imageForPass:v9 stacked:passCount > 1 synchronously:1 placeholder:0 completion:v18];

      LOBYTE(v9) = *(v20 + 24);
      if (v9)
      {
        break;
      }
    }

    while (v6 - 1 != v7++);
  }

  if (visibleRowsCount < v17)
  {
    if (6 * visibleRowsCount >= v17 - 1)
    {
      v12 = v17 - 1;
    }

    else
    {
      v12 = 6 * visibleRowsCount;
    }

    while (v12 > v6)
    {
      v13 = [groups objectAtIndex:v12];
      v14 = [(PKEditTableViewController *)self mostRecentPassInGroup:v13];
      -[PKEditTableViewController preemptivelyCacheImagesForPass:stacked:](self, "preemptivelyCacheImagesForPass:stacked:", v14, [v13 passCount] > 1);

      --v12;
    }
  }

  tableView = [(PKEditGroupsViewController *)self tableView];
  tableView = self->_tableView;
  self->_tableView = tableView;

  [(PKEditTableViewController *)self setCachingDelegate:self];
  [(UITableView *)self->_tableView reloadData];
  [(PKEditGroupsViewController *)self _showNoPassesViewIfNoGroupsToShow];
  _Block_object_dispose(&v19, 8);
}

void *__41__PKEditGroupsViewController_viewDidLoad__block_invoke(void *result, double a2)
{
  if ((result[5] - result[6]) * a2 > 0.3)
  {
    *(*(result[4] + 8) + 24) = 1;
  }

  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = PKEditGroupsViewController;
  [(PKEditGroupsViewController *)&v7 viewWillAppear:appear];
  navigationController = [(PKEditGroupsViewController *)self navigationController];
  [navigationController setToolbarHidden:1 animated:1];
  viewingGroup = self->_viewingGroup;
  self->_viewingGroup = 0;

  viewingPass = self->_viewingPass;
  self->_viewingPass = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = PKEditGroupsViewController;
  [(PKEditGroupsViewController *)&v5 viewDidAppear:appear];
  if ([(PKEditTableViewController *)self performanceTest]== 1)
  {
    testIteration = [(PKEditTableViewController *)self testIteration];
    if (testIteration > 9)
    {
      [(PKEditTableViewController *)self passedTest];
    }

    else
    {
      [(PKEditTableViewController *)self setTestIteration:testIteration + 1];
      [(PKEditTableViewController *)self selectFirstRowOrFailTest];
    }
  }
}

- (void)_showNoPassesViewIfNoGroupsToShow
{
  v3 = [(PKGroupsController *)self->_groupsController groupCount]== 0;

  [(PKEditTableViewController *)self showNoPassesView:v3];
}

- (void)group:(id)group didInsertPass:(id)pass withState:(id)state atIndex:(unint64_t)index
{
  groupCopy = group;
  passCopy = pass;
  stateCopy = state;
  deletingGroup = self->_deletingGroup;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v12 = objc_claimAutoreleasedReturnValue(), [groupCopy groupID], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v12 != v13))
  {
    v14 = [(PKEditGroupsViewController *)self indexPathForGroup:groupCopy];
    if (v14)
    {
      v15 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v14];
      if (v15)
      {
        [(PKEditGroupsViewController *)self configureCell:v15 atIndexPath:v14 withGroup:groupCopy];
      }
    }
  }
}

- (void)group:(id)group didRemovePass:(id)pass atIndex:(unint64_t)index
{
  groupCopy = group;
  passCopy = pass;
  [(PKEditTableViewController *)self clearImageCacheForPass:passCopy];
  deletingGroup = self->_deletingGroup;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v9 = objc_claimAutoreleasedReturnValue(), [groupCopy groupID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 != v10))
  {
    v11 = [(PKEditGroupsViewController *)self indexPathForGroup:groupCopy];
    if (v11)
    {
      v12 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v11];
      if (v12)
      {
        [(PKEditGroupsViewController *)self configureCell:v12 atIndexPath:v11 withGroup:groupCopy];
      }
    }
  }

  if (self->_viewingPass)
  {
    uniqueID = [passCopy uniqueID];
    uniqueID2 = [(PKPass *)self->_viewingPass uniqueID];
    v15 = [uniqueID isEqualToString:uniqueID2];

    if (v15)
    {
      navigationController = [(PKEditGroupsViewController *)self navigationController];
      v17 = [navigationController popToViewController:self animated:1];

      viewingGroup = self->_viewingGroup;
      self->_viewingGroup = 0;

      viewingPass = self->_viewingPass;
      self->_viewingPass = 0;
    }
  }
}

- (void)group:(id)group didUpdatePass:(id)pass withState:(id)state atIndex:(unint64_t)index
{
  groupCopy = group;
  passCopy = pass;
  stateCopy = state;
  deletingGroup = self->_deletingGroup;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v12 = objc_claimAutoreleasedReturnValue(), [groupCopy groupID], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v12 != v13))
  {
    v14 = [(PKEditGroupsViewController *)self indexPathForGroup:groupCopy];
    if (v14)
    {
      v15 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v14];
      if (v15)
      {
        [(PKEditGroupsViewController *)self configureCell:v15 atIndexPath:v14 withGroup:groupCopy];
      }
    }
  }
}

- (void)group:(id)group didMovePassFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  groupCopy = group;
  deletingGroup = self->_deletingGroup;
  v12 = groupCopy;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v8 = objc_claimAutoreleasedReturnValue(), [v12 groupID], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, groupCopy = v12, v8 != v9))
  {
    v10 = [(PKEditGroupsViewController *)self indexPathForGroup:groupCopy];
    if (v10)
    {
      v11 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v10];
      if (v11)
      {
        [(PKEditGroupsViewController *)self configureCell:v11 atIndexPath:v10 withGroup:v12];
      }
    }

    groupCopy = v12;
  }
}

- (void)groupsController:(id)controller didInsertGroup:(id)group atIndex:(unint64_t)index
{
  v15[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  controllerCopy = controller;
  [groupCopy addGroupObserver:self];
  [(UITableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;
  v10 = [(PKEditGroupsViewController *)self indexPathForGroup:groupCopy];

  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(UITableView *)tableView insertRowsAtIndexPaths:v11 withRowAnimation:2];

  groupCount = [controllerCopy groupCount];
  if (groupCount == 1)
  {
    v13 = self->_tableView;
    v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [(UITableView *)v13 reloadSections:v14 withRowAnimation:2];

    [(PKEditGroupsViewController *)self _showNoPassesViewIfNoGroupsToShow];
  }

  [(UITableView *)self->_tableView endUpdates];
}

- (void)groupsController:(id)controller didRemoveGroup:(id)group atIndex:(unint64_t)index
{
  v24[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  controllerCopy = controller;
  [(PKGroup *)groupCopy removeGroupObserver:self];
  [(PKEditGroupsViewController *)self _showNoPassesViewIfNoGroupsToShow];
  v10 = [(PKEditTableViewController *)self mostRecentPassInGroup:groupCopy];
  [(PKEditTableViewController *)self clearImageCacheForPass:v10];

  viewingGroup = self->_viewingGroup;
  if (viewingGroup == groupCopy)
  {
    [MEMORY[0x1E6979518] begin];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__PKEditGroupsViewController_groupsController_didRemoveGroup_atIndex___block_invoke;
    v23[3] = &unk_1E8010970;
    v23[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v23];
    navigationController = [(PKEditGroupsViewController *)self navigationController];
    v13 = [navigationController popToViewController:self animated:1];

    [MEMORY[0x1E6979518] commit];
    v14 = self->_viewingGroup;
    self->_viewingGroup = 0;

    viewingPass = self->_viewingPass;
    self->_viewingPass = 0;
  }

  [(UITableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;
  v17 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  v24[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [(UITableView *)tableView deleteRowsAtIndexPaths:v18 withRowAnimation:1];

  groupCount = [controllerCopy groupCount];
  if (!groupCount)
  {
    v20 = self->_tableView;
    v21 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [(UITableView *)v20 reloadSections:v21 withRowAnimation:1];
  }

  [(UITableView *)self->_tableView endUpdates];
  deletingGroup = self->_deletingGroup;
  self->_deletingGroup = 0;
}

uint64_t __70__PKEditGroupsViewController_groupsController_didRemoveGroup_atIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) performanceTest];
  if (result == 3)
  {
    v3 = *(a1 + 32);

    return [v3 passedTest];
  }

  return result;
}

- (void)groupsController:(id)controller didMoveGroup:(id)group fromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  [(UITableView *)self->_tableView beginUpdates:controller];
  v10 = [MEMORY[0x1E696AC88] indexPathForRow:index inSection:0];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:toIndex inSection:0];
  [(UITableView *)self->_tableView moveRowAtIndexPath:v10 toIndexPath:v9];
  [(UITableView *)self->_tableView endUpdates];
}

- (void)groupsController:(id)controller didUpdateGroup:(id)group
{
  v14[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  groupCopy = group;
  deletingGroup = self->_deletingGroup;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v9 = objc_claimAutoreleasedReturnValue(), [groupCopy groupID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 != v10))
  {
    v11 = [(PKEditGroupsViewController *)self indexPathForGroup:groupCopy];
    [(UITableView *)self->_tableView beginUpdates];
    tableView = self->_tableView;
    v14[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(UITableView *)tableView reloadRowsAtIndexPaths:v13 withRowAnimation:0];

    [(UITableView *)self->_tableView endUpdates];
  }
}

- (id)groupAtIndexPath:(id)path
{
  groupsController = self->_groupsController;
  v4 = [path row];

  return [(PKGroupsController *)groupsController groupAtIndex:v4];
}

- (id)indexPathForGroup:(id)group
{
  v3 = [(PKGroupsController *)self->_groupsController indexOfGroup:group];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E696AC88] indexPathForRow:v3 inSection:0];
  }

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    if ([(PKGroupsController *)self->_groupsController groupCount])
    {
      groupCount = [(NSMutableArray *)self->_actions count];
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (section)
  {
    goto LABEL_7;
  }

  groupCount = [(PKGroupsController *)self->_groupsController groupCount];
LABEL_6:
  v8 = groupCount;
LABEL_8:

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy section])
  {
    v8 = [(PKEditTableViewController *)self tableView:viewCopy cellWithIdentifier:@"cellActionEditIdentifier"];

    actions = self->_actions;
    v10 = [pathCopy row];

    v11 = [(NSMutableArray *)actions objectAtIndex:v10];
    pathCopy = [v8 textLabel];
    actionLabel = [v11 actionLabel];
    [pathCopy setText:actionLabel];
  }

  else
  {
    v8 = [(PKEditTableViewController *)self tableView:viewCopy cellWithIdentifier:@"cellPassEditIdentifier"];

    v11 = [(PKEditGroupsViewController *)self groupAtIndexPath:pathCopy];
    [(PKEditGroupsViewController *)self configureCell:v8 atIndexPath:pathCopy withGroup:v11];
  }

  return v8;
}

- (void)configureCell:(id)cell atIndexPath:(id)path withGroup:(id)group
{
  cellCopy = cell;
  pathCopy = path;
  groupCopy = group;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(PKEditTableViewController *)self mostRecentPassInGroup:groupCopy];
    [cellCopy setPass:v11];
    passCount = [groupCopy passCount];
    [(PKEditTableViewController *)self loadContentAndImageSetFromExistingPassForPass:v11];
    textLabel = [cellCopy textLabel];
    localizedDescription = [v11 localizedDescription];
    [textLabel setText:localizedDescription];

    ingestedDate = [v11 ingestedDate];
    v16 = PKRelativeDateStringWithFullDateForUnits();
    v17 = PKLocalizedString(&cfstr_PassEditingAdd.isa, &cfstr_Lu_0.isa, passCount, v16);
    pk_uppercaseFirstStringForPreferredLocale = [v17 pk_uppercaseFirstStringForPreferredLocale];

    if ([groupCopy passCount] < 2)
    {
      detailTextLabel = [cellCopy detailTextLabel];
      [detailTextLabel setText:pk_uppercaseFirstStringForPreferredLocale];
    }

    else
    {
      v19 = PKLocalizedString(&cfstr_PassEditingPas.isa, &cfstr_Lu_0.isa, passCount, pk_uppercaseFirstStringForPreferredLocale);
      detailTextLabel = [v19 pk_uppercaseFirstStringForPreferredLocale];

      detailTextLabel2 = [cellCopy detailTextLabel];
      [detailTextLabel2 setText:detailTextLabel];
    }

    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v22 = [groupCopy passCount] > 1;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__PKEditGroupsViewController_configureCell_atIndexPath_withGroup___block_invoke;
    v28[3] = &unk_1E801CA40;
    v31 = v32;
    v29 = cellCopy;
    v30 = v11;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__PKEditGroupsViewController_configureCell_atIndexPath_withGroup___block_invoke_2;
    v24[3] = &unk_1E801CA68;
    v27 = v32;
    v25 = v29;
    v23 = v30;
    v26 = v23;
    [(PKEditTableViewController *)self imageForPass:v23 stacked:v22 synchronously:0 placeholder:v28 completion:v24];

    _Block_object_dispose(v32, 8);
  }
}

uint64_t __66__PKEditGroupsViewController_configureCell_atIndexPath_withGroup___block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    return [*(result + 32) setImage:a2 forPass:*(result + 40)];
  }

  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  section = [pathCopy section];
  if (section == 1)
  {
    v7 = -[NSMutableArray objectAtIndex:](self->_actions, "objectAtIndex:", [pathCopy row]);
    actionType = [v7 actionType];
    if ([actionType isEqualToString:@"FindApps"])
    {
      [(PKEditTableViewController *)self findApps];
    }

    else if ([actionType isEqualToString:@"ScanCode"])
    {
      [(PKEditTableViewController *)self scanCode];
    }

    goto LABEL_9;
  }

  if (!section && !self->_viewingGroup)
  {
    v7 = [(PKEditGroupsViewController *)self viewControllerForRowAtIndexPath:pathCopy];
    group = [v7 group];
    viewingGroup = self->_viewingGroup;
    self->_viewingGroup = group;

    pass = [v7 pass];
    viewingPass = self->_viewingPass;
    self->_viewingPass = pass;

    actionType = [(PKEditGroupsViewController *)self navigationController];
    [actionType pushViewController:v7 animated:1];
LABEL_9:
  }
}

- (id)viewControllerForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (-[PKEditGroupsViewController shouldShowPreviewForRowAtIndexPath:](self, "shouldShowPreviewForRowAtIndexPath:", pathCopy) && ![pathCopy section])
  {
    v7 = [(PKEditGroupsViewController *)self groupAtIndexPath:pathCopy];
    [v7 addGroupObserver:self];
    if ([v7 passCount] == 1)
    {
      existingGroupsController = [v7 passAtIndex:0];
      v5 = [[PKEditSinglePassViewController alloc] initWithGroup:v7 pass:existingGroupsController];
    }

    else
    {
      v9 = [PKEditGroupViewController alloc];
      existingGroupsController = [(PKEditTableViewController *)self existingGroupsController];
      placeholders = [(PKEditTableViewController *)self placeholders];
      v5 = [(PKEditGroupViewController *)v9 initWithGroup:v7 existingGroupsController:existingGroupsController style:0 placeholders:placeholders isForWatch:self->_isForWatch delegate:self];
    }

    performanceTest = [(PKEditTableViewController *)self performanceTest];
    if (performanceTest)
    {
      [(PKEditSinglePassViewController *)v5 setPerformanceTest:performanceTest];
      performanceTestName = [(PKEditTableViewController *)self performanceTestName];
      [(PKEditSinglePassViewController *)v5 setPerformanceTestName:performanceTestName];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = [(PKEditGroupsViewController *)self groupAtIndexPath:path];
  if ([v4 passCount] == 1)
  {
    v5 = @"PASS_EDITING_DELETE";
  }

  else
  {
    v5 = @"PASS_EDITING_DELETE_ALL";
  }

  v6 = PKLocalizedString(&v5->isa);

  return v6;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  section = [path section];
  if (section > 2)
  {
    return 0;
  }

  else
  {
    return qword_1BE115D60[section];
  }
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v22 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9E98], 0);
  v7 = [(PKEditGroupsViewController *)self groupAtIndexPath:pathCopy];
  objc_storeStrong(&self->_deletingGroup, v7);
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "passCount")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  passes = [v7 passes];
  v10 = [passes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(passes);
        }

        uniqueID = [*(*(&v17 + 1) + 8 * v13) uniqueID];
        [v8 addObject:uniqueID];

        ++v13;
      }

      while (v11 != v13);
      v11 = [passes countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  groupsController = self->_groupsController;
  v16 = [v8 copy];
  [(PKGroupsController *)groupsController handleUserPassesDelete:v16];
}

- (id)passAtIndexPath:(id)path
{
  v4 = -[PKGroupsController groupAtIndex:](self->_groupsController, "groupAtIndex:", [path row]);
  if (v4)
  {
    v5 = [(PKEditTableViewController *)self mostRecentPassInGroup:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prefetchItemsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  groups = [(PKGroupsController *)self->_groupsController groups];
  v5 = [pathsCopy count];
  if (v5 - 1 >= 0)
  {
    v6 = v5;
    do
    {
      v7 = [pathsCopy objectAtIndex:--v6];
      v8 = [v7 row];
      if ([groups count] > v8)
      {
        v9 = [groups objectAtIndex:v8];
        v10 = [(PKEditTableViewController *)self mostRecentPassInGroup:v9];
        [(PKEditTableViewController *)self loadContentAndImageSetFromExistingPassForPass:v10];
        -[PKEditTableViewController preemptivelyCacheImagesForPass:stacked:](self, "preemptivelyCacheImagesForPass:stacked:", v10, [v9 passCount] > 1);
      }
    }

    while (v6 > 0);
  }
}

- (BOOL)passExistsWithUniqueIdentifier:(id)identifier
{
  v3 = [(PKGroupsController *)self->_groupsController passWithUniqueID:identifier];
  v4 = v3 != 0;

  return v4;
}

@end