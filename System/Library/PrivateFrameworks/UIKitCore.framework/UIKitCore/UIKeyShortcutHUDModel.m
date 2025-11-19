@interface UIKeyShortcutHUDModel
@end

@implementation UIKeyShortcutHUDModel

void __36___UIKeyShortcutHUDModel__buildMenu__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v8];
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "_enumerationPriority")}];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (v5)
    {
      [v5 addObject:v8];
    }

    else
    {
      v5 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
      v6 = *(a1 + 40);
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "_enumerationPriority")}];
      [v6 setObject:v5 forKeyedSubscript:v7];
    }
  }
}

void __72___UIKeyShortcutHUDModel__responderBasedKeyCommandsStartingAtResponder___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 keyCommand];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

void __44___UIKeyShortcutHUDModel__sanitizedMainMenu__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _menuByOmittingNonKeyCommandsInMenu:a2];
  [*(a1 + 40) addObject:v3];
}

void __44___UIKeyShortcutHUDModel__sanitizedMainMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAA8];
  v4 = a2;
  v5 = [v3 currentHandler];
  [v5 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIKeyShortcutHUDModel.m" lineNumber:433 description:{@"Root main menu unexpectedly contains a non-UIMenu child: %@", v4}];
}

void __62___UIKeyShortcutHUDModel__menuByOmittingNonKeyCommandsInMenu___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _menuByOmittingNonKeyCommandsInMenu:a2];
  [*(a1 + 40) addObject:v3];
}

void __62___UIKeyShortcutHUDModel__menuByOmittingNonKeyCommandsInMenu___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v6 copy];
    [*(a1 + 32) addObject:v5];
  }
}

void __60___UIKeyShortcutHUDModel__enumerateKeyCommandsInMenu_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60___UIKeyShortcutHUDModel__enumerateKeyCommandsInMenu_block___block_invoke_2;
  v4[3] = &unk_1E710E0E0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 _enumerateKeyCommandsInMenu:a2 block:v4];
}

void __54___UIKeyShortcutHUDModel__validatedHUDMenuFromUIMenu___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _validatedHUDMenuFromUIMenu:a2];
  [*(a1 + 40) addObject:v3];
}

void __54___UIKeyShortcutHUDModel__validatedHUDMenuFromUIMenu___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) objectForKey:a2];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 40) addObject:v3];
    v3 = v4;
  }
}

@end