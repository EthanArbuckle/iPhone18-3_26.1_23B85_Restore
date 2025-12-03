@interface RTIInputSystemServiceSessionPlaceholder
+ (id)placeholderServiceSessionWithIdentifier:(id)identifier traits:(id)traits state:(id)state;
- (RTIInputSystemServiceSessionPlaceholder)initWithConnection:(id)connection;
- (RTIInputSystemServiceSessionPlaceholder)initWithIdentifier:(id)identifier traits:(id)traits state:(id)state;
- (void)_updateAppIdsFromConnectionOnInternalQueueWithCompletionHandler:(id)handler;
- (void)flushOperations;
- (void)flushOperationsWithResultHandler:(id)handler;
@end

@implementation RTIInputSystemServiceSessionPlaceholder

+ (id)placeholderServiceSessionWithIdentifier:(id)identifier traits:(id)traits state:(id)state
{
  stateCopy = state;
  traitsCopy = traits;
  identifierCopy = identifier;
  v10 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy traits:traitsCopy state:stateCopy];

  return v10;
}

- (RTIInputSystemServiceSessionPlaceholder)initWithConnection:(id)connection
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v5 = objc_alloc_init(RTIDocumentTraits);
  v6 = objc_alloc_init(RTIDocumentState);
  v7 = [(RTIInputSystemServiceSessionPlaceholder *)self initWithIdentifier:uUID traits:v5 state:v6];

  return v7;
}

- (RTIInputSystemServiceSessionPlaceholder)initWithIdentifier:(id)identifier traits:(id)traits state:(id)state
{
  identifierCopy = identifier;
  traitsCopy = traits;
  stateCopy = state;
  v16.receiver = self;
  v16.super_class = RTIInputSystemServiceSessionPlaceholder;
  v11 = [(RTIInputSystemServiceSession *)&v16 initWithConnection:0];
  v12 = v11;
  if (v11)
  {
    [(RTIInputSystemSession *)v11 setUuid:identifierCopy];
    v13 = [traitsCopy copy];
    [(RTIInputSystemSession *)v12 setDocumentTraits:v13];

    v14 = [stateCopy copy];
    [(RTIInputSystemSession *)v12 setDocumentState:v14];
  }

  return v12;
}

- (void)_updateAppIdsFromConnectionOnInternalQueueWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- (void)flushOperations
{
  internalQueue = [(RTIInputSystemServiceSession *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  internalQueue2 = [(RTIInputSystemServiceSession *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__RTIInputSystemServiceSessionPlaceholder_flushOperations__block_invoke;
  block[3] = &unk_1E75140C8;
  block[4] = self;
  dispatch_sync(internalQueue2, block);
}

void __58__RTIInputSystemServiceSessionPlaceholder_flushOperations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textOperations];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 textOperations];
    v5 = [*(a1 + 32) documentState];
    [v3 _applyLocalTextOperations:v4 toDocumentState:v5];

    v6 = *(a1 + 32);

    [v6 setTextOperations:0];
  }
}

- (void)flushOperationsWithResultHandler:(id)handler
{
  internalQueue = [(RTIInputSystemServiceSession *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  internalQueue2 = [(RTIInputSystemServiceSession *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__RTIInputSystemServiceSessionPlaceholder_flushOperationsWithResultHandler___block_invoke;
  block[3] = &unk_1E75140C8;
  block[4] = self;
  dispatch_sync(internalQueue2, block);
}

void __76__RTIInputSystemServiceSessionPlaceholder_flushOperationsWithResultHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textOperations];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 textOperations];
    v5 = [*(a1 + 32) documentState];
    [v3 _applyLocalTextOperations:v4 toDocumentState:v5];

    v6 = *(a1 + 32);

    [v6 setTextOperations:0];
  }
}

@end