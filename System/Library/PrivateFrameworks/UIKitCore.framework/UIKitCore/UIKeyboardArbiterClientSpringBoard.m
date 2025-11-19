@interface UIKeyboardArbiterClientSpringBoard
@end

@implementation UIKeyboardArbiterClientSpringBoard

void __56___UIKeyboardArbiterClientSpringBoard_forceKeyboardAway__block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56___UIKeyboardArbiterClientSpringBoard_forceKeyboardAway__block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performAsync:v4];
}

void __62___UIKeyboardArbiterClientSpringBoard_preserveKeyboardWithId___block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62___UIKeyboardArbiterClientSpringBoard_preserveKeyboardWithId___block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performAsync:v4];
}

void __61___UIKeyboardArbiterClientSpringBoard_restoreKeyboardWithId___block_invoke(uint64_t a1)
{
  v2 = [UIApp _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61___UIKeyboardArbiterClientSpringBoard_restoreKeyboardWithId___block_invoke_2;
  v4[3] = &unk_1E70F35B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 performAsync:v4];
}

uint64_t __75___UIKeyboardArbiterClientSpringBoard_queue_keyboardIAVChanged_onComplete___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _UIArbiterClientLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "RX keyboardIAVChanged:%.0f", &v6, 0xCu);
  }

  [*(a1 + 32) setHeightForRemoteIAVPlaceholderIfNecessary:*(a1 + 48)];
  if (([*(a1 + 32) keyboardVisible] & 1) == 0 && objc_msgSend(*(a1 + 32), "currentInputDestination"))
  {
    [*(a1 + 32) setUpdatingHeight:1];
    v4 = +[UIPeripheralHost sharedInstance];
    [v4 forceReloadInputViews];

    [*(a1 + 32) setUpdatingHeight:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end