@interface PLAssetTransactionReason
+ (id)transactionReason:(id)reason;
@end

@implementation PLAssetTransactionReason

+ (id)transactionReason:(id)reason
{
  reasonCopy = reason;
  v4 = objc_alloc_init(PLAssetTransactionReason);
  [(PLAssetTransactionReason *)v4 setReason:reasonCopy];

  return v4;
}

@end