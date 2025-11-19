@interface PXSharedLibraryExitAssistantViewController
- (PXSharedLibraryExitAssistantViewController)initWithOwnerAsCurrentUser:(BOOL)a3 keepAllCountsString:(id)a4 contributedOnlyCountsString:(id)a5;
- (PXSharedLibraryExitAssistantViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)_updateCancelButton;
- (void)_updateExitButton;
- (void)_updateIcon;
- (void)_updateTableView;
- (void)cancelButtonTapped:(id)a3;
- (void)exitButtonTapped:(id)a3;
- (void)setDisableControlsWithBusyIndicator:(BOOL)a3;
- (void)setExitRetentionPolicy:(int64_t)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryExitAssistantViewController

- (PXSharedLibraryExitAssistantViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setExitRetentionPolicy:(int64_t)a3
{
  if (self->_exitRetentionPolicy != a3)
  {
    self->_exitRetentionPolicy = a3;
    [(PXSharedLibraryExitAssistantViewController *)self _updateTableView];

    [(PXSharedLibraryExitAssistantViewController *)self _updateExitButton];
  }
}

- (void)_updateCancelButton
{
  v3 = [(PXSharedLibraryExitAssistantViewController *)self disableControlsWithBusyIndicator]^ 1;
  cancelButton = self->_cancelButton;

  [(OBLinkTrayButton *)cancelButton setEnabled:v3];
}

- (void)_updateExitButton
{
  [(OBBoldTrayButton *)self->_exitButton setEnabled:self->_exitRetentionPolicy != 0];
  v3 = [(PXSharedLibraryExitAssistantViewController *)self disableControlsWithBusyIndicator];
  exitButton = self->_exitButton;
  if (v3)
  {

    [(OBBoldTrayButton *)exitButton showsBusyIndicator];
  }

  else
  {

    [(OBBoldTrayButton *)exitButton hidesBusyIndicator];
  }
}

- (void)_updateTableView
{
  v2 = [(OBTableWelcomeController *)self tableView];
  [v2 reloadData];
}

- (void)_updateIcon
{
  if (self->_currentUserIsOwner)
  {
    v2 = @"xmark.circle.fill";
  }

  else
  {
    v2 = @"minus.circle.fill";
  }

  PXSharedLibraryCreatePlatterImage(@"person.2.fill", v2);
}

- (void)cancelButtonTapped:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = [(PXSharedLibraryExitAssistantViewController *)self delegate];
  if (!v4)
  {
    PXAssertGetLog();
  }

  [v4 cancelExitAssistantViewController:self];
}

- (void)exitButtonTapped:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = [(PXSharedLibraryExitAssistantViewController *)self delegate];
  if (!v4)
  {
    PXAssertGetLog();
  }

  [v4 completeExitAssistantViewController:self withExitRetentionPolicy:{-[PXSharedLibraryExitAssistantViewController exitRetentionPolicy](self, "exitRetentionPolicy")}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v9 = a3;
  v7 = [v6 item];
  if (v7)
  {
    v8 = v7 == 1;
  }

  else
  {
    v8 = 2;
  }

  [(PXSharedLibraryExitAssistantViewController *)self setExitRetentionPolicy:v8];
  [v9 deselectRowAtIndexPath:v6 animated:1];
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(PXSharedLibraryExitAssistantViewController *)self disableControlsWithBusyIndicator])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"CellIdentifier"];
    [v7 setSelectionStyle:0];
  }

  v8 = [(PXSharedLibraryExitAssistantViewController *)self disableControlsWithBusyIndicator];
  v9 = [v6 item];

  if (!v9)
  {
    v10 = &OBJC_IVAR___PXSharedLibraryExitAssistantViewController__keepAllCountsString;
    v11 = 2;
    v12 = @"PXSharedLibraryExitAssistant_ExitRetentionPolicy_KeepAll_iOS";
LABEL_7:
    v13 = PXLocalizedSharedLibraryString(v12);
    v14 = *(&self->super.super.super.super.super.super.isa + *v10);
    if (self->_exitRetentionPolicy == v11)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_11;
  }

  if (v9 == 1)
  {
    v10 = &OBJC_IVAR___PXSharedLibraryExitAssistantViewController__contributedOnlyCountsString;
    v11 = 1;
    v12 = @"PXSharedLibraryExitAssistant_ExitRetentionPolicy_ContributedOnly_iOS";
    goto LABEL_7;
  }

  v15 = 0;
  v14 = 0;
  v13 = 0;
LABEL_11:
  v16 = [v7 textLabel];
  [v16 setText:v13];
  if (v8)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v17 = ;
  [v16 setTextColor:v17];

  [v16 setNumberOfLines:0];
  [v16 setLineBreakMode:0];
  v18 = [v7 detailTextLabel];
  [v18 setText:v14];
  v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v18 setTextColor:v19];

  [v7 setAccessoryType:v15];
  v20 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:v20];

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryExitAssistantViewController;
  v4 = a3;
  [(PXSharedLibraryExitAssistantViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(PXSharedLibraryExitAssistantViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(PXSharedLibraryExitAssistantViewController *)self _updateIcon];
  }
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = PXSharedLibraryExitAssistantViewController;
  [(OBTableWelcomeController *)&v16 viewDidLoad];
  [(PXSharedLibraryExitAssistantViewController *)self _updateIcon];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setDelegate:self];
  [v4 setDataSource:self];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [(OBTableWelcomeController *)self setTableView:v4];
  v6 = PXSharedLibraryExitAssistantViewButtonTitle(self->_currentUserIsOwner);
  v7 = [MEMORY[0x1E69B7D00] boldButton];
  exitButton = self->_exitButton;
  self->_exitButton = v7;

  [(OBBoldTrayButton *)self->_exitButton setTitle:v6 forState:0];
  [(OBBoldTrayButton *)self->_exitButton addTarget:self action:sel_exitButtonTapped_ forControlEvents:0x2000];
  v9 = [(PXSharedLibraryExitAssistantViewController *)self buttonTray];
  [v9 addButton:self->_exitButton];

  v10 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_exitButtonTapped_];
  [(PXSharedLibraryExitAssistantViewController *)self addKeyCommand:v10];

  [(PXSharedLibraryExitAssistantViewController *)self _updateExitButton];
  v11 = [MEMORY[0x1E69B7D38] linkButton];
  cancelButton = self->_cancelButton;
  self->_cancelButton = v11;

  v13 = self->_cancelButton;
  v14 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  [(OBLinkTrayButton *)v13 setTitle:v14 forState:0];

  [(OBLinkTrayButton *)self->_cancelButton addTarget:self action:sel_cancelButtonTapped_ forControlEvents:0x2000];
  v15 = [(PXSharedLibraryExitAssistantViewController *)self buttonTray];
  [v15 addButton:self->_cancelButton];

  [(PXSharedLibraryExitAssistantViewController *)self _updateCancelButton];
}

- (void)setDisableControlsWithBusyIndicator:(BOOL)a3
{
  if (self->_disableControlsWithBusyIndicator != a3)
  {
    self->_disableControlsWithBusyIndicator = a3;
    [(PXSharedLibraryExitAssistantViewController *)self _updateTableView];
    [(PXSharedLibraryExitAssistantViewController *)self _updateExitButton];

    [(PXSharedLibraryExitAssistantViewController *)self _updateCancelButton];
  }
}

- (PXSharedLibraryExitAssistantViewController)initWithOwnerAsCurrentUser:(BOOL)a3 keepAllCountsString:(id)a4 contributedOnlyCountsString:(id)a5
{
  v7 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PXSharedLibraryExitAssistantViewTitle(v7);
  v12 = PXSharedLibraryExitAssistantViewSubtitle(v7);
  v16.receiver = self;
  v16.super_class = PXSharedLibraryExitAssistantViewController;
  v13 = [(OBTableWelcomeController *)&v16 initWithTitle:v11 detailText:v12 icon:0 adoptTableViewScrollView:1];
  v14 = v13;
  if (v13)
  {
    v13->_exitRetentionPolicy = 0;
    v13->_currentUserIsOwner = v7;
    objc_storeStrong(&v13->_keepAllCountsString, a4);
    objc_storeStrong(&v14->_contributedOnlyCountsString, a5);
  }

  return v14;
}

@end