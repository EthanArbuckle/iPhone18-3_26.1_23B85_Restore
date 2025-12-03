@interface SBAnalyticsContextProvider
- (NSString)description;
- (SBAnalyticsContextProvider)initWithEventPayload:(id)payload backend:(id)backend;
- (void)stateForQueryName:(unint64_t)name completion:(id)completion;
@end

@implementation SBAnalyticsContextProvider

- (SBAnalyticsContextProvider)initWithEventPayload:(id)payload backend:(id)backend
{
  payloadCopy = payload;
  backendCopy = backend;
  v16.receiver = self;
  v16.super_class = SBAnalyticsContextProvider;
  v8 = [(SBAnalyticsContextProvider *)&v16 init];
  if (v8)
  {
    v9 = CACurrentMediaTime();
    v10 = [payloadCopy objectForKeyedSubscript:*MEMORY[0x1E69D4550]];
    v11 = v10;
    if (v10)
    {
      [v10 doubleValue];
      v9 = v12;
    }

    v13 = [MEMORY[0x1E69D4188] withTimestamp:payloadCopy payload:v9];
    eventPayload = v8->_eventPayload;
    v8->_eventPayload = v13;

    objc_storeStrong(&v8->_backend, backend);
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  eventPayload = [(SBAnalyticsContextProvider *)self eventPayload];
  v5 = [v3 appendObject:eventPayload withName:@"eventPayload"];

  build = [v3 build];

  return build;
}

- (void)stateForQueryName:(unint64_t)name completion:(id)completion
{
  completionCopy = completion;
  backend = self->_backend;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SBAnalyticsContextProvider_stateForQueryName_completion___block_invoke;
  v9[3] = &unk_1E807FC88;
  v10 = completionCopy;
  v8 = completionCopy;
  [(SBFAnalyticsBackend *)backend stateForQueryName:name completion:v9];
}

void __59__SBAnalyticsContextProvider_stateForQueryName_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69D4188];
  v4 = a2;
  v5 = [v3 withTimestamp:v4 payload:CACurrentMediaTime()];

  (*(*(a1 + 32) + 16))();
}

@end