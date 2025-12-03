@interface UIViewController(InModalPresentation)
- (uint64_t)isInModalPresentation;
@end

@implementation UIViewController(InModalPresentation)

- (uint64_t)isInModalPresentation
{
  navigationController = [self navigationController];

  if (navigationController)
  {
    selfCopy = self;
    parentViewController = [selfCopy parentViewController];

    if (parentViewController)
    {
      do
      {
        parentViewController2 = [selfCopy parentViewController];

        v5ParentViewController = [parentViewController2 parentViewController];

        selfCopy = parentViewController2;
      }

      while (v5ParentViewController);
    }

    else
    {
      parentViewController2 = selfCopy;
    }

    presentingViewController = [parentViewController2 presentingViewController];
    navigationController = presentingViewController != 0;
  }

  return navigationController;
}

@end