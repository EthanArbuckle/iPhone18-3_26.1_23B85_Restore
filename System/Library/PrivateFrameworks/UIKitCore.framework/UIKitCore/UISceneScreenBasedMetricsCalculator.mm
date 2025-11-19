@interface UISceneScreenBasedMetricsCalculator
@end

@implementation UISceneScreenBasedMetricsCalculator

void __73___UISceneScreenBasedMetricsCalculator__updateMetricsOnWindows_animated___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 _isWindowServerHostingManaged] && (objc_msgSend(v7, "_sceneOrientation") != *(a1 + 40) || objc_msgSend(v7, "_sceneClientOrientation") != *(a1 + 48)))
        {
          [v7 _updateTransformLayer];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end