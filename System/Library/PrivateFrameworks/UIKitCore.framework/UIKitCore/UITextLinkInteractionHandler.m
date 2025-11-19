@interface UITextLinkInteractionHandler
@end

@implementation UITextLinkInteractionHandler

uint64_t __64___UITextLinkInteractionHandler__defaultMenuForInteractableItem__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __73___UITextLinkInteractionHandler__handlerRequiringUnlockedDevice_handler___block_invoke(uint64_t a1)
{
  v1 = UIApp;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __73___UITextLinkInteractionHandler__handlerRequiringUnlockedDevice_handler___block_invoke_2;
  v2[3] = &unk_1E70F4730;
  v3 = *(a1 + 32);
  [v1 _requestDeviceUnlockWithCompletion:v2];
}

uint64_t __73___UITextLinkInteractionHandler__handlerRequiringUnlockedDevice_handler___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __49___UITextLinkInteractionHandler__copyLinkAction___block_invoke(uint64_t a1)
{
  v2 = +[UIPasteboard generalPasteboard];
  [v2 setString:*(a1 + 32)];
}

void __50___UITextLinkInteractionHandler__shareLinkAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textContentView];
  v18 = [v2 textLayoutController];

  v3 = [*(a1 + 32) range];
  [v18 boundingRectForCharacterRange:{v3, v4}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + 40);
  v14 = [*(a1 + 32) textContentView];
  v15 = [_UITextServiceSessionContext sessionContextWithText:v13 withRect:v14 withView:v6, v8, v10, v12];

  v16 = [*(a1 + 32) textContentView];
  v17 = [v16 _showServiceForType:8 withContext:v15];
}

void __68___UITextLinkInteractionHandler__openAppLinkInDefaultBrowserAction___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = UIApp;
  v3 = [*(a1 + 32) URL];
  v4 = *(a1 + 40);
  v6 = @"UIApplicationOpenURLOptionIgnoreUniversalLinks";
  v7[0] = MEMORY[0x1E695E118];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 _openURL:v3 originatingView:v4 options:v5 completionHandler:0];
}

void __73___UITextLinkInteractionHandler__openAppLinkInExternalApplicationAction___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = UIApp;
  v3 = [*(a1 + 32) URL];
  v4 = *(a1 + 40);
  v6 = @"UIApplicationOpenURLOptionIgnoreUniversalLinks";
  v7[0] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 _openURL:v3 originatingView:v4 options:v5 completionHandler:0];
}

void __61___UITextLinkInteractionHandler__addLinkToReadingListAction___block_invoke(uint64_t a1)
{
  v2 = [getSSReadingListClass() defaultReadingList];
  [v2 addReadingListItemWithURL:*(a1 + 32) title:*(a1 + 40) previewText:0 error:0];
}

@end