@interface SBKRequestHandler
- (SBKRequestHandler)initWithBagContext:(id)a3;
- (void)cancel;
- (void)timeout;
@end

@implementation SBKRequestHandler

- (void)cancel
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBKRequestHandler.m" lineNumber:31 description:@"Subclass must implement"];
}

- (void)timeout
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBKRequestHandler.m" lineNumber:26 description:@"Subclass must implement"];
}

- (SBKRequestHandler)initWithBagContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBKRequestHandler;
  v6 = [(SBKRequestHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagContext, a3);
  }

  return v7;
}

@end