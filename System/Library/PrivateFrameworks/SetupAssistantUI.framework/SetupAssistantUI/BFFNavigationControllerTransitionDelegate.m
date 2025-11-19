@interface BFFNavigationControllerTransitionDelegate
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
@end

@implementation BFFNavigationControllerTransitionDelegate

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v7 = [(BFFNavigationControllerTransitionDelegate *)self customAnimatorBlock:a3];

  if (v7)
  {
    v8 = [(BFFNavigationControllerTransitionDelegate *)self customAnimatorBlock];
    v9 = v8[2]();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end