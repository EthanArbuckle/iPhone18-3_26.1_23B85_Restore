@interface UIViewController(PlatterKitAdditions)
- (id)pl_presentationControllerIfPresented;
- (id)pl_presentingPresentationController;
@end

@implementation UIViewController(PlatterKitAdditions)

- (id)pl_presentationControllerIfPresented
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

- (id)pl_presentingPresentationController
{
  selfCopy = self;
  do
  {
    v2 = selfCopy;
    pl_presentationControllerIfPresented = [selfCopy pl_presentationControllerIfPresented];
    selfCopy = [selfCopy parentViewController];
  }

  while (!pl_presentationControllerIfPresented && selfCopy);

  return pl_presentationControllerIfPresented;
}

@end