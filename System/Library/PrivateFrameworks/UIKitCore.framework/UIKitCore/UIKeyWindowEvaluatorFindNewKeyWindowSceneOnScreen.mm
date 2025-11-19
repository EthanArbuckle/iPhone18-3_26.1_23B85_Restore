@interface UIKeyWindowEvaluatorFindNewKeyWindowSceneOnScreen
@end

@implementation UIKeyWindowEvaluatorFindNewKeyWindowSceneOnScreen

BOOL ___UIKeyWindowEvaluatorFindNewKeyWindowSceneOnScreen_block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v6 = a2;
  v7 = [v6 screen];
  v8 = *(a1 + 32);

  v9 = [v6 _effectiveUISettings];
  IsForegroundActive = _UISceneLifecycleStateIsForegroundActive(v9);

  v11 = 0;
  if (v7 == v8 && IsForegroundActive)
  {
    v12 = [(UIWindowScene *)v6 _keyWindow];
    v11 = v12 == 0;
  }

  return v11;
}

@end