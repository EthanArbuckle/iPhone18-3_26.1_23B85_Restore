@interface UITextViewSearchableObject
@end

@implementation UITextViewSearchableObject

void __57___UITextViewSearchableObject_clearAllDecoratedFoundText__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  [WeakRetained setNeedsLayout];
}

void __54___UITextViewSearchableObject__setDimmingViewVisible___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if ((*(*(a1 + 32) + 40) & 1) == 0)
  {
    if (a2)
    {
      if (WeakRetained)
      {
        v6 = *(a1 + 40);
        if (v6 == v5[3])
        {
          v8 = v5;
          [v6 removeFromSuperview];
          v7 = v8[3];
          v8[3] = 0;

          [v8 _ensureSubviewOrder];
          v5 = v8;
        }
      }
    }
  }
}

id __56___UITextViewSearchableObject__setHighlightViewVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained(WeakRetained + 9);
  v3 = WeakRetained[7];
  if (v3 && ([v2 _fullRange], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v2, "_range:containsRange:", v4, v3), v4, v5))
  {
    v6 = [v2 _targetedPreviewForHighlightRange:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __56___UITextViewSearchableObject__setHighlightViewVisible___block_invoke_4(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (a2)
    {
      v5 = *(a1 + 32);
      if ((*(v5 + 41) & 1) == 0)
      {
        [*(v5 + 32) removeFromSuperview];
      }
    }

    [v6 _ensureSubviewOrder];
    WeakRetained = v6;
  }
}

uint64_t __68___UITextViewSearchableObject__updateHighlightLabelForMatchedRange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _usesTransientHighlightBehavior];
  if (result)
  {
    v3 = *(*(a1 + 32) + 32);

    return [v3 fadeAwayWithCompletion:0];
  }

  return result;
}

uint64_t __52___UITextViewSearchableObject_layoutManagedSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setContentInset:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(*(a1 + 32) + 24) setTextRects:*(a1 + 40)];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(*(a1 + 32) + 24);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

@end