@interface UIViewController(SafeAreaPropagation)
- (void)_sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary;
@end

@implementation UIViewController(SafeAreaPropagation)

- (void)_sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary
{
  v12 = *MEMORY[0x1E69E9840];
  [a1 _updateContentOverlayInsetsFromParentIfNecessary];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [a1 childViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _sb_recursiveUpdateContentOverlayInsetsFromParentIfNecessary];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end