@interface UIFormSheetPresentationController
@end

@implementation UIFormSheetPresentationController

void __82___UIFormSheetPresentationController__changeLayoutModeToAvoidKeyboard_withOrigin___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82___UIFormSheetPresentationController__changeLayoutModeToAvoidKeyboard_withOrigin___block_invoke_2;
  v3[3] = &unk_1E70F3590;
  v3[4] = *(a1 + 32);
  [UIView performWithoutAnimation:v3];
  v2 = [*(a1 + 32) containerView];
  [v2 layoutIfNeeded];
}

void __82___UIFormSheetPresentationController__changeLayoutModeToAvoidKeyboard_withOrigin___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) presentedView];
  [v1 layoutIfNeeded];
}

@end