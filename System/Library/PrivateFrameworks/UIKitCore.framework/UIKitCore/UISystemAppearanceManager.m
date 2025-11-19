@interface UISystemAppearanceManager
@end

@implementation UISystemAppearanceManager

id __40___UISystemAppearanceManager__setScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _orientationDebugDescription];

  return v2;
}

uint64_t __106___UISystemAppearanceManager_window_didUpdateSupportedOrientations_preferredOrientation_prefersAnimation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 80) == 1)
  {
    [v5 setSupportedInterfaceOrientations:*(a1 + 48)];
  }

  if (*(a1 + 81) == 1)
  {
    [v5 setPreferredInterfaceOrientation:*(a1 + 56)];
  }

  if (*(a1 + 82) == 1 && *(a1 + 83) == 1)
  {
    v7 = +[UIView _currentAnimationSettings];
    [v6 setAnimationSettings:v7];

    v8 = [v6 animationSettings];

    if (!v8)
    {
      v9 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      v10 = MEMORY[0x1E698E608];
      [*(a1 + 32) _rotationDuration];
      v11 = [v10 settingsWithDuration:v9 timingFunction:?];
      [v6 setAnimationSettings:v11];
    }
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v15 = *(a1 + 64);
  v14 = *(a1 + 72);
  v16 = *(a1 + 56);
  v17 = [v6 animationSettings];
  [v12 _logOrientationPreferencesChangeWithOldSupportedOrientations:v15 newSupportedOrientations:v13 oldPreferredOrientation:v14 newPreferredOrientation:v16 animationSettings:v17 fenced:*(a1 + 84)];

  v18 = *(a1 + 84);
  return v18;
}

@end