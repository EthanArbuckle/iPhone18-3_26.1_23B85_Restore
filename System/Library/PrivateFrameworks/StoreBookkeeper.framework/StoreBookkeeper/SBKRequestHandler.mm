@interface SBKRequestHandler
- (SBKRequestHandler)initWithBagContext:(id)context;
- (void)cancel;
- (void)timeout;
@end

@implementation SBKRequestHandler

- (void)cancel
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBKRequestHandler.m" lineNumber:31 description:@"Subclass must implement"];
}

- (void)timeout
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBKRequestHandler.m" lineNumber:26 description:@"Subclass must implement"];
}

- (SBKRequestHandler)initWithBagContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SBKRequestHandler;
  v6 = [(SBKRequestHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagContext, context);
  }

  return v7;
}

@end