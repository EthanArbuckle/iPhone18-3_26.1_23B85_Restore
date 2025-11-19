@interface SUScriptObjectBatchProxy
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation SUScriptObjectBatchProxy

- (void)forwardInvocation:(id)a3
{
  v6 = a3;
  v4 = [(SUScriptObjectBatchProxy *)self invocationBatch];
  v5 = [(SUScriptObjectBatchProxy *)self target];
  [v6 setTarget:v5];

  if (v4)
  {
    [v4 enqueueInvocation:v6];
  }

  else
  {
    [v6 retainArguments];
    [v6 performSelectorOnMainThread:sel_invoke withObject:0 waitUntilDone:0];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = SUScriptObjectBatchProxy;
  v5 = [(SUScriptObjectBatchProxy *)&v8 methodSignatureForSelector:?];
  if (!v5)
  {
    v6 = [(SUScriptObjectBatchProxy *)self target];
    v5 = [v6 methodSignatureForSelector:a3];
  }

  return v5;
}

@end