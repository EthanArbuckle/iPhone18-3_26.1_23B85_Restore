@interface _PBFSafeAssertion
- (void)dealloc;
@end

@implementation _PBFSafeAssertion

- (void)dealloc
{
  [(BSSimpleAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _PBFSafeAssertion;
  [(BSSimpleAssertion *)&v3 dealloc];
}

@end