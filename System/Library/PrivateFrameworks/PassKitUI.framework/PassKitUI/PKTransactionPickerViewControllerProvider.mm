@interface PKTransactionPickerViewControllerProvider
+ (id)transactionPickerViewControllerWithAccount:(id)account transaction:(id)transaction transactionCategory:(int64_t)category paymentService:(id)service paymentPass:(id)pass transactionSourceIdentifiers:(id)identifiers accountUserCollection:(id)collection completion:(id)self0;
- (PKTransactionPickerViewControllerProvider)init;
@end

@implementation PKTransactionPickerViewControllerProvider

+ (id)transactionPickerViewControllerWithAccount:(id)account transaction:(id)transaction transactionCategory:(int64_t)category paymentService:(id)service paymentPass:(id)pass transactionSourceIdentifiers:(id)identifiers accountUserCollection:(id)collection completion:(id)self0
{
  v15 = _Block_copy(completion);
  v16 = sub_1BE052A34();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  accountCopy = account;
  transactionCopy = transaction;
  serviceCopy = service;
  passCopy = pass;
  collectionCopy = collection;
  v23 = sub_1BD672898(accountCopy, transactionCopy, category, serviceCopy, passCopy, v16, collectionCopy, sub_1BD1B6B00, v17);

  return v23;
}

- (PKTransactionPickerViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PKTransactionPickerViewControllerProvider *)&v3 init];
}

@end