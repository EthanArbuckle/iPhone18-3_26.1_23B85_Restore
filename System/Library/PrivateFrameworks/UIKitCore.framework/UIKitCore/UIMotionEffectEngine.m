@interface UIMotionEffectEngine
@end

@implementation UIMotionEffectEngine

id __29___UIMotionEffectEngine_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_alloc(objc_msgSend(objc_opt_class() "_analyzerClass"))];

  return v3;
}

void __29___UIMotionEffectEngine_init__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state64 = 0;
  notify_get_state(a2, &state64);
  if (state64 < 0x1E)
  {
    [WeakRetained endSuspendingForReason:@"thermal"];
  }

  else
  {
    [WeakRetained beginSuspendingForReason:@"thermal"];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __29___UIMotionEffectEngine_init__block_invoke_3;
    v4[3] = &unk_1E70F3590;
    v5 = WeakRetained;
    [UIView animateWithDuration:v4 animations:0.75];
  }
}

void __29___UIMotionEffectEngine_init__block_invoke_4(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 128), &state64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___UIMotionEffectEngine_init__block_invoke_5;
  block[3] = &unk_1E70F8DC8;
  objc_copyWeak(v3, (a1 + 40));
  v3[1] = state64;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v3);
}

void __29___UIMotionEffectEngine_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIMotionEffectMinimumBacklightLevel, @"UIMotionEffectMinimumBacklightLevel");
  v5 = *&qword_1EA95E5C0;
  if (v4)
  {
    v5 = 5.0;
  }

  if (v5 >= v3)
  {
    [WeakRetained beginSuspendingForReason:@"screenDimmed"];
    if (*(a1 + 40))
    {
      v6 = 0.75;
    }

    else
    {
      v6 = 0.0;
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __29___UIMotionEffectEngine_init__block_invoke_6;
    v7[3] = &unk_1E70F3590;
    v8 = WeakRetained;
    [UIView animateWithDuration:v7 animations:v6];
  }

  else
  {
    [WeakRetained endSuspendingForReason:@"screenDimmed"];
  }
}

@end