@interface UIDialogForAddingKeyboard
@end

@implementation UIDialogForAddingKeyboard

void __37___UIDialogForAddingKeyboard_dismiss__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___UIDialogForAddingKeyboard_dismiss__block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __37___UIDialogForAddingKeyboard_dismiss__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  [*(*(a1 + 32) + 8) resignKeyWindow];
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v6 = objc_opt_class();

  return [v6 presentDialogForAddingKeyboard];
}

void __60___UIDialogForAddingKeyboard_presentDialogForAddingKeyboard__block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60___UIDialogForAddingKeyboard_presentDialogForAddingKeyboard__block_invoke_2;
  v2[3] = &unk_1E70F32F0;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __60___UIDialogForAddingKeyboard_presentDialogForAddingKeyboard__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 2)
  {
    return [*(a1 + 32) presentPrivacySheet];
  }

  else
  {
    return [MEMORY[0x1E69D9560] dismissDialog];
  }
}

@end