@interface SBAnalyticsContextProvider
- (NSString)description;
- (SBAnalyticsContextProvider)initWithEventPayload:(id)a3 backend:(id)a4;
- (void)stateForQueryName:(unint64_t)a3 completion:(id)a4;
@end

@implementation SBAnalyticsContextProvider

- (SBAnalyticsContextProvider)initWithEventPayload:(id)a3 backend:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = SBAnalyticsContextProvider;
  v8 = [(SBAnalyticsContextProvider *)&v16 init];
  if (v8)
  {
    v9 = CACurrentMediaTime();
    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69D4550]];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v9 = v12;
    }

    v13 = [MEMORY[0x1E69D4188] withTimestamp:v6 payload:v9];
    eventPayload = v8->_eventPayload;
    v8->_eventPayload = v13;

    objc_storeStrong(&v8->_backend, a4);
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(SBAnalyticsContextProvider *)self eventPayload];
  v5 = [v3 appendObject:v4 withName:@"eventPayload"];

  v6 = [v3 build];

  return v6;
}

- (void)stateForQueryName:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  backend = self->_backend;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SBAnalyticsContextProvider_stateForQueryName_completion___block_invoke;
  v9[3] = &unk_1E807FC88;
  v10 = v6;
  v8 = v6;
  [(SBFAnalyticsBackend *)backend stateForQueryName:a3 completion:v9];
}

void __59__SBAnalyticsContextProvider_stateForQueryName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D4188];
  v4 = a2;
  v5 = [v3 withTimestamp:v4 payload:CACurrentMediaTime()];

  (*(*(a1 + 32) + 16))();
}

@end