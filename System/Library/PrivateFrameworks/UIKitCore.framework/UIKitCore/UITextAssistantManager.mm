@interface UITextAssistantManager
@end

@implementation UITextAssistantManager

void __125___UITextAssistantManager_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) textViewportLayoutController];
  [v1 setNeedsLayout];
}

void __125___UITextAssistantManager_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained cleanUpAnimatedTextLayoutInfoIfNecessary];
}

uint64_t __125___UITextAssistantManager_writingToolsCoordinator_replaceRange_inContext_proposedText_reason_animationParameters_completion___block_invoke_3(uint64_t a1, float a2)
{
  v2 = a2 + a2;
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  *&v2 = v2;
  return [*(a1 + 32) setProgress:v2];
}

void __103___UITextAssistantManager_writingToolsCoordinator_requestsUnderlinePathsForRange_inContext_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  [v1 updateForReflowedTextInContextWithIdentifier:v2];
}

void __112___UITextAssistantManager_writingToolsCoordinator_requestsPreviewForTextAnimation_ofRange_inContext_completion___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained((a1[5] + 104));
    v3 = [WeakRetained textLayoutController];
    [v3 ensureLayoutForRange:a1[4]];
  }

  v4 = objc_loadWeakRetained((a1[5] + 104));
  v5 = a1[6];
  v11 = *off_1E70EC920;
  v6 = +[UIColor blackColor];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v4 _targetedPreviewForRange:v5 withRenderingAttributes:v7];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

@end