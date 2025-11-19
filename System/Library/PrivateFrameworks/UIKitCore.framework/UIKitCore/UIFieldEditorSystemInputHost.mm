@interface UIFieldEditorSystemInputHost
@end

@implementation UIFieldEditorSystemInputHost

uint64_t __86___UIFieldEditorSystemInputHost__updateFieldEditorBackgroundViewLayoutForcingDefault___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) setContentOffset:0 animated:{*(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

@end