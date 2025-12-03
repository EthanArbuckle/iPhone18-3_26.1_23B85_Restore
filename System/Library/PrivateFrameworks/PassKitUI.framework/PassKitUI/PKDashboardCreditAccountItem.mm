@interface PKDashboardCreditAccountItem
- (PKDashboardCreditAccountItem)initWithAccount:(id)account accountUserCollection:(id)collection physicalCards:(id)cards transactionSourceCollection:(id)sourceCollection familyCollection:(id)familyCollection avatarManager:(id)manager type:(unint64_t)type;
@end

@implementation PKDashboardCreditAccountItem

- (PKDashboardCreditAccountItem)initWithAccount:(id)account accountUserCollection:(id)collection physicalCards:(id)cards transactionSourceCollection:(id)sourceCollection familyCollection:(id)familyCollection avatarManager:(id)manager type:(unint64_t)type
{
  accountCopy = account;
  collectionCopy = collection;
  cardsCopy = cards;
  sourceCollectionCopy = sourceCollection;
  familyCollectionCopy = familyCollection;
  managerCopy = manager;
  v27.receiver = self;
  v27.super_class = PKDashboardCreditAccountItem;
  v20 = [(PKDashboardCreditAccountItem *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_account, account);
    objc_storeStrong(&v21->_accountUserCollection, collection);
    v22 = [cardsCopy copy];
    physicalCards = v21->_physicalCards;
    v21->_physicalCards = v22;

    objc_storeStrong(&v21->_transactionSourceCollection, sourceCollection);
    objc_storeStrong(&v21->_familyCollection, familyCollection);
    objc_storeStrong(&v21->_avatarManager, manager);
    v21->_type = type;
  }

  return v21;
}

@end