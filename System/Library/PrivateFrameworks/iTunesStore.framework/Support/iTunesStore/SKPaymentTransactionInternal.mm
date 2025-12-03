@interface SKPaymentTransactionInternal
- (SKPaymentTransactionInternal)init;
@end

@implementation SKPaymentTransactionInternal

- (SKPaymentTransactionInternal)init
{
  v8.receiver = self;
  v8.super_class = SKPaymentTransactionInternal;
  v2 = [(SKPaymentTransactionInternal *)&v8 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = uUIDString;

    downloads = v2->_downloads;
    v2->_downloads = &__NSArray0__struct;
  }

  return v2;
}

@end