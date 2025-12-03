@interface TUIOBUpdateDevicesViewModel
- (TUIOBUpdateDevicesViewModel)initWithAccountManager:(id)manager devicesWithIssuesIdentifiers:(id)identifiers;
@end

@implementation TUIOBUpdateDevicesViewModel

- (TUIOBUpdateDevicesViewModel)initWithAccountManager:(id)manager devicesWithIssuesIdentifiers:(id)identifiers
{
  managerCopy = manager;
  identifiersCopy = identifiers;
  v13.receiver = self;
  v13.super_class = TUIOBUpdateDevicesViewModel;
  v8 = [(TUIUpdateDevicesModel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(TUIUpdateDevicesModel *)v8 setDevicesWithIssuesIdentifiers:identifiersCopy];
    v9->_contentViewLayout = 2;
    v10 = [[TUIDevicesWithIssuesViewController alloc] initWithAccountManager:managerCopy devicesWithIssuesIdentifiers:identifiersCopy];
    contentViewController = v9->_contentViewController;
    v9->_contentViewController = &v10->super.super.super;
  }

  return v9;
}

@end