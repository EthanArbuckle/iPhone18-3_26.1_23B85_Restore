@interface AEAConcreteOSTransactionPrimitives
- (id)acquireAssessmentModeTransaction;
@end

@implementation AEAConcreteOSTransactionPrimitives

- (id)acquireAssessmentModeTransaction
{
  v2 = os_transaction_create();
  v3 = sub_10007C3D0([AEAConcreteOSTransactionToken alloc], v2);

  return v3;
}

@end