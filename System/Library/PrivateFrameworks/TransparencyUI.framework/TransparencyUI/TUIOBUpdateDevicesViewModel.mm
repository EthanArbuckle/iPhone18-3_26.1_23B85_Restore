@interface TUIOBUpdateDevicesViewModel
- (TUIOBUpdateDevicesViewModel)initWithAccountManager:(id)a3 devicesWithIssuesIdentifiers:(id)a4;
@end

@implementation TUIOBUpdateDevicesViewModel

- (TUIOBUpdateDevicesViewModel)initWithAccountManager:(id)a3 devicesWithIssuesIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = TUIOBUpdateDevicesViewModel;
  v8 = [(TUIUpdateDevicesModel *)&v13 init];
  v9 = v8;
  if (v8)
  {
    [(TUIUpdateDevicesModel *)v8 setDevicesWithIssuesIdentifiers:v7];
    v9->_contentViewLayout = 2;
    v10 = [[TUIDevicesWithIssuesViewController alloc] initWithAccountManager:v6 devicesWithIssuesIdentifiers:v7];
    contentViewController = v9->_contentViewController;
    v9->_contentViewController = &v10->super.super.super;
  }

  return v9;
}

@end