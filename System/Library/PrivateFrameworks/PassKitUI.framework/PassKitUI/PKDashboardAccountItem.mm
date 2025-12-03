@interface PKDashboardAccountItem
- (PKDashboardAccountItem)initWithAccount:(id)account presentingPass:(id)pass;
@end

@implementation PKDashboardAccountItem

- (PKDashboardAccountItem)initWithAccount:(id)account presentingPass:(id)pass
{
  accountCopy = account;
  passCopy = pass;
  v12.receiver = self;
  v12.super_class = PKDashboardAccountItem;
  v9 = [(PKDashboardAccountItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_presentingPass, pass);
  }

  return v10;
}

@end