@interface UIKeyboardLayoutAlignmentView
@end

@implementation UIKeyboardLayoutAlignmentView

void __76___UIKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76___UIKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke_3;
  v5[3] = &unk_1E70F4A50;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [UIView animateWithDuration:v3 delay:v5 options:0 animations:v2 completion:0.0];
}

void __76___UIKeyboardLayoutAlignmentView__updateConstraintsForKeyboardNotification___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) superview];
  [v2 layoutIfNeeded];
}

@end