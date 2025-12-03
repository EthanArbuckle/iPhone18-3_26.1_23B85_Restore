@interface UIViewController(NCAdditions)
- (id)nc_presentationContextDefiningViewController;
- (id)nc_presentationControllerIfPresented;
@end

@implementation UIViewController(NCAdditions)

- (id)nc_presentationControllerIfPresented
{
  presentingViewController = [self presentingViewController];
  if (presentingViewController)
  {
    parentViewController = [self parentViewController];
    if (parentViewController)
    {
      presentationController = 0;
    }

    else
    {
      presentationController = [self presentationController];
    }
  }

  else
  {
    presentationController = 0;
  }

  return presentationController;
}

- (id)nc_presentationContextDefiningViewController
{
  selfCopy = self;
  v2 = selfCopy;
  if (selfCopy)
  {
    parentViewController = selfCopy;
    if (([selfCopy definesPresentationContext] & 1) == 0)
    {
      do
      {
        v4 = v2;
        v2 = parentViewController;

        parentViewController = [v2 parentViewController];
      }

      while (([v2 definesPresentationContext] & 1) == 0 && parentViewController);
    }
  }

  else
  {
    parentViewController = 0;
  }

  if ([v2 definesPresentationContext])
  {
    v5 = v2;
    if (v5)
    {
      presentedViewController = v5;
      v7 = v5;
      do
      {
        v2 = presentedViewController;

        presentedViewController = [v2 presentedViewController];

        v7 = v2;
      }

      while (presentedViewController);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

@end