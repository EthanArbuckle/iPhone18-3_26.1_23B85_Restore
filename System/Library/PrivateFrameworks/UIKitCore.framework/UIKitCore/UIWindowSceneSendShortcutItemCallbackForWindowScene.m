@interface UIWindowSceneSendShortcutItemCallbackForWindowScene
@end

@implementation UIWindowSceneSendShortcutItemCallbackForWindowScene

void ___UIWindowSceneSendShortcutItemCallbackForWindowScene_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = UIApp;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___UIWindowSceneSendShortcutItemCallbackForWindowScene_block_invoke_2;
    v4[3] = &unk_1E70F35E0;
    v6 = *(a1 + 48);
    v5 = *(a1 + 32);
    [v3 _updateStateRestorationArchiveForBackgroundEvent:v4 saveState:1 exitIfCouldNotRestoreState:1 updateSnapshot:1 windowScene:*(a1 + 40)];
  }
}

void ___UIWindowSceneSendShortcutItemCallbackForWindowScene_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) anyObject];
    if ([v2 canSendResponse])
    {
      [v2 sendResponse:0];
    }
  }
}

@end