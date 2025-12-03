@interface SBSBackgroundActivityAssertion
+ (id)assertionWithBackgroundActivityIdentifier:(id)identifier forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground;
+ (id)assertionWithBackgroundActivityIdentifiers:(id)identifiers forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground;
+ (id)backgroundLocationAssertionForPID:(int)d;
- (SBSBackgroundActivityAssertion)initWithBackgroundActivityAssertionData:(id)data;
- (SBSBackgroundActivityAssertion)initWithBackgroundActivityIdentifiers:(id)identifiers forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)acquireWithHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (void)acquireWithHandler:(id)handler onQueue:(id)queue;
- (void)dealloc;
- (void)invalidate;
- (void)setStatusString:(id)string;
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

+ (id)backgroundLocationAssertionForPID:(int)d
{
  v3 = *&d;
  v4 = getSTBackgroundActivityIdentifierBackgroundLocation();
  v5 = [SBSBackgroundActivityAssertion assertionWithBackgroundActivityIdentifier:v4 forPID:v3 exclusive:0 showsWhenForeground:0];

  return v5;
}

+ (id)assertionWithBackgroundActivityIdentifier:(id)identifier forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  exclusiveCopy = exclusive;
  v8 = *&d;
  identifierCopy = identifier;
  v11 = [self alloc];
  v12 = [MEMORY[0x1E695DFD8] setWithObject:identifierCopy];

  v13 = [v11 initWithBackgroundActivityIdentifiers:v12 forPID:v8 exclusive:exclusiveCopy showsWhenForeground:foregroundCopy];

  return v13;
}

+ (id)assertionWithBackgroundActivityIdentifiers:(id)identifiers forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  exclusiveCopy = exclusive;
  v8 = *&d;
  identifiersCopy = identifiers;
  v11 = [[self alloc] initWithBackgroundActivityIdentifiers:identifiersCopy forPID:v8 exclusive:exclusiveCopy showsWhenForeground:foregroundCopy];

  return v11;
}

- (SBSBackgroundActivityAssertion)initWithBackgroundActivityIdentifiers:(id)identifiers forPID:(int)d exclusive:(BOOL)exclusive showsWhenForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  exclusiveCopy = exclusive;
  v8 = *&d;
  identifiersCopy = identifiers;
  v11 = [[SBSBackgroundActivityAssertionData alloc] initWithBackgroundActivityIdentifiers:identifiersCopy forPID:v8 exclusive:exclusiveCopy showsWhenForeground:foregroundCopy];

  v12 = [(SBSBackgroundActivityAssertion *)self initWithBackgroundActivityAssertionData:v11];
  return v12;
}

- (SBSBackgroundActivityAssertion)initWithBackgroundActivityAssertionData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = SBSBackgroundActivityAssertion;
  v6 = [(SBSBackgroundActivityAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assertionData, data);
  }

  return v7;
}

- (void)setStatusString:(id)string
{
  stringCopy = string;
  statusString = [(SBSBackgroundActivityAssertionData *)self->_assertionData statusString];
  v5 = [statusString isEqualToString:stringCopy];

  if ((v5 & 1) == 0)
  {
    [(SBSBackgroundActivityAssertionData *)self->_assertionData setStatusString:stringCopy];
    v6 = +[SBSBackgroundActivityAssertionManager sharedInstance];
    [v6 updateStatusStringForAssertion:self];
  }
}

- (void)acquireWithHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  handlerCopy = handler;
  invalidationHandlerCopy = invalidationHandler;
  v8 = +[SBSBackgroundActivityAssertionManager sharedInstance];
  if (v8)
  {
    v9 = [invalidationHandlerCopy copy];
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = v9;

    [v8 addBackgroundActivityAssertion:self withHandler:handlerCopy onQueue:0];
  }

  else if (handlerCopy)
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__SBSBackgroundActivityAssertion_acquireWithHandler_invalidationHandler___block_invoke;
    block[3] = &unk_1E735F148;
    v13 = handlerCopy;
    dispatch_async(v11, block);
  }
}

- (void)acquireWithHandler:(id)handler onQueue:(id)queue
{
  handlerCopy = handler;
  queueCopy = queue;
  v8 = +[SBSBackgroundActivityAssertionManager sharedInstance];
  v9 = v8;
  if (v8)
  {
    [v8 addBackgroundActivityAssertion:self withHandler:handlerCopy onQueue:queueCopy];
  }

  else if (handlerCopy)
  {
    v10 = queueCopy;
    if (!queueCopy)
    {
      v10 = dispatch_get_global_queue(0, 0);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SBSBackgroundActivityAssertion_acquireWithHandler_onQueue___block_invoke;
    block[3] = &unk_1E735F148;
    v12 = handlerCopy;
    dispatch_async(v10, block);
    if (!queueCopy)
    {
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSBackgroundActivityAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSBackgroundActivityAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  assertionData = [(SBSBackgroundActivityAssertion *)self assertionData];
  v6 = [assertionData descriptionBuilderWithMultilinePrefix:prefixCopy];

  return v6;
}

@end