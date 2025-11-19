@interface FxPrincipalAPIHandler
- (FxPrincipalAPIHandler)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation FxPrincipalAPIHandler

- (FxPrincipalAPIHandler)initWithDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = FxPrincipalAPIHandler;
  v4 = [(FxPrincipalAPIHandler *)&v6 init];
  if (v4)
  {
    v4->_delegate = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FxPrincipalAPIHandler;
  [(FxPrincipalAPIHandler *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  delegate = self->_delegate;
  self->_delegate = a3;
}

@end