@interface UIAsyncInvocation
@end

@implementation UIAsyncInvocation

uint64_t __28___UIAsyncInvocation_invoke__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __28___UIAsyncInvocation_invoke__block_invoke_2;
  v7 = &unk_1E70F3590;
  v8 = v1;
  return (*(v2 + 16))();
}

void __28___UIAsyncInvocation_invoke__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = atomic_load(v1 + 1);
  v3 = v1;
  [v2 _didCompleteInvocation];
}

@end