@interface PLAssetTransactionReason
+ (id)transactionReason:(id)a3;
@end

@implementation PLAssetTransactionReason

+ (id)transactionReason:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PLAssetTransactionReason);
  [(PLAssetTransactionReason *)v4 setReason:v3];

  return v4;
}

@end