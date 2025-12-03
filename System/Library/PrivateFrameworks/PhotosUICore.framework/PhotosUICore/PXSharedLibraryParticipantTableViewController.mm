@interface PXSharedLibraryParticipantTableViewController
- (BOOL)canAddParticipants;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (PXSharedLibraryParticipantTableViewController)initWithDataSourceManager:(id)manager;
- (PXSharedLibraryParticipantTableViewControllerDelegate)delegate;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handleAddRecipient;
- (void)_updateAddButton;
- (void)_updateTableViewHeight;
- (void)loadView;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients;
- (void)photoRecipientViewControllerDidCancel:(id)cancel;
- (void)setInteractionEnabled:(BOOL)enabled;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillLayoutSubviews;
@end

@implementation PXSharedLibraryParticipantTableViewController

- (PXSharedLibraryParticipantTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  tableView = [(PXSharedLibraryParticipantTableViewController *)self tableView];
  [interactionCopy locationInView:tableView];
  v8 = v7;
  v10 = v9;

  v11 = [tableView indexPathForRowAtPoint:{v8, v10}];
  v12 = [tableView cellForRowAtIndexPath:v11];
  v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v12];

  return v13;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  tableView = [(PXSharedLibraryParticipantTableViewController *)self tableView];
  v9 = [tableView indexPathForRowAtPoint:{x, y}];
  v10 = [tableView cellForRowAtIndexPath:v9];
  if (v10 && -[PXSharedLibraryParticipantTableViewController isInteractionEnabled](self, "isInteractionEnabled") && ![v9 section])
  {
    objc_initWeak(&location, self);
    v13 = MEMORY[0x1E69DC8D8];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __103__PXSharedLibraryParticipantTableViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
    v14[3] = &unk_1E7733A00;
    objc_copyWeak(&v16, &location);
    v15 = v9;
    v11 = [v13 configurationWithIdentifier:0 previewProvider:&__block_literal_global_59833 actionProvider:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __103__PXSharedLibraryParticipantTableViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69DC628];
  v5 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_Delete");
  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle.badge.minus"];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __103__PXSharedLibraryParticipantTableViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
  v15 = &unk_1E77420C8;
  objc_copyWeak(&v17, (a1 + 40));
  v16 = *(a1 + 32);
  v7 = [v4 actionWithTitle:v5 image:v6 identifier:0 handler:&v12];

  v8 = MEMORY[0x1E69DCC60];
  v18[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:{1, v12, v13, v14, v15}];
  v10 = [v8 menuWithTitle:&stru_1F1741150 children:v9];

  objc_destroyWeak(&v17);

  return v10;
}

void __103__PXSharedLibraryParticipantTableViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained dataSourceManager];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __103__PXSharedLibraryParticipantTableViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4;
  v4[3] = &unk_1E7749AD0;
  v5 = *(a1 + 32);
  [v3 performChanges:v4];
}

void __103__PXSharedLibraryParticipantTableViewController_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 removeParticipantAtIndex:{objc_msgSend(v2, "row")}];
}

- (void)photoRecipientViewControllerDidCancel:(id)cancel
{
  delegate = [(PXSharedLibraryParticipantTableViewController *)self delegate];
  [delegate dismissPresentedViewControllerAnimated:1 forSharedLibraryParticipantTableViewController:self];
}

- (void)photoRecipientViewController:(id)controller didCompleteWithRecipients:(id)recipients
{
  v33 = *MEMORY[0x1E69E9840];
  recipientsCopy = recipients;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = recipientsCopy;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        contact = [v11 contact];
        emailAddressString = [v11 emailAddressString];
        phoneNumberString = [v11 phoneNumberString];
        if ([emailAddressString length])
        {
          v15 = [[PXSharedLibraryUIParticipant alloc] initWithEmailAddress:emailAddressString contact:contact];
LABEL_10:
          p_super = &v15->super;
          [v5 addObject:v15];
          goto LABEL_11;
        }

        if ([phoneNumberString length])
        {
          v15 = [[PXSharedLibraryUIParticipant alloc] initWithPhoneNumber:phoneNumberString contact:contact];
          goto LABEL_10;
        }

        p_super = PLSharedLibraryGetLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v11;
          v30 = 2112;
          v31 = contact;
          _os_log_impl(&dword_1A3C1C000, p_super, OS_LOG_TYPE_ERROR, "No invite address string for recipient: %@ contact: %@", buf, 0x16u);
        }

LABEL_11:

        ++v10;
      }

      while (v8 != v10);
      v17 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      v8 = v17;
    }

    while (v17);
  }

  dataSourceManager = [(PXSharedLibraryParticipantTableViewController *)self dataSourceManager];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__PXSharedLibraryParticipantTableViewController_photoRecipientViewController_didCompleteWithRecipients___block_invoke;
  v22[3] = &unk_1E7749AD0;
  v23 = v5;
  v19 = v5;
  [dataSourceManager performChanges:v22];

  delegate = [(PXSharedLibraryParticipantTableViewController *)self delegate];
  [delegate dismissPresentedViewControllerAnimated:1 forSharedLibraryParticipantTableViewController:self];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryParticipantDataSourceManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:294 description:{@"Invalid observation context in %s", "-[PXSharedLibraryParticipantTableViewController observable:didChange:context:]"}];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
  {
    dataSourceManager = [(PXSharedLibraryParticipantTableViewController *)self dataSourceManager];
    dataSource = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
    dataSource2 = [dataSourceManager dataSource];
    v14 = [dataSourceManager changeDetailsFromDataSource:dataSource toDataSource:dataSource2];
    v15 = [v14 itemChangesInSection:0];
    if ([v15 hasMoves])
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      v27 = v26 = dataSource;
      [v27 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"itemChanges.hasMoves == NO"}];

      dataSource = v26;
    }

    tableView = [(PXSharedLibraryParticipantTableViewController *)self tableView];
    if ([v15 hasIncrementalChanges])
    {
      insertedIndexes = [v15 insertedIndexes];
      [MEMORY[0x1E696AC88] px_indexPathsForItems:insertedIndexes inSection:0];
      v17 = v32 = v14;
      removedIndexes = [v15 removedIndexes];
      v18 = [MEMORY[0x1E696AC88] px_indexPathsForItems:removedIndexes inSection:0];
      [v15 changedIndexes];
      v19 = v33 = v10;
      [MEMORY[0x1E696AC88] px_indexPathsForItems:v19 inSection:0];
      v20 = v31 = dataSource;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __78__PXSharedLibraryParticipantTableViewController_observable_didChange_context___block_invoke;
      v34[3] = &unk_1E773D6C0;
      v34[4] = self;
      v35 = dataSource2;
      v21 = tableView;
      v22 = tableView;
      v36 = v22;
      v37 = v17;
      v38 = v18;
      v23 = v18;
      v24 = v17;
      [v22 performBatchUpdates:v34 completion:0];
      [v22 reloadRowsAtIndexPaths:v20 withRowAnimation:5];

      v14 = v32;
      dataSource = v31;

      v10 = v33;
    }

    else
    {
      if (![v15 hasAnyChanges])
      {
        PXAssertGetLog();
      }

      [(PXSharedLibraryParticipantTableViewController *)self setDataSource:dataSource2];
      v21 = tableView;
      [tableView reloadData];
    }

    canAddParticipants = [dataSource canAddParticipants];
    if (canAddParticipants != [dataSource2 canAddParticipants])
    {
      [(PXSharedLibraryParticipantTableViewController *)self _updateAddButton];
    }
  }
}

uint64_t __78__PXSharedLibraryParticipantTableViewController_observable_didChange_context___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDataSource:*(a1 + 40)];
  [*(a1 + 48) insertRowsAtIndexPaths:*(a1 + 56) withRowAnimation:4];
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);

  return [v2 deleteRowsAtIndexPaths:v3 withRowAnimation:3];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (style == 1)
  {
    dataSourceManager = [(PXSharedLibraryParticipantTableViewController *)self dataSourceManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__PXSharedLibraryParticipantTableViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
    v9[3] = &unk_1E7749AD0;
    v10 = pathCopy;
    [dataSourceManager performChanges:v9];
  }
}

void __96__PXSharedLibraryParticipantTableViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 removeParticipantAtIndex:{objc_msgSend(v2, "row")}];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  if ([path section])
  {
    return 0;
  }

  else
  {
    return [(PXSharedLibraryParticipantTableViewController *)self isInteractionEnabled];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    if ([(PXSharedLibraryParticipantTableViewController *)self canAddParticipants])
    {
      [(PXSharedLibraryParticipantTableViewController *)self _handleAddRecipient];
    }
  }
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  if ([path section] != 1)
  {
    return 0;
  }

  return [(PXSharedLibraryParticipantTableViewController *)self canAddParticipants];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  dataSource = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
  section = [pathCopy section];
  if (section != 1)
  {
    if (section)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:193 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"PXSharedLibraryParticipantTableViewCellReuseIdentifier" forIndexPath:pathCopy];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        cellModel = [v11 cellModel];
        v13 = [dataSource itemAtIndex:{objc_msgSend(pathCopy, "row")}];
        [viewCopy px_screenScale];
        [cellModel configureForParticipant:v13 displayScale:objc_msgSend(viewCopy isRTL:{"px_hasRightToLeftLayoutDirection"), v14}];
        [v11 setAccessibilityIdentifier:@"PXSharedLibraryParticipantTableViewCell"];

        goto LABEL_7;
      }

      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v19 = NSStringFromClass(v20);
      px_descriptionForAssertionMessage = [v11 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:179 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"cell", v19, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:179 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"cell", v19}];
    }

    goto LABEL_5;
  }

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"PXSharedLibraryParticipantAddTableViewCellReuseIdentifier" forIndexPath:pathCopy];
  [v11 setUserInteractionEnabled:{-[PXSharedLibraryParticipantTableViewController canAddParticipants](self, "canAddParticipants")}];
  [v11 setAccessibilityIdentifier:@"PXSharedLibraryParticipantAddTableViewCell"];
LABEL_7:
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v11 setBackgroundColor:secondarySystemBackgroundColor];

  return v11;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    numberOfParticipants = 1;
  }

  else if (section)
  {
    numberOfParticipants = 0;
  }

  else
  {
    dataSource = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
    numberOfParticipants = [dataSource numberOfParticipants];
  }

  return numberOfParticipants;
}

- (void)_handleAddRecipient
{
  delegate = [(PXSharedLibraryParticipantTableViewController *)self delegate];
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_AddPeople_Title");
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_SearchLabel");
  dataSource = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
  participantAddresses = [dataSource participantAddresses];

  dataSource2 = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
  v8 = 5 - [dataSource2 numberOfParticipants];

  v9 = [PXPhotoRecipientViewController recipientPickerViewControllerWithTitle:v3 toLabel:v4 usedAddresses:participantAddresses maxRecipients:v8 verificationType:1 delegate:self];
  [delegate presentViewController:v9 animated:1 forSharedLibraryParticipantTableViewController:self];
}

- (void)_updateAddButton
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:1];
  tableView = [(PXSharedLibraryParticipantTableViewController *)self tableView];
  v6[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [tableView reloadRowsAtIndexPaths:v5 withRowAnimation:5];
}

- (void)_updateTableViewHeight
{
  tableView = [(PXSharedLibraryParticipantTableViewController *)self tableView];
  v3 = [tableView numberOfRowsInSection:0];
  v4 = [tableView numberOfRowsInSection:1] + v3;
  [tableView rowHeight];
  v6 = fmax(v5, 0.0);
  [tableView sectionFooterHeight];
  v8 = v7 + v6 * v4;
  if (self->_tableViewHeight != v8)
  {
    self->_tableViewHeight = v8;
    delegate = [(PXSharedLibraryParticipantTableViewController *)self delegate];
    [delegate sharedLibraryParticipantTableViewControllerDidChangeHeight:self];
  }
}

- (BOOL)canAddParticipants
{
  isInteractionEnabled = [(PXSharedLibraryParticipantTableViewController *)self isInteractionEnabled];
  if (isInteractionEnabled)
  {
    dataSource = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
    canAddParticipants = [dataSource canAddParticipants];

    LOBYTE(isInteractionEnabled) = canAddParticipants;
  }

  return isInteractionEnabled;
}

- (void)setInteractionEnabled:(BOOL)enabled
{
  if (self->_interactionEnabled != enabled)
  {
    self->_interactionEnabled = enabled;
    [(PXSharedLibraryParticipantTableViewController *)self _updateAddButton];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryParticipantTableViewController;
  [(PXSharedLibraryParticipantTableViewController *)&v3 viewWillLayoutSubviews];
  [(PXSharedLibraryParticipantTableViewController *)self _updateRowHeight];
  [(PXSharedLibraryParticipantTableViewController *)self _updateTableViewHeight];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v5 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setDataSource:self];
  [v5 setDelegate:self];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXSharedLibraryParticipantTableViewCellReuseIdentifier"];
  [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"PXSharedLibraryParticipantAddTableViewCellReuseIdentifier"];
  [v5 setScrollEnabled:0];
  [v5 setSectionHeaderHeight:0.0];
  [v5 setSectionFooterHeight:15.0];
  [v5 _setTopPadding:0.0];
  [(PXSharedLibraryParticipantTableViewController *)self setView:v5];
  v4 = [objc_alloc(MEMORY[0x1E69DC8E0]) initWithDelegate:self];
  [v5 addInteraction:v4];
}

- (PXSharedLibraryParticipantTableViewController)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"dataSourceManager"}];
  }

  v13.receiver = self;
  v13.super_class = PXSharedLibraryParticipantTableViewController;
  v7 = [(PXSharedLibraryParticipantTableViewController *)&v13 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_interactionEnabled = 1;
    dataSource = [managerCopy dataSource];
    dataSource = v8->_dataSource;
    v8->_dataSource = dataSource;

    objc_storeStrong(&v8->_dataSourceManager, manager);
    [(PXSectionedDataSourceManager *)v8->_dataSourceManager registerChangeObserver:v8 context:PXSharedLibraryParticipantDataSourceManagerObservationContext];
  }

  return v8;
}

@end