@interface PKDashboardTransitItem
- (PKDashboardTransitItem)initWithPass:(id)pass transitBalanceModel:(id)model type:(unint64_t)type;
@end

@implementation PKDashboardTransitItem

- (PKDashboardTransitItem)initWithPass:(id)pass transitBalanceModel:(id)model type:(unint64_t)type
{
  passCopy = pass;
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = PKDashboardTransitItem;
  v11 = [(PKDashboardTransitItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_pass, pass);
    objc_storeStrong(&v12->_transitBalanceModel, model);
    v12->_transitItemType = type;
  }

  return v12;
}

@end