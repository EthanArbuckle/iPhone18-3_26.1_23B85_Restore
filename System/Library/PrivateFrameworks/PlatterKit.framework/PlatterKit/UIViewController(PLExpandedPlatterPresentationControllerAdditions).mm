@interface UIViewController(PLExpandedPlatterPresentationControllerAdditions)
- (void)expandedPlatterPresentationController;
@end

@implementation UIViewController(PLExpandedPlatterPresentationControllerAdditions)

- (void)expandedPlatterPresentationController
{
  v1 = [a1 pl_presentingPresentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end