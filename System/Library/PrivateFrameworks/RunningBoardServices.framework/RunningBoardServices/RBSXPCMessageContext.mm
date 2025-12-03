@interface RBSXPCMessageContext
+ (id)currentContext;
+ (void)handoffContextOnQueue:(id)queue block:(id)block;
+ (void)runWithoutContext:(id)context;
- (void)_initWithHandoffToken:(void *)token;
- (void)_set;
- (void)_unset;
- (void)handoffToQueue:(id)queue block:(id)block;
@end

@implementation RBSXPCMessageContext

- (void)_unset
{
  if (self)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v3 = [threadDictionary objectForKey:@"RBSXPCCurrentContext"];

    if (v3 == self)
    {
      [threadDictionary removeObjectForKey:@"RBSXPCCurrentContext"];
    }
  }
}

- (void)_set
{
  if (self)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v3 = [threadDictionary objectForKey:@"RBSXPCCurrentContext"];

    if (v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__set object:self file:@"RBSXPCUtilities.m" lineNumber:89 description:@"must not have an existing message context"];
    }

    [threadDictionary setObject:self forKey:@"RBSXPCCurrentContext"];
  }
}

+ (id)currentContext
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"RBSXPCCurrentContext"];

  return v4;
}

+ (void)runWithoutContext:(id)context
{
  contextCopy = context;
  v3 = +[RBSXPCMessageContext currentContext];
  v4 = v3;
  if (v3)
  {
    [(RBSXPCMessageContext *)v3 _unset];
    contextCopy[2]();
    [(RBSXPCMessageContext *)v4 _set];
  }

  else
  {
    contextCopy[2]();
  }
}

+ (void)handoffContextOnQueue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v7 = +[RBSXPCMessageContext currentContext];
  v8 = v7;
  if (v7)
  {
    [v7 handoffToQueue:queueCopy block:blockCopy];
  }

  else
  {
    dispatch_async(queueCopy, blockCopy);
  }
}

- (void)_initWithHandoffToken:(void *)token
{
  v4 = a2;
  if (token)
  {
    v9.receiver = token;
    v9.super_class = RBSXPCMessageContext;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    token = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = xpc_dictionary_get_remote_connection(v4);
      v7 = token[2];
      token[2] = v6;
    }
  }

  return token;
}

- (void)handoffToQueue:(id)queue block:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  v9 = +[RBSXPCMessageContext currentContext];

  if (v9 != self)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"RBSXPCUtilities.m" lineNumber:77 description:@"current context does not match context being handed off"];
  }

  [(RBSXPCMessageContext *)self _unset];
  handoffToken = self->_handoffToken;
  v11 = blockCopy;
  xpc_dictionary_handoff_reply();
}

void __45__RBSXPCMessageContext_handoffToQueue_block___block_invoke(uint64_t a1)
{
  [(RBSXPCMessageContext *)*(a1 + 32) _set];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  [(RBSXPCMessageContext *)v2 _unset];
}

@end