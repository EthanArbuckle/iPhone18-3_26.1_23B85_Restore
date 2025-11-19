@interface UIViewController(PlatterKitAdditions)
- (id)pl_presentationControllerIfPresented;
- (id)pl_presentingPresentationController;
@end

@implementation UIViewController(PlatterKitAdditions)

- (id)pl_presentationControllerIfPresented
{
  v2 = [a1 presentingViewController];
  if (v2)
  {
    v3 = [a1 parentViewController];
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = [a1 presentationController];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pl_presentingPresentationController
{
  v1 = a1;
  do
  {
    v2 = v1;
    v3 = [v1 pl_presentationControllerIfPresented];
    v1 = [v1 parentViewController];
  }

  while (!v3 && v1);

  return v3;
}

@end