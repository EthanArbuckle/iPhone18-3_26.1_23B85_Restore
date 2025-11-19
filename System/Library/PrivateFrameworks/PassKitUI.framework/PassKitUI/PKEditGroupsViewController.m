@interface PKEditGroupsViewController
- (BOOL)passExistsWithUniqueIdentifier:(id)a3;
- (id)groupAtIndexPath:(id)a3;
- (id)indexPathForGroup:(id)a3;
- (id)initInEditingMode:(BOOL)a3 existingGroupsController:(id)a4 isForWatch:(BOOL)a5;
- (id)passAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)viewControllerForRowAtIndexPath:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_showNoPassesViewIfNoGroupsToShow;
- (void)configureCell:(id)a3 atIndexPath:(id)a4 withGroup:(id)a5;
- (void)dealloc;
- (void)group:(id)a3 didInsertPass:(id)a4 withState:(id)a5 atIndex:(unint64_t)a6;
- (void)group:(id)a3 didMovePassFromIndex:(unint64_t)a4 toIndex:(unint64_t)a5;
- (void)group:(id)a3 didRemovePass:(id)a4 atIndex:(unint64_t)a5;
- (void)group:(id)a3 didUpdatePass:(id)a4 withState:(id)a5 atIndex:(unint64_t)a6;
- (void)groupsController:(id)a3 didInsertGroup:(id)a4 atIndex:(unint64_t)a5;
- (void)groupsController:(id)a3 didMoveGroup:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6;
- (void)groupsController:(id)a3 didRemoveGroup:(id)a4 atIndex:(unint64_t)a5;
- (void)groupsController:(id)a3 didUpdateGroup:(id)a4;
- (void)prefetchItemsAtIndexPaths:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKEditGroupsViewController

- (id)initInEditingMode:(BOOL)a3 existingGroupsController:(id)a4 isForWatch:(BOOL)a5
{
  v5 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v38.receiver = self;
  v38.super_class = PKEditGroupsViewController;
  v9 = [(PKEditTableViewController *)&v38 initWithStyle:1 placeholders:0 isForWatch:v5];
  v10 = v9;
  if (v9)
  {
    v9->_editingMode = a3;
    [(PKEditTableViewController *)v9 setExistingGroupsController:v8];
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
    v15 = [(PKGroupsController *)v10->_groupsController groups];
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v15);
          }

          [*(*(&v34 + 1) + 8 * i) addGroupObserver:v10];
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }

    viewingPass = v10->_viewingPass;
    v10->_viewingPass = 0;

    viewingGroup = v10->_viewingGroup;
    v10->_viewingGroup = 0;

    deletingGroup = v10->_deletingGroup;
    v10->_deletingGroup = 0;

    v10->_isForWatch = v5;
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
  v3 = [(PKGroupsController *)self->_groupsController groups];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeGroupObserver:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v3 = [(PKEditTableViewController *)self visibleRowsCount];
  v4 = [(PKGroupsController *)self->_groupsController groups];
  v5 = [v4 count];
  v17 = v5;
  if (v3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
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
      v8 = [v4 objectAtIndex:v7];
      v9 = [(PKEditTableViewController *)self mostRecentPassInGroup:v8];
      v10 = [v8 passCount];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __41__PKEditGroupsViewController_viewDidLoad__block_invoke;
      v18[3] = &unk_1E801AB80;
      v18[5] = v6;
      v18[6] = v7;
      v18[4] = &v19;
      [(PKEditTableViewController *)self imageForPass:v9 stacked:v10 > 1 synchronously:1 placeholder:0 completion:v18];

      LOBYTE(v9) = *(v20 + 24);
      if (v9)
      {
        break;
      }
    }

    while (v6 - 1 != v7++);
  }

  if (v3 < v17)
  {
    if (6 * v3 >= v17 - 1)
    {
      v12 = v17 - 1;
    }

    else
    {
      v12 = 6 * v3;
    }

    while (v12 > v6)
    {
      v13 = [v4 objectAtIndex:v12];
      v14 = [(PKEditTableViewController *)self mostRecentPassInGroup:v13];
      -[PKEditTableViewController preemptivelyCacheImagesForPass:stacked:](self, "preemptivelyCacheImagesForPass:stacked:", v14, [v13 passCount] > 1);

      --v12;
    }
  }

  v15 = [(PKEditGroupsViewController *)self tableView];
  tableView = self->_tableView;
  self->_tableView = v15;

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

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = PKEditGroupsViewController;
  [(PKEditGroupsViewController *)&v7 viewWillAppear:a3];
  v4 = [(PKEditGroupsViewController *)self navigationController];
  [v4 setToolbarHidden:1 animated:1];
  viewingGroup = self->_viewingGroup;
  self->_viewingGroup = 0;

  viewingPass = self->_viewingPass;
  self->_viewingPass = 0;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKEditGroupsViewController;
  [(PKEditGroupsViewController *)&v5 viewDidAppear:a3];
  if ([(PKEditTableViewController *)self performanceTest]== 1)
  {
    v4 = [(PKEditTableViewController *)self testIteration];
    if (v4 > 9)
    {
      [(PKEditTableViewController *)self passedTest];
    }

    else
    {
      [(PKEditTableViewController *)self setTestIteration:v4 + 1];
      [(PKEditTableViewController *)self selectFirstRowOrFailTest];
    }
  }
}

- (void)_showNoPassesViewIfNoGroupsToShow
{
  v3 = [(PKGroupsController *)self->_groupsController groupCount]== 0;

  [(PKEditTableViewController *)self showNoPassesView:v3];
}

- (void)group:(id)a3 didInsertPass:(id)a4 withState:(id)a5 atIndex:(unint64_t)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  deletingGroup = self->_deletingGroup;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v12 = objc_claimAutoreleasedReturnValue(), [v16 groupID], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v12 != v13))
  {
    v14 = [(PKEditGroupsViewController *)self indexPathForGroup:v16];
    if (v14)
    {
      v15 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v14];
      if (v15)
      {
        [(PKEditGroupsViewController *)self configureCell:v15 atIndexPath:v14 withGroup:v16];
      }
    }
  }
}

- (void)group:(id)a3 didRemovePass:(id)a4 atIndex:(unint64_t)a5
{
  v20 = a3;
  v7 = a4;
  [(PKEditTableViewController *)self clearImageCacheForPass:v7];
  deletingGroup = self->_deletingGroup;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v9 = objc_claimAutoreleasedReturnValue(), [v20 groupID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 != v10))
  {
    v11 = [(PKEditGroupsViewController *)self indexPathForGroup:v20];
    if (v11)
    {
      v12 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v11];
      if (v12)
      {
        [(PKEditGroupsViewController *)self configureCell:v12 atIndexPath:v11 withGroup:v20];
      }
    }
  }

  if (self->_viewingPass)
  {
    v13 = [v7 uniqueID];
    v14 = [(PKPass *)self->_viewingPass uniqueID];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      v16 = [(PKEditGroupsViewController *)self navigationController];
      v17 = [v16 popToViewController:self animated:1];

      viewingGroup = self->_viewingGroup;
      self->_viewingGroup = 0;

      viewingPass = self->_viewingPass;
      self->_viewingPass = 0;
    }
  }
}

- (void)group:(id)a3 didUpdatePass:(id)a4 withState:(id)a5 atIndex:(unint64_t)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  deletingGroup = self->_deletingGroup;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v12 = objc_claimAutoreleasedReturnValue(), [v16 groupID], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v12 != v13))
  {
    v14 = [(PKEditGroupsViewController *)self indexPathForGroup:v16];
    if (v14)
    {
      v15 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v14];
      if (v15)
      {
        [(PKEditGroupsViewController *)self configureCell:v15 atIndexPath:v14 withGroup:v16];
      }
    }
  }
}

- (void)group:(id)a3 didMovePassFromIndex:(unint64_t)a4 toIndex:(unint64_t)a5
{
  v6 = a3;
  deletingGroup = self->_deletingGroup;
  v12 = v6;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v8 = objc_claimAutoreleasedReturnValue(), [v12 groupID], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v6 = v12, v8 != v9))
  {
    v10 = [(PKEditGroupsViewController *)self indexPathForGroup:v6];
    if (v10)
    {
      v11 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v10];
      if (v11)
      {
        [(PKEditGroupsViewController *)self configureCell:v11 atIndexPath:v10 withGroup:v12];
      }
    }

    v6 = v12;
  }
}

- (void)groupsController:(id)a3 didInsertGroup:(id)a4 atIndex:(unint64_t)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  [v7 addGroupObserver:self];
  [(UITableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;
  v10 = [(PKEditGroupsViewController *)self indexPathForGroup:v7];

  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [(UITableView *)tableView insertRowsAtIndexPaths:v11 withRowAnimation:2];

  v12 = [v8 groupCount];
  if (v12 == 1)
  {
    v13 = self->_tableView;
    v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:1];
    [(UITableView *)v13 reloadSections:v14 withRowAnimation:2];

    [(PKEditGroupsViewController *)self _showNoPassesViewIfNoGroupsToShow];
  }

  [(UITableView *)self->_tableView endUpdates];
}

- (void)groupsController:(id)a3 didRemoveGroup:(id)a4 atIndex:(unint64_t)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  [(PKGroup *)v8 removeGroupObserver:self];
  [(PKEditGroupsViewController *)self _showNoPassesViewIfNoGroupsToShow];
  v10 = [(PKEditTableViewController *)self mostRecentPassInGroup:v8];
  [(PKEditTableViewController *)self clearImageCacheForPass:v10];

  viewingGroup = self->_viewingGroup;
  if (viewingGroup == v8)
  {
    [MEMORY[0x1E6979518] begin];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__PKEditGroupsViewController_groupsController_didRemoveGroup_atIndex___block_invoke;
    v23[3] = &unk_1E8010970;
    v23[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v23];
    v12 = [(PKEditGroupsViewController *)self navigationController];
    v13 = [v12 popToViewController:self animated:1];

    [MEMORY[0x1E6979518] commit];
    v14 = self->_viewingGroup;
    self->_viewingGroup = 0;

    viewingPass = self->_viewingPass;
    self->_viewingPass = 0;
  }

  [(UITableView *)self->_tableView beginUpdates];
  tableView = self->_tableView;
  v17 = [MEMORY[0x1E696AC88] indexPathForRow:a5 inSection:0];
  v24[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [(UITableView *)tableView deleteRowsAtIndexPaths:v18 withRowAnimation:1];

  v19 = [v9 groupCount];
  if (!v19)
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

- (void)groupsController:(id)a3 didMoveGroup:(id)a4 fromIndex:(unint64_t)a5 toIndex:(unint64_t)a6
{
  [(UITableView *)self->_tableView beginUpdates:a3];
  v10 = [MEMORY[0x1E696AC88] indexPathForRow:a5 inSection:0];
  v9 = [MEMORY[0x1E696AC88] indexPathForRow:a6 inSection:0];
  [(UITableView *)self->_tableView moveRowAtIndexPath:v10 toIndexPath:v9];
  [(UITableView *)self->_tableView endUpdates];
}

- (void)groupsController:(id)a3 didUpdateGroup:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  deletingGroup = self->_deletingGroup;
  if (!deletingGroup || (-[PKGroup groupID](deletingGroup, "groupID"), v9 = objc_claimAutoreleasedReturnValue(), [v7 groupID], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v9 != v10))
  {
    v11 = [(PKEditGroupsViewController *)self indexPathForGroup:v7];
    [(UITableView *)self->_tableView beginUpdates];
    tableView = self->_tableView;
    v14[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    [(UITableView *)tableView reloadRowsAtIndexPaths:v13 withRowAnimation:0];

    [(UITableView *)self->_tableView endUpdates];
  }
}

- (id)groupAtIndexPath:(id)a3
{
  groupsController = self->_groupsController;
  v4 = [a3 row];

  return [(PKGroupsController *)groupsController groupAtIndex:v4];
}

- (id)indexPathForGroup:(id)a3
{
  v3 = [(PKGroupsController *)self->_groupsController indexOfGroup:a3];
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    if ([(PKGroupsController *)self->_groupsController groupCount])
    {
      v7 = [(NSMutableArray *)self->_actions count];
      goto LABEL_6;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (a4)
  {
    goto LABEL_7;
  }

  v7 = [(PKGroupsController *)self->_groupsController groupCount];
LABEL_6:
  v8 = v7;
LABEL_8:

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v6 section])
  {
    v8 = [(PKEditTableViewController *)self tableView:v7 cellWithIdentifier:@"cellActionEditIdentifier"];

    actions = self->_actions;
    v10 = [v6 row];

    v11 = [(NSMutableArray *)actions objectAtIndex:v10];
    v6 = [v8 textLabel];
    v12 = [v11 actionLabel];
    [v6 setText:v12];
  }

  else
  {
    v8 = [(PKEditTableViewController *)self tableView:v7 cellWithIdentifier:@"cellPassEditIdentifier"];

    v11 = [(PKEditGroupsViewController *)self groupAtIndexPath:v6];
    [(PKEditGroupsViewController *)self configureCell:v8 atIndexPath:v6 withGroup:v11];
  }

  return v8;
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4 withGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(PKEditTableViewController *)self mostRecentPassInGroup:v10];
    [v8 setPass:v11];
    v12 = [v10 passCount];
    [(PKEditTableViewController *)self loadContentAndImageSetFromExistingPassForPass:v11];
    v13 = [v8 textLabel];
    v14 = [v11 localizedDescription];
    [v13 setText:v14];

    v15 = [v11 ingestedDate];
    v16 = PKRelativeDateStringWithFullDateForUnits();
    v17 = PKLocalizedString(&cfstr_PassEditingAdd.isa, &cfstr_Lu_0.isa, v12, v16);
    v18 = [v17 pk_uppercaseFirstStringForPreferredLocale];

    if ([v10 passCount] < 2)
    {
      v20 = [v8 detailTextLabel];
      [v20 setText:v18];
    }

    else
    {
      v19 = PKLocalizedString(&cfstr_PassEditingPas.isa, &cfstr_Lu_0.isa, v12, v18);
      v20 = [v19 pk_uppercaseFirstStringForPreferredLocale];

      v21 = [v8 detailTextLabel];
      [v21 setText:v20];
    }

    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v22 = [v10 passCount] > 1;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__PKEditGroupsViewController_configureCell_atIndexPath_withGroup___block_invoke;
    v28[3] = &unk_1E801CA40;
    v31 = v32;
    v29 = v8;
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

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  [a3 deselectRowAtIndexPath:v13 animated:1];
  v6 = [v13 section];
  if (v6 == 1)
  {
    v7 = -[NSMutableArray objectAtIndex:](self->_actions, "objectAtIndex:", [v13 row]);
    v12 = [v7 actionType];
    if ([v12 isEqualToString:@"FindApps"])
    {
      [(PKEditTableViewController *)self findApps];
    }

    else if ([v12 isEqualToString:@"ScanCode"])
    {
      [(PKEditTableViewController *)self scanCode];
    }

    goto LABEL_9;
  }

  if (!v6 && !self->_viewingGroup)
  {
    v7 = [(PKEditGroupsViewController *)self viewControllerForRowAtIndexPath:v13];
    v8 = [v7 group];
    viewingGroup = self->_viewingGroup;
    self->_viewingGroup = v8;

    v10 = [v7 pass];
    viewingPass = self->_viewingPass;
    self->_viewingPass = v10;

    v12 = [(PKEditGroupsViewController *)self navigationController];
    [v12 pushViewController:v7 animated:1];
LABEL_9:
  }
}

- (id)viewControllerForRowAtIndexPath:(id)a3
{
  v4 = a3;
  if (-[PKEditGroupsViewController shouldShowPreviewForRowAtIndexPath:](self, "shouldShowPreviewForRowAtIndexPath:", v4) && ![v4 section])
  {
    v7 = [(PKEditGroupsViewController *)self groupAtIndexPath:v4];
    [v7 addGroupObserver:self];
    if ([v7 passCount] == 1)
    {
      v8 = [v7 passAtIndex:0];
      v5 = [[PKEditSinglePassViewController alloc] initWithGroup:v7 pass:v8];
    }

    else
    {
      v9 = [PKEditGroupViewController alloc];
      v8 = [(PKEditTableViewController *)self existingGroupsController];
      v10 = [(PKEditTableViewController *)self placeholders];
      v5 = [(PKEditGroupViewController *)v9 initWithGroup:v7 existingGroupsController:v8 style:0 placeholders:v10 isForWatch:self->_isForWatch delegate:self];
    }

    v11 = [(PKEditTableViewController *)self performanceTest];
    if (v11)
    {
      [(PKEditSinglePassViewController *)v5 setPerformanceTest:v11];
      v12 = [(PKEditTableViewController *)self performanceTestName];
      [(PKEditSinglePassViewController *)v5 setPerformanceTestName:v12];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v4 = [(PKEditGroupsViewController *)self groupAtIndexPath:a4];
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

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [a4 section];
  if (v4 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1BE115D60[v4];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a5;
  MEMORY[0x1BFB41980](*MEMORY[0x1E69B9E98], 0);
  v7 = [(PKEditGroupsViewController *)self groupAtIndexPath:v6];
  objc_storeStrong(&self->_deletingGroup, v7);
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "passCount")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v7 passes];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) uniqueID];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  groupsController = self->_groupsController;
  v16 = [v8 copy];
  [(PKGroupsController *)groupsController handleUserPassesDelete:v16];
}

- (id)passAtIndexPath:(id)a3
{
  v4 = -[PKGroupsController groupAtIndex:](self->_groupsController, "groupAtIndex:", [a3 row]);
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

- (void)prefetchItemsAtIndexPaths:(id)a3
{
  v11 = a3;
  v4 = [(PKGroupsController *)self->_groupsController groups];
  v5 = [v11 count];
  if (v5 - 1 >= 0)
  {
    v6 = v5;
    do
    {
      v7 = [v11 objectAtIndex:--v6];
      v8 = [v7 row];
      if ([v4 count] > v8)
      {
        v9 = [v4 objectAtIndex:v8];
        v10 = [(PKEditTableViewController *)self mostRecentPassInGroup:v9];
        [(PKEditTableViewController *)self loadContentAndImageSetFromExistingPassForPass:v10];
        -[PKEditTableViewController preemptivelyCacheImagesForPass:stacked:](self, "preemptivelyCacheImagesForPass:stacked:", v10, [v9 passCount] > 1);
      }
    }

    while (v6 > 0);
  }
}

- (BOOL)passExistsWithUniqueIdentifier:(id)a3
{
  v3 = [(PKGroupsController *)self->_groupsController passWithUniqueID:a3];
  v4 = v3 != 0;

  return v4;
}

@end