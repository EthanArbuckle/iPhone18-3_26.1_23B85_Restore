@interface UIPreviewInteractionClassicImpl
@end

@implementation UIPreviewInteractionClassicImpl

void __48___UIPreviewInteractionClassicImpl_setDelegate___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = 0.0;
    if ((WeakRetained[2] & 8) != 0)
    {
      v6 = objc_loadWeakRetained(WeakRetained + 14);
      v7 = [v4 previewInteraction];
      v8 = [v6 _previewInteractionShouldAutomaticallyTransitionToPreviewAfterDelay:v7];

      v5 = 0.0;
      if (v8)
      {
        v5 = 3.5;
      }
    }

    [v9 setAutomaticTouchForce:v5];
  }
}

void __63___UIPreviewInteractionClassicImpl__prepareHighlighterIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[11];
    WeakRetained[11] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __73___UIPreviewInteractionClassicImpl__presentPreviewViewControllerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[11];
    WeakRetained[11] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

void __73___UIPreviewInteractionClassicImpl__presentPreviewViewControllerIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[12];
    WeakRetained[12] = 0;
    v4 = WeakRetained;

    v3 = v4[11];
    v4[11] = 0;

    [v4 _endInteractionIfNeeded];
    WeakRetained = v4;
  }
}

void __82___UIPreviewInteractionClassicImpl__prepareForViewControllerPresentationObserving__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[11])
  {
    v5 = [v8 object];
    v6 = [v4[12] viewControllerPresentation];
    v7 = [v6 viewController];

    if (v7 != v5)
    {
      [*(*(a1 + 32) + 88) _applyHighlightEffectsToViewControllerDuringCancellation:v5];
      [*(*(a1 + 32) + 120) cancelInteraction];
    }
  }
}

@end