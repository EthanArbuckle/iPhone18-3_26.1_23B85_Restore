@interface UIViewController(PLExpandedPlatterPresentationControllerAdditions)
- (void)expandedPlatterPresentationController;
@end

@implementation UIViewController(PLExpandedPlatterPresentationControllerAdditions)

- (void)expandedPlatterPresentationController
{
  pl_presentingPresentationController = [self pl_presentingPresentationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = pl_presentingPresentationController;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end