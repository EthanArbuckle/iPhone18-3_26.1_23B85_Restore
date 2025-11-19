@interface UISceneShortcutItemBSActionsHandler
@end

@implementation UISceneShortcutItemBSActionsHandler

void __111___UISceneShortcutItemBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (v6)
    {
      [v6 setObject:v10 forKey:v5];
    }

    else
    {
      v7 = [MEMORY[0x1E695DF90] dictionaryWithObject:v10 forKey:v5];
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }
}

@end