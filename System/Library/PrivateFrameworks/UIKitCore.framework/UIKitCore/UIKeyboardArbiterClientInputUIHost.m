@interface UIKeyboardArbiterClientInputUIHost
@end

@implementation UIKeyboardArbiterClientInputUIHost

void __69___UIKeyboardArbiterClientInputUIHost_inputSessionDidEndUnexpectedly__block_invoke(uint64_t a1)
{
  v2 = [_UIKeyboardUIInformation alloc];
  v3 = [(_UIKeyboardUIInformation *)v2 initWithKeyboardFrame:0 onScreen:0 animated:0 tracking:0 wantsFence:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [*(a1 + 32) setCurrentUIState:v3];
}

void __51___UIKeyboardArbiterClientInputUIHost_arbiterProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = KeyboardArbiterClientLog_2();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "[_UIKeyboardArbiterClientInputUIHost arbiterProxy]_block_invoke  Failed to access remote service: %@", &v4, 0xCu);
  }
}

void __56___UIKeyboardArbiterClientInputUIHost_snapsShotKeyboard__block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetSnapshotWithWindowCheck:0];
  v2 = [*(a1 + 32) kbUIStateDelegate];
  v3 = [v2 keyboardWindow];
  v4 = [v3 snapshotView];
  [*(a1 + 32) setKeyboardSnapshot:v4];

  v5 = [*(a1 + 32) keyboardSnapshot];
  [v5 setUserInteractionEnabled:0];

  v6 = [*(a1 + 32) keyboardSnapshot];
  v7 = [v6 layer];
  [v7 setAllowsHitTesting:0];

  v10 = [*(a1 + 32) kbUIStateDelegate];
  v8 = [v10 keyboardWindow];
  v9 = [*(a1 + 32) keyboardSnapshot];
  [v8 addSubview:v9];
}

void __81___UIKeyboardArbiterClientInputUIHost_keyboardSendNotification_withInfo_isStart___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81___UIKeyboardArbiterClientInputUIHost_keyboardSendNotification_withInfo_isStart___block_invoke_2;
  block[3] = &unk_1E70F5A28;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __81___UIKeyboardArbiterClientInputUIHost_keyboardSendNotification_withInfo_isStart___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeKeyboardChange];
}

void __93___UIKeyboardArbiterClientInputUIHost_keyboardVisibilityDidChangeWithFrame_visible_tracking___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___UIKeyboardArbiterClientInputUIHost_keyboardVisibilityDidChangeWithFrame_visible_tracking___block_invoke_2;
  block[3] = &unk_1E70F5A28;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __93___UIKeyboardArbiterClientInputUIHost_keyboardVisibilityDidChangeWithFrame_visible_tracking___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeKeyboardChange];
}

void __61___UIKeyboardArbiterClientInputUIHost_completeKeyboardChange__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) arbiterProxy];
  [v1 signalKeyboardChangeComplete];
}

@end