@interface UIDynamicCaretAlternatives
@end

@implementation UIDynamicCaretAlternatives

uint64_t __45___UIDynamicCaretAlternatives_layoutSubviews__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = 0.0;
  if (a3)
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0.0;
  }

  if (a3 >= 2)
  {
    v3 = *(a1 + 40);
  }

  return [a2 setFrame:{v4, v3, *(a1 + 32), *(a1 + 40)}];
}

void __47___UIDynamicCaretAlternatives_setButtonLabels___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndex:a3];
  }

  [v6 setHighlighted:0];
  [v6 setTitle:v7 forState:0];
}

@end