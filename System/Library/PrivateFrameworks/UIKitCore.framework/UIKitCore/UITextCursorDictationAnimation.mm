@interface UITextCursorDictationAnimation
@end

@implementation UITextCursorDictationAnimation

void __46___UITextCursorDictationAnimation_setEnabled___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  v6 = vdupq_n_s64(0x7FF0000000000000uLL);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(vandq_s8(v3, v5), v6), vcgeq_s64(vandq_s8(v2, v5), v6)))) & 1) == 0)
  {
    [*(a1 + 32) setAnimatedCursorShapeBounds:{*&v3, *&v2}];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
    [WeakRetained layoutSubviews];
  }
}

uint64_t __46___UITextCursorDictationAnimation_setEnabled___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46___UITextCursorDictationAnimation_setEnabled___block_invoke_3;
  v3[3] = &unk_1E70F3590;
  v4 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46___UITextCursorDictationAnimation_setEnabled___block_invoke_4;
  v2[3] = &unk_1E70F5AC0;
  v2[4] = v4;
  return [UIView animateWithDuration:0x20000 delay:v3 options:v2 animations:0.175 completion:0.0];
}

void __46___UITextCursorDictationAnimation_setEnabled___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAnimatedCursorShapeBounds:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  [WeakRetained layoutSubviews];
}

void __46___UITextCursorDictationAnimation_setEnabled___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setSoundReactiveCursorEnabled:1];
  [*(*(a1 + 32) + 24) setHidden:0];
  if (!_AXSCommandAndControlEnabled())
  {
    v2 = +[UIKeyboardImpl activeInstance];
    [v2 presentDictationMenu];
  }
}

void __53___UITextCursorDictationAnimation__displayLinkFired___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
  v3 = objc_loadWeakRetained((*(a1 + 32) + 80));
  [v3 bounds];
  [WeakRetained _cursorShapeRectForBounds:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(a1 + 56);
  *&v20.a = *(a1 + 40);
  *&v20.c = v12;
  *&v20.tx = *(a1 + 72);
  v13 = v5;
  *&v12 = v7;
  v14 = v9;
  v15 = v11;
  v21 = CGRectApplyAffineTransform(*(&v12 - 8), &v20);
  if ((*&v21.origin.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v21.origin.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v21.size.width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v21.size.height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    [*(a1 + 32) setAnimatedCursorShapeBounds:?];
    v19 = objc_loadWeakRetained((*(a1 + 32) + 80));
    [v19 layoutSubviews];
  }
}

@end