@interface DaemonPurchaseResponse
- (void)dealloc;
@end

@implementation DaemonPurchaseResponse

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DaemonPurchaseResponse;
  [(DaemonPurchaseResponse *)&v3 dealloc];
}

@end