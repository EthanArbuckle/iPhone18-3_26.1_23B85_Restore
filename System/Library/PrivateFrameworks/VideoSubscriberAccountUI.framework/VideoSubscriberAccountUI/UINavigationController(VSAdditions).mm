@interface UINavigationController(VSAdditions)
- (void)vs_popToViewController:()VSAdditions animated:completion:;
@end

@implementation UINavigationController(VSAdditions)

- (void)vs_popToViewController:()VSAdditions animated:completion:
{
  v8 = a3;
  v9 = a5;
  v10 = v8;
  v18 = v10;
  if (v10)
  {
    v11 = v10;
    while (1)
    {
      viewControllers = [self viewControllers];
      v13 = [viewControllers containsObject:v11];

      if (v13)
      {
        break;
      }

      parentViewController = [v11 parentViewController];

      v11 = parentViewController;
      if (!parentViewController)
      {
        goto LABEL_11;
      }
    }

    viewControllers2 = [self viewControllers];
    if ([viewControllers2 count])
    {
      topViewController = [self topViewController];

      if (topViewController != v11)
      {
        [MEMORY[0x277CD9FF0] begin];
        [MEMORY[0x277CD9FF0] setCompletionBlock:v9];
        v17 = [self popToViewController:v11 animated:a4];
        [MEMORY[0x277CD9FF0] commit];
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_11:
  v9[2](v9);
LABEL_12:
}

@end