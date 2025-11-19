@interface VMAutoCancelationToken
- (void)dealloc;
@end

@implementation VMAutoCancelationToken

- (void)dealloc
{
  [(VFCancelationToken *)self cancel];
  v3.receiver = self;
  v3.super_class = VMAutoCancelationToken;
  [(VMAutoCancelationToken *)&v3 dealloc];
}

@end