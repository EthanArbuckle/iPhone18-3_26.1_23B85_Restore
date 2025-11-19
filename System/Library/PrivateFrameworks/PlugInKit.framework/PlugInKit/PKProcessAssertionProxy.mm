@interface PKProcessAssertionProxy
- (BOOL)acquire;
- (id)invalidationHandler;
- (void)invalidate;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation PKProcessAssertionProxy

- (void)invalidate
{
  v2 = [(PKProcessAssertionProxy *)self _bksObject];
  [v2 invalidate];
}

- (BOOL)acquire
{
  v2 = [(PKProcessAssertionProxy *)self _bksObject];
  v3 = [v2 acquire];

  return v3;
}

- (id)invalidationHandler
{
  v2 = [(PKProcessAssertionProxy *)self _bksObject];
  v3 = [v2 invalidationHandler];

  return v3;
}

- (void)setInvalidationHandler:(id)a3
{
  v4 = a3;
  v5 = [(PKProcessAssertionProxy *)self _bksObject];
  [v5 setInvalidationHandler:v4];
}

@end