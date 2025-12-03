@interface UINavigationController(SUAdditions)
- (id)firstViewController;
- (uint64_t)indexOfViewController:()SUAdditions;
- (void)invalidate;
@end

@implementation UINavigationController(SUAdditions)

- (id)firstViewController
{
  viewControllers = [self viewControllers];
  if ([viewControllers count])
  {
    v2 = [viewControllers objectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)indexOfViewController:()SUAdditions
{
  parentViewController = a3;
  viewControllers = [self viewControllers];
  if (parentViewController)
  {
    do
    {
      v6 = parentViewController;
      v7 = [viewControllers indexOfObjectIdenticalTo:parentViewController];
      parentViewController = [parentViewController parentViewController];
    }

    while (v7 == 0x7FFFFFFFFFFFFFFFLL && parentViewController);
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  viewControllers = [self viewControllers];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [viewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(viewControllers);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 invalidate];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [viewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

@end