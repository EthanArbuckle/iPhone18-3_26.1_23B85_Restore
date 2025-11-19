@interface UIViewServiceImplicitAnimationDecodingProxy
@end

@implementation UIViewServiceImplicitAnimationDecodingProxy

void __66___UIViewServiceImplicitAnimationDecodingProxy_forwardInvocation___block_invoke(uint64_t a1)
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __66___UIViewServiceImplicitAnimationDecodingProxy_forwardInvocation___block_invoke_2;
  v9 = &unk_1E70F35B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10 = v2;
  v11 = v3;
  v4 = _Block_copy(&v6);
  v5 = v4;
  if (*(*(a1 + 40) + 32) == 1)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    [UIView performWithoutAnimation:v4, v6, v7, v8, v9];
  }
}

id __66___UIViewServiceImplicitAnimationDecodingProxy_forwardInvocation___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = _UIViewServiceImplicitAnimationDecodingProxy;
  return objc_msgSendSuper2(&v3, sel_forwardInvocation_, v1);
}

@end