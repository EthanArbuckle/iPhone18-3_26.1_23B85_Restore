@interface PXSharedLibraryExitAssistantViewController
- (PXSharedLibraryExitAssistantViewController)initWithOwnerAsCurrentUser:(BOOL)user keepAllCountsString:(id)string contributedOnlyCountsString:(id)countsString;
- (PXSharedLibraryExitAssistantViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_updateCancelButton;
- (void)_updateExitButton;
- (void)_updateIcon;
- (void)_updateTableView;
- (void)cancelButtonTapped:(id)tapped;
- (void)exitButtonTapped:(id)tapped;
- (void)setDisableControlsWithBusyIndicator:(BOOL)indicator;
- (void)setExitRetentionPolicy:(int64_t)policy;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryExitAssistantViewController

- (PXSharedLibraryExitAssistantViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setExitRetentionPolicy:(int64_t)policy
{
  if (self->_exitRetentionPolicy != policy)
  {
    self->_exitRetentionPolicy = policy;
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
  disableControlsWithBusyIndicator = [(PXSharedLibraryExitAssistantViewController *)self disableControlsWithBusyIndicator];
  exitButton = self->_exitButton;
  if (disableControlsWithBusyIndicator)
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
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
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

- (void)cancelButtonTapped:(id)tapped
{
  v5 = *MEMORY[0x1E69E9840];
  delegate = [(PXSharedLibraryExitAssistantViewController *)self delegate];
  if (!delegate)
  {
    PXAssertGetLog();
  }

  [delegate cancelExitAssistantViewController:self];
}

- (void)exitButtonTapped:(id)tapped
{
  v5 = *MEMORY[0x1E69E9840];
  delegate = [(PXSharedLibraryExitAssistantViewController *)self delegate];
  if (!delegate)
  {
    PXAssertGetLog();
  }

  [delegate completeExitAssistantViewController:self withExitRetentionPolicy:{-[PXSharedLibraryExitAssistantViewController exitRetentionPolicy](self, "exitRetentionPolicy")}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  item = [pathCopy item];
  if (item)
  {
    v8 = item == 1;
  }

  else
  {
    v8 = 2;
  }

  [(PXSharedLibraryExitAssistantViewController *)self setExitRetentionPolicy:v8];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(PXSharedLibraryExitAssistantViewController *)self disableControlsWithBusyIndicator])
  {
    v6 = 0;
  }

  else
  {
    v6 = pathCopy;
  }

  v7 = v6;

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"CellIdentifier"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"CellIdentifier"];
    [v7 setSelectionStyle:0];
  }

  disableControlsWithBusyIndicator = [(PXSharedLibraryExitAssistantViewController *)self disableControlsWithBusyIndicator];
  item = [pathCopy item];

  if (!item)
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

  if (item == 1)
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
  textLabel = [v7 textLabel];
  [textLabel setText:v13];
  if (disableControlsWithBusyIndicator)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v17 = ;
  [textLabel setTextColor:v17];

  [textLabel setNumberOfLines:0];
  [textLabel setLineBreakMode:0];
  detailTextLabel = [v7 detailTextLabel];
  [detailTextLabel setText:v14];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [detailTextLabel setTextColor:secondaryLabelColor];

  [v7 setAccessoryType:v15];
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v7 setBackgroundColor:secondarySystemBackgroundColor];

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryExitAssistantViewController;
  changeCopy = change;
  [(PXSharedLibraryExitAssistantViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryExitAssistantViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
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
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  [(OBTableWelcomeController *)self setTableView:v4];
  v6 = PXSharedLibraryExitAssistantViewButtonTitle(self->_currentUserIsOwner);
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  exitButton = self->_exitButton;
  self->_exitButton = boldButton;

  [(OBBoldTrayButton *)self->_exitButton setTitle:v6 forState:0];
  [(OBBoldTrayButton *)self->_exitButton addTarget:self action:sel_exitButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryExitAssistantViewController *)self buttonTray];
  [buttonTray addButton:self->_exitButton];

  v10 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_exitButtonTapped_];
  [(PXSharedLibraryExitAssistantViewController *)self addKeyCommand:v10];

  [(PXSharedLibraryExitAssistantViewController *)self _updateExitButton];
  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  cancelButton = self->_cancelButton;
  self->_cancelButton = linkButton;

  v13 = self->_cancelButton;
  v14 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  [(OBLinkTrayButton *)v13 setTitle:v14 forState:0];

  [(OBLinkTrayButton *)self->_cancelButton addTarget:self action:sel_cancelButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryExitAssistantViewController *)self buttonTray];
  [buttonTray2 addButton:self->_cancelButton];

  [(PXSharedLibraryExitAssistantViewController *)self _updateCancelButton];
}

- (void)setDisableControlsWithBusyIndicator:(BOOL)indicator
{
  if (self->_disableControlsWithBusyIndicator != indicator)
  {
    self->_disableControlsWithBusyIndicator = indicator;
    [(PXSharedLibraryExitAssistantViewController *)self _updateTableView];
    [(PXSharedLibraryExitAssistantViewController *)self _updateExitButton];

    [(PXSharedLibraryExitAssistantViewController *)self _updateCancelButton];
  }
}

- (PXSharedLibraryExitAssistantViewController)initWithOwnerAsCurrentUser:(BOOL)user keepAllCountsString:(id)string contributedOnlyCountsString:(id)countsString
{
  userCopy = user;
  stringCopy = string;
  countsStringCopy = countsString;
  v11 = PXSharedLibraryExitAssistantViewTitle(userCopy);
  v12 = PXSharedLibraryExitAssistantViewSubtitle(userCopy);
  v16.receiver = self;
  v16.super_class = PXSharedLibraryExitAssistantViewController;
  v13 = [(OBTableWelcomeController *)&v16 initWithTitle:v11 detailText:v12 icon:0 adoptTableViewScrollView:1];
  v14 = v13;
  if (v13)
  {
    v13->_exitRetentionPolicy = 0;
    v13->_currentUserIsOwner = userCopy;
    objc_storeStrong(&v13->_keepAllCountsString, string);
    objc_storeStrong(&v14->_contributedOnlyCountsString, countsString);
  }

  return v14;
}

@end