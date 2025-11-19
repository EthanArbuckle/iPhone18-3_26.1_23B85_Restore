@interface SUScriptWindowContext
- (SUScriptWindowContext)init;
@end

@implementation SUScriptWindowContext

- (SUScriptWindowContext)init
{
  v3.receiver = self;
  v3.super_class = SUScriptWindowContext;
  result = [(SUScriptWindowContext *)&v3 init];
  if (result)
  {
    result->_tag = atomic_fetch_add_explicit(init_sTag, 1u, memory_order_relaxed) + 1;
  }

  return result;
}

@end