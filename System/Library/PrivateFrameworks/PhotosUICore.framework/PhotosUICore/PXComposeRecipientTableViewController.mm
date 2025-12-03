@interface PXComposeRecipientTableViewController
+ (id)contactViewControllerToPresentForRecipientViewController:(id)controller;
- (BOOL)_updateFooterHeight;
- (BOOL)_updateHeaderHeight;
- (BOOL)isValidAddressForComposeRecipient:(id)recipient;
- (PXComposeRecipientTableViewController)init;
- (PXComposeRecipientTableViewController)initWithCoder:(id)coder;
- (PXComposeRecipientTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXComposeRecipientTableViewController)initWithStyle:(int64_t)style;
- (PXComposeRecipientTableViewController)initWithViewModel:(id)model;
- (PXComposeRecipientTableViewControllerDelegate)delegate;
- (id)_footerView;
- (id)_tableView:(id)view participantCellForRowAtIndexPath:(id)path;
- (id)cellModelAtIndex:(unint64_t)index;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_contactViewController:(id)controller didSelectContact:(id)contact;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)_dismissRecipientViewController:(id)controller;
- (void)_handleAddRecipient:(id)recipient;
- (void)bootstrapPersonSuggestion:(id)suggestion withContact:(id)contact;
- (void)composeRecipientDataSourceManager:(id)manager didUpdateDataSourceWithChangeDetails:(id)details;
- (void)composeRecipientSelectionManager:(id)manager didUpdateSelectionSnapshotWithChangeDetails:(id)details;
- (void)composeRecipientValidationManager:(id)manager didUpdateValidationWithChangedIndexes:(id)indexes;
- (void)configureCellModel:(id)model withComposeRecipient:(id)recipient;
- (void)configureWithViewModel:(id)model;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)loadView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateTableViewHeight;
- (void)viewWillLayoutSubviews;
@end

@implementation PXComposeRecipientTableViewController

- (PXComposeRecipientTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_contactViewController:(id)controller didSelectContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v5 = self->_personSuggestionForBootstrapping;
    if (+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
    {
      v6 = [[PXComposeRecipient alloc] initWithPersonSuggestion:v5 contact:contactCopy];
      composeRecipientDataSourceManager = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
      [composeRecipientDataSourceManager replaceComposeRecipientAtIndex:-[NSIndexPath row](self->_indexPathForBootstrapping withNewComposeRecipient:{"row"), v6}];
      tableView = [(PXComposeRecipientTableViewController *)self tableView];
      [tableView reloadData];
    }

    else
    {
      [(PXComposeRecipientTableViewController *)self bootstrapPersonSuggestion:v5 withContact:contactCopy];
    }
  }

  personSuggestionForBootstrapping = self->_personSuggestionForBootstrapping;
  self->_personSuggestionForBootstrapping = 0;

  indexPathForBootstrapping = self->_indexPathForBootstrapping;
  self->_indexPathForBootstrapping = 0;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  [(PXComposeRecipientTableViewController *)self _contactViewController:controller didSelectContact:contact];
  delegate = [(PXComposeRecipientTableViewController *)self delegate];
  [delegate dismissPresentedViewControllerAnimated:1 forComposeRecipientTableViewController:self];
}

- (void)_dismissRecipientViewController:(id)controller
{
  controllerCopy = controller;
  bootstrapRecipientViewController = self->_bootstrapRecipientViewController;
  v12 = controllerCopy;
  if (bootstrapRecipientViewController == controllerCopy)
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
    if (indexPathForBootstrapping != controllerCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:497 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  *p_indexPathForBootstrapping = 0;

  delegate = [(PXComposeRecipientTableViewController *)self delegate];
  [delegate dismissPresentedViewControllerAnimated:1 forComposeRecipientTableViewController:self];
}

- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients
{
  v29 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  recipientsCopy = recipients;
  if (![recipientsCopy count])
  {
    goto LABEL_16;
  }

  if (self->_bootstrapRecipientViewController == controllerCopy)
  {
    if ([recipientsCopy count] != 1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:447 description:{@"Invalid parameter not satisfying: %@", @"recipients.count == 1"}];
    }

    firstObject = [recipientsCopy firstObject];
    v12 = self->_personSuggestionForBootstrapping;
    contact = [firstObject contact];
    v10 = contact != 0;
    if (contact)
    {
      if (!+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
      {
        [(PXComposeRecipientTableViewController *)self bootstrapPersonSuggestion:v12 withContact:contact];
        goto LABEL_14;
      }

      v14 = [[PXComposeRecipient alloc] initWithPersonSuggestion:v12 contact:contact];
      composeRecipientDataSourceManager = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
      [composeRecipientDataSourceManager replaceComposeRecipientAtIndex:-[NSIndexPath row](self->_indexPathForBootstrapping withNewComposeRecipient:{"row"), v14}];
      tableView = [(PXComposeRecipientTableViewController *)self tableView];
      [tableView reloadData];
    }

    else
    {
      v14 = PLSharingGetLog();
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v26 = v12;
        v27 = 2112;
        v28 = firstObject;
        _os_log_impl(&dword_1A3C1C000, &v14->super, OS_LOG_TYPE_ERROR, "Failed to bootstrap Person Suggestion %@ with recipient %@ because of no associated contact", buf, 0x16u);
      }
    }

LABEL_14:
    goto LABEL_15;
  }

  if (self->_addPeopleRecipientViewController != controllerCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:469 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  composeRecipientDataSourceManager2 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
  [composeRecipientDataSourceManager2 addRecipients:recipientsCopy];

  v10 = 1;
LABEL_15:
  composeRecipientDataSourceManager3 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
  dataSource = [composeRecipientDataSourceManager3 dataSource];

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __96__PXComposeRecipientTableViewController_photoRecipientViewController_didCompleteWithRecipients___block_invoke;
  v22[3] = &unk_1E7735C48;
  v23 = dataSource;
  selfCopy = self;
  v19 = dataSource;
  [recipientsCopy enumerateObjectsUsingBlock:v22];

  if (v10)
  {
LABEL_16:
    [(PXComposeRecipientTableViewController *)self _dismissRecipientViewController:controllerCopy];
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

- (void)_contentSizeCategoryDidChange:(id)change
{
  _updateHeaderHeight = [(PXComposeRecipientTableViewController *)self _updateHeaderHeight];
  _updateFooterHeight = [(PXComposeRecipientTableViewController *)self _updateFooterHeight];
  _updateRowHeight = [(PXComposeRecipientTableViewController *)self _updateRowHeight];
  if (_updateHeaderHeight || _updateFooterHeight || _updateRowHeight)
  {
    [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
    tableView = [(PXComposeRecipientTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXComposeRecipientTableViewModelObservationContext != context)
  {
    goto LABEL_9;
  }

  v13 = observableCopy;
  if ((changeCopy & 0x20) != 0)
  {
    _updateHeaderHeight = [(PXComposeRecipientTableViewController *)self _updateHeaderHeight];
    if ((changeCopy & 0x40) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    _updateHeaderHeight = 0;
    if ((changeCopy & 0x40) != 0)
    {
LABEL_4:
      _updateFooterHeight = [(PXComposeRecipientTableViewController *)self _updateFooterHeight];
      goto LABEL_7;
    }
  }

  _updateFooterHeight = 0;
LABEL_7:
  v11 = _updateHeaderHeight || _updateFooterHeight;
  observableCopy = v13;
  if (v11)
  {
    [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
    tableView = [(PXComposeRecipientTableViewController *)self tableView];
    [tableView reloadData];

    observableCopy = v13;
  }

LABEL_9:
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    viewModel = self->_viewModel;
    pathCopy = path;
    composeRecipientDataSourceManager = [(PXComposeRecipientTableViewModel *)viewModel composeRecipientDataSourceManager];
    item = [pathCopy item];

    [composeRecipientDataSourceManager deleteComposeRecipientAtIndex:item];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  item = [pathCopy item];
  composeRecipientDataSourceManager = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
  dataSource = [composeRecipientDataSourceManager dataSource];

  composeRecipients = [dataSource composeRecipients];
  if (item >= [composeRecipients count])
  {
    [(PXComposeRecipientTableViewController *)self _handleAddRecipient:0];
  }

  else
  {
    v48 = a2;
    v13 = [composeRecipients objectAtIndexedSubscript:item];
    recipient = [v13 recipient];
    personSuggestion = [v13 personSuggestion];
    v49 = personSuggestion;
    v50 = recipient;
    if (recipient)
    {
      v16 = self->_selectionManager;
      selectionSnapshot = [(PXComposeRecipientSelectionManager *)v16 selectionSnapshot];
      selectedComposeRecipients = [selectionSnapshot selectedComposeRecipients];
      v19 = [selectedComposeRecipients containsObject:v13] ^ 1;

      [(PXComposeRecipientSelectionManager *)v16 setSelectedState:v19 atIndex:item];
      v20 = [viewCopy cellForRowAtIndexPath:pathCopy];

      cellModel = [v20 cellModel];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v60[3] = &__block_descriptor_33_e51_v16__0___PXComposeRecipientMutableTableCellModel__8l;
      v61 = v19;
      [cellModel performChanges:v60];
    }

    else
    {
      v22 = personSuggestion;
      if (!personSuggestion)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:v48 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"personSuggestion"}];
      }

      objc_storeStrong(&self->_personSuggestionForBootstrapping, v22);
      objc_storeStrong(&self->_indexPathForBootstrapping, path);
      selectionSnapshot = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
      v23 = MEMORY[0x1E69DC648];
      v24 = PXLocalizedStringFromTable(@"PXComposeRecipientActionSheetCancelTitle", @"PhotosUICore");
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
      v59[3] = &unk_1E7749600;
      v59[4] = self;
      v25 = [v23 actionWithTitle:v24 style:1 handler:v59];
      [selectionSnapshot addAction:v25];

      v26 = MEMORY[0x1E69DC648];
      v27 = PXLocalizedStringFromTable(@"PXComposeRecipientActionSheetCreateNewContactTitle", @"PhotosUICore");
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
      v55[3] = &unk_1E7740CA8;
      v28 = v22;
      v56 = v28;
      selfCopy = self;
      v58 = v48;
      v29 = [v26 actionWithTitle:v27 style:0 handler:v55];
      [selectionSnapshot addAction:v29];

      v30 = MEMORY[0x1E69DC648];
      v31 = PXLocalizedStringFromTable(@"PXComposeRecipientActionSheetAddToExistingContactTitle", @"PhotosUICore");
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __75__PXComposeRecipientTableViewController_tableView_didSelectRowAtIndexPath___block_invoke_4;
      v51[3] = &unk_1E7740CA8;
      v52 = v28;
      selfCopy2 = self;
      v54 = v48;
      v32 = [v30 actionWithTitle:v31 style:0 handler:v51];
      [selectionSnapshot addAction:v32];

      v33 = [viewCopy cellForRowAtIndexPath:pathCopy];
      v34 = v33;
      if (v33)
      {
        popoverSourceView = [v33 popoverSourceView];
      }

      else
      {
        popoverSourceView = 0;
      }

      popoverPresentationController = [selectionSnapshot popoverPresentationController];
      [popoverPresentationController setSourceView:popoverSourceView];

      [popoverSourceView bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      popoverPresentationController2 = [selectionSnapshot popoverPresentationController];
      [popoverPresentationController2 setSourceRect:{v38, v40, v42, v44}];

      delegate = [(PXComposeRecipientTableViewController *)self delegate];
      [delegate presentViewController:selectionSnapshot animated:1 forComposeRecipientTableViewController:self];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v5 = [(PXComposeRecipientTableViewController *)self _footerView:view];
  footerTitle = [(PXComposeRecipientTableViewModel *)self->_viewModel footerTitle];
  _ConfigureFooterView(v5, footerTitle);

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewModel = self->_viewModel;
  pathCopy = path;
  viewCopy = view;
  composeRecipientDataSourceManager = [(PXComposeRecipientTableViewModel *)viewModel composeRecipientDataSourceManager];
  dataSource = [composeRecipientDataSourceManager dataSource];

  composeRecipients = [dataSource composeRecipients];
  v12 = [composeRecipients count];

  if ([pathCopy item] >= v12)
  {
    [viewCopy dequeueReusableCellWithIdentifier:@"PXComposeRecipientAddRecipientTableViewCellReuseIdentifier" forIndexPath:pathCopy];
  }

  else
  {
    [(PXComposeRecipientTableViewController *)self _tableView:viewCopy participantCellForRowAtIndexPath:pathCopy];
  }
  v13 = ;

  if ([(PXComposeRecipientTableViewModel *)self->_viewModel useGroupedBackgroundColor])
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v13 setBackgroundColor:secondarySystemBackgroundColor];
  }

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager:view];
  dataSource = [v5 dataSource];

  composeRecipients = [dataSource composeRecipients];
  v8 = [composeRecipients count];

  v9 = v8 + [(PXComposeRecipientTableViewModel *)self->_viewModel canAddRecipients];
  return v9;
}

- (id)_tableView:(id)view participantCellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v8 = [view dequeueReusableCellWithIdentifier:@"PXComposeRecipientTableViewCellReuseIdentifier" forIndexPath:pathCopy];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:236 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[tableView dequeueReusableCellWithIdentifier:PXComposeRecipientTableViewCellReuseIdentifier forIndexPath:indexPath]", v18, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:236 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[tableView dequeueReusableCellWithIdentifier:PXComposeRecipientTableViewCellReuseIdentifier forIndexPath:indexPath]", v18}];
  }

LABEL_3:
  cellModel = [v8 cellModel];
  composeRecipientDataSourceManager = [(PXComposeRecipientTableViewModel *)self->_viewModel composeRecipientDataSourceManager];
  dataSource = [composeRecipientDataSourceManager dataSource];

  composeRecipients = [dataSource composeRecipients];
  item = [pathCopy item];

  v14 = [composeRecipients objectAtIndexedSubscript:item];

  [(PXComposeRecipientTableViewController *)self configureCellModel:cellModel withComposeRecipient:v14];

  return v8;
}

- (BOOL)_updateFooterHeight
{
  _footerView = [(PXComposeRecipientTableViewController *)self _footerView];
  superview = [_footerView superview];

  if (!superview)
  {
    tableView = [(PXComposeRecipientTableViewController *)self tableView];
    [tableView frame];
    [_footerView setFrame:{0.0, 0.0}];
  }

  footerTitle = [(PXComposeRecipientTableViewModel *)self->_viewModel footerTitle];
  _ConfigureFooterView(_footerView, footerTitle);

  v7 = _footerView;
  [v7 frame];
  v8 = 0.0;
  if (v9 > 0.0)
  {
    textLabel = [v7 textLabel];
    text = [textLabel text];
    v12 = [text length];

    if (v12)
    {
      [v7 layoutIfNeeded];
      [textLabel bounds];
      [textLabel sizeThatFits:{v13, 1.79769313e308}];
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

  headerTitle = [(PXComposeRecipientTableViewModel *)self->_viewModel headerTitle];
  [_updateHeaderHeight_measuringLabel setText:headerTitle];

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
  _updateHeaderHeight = [(PXComposeRecipientTableViewController *)self _updateHeaderHeight];
  _updateFooterHeight = [(PXComposeRecipientTableViewController *)self _updateFooterHeight];
  if (_updateHeaderHeight || _updateFooterHeight)
  {
    [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
    tableView = [(PXComposeRecipientTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)_handleAddRecipient:(id)recipient
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

  delegate = [(PXComposeRecipientTableViewController *)self delegate];
  v9 = [PXComposeRecipientTableViewController contactViewControllerToPresentForRecipientViewController:v8];

  [delegate presentViewController:v9 animated:1 forComposeRecipientTableViewController:self];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  [(PXComposeRecipientTableViewController *)self _updateHeaderHeight];
  [(PXComposeRecipientTableViewController *)self _updateFooterHeight];
  [(PXComposeRecipientTableViewController *)self _updateRowHeight];
  [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
}

- (PXComposeRecipientTableViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  v10.receiver = self;
  v10.super_class = PXComposeRecipientTableViewController;
  v6 = [(PXComposeRecipientTableViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(PXComposeRecipientTableViewController *)v6 configureWithViewModel:modelCopy];
  }

  return v7;
}

- (PXComposeRecipientTableViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:80 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewController initWithCoder:]"}];

  abort();
}

- (PXComposeRecipientTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:76 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewController initWithNibName:bundle:]"}];

  abort();
}

- (PXComposeRecipientTableViewController)initWithStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:72 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewController initWithStyle:]"}];

  abort();
}

- (PXComposeRecipientTableViewController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+iOS.m" lineNumber:68 description:{@"%s is not available as initializer", "-[PXComposeRecipientTableViewController init]"}];

  abort();
}

+ (id)contactViewControllerToPresentForRecipientViewController:(id)controller
{
  v10[2] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (+[PXPeopleUtilities isGreenTeaAndContactsAccessDenied])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695D120]);
    [v4 setMode:1];
    [v4 setDelegate:controllerCopy];
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
    [controllerCopy setContactPickerViewController:v4];
    [controllerCopy setContactPickerPresentedExternally:1];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:controllerCopy];

    [v4 setModalPresentationStyle:2];
  }

  return v4;
}

- (void)composeRecipientValidationManager:(id)manager didUpdateValidationWithChangedIndexes:(id)indexes
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __123__PXComposeRecipientTableViewController_Internal__composeRecipientValidationManager_didUpdateValidationWithChangedIndexes___block_invoke;
  v4[3] = &unk_1E774C138;
  v4[4] = self;
  [indexes enumerateIndexesUsingBlock:v4];
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

- (void)composeRecipientDataSourceManager:(id)manager didUpdateDataSourceWithChangeDetails:(id)details
{
  detailsCopy = details;
  dataSource = [manager dataSource];
  selectionManager = [(PXComposeRecipientTableViewController *)self selectionManager];
  [selectionManager setDataSource:dataSource changeDetails:detailsCopy];

  validationManager = [(PXComposeRecipientTableViewController *)self validationManager];
  [validationManager setDataSource:dataSource changeDetails:detailsCopy];

  tableView = [(PXComposeRecipientTableViewController *)self tableView];
  [tableView reloadData];

  [(PXComposeRecipientTableViewController *)self updateTableViewHeight];
}

- (void)composeRecipientSelectionManager:(id)manager didUpdateSelectionSnapshotWithChangeDetails:(id)details
{
  selectionSnapshot = [manager selectionSnapshot];
  selectedComposeRecipients = [selectionSnapshot selectedComposeRecipients];
  viewModel = [(PXComposeRecipientTableViewController *)self viewModel];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __128__PXComposeRecipientTableViewController_Internal__composeRecipientSelectionManager_didUpdateSelectionSnapshotWithChangeDetails___block_invoke;
  v17[3] = &unk_1E773B238;
  v18 = selectionSnapshot;
  v8 = selectedComposeRecipients;
  v19 = v8;
  v9 = selectionSnapshot;
  [viewModel performChanges:v17];
  composeRecipientDataSourceManager = [viewModel composeRecipientDataSourceManager];
  dataSource = [composeRecipientDataSourceManager dataSource];

  composeRecipients = [dataSource composeRecipients];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __128__PXComposeRecipientTableViewController_Internal__composeRecipientSelectionManager_didUpdateSelectionSnapshotWithChangeDetails___block_invoke_2;
  v14[3] = &unk_1E773B2F8;
  v15 = v8;
  selfCopy = self;
  v13 = v8;
  [composeRecipients enumerateObjectsUsingBlock:v14];
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
  tableView = [(PXComposeRecipientTableViewController *)self tableView];
  v4 = [(PXComposeRecipientTableViewController *)self tableView:tableView numberOfRowsInSection:0];

  [(PXComposeRecipientTableViewController *)self headerHeight];
  v6 = v5;
  tableView2 = [(PXComposeRecipientTableViewController *)self tableView];
  [tableView2 rowHeight];
  v9 = v6 + fmax(v8, 0.0) * v4;
  [(PXComposeRecipientTableViewController *)self footerHeight];
  v11 = v10 + v9;

  [(PXComposeRecipientTableViewController *)self tableViewHeight];
  if (v12 != v11)
  {
    [(PXComposeRecipientTableViewController *)self setTableViewHeight:v11];
    delegate = [(PXComposeRecipientTableViewController *)self delegate];
    v14 = delegate;
    if (delegate)
    {
      v16 = delegate;
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

- (void)bootstrapPersonSuggestion:(id)suggestion withContact:(id)contact
{
  v24 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  contactCopy = contact;
  v9 = contactCopy;
  if (suggestionCopy)
  {
    if (contactCopy)
    {
LABEL_3:
      v17 = 0;
      v10 = suggestionCopy;
      v11 = v9;
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"personSuggestion"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"contact"}];

  v17 = 0;
  v10 = suggestionCopy;
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
      v19 = suggestionCopy;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "Failed to bootstrap Person Suggestion %@ with Contact %@ because of error: %@", buf, 0x20u);
    }
  }
}

- (void)configureCellModel:(id)model withComposeRecipient:(id)recipient
{
  modelCopy = model;
  recipientCopy = recipient;
  v9 = recipientCopy;
  v45 = modelCopy;
  if (modelCopy)
  {
    if (recipientCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"cellModel"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"composeRecipient"}];

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
  recipient = [v9 recipient];
  viewModel = [(PXComposeRecipientTableViewController *)self viewModel];
  personSuggestion = [v9 personSuggestion];
  v12 = personSuggestion;
  if (personSuggestion)
  {
    localizedName = [personSuggestion localizedName];
    traitCollection = [(PXComposeRecipientTableViewController *)self traitCollection];
    [traitCollection displayScale];
    v15 = v14;

    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = 1;
    peopleSuggestionsMediaProvider = [viewModel peopleSuggestionsMediaProvider];
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
    v21 = [peopleSuggestionsMediaProvider requestImageForPersonSuggestion:v12 targetSize:0 displayScale:0 cropFactor:v55 cornerStyle:v18 resultHandler:{v20, v15}];
    v65[3] = v21;
    *(v61 + 24) = 0;

    _Block_object_dispose(&v60, 8);
    contact = 0;
  }

  else
  {
    contact = [recipient contact];
    localizedName = 0;
  }

  suggestedTransport = [recipient suggestedTransport];
  address = [suggestedTransport address];
  if ([address length])
  {
    v24 = [(PXComposeRecipientTableViewController *)self isValidAddressForComposeRecipient:v9];
  }

  else
  {
    v24 = 0;
  }

  localizedName2 = [recipient localizedName];
  v26 = localizedName2;
  v27 = localizedName;
  if (localizedName2)
  {
    v27 = localizedName2;
  }

  v28 = v27;

  if (v28 && [v28 length] || (PXLocalizedStringFromTable(@"PXComposeRecipientTableViewMissingLocalizedNameMessage", @"PhotosUICore"), v29 = objc_claimAutoreleasedReturnValue(), v28, (v28 = v29) != 0))
  {
    v28 = v28;
    v30 = address;
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
  selectionManager = [(PXComposeRecipientTableViewController *)self selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  selectedComposeRecipients = [selectionSnapshot selectedComposeRecipients];
  LOBYTE(selectionManager) = [selectedComposeRecipients containsObject:v9];

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __91__PXComposeRecipientTableViewController_Internal__configureCellModel_withComposeRecipient___block_invoke_4;
  v46[3] = &unk_1E773B2B0;
  v51 = v68;
  v52 = &v64;
  v36 = v28;
  v47 = v36;
  v37 = address;
  v48 = v37;
  v53 = v24;
  v54 = selectionManager;
  v38 = viewModel;
  v49 = v38;
  v39 = contact;
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

- (id)cellModelAtIndex:(unint64_t)index
{
  v4 = [MEMORY[0x1E696AC88] px_indexPathForItem:index inSection:0];
  tableView = [(PXComposeRecipientTableViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:v4];

  cellModel = [v6 cellModel];

  return cellModel;
}

- (BOOL)isValidAddressForComposeRecipient:(id)recipient
{
  recipientCopy = recipient;
  validationManager = [(PXComposeRecipientTableViewController *)self validationManager];
  v6 = [validationManager validationTypeForComposeRecipient:recipientCopy];

  return v6 == 1;
}

- (void)configureWithViewModel:(id)model
{
  modelCopy = model;
  if (!modelCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXComposeRecipientTableViewController+Internal.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];
  }

  [(PXComposeRecipientTableViewController *)self setViewModel:modelCopy];
  [modelCopy registerChangeObserver:self context:PXComposeRecipientTableViewModelObservationContext];
  composeRecipientDataSourceManager = [modelCopy composeRecipientDataSourceManager];
  recipients = [modelCopy recipients];
  [composeRecipientDataSourceManager addRecipients:recipients];

  [composeRecipientDataSourceManager setDelegate:self];
  dataSource = [composeRecipientDataSourceManager dataSource];
  v9 = [[PXComposeRecipientSelectionManager alloc] initWithDataSource:dataSource];
  [(PXComposeRecipientSelectionManager *)v9 selectAll];
  [(PXComposeRecipientSelectionManager *)v9 setDelegate:self];
  [(PXComposeRecipientTableViewController *)self setSelectionManager:v9];
  selectionSnapshot = [(PXComposeRecipientSelectionManager *)v9 selectionSnapshot];
  selectedComposeRecipients = [selectionSnapshot selectedComposeRecipients];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__PXComposeRecipientTableViewController_Internal__configureWithViewModel___block_invoke;
  v16[3] = &unk_1E773B238;
  v17 = selectionSnapshot;
  v18 = selectedComposeRecipients;
  v12 = selectedComposeRecipients;
  v13 = selectionSnapshot;
  [modelCopy performChanges:v16];
  v14 = [[PXComposeRecipientValidationManager alloc] initWithDataSource:dataSource];
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