@interface SKDCancellationToken
- (SKDCancellationToken)init;
@end

@implementation SKDCancellationToken

- (SKDCancellationToken)init
{
  *(&self->super.isa + OBJC_IVAR___SKDCancellationToken__isCancelled) = 0;
  v3.receiver = self;
  v3.super_class = SKDCancellationToken;
  return [(SKDCancellationToken *)&v3 init];
}

@end