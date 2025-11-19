@interface UIPreviewInteractionClickImpl
@end

@implementation UIPreviewInteractionClickImpl

void __64___UIPreviewInteractionClickImpl__performPresentationIfPossible__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPresentationAssistant:0];
  [(_UIPreviewInteractionClickImpl *)WeakRetained _endInteractionDidComplete:0 wasCancelledByClient:?];
}

uint64_t __64___UIPreviewInteractionClickImpl__performPresentationIfPossible__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64___UIPreviewInteractionClickImpl__performPresentationIfPossible__block_invoke_3;
  v2[3] = &unk_1E70F3590;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void __69___UIPreviewInteractionClickImpl_highlightEffectForClickInteraction___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([v6 ended] & 1) == 0)
  {
    [v6 progress];
    [(_UIPreviewInteractionClickImpl *)WeakRetained _delegateUpdatePreviewTransitionWithProgress:v4 ended:?];
    v5 = [WeakRetained interactionEffect];
    [v5 interaction:WeakRetained didChangeWithContext:v6];
  }
}

void __69___UIPreviewInteractionClickImpl_highlightEffectForClickInteraction___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([v5 ended] & 1) == 0)
  {
    [v5 progress];
    [(_UIPreviewInteractionClickImpl *)WeakRetained _delegateUpdateCommitTransitionWithProgress:v4 ended:?];
  }
}

uint64_t __81___UIPreviewInteractionClickImpl__handleTransitionToPossibleByEndingWithContext___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = UIApp;
    v4 = [*(result + 40) type];
    v5 = [*(v2 + 32) view];
    v6 = [v5 _window];
    v7 = [v6 _eventRoutingScene];
    [v3 _cancelAllEventsOfType:v4 onEventRoutingScene:v7];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81___UIPreviewInteractionClickImpl__handleTransitionToPossibleByEndingWithContext___block_invoke_2;
    v8[3] = &unk_1E70F3590;
    v8[4] = *(v2 + 32);
    return [UIView performWithoutAnimation:v8];
  }

  return result;
}

@end