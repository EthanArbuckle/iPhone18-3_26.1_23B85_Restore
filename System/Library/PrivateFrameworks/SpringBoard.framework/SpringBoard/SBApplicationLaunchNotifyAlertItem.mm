@interface SBApplicationLaunchNotifyAlertItem
- (SBApplicationLaunchNotifyAlertItem)initWithApplication:(id)a3;
@end

@implementation SBApplicationLaunchNotifyAlertItem

- (SBApplicationLaunchNotifyAlertItem)initWithApplication:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [(SBApplicationLaunchNotifyAlertItem *)a2 initWithApplication:?];
  }

  v10.receiver = self;
  v10.super_class = SBApplicationLaunchNotifyAlertItem;
  v7 = [(SBAlertItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_application, a3);
    [(SBAlertItem *)v8 setAllowInCar:0];
    [(SBAlertItem *)v8 setAllowMessageInCar:0];
  }

  return v8;
}

- (void)initWithApplication:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationLaunchNotifyAlertItem.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"application"}];
}

@end