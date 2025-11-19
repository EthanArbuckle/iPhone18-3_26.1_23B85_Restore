@interface UIFocusSwipeTest
@end

@implementation UIFocusSwipeTest

void __25___UIFocusSwipeTest_main__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48))
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E96A0];
    do
    {
      if (v4)
      {
        v6 = ((*(*(v2 + 56) + v3) - *(*(v2 + 56) + v3 - 48)) * 1000000.0);
      }

      else
      {
        v6 = 0;
      }

      usleep(v6);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __25___UIFocusSwipeTest_main__block_invoke_2;
      block[3] = &unk_1E7107CE8;
      v7 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v17 = v4;
      v15 = v7;
      v16 = *(a1 + 48);
      dispatch_sync(v5, block);

      ++v4;
      v2 = *(a1 + 32);
      v3 += 48;
    }

    while (v4 < *(v2 + 48));
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __25___UIFocusSwipeTest_main__block_invoke_3;
  v10[3] = &unk_1E70F6228;
  v11 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v12 = v8;
  v13 = v9;
  dispatch_sync(MEMORY[0x1E69E96A0], v10);
}

uint64_t __25___UIFocusSwipeTest_main__block_invoke_2(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 56) + 48 * *(a1 + 56));
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  [*(a1 + 40) setState:*(v2 + 1)];
  [*(a1 + 40) setDigitizerLocation:{v3, v4}];
  [*(a1 + 40) setVelocity:{v5, v6}];
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);

  return [v7 _uiktest_handlePanGesture:v8];
}

uint64_t __25___UIFocusSwipeTest_main__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _uiktest_setPanGestureRecognizer:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 stop];
}

@end