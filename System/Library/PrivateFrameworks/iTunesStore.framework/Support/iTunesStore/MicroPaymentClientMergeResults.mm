@interface MicroPaymentClientMergeResults
- (void)dealloc;
@end

@implementation MicroPaymentClientMergeResults

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MicroPaymentClientMergeResults;
  [(MicroPaymentClientMergeResults *)&v3 dealloc];
}

@end