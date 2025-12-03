@interface PKDashboardPaymentTransactionItem
- (BOOL)isEqual:(id)equal;
- (PKDashboardPaymentTransactionItem)initWithTransactionSourceCollection:(id)collection familyCollection:(id)familyCollection transaction:(id)transaction account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution;
- (unint64_t)hash;
@end

@implementation PKDashboardPaymentTransactionItem

- (PKDashboardPaymentTransactionItem)initWithTransactionSourceCollection:(id)collection familyCollection:(id)familyCollection transaction:(id)transaction account:(id)account accountUserCollection:(id)userCollection bankConnectInstitution:(id)institution
{
  collectionCopy = collection;
  familyCollectionCopy = familyCollection;
  transactionCopy = transaction;
  accountCopy = account;
  userCollectionCopy = userCollection;
  institutionCopy = institution;
  v24.receiver = self;
  v24.super_class = PKDashboardPaymentTransactionItem;
  v18 = [(PKDashboardPaymentTransactionItem *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_transaction, transaction);
    objc_storeStrong(&v19->_transactionSourceCollection, collection);
    objc_storeStrong(&v19->_familyCollection, familyCollection);
    objc_storeStrong(&v19->_account, account);
    objc_storeStrong(&v19->_accountUserCollection, userCollection);
    objc_storeStrong(&v19->_bankConnectInstitution, institution);
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(PKPaymentTransaction *)self->_transaction identifier];
    identifier2 = [equalCopy[2] identifier];
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
  identifier = [(PKPaymentTransaction *)self->_transaction identifier];
  [v3 safelyAddObject:identifier];

  v5 = PKCombinedHash();
  return v5;
}

@end