@interface PSKeychainSyncViewController
- (KeychainSyncViewControllerDelegate)delegate;
- (double)heightForHeaderInTableView:(id)view;
- (id)headerView;
- (id)specifiers;
- (void)setTitle:(id)title;
@end

@implementation PSKeychainSyncViewController

- (id)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = [[PSKeychainSyncHeaderView alloc] initWithSpecifier:self->super.super._specifier];
    v5 = self->_headerView;
    self->_headerView = v4;

    headerView = self->_headerView;
  }

  return headerView;
}

- (id)specifiers
{
  specifiers = self->super._specifiers;
  if (!specifiers)
  {
    v4 = +[PSSpecifier emptyGroupSpecifier];
    groupSpecifier = self->_groupSpecifier;
    self->_groupSpecifier = v4;

    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self->_groupSpecifier, 0}];
    v7 = self->super._specifiers;
    self->super._specifiers = v6;

    specifiers = self->super._specifiers;
  }

  return specifiers;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = +[PSKeychainSyncManager sharedManager];
  isRunningInBuddy = [v5 isRunningInBuddy];

  if (isRunningInBuddy)
  {
    headerView = [(PSKeychainSyncViewController *)self headerView];
    [headerView setTitleText:titleCopy];
  }

  else
  {
    headerView = [(PSKeychainSyncViewController *)self navigationItem];
    [headerView setTitle:titleCopy];
  }
}

- (double)heightForHeaderInTableView:(id)view
{
  viewCopy = view;
  headerView = [(PSKeychainSyncViewController *)self headerView];
  [viewCopy bounds];
  [headerView preferredHeightForWidth:viewCopy inTableView:v6];
  v8 = v7;

  return v8;
}

- (KeychainSyncViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end