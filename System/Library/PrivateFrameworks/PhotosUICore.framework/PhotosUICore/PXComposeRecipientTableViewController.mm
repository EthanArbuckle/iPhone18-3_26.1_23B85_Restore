@interface PXComposeRecipientTableViewController
+ (id)contactViewControllerToPresentForRecipientViewController:(id)a3;
- (BOOL)_updateFooterHeight;
- (BOOL)_updateHeaderHeight;
- (BOOL)isValidAddressForComposeRecipient:(id)a3;
- (PXComposeRecipientTableViewController)init;
- (PXComposeRecipientTableViewController)initWithCoder:(id)a3;
- (PXComposeRecipientTableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXComposeRecipientTableViewController)initWithStyle:(int64_t)a3;
- (PXComposeRecipientTableViewController)initWithViewModel:(id)a3;
- (PXComposeRecipientTableViewControllerDelegate)delegate;
- (id)_footerView;
- (id)_tableView:(id)a3 participantCellForRowAtIndexPath:(id)a4;
- (id)cellModelAtIndex:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_contactViewController:(id)a3 didSelectContact:(id)a4;
- (void)_contentSizeCategoryDidChange:(id)a3;
- (void)_dismissRecipientViewController:(id)a3;
- (void)_handleAddRecipient:(id)a3;
- (void)bootstrapPersonSuggestion:(id)a3 withContact:(id)a4;
- (void)composeRecipientDataSourceManager:(id)a3 didUpdateDataSourceWithChangeDetails:(id)a4;
- (void)composeRecipientSelectionManager:(id)a3 didUpdateSelectionSnapshotWithChangeDetails:(id)a4;
- (void)composeRecipientValidationManager:(id)a3 didUpdateValidationWithChangedIndexes:(id)a4;
- (void)configureCellModel:(id)a3 withComposeRecipient:(id)a4;
- (void)configureWithViewModel:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)loadView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoRecipientViewController:(id)a3 didCompleteWithRecipients:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTableViewHeight;
- (void)viewWillLayoutSubviews;
@end

@implementation PXComposeRecipientTableViewController

- (PXComposeRecipientTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_contactViewController:(id)a3 didSelectContact:(id)a4
{
  v11 = a4;
  if (v11)
  {
    v5 = self->_personSuggestionForBootstrapping;
    if (+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
    {
      v6 = [[PXComposeRecipient alloc] initWithPersonSuggestion:v5 contact:v11];
      v7 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
      [v7 replaceComposeRecipientAtIndex:-[NSIndexPath row](self->_indexPathForBootstrapping withNewComposeRecipient:{"row"), v6}];
      v8 = [(PXComposeRecipientTableViewController *)self tableView];
      [v8 reloadData];
    }

    else
    {
      [(PXComposeRecipientTableViewController *)self bootstrapPersonSuggestion:v5 withContact:v11];
    }
  }

  personSuggestionForBootstrapping = self->_personSuggestionForBootstrapping;
  self->_personSuggestionForBootstrapping = 0;

  indexPathForBootstrapping = self->_indexPathForBootstrapping;
  self->_indexPathForBootstrapping = 0;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  [(PXComposeRecipientTableViewController *)self _contactViewController:a3 didSelectContact:a4];
  v5 = [(PXComposeRecipientTableViewController *)self delegate];
  [v5 dismissPresentedViewControllerAnimated:1 forComposeRecipientTableViewController:self];
}

- (void)_dismissRecipientViewController:(id)a3
{
  v5 = a3;
  bootstrapRecipientViewController = self->_bootstrapRecipientViewController;
  v12 = v5;
  if (bootstrapRecipientViewController == v5)
  {
    self->_bootstrapRecipientViewController = 0;

    personSuggestionForBootstrapping = self->_personSuggestionForBootstrapping;
    self->_personSuggestionForBootstrapping = 0;

    p_indexPathForBootstrapping = &self->_indexPathForBootstrapping;
    indexPathForBootstrapping = self->_indexPathForBootstrapping;
  }

  else
  {
    p_indexPathForBootstrapping = &self->_addPeopleRecipientViewController;
    indexPathForBootstrapping = self->_addPeopleRecipientViewController;
    if (indexPathForBootstrapping != v5)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:497 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  *p_indexPathForBootstrapping = 0;

  v11 = [(PXComposeRecipientTableViewController *)self delegate];
  [v11 dismissPresentedViewControllerAnimated:1 forComposeRecipientTableViewController:self];
}

- (void)photoRecipientViewController:(id)a3 didCompleteWithRecipients:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v8 count])
  {
    goto LABEL_16;
  }

  if (self->_bootstrapRecipientViewController == v7)
  {
    if ([v8 count] != 1)
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:447 description:{@"Invalid parameter not satisfying: %@", @"recipients.count == 1"}];
    }

    v11 = [v8 firstObject];
    v12 = self->_personSuggestionForBootstrapping;
    v13 = [v11 contact];
    v10 = v13 != 0;
    if (v13)
    {
      if (!+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
      {
        [(PXComposeRecipientTableViewController *)self bootstrapPersonSuggestion:v12 withContact:v13];
        goto LABEL_14;
      }

      v14 = [[PXComposeRecipient alloc] initWithPersonSuggestion:v12 contact:v13];
      v15 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
      [v15 replaceComposeRecipientAtIndex:-[NSIndexPath row](self->_indexPathForBootstrapping withNewComposeRecipient:{"row"), v14}];
      v16 = [(PXComposeRecipientTableViewController *)self tableView];
      [v16 reloadData];
    }

    else
    {
      v14 = PLSharingGetLog();
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v12;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_1A3C1C000, &v14->super, OS_LOG_TYPE_ERROR, "Failed to bootstrap Person Suggestion %@ with recipient %@ because of no associated contact", buf, 0x16u);
      }
    }

LABEL_14:
    goto LABEL_15;
  }

  if (self->_addPeopleRecipientViewController != v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:469 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
  [v9 addRecipients:v8];

  v10 = 1;
LABEL_15:
  v17 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
  v18 = [v17 dataSource];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __96__PXComposeRecipientTableViewController_photoRecipientViewController_didCompleteWithRecipients___block_invoke;
  v22[3] = &unk_1E7735C48;
  v23 = v18;
  v24 = self;
  v19 = v18;
  [v8 enumerateObjectsUsingBlock:v22];

  if (v10)
  {
LABEL_16:
    [(PXComposeRecipientTableViewController *)self _dismissRecipientViewController:v7];
  }
}

uint64_t __96__PXComposeRecipientTableViewController_photoRecipientViewController_didCompleteWithRecipients___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) indexOfComposeRecipientForRecipient:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    v5 = *(*(a1 + 40) + 1104);

    return [v5 setSelectedState:1 atIndex:v4];
  }

  return result;
}

- (void)_contentSizeCategoryDidChange:(id)a3
{
  v4 = [(PXComposeRecipientTableViewController *)self _updateHeaderHeight];
  v5 = [(PXComposeRecipientTableViewController *)self _updateFooterHeight];
  v6 = [(PXComposeRecipientTableViewController *)self _updateRowHeight];
  if (v4 || v5 || v6)
  {
    [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
    v7 = [(PXComposeRecipientTableViewController *)self tableView];
    [v7 reloadData];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXComposeRecipientTableViewModelObservationContext != a5)
  {
    goto LABEL_9;
  }

  v13 = v8;
  if ((v6 & 0x20) != 0)
  {
    v9 = [(PXComposeRecipientTableViewController *)self _updateHeaderHeight];
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v9 = 0;
    if ((v6 & 0x40) != 0)
    {
LABEL_4:
      v10 = [(PXComposeRecipientTableViewController *)self _updateFooterHeight];
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_7:
  v11 = v9 || v10;
  v8 = v13;
  if (v11)
  {
    [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
    v12 = [(PXComposeRecipientTableViewController *)self tableView];
    [v12 reloadData];

    v8 = v13;
  }

LABEL_9:
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    viewModel = self->_viewModel;
    v7 = a5;
    v9 = [(PXComposeRecipientTableViewModel *)viewModel composeRecipientDataSourceManager];
    v8 = [v7 item];

    [v9 deleteComposeRecipientAtIndex:v8];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 item];
  v10 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
  v11 = [v10 dataSource];

  v12 = [v11 composeRecipients];
  if (v9 >= [v12 count])
  {
    [(PXComposeRecipientTableViewController *)self _handleAddRecipient:0];
  }

  else
  {
    v48 = a2;
    v13 = [v12 objectAtIndexedSubscript:v9];
    v14 = [v13 recipient];
    v15 = [v13 personSuggestion];
    v49 = v15;
    v50 = v14;
    if (v14)
    {
      v16 = self->_selectionManager;
      v17 = [(PXComposeRecipientSelectionManager *)v16 selectionSnapshot];
      v18 = [v17 selectedComposeRecipients];
      v19 = [v18 containsObject:v13] ^ 1;

      [(PXComposeRecipientSelectionManager *)v16 setSelectedState:v19 atIndex:v9];
      v20 = [v7 cellForRowAtIndexPath:v8];

      v21 = [v20 cellModel];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v60[3] = &__block_descriptor_33_e51_v16__0___PXComposeRecipientMutableTableCellModel__8l;
      v61 = v19;
      [v21 performChanges:v60];
    }

    else
    {
      v22 = v15;
      if (!v15)
      {
        v47 = [MEMORY[0x1E696AAA8] currentHandler];
        [v47 handleFailureInMethod:v48 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"personSuggestion"}];
      }

      objc_storeStrong(&self->_personSuggestionForBootstrapping, v22);
      objc_storeStrong(&self->_indexPathForBootstrapping, a4);
      v17 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
      v23 = MEMORY[0x1E69DC648];
      v24 = PXLocalizedStringFromTable(@"PXComposeRecipientActionSheetCancelTitle", @"PhotosUICore");
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
      v59[3] = &unk_1E7749600;
      v59[4] = self;
      v25 = [v23 actionWithTitle:v24 style:1 handler:v59];
      [v17 addAction:v25];

      v26 = MEMORY[0x1E69DC648];
      v27 = PXLocalizedStringFromTable(@"PXComposeRecipientActionSheetCreateNewContactTitle", @"PhotosUICore");
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v55[3] = &unk_1E7740CA8;
      v28 = v22;
      v56 = v28;
      v57 = self;
      v58 = v48;
      v29 = [v26 actionWithTitle:v27 style:0 handler:v55];
      [v17 addAction:v29];

      v30 = MEMORY[0x1E69DC648];
      v31 = PXLocalizedStringFromTable(@"PXComposeRecipientActionSheetAddToExistingContactTitle", @"PhotosUICore");
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
      v51[3] = &unk_1E7740CA8;
      v52 = v28;
      v53 = self;
      v54 = v48;
      v32 = [v30 actionWithTitle:v31 style:0 handler:v51];
      [v17 addAction:v32];

      v33 = [v7 cellForRowAtIndexPath:v8];
      v34 = v33;
      if (v33)
      {
        v35 = [v33 popoverSourceView];
      }

      else
      {
        v35 = 0;
      }

      v36 = [v17 popoverPresentationController];
      [v36 setSourceView:v35];

      [v35 bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v45 = [v17 popoverPresentationController];
      [v45 setSourceRect:{v38, v40, v42, v44}];

      v46 = [(PXComposeRecipientTableViewController *)self delegate];
      [v46 presentViewController:v17 animated:1 forComposeRecipientTableViewController:self];
    }
  }

  [v7 deselectRowAtIndexPath:v8 animated:1];
}

void __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1048);
  *(v2 + 1048) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1056);
  *(v4 + 1056) = 0;
}

void __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E695CD58];
  v3 = [*(a1 + 32) localizedName];
  v7 = [v2 contactWithDisplayName:v3 emailOrPhoneNumber:0];

  v4 = [MEMORY[0x1E695D148] viewControllerForNewContact:v7];
  if (([MEMORY[0x1E695CE18] authorizationStatusForEntityType:0] - 1) <= 1)
  {
    [v4 setDisplayMode:1];
  }

  [v4 setDelegate:*(a1 + 40)];
  v5 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v4];
  [v5 setModalPresentationStyle:2];
  v6 = [*(a1 + 40) delegate];
  [v6 presentViewController:v5 animated:1 forComposeRecipientTableViewController:*(a1 + 40)];
}

void __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  v2 = [PXPhotoRecipientViewController alloc];
  v3 = [*(a1 + 32) localizedName];
  obj = [(PXPhotoRecipientViewController *)v2 initWithInitialLocalizedNameToQuery:v3];

  [(PXPhotoRecipientViewController *)obj setDelegate:*(a1 + 40)];
  v4 = PXLocalizedStringFromTable(@"PXPhotoRecipientAddLabelTitle", @"PhotosUICore");
  [(PXPhotoRecipientViewController *)obj setToLabel:v4];

  [(PXPhotoRecipientViewController *)obj setMaxRecipients:1];
  objc_storeStrong((*(a1 + 40) + 1040), obj);
  v5 = [*(a1 + 32) localizedName];
  v6 = [v5 length];

  if (v6)
  {
    PXLocalizedStringFromTable(@"PXComposeRecipientPickerBootstrapWithLocalizedNamePrompt", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    [*(a1 + 32) localizedName];
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  v7 = PXLocalizedStringFromTable(@"PXComposeRecipientPickerBootstrapPrompt", @"PhotosUICore");
  [(PXPhotoRecipientViewController *)obj setTitle:v7];
  v8 = [PXComposeRecipientTableViewController contactViewControllerToPresentForRecipientViewController:obj];
  v9 = [*(a1 + 40) delegate];
  [v9 presentViewController:v8 animated:1 forComposeRecipientTableViewController:*(a1 + 40)];
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = [(PXComposeRecipientTableViewController *)self _footerView:a3];
  v6 = [(PXComposeRecipientTableViewModel *)self->_viewModel footerTitle];
  _ConfigureFooterView(v5, v6);

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  viewModel = self->_viewModel;
  v7 = a4;
  v8 = a3;
  v9 = [(PXComposeRecipientTableViewModel *)viewModel composeRecipientDataSourceManager];
  v10 = [v9 dataSource];

  v11 = [v10 composeRecipients];
  v12 = [v11 count];

  if ([v7 item] >= v12)
  {
    [v8 dequeueReusableCellWithIdentifier:@"PXComposeRecipientAddRecipientTableViewCellReuseIdentifier" forIndexPath:v7];
  }

  else
  {
    [(PXComposeRecipientTableViewController *)self _tableView:v8 participantCellForRowAtIndexPath:v7];
  }
  v13 = ;

  if ([(PXComposeRecipientTableViewModel *)self->_viewModel useGroupedBackgroundColor])
  {
    v14 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v13 setBackgroundColor:v14];
  }

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager:a3];
  v6 = [v5 dataSource];

  v7 = [v6 composeRecipients];
  v8 = [v7 count];

  v9 = v8 + [(PXComposeRecipientTableViewModel *)self->_viewModel canAddRecipients];
  return v9;
}

- (id)_tableView:(id)a3 participantCellForRowAtIndexPath:(id)a4
{
  v7 = a4;
  v8 = [a3 dequeueReusableCellWithIdentifier:@"PXComposeRecipientTableViewCellReuseIdentifier" forIndexPath:v7];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    v20 = [v8 px_descriptionForAssertionMessage];
    [v16 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:236 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[tableView dequeueReusableCellWithIdentifier:PXComposeRecipientTableViewCellReuseIdentifier forIndexPath:indexPath]", v18, v20}];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [v16 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:236 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[tableView dequeueReusableCellWithIdentifier:PXComposeRecipientTableViewCellReuseIdentifier forIndexPath:indexPath]", v18}];
  }

LABEL_3:
  v9 = [v8 cellModel];
  v10 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
  v11 = [v10 dataSource];

  v12 = [v11 composeRecipients];
  v13 = [v7 item];

  v14 = [v12 objectAtIndexedSubscript:v13];

  [(PXComposeRecipientTableViewController *)self configureCellModel:v9 withComposeRecipient:v14];

  return v8;
}

- (BOOL)_updateFooterHeight
{
  v3 = [(PXComposeRecipientTableViewController *)self _footerView];
  v4 = [v3 superview];

  if (!v4)
  {
    v5 = [(PXComposeRecipientTableViewController *)self tableView];
    [v5 frame];
    [v3 setFrame:{0.0, 0.0}];
  }

  v6 = [(PXComposeRecipientTableViewModel *)self->_viewModel footerTitle];
  _ConfigureFooterView(v3, v6);

  v7 = v3;
  [v7 frame];
  v8 = 0.0;
  if (v9 > 0.0)
  {
    v10 = [v7 textLabel];
    v11 = [v10 text];
    v12 = [v11 length];

    if (v12)
    {
      [v7 layoutIfNeeded];
      [v10 bounds];
      [v10 sizeThatFits:{v13, 1.79769313e308}];
      v8 = v14 + 16.0;
    }
  }

  [(PXComposeRecipientTableViewController *)self footerHeight];
  v16 = v15;
  if (v15 != v8)
  {
    [(PXComposeRecipientTableViewController *)self setFooterHeight:v8];
  }

  return v16 != v8;
}

- (id)_footerView
{
  footerView = self->_footerView;
  if (!footerView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD050]);
    v5 = self->_footerView;
    self->_footerView = v4;

    footerView = self->_footerView;
  }

  return footerView;
}

- (BOOL)_updateHeaderHeight
{
  if (_updateHeaderHeight_onceToken != -1)
  {
    dispatch_once(&_updateHeaderHeight_onceToken, &__block_literal_global_81330);
  }

  v3 = [(PXComposeRecipientTableViewModel *)self->_viewModel headerTitle];
  [_updateHeaderHeight_measuringLabel setText:v3];

  PXCappedFontWithTextStyle();
}

uint64_t __60__PXComposeRecipientTableViewController__updateHeaderHeight__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v1 = _updateHeaderHeight_measuringLabel;
  _updateHeaderHeight_measuringLabel = v0;

  v2 = _updateHeaderHeight_measuringLabel;

  return [v2 setNumberOfLines:0];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PXComposeRecipientTableViewController;
  [(PXComposeRecipientTableViewController *)&v6 viewWillLayoutSubviews];
  v3 = [(PXComposeRecipientTableViewController *)self _updateHeaderHeight];
  v4 = [(PXComposeRecipientTableViewController *)self _updateFooterHeight];
  if (v3 || v4)
  {
    [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
    v5 = [(PXComposeRecipientTableViewController *)self tableView];
    [v5 reloadData];
  }
}

- (void)_handleAddRecipient:(id)a3
{
  v4 = objc_alloc_init(PXPhotoRecipientViewController);
  v5 = PXLocalizedStringFromTable(@"PXPhotoRecipientAddLabelTitle", @"PhotosUICore");
  [(PXPhotoRecipientViewController *)v4 setToLabel:v5];

  v6 = PXLocalizedStringFromTable(@"PXComposeRecipientAddPeople", @"PhotosUICore");
  [(PXPhotoRecipientViewController *)v4 setTitle:v6];

  [(PXPhotoRecipientViewController *)v4 setDelegate:self];
  addPeopleRecipientViewController = self->_addPeopleRecipientViewController;
  self->_addPeopleRecipientViewController = v4;
  v8 = v4;

  v10 = [(PXComposeRecipientTableViewController *)self delegate];
  v9 = [PXComposeRecipientTableViewController contactViewControllerToPresentForRecipientViewController:v8];

  [v10 presentViewController:v9 animated:1 forComposeRecipientTableViewController:self];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v5 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setDataSource:self];
  [v5 setDelegate:self];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXComposeRecipientTableViewCellReuseIdentifier"];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXComposeRecipientAddRecipientTableViewCellReuseIdentifier"];
  [(PXComposeRecipientTableViewController *)self setView:v5];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  [(PXComposeRecipientTableViewController *)self _updateHeaderHeight];
  [(PXComposeRecipientTableViewController *)self _updateFooterHeight];
  [(PXComposeRecipientTableViewController *)self _updateRowHeight];
  [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
}

- (PXComposeRecipientTableViewController)initWithViewModel:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v10.receiver = self;
  v10.super_class = PXComposeRecipientTableViewController;
  v6 = [(PXComposeRecipientTableViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(PXComposeRecipientTableViewController *)v6 configureWithViewModel:v5];
  }

  return v7;
}

- (PXComposeRecipientTableViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewController initWithCoder:]"}];

  abort();
}

- (PXComposeRecipientTableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:76 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXComposeRecipientTableViewController)initWithStyle:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:72 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewController initWithStyle:]"}];

  abort();
}

- (PXComposeRecipientTableViewController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:68 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewController init]"}];

  abort();
}

+ (id)contactViewControllerToPresentForRecipientViewController:(id)a3
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695D120]);
    [v4 setMode:1];
    [v4 setDelegate:v3];
    v5 = *MEMORY[0x1E695C208];
    v10[0] = *MEMORY[0x1E695C330];
    v10[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
    [v4 setDisplayedPropertyKeys:v6];
    [v4 setAllowsEditing:1];
    v7 = PXLocalizedStringFromTable(@"PXComposeRecipientPickerBootstrapPrompt", @"PhotosUICore");
    [v4 setPrompt:v7];
    v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(emailAddresses.@count == 1 AND phoneNumbers.@count == 0) OR (emailAddresses.@count == 0 AND phoneNumbers.@count == 1)"];
    [v4 setPredicateForSelectionOfContact:v8];
    [v3 setContactPickerViewController:v4];
    [v3 setContactPickerPresentedExternally:1];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v3];

    [v4 setModalPresentationStyle:2];
  }

  return v4;
}

- (void)composeRecipientValidationManager:(id)a3 didUpdateValidationWithChangedIndexes:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __123__PXComposeRecipientTableViewController_Internal__composeRecipientValidationManager_didUpdateValidationWithChangedIndexes___block_invoke;
  v4[3] = &unk_1E774C138;
  v4[4] = self;
  [a4 enumerateIndexesUsingBlock:v4];
}

void __123__PXComposeRecipientTableViewController_Internal__composeRecipientValidationManager_didUpdateValidationWithChangedIndexes___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) viewModel];
  v5 = [v4 composeRecipientDataSourceManager];
  v6 = [v5 dataSource];

  v7 = [v6 composeRecipients];
  v8 = [v7 objectAtIndexedSubscript:a2];

  LOBYTE(v7) = [*(a1 + 32) isValidAddressForComposeRecipient:v8];
  v9 = [*(a1 + 32) cellModelAtIndex:a2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __123__PXComposeRecipientTableViewController_Internal__composeRecipientValidationManager_didUpdateValidationWithChangedIndexes___block_invoke_2;
  v10[3] = &__block_descriptor_33_e51_v16__0___PXComposeRecipientMutableTableCellModel__8l;
  v11 = v7;
  [v9 performChanges:v10];
}

- (void)composeRecipientDataSourceManager:(id)a3 didUpdateDataSourceWithChangeDetails:(id)a4
{
  v6 = a4;
  v10 = [a3 dataSource];
  v7 = [(PXComposeRecipientTableViewController *)self selectionManager];
  [v7 setDataSource:v10 changeDetails:v6];

  v8 = [(PXComposeRecipientTableViewController *)self validationManager];
  [v8 setDataSource:v10 changeDetails:v6];

  v9 = [(PXComposeRecipientTableViewController *)self tableView];
  [v9 reloadData];

  [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
}

- (void)composeRecipientSelectionManager:(id)a3 didUpdateSelectionSnapshotWithChangeDetails:(id)a4
{
  v5 = [a3 selectionSnapshot];
  v6 = [v5 selectedComposeRecipients];
  v7 = [(PXComposeRecipientTableViewController *)self viewModel];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __128__PXComposeRecipientTableViewController_Internal__composeRecipientSelectionManager_didUpdateSelectionSnapshotWithChangeDetails___block_invoke;
  v17[3] = &unk_1E773B238;
  v18 = v5;
  v8 = v6;
  v19 = v8;
  v9 = v5;
  [v7 performChanges:v17];
  v10 = [v7 composeRecipientDataSourceManager];
  v11 = [v10 dataSource];

  v12 = [v11 composeRecipients];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __128__PXComposeRecipientTableViewController_Internal__composeRecipientSelectionManager_didUpdateSelectionSnapshotWithChangeDetails___block_invoke_2;
  v14[3] = &unk_1E773B2F8;
  v15 = v8;
  v16 = self;
  v13 = v8;
  [v12 enumerateObjectsUsingBlock:v14];
}

void __128__PXComposeRecipientTableViewController_Internal__composeRecipientSelectionManager_didUpdateSelectionSnapshotWithChangeDetails___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 selectedRecipients];
  [v5 setRecipients:v4];

  [v5 setComposeRecipients:*(a1 + 40)];
}

void __128__PXComposeRecipientTableViewController_Internal__composeRecipientSelectionManager_didUpdateSelectionSnapshotWithChangeDetails___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) containsObject:a2];
  v6 = [*(a1 + 40) cellModelAtIndex:a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __128__PXComposeRecipientTableViewController_Internal__composeRecipientSelectionManager_didUpdateSelectionSnapshotWithChangeDetails___block_invoke_3;
  v7[3] = &__block_descriptor_33_e51_v16__0___PXComposeRecipientMutableTableCellModel__8l;
  v8 = v5;
  [v6 performChanges:v7];
}

- (void)updateTableViewHeight
{
  v3 = [(PXComposeRecipientTableViewController *)self tableView];
  v4 = [(PXComposeRecipientTableViewController *)self tableView:v3 numberOfRowsInSection:0];

  [(PXComposeRecipientTableViewController *)self headerHeight];
  v6 = v5;
  v7 = [(PXComposeRecipientTableViewController *)self tableView];
  [v7 rowHeight];
  v9 = v6 + fmax(v8, 0.0) * v4;
  [(PXComposeRecipientTableViewController *)self footerHeight];
  v11 = v10 + v9;

  [(PXComposeRecipientTableViewController *)self tableViewHeight];
  if (v12 != v11)
  {
    [(PXComposeRecipientTableViewController *)self setTableViewHeight:v11];
    v13 = [(PXComposeRecipientTableViewController *)self delegate];
    v14 = v13;
    if (v13)
    {
      v16 = v13;
      v15 = objc_opt_respondsToSelector();
      v14 = v16;
      if (v15)
      {
        [v16 composeRecipientTableViewControllerDidChangeHeight:self];
        v14 = v16;
      }
    }
  }
}

- (void)bootstrapPersonSuggestion:(id)a3 withContact:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
LABEL_3:
      v17 = 0;
      v10 = v7;
      v11 = v9;
      goto LABEL_4;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"personSuggestion"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

  v17 = 0;
  v10 = v7;
  v11 = 0;
LABEL_4:
  v12 = PXBootstrapPersonSuggestionWithContact(v10, v11, &v17);
  v13 = v17;
  if ((v12 & 1) == 0)
  {
    v14 = PLSharingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Failed to bootstrap Person Suggestion %@ with Contact %@ because of error: %@", buf, 0x20u);
    }
  }
}

- (void)configureCellModel:(id)a3 withComposeRecipient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v45 = v7;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"cellModel"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  [v41 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"composeRecipient"}];

LABEL_3:
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__124671;
  v68[4] = __Block_byref_object_dispose__124672;
  v69 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = -1;
  v10 = [v9 recipient];
  v43 = [(PXComposeRecipientTableViewController *)self viewModel];
  v11 = [v9 personSuggestion];
  v12 = v11;
  if (v11)
  {
    v44 = [v11 localizedName];
    v13 = [(PXComposeRecipientTableViewController *)self traitCollection];
    [v13 displayScale];
    v15 = v14;

    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 1;
    v16 = [v43 peopleSuggestionsMediaProvider];
    +[PXComposeRecipientTableCellModel imageDiameter];
    v18 = v17;
    +[PXComposeRecipientTableCellModel imageDiameter];
    v20 = v19;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __91__PXComposeRecipientTableViewController_Internal__configureCellModel_withComposeRecipient___block_invoke;
    v55[3] = &unk_1E773B288;
    v57 = &v60;
    v58 = v68;
    v59 = &v64;
    v56 = v45;
    v21 = [v16 requestImageForPersonSuggestion:v12 targetSize:0 displayScale:0 cropFactor:v55 cornerStyle:v18 resultHandler:{v20, v15}];
    v65[3] = v21;
    *(v61 + 24) = 0;

    _Block_object_dispose(&v60, 8);
    v42 = 0;
  }

  else
  {
    v42 = [v10 contact];
    v44 = 0;
  }

  v22 = [v10 suggestedTransport];
  v23 = [v22 address];
  if ([v23 length])
  {
    v24 = [(PXComposeRecipientTableViewController *)self isValidAddressForComposeRecipient:v9];
  }

  else
  {
    v24 = 0;
  }

  v25 = [v10 localizedName];
  v26 = v25;
  v27 = v44;
  if (v25)
  {
    v27 = v25;
  }

  v28 = v27;

  if (v28 && [v28 length] || (PXLocalizedStringFromTable(@"PXComposeRecipientTableViewMissingLocalizedNameMessage", @"PhotosUICore"), v29 = objc_claimAutoreleasedReturnValue(), v28, (v28 = v29) != 0))
  {
    v28 = v28;
    v30 = v23;
    v31 = v30;
    if (v28 == v30)
    {
    }

    else
    {
      v32 = [v28 isEqualToString:v30];

      if (!v32)
      {
        goto LABEL_19;
      }
    }

    v28 = 0;
  }

LABEL_19:
  v33 = [(PXComposeRecipientTableViewController *)self selectionManager];
  v34 = [v33 selectionSnapshot];

  v35 = [v34 selectedComposeRecipients];
  LOBYTE(v33) = [v35 containsObject:v9];

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __91__PXComposeRecipientTableViewController_Internal__configureCellModel_withComposeRecipient___block_invoke_4;
  v46[3] = &unk_1E773B2B0;
  v51 = v68;
  v52 = &v64;
  v36 = v28;
  v47 = v36;
  v37 = v23;
  v48 = v37;
  v53 = v24;
  v54 = v33;
  v38 = v43;
  v49 = v38;
  v39 = v42;
  v50 = v39;
  [v45 performChanges:v46];

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(v68, 8);
}

void __91__PXComposeRecipientTableViewController_Internal__configureCellModel_withComposeRecipient___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    v4;
    *(a1 + 32);
    px_dispatch_on_main_queue();
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
}

void __91__PXComposeRecipientTableViewController_Internal__configureCellModel_withComposeRecipient___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = a2;
  [v4 setImage:v3];
  [v4 setImageRequestID:*(*(*(a1 + 72) + 8) + 24)];
  [v4 setName:*(a1 + 32)];
  [v4 setAddress:*(a1 + 40)];
  [v4 setIsValidAddress:*(a1 + 80)];
  [v4 setChecked:*(a1 + 81)];
  [v4 setShowsCheckbox:{objc_msgSend(*(a1 + 48), "canSelectRecipients")}];
  [v4 setContact:*(a1 + 56)];
}

void __91__PXComposeRecipientTableViewController_Internal__configureCellModel_withComposeRecipient___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(*(a1 + 48) + 8) + 24);
    if (v2 == [*(a1 + 40) imageRequestID])
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __91__PXComposeRecipientTableViewController_Internal__configureCellModel_withComposeRecipient___block_invoke_3;
      v4[3] = &unk_1E773B260;
      v3 = *(a1 + 40);
      v5 = *(a1 + 32);
      [v3 performChanges:v4];
    }
  }
}

- (id)cellModelAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AC88] px_indexPathForItem:a3 inSection:0];
  v5 = [(PXComposeRecipientTableViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  v7 = [v6 cellModel];

  return v7;
}

- (BOOL)isValidAddressForComposeRecipient:(id)a3
{
  v4 = a3;
  v5 = [(PXComposeRecipientTableViewController *)self validationManager];
  v6 = [v5 validationTypeForComposeRecipient:v4];

  return v6 == 1;
}

- (void)configureWithViewModel:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  [(PXComposeRecipientTableViewController *)self setViewModel:v5];
  [v5 registerChangeObserver:self context:PXComposeRecipientTableViewModelObservationContext];
  v6 = [v5 composeRecipientDataSourceManager];
  v7 = [v5 recipients];
  [v6 addRecipients:v7];

  [v6 setDelegate:self];
  v8 = [v6 dataSource];
  v9 = [[PXComposeRecipientSelectionManager alloc] initWithDataSource:v8];
  [(PXComposeRecipientSelectionManager *)v9 selectAll];
  [(PXComposeRecipientSelectionManager *)v9 setDelegate:self];
  [(PXComposeRecipientTableViewController *)self setSelectionManager:v9];
  v10 = [(PXComposeRecipientSelectionManager *)v9 selectionSnapshot];
  v11 = [v10 selectedComposeRecipients];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PXComposeRecipientTableViewController_Internal__configureWithViewModel___block_invoke;
  v16[3] = &unk_1E773B238;
  v17 = v10;
  v18 = v11;
  v12 = v11;
  v13 = v10;
  [v5 performChanges:v16];
  v14 = [[PXComposeRecipientValidationManager alloc] initWithDataSource:v8];
  [(PXComposeRecipientValidationManager *)v14 setDelegate:self];
  [(PXComposeRecipientTableViewController *)self setValidationManager:v14];
}

void __74__PXComposeRecipientTableViewController_Internal__configureWithViewModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 selectedRecipients];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [v9 setRecipients:v7];

  if (*(a1 + 40))
  {
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = v6;
  }

  [v9 setComposeRecipients:v8];
}

@end