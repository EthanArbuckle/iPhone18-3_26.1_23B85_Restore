@interface PACancellableToken
- (PACancellableToken)init;
@end

@implementation PACancellableToken

- (PACancellableToken)init
{
  v3.receiver = self;
  v3.super_class = PACancellableToken;
  result = [(PACancellableToken *)&v3 init];
  if (result)
  {
    atomic_store(0, &result->_cancelled);
  }

  return result;
}

@end