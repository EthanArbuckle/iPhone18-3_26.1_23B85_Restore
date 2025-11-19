@interface UIHyperGesture
@end

@implementation UIHyperGesture

uint64_t __34___UIHyperGesture__handleGesture___block_invoke_3(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _hyperGestureUpdateStateForInteractionChanged:v4];
  }

  return result;
}

uint64_t __34___UIHyperGesture__handleGesture___block_invoke_4(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _hyperGestureUpdateStateForInteractionEnded:v4];
  }

  return result;
}

@end