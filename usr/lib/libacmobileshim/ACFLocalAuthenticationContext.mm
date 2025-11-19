@interface ACFLocalAuthenticationContext
- (LAContext)context;
- (void)dealloc;
- (void)evaluatePolicy:(int64_t)a3 completion:(id)a4;
@end

@implementation ACFLocalAuthenticationContext

- (void)dealloc
{
  [(ACFLocalAuthenticationContext *)self setContext:0];
  [(ACFLocalAuthenticationContext *)self setLocalizedReason:0];
  [(ACFLocalAuthenticationContext *)self setLocalizedFallbackTitle:0];
  v3.receiver = self;
  v3.super_class = ACFLocalAuthenticationContext;
  [(ACFLocalAuthenticationContext *)&v3 dealloc];
}

- (LAContext)context
{
  result = self->_context;
  if (!result)
  {
    result = objc_opt_new();
    self->_context = result;
  }

  return result;
}

- (void)evaluatePolicy:(int64_t)a3 completion:(id)a4
{
  if (!a4)
  {
    [objc_msgSend(MEMORY[0x29EDB9F28] "currentHandler")];
  }

  v7 = [a4 copy];
  if ([(ACFLocalAuthenticationContext *)self localizedFallbackTitle])
  {
    [(LAContext *)[(ACFLocalAuthenticationContext *)self context] setLocalizedFallbackTitle:[(ACFLocalAuthenticationContext *)self localizedFallbackTitle]];
  }

  v8 = [(ACFLocalAuthenticationContext *)self context];
  v9 = [(ACFLocalAuthenticationContext *)self localizedReason];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __59__ACFLocalAuthenticationContext_evaluatePolicy_completion___block_invoke;
  v10[3] = &unk_29EE91A80;
  v10[4] = v7;
  [(LAContext *)v8 evaluatePolicy:a3 localizedReason:v9 reply:v10];
}

void __59__ACFLocalAuthenticationContext_evaluatePolicy_completion___block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __59__ACFLocalAuthenticationContext_evaluatePolicy_completion___block_invoke_2;
  v4[3] = &unk_29EE91A58;
  v3 = *(a1 + 32);
  v5 = a2;
  v4[4] = a3;
  v4[5] = v3;
  dispatch_async_on_main_thread(v4);
}

@end