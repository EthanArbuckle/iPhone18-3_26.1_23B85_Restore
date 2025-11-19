@interface UIPreviewInteractionHighlighter
@end

@implementation UIPreviewInteractionHighlighter

void __82___UIPreviewInteractionHighlighter__updateFromInteraction_fractionComplete_ended___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));

  if (!WeakRetained)
  {
    v11 = [*(a1 + 48) effectView];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = objc_loadWeakRetained((*(a1 + 32) + 8));
    }

    v14 = v13;

    v15 = [*(a1 + 32) clickEffectPhase];
    if (v15 == 2)
    {
      v16 = 1.01;
      if (*(a1 + 64))
      {
        v16 = 1.0;
      }
    }

    else if (v15 == 1)
    {
      [v14 frame];
      Width = CGRectGetWidth(v26);
      v19 = (Width + -14.36) / Width;
      if (v19 < 0.96)
      {
        v19 = 0.96;
      }

      v16 = 1.0 - *(a1 + 56) + *(a1 + 56) * v19;
    }

    else
    {
      v16 = 1.0;
      if (!v15)
      {
        v17 = *(a1 + 32);
        if ((*(a1 + 64) & 1) == 0)
        {
          v16 = *(v17 + 96);
        }

        v16 = v16 + *(a1 + 56) * (*(v17 + 104) - v16);
      }
    }

    CGAffineTransformMakeScale(&v21, v16, v16);
    v22 = *&v21.a;
    v23 = *&v21.c;
    v20 = *&v21.tx;
    goto LABEL_23;
  }

  v3 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v3 _highlightForInteraction:*(a1 + 40) fractionComplete:*(a1 + 64) ended:*(a1 + 56)];

  v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v7 = [v6 _highlightsAlongsideDefaultEffect];

    if (v7)
    {
      v8 = *(a1 + 56) * 0.0175 + 1.0;
      v9 = *(a1 + 48);
      if (v9)
      {
        v10 = [v9 effectView];
      }

      else
      {
        v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
      }

      v14 = v10;
      CGAffineTransformMakeScale(&v25, v8, v8);
      v22 = *&v25.a;
      v23 = *&v25.c;
      v20 = *&v25.tx;
LABEL_23:
      v24 = v20;
      [v14 setTransform:&v22];
    }
  }
}

void __82___UIPreviewInteractionHighlighter__updateFromInteraction_fractionComplete_ended___block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 72) isEqual:*(a1 + 40)])
  {
    if (*(a1 + 56) == 1)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
      v3 = objc_opt_respondsToSelector();

      if (v3)
      {
        v4 = objc_loadWeakRetained((*(a1 + 32) + 16));
        [v4 _highlightDidEndForInteraction:*(a1 + 48)];
      }

      *(*(a1 + 32) + 65) = 0;
      [*(a1 + 32) _finalizeAfterInteractionIfNeeded];
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = 0;
  }
}

void __93___UIPreviewInteractionHighlighter__applyHighlightEffectsToViewControllerDuringCancellation___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(*(a1 + 32) + 32) environment];
  if (v3)
  {
    v4 = [v8 containerView];
    if (v4)
    {
      v5 = [v3 interactiveHighlightEffectForView:v4 options:2];
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      *(v6 + 48) = v5;
    }
  }
}

uint64_t __68___UIPreviewInteractionHighlighter__setHighlighted_forViewIfNeeded___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHighlighted:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

@end