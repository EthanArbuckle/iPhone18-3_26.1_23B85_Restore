@interface PKExpiredPassesViewController
+ (id)detailTextStringForPass:(id)a3;
- (BOOL)passExistsWithUniqueIdentifier:(id)a3;
- (PKExpiredPassesViewController)initWithExistingGroupsController:(id)a3 delegate:(id)a4;
- (id)_buildDetailText:(id)a3 pass:(id)a4;
- (id)_hyperlinkFooterView;
- (id)indexPathOfExpiredPassWithUniqueID:(id)a3;
- (id)passAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (id)viewControllerForRowAtIndexPath:(id)a3;
- (void)_applyEditingStyle:(int64_t)a3;
- (void)_deletePressed;
- (void)_done;
- (void)_finishedEditingExpiredPassAtIndexPath:(id)a3;
- (void)_processGeocodeRequestsIfNecessary;
- (void)_select;
- (void)_unhidePressed;
- (void)_updateTitles;
- (void)configureCell:(id)a3 atIndexPath:(id)a4 withPass:(id)a5;
- (void)deletePass:(id)a3 atIndexPath:(id)a4;
- (void)prefetchItemsAtIndexPaths:(id)a3;
- (void)removeExpiredSectionPassWithUniqueID:(id)a3 isDeletion:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableViewDidUpdateSelection:(id)a3;
- (void)unhidePass:(id)a3 atIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PKExpiredPassesViewController

- (PKExpiredPassesViewController)initWithExistingGroupsController:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v48.receiver = self;
  v48.super_class = PKExpiredPassesViewController;
  v8 = -[PKExpiredTableViewController initWithStyle:](&v48, sel_initWithStyle_, [MEMORY[0x1E69DD020] pkui_groupedStyleWithRoundedCorners:1]);
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v10 = objc_alloc_init(MEMORY[0x1E695FBC8]);
    geocoder = v9->_geocoder;
    v9->_geocoder = v10;

    v9->_itemsLock._os_unfair_lock_opaque = 0;
    [(PKExpiredTableViewController *)v9 setExistingGroupsController:v6];
    v12 = [objc_alloc(MEMORY[0x1E69B88E0]) initWithPassTypeMask:0 passFilters:0 allowedPassUniqueIDs:0];
    groupsController = v9->_groupsController;
    v9->_groupsController = v12;

    [(PKGroupsController *)v9->_groupsController loadGroupsSynchronously];
    v14 = [(PKGroupsController *)v9->_groupsController expiredSectionPasses];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __75__PKExpiredPassesViewController_initWithExistingGroupsController_delegate___block_invoke;
    v46[3] = &unk_1E8017B98;
    v15 = v9;
    v47 = v15;
    v16 = [v14 sortedArrayUsingComparator:v46];
    expiredSectionPasses = v15->_expiredSectionPasses;
    v15->_expiredSectionPasses = v16;

    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v15->_expiredSectionPasses, "count")}];
    geocodeRequests = v15->_geocodeRequests;
    v15->_geocodeRequests = v18;

    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSArray count](v15->_expiredSectionPasses, "count")}];
    locationStringsForPassUniqueIDs = v15->_locationStringsForPassUniqueIDs;
    v15->_locationStringsForPassUniqueIDs = v20;

    viewingPass = v15->_viewingPass;
    v15->_viewingPass = 0;

    v23 = [(PKExpiredPassesViewController *)v15 _hyperlinkFooterView];
    footerView = v15->_footerView;
    v15->_footerView = v23;

    v25 = [(PKExpiredPassesViewController *)v15 navigationItem];
    [v25 setLeftItemsSupplementBackButton:0];
    v26 = PKLocalizedString(&cfstr_ExpiredPassesT.isa);
    [v25 setBackButtonTitle:v26];

    [v25 setBackButtonDisplayMode:2];
    v27 = objc_alloc(MEMORY[0x1E69DC708]);
    if (_UISolariumFeatureFlagEnabled())
    {
      v28 = 24;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v27 initWithBarButtonSystemItem:v28 target:v15 action:sel__done];
    doneButton = v15->_doneButton;
    v15->_doneButton = v29;

    [(UIBarButtonItem *)v15->_doneButton setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:v15 action:sel__edit];
    editButton = v15->_editButton;
    v15->_editButton = v31;

    [(UIBarButtonItem *)v15->_editButton setAccessibilityIdentifier:*MEMORY[0x1E69B9740]];
    v33 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:0 style:0 target:v15 action:sel__select];
    selectButton = v15->_selectButton;
    v15->_selectButton = v33;

    [(UIBarButtonItem *)v15->_selectButton setAccessibilityIdentifier:*MEMORY[0x1E69B9BF8]];
    v35 = objc_alloc(MEMORY[0x1E69DC708]);
    v36 = PKLocalizedString(&cfstr_ExpiredPassesC.isa);
    v37 = [v35 initWithTitle:v36 style:0 target:v15 action:sel__cancel];
    cancelButton = v15->_cancelButton;
    v15->_cancelButton = v37;

    [(UIBarButtonItem *)v15->_cancelButton setAccessibilityIdentifier:*MEMORY[0x1E69B95A0]];
    v39 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:16 target:v15 action:sel__deletePressed];
    deleteButton = v15->_deleteButton;
    v15->_deleteButton = v39;

    [(UIBarButtonItem *)v15->_deleteButton setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];
    v41 = objc_alloc(MEMORY[0x1E69DC708]);
    v42 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"eye.slash"];
    v43 = [v41 initWithImage:v42 style:0 target:v15 action:sel__unhidePressed];
    unhideButton = v15->_unhideButton;
    v15->_unhideButton = v43;

    [(UIBarButtonItem *)v15->_unhideButton setAccessibilityIdentifier:*MEMORY[0x1E69B9848]];
    [(PKExpiredPassesViewController *)v15 _updateTitles];
  }

  return v9;
}

BOOL __75__PKExpiredPassesViewController_initWithExistingGroupsController_delegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 1072) passAnnotationsByUniqueId];
  v8 = [v5 uniqueID];
  v9 = [v7 objectForKey:v8];

  v10 = [*(*(a1 + 32) + 1072) passAnnotationsByUniqueId];
  v11 = [v6 uniqueID];
  v12 = [v10 objectForKey:v11];

  v13 = [v9 archivedTimestamp];
  v14 = [v12 archivedTimestamp];
  v15 = [v13 compare:v14];

  if (!v15)
  {
    v16 = [v5 localizedDescription];
    v17 = [v6 localizedDescription];
    v15 = [v16 compare:v17];
  }

  return v15 == -1;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PKExpiredPassesViewController;
  [(PKExpiredTableViewController *)&v6 viewDidLoad];
  [(PKExpiredPassesViewController *)self setEditing:0 animated:0];
  v3 = [(PKExpiredPassesViewController *)self tableView];
  tableView = self->_tableView;
  self->_tableView = v3;

  [(PKExpiredTableViewController *)self setCachingDelegate:self];
  [(UITableView *)self->_tableView reloadData];
  v5 = [(PKExpiredPassesViewController *)self view];
  [v5 setAccessibilityIdentifier:*MEMORY[0x1E69B97A0]];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKExpiredPassesViewController;
  [(PKExpiredPassesViewController *)&v5 viewWillAppear:a3];
  viewingPass = self->_viewingPass;
  self->_viewingPass = 0;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v10[3] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = PKExpiredPassesViewController;
  [(PKExpiredPassesViewController *)&v9 setEditing:a3 animated:a4];
  v6 = [(PKExpiredPassesViewController *)self navigationController];
  v7 = v6;
  if (v4)
  {
    [v6 setToolbarHidden:0 animated:1];

    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    self->_selectedPassesCount = 0;
    v10[0] = self->_deleteButton;
    v10[1] = v7;
    v10[2] = self->_unhideButton;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
    [(PKExpiredPassesViewController *)self setToolbarItems:v8];
  }

  else
  {
    [v6 setToolbarHidden:1 animated:1];
  }

  [(PKExpiredPassesViewController *)self _updateTitles];
}

- (id)indexPathOfExpiredPassWithUniqueID:(id)a3
{
  v4 = a3;
  expiredSectionPasses = self->_expiredSectionPasses;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKExpiredPassesViewController_indexPathOfExpiredPassWithUniqueID___block_invoke;
  v10[3] = &unk_1E8017BC0;
  v6 = v4;
  v11 = v6;
  v7 = [(NSArray *)expiredSectionPasses indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:0];
  }

  return v8;
}

uint64_t __68__PKExpiredPassesViewController_indexPathOfExpiredPassWithUniqueID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [(PKExpiredTableViewController *)self tableView:a3 cellWithReuseIdentifier:@"cellPassExpiredIdentifier"];
  v8 = -[NSArray objectAtIndex:](self->_expiredSectionPasses, "objectAtIndex:", [v6 row]);
  [(PKExpiredPassesViewController *)self configureCell:v7 atIndexPath:v6 withPass:v8];

  return v7;
}

- (void)configureCell:(id)a3 atIndexPath:(id)a4 withPass:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v21 setPass:v9];
    v10 = PKDisplayTitleStringForPass();
    [v21 setPrimaryText:v10];

    v11 = PKDateStringForExpiredPass();
    [v21 setTertiaryText:v11];
    v12 = [v9 uniqueID];
    v13 = [(NSMutableDictionary *)self->_locationStringsForPassUniqueIDs objectForKeyedSubscript:v12];
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v15 = [v9 embeddedLocationsArray];
      v14 = [v15 firstObject];
    }

    v16 = [(PKExpiredPassesViewController *)self _buildDetailText:v13 pass:v9];
    [v21 setSecondaryText:v16];

    if (v14)
    {
      [v14 coordinate];
      v20 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:v17 longitude:v18];
      v19 = [[PKExpiredPassesGeocodeRequestItem alloc] initWithCell:v21 location:v20 indexPath:v8];
      os_unfair_lock_lock(&self->_itemsLock);
      [(NSMutableArray *)self->_geocodeRequests addObject:v19];
      os_unfair_lock_unlock(&self->_itemsLock);
      [(PKExpiredPassesViewController *)self _processGeocodeRequestsIfNecessary];
    }
  }
}

- (id)_buildDetailText:(id)a3 pass:(id)a4
{
  v5 = a3;
  v6 = [PKExpiredPassesViewController detailTextStringForPass:a4];
  v7 = v6;
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@", v6, v5];
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

- (void)_processGeocodeRequestsIfNecessary
{
  os_unfair_lock_lock(&self->_itemsLock);
  v3 = [(NSMutableArray *)self->_geocodeRequests count];
  os_unfair_lock_unlock(&self->_itemsLock);
  if (v3)
  {
    if ([(CLGeocoder *)self->_geocoder isGeocoding])
    {
      v4 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Reverse geocode in progress - skipping", buf, 2u);
      }
    }

    else
    {
      os_unfair_lock_lock(&self->_itemsLock);
      *buf = 0;
      v18 = buf;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__18;
      v21 = __Block_byref_object_dispose__18;
      v22 = [(NSMutableArray *)self->_geocodeRequests firstObject];
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3032000000;
      v15[3] = __Block_byref_object_copy__18;
      v15[4] = __Block_byref_object_dispose__18;
      v16 = [*(v18 + 5) uniqueID];
      v5 = [*(v18 + 5) location];
      v6 = [*(v18 + 5) indexPath];
      os_unfair_lock_unlock(&self->_itemsLock);
      objc_initWeak(&location, self);
      geocoder = self->_geocoder;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67__PKExpiredPassesViewController__processGeocodeRequestsIfNecessary__block_invoke;
      v9[3] = &unk_1E8017C38;
      objc_copyWeak(&v13, &location);
      v9[4] = self;
      v11 = v15;
      v12 = buf;
      v8 = v6;
      v10 = v8;
      [(CLGeocoder *)geocoder reverseGeocodeLocation:v5 completionHandler:v9];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);

      _Block_object_dispose(v15, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

void __67__PKExpiredPassesViewController__processGeocodeRequestsIfNecessary__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__PKExpiredPassesViewController__processGeocodeRequestsIfNecessary__block_invoke_2;
    aBlock[3] = &unk_1E8017C10;
    aBlock[4] = *(a1 + 32);
    aBlock[5] = WeakRetained;
    aBlock[6] = *(a1 + 48);
    v8 = _Block_copy(aBlock);
    v9 = v8;
    if (a3)
    {
      v8[2](v8);
LABEL_22:

      goto LABEL_23;
    }

    v10 = [v5 firstObject];
    if (!v10)
    {
      v9[2](v9);
LABEL_21:

      goto LABEL_22;
    }

    v11 = [*(*(*(a1 + 56) + 8) + 40) cell];
    v12 = [v10 locality];
    v13 = [v10 administrativeArea];
    if (![v12 length] || !objc_msgSend(v13, "length"))
    {
LABEL_20:
      v9[2](v9);

      goto LABEL_21;
    }

    v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@, %@", v12, v13];
    [v7[136] setObject:? forKeyedSubscript:?];
    v26 = v11;
    v14 = [v11 pass];
    v15 = [v14 uniqueID];
    v16 = *(*(*(a1 + 48) + 8) + 40);
    v17 = v15;
    v18 = v16;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if (v17)
      {
        v20 = v18 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {

LABEL_18:
LABEL_19:

        v11 = v26;
        goto LABEL_20;
      }

      v24 = [v17 isEqualToString:v18];

      if ((v24 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v21 = [*(*(*(a1 + 56) + 8) + 40) pass];
    v22 = [v7 _buildDetailText:v25 pass:v21];
    [v26 setSecondaryText:v22];

    v23 = v7[141];
    v28[0] = *(a1 + 40);
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v23 reloadRowsAtIndexPaths:v14 withRowAnimation:100];
    goto LABEL_18;
  }

LABEL_23:
}

uint64_t __67__PKExpiredPassesViewController__processGeocodeRequestsIfNecessary__block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 1120));
  v2 = *(*(a1 + 40) + 1112);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__PKExpiredPassesViewController__processGeocodeRequestsIfNecessary__block_invoke_3;
  v4[3] = &unk_1E8017BE8;
  v4[4] = *(a1 + 48);
  [v2 pk_removeObjectsPassingTest:v4];
  os_unfair_lock_unlock((*(a1 + 32) + 1120));
  return [*(a1 + 40) _processGeocodeRequestsIfNecessary];
}

BOOL __67__PKExpiredPassesViewController__processGeocodeRequestsIfNecessary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = v3 == *(*(*(a1 + 32) + 8) + 40);

  return v4;
}

+ (id)detailTextStringForPass:(id)a3
{
  v3 = a3;
  v4 = [v3 style];
  if (v4 <= 6)
  {
    if (!v4)
    {
      v5 = @"EXPIRED_PASSES_PASS_STYLE_COUPON";
      goto LABEL_12;
    }

    if (v4 != 2)
    {
      if (v4 != 4)
      {
LABEL_5:
        v5 = @"EXPIRED_PASSES_PASS_STYLE_PASS";
LABEL_12:
        v6 = PKLocalizedString(&v5->isa);
        goto LABEL_13;
      }

LABEL_9:
      v5 = @"EXPIRED_PASSES_PASS_STYLE_BOARDING_PASS";
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v4 != 7)
  {
    if (v4 != 9)
    {
      if (v4 != 10)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_10:
    v5 = @"EXPIRED_PASSES_PASS_STYLE_EVENT_TICKET";
    goto LABEL_12;
  }

  v8 = [v3 secureElementPass];
  [v8 accessType];
  v6 = PKSecureElementAccessPassTypeToAccessKeyString();

LABEL_13:

  return v6;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKExpiredPassesViewController;
  v5 = [(PKExpiredTableViewController *)&v7 tableView:a3 willSelectRowAtIndexPath:a4];
  if (v5 && [(UITableView *)self->_tableView isEditing])
  {
    ++self->_selectedPassesCount;
    [(PKExpiredPassesViewController *)self _updateTitles];
  }

  return v5;
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v7.receiver = self;
  v7.super_class = PKExpiredPassesViewController;
  v5 = [(PKExpiredTableViewController *)&v7 tableView:a3 willDeselectRowAtIndexPath:a4];
  if (v5 && [(UITableView *)self->_tableView isEditing])
  {
    --self->_selectedPassesCount;
    [(PKExpiredPassesViewController *)self _updateTitles];
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (![(UITableView *)self->_tableView isEditing])
  {
    [v11 deselectRowAtIndexPath:v6 animated:1];
    if (!self->_viewingPass)
    {
      v7 = [(PKExpiredPassesViewController *)self viewControllerForRowAtIndexPath:v6];
      v8 = [v7 pass];
      viewingPass = self->_viewingPass;
      self->_viewingPass = v8;

      v10 = [(PKExpiredPassesViewController *)self navigationController];
      [v10 pushViewController:v7 animated:1];
    }
  }
}

- (void)unhidePass:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v9 = [a3 uniqueID];
  v7 = [MEMORY[0x1E69B8A58] sharedInstance];
  [v7 recoverPassWithUniqueID:v9];

  v8 = [(PKExpiredTableViewController *)self existingGroupsController];
  [v8 handleUserPassRecover:v9];

  [(PKExpiredPassesViewController *)self _finishedEditingExpiredPassAtIndexPath:v6];
}

- (void)deletePass:(id)a3 atIndexPath:(id)a4
{
  v6 = MEMORY[0x1E69B8A58];
  v11 = a4;
  v7 = a3;
  v8 = [v6 sharedInstance];
  [v8 removePass:v7];

  v9 = [(PKExpiredTableViewController *)self existingGroupsController];
  v10 = [v7 uniqueID];

  [v9 handleUserPassDelete:v10];
  [(PKExpiredPassesViewController *)self _finishedEditingExpiredPassAtIndexPath:v11];
}

- (void)_finishedEditingExpiredPassAtIndexPath:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  tableView = self->_tableView;
  v10 = a3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v10 count:1];
  [(UITableView *)tableView deleteRowsAtIndexPaths:v7 withRowAnimation:100, v10, v11];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained finishedEditingExpiredPass];

  v9 = [(NSArray *)self->_expiredSectionPasses count];
  if (!v9)
  {
    [(PKExpiredPassesViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  v10 = -[NSArray objectAtIndex:](self->_expiredSectionPasses, "objectAtIndex:", [v7 row]);
  v8 = [(NSArray *)self->_expiredSectionPasses pk_arrayByRemovingObject:?];
  expiredSectionPasses = self->_expiredSectionPasses;
  self->_expiredSectionPasses = v8;

  if (a4 == 1)
  {
    [(PKExpiredPassesViewController *)self deletePass:v10 atIndexPath:v7];
  }

  else
  {
    [(PKExpiredPassesViewController *)self unhidePass:v10 atIndexPath:v7];
  }
}

- (void)removeExpiredSectionPassWithUniqueID:(id)a3 isDeletion:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  expiredSectionPasses = self->_expiredSectionPasses;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PKExpiredPassesViewController_removeExpiredSectionPassWithUniqueID_isDeletion___block_invoke;
  v15[3] = &unk_1E8017BC0;
  v8 = v6;
  v16 = v8;
  v9 = [(NSArray *)expiredSectionPasses indexOfObjectPassingTest:v15];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
    v11 = [(NSArray *)self->_expiredSectionPasses objectAtIndex:v9];
    v12 = [(NSArray *)self->_expiredSectionPasses pk_arrayByRemovingObject:v11];
    v13 = self->_expiredSectionPasses;
    self->_expiredSectionPasses = v12;

    v14 = [MEMORY[0x1E696AC88] indexPathForRow:v10 inSection:0];
    if (v4)
    {
      [(PKExpiredPassesViewController *)self deletePass:v11 atIndexPath:v14];
    }

    else
    {
      [(PKExpiredPassesViewController *)self unhidePass:v11 atIndexPath:v14];
    }
  }
}

uint64_t __81__PKExpiredPassesViewController_removeExpiredSectionPassWithUniqueID_isDeletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 uniqueID];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
  }

  return v7;
}

- (id)_hyperlinkFooterView
{
  v2 = PKLocalizedString(&cfstr_ExpiredPassesF.isa);
  v3 = PKLocalizedString(&cfstr_ExpiredPassesF_0.isa);
  v4 = PKStringWithValidatedFormat();
  v5 = [v4 rangeOfString:{v3, v3}];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v7 = objc_alloc_init(PKFooterHyperlinkView);
    v10 = [MEMORY[0x1E695DFF8] URLWithString:@"prefs:root=PASSBOOK&path="];
    v11 = PKAttributedStringByAddingLinkToRange(v4, v8, v9, v10);
    [(PKFooterHyperlinkView *)v7 setAttributedText:v11];

    v12 = &__block_literal_global_52;
    [(PKFooterHyperlinkView *)v7 setAction:&__block_literal_global_52];
  }

  return v7;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  footerView = self->_footerView;
  if (footerView)
  {
    v5 = footerView;
  }

  else
  {
    v5 = [(PKExpiredPassesViewController *)self _hyperlinkFooterView:a3];
  }

  return v5;
}

- (void)_updateTitles
{
  v13 = [(PKExpiredPassesViewController *)self navigationItem];
  v3 = self->_selectedPassesCount > 0;
  [(UIBarButtonItem *)self->_deleteButton setEnabled:v3];
  [(UIBarButtonItem *)self->_unhideButton setEnabled:v3];
  selectedPassesCount = self->_selectedPassesCount;
  v5 = [(NSArray *)self->_expiredSectionPasses count];
  v6 = 1168;
  selectButton = self->_selectButton;
  if (selectedPassesCount == v5)
  {
    v8 = @"EXPIRED_PASSES_DESELECT_ALL";
  }

  else
  {
    v8 = @"EXPIRED_PASSES_SELECT_ALL";
  }

  v9 = PKLocalizedString(&v8->isa);
  [(UIBarButtonItem *)selectButton setTitle:v9];

  if ([(PKExpiredPassesViewController *)self isEditing])
  {
    v10 = [(PKExpiredPassesViewController *)self _selectedExpiredPassesString];
    [v13 setTitle:v10];

    v11 = &OBJC_IVAR___PKExpiredPassesViewController__cancelButton;
  }

  else
  {
    v12 = PKLocalizedString(&cfstr_ExpiredPassesT.isa);
    [v13 setTitle:v12];

    v11 = &OBJC_IVAR___PKExpiredPassesViewController__doneButton;
    v6 = 1160;
  }

  [v13 setLeftBarButtonItem:*(&self->super.super.super.super.super.isa + v6) animated:1];
  [v13 setRightBarButtonItem:*(&self->super.super.super.super.super.isa + *v11) animated:1];
}

- (void)_done
{
  v2 = [(PKExpiredPassesViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)_select
{
  selectedPassesCount = self->_selectedPassesCount;
  v4 = [(NSArray *)self->_expiredSectionPasses count];
  v5 = [(UITableView *)self->_tableView numberOfRowsInSection:0];
  if (v5 >= 1)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForRow:i inSection:0];
      tableView = self->_tableView;
      if (selectedPassesCount == v4)
      {
        [(UITableView *)tableView deselectRowAtIndexPath:v8 animated:1];
      }

      else
      {
        [(UITableView *)tableView selectRowAtIndexPath:v8 animated:1 scrollPosition:0];
      }
    }
  }

  v10 = self->_tableView;

  [(PKExpiredPassesViewController *)self tableViewDidUpdateSelection:v10];
}

- (void)_applyEditingStyle:(int64_t)a3
{
  tableView = self->_tableView;
  v4[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__PKExpiredPassesViewController__applyEditingStyle___block_invoke;
  v5[3] = &unk_1E80119C8;
  v5[4] = self;
  v5[5] = a3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PKExpiredPassesViewController__applyEditingStyle___block_invoke_2;
  v4[3] = &unk_1E8011D28;
  [(UITableView *)tableView performBatchUpdates:v5 completion:v4];
}

void __52__PKExpiredPassesViewController__applyEditingStyle___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 1128) indexPathsForSelectedRows];
  v3 = [v2 sortedArrayUsingSelector:sel_compare_];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 32) tableView:*(*(a1 + 32) + 1128) commitEditingStyle:*(a1 + 40) forRowAtIndexPath:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_deletePressed
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedString(&cfstr_ExpiredPassesD_2.isa, &cfstr_Lu.isa, self->_selectedPassesCount);
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = [v5 popoverPresentationController];
  [v6 setSourceItem:self->_deleteButton];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedString(&cfstr_ExpiredPassesC.isa);
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v5 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedString(&cfstr_ExpiredPassesD_3.isa, &cfstr_Lu.isa, self->_selectedPassesCount);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__PKExpiredPassesViewController__deletePressed__block_invoke;
  v13[3] = &unk_1E80112E8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:2 handler:v13];
  [v5 addAction:v12];

  [(PKExpiredPassesViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)_unhidePressed
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedString(&cfstr_ExpiredPassesU_1.isa, &cfstr_Lu.isa, self->_selectedPassesCount);
  v5 = [v3 alertControllerWithTitle:0 message:v4 preferredStyle:0];

  v6 = [v5 popoverPresentationController];
  [v6 setSourceItem:self->_unhideButton];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedString(&cfstr_ExpiredPassesC.isa);
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v5 addAction:v9];

  v10 = MEMORY[0x1E69DC648];
  v11 = PKLocalizedString(&cfstr_ExpiredPassesU_2.isa, &cfstr_Lu.isa, self->_selectedPassesCount);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__PKExpiredPassesViewController__unhidePressed__block_invoke;
  v13[3] = &unk_1E80112E8;
  v13[4] = self;
  v12 = [v10 actionWithTitle:v11 style:0 handler:v13];
  [v5 addAction:v12];

  [(PKExpiredPassesViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)tableViewDidUpdateSelection:(id)a3
{
  v4 = [(UITableView *)self->_tableView indexPathsForSelectedRows];
  self->_selectedPassesCount = [v4 count];

  [(PKExpiredPassesViewController *)self _updateTitles];
}

- (id)viewControllerForRowAtIndexPath:(id)a3
{
  if (a3)
  {
    v3 = -[NSArray objectAtIndex:](self->_expiredSectionPasses, "objectAtIndex:", [a3 row]);
    v4 = [[PKExpiredSinglePassViewController alloc] initWithPass:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v5 = [(PKExpiredPassesViewController *)self viewControllerForRowAtIndexPath:a4, a5.x, a5.y];
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E69DC8D8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __91__PKExpiredPassesViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke;
    v10[3] = &unk_1E8017C60;
    v11 = v5;
    v8 = [v7 configurationWithIdentifier:0 previewProvider:v10 actionProvider:&__block_literal_global_78];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)passAtIndexPath:(id)a3
{
  v4 = a3;
  expiredSectionPasses = self->_expiredSectionPasses;
  if (expiredSectionPasses && (v6 = -[NSArray count](expiredSectionPasses, "count"), v6 > [v4 row]))
  {
    v7 = -[NSArray objectAtIndex:](self->_expiredSectionPasses, "objectAtIndex:", [v4 row]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)prefetchItemsAtIndexPaths:(id)a3
{
  v9 = a3;
  v4 = [v9 count];
  if (v4 - 1 >= 0)
  {
    v5 = v4;
    do
    {
      v6 = [v9 objectAtIndex:--v5];
      v7 = [v6 row];
      if ([(NSArray *)self->_expiredSectionPasses count]> v7)
      {
        v8 = [(NSArray *)self->_expiredSectionPasses objectAtIndex:v7];
        [v8 loadImageSetAsync:0 preheat:0 withCompletion:0];
      }
    }

    while (v5 > 0);
  }
}

- (BOOL)passExistsWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  expiredSectionPasses = self->_expiredSectionPasses;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PKExpiredPassesViewController_passExistsWithUniqueIdentifier___block_invoke;
  v8[3] = &unk_1E8011C28;
  v9 = v4;
  v6 = v4;
  LOBYTE(expiredSectionPasses) = [(NSArray *)expiredSectionPasses pk_containsObjectPassingTest:v8];

  return expiredSectionPasses;
}

uint64_t __64__PKExpiredPassesViewController_passExistsWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

@end