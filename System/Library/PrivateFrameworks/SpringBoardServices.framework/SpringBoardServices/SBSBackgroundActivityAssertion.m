@interface SBSBackgroundActivityAssertion
+ (id)assertionWithBackgroundActivityIdentifier:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6;
+ (id)assertionWithBackgroundActivityIdentifiers:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6;
+ (id)backgroundLocationAssertionForPID:(int)a3;
- (SBSBackgroundActivityAssertion)initWithBackgroundActivityAssertionData:(id)a3;
- (SBSBackgroundActivityAssertion)initWithBackgroundActivityIdentifiers:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)acquireWithHandler:(id)a3 invalidationHandler:(id)a4;
- (void)acquireWithHandler:(id)a3 onQueue:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)setStatusString:(id)a3;
@end

@implementation SBSBackgroundActivityAssertion

- (void)invalidate
{
  v3 = +[SBSBackgroundActivityAssertionManager sharedInstance];
  [v3 removeBackgroundActivityAssertion:self];
}

- (void)dealloc
{
  v3 = +[SBSBackgroundActivityAssertionManager sharedInstance];
  [v3 removeBackgroundActivityAssertion:self];

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v5.receiver = self;
  v5.super_class = SBSBackgroundActivityAssertion;
  [(SBSBackgroundActivityAssertion *)&v5 dealloc];
}

+ (id)backgroundLocationAssertionForPID:(int)a3
{
  v3 = *&a3;
  v4 = getSTBackgroundActivityIdentifierBackgroundLocation();
  v5 = [SBSBackgroundActivityAssertion assertionWithBackgroundActivityIdentifier:v4 forPID:v3 exclusive:0 showsWhenForeground:0];

  return v5;
}

+ (id)assertionWithBackgroundActivityIdentifier:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = *&a4;
  v10 = a3;
  v11 = [a1 alloc];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:v10];

  v13 = [v11 initWithBackgroundActivityIdentifiers:v12 forPID:v8 exclusive:v7 showsWhenForeground:v6];

  return v13;
}

+ (id)assertionWithBackgroundActivityIdentifiers:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = *&a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithBackgroundActivityIdentifiers:v10 forPID:v8 exclusive:v7 showsWhenForeground:v6];

  return v11;
}

- (SBSBackgroundActivityAssertion)initWithBackgroundActivityIdentifiers:(id)a3 forPID:(int)a4 exclusive:(BOOL)a5 showsWhenForeground:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = *&a4;
  v10 = a3;
  v11 = [[SBSBackgroundActivityAssertionData alloc] initWithBackgroundActivityIdentifiers:v10 forPID:v8 exclusive:v7 showsWhenForeground:v6];

  v12 = [(SBSBackgroundActivityAssertion *)self initWithBackgroundActivityAssertionData:v11];
  return v12;
}

- (SBSBackgroundActivityAssertion)initWithBackgroundActivityAssertionData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSBackgroundActivityAssertion;
  v6 = [(SBSBackgroundActivityAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assertionData, a3);
  }

  return v7;
}

- (void)setStatusString:(id)a3
{
  v7 = a3;
  v4 = [(SBSBackgroundActivityAssertionData *)self->_assertionData statusString];
  v5 = [v4 isEqualToString:v7];

  if ((v5 & 1) == 0)
  {
    [(SBSBackgroundActivityAssertionData *)self->_assertionData setStatusString:v7];
    v6 = +[SBSBackgroundActivityAssertionManager sharedInstance];
    [v6 updateStatusStringForAssertion:self];
  }
}

- (void)acquireWithHandler:(id)a3 invalidationHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SBSBackgroundActivityAssertionManager sharedInstance];
  if (v8)
  {
    v9 = [v7 copy];
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = v9;

    [v8 addBackgroundActivityAssertion:self withHandler:v6 onQueue:0];
  }

  else if (v6)
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__SBSBackgroundActivityAssertion_acquireWithHandler_invalidationHandler___block_invoke;
    block[3] = &unk_1E735F148;
    v13 = v6;
    dispatch_async(v11, block);
  }
}

- (void)acquireWithHandler:(id)a3 onQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[SBSBackgroundActivityAssertionManager sharedInstance];
  v9 = v8;
  if (v8)
  {
    [v8 addBackgroundActivityAssertion:self withHandler:v6 onQueue:v7];
  }

  else if (v6)
  {
    v10 = v7;
    if (!v7)
    {
      v10 = dispatch_get_global_queue(0, 0);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SBSBackgroundActivityAssertion_acquireWithHandler_onQueue___block_invoke;
    block[3] = &unk_1E735F148;
    v12 = v6;
    dispatch_async(v10, block);
    if (!v7)
    {
    }
  }
}

- (id)succinctDescription
{
  v2 = [(SBSBackgroundActivityAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSBackgroundActivityAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSBackgroundActivityAssertion *)self assertionData];
  v6 = [v5 descriptionBuilderWithMultilinePrefix:v4];

  return v6;
}

@end