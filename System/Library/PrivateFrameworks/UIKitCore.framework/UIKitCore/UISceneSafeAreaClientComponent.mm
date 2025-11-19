@interface UISceneSafeAreaClientComponent
@end

@implementation UISceneSafeAreaClientComponent

void __59___UISceneSafeAreaClientComponent_scene_didUpdateSettings___block_invoke(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [UIScene _sceneForFBSScene:*(a1 + 32)];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 _allWindows];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (*(a1 + 40) == 1)
        {
          [*(*(&v13 + 1) + 8 * v9) _sceneSettingsSafeAreaInsetsDidChange];
        }

        if (*(a1 + 41) == 1)
        {
          [v10 _sceneSettingsSafeAreaCornerInsetsDidChange];
        }

        if (a2)
        {
          v11 = [v10 layer];
          v12 = [v11 hasBeenCommitted];

          if (v12)
          {
            [v10 layoutIfNeeded];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

@end