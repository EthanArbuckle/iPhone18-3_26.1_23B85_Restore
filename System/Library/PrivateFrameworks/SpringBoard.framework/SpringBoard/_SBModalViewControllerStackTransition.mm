@interface _SBModalViewControllerStackTransition
+ (_SBModalViewControllerStackTransition)transitionForViewController:(unint64_t)controller operation:(BOOL)operation animated:(void *)animated completion:;
- (uint64_t)setAnimated:(uint64_t)result;
- (uint64_t)setOperation:(uint64_t)result;
- (void)invokeCompletionIfNecessaryWithResult:(uint64_t)result;
- (void)setCompletion:(void *)completion;
@end

@implementation _SBModalViewControllerStackTransition

+ (_SBModalViewControllerStackTransition)transitionForViewController:(unint64_t)controller operation:(BOOL)operation animated:(void *)animated completion:
{
  animatedCopy = animated;
  v9 = a2;
  objc_opt_self();
  v10 = objc_alloc_init(_SBModalViewControllerStackTransition);
  [(SBKeyboardClientSettingObserverContext *)v10 setScene:v9];

  if (v10)
  {
    v10->_operation = controller;
    v10->_animated = operation;
    objc_setProperty_nonatomic_copy(v10, v11, animatedCopy, 32);
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

- (void)setCompletion:(void *)completion
{
  if (completion)
  {
    objc_setProperty_nonatomic_copy(completion, newValue, newValue, 32);
  }
}

- (void)invokeCompletionIfNecessaryWithResult:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 32);
    if (v2)
    {
      (*(v2 + 16))();
      v3 = *(result + 32);
      *(result + 32) = 0;
    }
  }
}

@end