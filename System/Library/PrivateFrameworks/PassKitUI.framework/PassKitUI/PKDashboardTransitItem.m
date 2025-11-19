@interface PKDashboardTransitItem
- (PKDashboardTransitItem)initWithPass:(id)a3 transitBalanceModel:(id)a4 type:(unint64_t)a5;
@end

@implementation PKDashboardTransitItem

- (PKDashboardTransitItem)initWithPass:(id)a3 transitBalanceModel:(id)a4 type:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKDashboardTransitItem;
  v11 = [(PKDashboardTransitItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pass, a3);
    objc_storeStrong(&v12->_transitBalanceModel, a4);
    v12->_transitItemType = a5;
  }

  return v12;
}

@end