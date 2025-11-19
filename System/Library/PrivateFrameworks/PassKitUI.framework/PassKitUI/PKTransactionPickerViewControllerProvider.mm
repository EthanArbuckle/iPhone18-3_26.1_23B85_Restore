@interface PKTransactionPickerViewControllerProvider
+ (id)transactionPickerViewControllerWithAccount:(id)a3 transaction:(id)a4 transactionCategory:(int64_t)a5 paymentService:(id)a6 paymentPass:(id)a7 transactionSourceIdentifiers:(id)a8 accountUserCollection:(id)a9 completion:(id)a10;
- (PKTransactionPickerViewControllerProvider)init;
@end

@implementation PKTransactionPickerViewControllerProvider

+ (id)transactionPickerViewControllerWithAccount:(id)a3 transaction:(id)a4 transactionCategory:(int64_t)a5 paymentService:(id)a6 paymentPass:(id)a7 transactionSourceIdentifiers:(id)a8 accountUserCollection:(id)a9 completion:(id)a10
{
  v15 = _Block_copy(a10);
  v16 = sub_1BE052A34();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = a3;
  v19 = a4;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = sub_1BD672898(v18, v19, a5, v20, v21, v16, v22, sub_1BD1B6B00, v17);

  return v23;
}

- (PKTransactionPickerViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PKTransactionPickerViewControllerProvider *)&v3 init];
}

@end