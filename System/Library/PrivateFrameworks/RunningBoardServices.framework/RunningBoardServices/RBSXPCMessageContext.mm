@interface RBSXPCMessageContext
+ (id)currentContext;
+ (void)handoffContextOnQueue:(id)a3 block:(id)a4;
+ (void)runWithoutContext:(id)a3;
- (void)_initWithHandoffToken:(void *)a1;
- (void)_set;
- (void)_unset;
- (void)handoffToQueue:(id)a3 block:(id)a4;
@end

@implementation RBSXPCMessageContext

- (void)_unset
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AF00] currentThread];
    v4 = [v2 threadDictionary];

    v3 = [v4 objectForKey:@"RBSXPCCurrentContext"];

    if (v3 == a1)
    {
      [v4 removeObjectForKey:@"RBSXPCCurrentContext"];
    }
  }
}

- (void)_set
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AF00] currentThread];
    v5 = [v2 threadDictionary];

    v3 = [v5 objectForKey:@"RBSXPCCurrentContext"];

    if (v3)
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel__set object:a1 file:@"RBSXPCUtilities.m" lineNumber:89 description:@"must not have an existing message context"];
    }

    [v5 setObject:a1 forKey:@"RBSXPCCurrentContext"];
  }
}

+ (id)currentContext
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"RBSXPCCurrentContext"];

  return v4;
}

+ (void)runWithoutContext:(id)a3
{
  v5 = a3;
  v3 = +[RBSXPCMessageContext currentContext];
  v4 = v3;
  if (v3)
  {
    [(RBSXPCMessageContext *)v3 _unset];
    v5[2]();
    [(RBSXPCMessageContext *)v4 _set];
  }

  else
  {
    v5[2]();
  }
}

+ (void)handoffContextOnQueue:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[RBSXPCMessageContext currentContext];
  v8 = v7;
  if (v7)
  {
    [v7 handoffToQueue:v6 block:v5];
  }

  else
  {
    dispatch_async(v6, v5);
  }
}

- (void)_initWithHandoffToken:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = RBSXPCMessageContext;
    v5 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = xpc_dictionary_get_remote_connection(v4);
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

- (void)handoffToQueue:(id)a3 block:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = +[RBSXPCMessageContext currentContext];

  if (v9 != self)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"RBSXPCUtilities.m" lineNumber:77 description:@"current context does not match context being handed off"];
  }

  [(RBSXPCMessageContext *)self _unset];
  handoffToken = self->_handoffToken;
  v11 = v7;
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