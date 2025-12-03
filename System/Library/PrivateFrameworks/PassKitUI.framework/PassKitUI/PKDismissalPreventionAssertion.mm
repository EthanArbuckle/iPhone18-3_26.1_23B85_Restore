@interface PKDismissalPreventionAssertion
- (PKDismissalPreventionAssertion)initWithInvalidationHandler:(id)handler;
@end

@implementation PKDismissalPreventionAssertion

- (PKDismissalPreventionAssertion)initWithInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = PKDismissalPreventionAssertion;
  v5 = [(PKDismissalPreventionAssertion *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_invalidated = 0;
    v7 = _Block_copy(handlerCopy);
    invalidationHandler = v6->_invalidationHandler;
    v6->_invalidationHandler = v7;
  }

  return v6;
}

@end