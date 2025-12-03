@interface FxPrincipalAPIHandler
- (FxPrincipalAPIHandler)initWithDelegate:(id)delegate;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation FxPrincipalAPIHandler

- (FxPrincipalAPIHandler)initWithDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = FxPrincipalAPIHandler;
  v4 = [(FxPrincipalAPIHandler *)&v6 init];
  if (v4)
  {
    v4->_delegate = delegate;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FxPrincipalAPIHandler;
  [(FxPrincipalAPIHandler *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegate = self->_delegate;
  self->_delegate = delegate;
}

@end