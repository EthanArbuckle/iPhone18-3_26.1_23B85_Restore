@interface PKDismissalPreventionAssertion
- (PKDismissalPreventionAssertion)initWithInvalidationHandler:(id)a3;
@end

@implementation PKDismissalPreventionAssertion

- (PKDismissalPreventionAssertion)initWithInvalidationHandler:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKDismissalPreventionAssertion;
  v5 = [(PKDismissalPreventionAssertion *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_invalidated = 0;
    v7 = _Block_copy(v4);
    invalidationHandler = v6->_invalidationHandler;
    v6->_invalidationHandler = v7;
  }

  return v6;
}

@end