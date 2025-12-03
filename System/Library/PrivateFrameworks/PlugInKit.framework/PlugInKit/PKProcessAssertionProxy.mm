@interface PKProcessAssertionProxy
- (BOOL)acquire;
- (id)invalidationHandler;
- (void)invalidate;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation PKProcessAssertionProxy

- (void)invalidate
{
  _bksObject = [(PKProcessAssertionProxy *)self _bksObject];
  [_bksObject invalidate];
}

- (BOOL)acquire
{
  _bksObject = [(PKProcessAssertionProxy *)self _bksObject];
  acquire = [_bksObject acquire];

  return acquire;
}

- (id)invalidationHandler
{
  _bksObject = [(PKProcessAssertionProxy *)self _bksObject];
  invalidationHandler = [_bksObject invalidationHandler];

  return invalidationHandler;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  _bksObject = [(PKProcessAssertionProxy *)self _bksObject];
  [_bksObject setInvalidationHandler:handlerCopy];
}

@end