@interface UINavigationController(SUAdditions)
- (id)firstViewController;
- (uint64_t)indexOfViewController:()SUAdditions;
- (void)invalidate;
@end

@implementation UINavigationController(SUAdditions)

- (id)firstViewController
{
  v1 = [a1 viewControllers];
  if ([v1 count])
  {
    v2 = [v1 objectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)indexOfViewController:()SUAdditions
{
  v4 = a3;
  v5 = [a1 viewControllers];
  if (v4)
  {
    do
    {
      v6 = v4;
      v7 = [v5 indexOfObjectIdenticalTo:v4];
      v4 = [v4 parentViewController];
    }

    while (v7 == 0x7FFFFFFFFFFFFFFFLL && v4);
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
  v1 = [a1 viewControllers];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 invalidate];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

@end