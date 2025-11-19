@interface PXSharedLibraryParticipantTableViewController
- (BOOL)canAddParticipants;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (PXSharedLibraryParticipantTableViewController)initWithDataSourceManager:(id)a3;
- (PXSharedLibraryParticipantTableViewControllerDelegate)delegate;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handleAddRecipient;
- (void)_updateAddButton;
- (void)_updateTableViewHeight;
- (void)loadView;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoRecipientViewController:(id)a3 didCompleteWithRecipients:(id)a4;
- (void)photoRecipientViewControllerDidCancel:(id)a3;
- (void)setInteractionEnabled:(BOOL)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewWillLayoutSubviews;
@end

@implementation PXSharedLibraryParticipantTableViewController

- (PXSharedLibraryParticipantTableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = [(PXSharedLibraryParticipantTableViewController *)self tableView];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [v6 indexPathForRowAtPoint:{v8, v10}];
  v12 = [v6 cellForRowAtIndexPath:v11];
  v13 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:v12];

  return v13;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(PXSharedLibraryParticipantTableViewController *)self tableView];
  v9 = [v8 indexPathForRowAtPoint:{x, y}];
  v10 = [v8 cellForRowAtIndexPath:v9];
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

- (void)photoRecipientViewControllerDidCancel:(id)a3
{
  v4 = [(PXSharedLibraryParticipantTableViewController *)self delegate];
  [v4 dismissPresentedViewControllerAnimated:1 forSharedLibraryParticipantTableViewController:self];
}

- (void)photoRecipientViewController:(id)a3 didCompleteWithRecipients:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
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
        v12 = [v11 contact];
        v13 = [v11 emailAddressString];
        v14 = [v11 phoneNumberString];
        if ([v13 length])
        {
          v15 = [[PXSharedLibraryUIParticipant alloc] initWithEmailAddress:v13 contact:v12];
LABEL_10:
          p_super = &v15->super;
          [v5 addObject:v15];
          goto LABEL_11;
        }

        if ([v14 length])
        {
          v15 = [[PXSharedLibraryUIParticipant alloc] initWithPhoneNumber:v14 contact:v12];
          goto LABEL_10;
        }

        p_super = PLSharedLibraryGetLog();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
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

  v18 = [(PXSharedLibraryParticipantTableViewController *)self dataSourceManager];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__PXSharedLibraryParticipantTableViewController_photoRecipientViewController_didCompleteWithRecipients___block_invoke;
  v22[3] = &unk_1E7749AD0;
  v23 = v5;
  v19 = v5;
  [v18 performChanges:v22];

  v20 = [(PXSharedLibraryParticipantTableViewController *)self delegate];
  [v20 dismissPresentedViewControllerAnimated:1 forSharedLibraryParticipantTableViewController:self];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryParticipantDataSourceManagerObservationContext != a5)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:294 description:{@"Invalid observation context in %s", "-[PXSharedLibraryParticipantTableViewController observable:didChange:context:]"}];

    abort();
  }

  v10 = v9;
  if (v6)
  {
    v11 = [(PXSharedLibraryParticipantTableViewController *)self dataSourceManager];
    v12 = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
    v13 = [v11 dataSource];
    v14 = [v11 changeDetailsFromDataSource:v12 toDataSource:v13];
    v15 = [v14 itemChangesInSection:0];
    if ([v15 hasMoves])
    {
      [MEMORY[0x1E696AAA8] currentHandler];
      v27 = v26 = v12;
      [v27 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"itemChanges.hasMoves == NO"}];

      v12 = v26;
    }

    v16 = [(PXSharedLibraryParticipantTableViewController *)self tableView];
    if ([v15 hasIncrementalChanges])
    {
      v30 = [v15 insertedIndexes];
      [MEMORY[0x1E696AC88] px_indexPathsForItems:v30 inSection:0];
      v17 = v32 = v14;
      v29 = [v15 removedIndexes];
      v18 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v29 inSection:0];
      [v15 changedIndexes];
      v19 = v33 = v10;
      [MEMORY[0x1E696AC88] px_indexPathsForItems:v19 inSection:0];
      v20 = v31 = v12;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __78__PXSharedLibraryParticipantTableViewController_observable_didChange_context___block_invoke;
      v34[3] = &unk_1E773D6C0;
      v34[4] = self;
      v35 = v13;
      v21 = v16;
      v22 = v16;
      v36 = v22;
      v37 = v17;
      v38 = v18;
      v23 = v18;
      v24 = v17;
      [v22 performBatchUpdates:v34 completion:0];
      [v22 reloadRowsAtIndexPaths:v20 withRowAnimation:5];

      v14 = v32;
      v12 = v31;

      v10 = v33;
    }

    else
    {
      if (![v15 hasAnyChanges])
      {
        PXAssertGetLog();
      }

      [(PXSharedLibraryParticipantTableViewController *)self setDataSource:v13];
      v21 = v16;
      [v16 reloadData];
    }

    v25 = [v12 canAddParticipants];
    if (v25 != [v13 canAddParticipants])
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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v7 = a5;
  if (a4 == 1)
  {
    v8 = [(PXSharedLibraryParticipantTableViewController *)self dataSourceManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__PXSharedLibraryParticipantTableViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
    v9[3] = &unk_1E7749AD0;
    v10 = v7;
    [v8 performChanges:v9];
  }
}

void __96__PXSharedLibraryParticipantTableViewController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 removeParticipantAtIndex:{objc_msgSend(v2, "row")}];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  if ([a4 section])
  {
    return 0;
  }

  else
  {
    return [(PXSharedLibraryParticipantTableViewController *)self isInteractionEnabled];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 section] == 1)
  {
    [v7 deselectRowAtIndexPath:v6 animated:1];
    if ([(PXSharedLibraryParticipantTableViewController *)self canAddParticipants])
    {
      [(PXSharedLibraryParticipantTableViewController *)self _handleAddRecipient];
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  if ([a4 section] != 1)
  {
    return 0;
  }

  return [(PXSharedLibraryParticipantTableViewController *)self canAddParticipants];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
  v10 = [v8 section];
  if (v10 != 1)
  {
    if (v10)
    {
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:193 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v11 = [v7 dequeueReusableCellWithIdentifier:@"PXSharedLibraryParticipantTableViewCellReuseIdentifier" forIndexPath:v8];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_5:
        v12 = [v11 cellModel];
        v13 = [v9 itemAtIndex:{objc_msgSend(v8, "row")}];
        [v7 px_screenScale];
        [v12 configureForParticipant:v13 displayScale:objc_msgSend(v7 isRTL:{"px_hasRightToLeftLayoutDirection"), v14}];
        [v11 setAccessibilityIdentifier:@"PXSharedLibraryParticipantTableViewCell"];

        goto LABEL_7;
      }

      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = objc_opt_class();
      v19 = NSStringFromClass(v20);
      v21 = [v11 px_descriptionForAssertionMessage];
      [v17 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:179 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"cell", v19, v21}];
    }

    else
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      [v17 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:179 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"cell", v19}];
    }

    goto LABEL_5;
  }

  v11 = [v7 dequeueReusableCellWithIdentifier:@"PXSharedLibraryParticipantAddTableViewCellReuseIdentifier" forIndexPath:v8];
  [v11 setUserInteractionEnabled:{-[PXSharedLibraryParticipantTableViewController canAddParticipants](self, "canAddParticipants")}];
  [v11 setAccessibilityIdentifier:@"PXSharedLibraryParticipantAddTableViewCell"];
LABEL_7:
  v15 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v11 setBackgroundColor:v15];

  return v11;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v8 = 1;
  }

  else if (a4)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
    v8 = [v7 numberOfParticipants];
  }

  return v8;
}

- (void)_handleAddRecipient
{
  v10 = [(PXSharedLibraryParticipantTableViewController *)self delegate];
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_AddPeople_Title");
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_SearchLabel");
  v5 = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
  v6 = [v5 participantAddresses];

  v7 = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
  v8 = 5 - [v7 numberOfParticipants];

  v9 = [PXPhotoRecipientViewController recipientPickerViewControllerWithTitle:v3 toLabel:v4 usedAddresses:v6 maxRecipients:v8 verificationType:1 delegate:self];
  [v10 presentViewController:v9 animated:1 forSharedLibraryParticipantTableViewController:self];
}

- (void)_updateAddButton
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:1];
  v4 = [(PXSharedLibraryParticipantTableViewController *)self tableView];
  v6[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v4 reloadRowsAtIndexPaths:v5 withRowAnimation:5];
}

- (void)_updateTableViewHeight
{
  v10 = [(PXSharedLibraryParticipantTableViewController *)self tableView];
  v3 = [v10 numberOfRowsInSection:0];
  v4 = [v10 numberOfRowsInSection:1] + v3;
  [v10 rowHeight];
  v6 = fmax(v5, 0.0);
  [v10 sectionFooterHeight];
  v8 = v7 + v6 * v4;
  if (self->_tableViewHeight != v8)
  {
    self->_tableViewHeight = v8;
    v9 = [(PXSharedLibraryParticipantTableViewController *)self delegate];
    [v9 sharedLibraryParticipantTableViewControllerDidChangeHeight:self];
  }
}

- (BOOL)canAddParticipants
{
  v3 = [(PXSharedLibraryParticipantTableViewController *)self isInteractionEnabled];
  if (v3)
  {
    v4 = [(PXSharedLibraryParticipantTableViewController *)self dataSource];
    v5 = [v4 canAddParticipants];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (void)setInteractionEnabled:(BOOL)a3
{
  if (self->_interactionEnabled != a3)
  {
    self->_interactionEnabled = a3;
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

- (PXSharedLibraryParticipantTableViewController)initWithDataSourceManager:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantTableViewController+iOS.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"dataSourceManager"}];
  }

  v13.receiver = self;
  v13.super_class = PXSharedLibraryParticipantTableViewController;
  v7 = [(PXSharedLibraryParticipantTableViewController *)&v13 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    v7->_interactionEnabled = 1;
    v9 = [v6 dataSource];
    dataSource = v8->_dataSource;
    v8->_dataSource = v9;

    objc_storeStrong(&v8->_dataSourceManager, a3);
    [(PXSectionedDataSourceManager *)v8->_dataSourceManager registerChangeObserver:v8 context:PXSharedLibraryParticipantDataSourceManagerObservationContext];
  }

  return v8;
}

@end