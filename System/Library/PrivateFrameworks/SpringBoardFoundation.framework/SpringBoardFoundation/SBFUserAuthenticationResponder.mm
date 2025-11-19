@interface SBFUserAuthenticationResponder
+ (id)responderWithSuccessHandler:(id)a3 failureHandler:(id)a4 invalidHandler:(id)a5;
- (SBFUserAuthenticationResponder)initWithSuccessHandler:(id)a3 failureHandler:(id)a4 invalidHandler:(id)a5;
- (void)handleFailedAuthenticationRequest:(id)a3 error:(id)a4;
- (void)handleInvalidAuthenticationRequest:(id)a3;
- (void)handleSuccessfulAuthenticationRequest:(id)a3;
@end

@implementation SBFUserAuthenticationResponder

+ (id)responderWithSuccessHandler:(id)a3 failureHandler:(id)a4 invalidHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithSuccessHandler:v10 failureHandler:v9 invalidHandler:v8];

  return v11;
}

- (SBFUserAuthenticationResponder)initWithSuccessHandler:(id)a3 failureHandler:(id)a4 invalidHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SBFUserAuthenticationResponder;
  v11 = [(SBFUserAuthenticationResponder *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x1BFB4D9B0](v8);
    successHandler = v11->_successHandler;
    v11->_successHandler = v12;

    v14 = MEMORY[0x1BFB4D9B0](v9);
    failureHandler = v11->_failureHandler;
    v11->_failureHandler = v14;

    v16 = MEMORY[0x1BFB4D9B0](v10);
    invalidHandler = v11->_invalidHandler;
    v11->_invalidHandler = v16;
  }

  return v11;
}

- (void)handleSuccessfulAuthenticationRequest:(id)a3
{
  successHandler = self->_successHandler;
  if (successHandler)
  {
    successHandler[2]();
  }
}

- (void)handleFailedAuthenticationRequest:(id)a3 error:(id)a4
{
  failureHandler = self->_failureHandler;
  if (failureHandler)
  {
    failureHandler[2](failureHandler, a4);
  }
}

- (void)handleInvalidAuthenticationRequest:(id)a3
{
  invalidHandler = self->_invalidHandler;
  if (invalidHandler)
  {
    invalidHandler[2]();
  }
}

@end