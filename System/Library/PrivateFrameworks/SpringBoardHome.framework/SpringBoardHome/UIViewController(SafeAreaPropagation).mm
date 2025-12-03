@interface UIViewController(SafeAreaPropagation)
- (void)_sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary;
@end

@implementation UIViewController(SafeAreaPropagation)

- (void)_sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary
{
  v12 = *MEMORY[0x1E69E9840];
  [self _updateContentOverlayInsetsFromParentIfNecessary];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  childViewControllers = [self childViewControllers];
  v3 = [childViewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(childViewControllers);
        }

        [*(*(&v7 + 1) + 8 * v6++) _sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
      }

      while (v4 != v6);
      v4 = [childViewControllers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end