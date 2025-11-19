@interface PSKeychainSyncViewController
- (KeychainSyncViewControllerDelegate)delegate;
- (double)heightForHeaderInTableView:(id)a3;
- (id)headerView;
- (id)specifiers;
- (void)setTitle:(id)a3;
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

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = +[PSKeychainSyncManager sharedManager];
  v6 = [v5 isRunningInBuddy];

  if (v6)
  {
    v7 = [(PSKeychainSyncViewController *)self headerView];
    [v7 setTitleText:v4];
  }

  else
  {
    v7 = [(PSKeychainSyncViewController *)self navigationItem];
    [v7 setTitle:v4];
  }
}

- (double)heightForHeaderInTableView:(id)a3
{
  v4 = a3;
  v5 = [(PSKeychainSyncViewController *)self headerView];
  [v4 bounds];
  [v5 preferredHeightForWidth:v4 inTableView:v6];
  v8 = v7;

  return v8;
}

- (KeychainSyncViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end