@interface UIKBRTTimerBlock
@end

@implementation UIKBRTTimerBlock

void __28___UIKBRTTimerBlock_fireNow__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) fire];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_UIKBRTTouchInfo.m" lineNumber:582 description:@"Timer should be nil!"];
  }
}

void __31___UIKBRTTimerBlock_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;
}

void __32___UIKBRTTimerBlock_timerFired___block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = *(v2 + 16);
  if (a1[4] == v3)
  {
    *(v2 + 16) = 0;

    objc_storeStrong((*(a1[6] + 8) + 40), *(a1[5] + 24));
    v5 = _Block_copy(*(a1[5] + 32));
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    objc_storeStrong((*(a1[8] + 8) + 40), *(a1[5] + 40));
    v8 = a1[5];
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;

    v10 = a1[5];
    v11 = *(v10 + 32);
    *(v10 + 32) = 0;

    v12 = a1[5];
    v13 = *(v12 + 40);
    *(v12 + 40) = 0;
  }
}

@end