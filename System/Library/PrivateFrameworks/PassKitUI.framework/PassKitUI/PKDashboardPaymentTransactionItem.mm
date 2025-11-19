@interface PKDashboardPaymentTransactionItem
- (BOOL)isEqual:(id)a3;
- (PKDashboardPaymentTransactionItem)initWithTransactionSourceCollection:(id)a3 familyCollection:(id)a4 transaction:(id)a5 account:(id)a6 accountUserCollection:(id)a7 bankConnectInstitution:(id)a8;
- (unint64_t)hash;
@end

@implementation PKDashboardPaymentTransactionItem

- (PKDashboardPaymentTransactionItem)initWithTransactionSourceCollection:(id)a3 familyCollection:(id)a4 transaction:(id)a5 account:(id)a6 accountUserCollection:(id)a7 bankConnectInstitution:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PKDashboardPaymentTransactionItem;
  v18 = [(PKDashboardPaymentTransactionItem *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_transaction, a5);
    objc_storeStrong(&v19->_transactionSourceCollection, a3);
    objc_storeStrong(&v19->_familyCollection, a4);
    objc_storeStrong(&v19->_account, a6);
    objc_storeStrong(&v19->_accountUserCollection, a7);
    objc_storeStrong(&v19->_bankConnectInstitution, a8);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKPaymentTransaction *)self->_transaction identifier];
    v6 = [v4[2] identifier];
    v7 = PKEqualObjects();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKPaymentTransaction *)self->_transaction identifier];
  [v3 safelyAddObject:v4];

  v5 = PKCombinedHash();
  return v5;
}

@end