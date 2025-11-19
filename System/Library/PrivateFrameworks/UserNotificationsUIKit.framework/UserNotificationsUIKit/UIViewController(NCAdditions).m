@interface UIViewController(NCAdditions)
- (id)nc_presentationContextDefiningViewController;
- (id)nc_presentationControllerIfPresented;
@end

@implementation UIViewController(NCAdditions)

- (id)nc_presentationControllerIfPresented
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

- (id)nc_presentationContextDefiningViewController
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    if (([v1 definesPresentationContext] & 1) == 0)
    {
      do
      {
        v4 = v2;
        v2 = v3;

        v3 = [v2 parentViewController];
      }

      while (([v2 definesPresentationContext] & 1) == 0 && v3);
    }
  }

  else
  {
    v3 = 0;
  }

  if ([v2 definesPresentationContext])
  {
    v5 = v2;
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      do
      {
        v2 = v6;

        v6 = [v2 presentedViewController];

        v7 = v2;
      }

      while (v6);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

@end