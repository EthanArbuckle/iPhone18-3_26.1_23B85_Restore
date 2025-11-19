@interface UIFindNavigatorResponder
@end

@implementation UIFindNavigatorResponder

void __66___UIFindNavigatorResponder_becomeFirstResponderAndFocusFindField__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findNavigatorViewController];
  v3 = [v2 findNavigatorView];
  [v3 becomeFirstResponder];

  *(*(a1 + 32) + 17) = 1;
}

@end