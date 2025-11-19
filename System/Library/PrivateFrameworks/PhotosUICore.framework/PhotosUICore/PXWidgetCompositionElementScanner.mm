@interface PXWidgetCompositionElementScanner
@end

@implementation PXWidgetCompositionElementScanner

void __66___PXWidgetCompositionElementScanner_enumerateElementsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = [a2 widget];
  if (objc_opt_respondsToSelector())
  {
    [v5 preferredContentHeightForWidth:*(a1 + 40)];
    v4 = *(*(a1 + 32) + 8);
    if (*(v4 + 24) >= v3)
    {
      v3 = *(v4 + 24);
    }

    *(v4 + 24) = v3;
  }
}

void __66___PXWidgetCompositionElementScanner_enumerateElementsUsingBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = [v3 widget];
  [*(a1 + 32) referenceWidth];
  v5 = v4;
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) referenceWidth];
    [v10 preferredContentWidthForHorizontalLayoutWithAvailableWidth:?];
    v5 = v6;
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 preferredContentHeightForWidth:v5];
    v8 = *(*(a1 + 48) + 8);
    if (*(v8 + 24) >= v7)
    {
      v7 = *(v8 + 24);
    }

    *(v8 + 24) = v7;
  }

  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (([*(a1 + 32) _wantsEdgeToEdgeLayoutForElement:v3] & 1) == 0)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
  }

  (*(*(a1 + 40) + 16))(v5, v9);
}

@end