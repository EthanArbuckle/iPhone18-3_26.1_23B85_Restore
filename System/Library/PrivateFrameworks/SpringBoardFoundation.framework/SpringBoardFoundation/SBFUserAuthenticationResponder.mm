@interface SBFUserAuthenticationResponder
+ (id)responderWithSuccessHandler:(id)handler failureHandler:(id)failureHandler invalidHandler:(id)invalidHandler;
- (SBFUserAuthenticationResponder)initWithSuccessHandler:(id)handler failureHandler:(id)failureHandler invalidHandler:(id)invalidHandler;
- (void)handleFailedAuthenticationRequest:(id)request error:(id)error;
- (void)handleInvalidAuthenticationRequest:(id)request;
- (void)handleSuccessfulAuthenticationRequest:(id)request;
@end

@implementation SBFUserAuthenticationResponder

+ (id)responderWithSuccessHandler:(id)handler failureHandler:(id)failureHandler invalidHandler:(id)invalidHandler
{
  invalidHandlerCopy = invalidHandler;
  failureHandlerCopy = failureHandler;
  handlerCopy = handler;
  v11 = [[self alloc] initWithSuccessHandler:handlerCopy failureHandler:failureHandlerCopy invalidHandler:invalidHandlerCopy];

  return v11;
}

- (SBFUserAuthenticationResponder)initWithSuccessHandler:(id)handler failureHandler:(id)failureHandler invalidHandler:(id)invalidHandler
{
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  invalidHandlerCopy = invalidHandler;
  v19.receiver = self;
  v19.super_class = SBFUserAuthenticationResponder;
  v11 = [(SBFUserAuthenticationResponder *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x1BFB4D9B0](handlerCopy);
    successHandler = v11->_successHandler;
    v11->_successHandler = v12;

    v14 = MEMORY[0x1BFB4D9B0](failureHandlerCopy);
    failureHandler = v11->_failureHandler;
    v11->_failureHandler = v14;

    v16 = MEMORY[0x1BFB4D9B0](invalidHandlerCopy);
    invalidHandler = v11->_invalidHandler;
    v11->_invalidHandler = v16;
  }

  return v11;
}

- (void)handleSuccessfulAuthenticationRequest:(id)request
{
  successHandler = self->_successHandler;
  if (successHandler)
  {
    successHandler[2]();
  }
}

- (void)handleFailedAuthenticationRequest:(id)request error:(id)error
{
  failureHandler = self->_failureHandler;
  if (failureHandler)
  {
    failureHandler[2](failureHandler, error);
  }
}

- (void)handleInvalidAuthenticationRequest:(id)request
{
  invalidHandler = self->_invalidHandler;
  if (invalidHandler)
  {
    invalidHandler[2]();
  }
}

@end