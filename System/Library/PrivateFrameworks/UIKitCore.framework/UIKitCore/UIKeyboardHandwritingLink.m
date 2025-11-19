@interface UIKeyboardHandwritingLink
@end

@implementation UIKeyboardHandwritingLink

void __34___UIKeyboardHandwritingLink_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadInputViews];
}

void __78___UIKeyboardHandwritingLink_setCandidates_inlineText_inlineRect_maxX_layout___block_invoke(uint64_t a1, void *a2, unint64_t a3, BOOL *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 candidate];
  [v6 addObject:v7];

  *a4 = a3 > 3;
}

@end