@interface PKDashboardAccountItem
- (PKDashboardAccountItem)initWithAccount:(id)a3 presentingPass:(id)a4;
@end

@implementation PKDashboardAccountItem

- (PKDashboardAccountItem)initWithAccount:(id)a3 presentingPass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKDashboardAccountItem;
  v9 = [(PKDashboardAccountItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_presentingPass, a4);
  }

  return v10;
}

@end