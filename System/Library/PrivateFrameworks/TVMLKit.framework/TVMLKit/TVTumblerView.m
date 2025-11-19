@interface TVTumblerView
@end

@implementation TVTumblerView

uint64_t __32___TVTumblerView_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  [*(a1 + 40) setFrame:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v2 = [*(a1 + 48) arrowLeading];
  if ([*(a1 + 48) focusedItemIndex] <= 0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];

  v4 = [*(a1 + 48) arrowTrailing];
  if ([*(a1 + 48) focusedItemIndex] >= *(a1 + 120) - 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [v4 setAlpha:v5];

  v6 = *(a1 + 48);

  return [v6 performSelector:sel__enableMove withObject:0 afterDelay:0.1];
}

uint64_t __32___TVTumblerView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) focusedItemIndex] != *(a1 + 48))
  {
    [*(a1 + 32) _markItemViewForReuse:*(a1 + 40)];
  }

  result = [*(a1 + 32) unfocusedItemIndex];
  if (result == *(a1 + 48))
  {
    v3 = *(a1 + 32);

    return [v3 setUnfocusedItemIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return result;
}

void __40___TVTumblerView__markItemViewForReuse___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

@end