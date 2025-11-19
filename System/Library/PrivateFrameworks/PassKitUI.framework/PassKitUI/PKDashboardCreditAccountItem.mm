@interface PKDashboardCreditAccountItem
- (PKDashboardCreditAccountItem)initWithAccount:(id)a3 accountUserCollection:(id)a4 physicalCards:(id)a5 transactionSourceCollection:(id)a6 familyCollection:(id)a7 avatarManager:(id)a8 type:(unint64_t)a9;
@end

@implementation PKDashboardCreditAccountItem

- (PKDashboardCreditAccountItem)initWithAccount:(id)a3 accountUserCollection:(id)a4 physicalCards:(id)a5 transactionSourceCollection:(id)a6 familyCollection:(id)a7 avatarManager:(id)a8 type:(unint64_t)a9
{
  v16 = a3;
  v26 = a4;
  v17 = a5;
  v25 = a6;
  v18 = a7;
  v19 = a8;
  v27.receiver = self;
  v27.super_class = PKDashboardCreditAccountItem;
  v20 = [(PKDashboardCreditAccountItem *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_account, a3);
    objc_storeStrong(&v21->_accountUserCollection, a4);
    v22 = [v17 copy];
    physicalCards = v21->_physicalCards;
    v21->_physicalCards = v22;

    objc_storeStrong(&v21->_transactionSourceCollection, a6);
    objc_storeStrong(&v21->_familyCollection, a7);
    objc_storeStrong(&v21->_avatarManager, a8);
    v21->_type = a9;
  }

  return v21;
}

@end