@interface STSDCKAssertion
- (STSDCKAssertion)initWithAssertion:(id)assertion;
- (void)dealloc;
@end

@implementation STSDCKAssertion

- (STSDCKAssertion)initWithAssertion:(id)assertion
{
  assertionCopy = assertion;
  v9.receiver = self;
  v9.super_class = STSDCKAssertion;
  v6 = [(STSDCKAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assertion, assertion);
  }

  return v7;
}

- (void)dealloc
{
  [(STSDCKAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = STSDCKAssertion;
  [(STSDCKAssertion *)&v3 dealloc];
}

@end