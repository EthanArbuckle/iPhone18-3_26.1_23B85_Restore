@interface UIKBRTTouchDrifting
@end

@implementation UIKBRTTouchDrifting

void __28___UIKBRTTouchDrifting_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained leftDriftLockTouchIDs];
  [v1 removeAllObjects];
}

void __28___UIKBRTTouchDrifting_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained rightDriftLockTouchIDs];
  [v1 removeAllObjects];
}

uint64_t __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_2;
  v4[3] = &unk_1E7118410;
  v4[4] = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

uint64_t __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 touchTime];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

uint64_t __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_4;
  v4[3] = &unk_1E7118410;
  v4[4] = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

uint64_t __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  result = [a2 touchTime];
  if (v3 >= v5)
  {
    v5 = v3;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

uint64_t __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isActive] && (objc_msgSend(v2, "ignoreForDrift") & 1) == 0)
  {
    v3 = [v2 ignoreTouch] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isActive] && (objc_msgSend(v2, "ignoreForDrift") & 1) == 0)
  {
    v3 = [v2 ignoreTouch] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_51(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_2_52;
  v9[3] = &unk_1E71184A0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [a3 enumerateObjectsUsingBlock:v9];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_2_52(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  if (v5 == a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    *a4 = 1;
  }
}

void __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_3_53(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_4_54;
  v9[3] = &unk_1E71184A0;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [a3 enumerateObjectsUsingBlock:v9];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __50___UIKBRTTouchDrifting__updateDriftWithTouchInfo___block_invoke_4_54(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  if (v5 == a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    *a4 = 1;
  }
}

uint64_t __68___UIKBRTTouchDrifting__updateDriftForFingers_leftHand_newestTouch___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68___UIKBRTTouchDrifting__updateDriftForFingers_leftHand_newestTouch___block_invoke_2;
  v4[3] = &unk_1E71184F0;
  v5 = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void __68___UIKBRTTouchDrifting__updateDriftForFingers_leftHand_newestTouch___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isActive] && (objc_msgSend(v3, "ignoreForDrift") & 1) == 0 && (objc_msgSend(v3, "ignoreTouch") & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  ++*(*(*(a1 + 40) + 8) + 24);
}

void __68___UIKBRTTouchDrifting__updateDriftForFingers_leftHand_newestTouch___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(a1 + 56) & 1) == 0 && *(a1 + 48) != [v5 intValue] && objc_msgSend(v6, "count"))
  {
    v7 = *(a1 + 32);
    v8 = [v6 firstObject];
    v9 = [v8 touchIdentifier];
    [v7 addObject:v9];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68___UIKBRTTouchDrifting__updateDriftForFingers_leftHand_newestTouch___block_invoke_4;
  v10[3] = &unk_1E7118410;
  v10[4] = *(a1 + 40);
  [v6 enumerateObjectsUsingBlock:v10];
}

uint64_t __68___UIKBRTTouchDrifting__updateDriftForFingers_leftHand_newestTouch___block_invoke_4(uint64_t a1, void *a2)
{
  result = [a2 setIgnoreTouch:0];
  ++*(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __40___UIKBRTTouchDrifting__updateDriftView__block_invoke()
{
  v5 = +[UIDevice currentDevice];
  v0 = [objc_opt_self() mainScreen];
  if ([v5 userInterfaceIdiom] != 1 || ((objc_msgSend(v0, "bounds"), v2 = v1, objc_msgSend(v0, "bounds"), v2 >= v3) ? (v4 = v2) : (v4 = v3), v4 <= 1024.0))
  {
    qword_1ED491928 = 0x400000005;
    dword_1ED491930 = 4;
    _MergedGlobals_13 = 0x4014000000000000;
  }
}

void __40___UIKBRTTouchDrifting__updateDriftView__block_invoke_2(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [v26 isLeftHand];
  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 fCenter];
  }

  else
  {
    [v4 jCenter];
  }

  v7 = v5;
  v8 = v6;
  v9 = [v26 isLeftHand];
  v10 = 9;
  if (v9)
  {
    v10 = 6;
  }

  v11 = *(*(a1 + 32) + OBJC_IVAR____UIKBRTTouchDrifting__touches[v10]);
  v12 = [*(*(a1 + 32) + 264) objectForKey:v26];
  if (!v12)
  {
    v13 = [_UIKBRTTouchDrifingFingerCircleView alloc];
    v12 = [(_UIKBRTTouchDrifingFingerCircleView *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v14 = +[UIColor orangeColor];
    [(UIView *)v12 setBackgroundColor:v14];

    [*(*(a1 + 32) + 264) setObject:v12 forKey:v26];
    [*(*(a1 + 32) + 256) addSubview:v12];
  }

  v15 = *(a1 + 32);
  [v26 historyOffset];
  [v15 _pointFromPoint:v7 plusOffset:{v8, v16, v17}];
  v19 = v18;
  v21 = v20;
  [v11 offset];
  [v15 _pointFromPoint:v19 plusOffset:{v21, v22, v23}];
  [(_UIKBRTTouchDrifingFingerCircleView *)v12 setFrame:v24 + -5.0, v25 + -5.0, 11.0, 11.0];
}

@end