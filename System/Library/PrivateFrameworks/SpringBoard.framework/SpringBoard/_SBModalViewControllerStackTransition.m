@interface _SBModalViewControllerStackTransition
+ (_SBModalViewControllerStackTransition)transitionForViewController:(unint64_t)a3 operation:(BOOL)a4 animated:(void *)a5 completion:;
- (uint64_t)setAnimated:(uint64_t)result;
- (uint64_t)setOperation:(uint64_t)result;
- (void)invokeCompletionIfNecessaryWithResult:(uint64_t)a1;
- (void)setCompletion:(void *)a1;
@end

@implementation _SBModalViewControllerStackTransition

+ (_SBModalViewControllerStackTransition)transitionForViewController:(unint64_t)a3 operation:(BOOL)a4 animated:(void *)a5 completion:
{
  v8 = a5;
  v9 = a2;
  objc_opt_self();
  v10 = objc_alloc_init(_SBModalViewControllerStackTransition);
  [(SBKeyboardClientSettingObserverContext *)v10 setScene:v9];

  if (v10)
  {
    v10->_operation = a3;
    v10->_animated = a4;
    objc_setProperty_nonatomic_copy(v10, v11, v8, 32);
  }

  return v10;
}

- (uint64_t)setOperation:(uint64_t)result
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

- (uint64_t)setAnimated:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (void)setCompletion:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 32);
  }
}

- (void)invokeCompletionIfNecessaryWithResult:(uint64_t)a1
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      (*(v2 + 16))();
      v3 = *(a1 + 32);
      *(a1 + 32) = 0;
    }
  }
}

@end