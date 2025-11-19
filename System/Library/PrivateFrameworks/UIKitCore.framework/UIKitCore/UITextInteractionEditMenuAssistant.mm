@interface UITextInteractionEditMenuAssistant
@end

@implementation UITextInteractionEditMenuAssistant

void __67___UITextInteractionEditMenuAssistant_menuElementsForReplacements___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 sender];
  if ([v3 canPerformAction:sel_replace_ withSender:v3])
  {
    [v3 replace:*(a1 + 32)];
    [*(a1 + 32) didReplaceTextWithTarget:v3];
  }
}

void __93___UITextInteractionEditMenuAssistant_showReplacementsWithGenerator_forDictation_afterDelay___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 calculateReplacementsWithGenerator:v3 andShowAfterDelay:0.0];
  [v4 returnExecutionToParent];
}

void __93___UITextInteractionEditMenuAssistant__showCommandsWithReplacements_forDictation_afterDelay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interactionAssistant];
  v3 = [v2 view];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  if (![WeakRetained viewConformsToAsynchronousInteractionProtocol])
  {

    goto LABEL_5;
  }

  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    [*(a1 + 32) _showCommandsWithReplacements:*(a1 + 40) isForContextMenu:0 forDictation:*(a1 + 48) arrowDirection:0];
    goto LABEL_6;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93___UITextInteractionEditMenuAssistant__showCommandsWithReplacements_forDictation_afterDelay___block_invoke_2;
  v7[3] = &unk_1E71049E0;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  v9 = *(a1 + 48);
  [v3 requestPreferredArrowDirectionForEditMenuWithCompletionHandler:v7];

LABEL_6:
}

uint64_t __93___UITextInteractionEditMenuAssistant__showCommandsWithReplacements_forDictation_afterDelay___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  return [*(a1 + 32) _showCommandsWithReplacements:*(a1 + 40) isForContextMenu:0 forDictation:*(a1 + 48) arrowDirection:v2];
}

@end